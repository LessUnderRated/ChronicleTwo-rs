package io.github.lessunderrated.chronicletwo;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * The touch controls' model: where they are (a default for the window, or the player's arrangement over
 * it), what the fingers on them press, and the pad state that goes to the game (Native.setTouch, which
 * Kazarov's InputSetTouchOverlay takes as pad 0 while no other controller is in use). TouchOverlay draws
 * it and hands it every touch, all on the activity's thread.
 *
 * Buttons are numbered as SDL numbers a gamepad's, with L2 and R2 as bits 30 and 31, which is what
 * TouchOverlay's drawing reads; push() turns them into the game's pad bits.
 */
final class TouchModel {
    static final int SOUTH = 0, EAST = 1, WEST = 2, NORTH = 3, BACK = 4, START = 6;
    static final int L1 = 9, R1 = 10, UP = 11, DOWN = 12, LEFT = 13, RIGHT = 14;
    static final int BIT_L2 = 1 << 30, BIT_R2 = 1 << 31;

    private static final int DPAD = -1, LEFT_STICK = -2, RIGHT_STICK = -3, TRIGGER_L = -4, TRIGGER_R = -5;

    private static final class Element {
        final String id;
        final int control;
        boolean circle;
        float x, y, r, w, h;

        Element(String id, int control) {
            this.id = id;
            this.control = control;
        }

        boolean contains(float px, float py, float slack) {
            if (circle) {
                return (float) Math.hypot(px - x, py - y) <= r * slack;
            }
            float sx = w * (slack - 1) / 2, sy = h * (slack - 1) / 2;
            return px >= x - sx && px <= x + w + sx && py >= y - sy && py <= y + h + sy;
        }
    }

    private static final class Finger {
        final int control;
        float ox, oy, px, py;

        Finger(int control, float ox, float oy, float px, float py) {
            this.control = control;
            this.ox = ox;
            this.oy = oy;
            this.px = px;
            this.py = py;
        }
    }

    private float width, height, stickRadius;
    private final List<Element> elements = new ArrayList<>();
    private final Map<Long, Finger> fingers = new HashMap<>();

    private static Element circle(String id, int control, float x, float y, float r) {
        Element e = new Element(id, control);
        e.circle = true;
        e.x = x;
        e.y = y;
        e.r = r;
        return e;
    }

    private static Element rect(String id, int control, float x, float y, float w, float h) {
        Element e = new Element(id, control);
        e.x = x;
        e.y = y;
        e.w = w;
        e.h = h;
        return e;
    }

    /**
     * The default for a window width x height whose safe area (clear of a cutout and the gesture edges) lies
     * the insets inside its edges. The HUD's band along the top stays clear; the shoulders sit on the side
     * edges under it, the d-pad below the left ones and the face buttons in the bottom right, as on a pad.
     */
    private void layDefault(float w, float h, float left, float top, float right, float bottom) {
        width = w;
        height = h;
        elements.clear();
        float u = Math.min(w, h);
        float margin = u * 0.04f;
        float l = left + margin, r = w - right - margin, b = h - bottom - margin;
        float topBand = top + u * 0.16f;

        float faceR = u * 0.075f, faceGap = u * 0.125f;
        float fx = r - faceGap - faceR, fy = b - faceGap - faceR;
        float shoulderW = u * 0.22f, shoulderH = u * 0.105f, gap = u * 0.025f;
        float l2y = topBand + gap, l1y = l2y + shoulderH + gap;
        float dpadR = u * 0.12f, dpadY = l1y + shoulderH + gap + dpadR;
        float pillW = u * 0.19f, pillH = u * 0.075f, pillY = top + margin * 0.5f;

        elements.add(circle("cross", SOUTH, fx, fy + faceGap, faceR));
        elements.add(circle("circle", EAST, fx + faceGap, fy, faceR));
        elements.add(circle("square", WEST, fx - faceGap, fy, faceR));
        elements.add(circle("triangle", NORTH, fx, fy - faceGap, faceR));
        elements.add(rect("l2", TRIGGER_L, l, l2y, shoulderW, shoulderH));
        elements.add(rect("l1", L1, l, l1y, shoulderW, shoulderH));
        elements.add(rect("r2", TRIGGER_R, r - shoulderW, l2y, shoulderW, shoulderH));
        elements.add(rect("r1", R1, r - shoulderW, l1y, shoulderW, shoulderH));
        elements.add(rect("select", BACK, w * 0.3f - pillW / 2, pillY, pillW, pillH));
        elements.add(rect("start", START, w * 0.7f - pillW / 2, pillY, pillW, pillH));
        elements.add(circle("dpad", DPAD, l + dpadR, dpadY, dpadR));
        stickRadius = u * 0.14f;
    }

    private JSONObject toJson() throws JSONException {
        JSONArray list = new JSONArray();
        for (Element e : elements) {
            JSONObject o = new JSONObject().put("id", e.id).put("shape", e.circle ? "circle" : "rect")
                .put("x", e.x).put("y", e.y);
            if (e.circle) {
                o.put("r", e.r);
            } else {
                o.put("w", e.w).put("h", e.h);
            }
            list.put(o);
        }
        return new JSONObject().put("width", width).put("height", height).put("stick_radius", stickRadius)
            .put("elements", list);
    }

    /** The default layout as JSON: what the view offers when the player resets theirs. */
    String defaultLayout(int w, int h, float left, float top, float right, float bottom) {
        TouchModel fresh = new TouchModel();
        fresh.layDefault(w, h, left, top, right, bottom);
        try {
            return fresh.toJson().toString();
        } catch (JSONException e) {
            return "{}";
        }
    }

    /**
     * Makes the controls the default for this window with the player's arrangement (JSON, as this returned it)
     * over it: each control it names takes its place and size, scaled from the window it was made on to this
     * one (sizes by the smaller ratio, so a round button stays round). Returns the result as JSON.
     */
    String setLayout(int w, int h, float left, float top, float right, float bottom, String saved) {
        layDefault(w, h, left, top, right, bottom);
        fingers.clear();
        if (saved != null) {
            try {
                JSONObject mine = new JSONObject(saved);
                double sw = mine.optDouble("width"), sh = mine.optDouble("height");
                if (sw > 0 && sh > 0) {
                    float sx = (float) (w / sw), sy = (float) (h / sh), size = Math.min(sx, sy);
                    JSONArray list = mine.optJSONArray("elements");
                    for (int i = 0; list != null && i < list.length(); i++) {
                        JSONObject o = list.optJSONObject(i);
                        Element e = o == null ? null : find(o.optString("id"));
                        double x = o == null ? -1 : o.optDouble("x", -1), y = o == null ? -1 : o.optDouble("y", -1);
                        if (e == null || !(x >= 0) || !(y >= 0)) {
                            continue;
                        }
                        if (e.circle && "circle".equals(o.optString("shape")) && o.optDouble("r") > 0) {
                            e.x = (float) x * sx;
                            e.y = (float) y * sy;
                            e.r = (float) o.optDouble("r") * size;
                        } else if (!e.circle && "rect".equals(o.optString("shape")) && o.optDouble("w") > 0
                            && o.optDouble("h") > 0) {
                            e.x = (float) x * sx;
                            e.y = (float) y * sy;
                            e.w = (float) o.optDouble("w") * size;
                            e.h = (float) o.optDouble("h") * size;
                        }
                    }
                }
            } catch (JSONException ignored) {
            }
        }
        try {
            return toJson().toString();
        } catch (JSONException e) {
            return "{}";
        }
    }

    private Element find(String id) {
        for (Element e : elements) {
            if (e.id.equals(id)) {
                return e;
            }
        }
        return null;
    }

    private Element hit(float px, float py) {
        for (Element e : elements) {
            if (e.contains(px, py, 1f)) {
                return e;
            }
        }
        for (Element e : elements) {
            if (e.contains(px, py, 1.3f)) {
                return e;
            }
        }
        return null;
    }

    /** A touch on the controls, in window pixels: action 0 down, 1 move, 2 up or cancelled. */
    void touch(int action, long id, float x, float y) {
        if (action == 0) {
            Element e = hit(x, y);
            int control = e != null ? e.control : x < width / 2 ? LEFT_STICK : RIGHT_STICK;
            // The d-pad reads from its centre; a stick from where the finger came down (a floating stick).
            float ox = control == DPAD ? e.x : x, oy = control == DPAD ? e.y : y;
            fingers.put(id, new Finger(control, ox, oy, x, y));
        } else if (action == 1) {
            Finger f = fingers.get(id);
            if (f == null) {
                return;
            }
            f.px = x;
            f.py = y;
            // A stick's centre follows a finger that runs past its edge, so reversing is immediate.
            if (f.control == LEFT_STICK || f.control == RIGHT_STICK) {
                float dx = x - f.ox, dy = y - f.oy, length = (float) Math.hypot(dx, dy);
                if (length > stickRadius) {
                    float excess = (length - stickRadius) / length;
                    f.ox += dx * excess;
                    f.oy += dy * excess;
                }
            }
        } else {
            fingers.remove(id);
        }
    }

    private float[] deflection(Finger f) {
        float dx = f.px - f.ox, dy = f.py - f.oy, length = (float) Math.hypot(dx, dy);
        if (length < stickRadius * 0.12f) {
            return new float[] {0, 0};
        }
        float scale = Math.min(length / stickRadius, 1f) / length;
        return new float[] {dx * scale, dy * scale};
    }

    /** What is pressed, in SDL's numbering with L2 and R2 as bits 30 and 31. */
    int buttons() {
        int out = 0;
        for (Finger f : fingers.values()) {
            if (f.control >= 0) {
                out |= 1 << f.control;
            } else if (f.control == TRIGGER_L) {
                out |= BIT_L2;
            } else if (f.control == TRIGGER_R) {
                out |= BIT_R2;
            } else if (f.control == DPAD) {
                float dx = f.px - f.ox, dy = f.py - f.oy;
                if (Math.hypot(dx, dy) > stickRadius * 0.15f) {
                    // Eight directions: a diagonal presses both of its neighbours.
                    int sector = Math.floorMod(Math.round((float) (Math.atan2(dy, dx) / (Math.PI / 4))), 8);
                    if (sector == 7 || sector <= 1) out |= 1 << RIGHT;
                    if (sector >= 1 && sector <= 3) out |= 1 << DOWN;
                    if (sector >= 3 && sector <= 5) out |= 1 << LEFT;
                    if (sector >= 5) out |= 1 << UP;
                }
            }
        }
        return out;
    }

    /** The pad state as TouchOverlay draws it: buttons, and each stick held with its centre and knob. */
    String padState(boolean active) {
        try {
            JSONArray sticks = new JSONArray();
            for (Finger f : fingers.values()) {
                if (f.control == LEFT_STICK || f.control == RIGHT_STICK) {
                    float[] d = deflection(f);
                    sticks.put(new JSONObject().put("x", f.ox).put("y", f.oy)
                        .put("knob_x", f.ox + d[0] * stickRadius).put("knob_y", f.oy + d[1] * stickRadius)
                        .put("left", f.control == LEFT_STICK));
                }
            }
            return new JSONObject().put("buttons", buttons()).put("sticks", sticks).put("active", active).toString();
        } catch (JSONException e) {
            return "{}";
        }
    }

    // In Native.buttonBit's order: Up, Down, Left, Right, Cross, Circle, Square, Triangle, L1, R1, L2, R2,
    // Select, Start, L3, R3.
    private static final int[] ORDER = {1 << UP, 1 << DOWN, 1 << LEFT, 1 << RIGHT, 1 << SOUTH, 1 << EAST, 1 << WEST,
        1 << NORTH, 1 << L1, 1 << R1, BIT_L2, BIT_R2, 1 << BACK, 1 << START};
    private static int[] padBits;

    /** Hands the state to the game. */
    void push() {
        if (padBits == null) {
            padBits = new int[ORDER.length];
            for (int i = 0; i < ORDER.length; i++) {
                padBits[i] = Native.buttonBit(i);
            }
        }
        int pressed = buttons();
        int pad = 0;
        for (int i = 0; i < ORDER.length; i++) {
            if ((pressed & ORDER[i]) != 0) {
                pad |= padBits[i];
            }
        }
        float lx = 0, ly = 0, rx = 0, ry = 0;
        for (Finger f : fingers.values()) {
            float[] d = f.control == LEFT_STICK || f.control == RIGHT_STICK ? deflection(f) : null;
            if (f.control == LEFT_STICK) {
                lx = d[0];
                ly = d[1];
            } else if (f.control == RIGHT_STICK) {
                rx = d[0];
                ry = d[1];
            }
        }
        Native.setTouch(pad, lx, ly, rx, ry);
    }
}
