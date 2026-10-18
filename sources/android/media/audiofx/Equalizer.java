package android.media.audiofx;

import android.media.audiofx.AudioEffect;
import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.util.StringTokenizer;

/* loaded from: /home/user/work/dex/classes.dex */
public class Equalizer extends AudioEffect {
    public static final int PARAM_BAND_FREQ_RANGE = 4;
    public static final int PARAM_BAND_LEVEL = 2;
    public static final int PARAM_CENTER_FREQ = 3;
    public static final int PARAM_CURRENT_PRESET = 6;
    public static final int PARAM_GET_BAND = 5;
    public static final int PARAM_GET_NUM_OF_PRESETS = 7;
    public static final int PARAM_GET_PRESET_NAME = 8;
    public static final int PARAM_LEVEL_RANGE = 1;
    public static final int PARAM_NUM_BANDS = 0;
    private static final int PARAM_PROPERTIES = 9;
    public static final int PARAM_STRING_SIZE_MAX = 32;
    private static final String TAG = "Equalizer";
    private BaseParameterListener mBaseParamListener;
    private short mNumBands;
    private int mNumPresets;
    private OnParameterChangeListener mParamListener;
    private final Object mParamListenerLock;
    private String[] mPresetNames;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnParameterChangeListener {
        void onParameterChange(Equalizer equalizer, int i, int i2, int i3, int i4);
    }

    public Equalizer(int i, int i2) throws IllegalStateException, IllegalArgumentException, UnsupportedOperationException, RuntimeException {
        super(EFFECT_TYPE_EQUALIZER, EFFECT_TYPE_NULL, i, i2);
        this.mNumBands = (short) 0;
        this.mParamListener = null;
        this.mBaseParamListener = null;
        this.mParamListenerLock = new Object();
        if (i2 == 0) {
            Log.w(TAG, "WARNING: attaching an Equalizer to global output mix is deprecated!");
        }
        getNumberOfBands();
        this.mNumPresets = getNumberOfPresets();
        if (this.mNumPresets != 0) {
            this.mPresetNames = new String[this.mNumPresets];
            byte[] bArr = new byte[32];
            int[] iArr = new int[2];
            iArr[0] = 8;
            for (int i3 = 0; i3 < this.mNumPresets; i3++) {
                iArr[1] = i3;
                checkStatus(getParameter(iArr, bArr));
                int i4 = 0;
                while (bArr[i4] != 0) {
                    i4++;
                }
                try {
                    this.mPresetNames[i3] = new String(bArr, 0, i4, "ISO-8859-1");
                } catch (UnsupportedEncodingException unused) {
                    Log.e(TAG, "preset name decode error");
                }
            }
        }
    }

    public short getNumberOfBands() throws IllegalStateException, IllegalArgumentException, UnsupportedOperationException {
        if (this.mNumBands != 0) {
            return this.mNumBands;
        }
        short[] sArr = new short[1];
        checkStatus(getParameter(new int[]{0}, sArr));
        this.mNumBands = sArr[0];
        return this.mNumBands;
    }

    public short[] getBandLevelRange() throws IllegalStateException, IllegalArgumentException, UnsupportedOperationException {
        short[] sArr = new short[2];
        checkStatus(getParameter(1, sArr));
        return sArr;
    }

    public void setBandLevel(short s, short s2) throws IllegalStateException, IllegalArgumentException, UnsupportedOperationException {
        checkStatus(setParameter(new int[]{2, s}, new short[]{s2}));
    }

    public short getBandLevel(short s) throws IllegalStateException, IllegalArgumentException, UnsupportedOperationException {
        short[] sArr = new short[1];
        checkStatus(getParameter(new int[]{2, s}, sArr));
        return sArr[0];
    }

    public int getCenterFreq(short s) throws IllegalStateException, IllegalArgumentException, UnsupportedOperationException {
        int[] iArr = new int[1];
        checkStatus(getParameter(new int[]{3, s}, iArr));
        return iArr[0];
    }

    public int[] getBandFreqRange(short s) throws IllegalStateException, IllegalArgumentException, UnsupportedOperationException {
        int[] iArr = new int[2];
        checkStatus(getParameter(new int[]{4, s}, iArr));
        return iArr;
    }

    public short getBand(int i) throws IllegalStateException, IllegalArgumentException, UnsupportedOperationException {
        short[] sArr = new short[1];
        checkStatus(getParameter(new int[]{5, i}, sArr));
        return sArr[0];
    }

    public short getCurrentPreset() throws IllegalStateException, IllegalArgumentException, UnsupportedOperationException {
        short[] sArr = new short[1];
        checkStatus(getParameter(6, sArr));
        return sArr[0];
    }

    public void usePreset(short s) throws IllegalStateException, IllegalArgumentException, UnsupportedOperationException {
        checkStatus(setParameter(6, s));
    }

    public short getNumberOfPresets() throws IllegalStateException, IllegalArgumentException, UnsupportedOperationException {
        short[] sArr = new short[1];
        checkStatus(getParameter(7, sArr));
        return sArr[0];
    }

    public String getPresetName(short s) {
        return (s < 0 || s >= this.mNumPresets) ? "" : this.mPresetNames[s];
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private class BaseParameterListener implements AudioEffect.OnParameterChangeListener {
        private BaseParameterListener() {
        }

        @Override // android.media.audiofx.AudioEffect.OnParameterChangeListener
        public void onParameterChange(AudioEffect audioEffect, int i, byte[] bArr, byte[] bArr2) {
            OnParameterChangeListener onParameterChangeListener;
            int i2;
            int i3;
            int i4;
            int byteArrayToInt;
            synchronized (Equalizer.this.mParamListenerLock) {
                onParameterChangeListener = Equalizer.this.mParamListener != null ? Equalizer.this.mParamListener : null;
            }
            if (onParameterChangeListener != null) {
                if (bArr.length >= 4) {
                    int byteArrayToInt2 = AudioEffect.byteArrayToInt(bArr, 0);
                    if (bArr.length >= 8) {
                        i2 = byteArrayToInt2;
                        i3 = AudioEffect.byteArrayToInt(bArr, 4);
                    } else {
                        i2 = byteArrayToInt2;
                        i3 = -1;
                    }
                } else {
                    i2 = -1;
                    i3 = -1;
                }
                if (bArr2.length == 2) {
                    byteArrayToInt = AudioEffect.byteArrayToShort(bArr2, 0);
                } else {
                    if (bArr2.length != 4) {
                        i4 = -1;
                        if (i2 != -1 || i4 == -1) {
                        }
                        onParameterChangeListener.onParameterChange(Equalizer.this, i, i2, i3, i4);
                        return;
                    }
                    byteArrayToInt = AudioEffect.byteArrayToInt(bArr2, 0);
                }
                i4 = byteArrayToInt;
                if (i2 != -1) {
                }
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
        public short[] bandLevels;
        public short curPreset;
        public short numBands;

        public Settings() {
            this.numBands = (short) 0;
            this.bandLevels = null;
        }

        public Settings(String str) {
            int i = 0;
            this.numBands = (short) 0;
            this.bandLevels = null;
            StringTokenizer stringTokenizer = new StringTokenizer(str, "=;");
            stringTokenizer.countTokens();
            if (stringTokenizer.countTokens() < 5) {
                throw new IllegalArgumentException("settings: " + str);
            }
            String nextToken = stringTokenizer.nextToken();
            if (!nextToken.equals(Equalizer.TAG)) {
                throw new IllegalArgumentException("invalid settings for Equalizer: " + nextToken);
            }
            try {
                String nextToken2 = stringTokenizer.nextToken();
                try {
                    if (!nextToken2.equals("curPreset")) {
                        throw new IllegalArgumentException("invalid key name: " + nextToken2);
                    }
                    this.curPreset = Short.parseShort(stringTokenizer.nextToken());
                    String nextToken3 = stringTokenizer.nextToken();
                    if (!nextToken3.equals("numBands")) {
                        throw new IllegalArgumentException("invalid key name: " + nextToken3);
                    }
                    this.numBands = Short.parseShort(stringTokenizer.nextToken());
                    if (stringTokenizer.countTokens() != this.numBands * 2) {
                        throw new IllegalArgumentException("settings: " + str);
                    }
                    this.bandLevels = new short[this.numBands];
                    while (i < this.numBands) {
                        String nextToken4 = stringTokenizer.nextToken();
                        try {
                            StringBuilder sb = new StringBuilder();
                            sb.append("band");
                            int i2 = i + 1;
                            sb.append(i2);
                            sb.append("Level");
                            if (!nextToken4.equals(sb.toString())) {
                                throw new IllegalArgumentException("invalid key name: " + nextToken4);
                            }
                            this.bandLevels[i] = Short.parseShort(stringTokenizer.nextToken());
                            i = i2;
                        } catch (NumberFormatException unused) {
                            nextToken = nextToken4;
                            throw new IllegalArgumentException("invalid value for key: " + nextToken);
                        }
                    }
                } catch (NumberFormatException unused2) {
                    nextToken = nextToken2;
                }
            } catch (NumberFormatException unused3) {
            }
        }

        public String toString() {
            String str = new String("Equalizer;curPreset=" + Short.toString(this.curPreset) + ";numBands=" + Short.toString(this.numBands));
            int i = 0;
            while (i < this.numBands) {
                StringBuilder sb = new StringBuilder();
                sb.append(";band");
                int i2 = i + 1;
                sb.append(i2);
                sb.append("Level=");
                sb.append(Short.toString(this.bandLevels[i]));
                str = str.concat(sb.toString());
                i = i2;
            }
            return str;
        }
    }

    public Settings getProperties() throws IllegalStateException, IllegalArgumentException, UnsupportedOperationException {
        byte[] bArr = new byte[(this.mNumBands * 2) + 4];
        checkStatus(getParameter(9, bArr));
        Settings settings = new Settings();
        settings.curPreset = byteArrayToShort(bArr, 0);
        settings.numBands = byteArrayToShort(bArr, 2);
        settings.bandLevels = new short[this.mNumBands];
        for (int i = 0; i < this.mNumBands; i++) {
            settings.bandLevels[i] = byteArrayToShort(bArr, (i * 2) + 4);
        }
        return settings;
    }

    public void setProperties(Settings settings) throws IllegalStateException, IllegalArgumentException, UnsupportedOperationException {
        if (settings.numBands != settings.bandLevels.length || settings.numBands != this.mNumBands) {
            throw new IllegalArgumentException("settings invalid band count: " + ((int) settings.numBands));
        }
        byte[] concatArrays = concatArrays(shortToByteArray(settings.curPreset), shortToByteArray(this.mNumBands));
        for (int i = 0; i < this.mNumBands; i++) {
            concatArrays = concatArrays(concatArrays, shortToByteArray(settings.bandLevels[i]));
        }
        checkStatus(setParameter(9, concatArrays));
    }
}
