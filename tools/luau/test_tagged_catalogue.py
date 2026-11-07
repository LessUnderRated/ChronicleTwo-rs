"""The catalogue marks every handler that reads its argument's integer or float tag as tagged.

A handler that branches on a slot's tag (event GetRand: an integer range gives an integer, a float range a float) must be
`tagged` in commands.json, or the runtime passes every number as the catalogued type and the script reads back the other
type's bits: the dungeon coin read a random integer below 10 as the bits of a float, about 1.1e9, and spun forever.
"""

import json
import re
import sys
import unittest
from pathlib import Path

HERE = Path(__file__).resolve().parent
REPO = HERE.parent.parent
sys.path.insert(0, str(HERE))

from stb import sources  # noqa: E402

# A comparison of an argument slot's tag with the integer or float tag.
_TAG_TEST = re.compile(r"(?:->|\.)\s*type\s*[!=]=\s*RS_(?:INT|FLOAT)\b")


def tag_reading_handlers(kind_source: sources.KindSource) -> set[str]:
    """Handlers of a kind whose bodies compare an argument slot's tag with RS_INT or RS_FLOAT."""
    code = (REPO / kind_source.source).read_text(encoding="utf-8")
    found = set()
    for match in sources._HANDLER.finditer(code):
        if _TAG_TEST.search(sources._body(code, match.end() - 1)):
            found.add(match.group(1))
    return found


class TaggedCatalogueTest(unittest.TestCase):
    def test_every_tag_reading_handler_is_catalogued_tagged(self):
        catalogue = json.loads((HERE / "commands.json").read_text(encoding="utf-8"))
        untagged = []
        for kind_source in sources.KIND_SOURCES.values():
            readers = tag_reading_handlers(kind_source)
            commands = catalogue["kinds"].get(kind_source.namespace, {}).get("commands", [])
            for command in commands:
                if command["handler"] not in readers:
                    continue
                params = [param for signature in command["signatures"] for param in signature["params"]]
                if params and not any(param.get("tagged") for param in params):
                    untagged.append(f"{kind_source.namespace} {command['handler']} ({command['luau']})")
        self.assertEqual(untagged, [], "handlers that read a slot's tag but are not catalogued as tagged")

    def test_event_random_number_with_an_integer_range_returns_an_integer(self):
        # The coin flip's spin count: event GetRand with the integer range 10.
        catalogue = json.loads((HERE / "commands.json").read_text(encoding="utf-8"))
        command = next(c for c in catalogue["kinds"]["event"]["commands"] if c["handler"] == "_GET_RAND")
        range_param, value_param = command["signatures"][0]["params"]
        self.assertTrue(range_param.get("tagged"))
        self.assertTrue(value_param.get("tagged"))

    def test_no_event_script_reads_a_random_integer_as_float_bits(self):
        reinterpreted = re.compile(r"vm\.float_bits\(event\.get_random_number\(")
        offenders = [
            str(path.relative_to(REPO))
            for path in sorted((REPO / "port/src/luau").rglob("*.luau"))
            if reinterpreted.search(path.read_text(encoding="utf-8"))
        ]
        self.assertEqual(offenders, [], "scripts that turn a random integer into a float's bits")


if __name__ == "__main__":
    unittest.main()
