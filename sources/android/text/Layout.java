package android.text;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.text.TextUtils;
import android.text.method.TextKeyListener;
import android.text.style.AlignmentSpan;
import android.text.style.LeadingMarginSpan;
import android.text.style.LineBackgroundSpan;
import android.text.style.ParagraphStyle;
import android.text.style.ReplacementSpan;
import android.text.style.TabStopSpan;
import com.android.internal.annotations.VisibleForTesting;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.GrowingArrayUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;

/* loaded from: /home/user/work/dex/classes2.dex */
public abstract class Layout {
    public static final int BREAK_STRATEGY_BALANCED = 2;
    public static final int BREAK_STRATEGY_HIGH_QUALITY = 1;
    public static final int BREAK_STRATEGY_SIMPLE = 0;
    public static final float DEFAULT_LINESPACING_ADDITION = 0.0f;
    public static final float DEFAULT_LINESPACING_MULTIPLIER = 1.0f;
    public static final int DIR_LEFT_TO_RIGHT = 1;
    static final int DIR_REQUEST_DEFAULT_LTR = 2;
    static final int DIR_REQUEST_DEFAULT_RTL = -2;
    static final int DIR_REQUEST_LTR = 1;
    static final int DIR_REQUEST_RTL = -1;
    public static final int DIR_RIGHT_TO_LEFT = -1;
    public static final int HYPHENATION_FREQUENCY_FULL = 2;
    public static final int HYPHENATION_FREQUENCY_NONE = 0;
    public static final int HYPHENATION_FREQUENCY_NORMAL = 1;
    public static final int JUSTIFICATION_MODE_INTER_WORD = 1;
    public static final int JUSTIFICATION_MODE_NONE = 0;
    static final int RUN_LEVEL_MASK = 63;
    static final int RUN_LEVEL_SHIFT = 26;
    static final int RUN_RTL_FLAG = 67108864;
    private static final int TAB_INCREMENT = 20;
    public static final int TEXT_SELECTION_LAYOUT_LEFT_TO_RIGHT = 1;
    public static final int TEXT_SELECTION_LAYOUT_RIGHT_TO_LEFT = 0;
    private Alignment mAlignment;
    private int mJustificationMode;
    private SpanSet<LineBackgroundSpan> mLineBackgroundSpans;
    private TextPaint mPaint;
    private float mSpacingAdd;
    private float mSpacingMult;
    private boolean mSpannedText;
    private CharSequence mText;
    private TextDirectionHeuristic mTextDir;
    private int mWidth;
    private TextPaint mWorkPaint;
    private static final ParagraphStyle[] NO_PARA_SPANS = (ParagraphStyle[]) ArrayUtils.emptyArray(ParagraphStyle.class);
    private static final Rect sTempRect = new Rect();
    static final int RUN_LENGTH_MASK = 67108863;

    @VisibleForTesting(visibility = VisibleForTesting.Visibility.PACKAGE)
    public static final Directions DIRS_ALL_LEFT_TO_RIGHT = new Directions(new int[]{0, RUN_LENGTH_MASK});

    @VisibleForTesting(visibility = VisibleForTesting.Visibility.PACKAGE)
    public static final Directions DIRS_ALL_RIGHT_TO_LEFT = new Directions(new int[]{0, 134217727});

    /* loaded from: /home/user/work/dex/classes2.dex */
    public enum Alignment {
        ALIGN_NORMAL,
        ALIGN_OPPOSITE,
        ALIGN_CENTER,
        ALIGN_LEFT,
        ALIGN_RIGHT
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes2.dex */
    public @interface BreakStrategy {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes2.dex */
    public @interface Direction {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes2.dex */
    public @interface HyphenationFrequency {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes2.dex */
    public @interface JustificationMode {
    }

    @FunctionalInterface
    /* loaded from: /home/user/work/dex/classes2.dex */
    public interface SelectionRectangleConsumer {
        void accept(float f, float f2, float f3, float f4, int i);
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes2.dex */
    public @interface TextSelectionLayout {
    }

    public abstract int getBottomPadding();

    public abstract int getEllipsisCount(int i);

    public abstract int getEllipsisStart(int i);

    public int getHyphen(int i) {
        return 0;
    }

    public int getIndentAdjust(int i, Alignment alignment) {
        return 0;
    }

    public abstract boolean getLineContainsTab(int i);

    public abstract int getLineCount();

    public abstract int getLineDescent(int i);

    public abstract Directions getLineDirections(int i);

    public int getLineExtra(int i) {
        return 0;
    }

    public abstract int getLineStart(int i);

    public abstract int getLineTop(int i);

    public abstract int getParagraphDirection(int i);

    public abstract int getTopPadding();

    public static float getDesiredWidth(CharSequence charSequence, TextPaint textPaint) {
        return getDesiredWidth(charSequence, 0, charSequence.length(), textPaint);
    }

    public static float getDesiredWidth(CharSequence charSequence, int i, int i2, TextPaint textPaint) {
        return getDesiredWidth(charSequence, i, i2, textPaint, TextDirectionHeuristics.FIRSTSTRONG_LTR);
    }

    public static float getDesiredWidth(CharSequence charSequence, int i, int i2, TextPaint textPaint, TextDirectionHeuristic textDirectionHeuristic) {
        return getDesiredWidthWithLimit(charSequence, i, i2, textPaint, textDirectionHeuristic, Float.MAX_VALUE);
    }

    public static float getDesiredWidthWithLimit(CharSequence charSequence, int i, int i2, TextPaint textPaint, TextDirectionHeuristic textDirectionHeuristic, float f) {
        float f2 = 0.0f;
        while (i <= i2) {
            int indexOf = TextUtils.indexOf(charSequence, '\n', i, i2);
            if (indexOf < 0) {
                indexOf = i2;
            }
            float measurePara = measurePara(textPaint, charSequence, i, indexOf, textDirectionHeuristic);
            if (measurePara > f) {
                return f;
            }
            if (measurePara > f2) {
                f2 = measurePara;
            }
            i = indexOf + 1;
        }
        return f2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Layout(CharSequence charSequence, TextPaint textPaint, int i, Alignment alignment, float f, float f2) {
        this(charSequence, textPaint, i, alignment, TextDirectionHeuristics.FIRSTSTRONG_LTR, f, f2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Layout(CharSequence charSequence, TextPaint textPaint, int i, Alignment alignment, TextDirectionHeuristic textDirectionHeuristic, float f, float f2) {
        this.mWorkPaint = new TextPaint();
        this.mAlignment = Alignment.ALIGN_NORMAL;
        if (i < 0) {
            throw new IllegalArgumentException("Layout: " + i + " < 0");
        }
        if (textPaint != null) {
            textPaint.bgColor = 0;
            textPaint.baselineShift = 0;
        }
        this.mText = charSequence;
        this.mPaint = textPaint;
        this.mWidth = i;
        this.mAlignment = alignment;
        this.mSpacingMult = f;
        this.mSpacingAdd = f2;
        this.mSpannedText = charSequence instanceof Spanned;
        this.mTextDir = textDirectionHeuristic;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setJustificationMode(int i) {
        this.mJustificationMode = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void replaceWith(CharSequence charSequence, TextPaint textPaint, int i, Alignment alignment, float f, float f2) {
        if (i < 0) {
            throw new IllegalArgumentException("Layout: " + i + " < 0");
        }
        this.mText = charSequence;
        this.mPaint = textPaint;
        this.mWidth = i;
        this.mAlignment = alignment;
        this.mSpacingMult = f;
        this.mSpacingAdd = f2;
        this.mSpannedText = charSequence instanceof Spanned;
    }

    public void draw(Canvas canvas) {
        draw(canvas, null, null, 0);
    }

    public void draw(Canvas canvas, Path path, Paint paint, int i) {
        long lineRangeForDraw = getLineRangeForDraw(canvas);
        int unpackRangeStartFromLong = TextUtils.unpackRangeStartFromLong(lineRangeForDraw);
        int unpackRangeEndFromLong = TextUtils.unpackRangeEndFromLong(lineRangeForDraw);
        if (unpackRangeEndFromLong < 0) {
            return;
        }
        drawBackground(canvas, path, paint, i, unpackRangeStartFromLong, unpackRangeEndFromLong);
        drawText(canvas, unpackRangeStartFromLong, unpackRangeEndFromLong);
    }

    private boolean isJustificationRequired(int i) {
        int lineEnd;
        return (this.mJustificationMode == 0 || (lineEnd = getLineEnd(i)) >= this.mText.length() || this.mText.charAt(lineEnd - 1) == '\n') ? false : true;
    }

    private float getJustifyWidth(int i) {
        int i2;
        int i3;
        int indentAdjust;
        Alignment alignment = this.mAlignment;
        int i4 = this.mWidth;
        int paragraphDirection = getParagraphDirection(i);
        ParagraphStyle[] paragraphStyleArr = NO_PARA_SPANS;
        if (this.mSpannedText) {
            Spanned spanned = (Spanned) this.mText;
            int lineStart = getLineStart(i);
            boolean z = lineStart == 0 || this.mText.charAt(lineStart + (-1)) == '\n';
            if (z) {
                paragraphStyleArr = (ParagraphStyle[]) getParagraphSpans(spanned, lineStart, spanned.nextSpanTransition(lineStart, this.mText.length(), ParagraphStyle.class), ParagraphStyle.class);
                int length = paragraphStyleArr.length - 1;
                while (true) {
                    if (length < 0) {
                        break;
                    }
                    if (paragraphStyleArr[length] instanceof AlignmentSpan) {
                        alignment = ((AlignmentSpan) paragraphStyleArr[length]).getAlignment();
                        break;
                    }
                    length--;
                }
            }
            int length2 = paragraphStyleArr.length;
            int i5 = 0;
            while (true) {
                if (i5 >= length2) {
                    break;
                }
                if (paragraphStyleArr[i5] instanceof LeadingMarginSpan.LeadingMarginSpan2) {
                    if (i < getLineForOffset(spanned.getSpanStart(paragraphStyleArr[i5])) + ((LeadingMarginSpan.LeadingMarginSpan2) paragraphStyleArr[i5]).getLeadingMarginLineCount()) {
                        z = true;
                        break;
                    }
                }
                i5++;
            }
            i2 = i4;
            i3 = 0;
            for (int i6 = 0; i6 < length2; i6++) {
                if (paragraphStyleArr[i6] instanceof LeadingMarginSpan) {
                    LeadingMarginSpan leadingMarginSpan = (LeadingMarginSpan) paragraphStyleArr[i6];
                    if (paragraphDirection == -1) {
                        i2 -= leadingMarginSpan.getLeadingMargin(z);
                    } else {
                        i3 += leadingMarginSpan.getLeadingMargin(z);
                    }
                }
            }
        } else {
            i2 = i4;
            i3 = 0;
        }
        if (alignment == Alignment.ALIGN_LEFT) {
            alignment = paragraphDirection == 1 ? Alignment.ALIGN_NORMAL : Alignment.ALIGN_OPPOSITE;
        } else if (alignment == Alignment.ALIGN_RIGHT) {
            alignment = paragraphDirection == 1 ? Alignment.ALIGN_OPPOSITE : Alignment.ALIGN_NORMAL;
        }
        if (alignment == Alignment.ALIGN_NORMAL) {
            if (paragraphDirection == 1) {
                indentAdjust = getIndentAdjust(i, Alignment.ALIGN_LEFT);
            } else {
                indentAdjust = -getIndentAdjust(i, Alignment.ALIGN_RIGHT);
            }
        } else if (alignment != Alignment.ALIGN_OPPOSITE) {
            indentAdjust = getIndentAdjust(i, Alignment.ALIGN_CENTER);
        } else if (paragraphDirection == 1) {
            indentAdjust = -getIndentAdjust(i, Alignment.ALIGN_RIGHT);
        } else {
            indentAdjust = getIndentAdjust(i, Alignment.ALIGN_LEFT);
        }
        return (i2 - i3) - indentAdjust;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x00e6 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void drawText(Canvas canvas, int i, int i2) {
        int i3;
        int i4;
        TabStops tabStops;
        int i5;
        int i6;
        int i7;
        CharSequence charSequence;
        TextLine textLine;
        int i8;
        int i9;
        Alignment alignment;
        Layout layout;
        int i10;
        int i11;
        TabStops tabStops2;
        int i12;
        int i13;
        Alignment alignment2;
        int i14;
        int i15;
        int indentAdjust;
        int i16;
        TextLine textLine2;
        int i17;
        int i18;
        ParagraphStyle[] paragraphStyleArr;
        Alignment alignment3;
        boolean z;
        boolean z2;
        ParagraphStyle[] paragraphStyleArr2;
        int length;
        int i19;
        boolean z3;
        int i20;
        int i21;
        int i22;
        boolean z4;
        int i23;
        TabStops tabStops3;
        int i24;
        int i25;
        ParagraphStyle[] paragraphStyleArr3;
        int i26;
        int i27;
        CharSequence charSequence2;
        TextLine textLine3;
        Layout layout2 = this;
        int i28 = i;
        int lineTop = layout2.getLineTop(i28);
        int lineStart = layout2.getLineStart(i28);
        ParagraphStyle[] paragraphStyleArr4 = NO_PARA_SPANS;
        TextPaint textPaint = layout2.mWorkPaint;
        textPaint.set(layout2.mPaint);
        CharSequence charSequence3 = layout2.mText;
        Alignment alignment4 = layout2.mAlignment;
        TextLine obtain = TextLine.obtain();
        int i29 = i2;
        int i30 = lineTop;
        int i31 = lineStart;
        TabStops tabStops4 = null;
        int i32 = i28;
        int i33 = 0;
        boolean z5 = false;
        while (i32 <= i29) {
            int i34 = i32 + 1;
            int lineStart2 = layout2.getLineStart(i34);
            boolean isJustificationRequired = layout2.isJustificationRequired(i32);
            int lineVisibleEnd = layout2.getLineVisibleEnd(i32, i31, lineStart2);
            textPaint.setHyphenEdit(layout2.getHyphen(i32));
            int lineTop2 = layout2.getLineTop(i34);
            int lineDescent = lineTop2 - layout2.getLineDescent(i32);
            TextLine textLine4 = obtain;
            int paragraphDirection = layout2.getParagraphDirection(i32);
            boolean z6 = z5;
            int i35 = layout2.mWidth;
            if (layout2.mSpannedText) {
                Spanned spanned = (Spanned) charSequence3;
                int length2 = charSequence3.length();
                if (i31 != 0) {
                    paragraphStyleArr = paragraphStyleArr4;
                    alignment3 = alignment4;
                    if (charSequence3.charAt(i31 - 1) != '\n') {
                        z = false;
                        if (i31 >= i33 || !(i32 == i28 || z)) {
                            z2 = true;
                            i8 = i33;
                            paragraphStyleArr2 = paragraphStyleArr;
                        } else {
                            int nextSpanTransition = spanned.nextSpanTransition(i31, length2, ParagraphStyle.class);
                            ParagraphStyle[] paragraphStyleArr5 = (ParagraphStyle[]) getParagraphSpans(spanned, i31, nextSpanTransition, ParagraphStyle.class);
                            Alignment alignment5 = layout2.mAlignment;
                            z2 = true;
                            int length3 = paragraphStyleArr5.length - 1;
                            while (true) {
                                if (length3 < 0) {
                                    i8 = nextSpanTransition;
                                    break;
                                }
                                i8 = nextSpanTransition;
                                if (paragraphStyleArr5[length3] instanceof AlignmentSpan) {
                                    alignment5 = ((AlignmentSpan) paragraphStyleArr5[length3]).getAlignment();
                                    break;
                                } else {
                                    length3--;
                                    nextSpanTransition = i8;
                                }
                            }
                            paragraphStyleArr2 = paragraphStyleArr5;
                            alignment3 = alignment5;
                            z6 = false;
                        }
                        length = paragraphStyleArr2.length;
                        i19 = 0;
                        while (true) {
                            if (i19 < length) {
                                i3 = lineStart2;
                                z3 = z;
                                break;
                            }
                            if (paragraphStyleArr2[i19] instanceof LeadingMarginSpan.LeadingMarginSpan2) {
                                i3 = lineStart2;
                                if (i32 < layout2.getLineForOffset(spanned.getSpanStart(paragraphStyleArr2[i19])) + ((LeadingMarginSpan.LeadingMarginSpan2) paragraphStyleArr2[i19]).getLeadingMarginLineCount()) {
                                    z3 = z2;
                                    break;
                                }
                            } else {
                                i3 = lineStart2;
                            }
                            i19++;
                            lineStart2 = i3;
                        }
                        i10 = i35;
                        i20 = 0;
                        i11 = 0;
                        while (i20 < length) {
                            if (paragraphStyleArr2[i20] instanceof LeadingMarginSpan) {
                                LeadingMarginSpan leadingMarginSpan = (LeadingMarginSpan) paragraphStyleArr2[i20];
                                if (paragraphDirection == -1) {
                                    i21 = i20;
                                    i22 = length;
                                    z4 = z3;
                                    i23 = i34;
                                    tabStops3 = tabStops4;
                                    i24 = i31;
                                    i25 = i32;
                                    paragraphStyleArr3 = paragraphStyleArr2;
                                    i26 = lineDescent;
                                    i27 = paragraphDirection;
                                    textLine3 = textLine4;
                                    charSequence2 = charSequence3;
                                    leadingMarginSpan.drawLeadingMargin(canvas, textPaint, i10, paragraphDirection, i30, lineDescent, lineTop2, charSequence3, i24, lineVisibleEnd, z, this);
                                    i10 -= leadingMarginSpan.getLeadingMargin(z4);
                                } else {
                                    i21 = i20;
                                    i22 = length;
                                    z4 = z3;
                                    i23 = i34;
                                    tabStops3 = tabStops4;
                                    i24 = i31;
                                    i25 = i32;
                                    paragraphStyleArr3 = paragraphStyleArr2;
                                    i26 = lineDescent;
                                    i27 = paragraphDirection;
                                    charSequence2 = charSequence3;
                                    textLine3 = textLine4;
                                    leadingMarginSpan.drawLeadingMargin(canvas, textPaint, i11, i27, i30, i26, lineTop2, charSequence2, i24, lineVisibleEnd, z, this);
                                    i11 += leadingMarginSpan.getLeadingMargin(z4);
                                }
                            } else {
                                i21 = i20;
                                i22 = length;
                                z4 = z3;
                                i23 = i34;
                                tabStops3 = tabStops4;
                                i24 = i31;
                                i25 = i32;
                                paragraphStyleArr3 = paragraphStyleArr2;
                                i26 = lineDescent;
                                i27 = paragraphDirection;
                                charSequence2 = charSequence3;
                                textLine3 = textLine4;
                            }
                            i20 = i21 + 1;
                            z3 = z4;
                            charSequence3 = charSequence2;
                            paragraphStyleArr2 = paragraphStyleArr3;
                            length = i22;
                            i34 = i23;
                            tabStops4 = tabStops3;
                            i31 = i24;
                            i32 = i25;
                            lineDescent = i26;
                            textLine4 = textLine3;
                            paragraphDirection = i27;
                        }
                        i4 = i34;
                        tabStops = tabStops4;
                        i5 = i31;
                        i6 = lineDescent;
                        i7 = paragraphDirection;
                        charSequence = charSequence3;
                        textLine = textLine4;
                        i9 = i32;
                        paragraphStyleArr4 = paragraphStyleArr2;
                        alignment = alignment3;
                        layout = this;
                    }
                } else {
                    paragraphStyleArr = paragraphStyleArr4;
                    alignment3 = alignment4;
                }
                z = true;
                if (i31 >= i33) {
                }
                z2 = true;
                i8 = i33;
                paragraphStyleArr2 = paragraphStyleArr;
                length = paragraphStyleArr2.length;
                i19 = 0;
                while (true) {
                    if (i19 < length) {
                    }
                    i19++;
                    lineStart2 = i3;
                }
                i10 = i35;
                i20 = 0;
                i11 = 0;
                while (i20 < length) {
                }
                i4 = i34;
                tabStops = tabStops4;
                i5 = i31;
                i6 = lineDescent;
                i7 = paragraphDirection;
                charSequence = charSequence3;
                textLine = textLine4;
                i9 = i32;
                paragraphStyleArr4 = paragraphStyleArr2;
                alignment = alignment3;
                layout = this;
            } else {
                i3 = lineStart2;
                i4 = i34;
                tabStops = tabStops4;
                i5 = i31;
                i6 = lineDescent;
                i7 = paragraphDirection;
                charSequence = charSequence3;
                textLine = textLine4;
                i8 = i33;
                i9 = i32;
                alignment = alignment4;
                layout = this;
                i10 = i35;
                i11 = 0;
            }
            boolean lineContainsTab = layout.getLineContainsTab(i9);
            if (!lineContainsTab || z6) {
                tabStops2 = tabStops;
            } else {
                TabStops tabStops5 = tabStops;
                if (tabStops5 == null) {
                    tabStops5 = new TabStops(20, paragraphStyleArr4);
                } else {
                    tabStops5.reset(20, paragraphStyleArr4);
                }
                tabStops2 = tabStops5;
                z6 = true;
            }
            if (alignment == Alignment.ALIGN_LEFT) {
                i12 = i7;
                i13 = 1;
                alignment2 = i12 == 1 ? Alignment.ALIGN_NORMAL : Alignment.ALIGN_OPPOSITE;
            } else {
                i12 = i7;
                i13 = 1;
                if (alignment == Alignment.ALIGN_RIGHT) {
                    alignment2 = i12 == 1 ? Alignment.ALIGN_OPPOSITE : Alignment.ALIGN_NORMAL;
                } else {
                    alignment2 = alignment;
                }
            }
            if (alignment2 == Alignment.ALIGN_NORMAL) {
                if (i12 == i13) {
                    i17 = layout.getIndentAdjust(i9, Alignment.ALIGN_LEFT);
                    i18 = i11 + i17;
                } else {
                    i17 = -layout.getIndentAdjust(i9, Alignment.ALIGN_RIGHT);
                    i18 = i10 - i17;
                }
                i15 = i17;
                i14 = i18;
            } else {
                int lineExtent = (int) layout.getLineExtent(i9, tabStops2, false);
                if (alignment2 == Alignment.ALIGN_OPPOSITE) {
                    if (i12 == i13) {
                        indentAdjust = -layout.getIndentAdjust(i9, Alignment.ALIGN_RIGHT);
                        i16 = (i10 - lineExtent) - indentAdjust;
                    } else {
                        indentAdjust = layout.getIndentAdjust(i9, Alignment.ALIGN_LEFT);
                        i16 = (i11 - lineExtent) + indentAdjust;
                    }
                    i15 = indentAdjust;
                    i14 = i16;
                } else {
                    int indentAdjust2 = layout.getIndentAdjust(i9, Alignment.ALIGN_CENTER);
                    i14 = (((i10 + i11) - (lineExtent & (-2))) >> 1) + indentAdjust2;
                    i15 = indentAdjust2;
                }
            }
            Directions lineDirections = layout.getLineDirections(i9);
            if (lineDirections == DIRS_ALL_LEFT_TO_RIGHT && !layout.mSpannedText && !lineContainsTab && !isJustificationRequired) {
                canvas.drawText(charSequence, i5, lineVisibleEnd, i14, i6, textPaint);
                textLine2 = textLine;
            } else {
                int i36 = i6;
                int i37 = i14;
                textLine.set(textPaint, charSequence, i5, lineVisibleEnd, i12, lineDirections, lineContainsTab, tabStops2);
                if (isJustificationRequired) {
                    textLine2 = textLine;
                    textLine2.justify((i10 - i11) - i15);
                } else {
                    textLine2 = textLine;
                }
                textLine2.draw(canvas, i37, i30, i36, lineTop2);
            }
            i29 = i2;
            layout2 = layout;
            alignment4 = alignment;
            obtain = textLine2;
            tabStops4 = tabStops2;
            charSequence3 = charSequence;
            i30 = lineTop2;
            z5 = z6;
            i33 = i8;
            i31 = i3;
            i32 = i4;
            i28 = i;
        }
        TextLine.recycle(obtain);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00a4 A[LOOP:1: B:18:0x00a2->B:19:0x00a4, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void drawBackground(Canvas canvas, Path path, Paint paint, int i, int i2, int i3) {
        int i4;
        ParagraphStyle[] paragraphStyleArr;
        int i5;
        if (this.mSpannedText) {
            if (this.mLineBackgroundSpans == null) {
                this.mLineBackgroundSpans = new SpanSet<>(LineBackgroundSpan.class);
            }
            Spanned spanned = (Spanned) this.mText;
            int length = spanned.length();
            int i6 = 0;
            this.mLineBackgroundSpans.init(spanned, 0, length);
            if (this.mLineBackgroundSpans.numberOfSpans > 0) {
                int lineTop = getLineTop(i2);
                int lineStart = getLineStart(i2);
                ParagraphStyle[] paragraphStyleArr2 = NO_PARA_SPANS;
                TextPaint textPaint = this.mPaint;
                int i7 = this.mWidth;
                int i8 = i3;
                int i9 = i2;
                int i10 = lineTop;
                int i11 = lineStart;
                int i12 = 0;
                int i13 = 0;
                while (i9 <= i8) {
                    int i14 = i9 + 1;
                    int lineStart2 = getLineStart(i14);
                    int lineTop2 = getLineTop(i14);
                    int lineDescent = lineTop2 - getLineDescent(i9);
                    if (i11 >= i12) {
                        int nextTransition = this.mLineBackgroundSpans.getNextTransition(i11, length);
                        if (i11 != lineStart2 || i11 == 0) {
                            int i15 = i6;
                            ParagraphStyle[] paragraphStyleArr3 = paragraphStyleArr2;
                            int i16 = i15;
                            while (i15 < this.mLineBackgroundSpans.numberOfSpans) {
                                if (this.mLineBackgroundSpans.spanStarts[i15] < lineStart2 && this.mLineBackgroundSpans.spanEnds[i15] > i11) {
                                    ParagraphStyle[] paragraphStyleArr4 = (ParagraphStyle[]) GrowingArrayUtils.append(paragraphStyleArr3, i16, this.mLineBackgroundSpans.spans[i15]);
                                    i16++;
                                    paragraphStyleArr3 = paragraphStyleArr4;
                                }
                                i15++;
                            }
                            i4 = nextTransition;
                            paragraphStyleArr = paragraphStyleArr3;
                            i6 = i16;
                            i5 = 0;
                            while (i5 < i6) {
                                int i17 = lineStart2;
                                int i18 = i11;
                                int i19 = i9;
                                ((LineBackgroundSpan) paragraphStyleArr[i5]).drawBackground(canvas, textPaint, 0, i7, i10, lineDescent, lineTop2, spanned, i18, i17, i19);
                                i5++;
                                i6 = i6;
                                i14 = i14;
                                lineStart2 = i17;
                                i11 = i18;
                                i9 = i19;
                                i7 = i7;
                                textPaint = textPaint;
                                length = length;
                            }
                            i8 = i3;
                            i10 = lineTop2;
                            i13 = i6;
                            paragraphStyleArr2 = paragraphStyleArr;
                            i12 = i4;
                            i9 = i14;
                            i11 = lineStart2;
                            i6 = 0;
                        } else {
                            i4 = nextTransition;
                        }
                    } else {
                        i4 = i12;
                        i6 = i13;
                    }
                    paragraphStyleArr = paragraphStyleArr2;
                    i5 = 0;
                    while (i5 < i6) {
                    }
                    i8 = i3;
                    i10 = lineTop2;
                    i13 = i6;
                    paragraphStyleArr2 = paragraphStyleArr;
                    i12 = i4;
                    i9 = i14;
                    i11 = lineStart2;
                    i6 = 0;
                }
            }
            this.mLineBackgroundSpans.recycle();
        }
        if (path != null) {
            if (i != 0) {
                canvas.translate(0.0f, i);
            }
            canvas.drawPath(path, paint);
            if (i != 0) {
                canvas.translate(0.0f, -i);
            }
        }
    }

    public long getLineRangeForDraw(Canvas canvas) {
        synchronized (sTempRect) {
            if (!canvas.getClipBounds(sTempRect)) {
                return TextUtils.packRangeInLong(0, -1);
            }
            int i = sTempRect.top;
            int i2 = sTempRect.bottom;
            int max = Math.max(i, 0);
            int min = Math.min(getLineTop(getLineCount()), i2);
            if (max >= min) {
                return TextUtils.packRangeInLong(0, -1);
            }
            return TextUtils.packRangeInLong(getLineForVertical(max), getLineForVertical(min));
        }
    }

    private int getLineStartPos(int i, int i2, int i3) {
        Alignment paragraphAlignment = getParagraphAlignment(i);
        int paragraphDirection = getParagraphDirection(i);
        if (paragraphAlignment == Alignment.ALIGN_LEFT) {
            paragraphAlignment = paragraphDirection == 1 ? Alignment.ALIGN_NORMAL : Alignment.ALIGN_OPPOSITE;
        } else if (paragraphAlignment == Alignment.ALIGN_RIGHT) {
            paragraphAlignment = paragraphDirection == 1 ? Alignment.ALIGN_OPPOSITE : Alignment.ALIGN_NORMAL;
        }
        if (paragraphAlignment == Alignment.ALIGN_NORMAL) {
            if (paragraphDirection == 1) {
                return i2 + getIndentAdjust(i, Alignment.ALIGN_LEFT);
            }
            return i3 + getIndentAdjust(i, Alignment.ALIGN_RIGHT);
        }
        TabStops tabStops = null;
        if (this.mSpannedText && getLineContainsTab(i)) {
            Spanned spanned = (Spanned) this.mText;
            int lineStart = getLineStart(i);
            TabStopSpan[] tabStopSpanArr = (TabStopSpan[]) getParagraphSpans(spanned, lineStart, spanned.nextSpanTransition(lineStart, spanned.length(), TabStopSpan.class), TabStopSpan.class);
            if (tabStopSpanArr.length > 0) {
                tabStops = new TabStops(20, tabStopSpanArr);
            }
        }
        int lineExtent = (int) getLineExtent(i, tabStops, false);
        if (paragraphAlignment != Alignment.ALIGN_OPPOSITE) {
            return ((i2 + i3) - (lineExtent & (-2))) >> (getIndentAdjust(i, Alignment.ALIGN_CENTER) + 1);
        }
        if (paragraphDirection == 1) {
            return (i3 - lineExtent) + getIndentAdjust(i, Alignment.ALIGN_RIGHT);
        }
        return (i2 - lineExtent) + getIndentAdjust(i, Alignment.ALIGN_LEFT);
    }

    public final CharSequence getText() {
        return this.mText;
    }

    public final TextPaint getPaint() {
        return this.mPaint;
    }

    public final int getWidth() {
        return this.mWidth;
    }

    public int getEllipsizedWidth() {
        return this.mWidth;
    }

    public final void increaseWidthTo(int i) {
        if (i < this.mWidth) {
            throw new RuntimeException("attempted to reduce Layout width");
        }
        this.mWidth = i;
    }

    public int getHeight() {
        return getLineTop(getLineCount());
    }

    public int getHeight(boolean z) {
        return getHeight();
    }

    public final Alignment getAlignment() {
        return this.mAlignment;
    }

    public final float getSpacingMultiplier() {
        return this.mSpacingMult;
    }

    public final float getSpacingAdd() {
        return this.mSpacingAdd;
    }

    public final TextDirectionHeuristic getTextDirectionHeuristic() {
        return this.mTextDir;
    }

    public int getLineBounds(int i, Rect rect) {
        if (rect != null) {
            rect.left = 0;
            rect.top = getLineTop(i);
            rect.right = this.mWidth;
            rect.bottom = getLineTop(i + 1);
        }
        return getLineBaseline(i);
    }

    public boolean isLevelBoundary(int i) {
        int lineForOffset = getLineForOffset(i);
        Directions lineDirections = getLineDirections(lineForOffset);
        if (lineDirections == DIRS_ALL_LEFT_TO_RIGHT || lineDirections == DIRS_ALL_RIGHT_TO_LEFT) {
            return false;
        }
        int[] iArr = lineDirections.mDirections;
        int lineStart = getLineStart(lineForOffset);
        int lineEnd = getLineEnd(lineForOffset);
        if (i == lineStart || i == lineEnd) {
            return ((iArr[(i == lineStart ? 0 : iArr.length + (-2)) + 1] >>> 26) & 63) != (getParagraphDirection(lineForOffset) == 1 ? 0 : 1);
        }
        int i2 = i - lineStart;
        for (int i3 = 0; i3 < iArr.length; i3 += 2) {
            if (i2 == iArr[i3]) {
                return true;
            }
        }
        return false;
    }

    public boolean isRtlCharAt(int i) {
        int lineForOffset = getLineForOffset(i);
        Directions lineDirections = getLineDirections(lineForOffset);
        if (lineDirections == DIRS_ALL_LEFT_TO_RIGHT) {
            return false;
        }
        if (lineDirections == DIRS_ALL_RIGHT_TO_LEFT) {
            return true;
        }
        int[] iArr = lineDirections.mDirections;
        int lineStart = getLineStart(lineForOffset);
        for (int i2 = 0; i2 < iArr.length; i2 += 2) {
            int i3 = iArr[i2] + lineStart;
            int i4 = i2 + 1;
            int i5 = (iArr[i4] & RUN_LENGTH_MASK) + i3;
            if (i >= i3 && i < i5) {
                return (((iArr[i4] >>> 26) & 63) & 1) != 0;
            }
        }
        return false;
    }

    public long getRunRange(int i) {
        int lineForOffset = getLineForOffset(i);
        Directions lineDirections = getLineDirections(lineForOffset);
        if (lineDirections == DIRS_ALL_LEFT_TO_RIGHT || lineDirections == DIRS_ALL_RIGHT_TO_LEFT) {
            return TextUtils.packRangeInLong(0, getLineEnd(lineForOffset));
        }
        int[] iArr = lineDirections.mDirections;
        int lineStart = getLineStart(lineForOffset);
        for (int i2 = 0; i2 < iArr.length; i2 += 2) {
            int i3 = iArr[i2] + lineStart;
            int i4 = (iArr[i2 + 1] & RUN_LENGTH_MASK) + i3;
            if (i >= i3 && i < i4) {
                return TextUtils.packRangeInLong(i3, i4);
            }
        }
        return TextUtils.packRangeInLong(0, getLineEnd(lineForOffset));
    }

    private boolean primaryIsTrailingPrevious(int i) {
        int i2;
        int i3;
        int lineForOffset = getLineForOffset(i);
        int lineStart = getLineStart(lineForOffset);
        int lineEnd = getLineEnd(lineForOffset);
        int[] iArr = getLineDirections(lineForOffset).mDirections;
        int i4 = 0;
        while (true) {
            i2 = -1;
            if (i4 >= iArr.length) {
                i3 = -1;
                break;
            }
            int i5 = iArr[i4] + lineStart;
            int i6 = i4 + 1;
            int i7 = (iArr[i6] & RUN_LENGTH_MASK) + i5;
            if (i7 > lineEnd) {
                i7 = lineEnd;
            }
            if (i < i5 || i >= i7) {
                i4 += 2;
            } else {
                if (i > i5) {
                    return false;
                }
                i3 = (iArr[i6] >>> 26) & 63;
            }
        }
        if (i3 == -1) {
            i3 = getParagraphDirection(lineForOffset) == 1 ? 0 : 1;
        }
        if (i != lineStart) {
            int i8 = i - 1;
            int i9 = 0;
            while (true) {
                if (i9 >= iArr.length) {
                    break;
                }
                int i10 = iArr[i9] + lineStart;
                int i11 = i9 + 1;
                int i12 = (iArr[i11] & RUN_LENGTH_MASK) + i10;
                if (i12 > lineEnd) {
                    i12 = lineEnd;
                }
                if (i8 >= i10 && i8 < i12) {
                    i2 = (iArr[i11] >>> 26) & 63;
                    break;
                }
                i9 += 2;
            }
        } else {
            i2 = getParagraphDirection(lineForOffset) == 1 ? 0 : 1;
        }
        return i2 < i3;
    }

    private boolean[] primaryIsTrailingPreviousAllLineOffsets(int i) {
        byte b;
        int lineStart = getLineStart(i);
        int lineEnd = getLineEnd(i);
        int[] iArr = getLineDirections(i).mDirections;
        int i2 = (lineEnd - lineStart) + 1;
        boolean[] zArr = new boolean[i2];
        byte[] bArr = new byte[i2];
        for (int i3 = 0; i3 < iArr.length; i3 += 2) {
            int i4 = iArr[i3] + lineStart;
            int i5 = i3 + 1;
            int i6 = (iArr[i5] & RUN_LENGTH_MASK) + i4;
            if (i6 > lineEnd) {
                i6 = lineEnd;
            }
            if (i6 != i4) {
                bArr[(i6 - lineStart) - 1] = (byte) ((iArr[i5] >>> 26) & 63);
            }
        }
        for (int i7 = 0; i7 < iArr.length; i7 += 2) {
            int i8 = iArr[i7] + lineStart;
            byte b2 = (byte) ((iArr[i7 + 1] >>> 26) & 63);
            int i9 = i8 - lineStart;
            if (i8 == lineStart) {
                b = getParagraphDirection(i) == 1 ? (byte) 0 : (byte) 1;
            } else {
                b = bArr[i9 - 1];
            }
            zArr[i9] = b2 > b;
        }
        return zArr;
    }

    public float getPrimaryHorizontal(int i) {
        return getPrimaryHorizontal(i, false);
    }

    public float getPrimaryHorizontal(int i, boolean z) {
        return getHorizontal(i, primaryIsTrailingPrevious(i), z);
    }

    public float getSecondaryHorizontal(int i) {
        return getSecondaryHorizontal(i, false);
    }

    public float getSecondaryHorizontal(int i, boolean z) {
        return getHorizontal(i, !primaryIsTrailingPrevious(i), z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getHorizontal(int i, boolean z) {
        return z ? getPrimaryHorizontal(i) : getSecondaryHorizontal(i);
    }

    private float getHorizontal(int i, boolean z, boolean z2) {
        return getHorizontal(i, z, getLineForOffset(i), z2);
    }

    private float getHorizontal(int i, boolean z, int i2, boolean z2) {
        TabStops tabStops;
        float measure;
        int lineStart = getLineStart(i2);
        int lineEnd = getLineEnd(i2);
        int paragraphDirection = getParagraphDirection(i2);
        boolean lineContainsTab = getLineContainsTab(i2);
        Directions lineDirections = getLineDirections(i2);
        if (lineContainsTab && (this.mText instanceof Spanned)) {
            TabStopSpan[] tabStopSpanArr = (TabStopSpan[]) getParagraphSpans((Spanned) this.mText, lineStart, lineEnd, TabStopSpan.class);
            if (tabStopSpanArr.length > 0) {
                tabStops = new TabStops(20, tabStopSpanArr);
                TextLine obtain = TextLine.obtain();
                obtain.set(this.mPaint, this.mText, lineStart, lineEnd, paragraphDirection, lineDirections, lineContainsTab, tabStops);
                measure = obtain.measure(i - lineStart, z, null);
                TextLine.recycle(obtain);
                if (z2 && measure > this.mWidth) {
                    measure = this.mWidth;
                }
                return getLineStartPos(i2, getParagraphLeft(i2), getParagraphRight(i2)) + measure;
            }
        }
        tabStops = null;
        TextLine obtain2 = TextLine.obtain();
        obtain2.set(this.mPaint, this.mText, lineStart, lineEnd, paragraphDirection, lineDirections, lineContainsTab, tabStops);
        measure = obtain2.measure(i - lineStart, z, null);
        TextLine.recycle(obtain2);
        if (z2) {
            measure = this.mWidth;
        }
        return getLineStartPos(i2, getParagraphLeft(i2), getParagraphRight(i2)) + measure;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x008c A[LOOP:2: B:28:0x0089->B:30:0x008c, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public float[] getLineHorizontals(int i, boolean z, boolean z2) {
        TabStops tabStops;
        int i2;
        float[] fArr;
        int lineStart = getLineStart(i);
        int lineEnd = getLineEnd(i);
        int paragraphDirection = getParagraphDirection(i);
        boolean lineContainsTab = getLineContainsTab(i);
        Directions lineDirections = getLineDirections(i);
        if (lineContainsTab && (this.mText instanceof Spanned)) {
            TabStopSpan[] tabStopSpanArr = (TabStopSpan[]) getParagraphSpans((Spanned) this.mText, lineStart, lineEnd, TabStopSpan.class);
            if (tabStopSpanArr.length > 0) {
                tabStops = new TabStops(20, tabStopSpanArr);
                TextLine obtain = TextLine.obtain();
                obtain.set(this.mPaint, this.mText, lineStart, lineEnd, paragraphDirection, lineDirections, lineContainsTab, tabStops);
                boolean[] primaryIsTrailingPreviousAllLineOffsets = primaryIsTrailingPreviousAllLineOffsets(i);
                if (!z2) {
                    for (int i3 = 0; i3 < primaryIsTrailingPreviousAllLineOffsets.length; i3++) {
                        primaryIsTrailingPreviousAllLineOffsets[i3] = !primaryIsTrailingPreviousAllLineOffsets[i3];
                    }
                }
                float[] measureAllOffsets = obtain.measureAllOffsets(primaryIsTrailingPreviousAllLineOffsets, null);
                TextLine.recycle(obtain);
                if (z) {
                    for (int i4 = 0; i4 < measureAllOffsets.length; i4++) {
                        if (measureAllOffsets[i4] > this.mWidth) {
                            measureAllOffsets[i4] = this.mWidth;
                        }
                    }
                }
                int lineStartPos = getLineStartPos(i, getParagraphLeft(i), getParagraphRight(i));
                fArr = new float[(lineEnd - lineStart) + 1];
                for (i2 = 0; i2 < fArr.length; i2++) {
                    fArr[i2] = lineStartPos + measureAllOffsets[i2];
                }
                return fArr;
            }
        }
        tabStops = null;
        TextLine obtain2 = TextLine.obtain();
        obtain2.set(this.mPaint, this.mText, lineStart, lineEnd, paragraphDirection, lineDirections, lineContainsTab, tabStops);
        boolean[] primaryIsTrailingPreviousAllLineOffsets2 = primaryIsTrailingPreviousAllLineOffsets(i);
        if (!z2) {
        }
        float[] measureAllOffsets2 = obtain2.measureAllOffsets(primaryIsTrailingPreviousAllLineOffsets2, null);
        TextLine.recycle(obtain2);
        if (z) {
        }
        int lineStartPos2 = getLineStartPos(i, getParagraphLeft(i), getParagraphRight(i));
        fArr = new float[(lineEnd - lineStart) + 1];
        while (i2 < fArr.length) {
        }
        return fArr;
    }

    public float getLineLeft(int i) {
        int paragraphDirection = getParagraphDirection(i);
        Alignment paragraphAlignment = getParagraphAlignment(i);
        if (paragraphAlignment == Alignment.ALIGN_LEFT) {
            return 0.0f;
        }
        if (paragraphAlignment == Alignment.ALIGN_NORMAL) {
            if (paragraphDirection == -1) {
                return getParagraphRight(i) - getLineMax(i);
            }
            return 0.0f;
        }
        if (paragraphAlignment == Alignment.ALIGN_RIGHT) {
            return this.mWidth - getLineMax(i);
        }
        if (paragraphAlignment == Alignment.ALIGN_OPPOSITE) {
            if (paragraphDirection == -1) {
                return 0.0f;
            }
            return this.mWidth - getLineMax(i);
        }
        int paragraphLeft = getParagraphLeft(i);
        return paragraphLeft + (((getParagraphRight(i) - paragraphLeft) - (((int) getLineMax(i)) & (-2))) / 2);
    }

    public float getLineRight(int i) {
        int paragraphDirection = getParagraphDirection(i);
        Alignment paragraphAlignment = getParagraphAlignment(i);
        if (paragraphAlignment == Alignment.ALIGN_LEFT) {
            return getParagraphLeft(i) + getLineMax(i);
        }
        if (paragraphAlignment == Alignment.ALIGN_NORMAL) {
            if (paragraphDirection == -1) {
                return this.mWidth;
            }
            return getParagraphLeft(i) + getLineMax(i);
        }
        if (paragraphAlignment == Alignment.ALIGN_RIGHT) {
            return this.mWidth;
        }
        if (paragraphAlignment == Alignment.ALIGN_OPPOSITE) {
            if (paragraphDirection == -1) {
                return getLineMax(i);
            }
            return this.mWidth;
        }
        int paragraphLeft = getParagraphLeft(i);
        int paragraphRight = getParagraphRight(i);
        return paragraphRight - (((paragraphRight - paragraphLeft) - (((int) getLineMax(i)) & (-2))) / 2);
    }

    public float getLineMax(int i) {
        float paragraphLeadingMargin = getParagraphLeadingMargin(i);
        float lineExtent = getLineExtent(i, false);
        if (lineExtent < 0.0f) {
            lineExtent = -lineExtent;
        }
        return paragraphLeadingMargin + lineExtent;
    }

    public float getLineWidth(int i) {
        float paragraphLeadingMargin = getParagraphLeadingMargin(i);
        float lineExtent = getLineExtent(i, true);
        if (lineExtent < 0.0f) {
            lineExtent = -lineExtent;
        }
        return paragraphLeadingMargin + lineExtent;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x003d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private float getLineExtent(int i, boolean z) {
        TabStops tabStops;
        Directions lineDirections;
        int lineStart = getLineStart(i);
        int lineEnd = z ? getLineEnd(i) : getLineVisibleEnd(i);
        boolean lineContainsTab = getLineContainsTab(i);
        if (lineContainsTab && (this.mText instanceof Spanned)) {
            TabStopSpan[] tabStopSpanArr = (TabStopSpan[]) getParagraphSpans((Spanned) this.mText, lineStart, lineEnd, TabStopSpan.class);
            if (tabStopSpanArr.length > 0) {
                tabStops = new TabStops(20, tabStopSpanArr);
                lineDirections = getLineDirections(i);
                if (lineDirections != null) {
                    return 0.0f;
                }
                int paragraphDirection = getParagraphDirection(i);
                TextLine obtain = TextLine.obtain();
                TextPaint textPaint = this.mWorkPaint;
                textPaint.set(this.mPaint);
                textPaint.setHyphenEdit(getHyphen(i));
                obtain.set(textPaint, this.mText, lineStart, lineEnd, paragraphDirection, lineDirections, lineContainsTab, tabStops);
                if (isJustificationRequired(i)) {
                    obtain.justify(getJustifyWidth(i));
                }
                float metrics = obtain.metrics(null);
                TextLine.recycle(obtain);
                return metrics;
            }
        }
        tabStops = null;
        lineDirections = getLineDirections(i);
        if (lineDirections != null) {
        }
    }

    private float getLineExtent(int i, TabStops tabStops, boolean z) {
        int lineStart = getLineStart(i);
        int lineEnd = z ? getLineEnd(i) : getLineVisibleEnd(i);
        boolean lineContainsTab = getLineContainsTab(i);
        Directions lineDirections = getLineDirections(i);
        int paragraphDirection = getParagraphDirection(i);
        TextLine obtain = TextLine.obtain();
        TextPaint textPaint = this.mWorkPaint;
        textPaint.set(this.mPaint);
        textPaint.setHyphenEdit(getHyphen(i));
        obtain.set(textPaint, this.mText, lineStart, lineEnd, paragraphDirection, lineDirections, lineContainsTab, tabStops);
        if (isJustificationRequired(i)) {
            obtain.justify(getJustifyWidth(i));
        }
        float metrics = obtain.metrics(null);
        TextLine.recycle(obtain);
        return metrics;
    }

    public int getLineForVertical(int i) {
        int lineCount = getLineCount();
        int i2 = -1;
        while (lineCount - i2 > 1) {
            int i3 = (lineCount + i2) / 2;
            if (getLineTop(i3) > i) {
                lineCount = i3;
            } else {
                i2 = i3;
            }
        }
        if (i2 < 0) {
            return 0;
        }
        return i2;
    }

    public int getLineForOffset(int i) {
        int lineCount = getLineCount();
        int i2 = -1;
        while (lineCount - i2 > 1) {
            int i3 = (lineCount + i2) / 2;
            if (getLineStart(i3) > i) {
                lineCount = i3;
            } else {
                i2 = i3;
            }
        }
        if (i2 < 0) {
            return 0;
        }
        return i2;
    }

    public int getOffsetForHorizontal(int i, float f) {
        return getOffsetForHorizontal(i, f, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00f6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int getOffsetForHorizontal(int i, float f, boolean z) {
        float f2;
        float abs;
        int i2;
        Layout layout = this;
        int lineEnd = getLineEnd(i);
        int lineStart = getLineStart(i);
        Directions lineDirections = getLineDirections(i);
        TextLine obtain = TextLine.obtain();
        obtain.set(layout.mPaint, layout.mText, lineStart, lineEnd, getParagraphDirection(i), lineDirections, false, null);
        HorizontalMeasurementProvider horizontalMeasurementProvider = new HorizontalMeasurementProvider(i, z);
        int i3 = 1;
        if (i != getLineCount() - 1) {
            lineEnd = obtain.getOffsetToLeftRightOf(lineEnd - lineStart, !layout.isRtlCharAt(lineEnd - 1)) + lineStart;
        }
        float abs2 = Math.abs(horizontalMeasurementProvider.get(lineStart) - f);
        int i4 = lineStart;
        int i5 = 0;
        while (i5 < lineDirections.mDirections.length) {
            int i6 = lineDirections.mDirections[i5] + lineStart;
            int i7 = i5 + 1;
            int i8 = (lineDirections.mDirections[i7] & RUN_LENGTH_MASK) + i6;
            boolean z2 = (lineDirections.mDirections[i7] & 67108864) != 0 ? i3 : 0;
            int i9 = z2 != 0 ? -1 : i3;
            if (i8 > lineEnd) {
                i8 = lineEnd;
            }
            int i10 = (i8 - 1) + i3;
            int i11 = i6 + 1;
            int i12 = i4;
            Directions directions = lineDirections;
            int i13 = i11 - 1;
            while (i10 - i13 > i3) {
                int i14 = (i10 + i13) / 2;
                float f3 = horizontalMeasurementProvider.get(layout.getOffsetAtStartOf(i14));
                float f4 = i9;
                if (f3 * f4 >= f4 * f) {
                    i10 = i14;
                } else {
                    i13 = i14;
                }
                layout = this;
                i3 = 1;
            }
            if (i13 >= i11) {
                i11 = i13;
            }
            if (i11 < i8) {
                int offsetToLeftRightOf = obtain.getOffsetToLeftRightOf(i11 - lineStart, z2) + lineStart;
                int offsetToLeftRightOf2 = obtain.getOffsetToLeftRightOf(offsetToLeftRightOf - lineStart, !z2) + lineStart;
                if (offsetToLeftRightOf2 >= i6 && offsetToLeftRightOf2 < i8) {
                    f2 = Math.abs(horizontalMeasurementProvider.get(offsetToLeftRightOf2) - f);
                    if (offsetToLeftRightOf < i8) {
                        float abs3 = Math.abs(horizontalMeasurementProvider.get(offsetToLeftRightOf) - f);
                        if (abs3 < f2) {
                            f2 = abs3;
                            i2 = offsetToLeftRightOf;
                            if (f2 < abs2) {
                                i12 = i2;
                                abs = Math.abs(horizontalMeasurementProvider.get(i6) - f);
                                if (abs >= f2) {
                                    abs2 = abs;
                                    i4 = i6;
                                } else {
                                    abs2 = f2;
                                    i4 = i12;
                                }
                                i5 += 2;
                                lineDirections = directions;
                                layout = this;
                                i3 = 1;
                            }
                        }
                    }
                    i2 = offsetToLeftRightOf2;
                    if (f2 < abs2) {
                    }
                }
            }
            f2 = abs2;
            abs = Math.abs(horizontalMeasurementProvider.get(i6) - f);
            if (abs >= f2) {
            }
            i5 += 2;
            lineDirections = directions;
            layout = this;
            i3 = 1;
        }
        int i15 = i4;
        if (Math.abs(horizontalMeasurementProvider.get(lineEnd) - f) > abs2) {
            lineEnd = i15;
        }
        TextLine.recycle(obtain);
        return lineEnd;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public class HorizontalMeasurementProvider {
        private float[] mHorizontals;
        private final int mLine;
        private int mLineStartOffset;
        private final boolean mPrimary;

        HorizontalMeasurementProvider(int i, boolean z) {
            this.mLine = i;
            this.mPrimary = z;
            init();
        }

        private void init() {
            if (Layout.this.getLineDirections(this.mLine) == Layout.DIRS_ALL_LEFT_TO_RIGHT) {
                return;
            }
            this.mHorizontals = Layout.this.getLineHorizontals(this.mLine, false, this.mPrimary);
            this.mLineStartOffset = Layout.this.getLineStart(this.mLine);
        }

        float get(int i) {
            if (this.mHorizontals == null || i < this.mLineStartOffset || i >= this.mLineStartOffset + this.mHorizontals.length) {
                return Layout.this.getHorizontal(i, this.mPrimary);
            }
            return this.mHorizontals[i - this.mLineStartOffset];
        }
    }

    public final int getLineEnd(int i) {
        return getLineStart(i + 1);
    }

    public int getLineVisibleEnd(int i) {
        return getLineVisibleEnd(i, getLineStart(i), getLineStart(i + 1));
    }

    private int getLineVisibleEnd(int i, int i2, int i3) {
        CharSequence charSequence = this.mText;
        if (i == getLineCount() - 1) {
            return i3;
        }
        while (i3 > i2) {
            int i4 = i3 - 1;
            char charAt = charSequence.charAt(i4);
            if (charAt == '\n') {
                return i4;
            }
            if (!TextLine.isLineEndSpace(charAt)) {
                break;
            }
            i3--;
        }
        return i3;
    }

    public final int getLineBottom(int i) {
        return getLineTop(i + 1);
    }

    public final int getLineBottomWithoutSpacing(int i) {
        return getLineTop(i + 1) - getLineExtra(i);
    }

    public final int getLineBaseline(int i) {
        return getLineTop(i + 1) - getLineDescent(i);
    }

    public final int getLineAscent(int i) {
        return getLineTop(i) - (getLineTop(i + 1) - getLineDescent(i));
    }

    public int getOffsetToLeftOf(int i) {
        return getOffsetToLeftRightOf(i, true);
    }

    public int getOffsetToRightOf(int i) {
        return getOffsetToLeftRightOf(i, false);
    }

    private int getOffsetToLeftRightOf(int i, boolean z) {
        int i2;
        int i3;
        boolean z2 = z;
        int lineForOffset = getLineForOffset(i);
        int lineStart = getLineStart(lineForOffset);
        int lineEnd = getLineEnd(lineForOffset);
        int paragraphDirection = getParagraphDirection(lineForOffset);
        boolean z3 = true;
        if (z2 == (paragraphDirection == -1)) {
            if (i == lineEnd) {
                if (lineForOffset >= getLineCount() - 1) {
                    return i;
                }
                lineForOffset++;
            }
            z3 = false;
        } else {
            if (i == lineStart) {
                if (lineForOffset <= 0) {
                    return i;
                }
                lineForOffset--;
            }
            z3 = false;
        }
        if (z3) {
            lineStart = getLineStart(lineForOffset);
            lineEnd = getLineEnd(lineForOffset);
            int paragraphDirection2 = getParagraphDirection(lineForOffset);
            if (paragraphDirection2 != paragraphDirection) {
                z2 = !z2;
                i2 = lineEnd;
                i3 = paragraphDirection2;
                Directions lineDirections = getLineDirections(lineForOffset);
                TextLine obtain = TextLine.obtain();
                obtain.set(this.mPaint, this.mText, lineStart, i2, i3, lineDirections, false, null);
                int offsetToLeftRightOf = lineStart + obtain.getOffsetToLeftRightOf(i - lineStart, z2);
                TextLine.recycle(obtain);
                return offsetToLeftRightOf;
            }
        }
        i2 = lineEnd;
        i3 = paragraphDirection;
        Directions lineDirections2 = getLineDirections(lineForOffset);
        TextLine obtain2 = TextLine.obtain();
        obtain2.set(this.mPaint, this.mText, lineStart, i2, i3, lineDirections2, false, null);
        int offsetToLeftRightOf2 = lineStart + obtain2.getOffsetToLeftRightOf(i - lineStart, z2);
        TextLine.recycle(obtain2);
        return offsetToLeftRightOf2;
    }

    private int getOffsetAtStartOf(int i) {
        char charAt;
        if (i == 0) {
            return 0;
        }
        CharSequence charSequence = this.mText;
        char charAt2 = charSequence.charAt(i);
        if (charAt2 >= 56320 && charAt2 <= 57343 && (charAt = charSequence.charAt(i - 1)) >= 55296 && charAt <= 56319) {
            i--;
        }
        if (this.mSpannedText) {
            Spanned spanned = (Spanned) charSequence;
            ReplacementSpan[] replacementSpanArr = (ReplacementSpan[]) spanned.getSpans(i, i, ReplacementSpan.class);
            for (int i2 = 0; i2 < replacementSpanArr.length; i2++) {
                int spanStart = spanned.getSpanStart(replacementSpanArr[i2]);
                int spanEnd = spanned.getSpanEnd(replacementSpanArr[i2]);
                if (spanStart < i && spanEnd > i) {
                    i = spanStart;
                }
            }
        }
        return i;
    }

    public boolean shouldClampCursor(int i) {
        switch (getParagraphAlignment(i)) {
            case ALIGN_LEFT:
                return true;
            case ALIGN_NORMAL:
                return getParagraphDirection(i) > 0;
            default:
                return false;
        }
    }

    public void getCursorPath(int i, Path path, CharSequence charSequence) {
        path.reset();
        int lineForOffset = getLineForOffset(i);
        int lineTop = getLineTop(lineForOffset);
        int lineBottomWithoutSpacing = getLineBottomWithoutSpacing(lineForOffset);
        boolean shouldClampCursor = shouldClampCursor(lineForOffset);
        float primaryHorizontal = getPrimaryHorizontal(i, shouldClampCursor) - 0.5f;
        float secondaryHorizontal = isLevelBoundary(i) ? getSecondaryHorizontal(i, shouldClampCursor) - 0.5f : primaryHorizontal;
        int metaState = TextKeyListener.getMetaState(charSequence, 1) | TextKeyListener.getMetaState(charSequence, 2048);
        int metaState2 = TextKeyListener.getMetaState(charSequence, 2);
        int i2 = 0;
        if (metaState != 0 || metaState2 != 0) {
            i2 = (lineBottomWithoutSpacing - lineTop) >> 2;
            if (metaState2 != 0) {
                lineTop += i2;
            }
            if (metaState != 0) {
                lineBottomWithoutSpacing -= i2;
            }
        }
        if (primaryHorizontal < 0.5f) {
            primaryHorizontal = 0.5f;
        }
        if (secondaryHorizontal < 0.5f) {
            secondaryHorizontal = 0.5f;
        }
        if (Float.compare(primaryHorizontal, secondaryHorizontal) == 0) {
            path.moveTo(primaryHorizontal, lineTop);
            path.lineTo(primaryHorizontal, lineBottomWithoutSpacing);
        } else {
            path.moveTo(primaryHorizontal, lineTop);
            float f = (lineTop + lineBottomWithoutSpacing) >> 1;
            path.lineTo(primaryHorizontal, f);
            path.moveTo(secondaryHorizontal, f);
            path.lineTo(secondaryHorizontal, lineBottomWithoutSpacing);
        }
        if (metaState == 2) {
            float f2 = lineBottomWithoutSpacing;
            path.moveTo(secondaryHorizontal, f2);
            float f3 = i2;
            float f4 = lineBottomWithoutSpacing + i2;
            path.lineTo(secondaryHorizontal - f3, f4);
            path.lineTo(secondaryHorizontal, f2);
            path.lineTo(secondaryHorizontal + f3, f4);
        } else if (metaState == 1) {
            float f5 = lineBottomWithoutSpacing;
            path.moveTo(secondaryHorizontal, f5);
            float f6 = i2;
            float f7 = secondaryHorizontal - f6;
            float f8 = lineBottomWithoutSpacing + i2;
            path.lineTo(f7, f8);
            float f9 = f8 - 0.5f;
            path.moveTo(f7, f9);
            float f10 = f6 + secondaryHorizontal;
            path.lineTo(f10, f9);
            path.moveTo(f10, f8);
            path.lineTo(secondaryHorizontal, f5);
        }
        if (metaState2 == 2) {
            float f11 = lineTop;
            path.moveTo(primaryHorizontal, f11);
            float f12 = i2;
            float f13 = lineTop - i2;
            path.lineTo(primaryHorizontal - f12, f13);
            path.lineTo(primaryHorizontal, f11);
            path.lineTo(primaryHorizontal + f12, f13);
            return;
        }
        if (metaState2 == 1) {
            float f14 = lineTop;
            path.moveTo(primaryHorizontal, f14);
            float f15 = i2;
            float f16 = primaryHorizontal - f15;
            float f17 = lineTop - i2;
            path.lineTo(f16, f17);
            float f18 = 0.5f + f17;
            path.moveTo(f16, f18);
            float f19 = f15 + primaryHorizontal;
            path.lineTo(f19, f18);
            path.moveTo(f19, f17);
            path.lineTo(primaryHorizontal, f14);
        }
    }

    private void addSelection(int i, int i2, int i3, int i4, int i5, SelectionRectangleConsumer selectionRectangleConsumer) {
        int max;
        int min;
        int i6;
        int i7;
        int lineStart = getLineStart(i);
        int lineEnd = getLineEnd(i);
        Directions lineDirections = getLineDirections(i);
        if (lineEnd > lineStart && this.mText.charAt(lineEnd - 1) == '\n') {
            lineEnd--;
        }
        for (int i8 = 0; i8 < lineDirections.mDirections.length; i8 += 2) {
            int i9 = lineDirections.mDirections[i8] + lineStart;
            int i10 = i8 + 1;
            int i11 = (lineDirections.mDirections[i10] & RUN_LENGTH_MASK) + i9;
            if (i11 > lineEnd) {
                i11 = lineEnd;
            }
            if (i2 <= i11 && i3 >= i9 && (max = Math.max(i2, i9)) != (min = Math.min(i3, i11))) {
                float horizontal = getHorizontal(max, false, i, false);
                float horizontal2 = getHorizontal(min, true, i, false);
                float min2 = Math.min(horizontal, horizontal2);
                float max2 = Math.max(horizontal, horizontal2);
                if ((lineDirections.mDirections[i10] & 67108864) != 0) {
                    i6 = i4;
                    i7 = 0;
                } else {
                    i6 = i4;
                    i7 = 1;
                }
                selectionRectangleConsumer.accept(min2, i6, max2, i5, i7);
            }
        }
    }

    public void getSelectionPath(int i, int i2, final Path path) {
        path.reset();
        getSelection(i, i2, new SelectionRectangleConsumer() { // from class: android.text.-$$Lambda$Layout$MzjK2UE2G8VG0asK8_KWY3gHAmY
            @Override // android.text.Layout.SelectionRectangleConsumer
            public final void accept(float f, float f2, float f3, float f4, int i3) {
                path.addRect(f, f2, f3, f4, Path.Direction.CW);
            }
        });
    }

    public final void getSelection(int i, int i2, SelectionRectangleConsumer selectionRectangleConsumer) {
        int i3;
        int i4;
        float f;
        if (i == i2) {
            return;
        }
        if (i2 < i) {
            i4 = i;
            i3 = i2;
        } else {
            i3 = i;
            i4 = i2;
        }
        int lineForOffset = getLineForOffset(i3);
        int lineForOffset2 = getLineForOffset(i4);
        int lineTop = getLineTop(lineForOffset);
        int lineBottomWithoutSpacing = getLineBottomWithoutSpacing(lineForOffset2);
        if (lineForOffset == lineForOffset2) {
            addSelection(lineForOffset, i3, i4, lineTop, lineBottomWithoutSpacing, selectionRectangleConsumer);
            return;
        }
        float f2 = this.mWidth;
        addSelection(lineForOffset, i3, getLineEnd(lineForOffset), lineTop, getLineBottom(lineForOffset), selectionRectangleConsumer);
        if (getParagraphDirection(lineForOffset) == -1) {
            selectionRectangleConsumer.accept(getLineLeft(lineForOffset), lineTop, 0.0f, getLineBottom(lineForOffset), 0);
            f = f2;
        } else {
            f = f2;
            selectionRectangleConsumer.accept(getLineRight(lineForOffset), lineTop, f2, getLineBottom(lineForOffset), 1);
        }
        while (true) {
            lineForOffset++;
            if (lineForOffset >= lineForOffset2) {
                break;
            }
            int lineTop2 = getLineTop(lineForOffset);
            int lineBottom = getLineBottom(lineForOffset);
            if (getParagraphDirection(lineForOffset) == -1) {
                selectionRectangleConsumer.accept(0.0f, lineTop2, f, lineBottom, 0);
            } else {
                selectionRectangleConsumer.accept(0.0f, lineTop2, f, lineBottom, 1);
            }
        }
        int lineTop3 = getLineTop(lineForOffset2);
        int lineBottomWithoutSpacing2 = getLineBottomWithoutSpacing(lineForOffset2);
        addSelection(lineForOffset2, getLineStart(lineForOffset2), i4, lineTop3, lineBottomWithoutSpacing2, selectionRectangleConsumer);
        if (getParagraphDirection(lineForOffset2) == -1) {
            selectionRectangleConsumer.accept(f, lineTop3, getLineRight(lineForOffset2), lineBottomWithoutSpacing2, 0);
        } else {
            selectionRectangleConsumer.accept(0.0f, lineTop3, getLineLeft(lineForOffset2), lineBottomWithoutSpacing2, 1);
        }
    }

    public final Alignment getParagraphAlignment(int i) {
        AlignmentSpan[] alignmentSpanArr;
        int length;
        Alignment alignment = this.mAlignment;
        return (!this.mSpannedText || (length = (alignmentSpanArr = (AlignmentSpan[]) getParagraphSpans((Spanned) this.mText, getLineStart(i), getLineEnd(i), AlignmentSpan.class)).length) <= 0) ? alignment : alignmentSpanArr[length - 1].getAlignment();
    }

    public final int getParagraphLeft(int i) {
        if (getParagraphDirection(i) == -1 || !this.mSpannedText) {
            return 0;
        }
        return getParagraphLeadingMargin(i);
    }

    public final int getParagraphRight(int i) {
        int i2 = this.mWidth;
        return (getParagraphDirection(i) == 1 || !this.mSpannedText) ? i2 : i2 - getParagraphLeadingMargin(i);
    }

    private int getParagraphLeadingMargin(int i) {
        if (!this.mSpannedText) {
            return 0;
        }
        Spanned spanned = (Spanned) this.mText;
        int lineStart = getLineStart(i);
        LeadingMarginSpan[] leadingMarginSpanArr = (LeadingMarginSpan[]) getParagraphSpans(spanned, lineStart, spanned.nextSpanTransition(lineStart, getLineEnd(i), LeadingMarginSpan.class), LeadingMarginSpan.class);
        if (leadingMarginSpanArr.length == 0) {
            return 0;
        }
        boolean z = lineStart == 0 || spanned.charAt(lineStart - 1) == '\n';
        for (int i2 = 0; i2 < leadingMarginSpanArr.length; i2++) {
            if (leadingMarginSpanArr[i2] instanceof LeadingMarginSpan.LeadingMarginSpan2) {
                z |= i < getLineForOffset(spanned.getSpanStart(leadingMarginSpanArr[i2])) + ((LeadingMarginSpan.LeadingMarginSpan2) leadingMarginSpanArr[i2]).getLeadingMarginLineCount();
            }
        }
        int i3 = 0;
        for (LeadingMarginSpan leadingMarginSpan : leadingMarginSpanArr) {
            i3 += leadingMarginSpan.getLeadingMargin(z);
        }
        return i3;
    }

    private static float measurePara(TextPaint textPaint, CharSequence charSequence, int i, int i2, TextDirectionHeuristic textDirectionHeuristic) {
        MeasuredParagraph measuredParagraph;
        int i3;
        TabStops tabStops;
        boolean z;
        TextLine obtain = TextLine.obtain();
        try {
            measuredParagraph = MeasuredParagraph.buildForBidi(charSequence, i, i2, textDirectionHeuristic, null);
            try {
                char[] chars = measuredParagraph.getChars();
                int length = chars.length;
                Directions directions = measuredParagraph.getDirections(0, length);
                int paragraphDir = measuredParagraph.getParagraphDir();
                if (charSequence instanceof Spanned) {
                    i3 = 0;
                    for (LeadingMarginSpan leadingMarginSpan : (LeadingMarginSpan[]) getParagraphSpans((Spanned) charSequence, i, i2, LeadingMarginSpan.class)) {
                        i3 += leadingMarginSpan.getLeadingMargin(true);
                    }
                } else {
                    i3 = 0;
                }
                int i4 = 0;
                while (true) {
                    if (i4 >= length) {
                        tabStops = null;
                        z = false;
                        break;
                    }
                    if (chars[i4] != '\t') {
                        i4++;
                    } else if (charSequence instanceof Spanned) {
                        Spanned spanned = (Spanned) charSequence;
                        TabStopSpan[] tabStopSpanArr = (TabStopSpan[]) getParagraphSpans(spanned, i, spanned.nextSpanTransition(i, i2, TabStopSpan.class), TabStopSpan.class);
                        z = true;
                        tabStops = tabStopSpanArr.length > 0 ? new TabStops(20, tabStopSpanArr) : null;
                    } else {
                        z = true;
                        tabStops = null;
                    }
                }
                obtain.set(textPaint, charSequence, i, i2, paragraphDir, directions, z, tabStops);
                float abs = i3 + Math.abs(obtain.metrics(null));
                TextLine.recycle(obtain);
                if (measuredParagraph != null) {
                    measuredParagraph.recycle();
                }
                return abs;
            } catch (Throwable th) {
                th = th;
                TextLine.recycle(obtain);
                if (measuredParagraph != null) {
                    measuredParagraph.recycle();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            measuredParagraph = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class TabStops {
        private int mIncrement;
        private int mNumStops;
        private int[] mStops;

        public static float nextDefaultStop(float f, int i) {
            float f2 = i;
            return ((int) ((f + f2) / f2)) * i;
        }

        TabStops(int i, Object[] objArr) {
            reset(i, objArr);
        }

        void reset(int i, Object[] objArr) {
            this.mIncrement = i;
            int i2 = 0;
            if (objArr != null) {
                int i3 = 0;
                int[] iArr = this.mStops;
                for (Object obj : objArr) {
                    if (obj instanceof TabStopSpan) {
                        if (iArr == null) {
                            iArr = new int[10];
                        } else if (i3 == iArr.length) {
                            int[] iArr2 = new int[i3 * 2];
                            for (int i4 = 0; i4 < i3; i4++) {
                                iArr2[i4] = iArr[i4];
                            }
                            iArr = iArr2;
                        }
                        iArr[i3] = ((TabStopSpan) obj).getTabStop();
                        i3++;
                    }
                }
                if (i3 > 1) {
                    Arrays.sort(iArr, 0, i3);
                }
                if (iArr != this.mStops) {
                    this.mStops = iArr;
                }
                i2 = i3;
            }
            this.mNumStops = i2;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public float nextTab(float f) {
            int i = this.mNumStops;
            if (i > 0) {
                int[] iArr = this.mStops;
                for (int i2 = 0; i2 < i; i2++) {
                    float f2 = iArr[i2];
                    if (f2 > f) {
                        return f2;
                    }
                }
            }
            return nextDefaultStop(f, this.mIncrement);
        }
    }

    static float nextTab(CharSequence charSequence, int i, int i2, float f, Object[] objArr) {
        boolean z;
        if (charSequence instanceof Spanned) {
            if (objArr == null) {
                objArr = getParagraphSpans((Spanned) charSequence, i, i2, TabStopSpan.class);
                z = true;
            } else {
                z = false;
            }
            float f2 = Float.MAX_VALUE;
            for (int i3 = 0; i3 < objArr.length; i3++) {
                if (z || (objArr[i3] instanceof TabStopSpan)) {
                    float tabStop = ((TabStopSpan) objArr[i3]).getTabStop();
                    if (tabStop < f2 && tabStop > f) {
                        f2 = tabStop;
                    }
                }
            }
            if (f2 != Float.MAX_VALUE) {
                return f2;
            }
        }
        return ((int) ((f + 20.0f) / 20.0f)) * 20;
    }

    protected final boolean isSpanned() {
        return this.mSpannedText;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T[] getParagraphSpans(Spanned spanned, int i, int i2, Class<T> cls) {
        if (i == i2 && i > 0) {
            return (T[]) ArrayUtils.emptyArray(cls);
        }
        if (spanned instanceof SpannableStringBuilder) {
            return (T[]) ((SpannableStringBuilder) spanned).getSpans(i, i2, cls, false);
        }
        return (T[]) spanned.getSpans(i, i2, cls);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ellipsize(int i, int i2, int i3, char[] cArr, int i4, TextUtils.TruncateAt truncateAt) {
        int ellipsisCount = getEllipsisCount(i3);
        if (ellipsisCount == 0) {
            return;
        }
        int ellipsisStart = getEllipsisStart(i3);
        int lineStart = getLineStart(i3);
        String ellipsisString = TextUtils.getEllipsisString(truncateAt);
        int length = ellipsisString.length();
        int i5 = 0;
        boolean z = ellipsisCount >= length;
        while (i5 < ellipsisCount) {
            char charAt = (!z || i5 >= length) ? (char) 65279 : ellipsisString.charAt(i5);
            int i6 = i5 + ellipsisStart + lineStart;
            if (i <= i6 && i6 < i2) {
                cArr[(i6 + i4) - i] = charAt;
            }
            i5++;
        }
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class Directions {

        @VisibleForTesting(visibility = VisibleForTesting.Visibility.PACKAGE)
        public int[] mDirections;

        @VisibleForTesting(visibility = VisibleForTesting.Visibility.PACKAGE)
        public Directions(int[] iArr) {
            this.mDirections = iArr;
        }
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    static class Ellipsizer implements CharSequence, GetChars {
        Layout mLayout;
        TextUtils.TruncateAt mMethod;
        CharSequence mText;
        int mWidth;

        public Ellipsizer(CharSequence charSequence) {
            this.mText = charSequence;
        }

        @Override // java.lang.CharSequence
        public char charAt(int i) {
            char[] obtain = TextUtils.obtain(1);
            getChars(i, i + 1, obtain, 0);
            char c = obtain[0];
            TextUtils.recycle(obtain);
            return c;
        }

        @Override // android.text.GetChars
        public void getChars(int i, int i2, char[] cArr, int i3) {
            int lineForOffset = this.mLayout.getLineForOffset(i2);
            TextUtils.getChars(this.mText, i, i2, cArr, i3);
            for (int lineForOffset2 = this.mLayout.getLineForOffset(i); lineForOffset2 <= lineForOffset; lineForOffset2++) {
                this.mLayout.ellipsize(i, i2, lineForOffset2, cArr, i3, this.mMethod);
            }
        }

        @Override // java.lang.CharSequence
        public int length() {
            return this.mText.length();
        }

        @Override // java.lang.CharSequence
        public CharSequence subSequence(int i, int i2) {
            char[] cArr = new char[i2 - i];
            getChars(i, i2, cArr, 0);
            return new String(cArr);
        }

        @Override // java.lang.CharSequence
        public String toString() {
            char[] cArr = new char[length()];
            getChars(0, length(), cArr, 0);
            return new String(cArr);
        }
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    static class SpannedEllipsizer extends Ellipsizer implements Spanned {
        private Spanned mSpanned;

        public SpannedEllipsizer(CharSequence charSequence) {
            super(charSequence);
            this.mSpanned = (Spanned) charSequence;
        }

        @Override // android.text.Spanned
        public <T> T[] getSpans(int i, int i2, Class<T> cls) {
            return (T[]) this.mSpanned.getSpans(i, i2, cls);
        }

        @Override // android.text.Spanned
        public int getSpanStart(Object obj) {
            return this.mSpanned.getSpanStart(obj);
        }

        @Override // android.text.Spanned
        public int getSpanEnd(Object obj) {
            return this.mSpanned.getSpanEnd(obj);
        }

        @Override // android.text.Spanned
        public int getSpanFlags(Object obj) {
            return this.mSpanned.getSpanFlags(obj);
        }

        @Override // android.text.Spanned
        public int nextSpanTransition(int i, int i2, Class cls) {
            return this.mSpanned.nextSpanTransition(i, i2, cls);
        }

        @Override // android.text.Layout.Ellipsizer, java.lang.CharSequence
        public CharSequence subSequence(int i, int i2) {
            char[] cArr = new char[i2 - i];
            getChars(i, i2, cArr, 0);
            SpannableString spannableString = new SpannableString(new String(cArr));
            TextUtils.copySpansFrom(this.mSpanned, i, i2, Object.class, spannableString, 0);
            return spannableString;
        }
    }
}
