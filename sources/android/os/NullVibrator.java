package android.os;

import android.media.AudioAttributes;

/* loaded from: /home/user/work/dex/classes2.dex */
public class NullVibrator extends Vibrator {
    private static final NullVibrator sInstance = new NullVibrator();

    @Override // android.os.Vibrator
    public void cancel() {
    }

    @Override // android.os.Vibrator
    public boolean hasAmplitudeControl() {
        return false;
    }

    @Override // android.os.Vibrator
    public boolean hasVibrator() {
        return false;
    }

    @Override // android.os.Vibrator
    public void vibrate(int i, String str, VibrationEffect vibrationEffect, AudioAttributes audioAttributes) {
    }

    private NullVibrator() {
    }

    public static NullVibrator getInstance() {
        return sInstance;
    }
}
