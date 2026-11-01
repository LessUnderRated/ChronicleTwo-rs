package io.github.lessunderrated.chronicletwo;

import android.app.AlertDialog;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;

import org.libsdl.app.SDLActivity;

/**
 * SDL's activity, loading libSDL3.so and libmain.so, whose SDL_main (android/src/lib.rs) runs the game,
 * with the touch controls over it and the app's own menu: speed, graphics and video settings, the
 * controls' editor, and saves brought in from a PS2 memory card. The game holds still while the menu
 * is open.
 */
public class ChronicleActivity extends SDLActivity implements TouchOverlay.Listener {

    private TouchOverlay overlay;
    private LinearLayout editPanel;
    private TextView editLabel;
    private SeekBar editSize;
    private SeekBar editOpacity;
    private boolean menuOpen;
    private Power power;

    @Override
    protected String[] getLibraries() {
        return new String[] {"SDL3", "darkchronicle"};
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        // Opened by the setup screen already, unless the game was started some other way.
        CrashReport.open(this);
        overlay = new TouchOverlay(this, this);
        addContentView(overlay, new ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
            ViewGroup.LayoutParams.MATCH_PARENT));
        buildEditPanel();
        power = new Power(this);
    }

    @Override
    protected void onResume() {
        super.onResume();
        background(false);
        power.start();
    }

    @Override
    protected void onPause() {
        power.stop();
        background(true);
        super.onPause();
    }

    /** The game parks before SDL pauses, while its window surface is still there to drop. */
    private static void background(boolean background) {
        try {
            Native.setBackground(background);
        } catch (UnsatisfiedLinkError e) {
            // The game's library did not load; SDL reports that itself.
        }
    }

    private int dp(int value) {
        return Math.round(value * getResources().getDisplayMetrics().density);
    }

    /**
     * Landscape only, either way up. SDL asks for an orientation when it makes the window, and for a
     * resizable window without a hint that is any the player allows, portrait too; the manifest's
     * sensorLandscape stands instead.
     */
    @Override
    public void setOrientationBis(int w, int h, boolean resizable, String hint) {
        setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_SENSOR_LANDSCAPE);
    }

    /** Back opens the menu rather than leaving the game. */
    @Override
    public boolean dispatchKeyEvent(KeyEvent event) {
        if (event.getKeyCode() == KeyEvent.KEYCODE_BACK) {
            if (event.getAction() == KeyEvent.ACTION_UP) {
                if (editPanel.getVisibility() == android.view.View.VISIBLE) {
                    finishEditing();
                } else if (!menuOpen) {
                    onMenu();
                }
            }
            return true;
        }
        return super.dispatchKeyEvent(event);
    }

    private AlertDialog.Builder dialog() {
        return new AlertDialog.Builder(this, android.R.style.Theme_DeviceDefault_Dialog_Alert);
    }

    // ---- The menu -----------------------------------------------------------------------------

    @Override
    public void onMenu() {
        menuOpen = true;
        Native.setPaused(true);
        String speed = Native.speed() == 2 ? getString(R.string.menu_speed_fast) : getString(R.string.menu_speed_normal);
        String controls = overlay.hidden() ? getString(R.string.menu_show_controls) : getString(R.string.menu_hide_controls);
        String[] items = {
            getString(R.string.menu_resume),
            speed,
            getString(R.string.menu_settings),
            getString(R.string.menu_edit_controls),
            controls,
            getString(R.string.menu_share_log),
            getString(R.string.menu_quit),
        };
        dialog()
            .setTitle(R.string.app_name)
            .setItems(items, (d, which) -> {
                switch (which) {
                    case 1:
                        Native.setSpeed(Native.speed() == 2 ? 1 : 2);
                        overlay.invalidate();
                        onMenu();
                        return;
                    case 2:
                        showSettings();
                        return;
                    case 3:
                        startEditing();
                        return;
                    case 4:
                        overlay.setHidden(!overlay.hidden());
                        resume();
                        return;
                    case 5:
                        CrashReport.share(this, CrashReport.currentRun(this));
                        resume();
                        return;
                    case 6:
                        finishAffinity();
                        System.exit(0);
                        return;
                    default:
                        resume();
                }
            })
            .setOnCancelListener(d -> resume())
            .show();
    }

    private void resume() {
        menuOpen = false;
        Native.setPaused(false);
    }

    @Override
    public void onSpeedChanged(int speed) {
        overlay.invalidate();
    }

    // ---- Settings -----------------------------------------------------------------------------

    /**
     * The game's own Options pages (options::Pages through Native), as its Options screen shows them, and the
     * touch controls' opacity, which is the app's. A row is changed as Left and Right change it in the game.
     */
    private void showSettings() {
        int pages = Native.settingsPageCount();
        String[] rows = new String[pages + 1];
        for (int i = 0; i < pages; i++) {
            rows[i] = Native.settingsPageName(i);
        }
        rows[pages] = getString(R.string.setting_controls_opacity) + ": " + Math.round(overlay.globalOpacity() * 100) + "%";
        dialog()
            .setTitle(R.string.menu_settings)
            .setItems(rows, (d, which) -> {
                if (which == pages) {
                    chooseOpacity();
                } else {
                    showPage(which);
                }
            })
            .setNegativeButton(R.string.menu_back, (d, w) -> onMenu())
            .setOnCancelListener(d -> onMenu())
            .show();
    }

    private void showPage(int page) {
        int count = Native.settingsRowCount(page);
        java.util.List<Integer> steppable = new java.util.ArrayList<>();
        java.util.List<String> labels = new java.util.ArrayList<>();
        for (int row = 0; row < count; row++) {
            if (Native.settingsRowSteppable(page, row)) {
                steppable.add(row);
                labels.add(Native.settingsRowLabel(page, row) + ": " + Native.settingsRowValue(page, row));
            }
        }
        dialog()
            .setTitle(Native.settingsPageName(page))
            .setItems(labels.toArray(new String[0]), (d, which) -> showRow(page, steppable.get(which)))
            .setNegativeButton(R.string.menu_back, (d, w) -> showSettings())
            .setOnCancelListener(d -> showSettings())
            .show();
    }

    private void showRow(int page, int row) {
        String help = Native.settingsRowHelp(page, row);
        String value = Native.settingsRowValue(page, row);
        AlertDialog shown = dialog()
            .setTitle(Native.settingsRowLabel(page, row))
            .setMessage(value + (help == null || help.isEmpty() ? "" : "\n\n" + help))
            .setNegativeButton("◀", null)
            .setPositiveButton("▶", null)
            .setNeutralButton(R.string.menu_back, (d, w) -> showPage(page))
            .setOnCancelListener(d -> showPage(page))
            .show();
        // Stepping keeps the dialog up, showing the new value.
        android.view.View.OnClickListener step = v -> {
            int direction = v == shown.getButton(AlertDialog.BUTTON_POSITIVE) ? 1 : -1;
            Native.settingsStep(page, row, direction);
            String now = Native.settingsRowValue(page, row);
            shown.setMessage(now + (help == null || help.isEmpty() ? "" : "\n\n" + help));
        };
        shown.getButton(AlertDialog.BUTTON_NEGATIVE).setOnClickListener(step);
        shown.getButton(AlertDialog.BUTTON_POSITIVE).setOnClickListener(step);
    }

    private void chooseOpacity() {
        String[] steps = new String[10];
        for (int i = 0; i < steps.length; i++) {
            steps[i] = ((i + 1) * 10) + "%";
        }
        int at = Math.round(overlay.globalOpacity() * 10) - 1;
        dialog()
            .setTitle(R.string.setting_controls_opacity)
            .setSingleChoiceItems(steps, Math.max(0, Math.min(steps.length - 1, at)), (d, which) -> {
                overlay.setGlobalOpacity((which + 1) / 10f);
                d.dismiss();
                showSettings();
            })
            .setOnCancelListener(d -> showSettings())
            .show();
    }

    // ---- The controls' editor -----------------------------------------------------------------

    /**
     * A slim strip along the top edge, one row: what is picked, its size, the opacity of all the
     * controls, Reset all and Done. It gets out of the way of the controls being placed: hidden while
     * one is dragged, and at the bottom edge instead while the one placed is in the top part.
     */
    private void buildEditPanel() {
        editPanel = new LinearLayout(this);
        editPanel.setOrientation(LinearLayout.HORIZONTAL);
        editPanel.setGravity(Gravity.CENTER_VERTICAL);
        editPanel.setBackgroundColor(Color.argb(0xC0, 0x10, 0x12, 0x1A));
        editPanel.setPadding(dp(12), dp(2), dp(8), dp(2));
        editLabel = new TextView(this);
        editLabel.setTextColor(Color.WHITE);
        editLabel.setTextSize(12);
        editLabel.setMaxLines(2);
        editPanel.addView(editLabel, new LinearLayout.LayoutParams(dp(120), ViewGroup.LayoutParams.WRAP_CONTENT));

        editSize = slider(R.string.edit_size, 25, 250, (value) -> overlay.setSelectedScale(value / 100f));
        // One opacity for every control, the same as the settings' Touch controls opacity.
        editOpacity = slider(R.string.edit_opacity, 5, 100, (value) -> overlay.setGlobalOpacity(value / 100f));

        Button reset = new Button(this, null, android.R.attr.borderlessButtonStyle);
        reset.setText(R.string.edit_reset);
        reset.setTextColor(Color.WHITE);
        reset.setOnClickListener(v -> overlay.resetLayout());
        editPanel.addView(reset);
        Button done = new Button(this, null, android.R.attr.borderlessButtonStyle);
        done.setText(R.string.edit_done);
        done.setTextColor(Color.WHITE);
        done.setOnClickListener(v -> finishEditing());
        editPanel.addView(done);

        editPanel.setVisibility(android.view.View.GONE);
        addContentView(editPanel, editPanelAt(Gravity.TOP));
    }

    private FrameLayout.LayoutParams editPanelAt(int edge) {
        FrameLayout.LayoutParams params = new FrameLayout.LayoutParams(Math.min(dp(640),
            getResources().getDisplayMetrics().widthPixels - dp(32)), ViewGroup.LayoutParams.WRAP_CONTENT,
            edge | Gravity.CENTER_HORIZONTAL);
        return params;
    }

    @Override
    public void onEditDrag(boolean dragging, float y) {
        if (dragging) {
            editPanel.setVisibility(android.view.View.INVISIBLE);
            return;
        }
        // Clear of the control just placed: at the bottom when it sits in the top part of the screen.
        int edge = y < overlay.getHeight() * 0.4f ? Gravity.BOTTOM : Gravity.TOP;
        editPanel.setLayoutParams(editPanelAt(edge));
        editPanel.setVisibility(android.view.View.VISIBLE);
    }

    private interface IntSink {
        void accept(int value);
    }

    /** A label over a slider, side by side with the panel's other parts. */
    private SeekBar slider(int label, int min, int max, IntSink sink) {
        LinearLayout column = new LinearLayout(this);
        column.setOrientation(LinearLayout.VERTICAL);
        TextView name = new TextView(this);
        name.setText(label);
        name.setTextColor(Color.LTGRAY);
        name.setTextSize(11);
        column.addView(name);
        SeekBar bar = new SeekBar(this);
        bar.setMin(min);
        bar.setMax(max);
        bar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            @Override
            public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
                if (fromUser) {
                    sink.accept(progress);
                }
            }

            @Override
            public void onStartTrackingTouch(SeekBar seekBar) {}

            @Override
            public void onStopTrackingTouch(SeekBar seekBar) {}
        });
        column.addView(bar);
        editPanel.addView(column, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        return bar;
    }

    private void startEditing() {
        menuOpen = true;
        Native.setPaused(true);
        overlay.setEditing(true);
        onSelectionChanged(null);
        editPanel.setLayoutParams(editPanelAt(Gravity.TOP));
        editPanel.setVisibility(android.view.View.VISIBLE);
    }

    private void finishEditing() {
        overlay.setEditing(false);
        editPanel.setVisibility(android.view.View.GONE);
        resume();
    }

    @Override
    public void onSelectionChanged(String id) {
        boolean any = id != null;
        editLabel.setText(any ? getString(R.string.edit_selected, id.toUpperCase()) : getString(R.string.edit_hint));
        editSize.setEnabled(any);
        if (any) {
            editSize.setProgress(Math.round(overlay.selectedScale() * 100));
        }
        editOpacity.setProgress(Math.round(overlay.globalOpacity() * 100));
    }
}
