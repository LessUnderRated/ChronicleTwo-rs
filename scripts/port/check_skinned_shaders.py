"""The Adreno skinned-pipeline hazard: a vertex shader whose skinning is selected by a
specialization constant is miscompiled on Adreno drivers (the costume menu's characters drew
their bind pose), so the skinned family must run shaders that decide the skinning in the source
and carry no specialization constant at all. The skinned shaders live in the Android Kazarov
patch, so the guard reads the patch's added lines.

    python scripts/port/check_skinned_shaders.py <repo-root>
"""

import re
import sys
from pathlib import Path

PATCH = Path("android/patches/kazarov-0002-cache-stamp.patch")

SKINNED_SHADERS = (
    "mesh_prog0_skinned.vert",
    "mesh_prog0_bound_skinned.vert",
)

SPEC_CONSTANT = re.compile(r"layout\(constant_id")

# The skinned family must be routed to the dedicated shaders, not a spec-selected module.
ROUTING = ("prog0_skinned_module", "prog0_bound_skinned_module")


def added_lines(patch_text: str, name: str):
    """The patch's added lines for one new file."""
    lines = []
    in_file = False
    for line in patch_text.splitlines():
        if line.startswith("diff --git"):
            in_file = f"/{name}" in line
            continue
        if in_file and line.startswith("+") and not line.startswith("+++"):
            lines.append(line[1:])
    return lines


def main(root: Path) -> int:
    problems = []
    path = root / PATCH
    if not path.exists():
        print(f"{PATCH}: missing; the skinned shaders' guard reads the Android Kazarov patch",
              file=sys.stderr)
        return 1
    patch_text = path.read_text(encoding="utf-8")
    for name in SKINNED_SHADERS:
        lines = added_lines(patch_text, name)
        if not lines:
            problems.append(f"{PATCH}: no {name}; the skinned family needs its dedicated shader")
            continue
        joined = "\n".join(lines)
        if SPEC_CONSTANT.search(joined):
            problems.append(f"{name}: a skinned shader may not carry a specialization constant "
                            "(Adreno miscompiles the pipeline; see the file's header)")
        if "kSkinned" in joined:
            problems.append(f"{name}: the skinning must be decided in the source, not a kSkinned gate")
    pipelines = added_lines(patch_text, "pipelines.cpp")
    joined_pipelines = "\n".join(pipelines)
    for module in ROUTING:
        if module not in joined_pipelines:
            problems.append(f"pipelines.cpp: the skinned family must route to {module} "
                            "(no spec constant)")
    if "skinned_info" in joined_pipelines:
        problems.append("pipelines.cpp: the skinned pipeline must not be selected by a "
                        "specialization constant (skinned_info)")
    for problem in problems:
        print(problem, file=sys.stderr)
    return 1 if problems else 0


if __name__ == "__main__":
    sys.exit(main(Path(sys.argv[1] if len(sys.argv) > 1 else ".").resolve()))