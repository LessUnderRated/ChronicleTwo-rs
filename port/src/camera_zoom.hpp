#pragma once

#include <cmath>

#include "cameracontrol.hpp"

class CScene;

// A request belongs to the walking camera, not its temporary collision distance.
// The retail parameter sets are never retained or modified between updates.
struct CameraZoom {
    static constexpr float min_distance = 30.0f;
    static constexpr float max_distance = 600.0f;
    static constexpr float wheel_step = 8.0f;
    // The eye keeps this much room from geometry, so a view does not graze a wall.
    static constexpr float clearance = 6.0f;
    // A cleared view returns this fraction of the remaining distance per tick,
    // at least release_min, once the view lookahead units farther stays clear:
    // nine tenths of the way back within 40 game frames.
    static constexpr float release_rate = 0.1f;
    static constexpr float release_min = 2.0f;
    static constexpr float lookahead = 32.0f;
    // The lookahead also checks the view turned as far as this many ticks of its
    // current turning would take it.
    static constexpr float lookahead_ticks = 60.0f;
    static constexpr int   clear_ticks = 15;
    // A first pull-in is not held: once past the wall the eye returns as soon as
    // the lookahead stays clear, as retail's does. A second recent pull-in holds
    // hold_ticks and each one after doubles that, at most max_strikes times, so
    // a field of rocks keeps the shorter distance.
    static constexpr int hold_ticks = 45;
    static constexpr int max_strikes = 2;
    // A quiet period without pull-ins forgets one of them.
    static constexpr int calm_ticks = 300;
    // A pull-in shorter than this, such as foliage brushing a still view or a
    // wall the player walks slowly toward, neither counts nor holds.
    static constexpr float minor_pull_in = 10.0f;

    float requested = 0;
    // Distance the eye may use: drops at once when the view is blocked and
    // returns only after any hold and a clear lookahead.
    float allowed = 0;
    int   hold = 0;
    int   clear = 0;
    // Recent pull-ins, the latest included.
    int strikes = 0;
    int calm = 0;
    // The eye has not begun moving out since the latest pull-in. Pulling in
    // further meanwhile, such as backing into a wall, is the same pull-in.
    bool pulled = false;
    // The pose drawn before this tick's step, which display frames blend from.
    float shown_pos[3] = {NAN, NAN, NAN};
    float shown_ref[3] = {NAN, NAN, NAN};
    float heading = NAN;
    float turn_rate = 0;
    bool  active = false;

    float HeightScale(CCameraControl &camera) const;
    void  Read(CCameraControl &camera, float wheel, bool reset, bool enabled);
    void  Move(CCameraControl &camera, CScene &scene, CCameraControl::Control &control, float *rotation,
               CCPoly *retail_polys = nullptr, int retail_count = 0);
    // Places the eye in front of any wall between it and the player in the view
    // drawn after the next step. Also run after direct mouse motion.
    void KeepVisible(CCameraControl &camera, CScene &scene, CCPoly *retail_polys = nullptr, int retail_count = 0);

private:
    // The distance below which walls limit the eye as in retail, without a hold.
    [[nodiscard]] float Floor(const CameraCtrlParam &retail) const;
    // Records a pull-in of drop units.
    void Strike(float drop);
    // Whether a camera wall, or when walking any wall, lies between the drawn
    // views blending to the rendered one.
    bool Swept(CCameraControl &camera, CScene &scene, CCameraControl &rendered, CCPoly *retail_polys,
               int retail_count, bool walking = false) const;
};

// Whether a wall crosses any view a display frame blends between two drawn
// poses, from target a and eye a to target b and eye b, with the eye and target
// each moving linearly.
bool CameraViewSweeps(CCPoly *walls, int count, const float *target_a, const float *eye_a, const float *target_b,
                      const float *eye_b);
