package com.phigros.local;

import android.app.Activity;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.Looper;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import java.util.Locale;

/** Activity-owned controls, shown only while the ordinary Pause is active. */
public final class PracticeOverlay {
    private static native float[] status();
    private static native void seek(float fraction);
    private final Activity activity;
    private final Handler handler = new Handler(Looper.getMainLooper());
    private LinearLayout panel;
    private SeekBar slider;
    private TextView label;
    private boolean dragging;
    private float length;
    private long committedUntil;

    public static void attach(Activity activity) {
        try {
            System.loadLibrary("practice");
            new PracticeOverlay(activity).start();
        } catch (UnsatisfiedLinkError error) {
            android.util.Log.e("PhigrosPractice", "Unable to load practice controls", error);
        }
    }
    private PracticeOverlay(Activity activity) { this.activity = activity; }
    private int dp(float value) {
        return Math.round(value * activity.getResources().getDisplayMetrics().density);
    }
    private void start() {
        panel = new LinearLayout(activity);
        panel.setOrientation(LinearLayout.VERTICAL);
        panel.setPadding(dp(18), dp(8), dp(18), dp(4));
        GradientDrawable background = new GradientDrawable();
        background.setColor(0xDD151B25);
        background.setCornerRadius(dp(12));
        panel.setBackground(background);
        label = new TextView(activity);
        label.setTextColor(Color.WHITE);
        label.setTextSize(16);
        label.setTypeface(Typeface.DEFAULT, Typeface.BOLD);
        label.setGravity(Gravity.CENTER);
        panel.addView(label, new LinearLayout.LayoutParams(-1, dp(28)));
        slider = new SeekBar(activity);
        slider.setMax(10000);
        slider.setProgressTintList(android.content.res.ColorStateList.valueOf(0xFF65DCE2));
        slider.setThumbTintList(android.content.res.ColorStateList.valueOf(0xFF65DCE2));
        panel.addView(slider, new LinearLayout.LayoutParams(-1, dp(40)));
        FrameLayout.LayoutParams params = new FrameLayout.LayoutParams(
            Math.min(dp(520), activity.getResources().getDisplayMetrics().widthPixels-dp(48)),
            ViewGroup.LayoutParams.WRAP_CONTENT, Gravity.TOP|Gravity.CENTER_HORIZONTAL);
        params.topMargin = dp(18);
        panel.setVisibility(View.GONE);
        activity.addContentView(panel, params);
        slider.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            public void onStartTrackingTouch(SeekBar bar) { dragging = true; }
            public void onProgressChanged(SeekBar bar, int progress, boolean fromUser) {
                if (fromUser) show(progress / 10000f);
            }
            public void onStopTrackingTouch(SeekBar bar) {
                seek(bar.getProgress() / 10000f);
                committedUntil = android.os.SystemClock.uptimeMillis() + 300;
                dragging = false;
            }
        });
        handler.post(new Runnable() {
            public void run() {
                if (activity.isDestroyed() || activity.isFinishing()) return;
                float[] state = status();
                boolean visible = state[0] > 0 && state[2] > 0;
                panel.setVisibility(visible ? View.VISIBLE : View.GONE);
                if (visible) {
                    length = state[2];
                    if (!dragging && android.os.SystemClock.uptimeMillis() > committedUntil) {
                        float fraction = Math.max(0, Math.min(1, state[1] / length));
                        slider.setProgress(Math.round(fraction * 10000));
                        show(fraction);
                    }
                }
                handler.postDelayed(this, 50);
            }
        });
    }
    private void show(float fraction) {
        int seconds = Math.max(0, Math.round(fraction*length));
        int total = Math.max(0, Math.round(length));
        label.setText(String.format(Locale.ROOT,
            "练习进度  %.1f%%    %02d:%02d / %02d:%02d",
            fraction*100, seconds/60, seconds%60, total/60, total%60));
    }
}
