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

/** Song-select speed slider, shown only while the SongSelector scene runs. */
public final class SpeedOverlay {
    private static native float[] status();
    private static native void speed(float value);
    private static native void initialize(byte[] png);
    private static final float MIN = 0.5f;
    private static final float MAX = 2.0f;
    private static final float STEP = 0.01f;
    private final Activity activity;
    private final Handler handler = new Handler(Looper.getMainLooper());
    private LinearLayout panel;
    private SeekBar slider;
    private TextView label;
    private boolean dragging;
    private float current = MIN;

    public static void attach(Activity activity) {
        try {
            System.loadLibrary("speed");
            initialize(AvatarAssets.read(activity));
            new SpeedOverlay(activity).start();
        } catch (UnsatisfiedLinkError error) {
            android.util.Log.e("PhigrosSpeed", "Unable to load speed controls", error);
        }
    }
    private SpeedOverlay(Activity activity) { this.activity = activity; }
    private int dp(float value) {
        return Math.round(value * activity.getResources().getDisplayMetrics().density);
    }
    private static int toSlider(float rate) {
        return Math.round((rate - MIN) / STEP);
    }
    private static float toRate(int progress) {
        return MIN + progress * STEP;
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
        slider.setMax(toSlider(MAX));
        slider.setProgressTintList(android.content.res.ColorStateList.valueOf(0xFF65DCE2));
        slider.setThumbTintList(android.content.res.ColorStateList.valueOf(0xFF65DCE2));
        panel.addView(slider, new LinearLayout.LayoutParams(-1, dp(40)));
        FrameLayout.LayoutParams params = new FrameLayout.LayoutParams(
            Math.min(dp(520), activity.getResources().getDisplayMetrics().widthPixels - dp(48)),
            ViewGroup.LayoutParams.WRAP_CONTENT, Gravity.BOTTOM | Gravity.CENTER_HORIZONTAL);
        params.bottomMargin = dp(24);
        panel.setVisibility(View.GONE);
        activity.addContentView(panel, params);
        slider.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            public void onStartTrackingTouch(SeekBar bar) { dragging = true; }
            public void onProgressChanged(SeekBar bar, int progress, boolean fromUser) {
                if (fromUser) show(toRate(progress));
            }
            public void onStopTrackingTouch(SeekBar bar) {
                current = toRate(bar.getProgress());
                speed(current);
                dragging = false;
            }
        });
        handler.post(new Runnable() {
            public void run() {
                if (activity.isDestroyed() || activity.isFinishing()) return;
                float[] state = status();
                boolean visible = state[0] > 0 && state[2] > 0;
                panel.setVisibility(visible ? View.VISIBLE : View.GONE);
                if (visible && state[1] != current && !dragging) {
                    current = state[1];
                    slider.setProgress(toSlider(current));
                    show(current);
                }
                handler.postDelayed(this, 50);
            }
        });
    }
    private void show(float rate) {
        label.setText(String.format(Locale.ROOT, "谱面倍速  %.2fx", rate));
    }
}
