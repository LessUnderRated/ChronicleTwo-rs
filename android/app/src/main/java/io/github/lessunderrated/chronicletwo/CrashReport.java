package io.github.lessunderrated.chronicletwo;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.app.ApplicationExitInfo;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.util.Log;
import android.widget.Toast;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.charset.StandardCharsets;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;

/**
 * The game's log, for a player with no computer to read logcat from. Every run of the game writes a log of its
 * own to logs/ in the app's storage, and its crash handler a report to saves/crashes/ (port/src/log,
 * port/src/crash); a Java exception goes to logs/java-exception.txt. When the last run ended badly, the setup
 * screen says so and offers what it left for sharing, and the menu offers this run's log.
 */
final class CrashReport {
    private static final String TAG = "ChronicleTwo";
    /** What a share or the clipboard carries comfortably: the end of the log, where the trouble is. */
    private static final int MAX_CHARS = 60_000;

    private CrashReport() {}

    private static File logDir(Context context) {
        return new File(context.getFilesDir(), "logs");
    }

    private static File crashDir(Context context) {
        return new File(context.getFilesDir(), "saves/crashes");
    }

    /** The newest file named *suffix under dir, its subdirectories too; null when there is none. */
    private static File newest(File dir, String suffix) {
        File found = null;
        File[] files = dir.listFiles();
        for (int i = 0; files != null && i < files.length; i++) {
            File f = files[i].isDirectory() ? newest(files[i], suffix) : files[i].getName().endsWith(suffix) ? files[i] : null;
            if (f != null && (found == null || f.lastModified() > found.lastModified())) {
                found = f;
            }
        }
        return found;
    }

    /** The game's newest session log, which logs/stderr.log is not. */
    private static File newestGameLog(Context context) {
        File found = null;
        File[] files = logDir(context).listFiles();
        for (int i = 0; files != null && i < files.length; i++) {
            File f = files[i];
            if (f.isFile() && f.getName().endsWith(".log") && !f.getName().equals("stderr.log")
                && (found == null || f.lastModified() > found.lastModified())) {
                found = f;
            }
        }
        return found;
    }

    /** The runs of printable text in binary data, one a line, as strings(1) gives them. */
    private static String readable(String data) {
        StringBuilder out = new StringBuilder();
        StringBuilder run = new StringBuilder();
        for (int i = 0; i <= data.length(); i++) {
            char c = i < data.length() ? data.charAt(i) : 0;
            if (c >= 0x20 && c < 0x7F) {
                run.append(c);
                continue;
            }
            if (run.length() >= 6) {
                out.append(run).append('\n');
            }
            run.setLength(0);
        }
        return out.toString();
    }

    private static boolean sOpened;

    /** Loads the game's library and records Java exceptions in logs/java-exception.txt. */
    static synchronized void open(Context context) {
        if (sOpened) {
            return;
        }
        try {
            SetupActivity.loadNative();
            sOpened = true;
        } catch (UnsatisfiedLinkError e) {
            Log.e(TAG, "the game's library did not load", e);
            return;
        }
        File exceptions = new File(logDir(context), "java-exception.txt");
        Thread.UncaughtExceptionHandler previous = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler((thread, error) -> {
            try {
                logDir(context).mkdirs();
                java.nio.file.Files.write(exceptions.toPath(), (device(context) + "\njava exception in thread "
                    + thread.getName() + ":\n" + Log.getStackTraceString(error)).getBytes(StandardCharsets.UTF_8));
            } catch (Throwable ignored) {
            }
            if (previous != null) {
                previous.uncaughtException(thread, error);
            }
        });
    }

    private static String device(Context context) {
        String version = "?";
        try {
            version = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Exception ignored) {
        }
        return "Chronicle Two " + version + " on " + Build.MANUFACTURER + " " + Build.MODEL
            + " (" + Build.SOC_MANUFACTURER + " " + Build.SOC_MODEL + "), Android " + Build.VERSION.RELEASE
            + " (API " + Build.VERSION.SDK_INT + ")";
    }

    // ---- The last run -------------------------------------------------------------------------

    /**
     * The report on the last run when it crashed, was stopped for not responding, or quit with an
     * error, and has not been reported yet; null otherwise. Call after open, which keeps its log.
     */
    static String lastRunFailure(Context context) {
        List<ApplicationExitInfo> exits;
        try {
            exits = context.getSystemService(ActivityManager.class)
                .getHistoricalProcessExitReasons(null, 0, 1);
        } catch (RuntimeException e) {
            return null;
        }
        if (exits.isEmpty()) {
            return null;
        }
        ApplicationExitInfo exit = exits.get(0);
        SharedPreferences prefs = context.getSharedPreferences("crash-report", Context.MODE_PRIVATE);
        if (exit.getTimestamp() <= prefs.getLong("reported", 0)) {
            return null;
        }
        prefs.edit().putLong("reported", exit.getTimestamp()).apply();
        if (!failed(exit)) {
            return null;
        }
        StringBuilder report = new StringBuilder();
        report.append(device(context)).append('\n');
        report.append("The last run ended ")
            .append(DateFormat.getDateTimeInstance().format(new Date(exit.getTimestamp())))
            .append(": ").append(reason(exit)).append(", status ").append(exit.getStatus());
        if (exit.getDescription() != null) {
            report.append(", ").append(exit.getDescription());
        }
        report.append('\n');
        if (exit.getReason() == ApplicationExitInfo.REASON_ANR) {
            report.append("\n--- threads ---\n").append(tail(trace(exit), MAX_CHARS / 3));
        } else if (exit.getReason() == ApplicationExitInfo.REASON_CRASH_NATIVE) {
            // Android's tombstone of the crash, a protobuf: its text (the abort message, the frames' names) is enough.
            report.append("\n--- tombstone ---\n").append(tail(readable(trace(exit)), MAX_CHARS / 3));
        }
        // What that run left, if it is from then: its crash report, a Java exception, and its log.
        long since = exit.getTimestamp() - 10 * 60 * 1000;
        File crash = newest(crashDir(context), "report.txt");
        if (crash != null && crash.lastModified() >= since) {
            report.append("\n--- crash report ---\n").append(tail(read(crash), MAX_CHARS / 2));
        }
        File exception = new File(logDir(context), "java-exception.txt");
        if (exception.isFile() && exception.lastModified() >= since) {
            report.append("\n--- java exception ---\n").append(tail(read(exception), MAX_CHARS / 4));
        }
        File stderr = new File(logDir(context), "stderr.log");
        if (stderr.isFile() && stderr.lastModified() >= since) {
            report.append("\n--- stderr ---\n").append(tail(read(stderr), MAX_CHARS / 4));
        }
        File log = newestGameLog(context);
        report.append("\n--- log ---\n").append(log == null ? "(none)" : tail(read(log), MAX_CHARS / 2));
        return report.toString();
    }

    private static boolean failed(ApplicationExitInfo exit) {
        switch (exit.getReason()) {
            case ApplicationExitInfo.REASON_CRASH:
            case ApplicationExitInfo.REASON_CRASH_NATIVE:
            case ApplicationExitInfo.REASON_ANR:
            case ApplicationExitInfo.REASON_INITIALIZATION_FAILURE:
                return true;
            case ApplicationExitInfo.REASON_EXIT_SELF:
                return exit.getStatus() != 0;
            case ApplicationExitInfo.REASON_SIGNALED:
            case ApplicationExitInfo.REASON_LOW_MEMORY:
            case ApplicationExitInfo.REASON_EXCESSIVE_RESOURCE_USAGE:
                // Killed while on screen, not cleared away in the background.
                return exit.getImportance() <= ActivityManager.RunningAppProcessInfo.IMPORTANCE_VISIBLE;
            default:
                return false;
        }
    }

    private static String reason(ApplicationExitInfo exit) {
        switch (exit.getReason()) {
            case ApplicationExitInfo.REASON_CRASH:
                return "crashed (Java)";
            case ApplicationExitInfo.REASON_CRASH_NATIVE:
                return "crashed (native)";
            case ApplicationExitInfo.REASON_ANR:
                return "stopped responding";
            case ApplicationExitInfo.REASON_INITIALIZATION_FAILURE:
                return "failed to start";
            case ApplicationExitInfo.REASON_EXIT_SELF:
                return "quit with an error";
            case ApplicationExitInfo.REASON_SIGNALED:
                return "killed by a signal";
            case ApplicationExitInfo.REASON_LOW_MEMORY:
                return "closed by Android for memory";
            case ApplicationExitInfo.REASON_EXCESSIVE_RESOURCE_USAGE:
                return "closed by Android for using too much";
            default:
                return "reason " + exit.getReason();
        }
    }

    private static String trace(ApplicationExitInfo exit) {
        try (InputStream in = exit.getTraceInputStream()) {
            if (in == null) {
                return "";
            }
            ByteArrayOutputStream out = new ByteArrayOutputStream();
            byte[] buffer = new byte[16384];
            for (int n; (n = in.read(buffer)) > 0 && out.size() < (1 << 20); ) {
                out.write(buffer, 0, n);
            }
            return out.toString(StandardCharsets.ISO_8859_1);
        } catch (IOException e) {
            return "";
        }
    }

    // ---- This run -----------------------------------------------------------------------------

    static String currentRun(Context context) {
        File log = newestGameLog(context);
        return device(context) + "\n\n--- log ---\n" + (log == null ? "(none)" : tail(read(log), MAX_CHARS));
    }

    /** The last bytes of a file, which is all of a log worth sending. */
    private static String read(File file) {
        try (RandomAccessFile in = new RandomAccessFile(file, "r")) {
            long length = in.length();
            int size = (int) Math.min(length, MAX_CHARS * 2L);
            byte[] bytes = new byte[size];
            in.seek(length - size);
            in.readFully(bytes);
            return new String(bytes, StandardCharsets.UTF_8);
        } catch (IOException e) {
            return "(no log: " + e.getMessage() + ")";
        }
    }

    private static String tail(String text, int chars) {
        if (text.length() <= chars) {
            return text;
        }
        String end = text.substring(text.length() - chars);
        int line = end.indexOf('\n');
        return "[…]\n" + (line >= 0 ? end.substring(line + 1) : end);
    }

    // ---- Dialogs ------------------------------------------------------------------------------

    /** Says the last run failed and offers its report; then runs next. */
    static void showFailure(Activity activity, String report, Runnable next) {
        new AlertDialog.Builder(activity, android.R.style.Theme_DeviceDefault_Dialog_Alert)
            .setTitle(R.string.crash_title)
            .setMessage(R.string.crash_message)
            .setCancelable(false)
            .setPositiveButton(R.string.log_share, (d, w) -> {
                share(activity, report);
                next.run();
            })
            .setNeutralButton(R.string.log_copy, (d, w) -> {
                copy(activity, report);
                next.run();
            })
            .setNegativeButton(R.string.crash_continue, (d, w) -> next.run())
            .show();
    }

    static void share(Activity activity, String report) {
        Intent send = new Intent(Intent.ACTION_SEND)
            .setType("text/plain")
            .putExtra(Intent.EXTRA_SUBJECT, activity.getString(R.string.log_subject))
            .putExtra(Intent.EXTRA_TEXT, report);
        try {
            activity.startActivity(Intent.createChooser(send, activity.getString(R.string.log_share)));
        } catch (RuntimeException e) {
            copy(activity, report);
        }
    }

    static void copy(Context context, String report) {
        context.getSystemService(ClipboardManager.class)
            .setPrimaryClip(ClipData.newPlainText(context.getString(R.string.log_subject), report));
        Toast.makeText(context, R.string.log_copied, Toast.LENGTH_SHORT).show();
    }
}
