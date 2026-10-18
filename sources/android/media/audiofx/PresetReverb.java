package android.media.audiofx;

import android.media.audiofx.AudioEffect;
import java.util.StringTokenizer;

/* loaded from: /home/user/work/dex/classes.dex */
public class PresetReverb extends AudioEffect {
    public static final int PARAM_PRESET = 0;
    public static final short PRESET_LARGEHALL = 5;
    public static final short PRESET_LARGEROOM = 3;
    public static final short PRESET_MEDIUMHALL = 4;
    public static final short PRESET_MEDIUMROOM = 2;
    public static final short PRESET_NONE = 0;
    public static final short PRESET_PLATE = 6;
    public static final short PRESET_SMALLROOM = 1;
    private static final String TAG = "PresetReverb";
    private BaseParameterListener mBaseParamListener;
    private OnParameterChangeListener mParamListener;
    private final Object mParamListenerLock;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnParameterChangeListener {
        void onParameterChange(PresetReverb presetReverb, int i, int i2, short s);
    }

    public PresetReverb(int i, int i2) throws IllegalArgumentException, UnsupportedOperationException, RuntimeException {
        super(EFFECT_TYPE_PRESET_REVERB, EFFECT_TYPE_NULL, i, i2);
        this.mParamListener = null;
        this.mBaseParamListener = null;
        this.mParamListenerLock = new Object();
    }

    public void setPreset(short s) throws IllegalStateException, IllegalArgumentException, UnsupportedOperationException {
        checkStatus(setParameter(0, s));
    }

    public short getPreset() throws IllegalStateException, IllegalArgumentException, UnsupportedOperationException {
        short[] sArr = new short[1];
        checkStatus(getParameter(0, sArr));
        return sArr[0];
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private class BaseParameterListener implements AudioEffect.OnParameterChangeListener {
        private BaseParameterListener() {
        }

        @Override // android.media.audiofx.AudioEffect.OnParameterChangeListener
        public void onParameterChange(AudioEffect audioEffect, int i, byte[] bArr, byte[] bArr2) {
            OnParameterChangeListener onParameterChangeListener;
            synchronized (PresetReverb.this.mParamListenerLock) {
                onParameterChangeListener = PresetReverb.this.mParamListener != null ? PresetReverb.this.mParamListener : null;
            }
            if (onParameterChangeListener != null) {
                int byteArrayToInt = bArr.length == 4 ? AudioEffect.byteArrayToInt(bArr, 0) : -1;
                short byteArrayToShort = bArr2.length == 2 ? AudioEffect.byteArrayToShort(bArr2, 0) : (short) -1;
                if (byteArrayToInt == -1 || byteArrayToShort == -1) {
                    return;
                }
                onParameterChangeListener.onParameterChange(PresetReverb.this, i, byteArrayToInt, byteArrayToShort);
            }
        }
    }

    public void setParameterListener(OnParameterChangeListener onParameterChangeListener) {
        synchronized (this.mParamListenerLock) {
            if (this.mParamListener == null) {
                this.mParamListener = onParameterChangeListener;
                this.mBaseParamListener = new BaseParameterListener();
                super.setParameterListener(this.mBaseParamListener);
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class Settings {
        public short preset;

        public Settings() {
        }

        public Settings(String str) {
            String str2;
            StringTokenizer stringTokenizer = new StringTokenizer(str, "=;");
            stringTokenizer.countTokens();
            if (stringTokenizer.countTokens() != 3) {
                throw new IllegalArgumentException("settings: " + str);
            }
            String nextToken = stringTokenizer.nextToken();
            if (!nextToken.equals(PresetReverb.TAG)) {
                throw new IllegalArgumentException("invalid settings for PresetReverb: " + nextToken);
            }
            try {
                str2 = stringTokenizer.nextToken();
            } catch (NumberFormatException unused) {
                str2 = nextToken;
            }
            try {
                if (!str2.equals("preset")) {
                    throw new IllegalArgumentException("invalid key name: " + str2);
                }
                this.preset = Short.parseShort(stringTokenizer.nextToken());
            } catch (NumberFormatException unused2) {
                throw new IllegalArgumentException("invalid value for key: " + str2);
            }
        }

        public String toString() {
            return new String("PresetReverb;preset=" + Short.toString(this.preset));
        }
    }

    public Settings getProperties() throws IllegalStateException, IllegalArgumentException, UnsupportedOperationException {
        Settings settings = new Settings();
        short[] sArr = new short[1];
        checkStatus(getParameter(0, sArr));
        settings.preset = sArr[0];
        return settings;
    }

    public void setProperties(Settings settings) throws IllegalStateException, IllegalArgumentException, UnsupportedOperationException {
        checkStatus(setParameter(0, settings.preset));
    }
}
