package android.text;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.Layout;
import android.text.style.CharacterStyle;
import android.text.style.MetricAffectingSpan;
import android.text.style.ReplacementSpan;
import com.android.internal.annotations.VisibleForTesting;
import com.android.internal.util.ArrayUtils;
import java.util.ArrayList;

@VisibleForTesting(visibility = VisibleForTesting.Visibility.PACKAGE)
/* loaded from: /home/user/work/dex/classes2.dex */
public class TextLine {
    private static final boolean DEBUG = false;
    private static final int TAB_INCREMENT = 20;
    private static final TextLine[] sCached = new TextLine[3];
    private float mAddedWidth;
    private char[] mChars;
    private boolean mCharsValid;
    private PrecomputedText mComputed;
    private int mDir;
    private Layout.Directions mDirections;
    private boolean mHasTabs;
    private int mLen;
    private TextPaint mPaint;
    private Spanned mSpanned;
    private int mStart;
    private Layout.TabStops mTabs;
    private CharSequence mText;
    private final TextPaint mWorkPaint = new TextPaint();
    private final TextPaint mActivePaint = new TextPaint();
    private final SpanSet<MetricAffectingSpan> mMetricAffectingSpanSpanSet = new SpanSet<>(MetricAffectingSpan.class);
    private final SpanSet<CharacterStyle> mCharacterStyleSpanSet = new SpanSet<>(CharacterStyle.class);
    private final SpanSet<ReplacementSpan> mReplacementSpanSpanSet = new SpanSet<>(ReplacementSpan.class);
    private final DecorationInfo mDecorationInfo = new DecorationInfo();
    private final ArrayList<DecorationInfo> mDecorations = new ArrayList<>();

    public static boolean isLineEndSpace(char c) {
        return c == ' ' || c == '\t' || c == 5760 || (8192 <= c && c <= 8202 && c != 8199) || c == 8287 || c == 12288;
    }

    private boolean isStretchableWhitespace(int i) {
        return i == 32;
    }

    @VisibleForTesting(visibility = VisibleForTesting.Visibility.PACKAGE)
    public static TextLine obtain() {
        synchronized (sCached) {
            int length = sCached.length;
            do {
                length--;
                if (length < 0) {
                    return new TextLine();
                }
            } while (sCached[length] == null);
            TextLine textLine = sCached[length];
            sCached[length] = null;
            return textLine;
        }
    }

    @VisibleForTesting(visibility = VisibleForTesting.Visibility.PACKAGE)
    public static TextLine recycle(TextLine textLine) {
        textLine.mText = null;
        textLine.mPaint = null;
        textLine.mDirections = null;
        textLine.mSpanned = null;
        textLine.mTabs = null;
        textLine.mChars = null;
        textLine.mComputed = null;
        textLine.mMetricAffectingSpanSpanSet.recycle();
        textLine.mCharacterStyleSpanSet.recycle();
        textLine.mReplacementSpanSpanSet.recycle();
        synchronized (sCached) {
            int i = 0;
            while (true) {
                if (i >= sCached.length) {
                    break;
                }
                if (sCached[i] == null) {
                    sCached[i] = textLine;
                    break;
                }
                i++;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0061  */
    @VisibleForTesting(visibility = VisibleForTesting.Visibility.PACKAGE)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void set(TextPaint textPaint, CharSequence charSequence, int i, int i2, int i3, Layout.Directions directions, boolean z, Layout.TabStops tabStops) {
        boolean z2;
        this.mPaint = textPaint;
        this.mText = charSequence;
        this.mStart = i;
        this.mLen = i2 - i;
        this.mDir = i3;
        this.mDirections = directions;
        if (this.mDirections == null) {
            throw new IllegalArgumentException("Directions cannot be null");
        }
        this.mHasTabs = z;
        this.mSpanned = null;
        if (charSequence instanceof Spanned) {
            this.mSpanned = (Spanned) charSequence;
            this.mReplacementSpanSpanSet.init(this.mSpanned, i, i2);
            if (this.mReplacementSpanSpanSet.numberOfSpans > 0) {
                z2 = true;
                this.mComputed = null;
                if (charSequence instanceof PrecomputedText) {
                    this.mComputed = (PrecomputedText) charSequence;
                    if (!this.mComputed.getParams().getTextPaint().equalsForTextMeasurement(textPaint)) {
                        this.mComputed = null;
                    }
                }
                this.mCharsValid = (z2 && !z && directions == Layout.DIRS_ALL_LEFT_TO_RIGHT) ? false : true;
                if (this.mCharsValid) {
                    if (this.mChars == null || this.mChars.length < this.mLen) {
                        this.mChars = ArrayUtils.newUnpaddedCharArray(this.mLen);
                    }
                    TextUtils.getChars(charSequence, i, i2, this.mChars, 0);
                    if (z2) {
                        char[] cArr = this.mChars;
                        int i4 = i;
                        while (i4 < i2) {
                            int nextTransition = this.mReplacementSpanSpanSet.getNextTransition(i4, i2);
                            if (this.mReplacementSpanSpanSet.hasSpansIntersecting(i4, nextTransition)) {
                                int i5 = i4 - i;
                                cArr[i5] = 65532;
                                int i6 = nextTransition - i;
                                for (int i7 = i5 + 1; i7 < i6; i7++) {
                                    cArr[i7] = 65279;
                                }
                            }
                            i4 = nextTransition;
                        }
                    }
                }
                this.mTabs = tabStops;
                this.mAddedWidth = 0.0f;
            }
        }
        z2 = false;
        this.mComputed = null;
        if (charSequence instanceof PrecomputedText) {
        }
        this.mCharsValid = (z2 && !z && directions == Layout.DIRS_ALL_LEFT_TO_RIGHT) ? false : true;
        if (this.mCharsValid) {
        }
        this.mTabs = tabStops;
        this.mAddedWidth = 0.0f;
    }

    @VisibleForTesting(visibility = VisibleForTesting.Visibility.PACKAGE)
    public void justify(float f) {
        int i = this.mLen;
        while (i > 0 && isLineEndSpace(this.mText.charAt((this.mStart + i) - 1))) {
            i--;
        }
        int countStretchableSpaces = countStretchableSpaces(0, i);
        if (countStretchableSpaces == 0) {
            return;
        }
        this.mAddedWidth = (f - Math.abs(measure(i, false, null))) / countStretchableSpaces;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void draw(Canvas canvas, float f, int i, int i2, int i3) {
        int i4;
        int i5;
        if (!this.mHasTabs) {
            if (this.mDirections == Layout.DIRS_ALL_LEFT_TO_RIGHT) {
                drawRun(canvas, 0, this.mLen, false, f, i, i2, i3, false);
                return;
            } else if (this.mDirections == Layout.DIRS_ALL_RIGHT_TO_LEFT) {
                drawRun(canvas, 0, this.mLen, true, f, i, i2, i3, false);
                return;
            }
        }
        float f2 = 0.0f;
        int[] iArr = this.mDirections.mDirections;
        int length = iArr.length - 2;
        int i6 = 0;
        while (i6 < iArr.length) {
            int i7 = iArr[i6];
            int i8 = i6 + 1;
            int i9 = (iArr[i8] & 67108863) + i7;
            if (i9 > this.mLen) {
                i9 = this.mLen;
            }
            int i10 = i9;
            if (i7 > this.mLen) {
                return;
            }
            boolean z = (iArr[i8] & 67108864) != 0;
            float f3 = f2;
            int i11 = this.mHasTabs ? i7 : i10;
            int i12 = i7;
            while (i11 <= i10) {
                if (!this.mHasTabs || i11 >= i10) {
                    i4 = 0;
                } else {
                    char c = this.mChars[i11];
                    int i13 = c;
                    if (c >= 55296) {
                        i13 = c;
                        if (c < 56320) {
                            i5 = i11 + 1;
                            i13 = c;
                            if (i5 < i10) {
                                int codePointAt = Character.codePointAt(this.mChars, i11);
                                i13 = codePointAt;
                                if (codePointAt > 65535) {
                                    i11 = i5 + 1;
                                }
                            }
                        }
                    }
                    i4 = i13;
                }
                if (i11 == i10 || i4 == 9) {
                    int i14 = i4;
                    int i15 = i11;
                    f3 += drawRun(canvas, i12, i11, z, f + f3, i, i2, i3, (i6 == length && i11 == this.mLen) ? false : true);
                    if (i14 == 9) {
                        f3 = this.mDir * nextTab(this.mDir * f3);
                    }
                    i12 = i15 + 1;
                    i5 = i15;
                } else {
                    i5 = i11;
                }
                i11 = i5 + 1;
            }
            i6 += 2;
            f2 = f3;
        }
    }

    @VisibleForTesting(visibility = VisibleForTesting.Visibility.PACKAGE)
    public float metrics(Paint.FontMetricsInt fontMetricsInt) {
        return measure(this.mLen, false, fontMetricsInt);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0093, code lost:
    
        if (r0 > 65535) goto L57;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public float measure(int i, boolean z, Paint.FontMetricsInt fontMetricsInt) {
        int i2;
        int i3;
        int i4;
        int i5 = z ? i - 1 : i;
        float f = 0.0f;
        if (i5 < 0) {
            return 0.0f;
        }
        if (!this.mHasTabs) {
            if (this.mDirections == Layout.DIRS_ALL_LEFT_TO_RIGHT) {
                return measureRun(0, i, this.mLen, false, fontMetricsInt);
            }
            if (this.mDirections == Layout.DIRS_ALL_RIGHT_TO_LEFT) {
                return measureRun(0, i, this.mLen, true, fontMetricsInt);
            }
        }
        char[] cArr = this.mChars;
        int[] iArr = this.mDirections.mDirections;
        int i6 = 0;
        while (i6 < iArr.length) {
            int i7 = iArr[i6];
            int i8 = i6 + 1;
            int i9 = (iArr[i8] & 67108863) + i7;
            if (i9 > this.mLen) {
                i9 = this.mLen;
            }
            int i10 = i9;
            if (i7 > this.mLen) {
                break;
            }
            boolean z2 = (iArr[i8] & 67108864) != 0;
            float f2 = f;
            int i11 = i7;
            int i12 = this.mHasTabs ? i7 : i10;
            while (i12 <= i10) {
                if (!this.mHasTabs || i12 >= i10) {
                    i2 = 0;
                } else {
                    char c = cArr[i12];
                    int i13 = c;
                    if (c >= 55296) {
                        i13 = c;
                        if (c < 56320) {
                            i4 = i12 + 1;
                            i13 = c;
                            if (i4 < i10) {
                                int codePointAt = Character.codePointAt(cArr, i12);
                                i13 = codePointAt;
                            }
                        }
                    }
                    i2 = i13;
                }
                if (i12 == i10 || i2 == 9) {
                    boolean z3 = i5 >= i11 && i5 < i12;
                    boolean z4 = (this.mDir == -1) == z2;
                    if (z3 && z4) {
                        return f2 + measureRun(i11, i, i12, z2, fontMetricsInt);
                    }
                    int i14 = i2;
                    int i15 = i11;
                    int i16 = i12;
                    float measureRun = measureRun(i11, i12, i12, z2, fontMetricsInt);
                    if (!z4) {
                        measureRun = -measureRun;
                    }
                    f2 += measureRun;
                    if (z3) {
                        return f2 + measureRun(i15, i, i16, z2, null);
                    }
                    if (i14 == 9) {
                        i3 = i16;
                        if (i == i3) {
                            return f2;
                        }
                        float nextTab = this.mDir * nextTab(this.mDir * f2);
                        if (i5 == i3) {
                            return nextTab;
                        }
                        f2 = nextTab;
                    } else {
                        i3 = i16;
                    }
                    i11 = i3 + 1;
                    i4 = i3;
                } else {
                    i4 = i12;
                }
                i12 = i4 + 1;
            }
            i6 += 2;
            f = f2;
        }
        return f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00ba, code lost:
    
        if (r0 > 65535) goto L65;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public float[] measureAllOffsets(boolean[] zArr, Paint.FontMetricsInt fontMetricsInt) {
        int i;
        char[] cArr;
        int i2;
        int i3;
        int i4;
        int i5 = 1;
        float[] fArr = new float[this.mLen + 1];
        int[] iArr = new int[this.mLen + 1];
        int i6 = 0;
        for (int i7 = 0; i7 < iArr.length; i7++) {
            iArr[i7] = zArr[i7] ? i7 - 1 : i7;
        }
        float f = 0.0f;
        if (iArr[0] < 0) {
            fArr[0] = 0.0f;
        }
        if (!this.mHasTabs) {
            if (this.mDirections == Layout.DIRS_ALL_LEFT_TO_RIGHT) {
                while (i6 <= this.mLen) {
                    fArr[i6] = measureRun(0, i6, this.mLen, false, fontMetricsInt);
                    i6++;
                }
                return fArr;
            }
            if (this.mDirections == Layout.DIRS_ALL_RIGHT_TO_LEFT) {
                while (i6 <= this.mLen) {
                    fArr[i6] = measureRun(0, i6, this.mLen, true, fontMetricsInt);
                    i6++;
                }
                return fArr;
            }
        }
        char[] cArr2 = this.mChars;
        int[] iArr2 = this.mDirections.mDirections;
        int i8 = 0;
        while (i8 < iArr2.length) {
            int i9 = iArr2[i8];
            int i10 = i8 + 1;
            int i11 = (iArr2[i10] & 67108863) + i9;
            if (i11 > this.mLen) {
                i11 = this.mLen;
            }
            int i12 = i11;
            if (i9 > this.mLen) {
                break;
            }
            int i13 = (iArr2[i10] & 67108864) != 0 ? i5 : i6;
            int i14 = i9;
            float f2 = f;
            int i15 = this.mHasTabs ? i9 : i12;
            while (i15 <= i12) {
                if (!this.mHasTabs || i15 >= i12) {
                    i = i6;
                } else {
                    char c = cArr2[i15];
                    int i16 = c;
                    if (c >= 55296) {
                        i16 = c;
                        if (c < 56320) {
                            i2 = i15 + 1;
                            i16 = c;
                            if (i2 < i12) {
                                int codePointAt = Character.codePointAt(cArr2, i15);
                                i16 = codePointAt;
                            }
                        }
                    }
                    i = i16;
                }
                if (i15 == i12 || i == 9) {
                    int i17 = (this.mDir == -1 ? i5 : i6) == i13 ? i5 : i6;
                    int i18 = i;
                    int i19 = i14;
                    cArr = cArr2;
                    int i20 = i15;
                    float measureRun = measureRun(i14, i15, i15, i13, fontMetricsInt);
                    if (i17 == 0) {
                        measureRun = -measureRun;
                    }
                    float f3 = f2 + measureRun;
                    if (i17 == 0) {
                        f2 = f3;
                    }
                    Paint.FontMetricsInt fontMetricsInt2 = i17 != 0 ? fontMetricsInt : null;
                    int i21 = i19;
                    while (i21 <= i20 && i21 <= this.mLen) {
                        if (iArr[i21] < i19 || iArr[i21] >= i20) {
                            i4 = i21;
                        } else {
                            i4 = i21;
                            fArr[i4] = f2 + measureRun(i19, i21, i20, i13, fontMetricsInt2);
                        }
                        i21 = i4 + 1;
                    }
                    if (i18 == 9) {
                        if (iArr[i20] == i20) {
                            fArr[i20] = f3;
                        }
                        float nextTab = this.mDir * nextTab(this.mDir * f3);
                        int i22 = i20 + 1;
                        if (iArr[i22] == i20) {
                            fArr[i22] = nextTab;
                        }
                        f2 = nextTab;
                    } else {
                        f2 = f3;
                    }
                    i14 = i20 + 1;
                    i2 = i20;
                    i3 = 1;
                    i15 = i2 + 1;
                    i5 = i3;
                    cArr2 = cArr;
                    i6 = 0;
                } else {
                    i2 = i15;
                    i3 = i5;
                    cArr = cArr2;
                    i15 = i2 + 1;
                    i5 = i3;
                    cArr2 = cArr;
                    i6 = 0;
                }
            }
            i8 += 2;
            f = f2;
            i6 = 0;
        }
        if (iArr[this.mLen] == this.mLen) {
            fArr[this.mLen] = f;
        }
        return fArr;
    }

    private float drawRun(Canvas canvas, int i, int i2, boolean z, float f, int i3, int i4, int i5, boolean z2) {
        if ((this.mDir == 1) == z) {
            float f2 = -measureRun(i, i2, i2, z, null);
            handleRun(i, i2, i2, z, canvas, f + f2, i3, i4, i5, null, false);
            return f2;
        }
        return handleRun(i, i2, i2, z, canvas, f, i3, i4, i5, null, z2);
    }

    private float measureRun(int i, int i2, int i3, boolean z, Paint.FontMetricsInt fontMetricsInt) {
        return handleRun(i, i2, i3, z, null, 0.0f, 0, 0, 0, fontMetricsInt, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getOffsetToLeftRightOf(int i, boolean z) {
        int i2;
        int i3;
        int i4;
        boolean z2;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        boolean z3;
        int i10;
        int i11 = this.mLen;
        boolean z4 = this.mDir == -1;
        int[] iArr = this.mDirections.mDirections;
        if (i == 0) {
            i6 = -1;
            i5 = 0;
            i2 = -2;
        } else if (i == i11) {
            i5 = 0;
            i2 = iArr.length;
            i6 = -1;
        } else {
            int i12 = i11;
            int i13 = 0;
            int i14 = 0;
            while (true) {
                if (i13 >= iArr.length) {
                    i2 = i13;
                    i3 = i12;
                    i4 = i14;
                    z2 = false;
                    i5 = 0;
                    break;
                }
                i14 = iArr[i13] + 0;
                if (i >= i14) {
                    int i15 = i13 + 1;
                    int i16 = (iArr[i15] & 67108863) + i14;
                    if (i16 > i11) {
                        i16 = i11;
                    }
                    if (i < i16) {
                        int i17 = (iArr[i15] >>> 26) & 63;
                        if (i == i14) {
                            int i18 = i - 1;
                            int i19 = 0;
                            while (true) {
                                if (i19 >= iArr.length) {
                                    i7 = i14;
                                    z2 = false;
                                    break;
                                }
                                i7 = iArr[i19] + 0;
                                if (i18 >= i7) {
                                    int i20 = i19 + 1;
                                    int i21 = i7 + (iArr[i20] & 67108863);
                                    if (i21 > i11) {
                                        i21 = i11;
                                    }
                                    if (i18 < i21 && (i8 = (iArr[i20] >>> 26) & 63) < i17) {
                                        i13 = i19;
                                        i17 = i8;
                                        i16 = i21;
                                        z2 = true;
                                        break;
                                    }
                                }
                                i19 += 2;
                            }
                            i2 = i13;
                            i5 = i17;
                            i4 = i7;
                            i3 = i16;
                        } else {
                            i2 = i13;
                            i5 = i17;
                            i4 = i14;
                            i3 = i16;
                            z2 = false;
                        }
                    } else {
                        i12 = i16;
                    }
                }
                i13 += 2;
            }
            if (i2 != iArr.length) {
                boolean z5 = (i5 & 1) != 0;
                boolean z6 = z == z5;
                if (i != (z6 ? i3 : i4) || z6 != z2) {
                    boolean z7 = z6;
                    i6 = getOffsetBeforeAfter(i2, i4, i3, z5, i, z6);
                    if (!z7) {
                        i3 = i4;
                    }
                    if (i6 != i3) {
                        return i6;
                    }
                }
            }
            i6 = -1;
        }
        do {
            boolean z8 = z == z4;
            i2 += z8 ? 2 : -2;
            if (i2 < 0 || i2 >= iArr.length) {
                if (i6 == -1) {
                    if (z8) {
                        return this.mLen + 1;
                    }
                    return -1;
                }
                if (i6 > i11) {
                    return i6;
                }
                if (z8) {
                    return i11;
                }
                return 0;
            }
            i9 = 0 + iArr[i2];
            int i22 = i2 + 1;
            int i23 = (iArr[i22] & 67108863) + i9;
            int i24 = i23 > i11 ? i11 : i23;
            int i25 = (iArr[i22] >>> 26) & 63;
            boolean z9 = (i25 & 1) != 0;
            if (z == z9) {
                i10 = -1;
                z3 = true;
            } else {
                z3 = false;
                i10 = -1;
            }
            if (i6 != i10) {
                return i25 < i5 ? z3 ? i9 : i24 : i6;
            }
            i5 = i25;
            i6 = getOffsetBeforeAfter(i2, i9, i24, z9, z3 ? i9 : i24, z3);
            if (z3) {
                i9 = i24;
            }
        } while (i6 == i9);
        return i6;
    }

    private int getOffsetBeforeAfter(int i, int i2, int i3, boolean z, int i4, boolean z2) {
        if (i >= 0) {
            if (i4 != (z2 ? this.mLen : 0)) {
                TextPaint textPaint = this.mWorkPaint;
                textPaint.set(this.mPaint);
                textPaint.setWordSpacing(this.mAddedWidth);
                if (this.mSpanned != null) {
                    int i5 = z2 ? i4 + 1 : i4;
                    int i6 = this.mStart + i3;
                    while (true) {
                        i3 = this.mSpanned.nextSpanTransition(this.mStart + i2, i6, MetricAffectingSpan.class) - this.mStart;
                        if (i3 >= i5) {
                            break;
                        }
                        i2 = i3;
                    }
                    MetricAffectingSpan[] metricAffectingSpanArr = (MetricAffectingSpan[]) TextUtils.removeEmptySpans((MetricAffectingSpan[]) this.mSpanned.getSpans(this.mStart + i2, this.mStart + i3, MetricAffectingSpan.class), this.mSpanned, MetricAffectingSpan.class);
                    if (metricAffectingSpanArr.length > 0) {
                        ReplacementSpan replacementSpan = null;
                        for (MetricAffectingSpan metricAffectingSpan : metricAffectingSpanArr) {
                            if (metricAffectingSpan instanceof ReplacementSpan) {
                                replacementSpan = (ReplacementSpan) metricAffectingSpan;
                            } else {
                                metricAffectingSpan.updateMeasureState(textPaint);
                            }
                        }
                        if (replacementSpan != null) {
                            return z2 ? i3 : i2;
                        }
                    }
                }
                int i7 = i2;
                int i8 = z2 ? 0 : 2;
                if (this.mCharsValid) {
                    return textPaint.getTextRunCursor(this.mChars, i7, i3 - i7, z ? 1 : 0, i4, i8);
                }
                return textPaint.getTextRunCursor(this.mText, i7 + this.mStart, this.mStart + i3, z ? 1 : 0, this.mStart + i4, i8) - this.mStart;
            }
        }
        if (z2) {
            return TextUtils.getOffsetAfter(this.mText, i4 + this.mStart) - this.mStart;
        }
        return TextUtils.getOffsetBefore(this.mText, i4 + this.mStart) - this.mStart;
    }

    private static void expandMetricsFromPaint(Paint.FontMetricsInt fontMetricsInt, TextPaint textPaint) {
        int i = fontMetricsInt.top;
        int i2 = fontMetricsInt.ascent;
        int i3 = fontMetricsInt.descent;
        int i4 = fontMetricsInt.bottom;
        int i5 = fontMetricsInt.leading;
        textPaint.getFontMetricsInt(fontMetricsInt);
        updateMetrics(fontMetricsInt, i, i2, i3, i4, i5);
    }

    static void updateMetrics(Paint.FontMetricsInt fontMetricsInt, int i, int i2, int i3, int i4, int i5) {
        fontMetricsInt.top = Math.min(fontMetricsInt.top, i);
        fontMetricsInt.ascent = Math.min(fontMetricsInt.ascent, i2);
        fontMetricsInt.descent = Math.max(fontMetricsInt.descent, i3);
        fontMetricsInt.bottom = Math.max(fontMetricsInt.bottom, i4);
        fontMetricsInt.leading = Math.max(fontMetricsInt.leading, i5);
    }

    private static void drawStroke(TextPaint textPaint, Canvas canvas, int i, float f, float f2, float f3, float f4, float f5) {
        float f6 = f5 + textPaint.baselineShift + f;
        int color = textPaint.getColor();
        Paint.Style style = textPaint.getStyle();
        boolean isAntiAlias = textPaint.isAntiAlias();
        textPaint.setStyle(Paint.Style.FILL);
        textPaint.setAntiAlias(true);
        textPaint.setColor(i);
        canvas.drawRect(f3, f6, f4, f6 + f2, textPaint);
        textPaint.setStyle(style);
        textPaint.setColor(color);
        textPaint.setAntiAlias(isAntiAlias);
    }

    private float getRunAdvance(TextPaint textPaint, int i, int i2, int i3, int i4, boolean z, int i5) {
        if (this.mCharsValid) {
            return textPaint.getRunAdvance(this.mChars, i, i2, i3, i4, z, i5);
        }
        int i6 = this.mStart;
        if (this.mComputed == null) {
            return textPaint.getRunAdvance(this.mText, i6 + i, i6 + i2, i6 + i3, i6 + i4, z, i6 + i5);
        }
        return this.mComputed.getWidth(i + i6, i2 + i6);
    }

    private float handleText(TextPaint textPaint, int i, int i2, int i3, int i4, boolean z, Canvas canvas, float f, int i5, int i6, int i7, Paint.FontMetricsInt fontMetricsInt, boolean z2, int i8, ArrayList<DecorationInfo> arrayList) {
        int i9;
        float runAdvance;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        float f7;
        int i10;
        float f8;
        int i11 = i;
        textPaint.setWordSpacing(this.mAddedWidth);
        if (fontMetricsInt != null) {
            expandMetricsFromPaint(fontMetricsInt, textPaint);
        }
        if (i2 == i11) {
            return 0.0f;
        }
        int size = arrayList == null ? 0 : arrayList.size();
        if (z2 || !(canvas == null || (textPaint.bgColor == 0 && size == 0 && !z))) {
            i9 = size;
            runAdvance = getRunAdvance(textPaint, i, i2, i3, i4, z, i8);
        } else {
            runAdvance = 0.0f;
            i9 = size;
        }
        if (canvas != null) {
            if (z) {
                f4 = f;
                f3 = f - runAdvance;
            } else {
                f3 = f;
                f4 = f + runAdvance;
            }
            if (textPaint.bgColor != 0) {
                int color = textPaint.getColor();
                Paint.Style style = textPaint.getStyle();
                textPaint.setColor(textPaint.bgColor);
                textPaint.setStyle(Paint.Style.FILL);
                f5 = runAdvance;
                canvas.drawRect(f3, i5, f4, i7, textPaint);
                textPaint.setStyle(style);
                textPaint.setColor(color);
            } else {
                f5 = runAdvance;
            }
            if (i9 != 0) {
                int i12 = 0;
                while (i12 < i9) {
                    DecorationInfo decorationInfo = arrayList.get(i12);
                    int max = Math.max(decorationInfo.start, i11);
                    int min = Math.min(decorationInfo.end, i8);
                    float f9 = f5;
                    int i13 = i12;
                    float runAdvance2 = getRunAdvance(textPaint, i, i2, i3, i4, z, max);
                    float runAdvance3 = getRunAdvance(textPaint, i, i2, i3, i4, z, min);
                    if (z) {
                        float f10 = f4 - runAdvance2;
                        f6 = f4 - runAdvance3;
                        f7 = f10;
                    } else {
                        f6 = runAdvance2 + f3;
                        f7 = runAdvance3 + f3;
                    }
                    if (decorationInfo.underlineColor != 0) {
                        drawStroke(textPaint, canvas, decorationInfo.underlineColor, textPaint.getUnderlinePosition(), decorationInfo.underlineThickness, f6, f7, i6);
                    }
                    if (decorationInfo.isUnderlineText) {
                        i10 = i9;
                        f8 = 1.0f;
                        drawStroke(textPaint, canvas, textPaint.getColor(), textPaint.getUnderlinePosition(), Math.max(textPaint.getUnderlineThickness(), 1.0f), f6, f7, i6);
                    } else {
                        i10 = i9;
                        f8 = 1.0f;
                    }
                    if (decorationInfo.isStrikeThruText) {
                        drawStroke(textPaint, canvas, textPaint.getColor(), textPaint.getStrikeThruPosition(), Math.max(textPaint.getStrikeThruThickness(), f8), f6, f7, i6);
                    }
                    i12 = i13 + 1;
                    f5 = f9;
                    i9 = i10;
                    i11 = i;
                }
            }
            f2 = f5;
            drawTextRun(canvas, textPaint, i, i2, i3, i4, z, f3, i6 + textPaint.baselineShift);
        } else {
            f2 = runAdvance;
        }
        return z ? -f2 : f2;
    }

    private float handleReplacement(ReplacementSpan replacementSpan, TextPaint textPaint, int i, int i2, boolean z, Canvas canvas, float f, int i3, int i4, int i5, Paint.FontMetricsInt fontMetricsInt, boolean z2) {
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        float f2;
        int i11 = this.mStart + i;
        int i12 = this.mStart + i2;
        if (z2 || (canvas != null && z)) {
            boolean z3 = fontMetricsInt != null;
            if (z3) {
                int i13 = fontMetricsInt.top;
                i6 = i13;
                i7 = fontMetricsInt.ascent;
                i8 = fontMetricsInt.descent;
                i9 = fontMetricsInt.bottom;
                i10 = fontMetricsInt.leading;
            } else {
                i6 = 0;
                i7 = 0;
                i8 = 0;
                i9 = 0;
                i10 = 0;
            }
            float size = replacementSpan.getSize(textPaint, this.mText, i11, i12, fontMetricsInt);
            if (z3) {
                f2 = size;
                updateMetrics(fontMetricsInt, i6, i7, i8, i9, i10);
            } else {
                f2 = size;
            }
        } else {
            f2 = 0.0f;
        }
        float f3 = f2;
        if (canvas != null) {
            replacementSpan.draw(canvas, this.mText, i11, i12, z ? f - f3 : f, i3, i4, i5, textPaint);
        }
        return z ? -f3 : f3;
    }

    private int adjustHyphenEdit(int i, int i2, int i3) {
        if (i > 0) {
            i3 &= -25;
        }
        return i2 < this.mLen ? i3 & (-8) : i3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static final class DecorationInfo {
        public int end;
        public boolean isStrikeThruText;
        public boolean isUnderlineText;
        public int start;
        public int underlineColor;
        public float underlineThickness;

        private DecorationInfo() {
            this.start = -1;
            this.end = -1;
        }

        public boolean hasDecoration() {
            return this.isStrikeThruText || this.isUnderlineText || this.underlineColor != 0;
        }

        public DecorationInfo copyInfo() {
            DecorationInfo decorationInfo = new DecorationInfo();
            decorationInfo.isStrikeThruText = this.isStrikeThruText;
            decorationInfo.isUnderlineText = this.isUnderlineText;
            decorationInfo.underlineColor = this.underlineColor;
            decorationInfo.underlineThickness = this.underlineThickness;
            return decorationInfo;
        }
    }

    private void extractDecorationInfo(TextPaint textPaint, DecorationInfo decorationInfo) {
        decorationInfo.isStrikeThruText = textPaint.isStrikeThruText();
        if (decorationInfo.isStrikeThruText) {
            textPaint.setStrikeThruText(false);
        }
        decorationInfo.isUnderlineText = textPaint.isUnderlineText();
        if (decorationInfo.isUnderlineText) {
            textPaint.setUnderlineText(false);
        }
        decorationInfo.underlineColor = textPaint.underlineColor;
        decorationInfo.underlineThickness = textPaint.underlineThickness;
        textPaint.setUnderlineText(0, 0.0f);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01f9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private float handleRun(int i, int i2, int i3, boolean z, Canvas canvas, float f, int i4, int i5, int i6, Paint.FontMetricsInt fontMetricsInt, boolean z2) {
        boolean z3;
        int i7;
        boolean z4;
        float handleText;
        int i8;
        int i9;
        int i10;
        DecorationInfo decorationInfo;
        int i11;
        TextPaint textPaint;
        TextPaint textPaint2;
        int i12;
        TextLine textLine = this;
        int i13 = i2;
        int i14 = i3;
        if (i13 < i || i13 > i14) {
            throw new IndexOutOfBoundsException("measureLimit (" + i2 + ") is out of start (" + i + ") and limit (" + i3 + ") bounds");
        }
        if (i == i13) {
            TextPaint textPaint3 = textLine.mWorkPaint;
            textPaint3.set(textLine.mPaint);
            if (fontMetricsInt == null) {
                return 0.0f;
            }
            expandMetricsFromPaint(fontMetricsInt, textPaint3);
            return 0.0f;
        }
        if (textLine.mSpanned != null) {
            textLine.mMetricAffectingSpanSpanSet.init(textLine.mSpanned, textLine.mStart + i, textLine.mStart + i14);
            textLine.mCharacterStyleSpanSet.init(textLine.mSpanned, textLine.mStart + i, textLine.mStart + i14);
            if (textLine.mMetricAffectingSpanSpanSet.numberOfSpans != 0 || textLine.mCharacterStyleSpanSet.numberOfSpans != 0) {
                z3 = true;
                if (z3) {
                    TextPaint textPaint4 = textLine.mWorkPaint;
                    textPaint4.set(textLine.mPaint);
                    textPaint4.setHyphenEdit(textLine.adjustHyphenEdit(i, i14, textPaint4.getHyphenEdit()));
                    return handleText(textPaint4, i, i3, i, i3, z, canvas, f, i4, i5, i6, fontMetricsInt, z2, i2, null);
                }
                float f2 = f;
                int i15 = i;
                while (i15 < i13) {
                    TextPaint textPaint5 = textLine.mWorkPaint;
                    textPaint5.set(textLine.mPaint);
                    int nextTransition = textLine.mMetricAffectingSpanSpanSet.getNextTransition(textLine.mStart + i15, textLine.mStart + i14) - textLine.mStart;
                    int min = Math.min(nextTransition, i13);
                    ReplacementSpan replacementSpan = null;
                    for (int i16 = 0; i16 < textLine.mMetricAffectingSpanSpanSet.numberOfSpans; i16++) {
                        if (textLine.mMetricAffectingSpanSpanSet.spanStarts[i16] < textLine.mStart + min && textLine.mMetricAffectingSpanSpanSet.spanEnds[i16] > textLine.mStart + i15) {
                            MetricAffectingSpan metricAffectingSpan = textLine.mMetricAffectingSpanSpanSet.spans[i16];
                            if (metricAffectingSpan instanceof ReplacementSpan) {
                                replacementSpan = (ReplacementSpan) metricAffectingSpan;
                            } else {
                                metricAffectingSpan.updateDrawState(textPaint5);
                            }
                        }
                    }
                    if (replacementSpan != null) {
                        i7 = nextTransition;
                        handleText = handleReplacement(replacementSpan, textPaint5, i15, min, z, canvas, f2, i4, i5, i6, fontMetricsInt, z2 || min < i13);
                    } else {
                        i7 = nextTransition;
                        TextPaint textPaint6 = textLine.mActivePaint;
                        textPaint6.set(textLine.mPaint);
                        DecorationInfo decorationInfo2 = textLine.mDecorationInfo;
                        textLine.mDecorations.clear();
                        int i17 = min;
                        int i18 = i15;
                        int i19 = i18;
                        while (i19 < min) {
                            int nextTransition2 = textLine.mCharacterStyleSpanSet.getNextTransition(textLine.mStart + i19, textLine.mStart + i7) - textLine.mStart;
                            int min2 = Math.min(nextTransition2, min);
                            textPaint5.set(textLine.mPaint);
                            for (int i20 = 0; i20 < textLine.mCharacterStyleSpanSet.numberOfSpans; i20++) {
                                if (textLine.mCharacterStyleSpanSet.spanStarts[i20] < textLine.mStart + min2 && textLine.mCharacterStyleSpanSet.spanEnds[i20] > textLine.mStart + i19) {
                                    textLine.mCharacterStyleSpanSet.spans[i20].updateDrawState(textPaint5);
                                }
                            }
                            textLine.extractDecorationInfo(textPaint5, decorationInfo2);
                            if (i19 == i15) {
                                textPaint6.set(textPaint5);
                            } else if (!textPaint5.hasEqualAttributes(textPaint6)) {
                                textPaint6.setHyphenEdit(textLine.adjustHyphenEdit(i18, i17, textLine.mPaint.getHyphenEdit()));
                                i8 = nextTransition2;
                                i9 = i19;
                                i10 = min;
                                decorationInfo = decorationInfo2;
                                i11 = i15;
                                f2 += handleText(textPaint6, i18, i17, i15, i7, z, canvas, f2, i4, i5, i6, fontMetricsInt, z2 || i17 < i13, Math.min(i17, min), textLine.mDecorations);
                                textPaint = textPaint5;
                                textPaint2 = textPaint6;
                                textPaint2.set(textPaint);
                                textLine = this;
                                textLine.mDecorations.clear();
                                i18 = i9;
                                if (decorationInfo.hasDecoration()) {
                                    i12 = i8;
                                } else {
                                    DecorationInfo copyInfo = decorationInfo.copyInfo();
                                    copyInfo.start = i9;
                                    i12 = i8;
                                    copyInfo.end = i12;
                                    textLine.mDecorations.add(copyInfo);
                                }
                                textPaint5 = textPaint;
                                textPaint6 = textPaint2;
                                i17 = i12;
                                i19 = i17;
                                min = i10;
                                decorationInfo2 = decorationInfo;
                                i15 = i11;
                                i13 = i2;
                            }
                            i8 = nextTransition2;
                            i9 = i19;
                            i10 = min;
                            decorationInfo = decorationInfo2;
                            textPaint = textPaint5;
                            i11 = i15;
                            textPaint2 = textPaint6;
                            if (decorationInfo.hasDecoration()) {
                            }
                            textPaint5 = textPaint;
                            textPaint6 = textPaint2;
                            i17 = i12;
                            i19 = i17;
                            min = i10;
                            decorationInfo2 = decorationInfo;
                            i15 = i11;
                            i13 = i2;
                        }
                        int i21 = min;
                        int i22 = i15;
                        TextPaint textPaint7 = textPaint6;
                        textPaint7.setHyphenEdit(textLine.adjustHyphenEdit(i18, i17, textLine.mPaint.getHyphenEdit()));
                        if (!z2 && i17 >= i2) {
                            z4 = false;
                            handleText = handleText(textPaint7, i18, i17, i22, i7, z, canvas, f2, i4, i5, i6, fontMetricsInt, z4, Math.min(i17, i21), textLine.mDecorations);
                        }
                        z4 = true;
                        handleText = handleText(textPaint7, i18, i17, i22, i7, z, canvas, f2, i4, i5, i6, fontMetricsInt, z4, Math.min(i17, i21), textLine.mDecorations);
                    }
                    f2 += handleText;
                    i15 = i7;
                    i14 = i3;
                    i13 = i2;
                    textLine = this;
                }
                return f2 - f;
            }
        }
        z3 = false;
        if (z3) {
        }
    }

    private void drawTextRun(Canvas canvas, TextPaint textPaint, int i, int i2, int i3, int i4, boolean z, float f, int i5) {
        if (this.mCharsValid) {
            canvas.drawTextRun(this.mChars, i, i2 - i, i3, i4 - i3, f, i5, z, textPaint);
        } else {
            int i6 = this.mStart;
            canvas.drawTextRun(this.mText, i6 + i, i6 + i2, i6 + i3, i6 + i4, f, i5, z, textPaint);
        }
    }

    float nextTab(float f) {
        if (this.mTabs != null) {
            return this.mTabs.nextTab(f);
        }
        return Layout.TabStops.nextDefaultStop(f, 20);
    }

    private int countStretchableSpaces(int i, int i2) {
        int i3 = 0;
        while (i < i2) {
            if (isStretchableWhitespace(this.mCharsValid ? this.mChars[i] : this.mText.charAt(this.mStart + i))) {
                i3++;
            }
            i++;
        }
        return i3;
    }
}
