package android.text;

import android.graphics.Paint;
import android.text.AutoGrowArray;
import android.text.Layout;
import android.text.PrecomputedText;
import android.text.TextUtils;
import android.text.style.LeadingMarginSpan;
import android.text.style.LineHeightSpan;
import android.text.style.TabStopSpan;
import android.util.Log;
import android.util.Pools;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.GrowingArrayUtils;
import dalvik.annotation.optimization.CriticalNative;
import dalvik.annotation.optimization.FastNative;
import java.util.Arrays;

/* loaded from: /home/user/work/dex/classes2.dex */
public class StaticLayout extends Layout {
    private static final char CHAR_NEW_LINE = '\n';
    private static final int COLUMNS_ELLIPSIZE = 7;
    private static final int COLUMNS_NORMAL = 5;
    private static final int DEFAULT_MAX_LINE_HEIGHT = -1;
    private static final int DESCENT = 2;
    private static final int DIR = 0;
    private static final int DIR_SHIFT = 30;
    private static final int ELLIPSIS_COUNT = 6;
    private static final int ELLIPSIS_START = 5;
    private static final int EXTRA = 3;
    private static final double EXTRA_ROUNDING = 0.5d;
    private static final int HYPHEN = 4;
    private static final int HYPHEN_MASK = 255;
    private static final int START = 0;
    private static final int START_MASK = 536870911;
    private static final int TAB = 0;
    private static final int TAB_INCREMENT = 20;
    private static final int TAB_MASK = 536870912;
    static final String TAG = "StaticLayout";
    private static final int TOP = 1;
    private int mBottomPadding;
    private int mColumns;
    private boolean mEllipsized;
    private int mEllipsizedWidth;
    private int[] mLeftIndents;
    private int[] mLeftPaddings;
    private int mLineCount;
    private Layout.Directions[] mLineDirections;
    private int[] mLines;
    private int mMaxLineHeight;
    private int mMaximumVisibleLineCount;
    private int[] mRightIndents;
    private int[] mRightPaddings;
    private int mTopPadding;

    private static native int nComputeLineBreaks(long j, char[] cArr, long j2, int i, float f, int i2, float f2, int[] iArr, int i3, int i4, LineBreaks lineBreaks, int i5, int[] iArr2, float[] fArr, float[] fArr2, float[] fArr3, int[] iArr3, float[] fArr4);

    @CriticalNative
    private static native void nFinish(long j);

    @FastNative
    private static native long nInit(int i, int i2, boolean z, int[] iArr, int[] iArr2, int[] iArr3);

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static final class Builder {
        private static final Pools.SynchronizedPool<Builder> sPool = new Pools.SynchronizedPool<>(3);
        private boolean mAddLastLineLineSpacing;
        private Layout.Alignment mAlignment;
        private int mBreakStrategy;
        private TextUtils.TruncateAt mEllipsize;
        private int mEllipsizedWidth;
        private int mEnd;
        private boolean mFallbackLineSpacing;
        private final Paint.FontMetricsInt mFontMetricsInt = new Paint.FontMetricsInt();
        private int mHyphenationFrequency;
        private boolean mIncludePad;
        private int mJustificationMode;
        private int[] mLeftIndents;
        private int[] mLeftPaddings;
        private int mMaxLines;
        private TextPaint mPaint;
        private int[] mRightIndents;
        private int[] mRightPaddings;
        private float mSpacingAdd;
        private float mSpacingMult;
        private int mStart;
        private CharSequence mText;
        private TextDirectionHeuristic mTextDir;
        private int mWidth;

        private Builder() {
        }

        public static Builder obtain(CharSequence charSequence, int i, int i2, TextPaint textPaint, int i3) {
            Builder acquire = sPool.acquire();
            if (acquire == null) {
                acquire = new Builder();
            }
            acquire.mText = charSequence;
            acquire.mStart = i;
            acquire.mEnd = i2;
            acquire.mPaint = textPaint;
            acquire.mWidth = i3;
            acquire.mAlignment = Layout.Alignment.ALIGN_NORMAL;
            acquire.mTextDir = TextDirectionHeuristics.FIRSTSTRONG_LTR;
            acquire.mSpacingMult = 1.0f;
            acquire.mSpacingAdd = 0.0f;
            acquire.mIncludePad = true;
            acquire.mFallbackLineSpacing = false;
            acquire.mEllipsizedWidth = i3;
            acquire.mEllipsize = null;
            acquire.mMaxLines = Integer.MAX_VALUE;
            acquire.mBreakStrategy = 0;
            acquire.mHyphenationFrequency = 0;
            acquire.mJustificationMode = 0;
            return acquire;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void recycle(Builder builder) {
            builder.mPaint = null;
            builder.mText = null;
            builder.mLeftIndents = null;
            builder.mRightIndents = null;
            builder.mLeftPaddings = null;
            builder.mRightPaddings = null;
            sPool.release(builder);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void finish() {
            this.mText = null;
            this.mPaint = null;
            this.mLeftIndents = null;
            this.mRightIndents = null;
            this.mLeftPaddings = null;
            this.mRightPaddings = null;
        }

        public Builder setText(CharSequence charSequence) {
            return setText(charSequence, 0, charSequence.length());
        }

        public Builder setText(CharSequence charSequence, int i, int i2) {
            this.mText = charSequence;
            this.mStart = i;
            this.mEnd = i2;
            return this;
        }

        public Builder setPaint(TextPaint textPaint) {
            this.mPaint = textPaint;
            return this;
        }

        public Builder setWidth(int i) {
            this.mWidth = i;
            if (this.mEllipsize == null) {
                this.mEllipsizedWidth = i;
            }
            return this;
        }

        public Builder setAlignment(Layout.Alignment alignment) {
            this.mAlignment = alignment;
            return this;
        }

        public Builder setTextDirection(TextDirectionHeuristic textDirectionHeuristic) {
            this.mTextDir = textDirectionHeuristic;
            return this;
        }

        public Builder setLineSpacing(float f, float f2) {
            this.mSpacingAdd = f;
            this.mSpacingMult = f2;
            return this;
        }

        public Builder setIncludePad(boolean z) {
            this.mIncludePad = z;
            return this;
        }

        public Builder setUseLineSpacingFromFallbacks(boolean z) {
            this.mFallbackLineSpacing = z;
            return this;
        }

        public Builder setEllipsizedWidth(int i) {
            this.mEllipsizedWidth = i;
            return this;
        }

        public Builder setEllipsize(TextUtils.TruncateAt truncateAt) {
            this.mEllipsize = truncateAt;
            return this;
        }

        public Builder setMaxLines(int i) {
            this.mMaxLines = i;
            return this;
        }

        public Builder setBreakStrategy(int i) {
            this.mBreakStrategy = i;
            return this;
        }

        public Builder setHyphenationFrequency(int i) {
            this.mHyphenationFrequency = i;
            return this;
        }

        public Builder setIndents(int[] iArr, int[] iArr2) {
            this.mLeftIndents = iArr;
            this.mRightIndents = iArr2;
            return this;
        }

        public Builder setAvailablePaddings(int[] iArr, int[] iArr2) {
            this.mLeftPaddings = iArr;
            this.mRightPaddings = iArr2;
            return this;
        }

        public Builder setJustificationMode(int i) {
            this.mJustificationMode = i;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder setAddLastLineLineSpacing(boolean z) {
            this.mAddLastLineLineSpacing = z;
            return this;
        }

        public StaticLayout build() {
            StaticLayout staticLayout = new StaticLayout(this);
            recycle(this);
            return staticLayout;
        }
    }

    @Deprecated
    public StaticLayout(CharSequence charSequence, TextPaint textPaint, int i, Layout.Alignment alignment, float f, float f2, boolean z) {
        this(charSequence, 0, charSequence.length(), textPaint, i, alignment, f, f2, z);
    }

    @Deprecated
    public StaticLayout(CharSequence charSequence, int i, int i2, TextPaint textPaint, int i3, Layout.Alignment alignment, float f, float f2, boolean z) {
        this(charSequence, i, i2, textPaint, i3, alignment, f, f2, z, null, 0);
    }

    @Deprecated
    public StaticLayout(CharSequence charSequence, int i, int i2, TextPaint textPaint, int i3, Layout.Alignment alignment, float f, float f2, boolean z, TextUtils.TruncateAt truncateAt, int i4) {
        this(charSequence, i, i2, textPaint, i3, alignment, TextDirectionHeuristics.FIRSTSTRONG_LTR, f, f2, z, truncateAt, i4, Integer.MAX_VALUE);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public StaticLayout(CharSequence charSequence, int i, int i2, TextPaint textPaint, int i3, Layout.Alignment alignment, TextDirectionHeuristic textDirectionHeuristic, float f, float f2, boolean z, TextUtils.TruncateAt truncateAt, int i4, int i5) {
        super(r1, textPaint, i3, alignment, textDirectionHeuristic, f, f2);
        CharSequence ellipsizer;
        CharSequence charSequence2;
        if (truncateAt == null) {
            charSequence2 = charSequence;
        } else {
            if (charSequence instanceof Spanned) {
                ellipsizer = new Layout.SpannedEllipsizer(charSequence);
            } else {
                ellipsizer = new Layout.Ellipsizer(charSequence);
            }
            charSequence2 = ellipsizer;
        }
        this.mMaxLineHeight = -1;
        this.mMaximumVisibleLineCount = Integer.MAX_VALUE;
        Builder maxLines = Builder.obtain(charSequence, i, i2, textPaint, i3).setAlignment(alignment).setTextDirection(textDirectionHeuristic).setLineSpacing(f2, f).setIncludePad(z).setEllipsizedWidth(i4).setEllipsize(truncateAt).setMaxLines(i5);
        if (truncateAt != null) {
            Layout.Ellipsizer ellipsizer2 = (Layout.Ellipsizer) getText();
            ellipsizer2.mLayout = this;
            ellipsizer2.mWidth = i4;
            ellipsizer2.mMethod = truncateAt;
            this.mEllipsizedWidth = i4;
            this.mColumns = 7;
        } else {
            this.mColumns = 5;
            this.mEllipsizedWidth = i3;
        }
        this.mLineDirections = (Layout.Directions[]) ArrayUtils.newUnpaddedArray(Layout.Directions.class, 2);
        this.mLines = ArrayUtils.newUnpaddedIntArray(this.mColumns * 2);
        this.mMaximumVisibleLineCount = i5;
        generate(maxLines, maxLines.mIncludePad, maxLines.mIncludePad);
        Builder.recycle(maxLines);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StaticLayout(CharSequence charSequence) {
        super(charSequence, null, 0, null, 0.0f, 0.0f);
        this.mMaxLineHeight = -1;
        this.mMaximumVisibleLineCount = Integer.MAX_VALUE;
        this.mColumns = 7;
        this.mLineDirections = (Layout.Directions[]) ArrayUtils.newUnpaddedArray(Layout.Directions.class, 2);
        this.mLines = ArrayUtils.newUnpaddedIntArray(this.mColumns * 2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private StaticLayout(Builder builder) {
        super(r0, builder.mPaint, builder.mWidth, builder.mAlignment, builder.mTextDir, builder.mSpacingMult, builder.mSpacingAdd);
        CharSequence ellipsizer;
        if (builder.mEllipsize == null) {
            ellipsizer = builder.mText;
        } else if (builder.mText instanceof Spanned) {
            ellipsizer = new Layout.SpannedEllipsizer(builder.mText);
        } else {
            ellipsizer = new Layout.Ellipsizer(builder.mText);
        }
        this.mMaxLineHeight = -1;
        this.mMaximumVisibleLineCount = Integer.MAX_VALUE;
        if (builder.mEllipsize != null) {
            Layout.Ellipsizer ellipsizer2 = (Layout.Ellipsizer) getText();
            ellipsizer2.mLayout = this;
            ellipsizer2.mWidth = builder.mEllipsizedWidth;
            ellipsizer2.mMethod = builder.mEllipsize;
            this.mEllipsizedWidth = builder.mEllipsizedWidth;
            this.mColumns = 7;
        } else {
            this.mColumns = 5;
            this.mEllipsizedWidth = builder.mWidth;
        }
        this.mLineDirections = (Layout.Directions[]) ArrayUtils.newUnpaddedArray(Layout.Directions.class, 2);
        this.mLines = ArrayUtils.newUnpaddedIntArray(this.mColumns * 2);
        this.mMaximumVisibleLineCount = builder.mMaxLines;
        this.mLeftIndents = builder.mLeftIndents;
        this.mRightIndents = builder.mRightIndents;
        this.mLeftPaddings = builder.mLeftPaddings;
        this.mRightPaddings = builder.mRightPaddings;
        setJustificationMode(builder.mJustificationMode);
        generate(builder, builder.mIncludePad, builder.mIncludePad);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:144:0x04db A[LOOP:0: B:28:0x0121->B:144:0x04db, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:145:0x04d6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0511  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x0526 A[Catch: all -> 0x0571, TRY_LEAVE, TryCatch #0 {all -> 0x0571, blocks: (B:29:0x0121, B:33:0x012f, B:35:0x0135, B:36:0x0146, B:38:0x0149, B:40:0x0165, B:42:0x016f, B:45:0x0176, B:50:0x01d3, B:52:0x01de, B:53:0x01e2, B:55:0x01e5, B:57:0x01f0, B:58:0x01fb, B:60:0x026d, B:62:0x0273, B:64:0x027a, B:71:0x0290, B:73:0x0299, B:75:0x029f, B:77:0x02bd, B:81:0x02b0, B:83:0x02b4, B:85:0x02aa, B:87:0x02cb, B:90:0x02f0, B:92:0x031a, B:93:0x031c, B:95:0x0320, B:96:0x0322, B:98:0x0326, B:99:0x0328, B:101:0x032c, B:104:0x0332, B:106:0x0337, B:110:0x0343, B:112:0x0348, B:116:0x0355, B:119:0x0363, B:120:0x0372, B:122:0x03ed, B:123:0x0403, B:125:0x040d, B:149:0x0515, B:152:0x0520, B:154:0x0526, B:165:0x0190, B:168:0x019a, B:170:0x019d, B:172:0x01a5, B:174:0x01b2, B:175:0x01b0, B:179:0x0194, B:181:0x0128), top: B:28:0x0121 }] */
    /* JADX WARN: Removed duplicated region for block: B:158:0x051e  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x04fd A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01d3 A[Catch: all -> 0x0571, TryCatch #0 {all -> 0x0571, blocks: (B:29:0x0121, B:33:0x012f, B:35:0x0135, B:36:0x0146, B:38:0x0149, B:40:0x0165, B:42:0x016f, B:45:0x0176, B:50:0x01d3, B:52:0x01de, B:53:0x01e2, B:55:0x01e5, B:57:0x01f0, B:58:0x01fb, B:60:0x026d, B:62:0x0273, B:64:0x027a, B:71:0x0290, B:73:0x0299, B:75:0x029f, B:77:0x02bd, B:81:0x02b0, B:83:0x02b4, B:85:0x02aa, B:87:0x02cb, B:90:0x02f0, B:92:0x031a, B:93:0x031c, B:95:0x0320, B:96:0x0322, B:98:0x0326, B:99:0x0328, B:101:0x032c, B:104:0x0332, B:106:0x0337, B:110:0x0343, B:112:0x0348, B:116:0x0355, B:119:0x0363, B:120:0x0372, B:122:0x03ed, B:123:0x0403, B:125:0x040d, B:149:0x0515, B:152:0x0520, B:154:0x0526, B:165:0x0190, B:168:0x019a, B:170:0x019d, B:172:0x01a5, B:174:0x01b2, B:175:0x01b0, B:179:0x0194, B:181:0x0128), top: B:28:0x0121 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x026d A[Catch: all -> 0x0571, TryCatch #0 {all -> 0x0571, blocks: (B:29:0x0121, B:33:0x012f, B:35:0x0135, B:36:0x0146, B:38:0x0149, B:40:0x0165, B:42:0x016f, B:45:0x0176, B:50:0x01d3, B:52:0x01de, B:53:0x01e2, B:55:0x01e5, B:57:0x01f0, B:58:0x01fb, B:60:0x026d, B:62:0x0273, B:64:0x027a, B:71:0x0290, B:73:0x0299, B:75:0x029f, B:77:0x02bd, B:81:0x02b0, B:83:0x02b4, B:85:0x02aa, B:87:0x02cb, B:90:0x02f0, B:92:0x031a, B:93:0x031c, B:95:0x0320, B:96:0x0322, B:98:0x0326, B:99:0x0328, B:101:0x032c, B:104:0x0332, B:106:0x0337, B:110:0x0343, B:112:0x0348, B:116:0x0355, B:119:0x0363, B:120:0x0372, B:122:0x03ed, B:123:0x0403, B:125:0x040d, B:149:0x0515, B:152:0x0520, B:154:0x0526, B:165:0x0190, B:168:0x019a, B:170:0x019d, B:172:0x01a5, B:174:0x01b2, B:175:0x01b0, B:179:0x0194, B:181:0x0128), top: B:28:0x0121 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x028c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x02f0 A[Catch: all -> 0x0571, TryCatch #0 {all -> 0x0571, blocks: (B:29:0x0121, B:33:0x012f, B:35:0x0135, B:36:0x0146, B:38:0x0149, B:40:0x0165, B:42:0x016f, B:45:0x0176, B:50:0x01d3, B:52:0x01de, B:53:0x01e2, B:55:0x01e5, B:57:0x01f0, B:58:0x01fb, B:60:0x026d, B:62:0x0273, B:64:0x027a, B:71:0x0290, B:73:0x0299, B:75:0x029f, B:77:0x02bd, B:81:0x02b0, B:83:0x02b4, B:85:0x02aa, B:87:0x02cb, B:90:0x02f0, B:92:0x031a, B:93:0x031c, B:95:0x0320, B:96:0x0322, B:98:0x0326, B:99:0x0328, B:101:0x032c, B:104:0x0332, B:106:0x0337, B:110:0x0343, B:112:0x0348, B:116:0x0355, B:119:0x0363, B:120:0x0372, B:122:0x03ed, B:123:0x0403, B:125:0x040d, B:149:0x0515, B:152:0x0520, B:154:0x0526, B:165:0x0190, B:168:0x019a, B:170:0x019d, B:172:0x01a5, B:174:0x01b2, B:175:0x01b0, B:179:0x0194, B:181:0x0128), top: B:28:0x0121 }] */
    /* JADX WARN: Type inference failed for: r9v24, types: [int] */
    /* JADX WARN: Type inference failed for: r9v36 */
    /* JADX WARN: Type inference failed for: r9v37 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void generate(Builder builder, boolean z, boolean z2) {
        int[] iArr;
        Paint.FontMetricsInt fontMetricsInt;
        AutoGrowArray.FloatArray floatArray;
        TextUtils.TruncateAt truncateAt;
        float f;
        boolean z3;
        Spanned spanned;
        PrecomputedText.ParagraphInfo[] paragraphInfoArr;
        boolean z4;
        PrecomputedText.ParagraphInfo[] paragraphInfoArr2;
        int i;
        int i2;
        int[] iArr2;
        boolean z5;
        StaticLayout staticLayout;
        TextDirectionHeuristic textDirectionHeuristic;
        TextPaint textPaint;
        int i3;
        CharSequence charSequence;
        float f2;
        Paint.FontMetricsInt fontMetricsInt2;
        TextUtils.TruncateAt truncateAt2;
        int i4;
        CharSequence charSequence2;
        TextDirectionHeuristic textDirectionHeuristic2;
        TextPaint textPaint2;
        int i5;
        CharSequence charSequence3;
        int[] iArr3;
        int i6;
        int i7;
        int i8;
        LineHeightSpan[] lineHeightSpanArr;
        int[] iArr4;
        int i9;
        int i10;
        char[] cArr;
        TextUtils.TruncateAt truncateAt3;
        boolean z6;
        TextUtils.TruncateAt truncateAt4;
        int i11;
        int i12;
        AutoGrowArray.FloatArray floatArray2;
        int i13;
        int i14;
        PrecomputedText.ParagraphInfo[] paragraphInfoArr3;
        Spanned spanned2;
        LineBreaks lineBreaks;
        TextUtils.TruncateAt truncateAt5;
        boolean z7;
        StaticLayout staticLayout2 = this;
        CharSequence charSequence4 = builder.mText;
        int i15 = builder.mStart;
        int i16 = builder.mEnd;
        TextPaint textPaint3 = builder.mPaint;
        int i17 = builder.mWidth;
        TextDirectionHeuristic textDirectionHeuristic3 = builder.mTextDir;
        boolean z8 = builder.mFallbackLineSpacing;
        float f3 = builder.mSpacingMult;
        float f4 = builder.mSpacingAdd;
        float f5 = builder.mEllipsizedWidth;
        TextUtils.TruncateAt truncateAt6 = builder.mEllipsize;
        boolean z9 = builder.mAddLastLineLineSpacing;
        LineBreaks lineBreaks2 = new LineBreaks();
        AutoGrowArray.FloatArray floatArray3 = new AutoGrowArray.FloatArray();
        staticLayout2.mLineCount = 0;
        staticLayout2.mEllipsized = false;
        staticLayout2.mMaxLineHeight = staticLayout2.mMaximumVisibleLineCount < 1 ? 0 : -1;
        boolean z10 = (f3 == 1.0f && f4 == 0.0f) ? false : true;
        Paint.FontMetricsInt fontMetricsInt3 = builder.mFontMetricsInt;
        if (staticLayout2.mLeftIndents == null && staticLayout2.mRightIndents == null) {
            iArr = null;
        } else {
            int length = staticLayout2.mLeftIndents == null ? 0 : staticLayout2.mLeftIndents.length;
            int length2 = staticLayout2.mRightIndents == null ? 0 : staticLayout2.mRightIndents.length;
            int[] iArr5 = new int[Math.max(length, length2)];
            for (int i18 = 0; i18 < length; i18++) {
                iArr5[i18] = staticLayout2.mLeftIndents[i18];
            }
            for (int i19 = 0; i19 < length2; i19++) {
                iArr5[i19] = iArr5[i19] + staticLayout2.mRightIndents[i19];
            }
            iArr = iArr5;
        }
        long nInit = nInit(builder.mBreakStrategy, builder.mHyphenationFrequency, builder.mJustificationMode != 0, iArr, staticLayout2.mLeftPaddings, staticLayout2.mRightPaddings);
        Spanned spanned3 = charSequence4 instanceof Spanned ? (Spanned) charSequence4 : null;
        if (charSequence4 instanceof PrecomputedText) {
            PrecomputedText precomputedText = (PrecomputedText) charSequence4;
            f = f5;
            fontMetricsInt = fontMetricsInt3;
            spanned = spanned3;
            truncateAt = truncateAt6;
            z3 = false;
            z4 = false;
            floatArray = floatArray3;
            if (precomputedText.canUseMeasuredResult(i15, i16, textDirectionHeuristic3, textPaint3, builder.mBreakStrategy, builder.mHyphenationFrequency)) {
                paragraphInfoArr = precomputedText.getParagraphInfo();
                if (paragraphInfoArr == null) {
                    paragraphInfoArr = PrecomputedText.createMeasuredParagraphs(charSequence4, new PrecomputedText.Params(textPaint3, textDirectionHeuristic3, builder.mBreakStrategy, builder.mHyphenationFrequency), i15, i16, z4);
                }
                paragraphInfoArr2 = paragraphInfoArr;
                i = z4 ? 1 : 0;
                i2 = i;
                iArr2 = null;
                z5 = z4;
                while (true) {
                    try {
                        if (i2 < paragraphInfoArr2.length) {
                            staticLayout = staticLayout2;
                            textDirectionHeuristic = textDirectionHeuristic3;
                            textPaint = textPaint3;
                            i3 = i16;
                            charSequence = charSequence4;
                            f2 = f;
                            fontMetricsInt2 = fontMetricsInt;
                            truncateAt2 = truncateAt;
                            i4 = i;
                            break;
                        }
                        int i20 = i2 == 0 ? i15 : paragraphInfoArr2[i2 - 1].paragraphEnd;
                        int i21 = paragraphInfoArr2[i2].paragraphEnd;
                        if (spanned != null) {
                            LeadingMarginSpan[] leadingMarginSpanArr = (LeadingMarginSpan[]) getParagraphSpans(spanned, i20, i21, LeadingMarginSpan.class);
                            textDirectionHeuristic2 = textDirectionHeuristic3;
                            textPaint2 = textPaint3;
                            int i22 = i17;
                            int i23 = i22;
                            int i24 = 1;
                            for (?? r9 = z5; r9 < leadingMarginSpanArr.length; r9++) {
                                LeadingMarginSpan leadingMarginSpan = leadingMarginSpanArr[r9];
                                int i25 = i15;
                                CharSequence charSequence5 = charSequence4;
                                i22 -= leadingMarginSpanArr[r9].getLeadingMargin(true);
                                i23 -= leadingMarginSpanArr[r9].getLeadingMargin(false);
                                if (leadingMarginSpan instanceof LeadingMarginSpan.LeadingMarginSpan2) {
                                    i24 = Math.max(i24, ((LeadingMarginSpan.LeadingMarginSpan2) leadingMarginSpan).getLeadingMarginLineCount());
                                }
                                i15 = i25;
                                charSequence4 = charSequence5;
                            }
                            i5 = i15;
                            charSequence3 = charSequence4;
                            LineHeightSpan[] lineHeightSpanArr2 = (LineHeightSpan[]) getParagraphSpans(spanned, i20, i21, LineHeightSpan.class);
                            if (lineHeightSpanArr2.length == 0) {
                                iArr3 = iArr2;
                                i8 = i24;
                                i6 = i22;
                                i7 = i23;
                            } else {
                                if (iArr2 == null || iArr2.length < lineHeightSpanArr2.length) {
                                    iArr2 = ArrayUtils.newUnpaddedIntArray(lineHeightSpanArr2.length);
                                }
                                for (int i26 = 0; i26 < lineHeightSpanArr2.length; i26++) {
                                    int spanStart = spanned.getSpanStart(lineHeightSpanArr2[i26]);
                                    if (spanStart < i20) {
                                        iArr2[i26] = staticLayout2.getLineTop(staticLayout2.getLineForOffset(spanStart));
                                    } else {
                                        iArr2[i26] = i;
                                    }
                                }
                                iArr3 = iArr2;
                                lineHeightSpanArr = lineHeightSpanArr2;
                                i8 = i24;
                                i6 = i22;
                                i7 = i23;
                                if (spanned != null) {
                                    TabStopSpan[] tabStopSpanArr = (TabStopSpan[]) getParagraphSpans(spanned, i20, i21, TabStopSpan.class);
                                    if (tabStopSpanArr.length > 0) {
                                        int[] iArr6 = new int[tabStopSpanArr.length];
                                        for (int i27 = 0; i27 < tabStopSpanArr.length; i27++) {
                                            iArr6[i27] = tabStopSpanArr[i27].getTabStop();
                                        }
                                        Arrays.sort(iArr6, 0, iArr6.length);
                                        iArr4 = iArr6;
                                        MeasuredParagraph measuredParagraph = paragraphInfoArr2[i2].measured;
                                        char[] chars = measuredParagraph.getChars();
                                        int[] rawArray = measuredParagraph.getSpanEndCache().getRawArray();
                                        int[] rawArray2 = measuredParagraph.getFontMetrics().getRawArray();
                                        AutoGrowArray.FloatArray floatArray4 = floatArray;
                                        floatArray4.resize(chars.length);
                                        i9 = i;
                                        int i28 = i2;
                                        PrecomputedText.ParagraphInfo[] paragraphInfoArr4 = paragraphInfoArr2;
                                        Spanned spanned4 = spanned;
                                        MeasuredParagraph measuredParagraph2 = measuredParagraph;
                                        int nComputeLineBreaks = nComputeLineBreaks(nInit, chars, measuredParagraph.getNativePtr(), i21 - i20, i6, i8, i7, iArr4, 20, staticLayout2.mLineCount, lineBreaks2, lineBreaks2.breaks.length, lineBreaks2.breaks, lineBreaks2.widths, lineBreaks2.ascents, lineBreaks2.descents, lineBreaks2.flags, floatArray4.getRawArray());
                                        int[] iArr7 = lineBreaks2.breaks;
                                        float[] fArr = lineBreaks2.widths;
                                        float[] fArr2 = lineBreaks2.ascents;
                                        float[] fArr3 = lineBreaks2.descents;
                                        int[] iArr8 = lineBreaks2.flags;
                                        i10 = staticLayout2.mMaximumVisibleLineCount - staticLayout2.mLineCount;
                                        if (truncateAt != null) {
                                            truncateAt3 = truncateAt;
                                            if (truncateAt3 != TextUtils.TruncateAt.END) {
                                                cArr = chars;
                                                z7 = true;
                                                if (staticLayout2.mMaximumVisibleLineCount == 1 && truncateAt3 != TextUtils.TruncateAt.MARQUEE) {
                                                }
                                            } else {
                                                cArr = chars;
                                                z7 = true;
                                            }
                                            z6 = z7;
                                            if (i10 > 0 || i10 >= nComputeLineBreaks || !z6) {
                                                truncateAt4 = truncateAt3;
                                                i11 = nComputeLineBreaks;
                                            } else {
                                                int i29 = i10 - 1;
                                                int i30 = i29;
                                                float f6 = 0.0f;
                                                int i31 = 0;
                                                while (i30 < nComputeLineBreaks) {
                                                    int i32 = i10;
                                                    if (i30 == nComputeLineBreaks - 1) {
                                                        f6 += fArr[i30];
                                                        truncateAt5 = truncateAt3;
                                                    } else {
                                                        truncateAt5 = truncateAt3;
                                                        for (int i33 = i30 == 0 ? 0 : iArr7[i30 - 1]; i33 < iArr7[i30]; i33++) {
                                                            f6 += floatArray4.get(i33);
                                                        }
                                                    }
                                                    i31 |= iArr8[i30] & 536870912;
                                                    i30++;
                                                    i10 = i32;
                                                    truncateAt3 = truncateAt5;
                                                }
                                                truncateAt4 = truncateAt3;
                                                iArr7[i29] = iArr7[nComputeLineBreaks - 1];
                                                fArr[i29] = f6;
                                                iArr8[i29] = i31;
                                                i11 = i10;
                                            }
                                            i12 = i20;
                                            int i34 = i12;
                                            LineBreaks lineBreaks3 = lineBreaks2;
                                            float[] fArr4 = fArr;
                                            int i35 = 0;
                                            int i36 = 0;
                                            int i37 = 0;
                                            int i38 = 0;
                                            int i39 = 0;
                                            int i40 = 0;
                                            int i41 = 0;
                                            while (i12 < i21) {
                                                int i42 = i36 + 1;
                                                int i43 = rawArray[i36];
                                                int i44 = i37 * 4;
                                                int i45 = i21;
                                                AutoGrowArray.FloatArray floatArray5 = floatArray4;
                                                Paint.FontMetricsInt fontMetricsInt4 = fontMetricsInt;
                                                fontMetricsInt4.top = rawArray2[i44 + 0];
                                                fontMetricsInt4.bottom = rawArray2[i44 + 1];
                                                fontMetricsInt4.ascent = rawArray2[i44 + 2];
                                                fontMetricsInt4.descent = rawArray2[i44 + 3];
                                                int i46 = i37 + 1;
                                                if (fontMetricsInt4.top < i38) {
                                                    i38 = fontMetricsInt4.top;
                                                }
                                                if (fontMetricsInt4.ascent < i39) {
                                                    i39 = fontMetricsInt4.ascent;
                                                }
                                                if (fontMetricsInt4.descent > i35) {
                                                    i35 = fontMetricsInt4.descent;
                                                }
                                                if (fontMetricsInt4.bottom > i40) {
                                                    i40 = fontMetricsInt4.bottom;
                                                }
                                                int i47 = i41;
                                                while (i47 < i11 && iArr7[i47] + i20 < i12) {
                                                    i47++;
                                                }
                                                int i48 = i39;
                                                int i49 = i38;
                                                int i50 = i47;
                                                int i51 = i35;
                                                int i52 = i50;
                                                while (i52 < i11 && iArr7[i52] + i20 <= i43) {
                                                    int i53 = i20 + iArr7[i52];
                                                    boolean z11 = i53 < i16;
                                                    if (z8) {
                                                        i48 = Math.min(i48, Math.round(fArr2[i52]));
                                                    }
                                                    int i54 = i52;
                                                    int i55 = i45;
                                                    int i56 = i20;
                                                    int i57 = i28;
                                                    TextUtils.TruncateAt truncateAt7 = truncateAt4;
                                                    int[] iArr9 = iArr8;
                                                    PrecomputedText.ParagraphInfo[] paragraphInfoArr5 = paragraphInfoArr4;
                                                    LineBreaks lineBreaks4 = lineBreaks3;
                                                    float[] fArr5 = fArr3;
                                                    float[] fArr6 = fArr2;
                                                    Paint.FontMetricsInt fontMetricsInt5 = fontMetricsInt4;
                                                    float f7 = f;
                                                    Spanned spanned5 = spanned4;
                                                    TextDirectionHeuristic textDirectionHeuristic4 = textDirectionHeuristic2;
                                                    AutoGrowArray.FloatArray floatArray6 = floatArray5;
                                                    int i58 = i11;
                                                    TextPaint textPaint4 = textPaint2;
                                                    char[] cArr2 = cArr;
                                                    int i59 = i16;
                                                    int i60 = i5;
                                                    MeasuredParagraph measuredParagraph3 = measuredParagraph2;
                                                    float[] fArr7 = fArr4;
                                                    int[] iArr10 = iArr7;
                                                    CharSequence charSequence6 = charSequence3;
                                                    i9 = out(charSequence3, i34, i53, i48, z8 ? Math.max(i51, Math.round(fArr3[i52])) : i51, i49, i40, i9, f3, f4, lineHeightSpanArr, iArr3, fontMetricsInt5, iArr8[i52], z10, measuredParagraph3, i59, z, z2, z9, cArr2, floatArray5.getRawArray(), i56, truncateAt7, f7, fArr4[i52], textPaint4, z11);
                                                    i43 = i43;
                                                    if (i53 < i43) {
                                                        fontMetricsInt4 = fontMetricsInt5;
                                                        int i61 = fontMetricsInt4.top;
                                                        i40 = fontMetricsInt4.bottom;
                                                        i48 = fontMetricsInt4.ascent;
                                                        i51 = fontMetricsInt4.descent;
                                                        i49 = i61;
                                                    } else {
                                                        fontMetricsInt4 = fontMetricsInt5;
                                                        i48 = 0;
                                                        i51 = 0;
                                                        i49 = 0;
                                                        i40 = 0;
                                                    }
                                                    int i62 = i54 + 1;
                                                    if (this.mLineCount >= this.mMaximumVisibleLineCount && this.mEllipsized) {
                                                        return;
                                                    }
                                                    i34 = i53;
                                                    i52 = i62;
                                                    i20 = i56;
                                                    i28 = i57;
                                                    iArr8 = iArr9;
                                                    paragraphInfoArr4 = paragraphInfoArr5;
                                                    lineBreaks3 = lineBreaks4;
                                                    truncateAt4 = truncateAt7;
                                                    fArr3 = fArr5;
                                                    f = f7;
                                                    spanned4 = spanned5;
                                                    fArr2 = fArr6;
                                                    floatArray5 = floatArray6;
                                                    cArr = cArr2;
                                                    measuredParagraph2 = measuredParagraph3;
                                                    fArr4 = fArr7;
                                                    iArr7 = iArr10;
                                                    i11 = i58;
                                                    i45 = i55;
                                                    textDirectionHeuristic2 = textDirectionHeuristic4;
                                                    textPaint2 = textPaint4;
                                                    i16 = i59;
                                                    i5 = i60;
                                                    charSequence3 = charSequence6;
                                                }
                                                int i63 = i52;
                                                i35 = i51;
                                                i38 = i49;
                                                fontMetricsInt = fontMetricsInt4;
                                                i37 = i46;
                                                i20 = i20;
                                                i28 = i28;
                                                iArr8 = iArr8;
                                                paragraphInfoArr4 = paragraphInfoArr4;
                                                lineBreaks3 = lineBreaks3;
                                                truncateAt4 = truncateAt4;
                                                fArr3 = fArr3;
                                                f = f;
                                                spanned4 = spanned4;
                                                fArr2 = fArr2;
                                                floatArray4 = floatArray5;
                                                cArr = cArr;
                                                measuredParagraph2 = measuredParagraph2;
                                                fArr4 = fArr4;
                                                iArr7 = iArr7;
                                                i11 = i11;
                                                i21 = i45;
                                                i41 = i63;
                                                textDirectionHeuristic2 = textDirectionHeuristic2;
                                                textPaint2 = textPaint2;
                                                i16 = i16;
                                                i5 = i5;
                                                charSequence3 = charSequence3;
                                                i39 = i48;
                                                i12 = i43;
                                                i36 = i42;
                                            }
                                            floatArray2 = floatArray4;
                                            i3 = i16;
                                            f2 = f;
                                            fontMetricsInt2 = fontMetricsInt;
                                            textDirectionHeuristic = textDirectionHeuristic2;
                                            textPaint = textPaint2;
                                            i13 = i5;
                                            charSequence = charSequence3;
                                            i14 = i28;
                                            paragraphInfoArr3 = paragraphInfoArr4;
                                            spanned2 = spanned4;
                                            truncateAt2 = truncateAt4;
                                            lineBreaks = lineBreaks3;
                                            staticLayout = this;
                                            if (i21 != i3) {
                                                i4 = i9;
                                                i15 = i13;
                                                break;
                                            }
                                            i2 = i14 + 1;
                                            i16 = i3;
                                            staticLayout2 = staticLayout;
                                            fontMetricsInt = fontMetricsInt2;
                                            paragraphInfoArr2 = paragraphInfoArr3;
                                            lineBreaks2 = lineBreaks;
                                            truncateAt = truncateAt2;
                                            z5 = false;
                                            f = f2;
                                            spanned = spanned2;
                                            floatArray = floatArray2;
                                            iArr2 = iArr3;
                                            i = i9;
                                            textDirectionHeuristic3 = textDirectionHeuristic;
                                            textPaint3 = textPaint;
                                            i15 = i13;
                                            charSequence4 = charSequence;
                                        } else {
                                            cArr = chars;
                                            truncateAt3 = truncateAt;
                                        }
                                        z6 = false;
                                        if (i10 > 0) {
                                        }
                                        truncateAt4 = truncateAt3;
                                        i11 = nComputeLineBreaks;
                                        i12 = i20;
                                        int i342 = i12;
                                        LineBreaks lineBreaks32 = lineBreaks2;
                                        float[] fArr42 = fArr;
                                        int i352 = 0;
                                        int i362 = 0;
                                        int i372 = 0;
                                        int i382 = 0;
                                        int i392 = 0;
                                        int i402 = 0;
                                        int i412 = 0;
                                        while (i12 < i21) {
                                        }
                                        floatArray2 = floatArray4;
                                        i3 = i16;
                                        f2 = f;
                                        fontMetricsInt2 = fontMetricsInt;
                                        textDirectionHeuristic = textDirectionHeuristic2;
                                        textPaint = textPaint2;
                                        i13 = i5;
                                        charSequence = charSequence3;
                                        i14 = i28;
                                        paragraphInfoArr3 = paragraphInfoArr4;
                                        spanned2 = spanned4;
                                        truncateAt2 = truncateAt4;
                                        lineBreaks = lineBreaks32;
                                        staticLayout = this;
                                        if (i21 != i3) {
                                        }
                                    }
                                }
                                iArr4 = null;
                                MeasuredParagraph measuredParagraph4 = paragraphInfoArr2[i2].measured;
                                char[] chars2 = measuredParagraph4.getChars();
                                int[] rawArray3 = measuredParagraph4.getSpanEndCache().getRawArray();
                                int[] rawArray22 = measuredParagraph4.getFontMetrics().getRawArray();
                                AutoGrowArray.FloatArray floatArray42 = floatArray;
                                floatArray42.resize(chars2.length);
                                i9 = i;
                                int i282 = i2;
                                PrecomputedText.ParagraphInfo[] paragraphInfoArr42 = paragraphInfoArr2;
                                Spanned spanned42 = spanned;
                                MeasuredParagraph measuredParagraph22 = measuredParagraph4;
                                int nComputeLineBreaks2 = nComputeLineBreaks(nInit, chars2, measuredParagraph4.getNativePtr(), i21 - i20, i6, i8, i7, iArr4, 20, staticLayout2.mLineCount, lineBreaks2, lineBreaks2.breaks.length, lineBreaks2.breaks, lineBreaks2.widths, lineBreaks2.ascents, lineBreaks2.descents, lineBreaks2.flags, floatArray42.getRawArray());
                                int[] iArr72 = lineBreaks2.breaks;
                                float[] fArr8 = lineBreaks2.widths;
                                float[] fArr22 = lineBreaks2.ascents;
                                float[] fArr32 = lineBreaks2.descents;
                                int[] iArr82 = lineBreaks2.flags;
                                i10 = staticLayout2.mMaximumVisibleLineCount - staticLayout2.mLineCount;
                                if (truncateAt != null) {
                                }
                                z6 = false;
                                if (i10 > 0) {
                                }
                                truncateAt4 = truncateAt3;
                                i11 = nComputeLineBreaks2;
                                i12 = i20;
                                int i3422 = i12;
                                LineBreaks lineBreaks322 = lineBreaks2;
                                float[] fArr422 = fArr8;
                                int i3522 = 0;
                                int i3622 = 0;
                                int i3722 = 0;
                                int i3822 = 0;
                                int i3922 = 0;
                                int i4022 = 0;
                                int i4122 = 0;
                                while (i12 < i21) {
                                }
                                floatArray2 = floatArray42;
                                i3 = i16;
                                f2 = f;
                                fontMetricsInt2 = fontMetricsInt;
                                textDirectionHeuristic = textDirectionHeuristic2;
                                textPaint = textPaint2;
                                i13 = i5;
                                charSequence = charSequence3;
                                i14 = i282;
                                paragraphInfoArr3 = paragraphInfoArr42;
                                spanned2 = spanned42;
                                truncateAt2 = truncateAt4;
                                lineBreaks = lineBreaks322;
                                staticLayout = this;
                                if (i21 != i3) {
                                }
                            }
                        } else {
                            textDirectionHeuristic2 = textDirectionHeuristic3;
                            textPaint2 = textPaint3;
                            i5 = i15;
                            charSequence3 = charSequence4;
                            iArr3 = iArr2;
                            i6 = i17;
                            i7 = i6;
                            i8 = 1;
                        }
                        lineHeightSpanArr = null;
                        if (spanned != null) {
                        }
                        iArr4 = null;
                        MeasuredParagraph measuredParagraph42 = paragraphInfoArr2[i2].measured;
                        char[] chars22 = measuredParagraph42.getChars();
                        int[] rawArray32 = measuredParagraph42.getSpanEndCache().getRawArray();
                        int[] rawArray222 = measuredParagraph42.getFontMetrics().getRawArray();
                        AutoGrowArray.FloatArray floatArray422 = floatArray;
                        floatArray422.resize(chars22.length);
                        i9 = i;
                        int i2822 = i2;
                        PrecomputedText.ParagraphInfo[] paragraphInfoArr422 = paragraphInfoArr2;
                        Spanned spanned422 = spanned;
                        MeasuredParagraph measuredParagraph222 = measuredParagraph42;
                        int nComputeLineBreaks22 = nComputeLineBreaks(nInit, chars22, measuredParagraph42.getNativePtr(), i21 - i20, i6, i8, i7, iArr4, 20, staticLayout2.mLineCount, lineBreaks2, lineBreaks2.breaks.length, lineBreaks2.breaks, lineBreaks2.widths, lineBreaks2.ascents, lineBreaks2.descents, lineBreaks2.flags, floatArray422.getRawArray());
                        int[] iArr722 = lineBreaks2.breaks;
                        float[] fArr82 = lineBreaks2.widths;
                        float[] fArr222 = lineBreaks2.ascents;
                        float[] fArr322 = lineBreaks2.descents;
                        int[] iArr822 = lineBreaks2.flags;
                        i10 = staticLayout2.mMaximumVisibleLineCount - staticLayout2.mLineCount;
                        if (truncateAt != null) {
                        }
                        z6 = false;
                        if (i10 > 0) {
                        }
                        truncateAt4 = truncateAt3;
                        i11 = nComputeLineBreaks22;
                        i12 = i20;
                        int i34222 = i12;
                        LineBreaks lineBreaks3222 = lineBreaks2;
                        float[] fArr4222 = fArr82;
                        int i35222 = 0;
                        int i36222 = 0;
                        int i37222 = 0;
                        int i38222 = 0;
                        int i39222 = 0;
                        int i40222 = 0;
                        int i41222 = 0;
                        while (i12 < i21) {
                        }
                        floatArray2 = floatArray422;
                        i3 = i16;
                        f2 = f;
                        fontMetricsInt2 = fontMetricsInt;
                        textDirectionHeuristic = textDirectionHeuristic2;
                        textPaint = textPaint2;
                        i13 = i5;
                        charSequence = charSequence3;
                        i14 = i2822;
                        paragraphInfoArr3 = paragraphInfoArr422;
                        spanned2 = spanned422;
                        truncateAt2 = truncateAt4;
                        lineBreaks = lineBreaks3222;
                        staticLayout = this;
                        if (i21 != i3) {
                        }
                    } finally {
                        nFinish(nInit);
                    }
                }
                if (i3 == i15) {
                    charSequence2 = charSequence;
                    if (charSequence2.charAt(i3 - 1) == '\n') {
                    }
                }
                charSequence2 = charSequence;
                if (staticLayout.mLineCount < staticLayout.mMaximumVisibleLineCount) {
                    MeasuredParagraph buildForBidi = MeasuredParagraph.buildForBidi(charSequence2, i3, i3, textDirectionHeuristic, null);
                    TextPaint textPaint5 = textPaint;
                    textPaint5.getFontMetricsInt(fontMetricsInt2);
                    out(charSequence2, i3, i3, fontMetricsInt2.ascent, fontMetricsInt2.descent, fontMetricsInt2.top, fontMetricsInt2.bottom, i4, f3, f4, null, null, fontMetricsInt2, 0, z10, buildForBidi, i3, z, z2, z9, null, null, i15, truncateAt2, f2, 0.0f, textPaint5, false);
                }
            }
        } else {
            fontMetricsInt = fontMetricsInt3;
            floatArray = floatArray3;
            truncateAt = truncateAt6;
            f = f5;
            z3 = false;
            spanned = spanned3;
        }
        paragraphInfoArr = null;
        z4 = z3;
        if (paragraphInfoArr == null) {
        }
        paragraphInfoArr2 = paragraphInfoArr;
        i = z4 ? 1 : 0;
        i2 = i;
        iArr2 = null;
        z5 = z4;
        while (true) {
            if (i2 < paragraphInfoArr2.length) {
            }
            i2 = i14 + 1;
            i16 = i3;
            staticLayout2 = staticLayout;
            fontMetricsInt = fontMetricsInt2;
            paragraphInfoArr2 = paragraphInfoArr3;
            lineBreaks2 = lineBreaks;
            truncateAt = truncateAt2;
            z5 = false;
            f = f2;
            spanned = spanned2;
            floatArray = floatArray2;
            iArr2 = iArr3;
            i = i9;
            textDirectionHeuristic3 = textDirectionHeuristic;
            textPaint3 = textPaint;
            i15 = i13;
            charSequence4 = charSequence;
        }
        if (i3 == i15) {
        }
        if (staticLayout.mLineCount < staticLayout.mMaximumVisibleLineCount) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01b4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int out(CharSequence charSequence, int i, int i2, int i3, int i4, int i5, int i6, int i7, float f, float f2, LineHeightSpan[] lineHeightSpanArr, int[] iArr, Paint.FontMetricsInt fontMetricsInt, int i8, boolean z, MeasuredParagraph measuredParagraph, int i9, boolean z2, boolean z3, boolean z4, char[] cArr, float[] fArr, int i10, TextUtils.TruncateAt truncateAt, float f3, float f4, TextPaint textPaint, boolean z5) {
        int[] iArr2;
        int i11;
        TextUtils.TruncateAt truncateAt2;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        boolean z6;
        int i19;
        int i20;
        boolean z7;
        int i21;
        int i22;
        TextUtils.TruncateAt truncateAt3;
        int i23;
        int i24;
        int i25 = i9;
        int i26 = i10;
        TextUtils.TruncateAt truncateAt4 = truncateAt;
        int i27 = this.mLineCount;
        int i28 = i27 * this.mColumns;
        boolean z8 = true;
        int i29 = i28 + this.mColumns + 1;
        int[] iArr3 = this.mLines;
        int paragraphDir = measuredParagraph.getParagraphDir();
        if (i29 >= iArr3.length) {
            int[] newUnpaddedIntArray = ArrayUtils.newUnpaddedIntArray(GrowingArrayUtils.growSize(i29));
            System.arraycopy(iArr3, 0, newUnpaddedIntArray, 0, iArr3.length);
            this.mLines = newUnpaddedIntArray;
            iArr2 = newUnpaddedIntArray;
        } else {
            iArr2 = iArr3;
        }
        if (i27 >= this.mLineDirections.length) {
            Layout.Directions[] directionsArr = (Layout.Directions[]) ArrayUtils.newUnpaddedArray(Layout.Directions.class, GrowingArrayUtils.growSize(i27));
            System.arraycopy(this.mLineDirections, 0, directionsArr, 0, this.mLineDirections.length);
            this.mLineDirections = directionsArr;
        }
        if (lineHeightSpanArr != null) {
            fontMetricsInt.ascent = i3;
            fontMetricsInt.descent = i4;
            fontMetricsInt.top = i5;
            fontMetricsInt.bottom = i6;
            int i30 = 0;
            while (i30 < lineHeightSpanArr.length) {
                if (lineHeightSpanArr[i30] instanceof LineHeightSpan.WithDensity) {
                    i21 = i30;
                    i22 = i27;
                    truncateAt3 = truncateAt4;
                    i23 = i26;
                    i24 = i25;
                    ((LineHeightSpan.WithDensity) lineHeightSpanArr[i30]).chooseHeight(charSequence, i, i2, iArr[i30], i7, fontMetricsInt, textPaint);
                } else {
                    i21 = i30;
                    i22 = i27;
                    truncateAt3 = truncateAt4;
                    i23 = i26;
                    i24 = i25;
                    lineHeightSpanArr[i21].chooseHeight(charSequence, i, i2, iArr[i21], i7, fontMetricsInt);
                }
                i30 = i21 + 1;
                i25 = i24;
                i26 = i23;
                truncateAt4 = truncateAt3;
                i27 = i22;
                z8 = true;
            }
            i11 = i27;
            truncateAt2 = truncateAt4;
            i12 = i26;
            i13 = i25;
            i15 = fontMetricsInt.ascent;
            i16 = fontMetricsInt.descent;
            i17 = fontMetricsInt.top;
            i14 = fontMetricsInt.bottom;
        } else {
            i11 = i27;
            truncateAt2 = truncateAt4;
            i12 = i26;
            i13 = i25;
            i14 = i6;
            i15 = i3;
            i16 = i4;
            i17 = i5;
        }
        boolean z9 = i11 == 0;
        boolean z10 = i11 + 1 == this.mMaximumVisibleLineCount;
        if (truncateAt2 != null) {
            if (z5) {
                i20 = 1;
                if (this.mLineCount + 1 == this.mMaximumVisibleLineCount) {
                    z7 = true;
                    if ((((this.mMaximumVisibleLineCount != i20 && z5) || (z9 && !z5)) && truncateAt2 != TextUtils.TruncateAt.MARQUEE) || (!z9 && ((z10 || !z5) && truncateAt2 == TextUtils.TruncateAt.END))) {
                        calculateEllipsis(i, i2, fArr, i10, f3, truncateAt, i11, f4, textPaint, z7);
                    }
                }
            } else {
                i20 = 1;
            }
            z7 = false;
            if ((((this.mMaximumVisibleLineCount != i20 && z5) || (z9 && !z5)) && truncateAt2 != TextUtils.TruncateAt.MARQUEE) || (!z9 && ((z10 || !z5) && truncateAt2 == TextUtils.TruncateAt.END))) {
            }
        }
        if (!this.mEllipsized) {
            boolean z11 = i12 != i13 && i13 > 0 && charSequence.charAt(i13 + (-1)) == '\n';
            if (i2 != i13 || z11) {
                i18 = i;
                z6 = i18 == i13 && z11;
                if (z9) {
                    if (z3) {
                        this.mTopPadding = i17 - i15;
                    }
                    if (z2) {
                        i15 = i17;
                    }
                }
                if (z6) {
                    if (z3) {
                        this.mBottomPadding = i14 - i16;
                    }
                    if (z2) {
                        i16 = i14;
                    }
                }
                if (z || (!z4 && z6)) {
                    i19 = 0;
                } else {
                    double d = ((i16 - i15) * (f - 1.0f)) + f2;
                    i19 = d >= 0.0d ? (int) (d + EXTRA_ROUNDING) : -((int) ((-d) + EXTRA_ROUNDING));
                }
                int i31 = i28 + 0;
                iArr2[i31] = i18;
                int i32 = i12;
                iArr2[i28 + 1] = i7;
                iArr2[i28 + 2] = i16 + i19;
                iArr2[i28 + 3] = i19;
                if (!this.mEllipsized && z10) {
                    if (!z2) {
                        i14 = i16;
                    }
                    this.mMaxLineHeight = i7 + (i14 - i15);
                }
                int i33 = i7 + (i16 - i15) + i19;
                iArr2[i28 + this.mColumns + 0] = i2;
                iArr2[i28 + this.mColumns + 1] = i33;
                iArr2[i31] = iArr2[i31] | (i8 & 536870912);
                iArr2[i28 + 4] = i8;
                iArr2[i31] = iArr2[i31] | (paragraphDir << 30);
                this.mLineDirections[i11] = measuredParagraph.getDirections(i18 - i32, i2 - i32);
                this.mLineCount++;
                return i33;
            }
        }
        z6 = true;
        i18 = i;
        if (z9) {
        }
        if (z6) {
        }
        if (z) {
        }
        i19 = 0;
        int i312 = i28 + 0;
        iArr2[i312] = i18;
        int i322 = i12;
        iArr2[i28 + 1] = i7;
        iArr2[i28 + 2] = i16 + i19;
        iArr2[i28 + 3] = i19;
        if (!this.mEllipsized) {
            if (!z2) {
            }
            this.mMaxLineHeight = i7 + (i14 - i15);
        }
        int i332 = i7 + (i16 - i15) + i19;
        iArr2[i28 + this.mColumns + 0] = i2;
        iArr2[i28 + this.mColumns + 1] = i332;
        iArr2[i312] = iArr2[i312] | (i8 & 536870912);
        iArr2[i28 + 4] = i8;
        iArr2[i312] = iArr2[i312] | (paragraphDir << 30);
        this.mLineDirections[i11] = measuredParagraph.getDirections(i18 - i322, i2 - i322);
        this.mLineCount++;
        return i332;
    }

    private void calculateEllipsis(int i, int i2, float[] fArr, int i3, float f, TextUtils.TruncateAt truncateAt, int i4, float f2, TextPaint textPaint, boolean z) {
        int i5;
        float totalInsets = f - getTotalInsets(i4);
        int i6 = 0;
        if (f2 <= totalInsets && !z) {
            this.mLines[(this.mColumns * i4) + 5] = 0;
            this.mLines[(this.mColumns * i4) + 6] = 0;
            return;
        }
        float measureText = textPaint.measureText(TextUtils.getEllipsisString(truncateAt));
        int i7 = i2 - i;
        float f3 = 0.0f;
        if (truncateAt == TextUtils.TruncateAt.START) {
            if (this.mMaximumVisibleLineCount == 1) {
                int i8 = i7;
                float f4 = 0.0f;
                while (true) {
                    if (i8 <= 0) {
                        break;
                    }
                    f4 += fArr[((i8 - 1) + i) - i3];
                    if (f4 + measureText > totalInsets) {
                        while (i8 < i7 && fArr[(i8 + i) - i3] == 0.0f) {
                            i8++;
                        }
                    } else {
                        i8--;
                    }
                }
                i5 = i8;
            } else {
                if (Log.isLoggable(TAG, 5)) {
                    Log.w(TAG, "Start Ellipsis only supported with one line");
                }
                i5 = 0;
            }
        } else if (truncateAt == TextUtils.TruncateAt.END || truncateAt == TextUtils.TruncateAt.MARQUEE || truncateAt == TextUtils.TruncateAt.END_SMALL) {
            while (i6 < i7) {
                f3 += fArr[(i6 + i) - i3];
                if (f3 + measureText > totalInsets) {
                    break;
                } else {
                    i6++;
                }
            }
            i5 = i7 - i6;
            if (z && i5 == 0 && i7 > 0) {
                i6 = i7 - 1;
                i5 = 1;
            }
        } else if (this.mMaximumVisibleLineCount == 1) {
            float f5 = totalInsets - measureText;
            float f6 = f5 / 2.0f;
            int i9 = i7;
            float f7 = 0.0f;
            while (true) {
                if (i9 <= 0) {
                    break;
                }
                float f8 = fArr[((i9 - 1) + i) - i3] + f7;
                if (f8 > f6) {
                    while (i9 < i7 && fArr[(i9 + i) - i3] == 0.0f) {
                        i9++;
                    }
                } else {
                    i9--;
                    f7 = f8;
                }
            }
            float f9 = f5 - f7;
            while (i6 < i9) {
                f3 += fArr[(i6 + i) - i3];
                if (f3 > f9) {
                    break;
                } else {
                    i6++;
                }
            }
            i5 = i9 - i6;
        } else {
            if (Log.isLoggable(TAG, 5)) {
                Log.w(TAG, "Middle Ellipsis only supported with one line");
            }
            i5 = 0;
        }
        this.mEllipsized = true;
        this.mLines[(this.mColumns * i4) + 5] = i6;
        this.mLines[(this.mColumns * i4) + 6] = i5;
    }

    private float getTotalInsets(int i) {
        int i2 = this.mLeftIndents != null ? this.mLeftIndents[Math.min(i, this.mLeftIndents.length - 1)] : 0;
        if (this.mRightIndents != null) {
            i2 += this.mRightIndents[Math.min(i, this.mRightIndents.length - 1)];
        }
        return i2;
    }

    @Override // android.text.Layout
    public int getLineForVertical(int i) {
        int i2 = this.mLineCount;
        int[] iArr = this.mLines;
        int i3 = -1;
        while (i2 - i3 > 1) {
            int i4 = (i2 + i3) >> 1;
            if (iArr[(this.mColumns * i4) + 1] > i) {
                i2 = i4;
            } else {
                i3 = i4;
            }
        }
        if (i3 < 0) {
            return 0;
        }
        return i3;
    }

    @Override // android.text.Layout
    public int getLineCount() {
        return this.mLineCount;
    }

    @Override // android.text.Layout
    public int getLineTop(int i) {
        return this.mLines[(this.mColumns * i) + 1];
    }

    @Override // android.text.Layout
    public int getLineExtra(int i) {
        return this.mLines[(this.mColumns * i) + 3];
    }

    @Override // android.text.Layout
    public int getLineDescent(int i) {
        return this.mLines[(this.mColumns * i) + 2];
    }

    @Override // android.text.Layout
    public int getLineStart(int i) {
        return this.mLines[(this.mColumns * i) + 0] & START_MASK;
    }

    @Override // android.text.Layout
    public int getParagraphDirection(int i) {
        return this.mLines[(this.mColumns * i) + 0] >> 30;
    }

    @Override // android.text.Layout
    public boolean getLineContainsTab(int i) {
        return (this.mLines[(this.mColumns * i) + 0] & 536870912) != 0;
    }

    @Override // android.text.Layout
    public final Layout.Directions getLineDirections(int i) {
        if (i > getLineCount()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return this.mLineDirections[i];
    }

    @Override // android.text.Layout
    public int getTopPadding() {
        return this.mTopPadding;
    }

    @Override // android.text.Layout
    public int getBottomPadding() {
        return this.mBottomPadding;
    }

    @Override // android.text.Layout
    public int getHyphen(int i) {
        return this.mLines[(this.mColumns * i) + 4] & 255;
    }

    @Override // android.text.Layout
    public int getIndentAdjust(int i, Layout.Alignment alignment) {
        if (alignment == Layout.Alignment.ALIGN_LEFT) {
            if (this.mLeftIndents == null) {
                return 0;
            }
            return this.mLeftIndents[Math.min(i, this.mLeftIndents.length - 1)];
        }
        if (alignment == Layout.Alignment.ALIGN_RIGHT) {
            if (this.mRightIndents == null) {
                return 0;
            }
            return -this.mRightIndents[Math.min(i, this.mRightIndents.length - 1)];
        }
        if (alignment == Layout.Alignment.ALIGN_CENTER) {
            return ((this.mLeftIndents != null ? this.mLeftIndents[Math.min(i, this.mLeftIndents.length - 1)] : 0) - (this.mRightIndents != null ? this.mRightIndents[Math.min(i, this.mRightIndents.length - 1)] : 0)) >> 1;
        }
        throw new AssertionError("unhandled alignment " + alignment);
    }

    @Override // android.text.Layout
    public int getEllipsisCount(int i) {
        if (this.mColumns < 7) {
            return 0;
        }
        return this.mLines[(this.mColumns * i) + 6];
    }

    @Override // android.text.Layout
    public int getEllipsisStart(int i) {
        if (this.mColumns < 7) {
            return 0;
        }
        return this.mLines[(this.mColumns * i) + 5];
    }

    @Override // android.text.Layout
    public int getEllipsizedWidth() {
        return this.mEllipsizedWidth;
    }

    @Override // android.text.Layout
    public int getHeight(boolean z) {
        if (z && this.mLineCount >= this.mMaximumVisibleLineCount && this.mMaxLineHeight == -1 && Log.isLoggable(TAG, 5)) {
            Log.w(TAG, "maxLineHeight should not be -1.  maxLines:" + this.mMaximumVisibleLineCount + " lineCount:" + this.mLineCount);
        }
        return (!z || this.mLineCount < this.mMaximumVisibleLineCount || this.mMaxLineHeight == -1) ? super.getHeight() : this.mMaxLineHeight;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class LineBreaks {
        private static final int INITIAL_SIZE = 16;
        public int[] breaks = new int[16];
        public float[] widths = new float[16];
        public float[] ascents = new float[16];
        public float[] descents = new float[16];
        public int[] flags = new int[16];

        LineBreaks() {
        }
    }
}
