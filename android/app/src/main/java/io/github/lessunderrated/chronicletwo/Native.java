package io.github.lessunderrated.chronicletwo;

/**
 * The game's side of the app (port/src/android/bridge.cpp, registered when libdarkchronicle.so loads).
 */
final class Native {
    private Native() {}

    /** Sets HOME, TMPDIR and the gameplay seed's path for the game and the extractor, and sends stdout and stderr to logcat. */
    static native void setEnvironment(String root);

    /** Whether root holds no current extraction of the disc (data.zip and data.json of this version). */
    static native boolean dataMissing(String root);

    /** Extracts the disc image at image into root, on the calling thread; null, or why it failed. */
    static native String extract(String image, String root);

    /** How far extract is, from 0 to 1, and the stage it is in. */
    static native float extractFraction();

    static native String extractStage();

    /** The touch gamepad's state: the game's pad bits and the sticks from -1 to 1. */
    static native void setTouch(int buttons, float leftX, float leftY, float rightX, float rightY);

    /** Whether the touch gamepad is wanted: no controller, keyboard or mouse in use. */
    static native boolean touchVisible();

    /** The game's pad bit of a button, by TouchModel's order. */
    static native int buttonBit(int index);

    static native void setPaused(boolean paused);

    /** The device's power draw in watts for the overlay (Power), or a negative value when unknown. */
    static native void setWatts(float watts);

    static native void setSpeed(int speed);

    static native int speed();

    /** The game's own Options pages and their rows. */
    static native int settingsPageCount();

    static native String settingsPageName(int page);

    static native int settingsRowCount(int page);

    /** A row the app can step: with a value and no binding (bindings wait for a key in the game). */
    static native boolean settingsRowSteppable(int page, int row);

    static native String settingsRowLabel(int page, int row);

    static native String settingsRowHelp(int page, int row);

    static native String settingsRowValue(int page, int row);

    /** Steps a row by -1 or 1 and saves config.json: 0 unchanged, 1 saved, 2 changed but not saved. */
    static native int settingsStep(int page, int row, int direction);
}
