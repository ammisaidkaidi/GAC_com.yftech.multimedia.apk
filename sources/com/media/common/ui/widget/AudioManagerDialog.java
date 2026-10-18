package com.media.common.ui.widget;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.fragment.app.DialogFragment;
import com.google.android.material.badge.BadgeDrawable;
import com.media.common.util.AudioSettingUtil;
import com.media.common.util.LogUtil;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Locale;
import java.util.Objects;

/* loaded from: /home/user/work/dex/classes3.dex */
public class AudioManagerDialog extends DialogFragment implements SeekBar.OnSeekBarChangeListener, View.OnTouchListener {
    private static final String ARG_PARAM1 = "x";
    private static final String ARG_PARAM2 = "y";
    private static final String ARG_PARAM3 = "isFullScreen";
    private boolean isFullScreen;
    private OnAudioSeekbarChangingListener onAudioSeekbarChangingListener;
    private TextView tv_volume;
    private int x;
    private int y;

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface OnAudioSeekbarChangingListener {
        public static final int VIEW_PRESS = 0;
        public static final int VIEW_PULL = 1;

        @Documented
        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: /home/user/work/dex/classes3.dex */
        public @interface AudioStateChanged {
        }

        void onChanging(int i);
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
    }

    public static AudioManagerDialog newInstance(int i, int i2, boolean z) {
        AudioManagerDialog audioManagerDialog = new AudioManagerDialog();
        Bundle bundle = new Bundle();
        bundle.putInt(ARG_PARAM1, i);
        bundle.putInt(ARG_PARAM2, i2);
        bundle.putBoolean(ARG_PARAM3, z);
        audioManagerDialog.setArguments(bundle);
        return audioManagerDialog;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        Window window;
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        window.setBackgroundDrawableResource(17170445);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.dimAmount = 0.0f;
        attributes.width = 70;
        attributes.height = 150;
        attributes.gravity = BadgeDrawable.TOP_START;
        attributes.x = this.x;
        attributes.y = this.y;
        window.setAttributes(attributes);
        int windowVisibility = window.getDecorView().getWindowVisibility();
        window.getDecorView().setSystemUiVisibility(!this.isFullScreen ? windowVisibility & (-3) & (-513) & (-5) & (-16385) : windowVisibility | 2 | 512 | 256 | 2048 | 4096 | 4 | 16384);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.x = getArguments().getInt(ARG_PARAM1);
            this.y = getArguments().getInt(ARG_PARAM2);
            this.isFullScreen = getArguments().getBoolean(ARG_PARAM3);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.dialog_audio_manager, viewGroup, false);
        initW(inflate);
        return inflate;
    }

    private void initW(View view) {
        this.tv_volume = (TextView) view.findViewById(R.id.tv_volume);
        VerticalSeekBar verticalSeekBar = (VerticalSeekBar) view.findViewById(R.id.seekBar_audio);
        int streamMaxVolume = AudioSettingUtil.getStreamMaxVolume((Context) Objects.requireNonNull(getContext()), 3);
        int streamVolume = AudioSettingUtil.getStreamVolume((Context) Objects.requireNonNull(getContext()), 3);
        verticalSeekBar.setMax(streamMaxVolume);
        verticalSeekBar.setProgress(streamVolume);
        this.tv_volume.setText(String.format(Locale.getDefault(), "%d%%", Integer.valueOf(Math.round((streamVolume * 100.0f) / streamMaxVolume))));
        verticalSeekBar.setOnSeekBarChangeListener(this);
        verticalSeekBar.setOnTouchListener(this);
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        this.tv_volume.setText(String.format(Locale.getDefault(), "%d%%", Integer.valueOf(Math.round((i * 100.0f) / seekBar.getMax()))));
        AudioSettingUtil.setStreamVolume((Context) Objects.requireNonNull(getContext()), 3, i);
    }

    public void setOnAudioSeekbarChangingListener(OnAudioSeekbarChangingListener onAudioSeekbarChangingListener) {
        this.onAudioSeekbarChangingListener = onAudioSeekbarChangingListener;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (this.onAudioSeekbarChangingListener != null) {
            switch (motionEvent.getAction()) {
                case 0:
                    LogUtil.d("AudioManager Dialog Pressing");
                    this.onAudioSeekbarChangingListener.onChanging(0);
                    break;
                case 1:
                    LogUtil.d("AudioManager Dialog Pull up");
                    this.onAudioSeekbarChangingListener.onChanging(1);
                    break;
            }
        }
        return false;
    }
}
