#include <gtest/gtest.h>

#include "gfx/gfx.hpp"

// The single-worker compile lives in the Android Kazarov patch; the host build's unpatched
// submodule does not carry the probe, so only the Android build asserts it.
TEST(GfxPipelines, AndroidCompilesOnOneWorker) {
#ifdef __ANDROID__
    EXPECT_EQ(gfx::PipelineCompileWorkerCount(), 1u);
#else
    GTEST_SKIP() << "the worker probe is an Android patch of Kazarov";
#endif
}
