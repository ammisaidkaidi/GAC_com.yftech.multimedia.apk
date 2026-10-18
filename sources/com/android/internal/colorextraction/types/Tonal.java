package com.android.internal.colorextraction.types;

import android.app.WallpaperColors;
import android.content.Context;
import android.content.res.XmlResourceParser;
import android.graphics.Color;
import android.util.Log;
import android.util.MathUtils;
import android.util.Range;
import com.android.internal.annotations.VisibleForTesting;
import com.android.internal.colorextraction.ColorExtractor;
import com.android.internal.graphics.ColorUtils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: /home/user/work/dex/classes3.dex */
public class Tonal implements ExtractionType {
    private static final boolean DEBUG = true;
    private static final float FIT_WEIGHT_H = 1.0f;
    private static final float FIT_WEIGHT_L = 10.0f;
    private static final float FIT_WEIGHT_S = 1.0f;
    public static final int MAIN_COLOR_DARK = -16777216;
    public static final int MAIN_COLOR_LIGHT = -2039584;
    private static final String TAG = "Tonal";
    public static final int THRESHOLD_COLOR_DARK = -14606047;
    public static final int THRESHOLD_COLOR_LIGHT = -2039584;
    private final ArrayList<ColorRange> mBlacklistedColors;
    private final TonalPalette mGreyPalette;
    private float[] mTmpHSL = new float[3];
    private final ArrayList<TonalPalette> mTonalPalettes;

    public Tonal(Context context) {
        ConfigParser configParser = new ConfigParser(context);
        this.mTonalPalettes = configParser.getTonalPalettes();
        this.mBlacklistedColors = configParser.getBlacklistedColors();
        this.mGreyPalette = this.mTonalPalettes.get(0);
        this.mTonalPalettes.remove(0);
    }

    @Override // com.android.internal.colorextraction.types.ExtractionType
    public void extractInto(WallpaperColors wallpaperColors, ColorExtractor.GradientColors gradientColors, ColorExtractor.GradientColors gradientColors2, ColorExtractor.GradientColors gradientColors3) {
        if (runTonalExtraction(wallpaperColors, gradientColors, gradientColors2, gradientColors3)) {
            return;
        }
        applyFallback(wallpaperColors, gradientColors, gradientColors2, gradientColors3);
    }

    private boolean runTonalExtraction(WallpaperColors wallpaperColors, ColorExtractor.GradientColors gradientColors, ColorExtractor.GradientColors gradientColors2, ColorExtractor.GradientColors gradientColors3) {
        Color color;
        int min;
        int i = 0;
        if (wallpaperColors == null) {
            return false;
        }
        List mainColors = wallpaperColors.getMainColors();
        int size = mainColors.size();
        int colorHints = wallpaperColors.getColorHints();
        boolean z = (colorHints & 1) != 0;
        boolean z2 = (colorHints & 4) != 0;
        if (size == 0) {
            return false;
        }
        float[] fArr = new float[3];
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                color = null;
                break;
            }
            color = (Color) mainColors.get(i2);
            int argb = color.toArgb();
            ColorUtils.RGBToHSL(Color.red(argb), Color.green(argb), Color.blue(argb), fArr);
            if (!z2 || !isBlacklisted(fArr)) {
                break;
            }
            i2++;
        }
        if (color == null) {
            return false;
        }
        int argb2 = color.toArgb();
        ColorUtils.RGBToHSL(Color.red(argb2), Color.green(argb2), Color.blue(argb2), fArr);
        fArr[0] = fArr[0] / 360.0f;
        TonalPalette findTonalPalette = findTonalPalette(fArr[0], fArr[1]);
        if (findTonalPalette == null) {
            Log.w(TAG, "Could not find a tonal palette!");
            return false;
        }
        int bestFit = bestFit(findTonalPalette, fArr[0], fArr[1], fArr[2]);
        if (bestFit == -1) {
            Log.w(TAG, "Could not find best fit!");
            return false;
        }
        float[] fit = fit(findTonalPalette.h, fArr[0], bestFit, Float.NEGATIVE_INFINITY, Float.POSITIVE_INFINITY);
        float[] fit2 = fit(findTonalPalette.s, fArr[1], bestFit, 0.0f, 1.0f);
        float[] fit3 = fit(findTonalPalette.l, fArr[2], bestFit, 0.0f, 1.0f);
        StringBuilder sb = new StringBuilder("Tonal Palette - index: " + bestFit + ". Main color: " + Integer.toHexString(getColorInt(bestFit, fit, fit2, fit3)) + "\nColors: ");
        for (int i3 = 0; i3 < fit.length; i3++) {
            sb.append(Integer.toHexString(getColorInt(i3, fit, fit2, fit3)));
            if (i3 < fit.length - 1) {
                sb.append(", ");
            }
        }
        Log.d(TAG, sb.toString());
        int colorInt = getColorInt(bestFit, fit, fit2, fit3);
        ColorUtils.colorToHSL(colorInt, this.mTmpHSL);
        float f = this.mTmpHSL[2];
        ColorUtils.colorToHSL(-2039584, this.mTmpHSL);
        if (f > this.mTmpHSL[2]) {
            return false;
        }
        ColorUtils.colorToHSL(THRESHOLD_COLOR_DARK, this.mTmpHSL);
        if (f < this.mTmpHSL[2]) {
            return false;
        }
        gradientColors.setMainColor(colorInt);
        gradientColors.setSecondaryColor(colorInt);
        if (z) {
            min = fit.length - 1;
        } else {
            min = bestFit < 2 ? 0 : Math.min(bestFit, 3);
        }
        int colorInt2 = getColorInt(min, fit, fit2, fit3);
        gradientColors2.setMainColor(colorInt2);
        gradientColors2.setSecondaryColor(colorInt2);
        if (z) {
            i = fit.length - 1;
        } else if (bestFit >= 2) {
            i = 2;
        }
        int colorInt3 = getColorInt(i, fit, fit2, fit3);
        gradientColors3.setMainColor(colorInt3);
        gradientColors3.setSecondaryColor(colorInt3);
        gradientColors.setSupportsDarkText(z);
        gradientColors2.setSupportsDarkText(z);
        gradientColors3.setSupportsDarkText(z);
        Log.d(TAG, "Gradients: \n\tNormal " + gradientColors + "\n\tDark " + gradientColors2 + "\n\tExtra dark: " + gradientColors3);
        return true;
    }

    private void applyFallback(WallpaperColors wallpaperColors, ColorExtractor.GradientColors gradientColors, ColorExtractor.GradientColors gradientColors2, ColorExtractor.GradientColors gradientColors3) {
        applyFallback(wallpaperColors, gradientColors);
        applyFallback(wallpaperColors, gradientColors2);
        applyFallback(wallpaperColors, gradientColors3);
    }

    public static void applyFallback(WallpaperColors wallpaperColors, ColorExtractor.GradientColors gradientColors) {
        boolean z = (wallpaperColors == null || (wallpaperColors.getColorHints() & 1) == 0) ? false : true;
        int i = z ? -2039584 : -16777216;
        gradientColors.setMainColor(i);
        gradientColors.setSecondaryColor(i);
        gradientColors.setSupportsDarkText(z);
    }

    private int getColorInt(int i, float[] fArr, float[] fArr2, float[] fArr3) {
        this.mTmpHSL[0] = fract(fArr[i]) * 360.0f;
        this.mTmpHSL[1] = fArr2[i];
        this.mTmpHSL[2] = fArr3[i];
        return ColorUtils.HSLToColor(this.mTmpHSL);
    }

    private boolean isBlacklisted(float[] fArr) {
        for (int size = this.mBlacklistedColors.size() - 1; size >= 0; size--) {
            if (this.mBlacklistedColors.get(size).containsColor(fArr[0], fArr[1], fArr[2])) {
                return true;
            }
        }
        return false;
    }

    private static float[] fit(float[] fArr, float f, int i, float f2, float f3) {
        float[] fArr2 = new float[fArr.length];
        float f4 = f - fArr[i];
        for (int i2 = 0; i2 < fArr.length; i2++) {
            fArr2[i2] = MathUtils.constrain(fArr[i2] + f4, f2, f3);
        }
        return fArr2;
    }

    private static int bestFit(TonalPalette tonalPalette, float f, float f2, float f3) {
        int i = -1;
        float f4 = Float.POSITIVE_INFINITY;
        for (int i2 = 0; i2 < tonalPalette.h.length; i2++) {
            float abs = (Math.abs(f - tonalPalette.h[i2]) * 1.0f) + (Math.abs(f2 - tonalPalette.s[i2]) * 1.0f) + (Math.abs(f3 - tonalPalette.l[i2]) * FIT_WEIGHT_L);
            if (abs < f4) {
                i = i2;
                f4 = abs;
            }
        }
        return i;
    }

    @VisibleForTesting
    public List<ColorRange> getBlacklistedColors() {
        return this.mBlacklistedColors;
    }

    private TonalPalette findTonalPalette(float f, float f2) {
        float fract;
        if (f2 < 0.05f) {
            return this.mGreyPalette;
        }
        TonalPalette tonalPalette = null;
        float f3 = Float.POSITIVE_INFINITY;
        int size = this.mTonalPalettes.size();
        for (int i = 0; i < size; i++) {
            TonalPalette tonalPalette2 = this.mTonalPalettes.get(i);
            if ((f >= tonalPalette2.minHue && f <= tonalPalette2.maxHue) || ((tonalPalette2.maxHue > 1.0f && f >= 0.0f && f <= fract(tonalPalette2.maxHue)) || (tonalPalette2.minHue < 0.0f && f >= fract(tonalPalette2.minHue) && f <= 1.0f))) {
                return tonalPalette2;
            }
            if (f <= tonalPalette2.minHue && tonalPalette2.minHue - f < f3) {
                fract = tonalPalette2.minHue - f;
            } else if (f >= tonalPalette2.maxHue && f - tonalPalette2.maxHue < f3) {
                fract = f - tonalPalette2.maxHue;
            } else if (tonalPalette2.maxHue <= 1.0f || f < fract(tonalPalette2.maxHue) || f - fract(tonalPalette2.maxHue) >= f3) {
                if (tonalPalette2.minHue < 0.0f && f <= fract(tonalPalette2.minHue) && fract(tonalPalette2.minHue) - f < f3) {
                    fract = fract(tonalPalette2.minHue) - f;
                }
            } else {
                fract = f - fract(tonalPalette2.maxHue);
            }
            f3 = fract;
            tonalPalette = tonalPalette2;
        }
        return tonalPalette;
    }

    private static float fract(float f) {
        return f - ((float) Math.floor(f));
    }

    @VisibleForTesting
    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class TonalPalette {
        public final float[] h;
        public final float[] l;
        public final float maxHue;
        public final float minHue;
        public final float[] s;

        TonalPalette(float[] fArr, float[] fArr2, float[] fArr3) {
            if (fArr.length != fArr2.length || fArr2.length != fArr3.length) {
                throw new IllegalArgumentException("All arrays should have the same size. h: " + Arrays.toString(fArr) + " s: " + Arrays.toString(fArr2) + " l: " + Arrays.toString(fArr3));
            }
            this.h = fArr;
            this.s = fArr2;
            this.l = fArr3;
            float f = Float.POSITIVE_INFINITY;
            float f2 = Float.NEGATIVE_INFINITY;
            for (float f3 : fArr) {
                f = Math.min(f3, f);
                f2 = Math.max(f3, f2);
            }
            this.minHue = f;
            this.maxHue = f2;
        }
    }

    @VisibleForTesting
    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class ColorRange {
        private Range<Float> mHue;
        private Range<Float> mLightness;
        private Range<Float> mSaturation;

        public ColorRange(Range<Float> range, Range<Float> range2, Range<Float> range3) {
            this.mHue = range;
            this.mSaturation = range2;
            this.mLightness = range3;
        }

        public boolean containsColor(float f, float f2, float f3) {
            return this.mHue.contains((Range<Float>) Float.valueOf(f)) && this.mSaturation.contains((Range<Float>) Float.valueOf(f2)) && this.mLightness.contains((Range<Float>) Float.valueOf(f3));
        }

        public float[] getCenter() {
            return new float[]{this.mHue.getLower().floatValue() + ((this.mHue.getUpper().floatValue() - this.mHue.getLower().floatValue()) / 2.0f), this.mSaturation.getLower().floatValue() + ((this.mSaturation.getUpper().floatValue() - this.mSaturation.getLower().floatValue()) / 2.0f), this.mLightness.getLower().floatValue() + ((this.mLightness.getUpper().floatValue() - this.mLightness.getLower().floatValue()) / 2.0f)};
        }

        public String toString() {
            return String.format("H: %s, S: %s, L %s", this.mHue, this.mSaturation, this.mLightness);
        }
    }

    @VisibleForTesting
    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class ConfigParser {
        private final ArrayList<TonalPalette> mTonalPalettes = new ArrayList<>();
        private final ArrayList<ColorRange> mBlacklistedColors = new ArrayList<>();

        public ConfigParser(Context context) {
            try {
                XmlResourceParser xml = context.getResources().getXml(18284549);
                for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                    if (eventType != 0 && eventType != 3) {
                        if (eventType == 2) {
                            String name = xml.getName();
                            if (name.equals("palettes")) {
                                parsePalettes(xml);
                            } else if (name.equals("blacklist")) {
                                parseBlacklist(xml);
                            }
                        } else {
                            throw new XmlPullParserException("Invalid XML event " + eventType + " - " + xml.getName(), xml, null);
                        }
                    }
                }
            } catch (IOException | XmlPullParserException e) {
                throw new RuntimeException(e);
            }
        }

        public ArrayList<TonalPalette> getTonalPalettes() {
            return this.mTonalPalettes;
        }

        public ArrayList<ColorRange> getBlacklistedColors() {
            return this.mBlacklistedColors;
        }

        private void parseBlacklist(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
            xmlPullParser.require(2, null, "blacklist");
            while (xmlPullParser.next() != 3) {
                if (xmlPullParser.getEventType() == 2) {
                    String name = xmlPullParser.getName();
                    if (name.equals("range")) {
                        this.mBlacklistedColors.add(readRange(xmlPullParser));
                        xmlPullParser.next();
                    } else {
                        throw new XmlPullParserException("Invalid tag: " + name, xmlPullParser, null);
                    }
                }
            }
        }

        private ColorRange readRange(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
            xmlPullParser.require(2, null, "range");
            float[] readFloatArray = readFloatArray(xmlPullParser.getAttributeValue(null, "h"));
            float[] readFloatArray2 = readFloatArray(xmlPullParser.getAttributeValue(null, "s"));
            float[] readFloatArray3 = readFloatArray(xmlPullParser.getAttributeValue(null, "l"));
            if (readFloatArray == null || readFloatArray2 == null || readFloatArray3 == null) {
                throw new XmlPullParserException("Incomplete range tag.", xmlPullParser, null);
            }
            return new ColorRange(new Range(Float.valueOf(readFloatArray[0]), Float.valueOf(readFloatArray[1])), new Range(Float.valueOf(readFloatArray2[0]), Float.valueOf(readFloatArray2[1])), new Range(Float.valueOf(readFloatArray3[0]), Float.valueOf(readFloatArray3[1])));
        }

        private void parsePalettes(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
            xmlPullParser.require(2, null, "palettes");
            while (xmlPullParser.next() != 3) {
                if (xmlPullParser.getEventType() == 2) {
                    String name = xmlPullParser.getName();
                    if (name.equals("palette")) {
                        this.mTonalPalettes.add(readPalette(xmlPullParser));
                        xmlPullParser.next();
                    } else {
                        throw new XmlPullParserException("Invalid tag: " + name);
                    }
                }
            }
        }

        private TonalPalette readPalette(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
            xmlPullParser.require(2, null, "palette");
            float[] readFloatArray = readFloatArray(xmlPullParser.getAttributeValue(null, "h"));
            float[] readFloatArray2 = readFloatArray(xmlPullParser.getAttributeValue(null, "s"));
            float[] readFloatArray3 = readFloatArray(xmlPullParser.getAttributeValue(null, "l"));
            if (readFloatArray == null || readFloatArray2 == null || readFloatArray3 == null) {
                throw new XmlPullParserException("Incomplete range tag.", xmlPullParser, null);
            }
            return new TonalPalette(readFloatArray, readFloatArray2, readFloatArray3);
        }

        private float[] readFloatArray(String str) throws IOException, XmlPullParserException {
            String[] split = str.replaceAll(" ", "").replaceAll("\n", "").split(",");
            float[] fArr = new float[split.length];
            for (int i = 0; i < split.length; i++) {
                fArr[i] = Float.parseFloat(split[i]);
            }
            return fArr;
        }
    }
}
