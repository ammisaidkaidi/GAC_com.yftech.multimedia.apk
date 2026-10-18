package android.text;

import android.graphics.BaseCanvas;
import android.graphics.Paint;
import android.util.Log;
import android.view.textclassifier.TextClassifier;
import com.android.internal.annotations.GuardedBy;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.GrowingArrayUtils;
import java.lang.reflect.Array;
import java.util.IdentityHashMap;
import libcore.util.EmptyArray;

/* loaded from: /home/user/work/dex/classes2.dex */
public class SpannableStringBuilder implements CharSequence, GetChars, Spannable, Editable, Appendable, GraphicsOperations {
    private static final int END_MASK = 15;
    private static final int MARK = 1;
    private static final int PARAGRAPH = 3;
    private static final int POINT = 2;
    private static final int SPAN_ADDED = 2048;
    private static final int SPAN_END_AT_END = 32768;
    private static final int SPAN_END_AT_START = 16384;
    private static final int SPAN_START_AT_END = 8192;
    private static final int SPAN_START_AT_START = 4096;
    private static final int SPAN_START_END_MASK = 61440;
    private static final int START_MASK = 240;
    private static final int START_SHIFT = 4;
    private static final String TAG = "SpannableStringBuilder";
    private InputFilter[] mFilters;
    private int mGapLength;
    private int mGapStart;
    private IdentityHashMap<Object, Integer> mIndexOfSpan;
    private int mLowWaterMark;
    private int mSpanCount;
    private int[] mSpanEnds;
    private int[] mSpanFlags;
    private int mSpanInsertCount;
    private int[] mSpanMax;
    private int[] mSpanOrder;
    private int[] mSpanStarts;
    private Object[] mSpans;
    private char[] mText;
    private int mTextWatcherDepth;
    private static final InputFilter[] NO_FILTERS = new InputFilter[0];

    @GuardedBy("sCachedIntBuffer")
    private static final int[][] sCachedIntBuffer = (int[][]) Array.newInstance((Class<?>) int.class, 6, 0);

    private static int leftChild(int i) {
        return i - (((i + 1) & (~i)) >> 1);
    }

    private static int rightChild(int i) {
        return i + (((i + 1) & (~i)) >> 1);
    }

    public SpannableStringBuilder() {
        this(TextClassifier.TYPE_UNKNOWN);
    }

    public SpannableStringBuilder(CharSequence charSequence) {
        this(charSequence, 0, charSequence.length());
    }

    public SpannableStringBuilder(CharSequence charSequence, int i, int i2) {
        this.mFilters = NO_FILTERS;
        int i3 = i2 - i;
        if (i3 < 0) {
            throw new StringIndexOutOfBoundsException();
        }
        this.mText = ArrayUtils.newUnpaddedCharArray(GrowingArrayUtils.growSize(i3));
        this.mGapStart = i3;
        this.mGapLength = this.mText.length - i3;
        TextUtils.getChars(charSequence, i, i2, this.mText, 0);
        this.mSpanCount = 0;
        this.mSpanInsertCount = 0;
        this.mSpans = EmptyArray.OBJECT;
        this.mSpanStarts = EmptyArray.INT;
        this.mSpanEnds = EmptyArray.INT;
        this.mSpanFlags = EmptyArray.INT;
        this.mSpanMax = EmptyArray.INT;
        this.mSpanOrder = EmptyArray.INT;
        if (charSequence instanceof Spanned) {
            Spanned spanned = (Spanned) charSequence;
            Object[] spans = spanned.getSpans(i, i2, Object.class);
            for (int i4 = 0; i4 < spans.length; i4++) {
                if (!(spans[i4] instanceof NoCopySpan)) {
                    int spanStart = spanned.getSpanStart(spans[i4]) - i;
                    int spanEnd = spanned.getSpanEnd(spans[i4]) - i;
                    int spanFlags = spanned.getSpanFlags(spans[i4]);
                    spanStart = spanStart < 0 ? 0 : spanStart;
                    int i5 = spanStart > i3 ? i3 : spanStart;
                    spanEnd = spanEnd < 0 ? 0 : spanEnd;
                    setSpan(false, spans[i4], i5, spanEnd > i3 ? i3 : spanEnd, spanFlags, false);
                }
            }
            restoreInvariants();
        }
    }

    public static SpannableStringBuilder valueOf(CharSequence charSequence) {
        if (charSequence instanceof SpannableStringBuilder) {
            return (SpannableStringBuilder) charSequence;
        }
        return new SpannableStringBuilder(charSequence);
    }

    @Override // java.lang.CharSequence
    public char charAt(int i) {
        int length = length();
        if (i < 0) {
            throw new IndexOutOfBoundsException("charAt: " + i + " < 0");
        }
        if (i >= length) {
            throw new IndexOutOfBoundsException("charAt: " + i + " >= length " + length);
        }
        if (i >= this.mGapStart) {
            return this.mText[i + this.mGapLength];
        }
        return this.mText[i];
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.mText.length - this.mGapLength;
    }

    private void resizeFor(int i) {
        int length = this.mText.length;
        if (i + 1 <= length) {
            return;
        }
        char[] newUnpaddedCharArray = ArrayUtils.newUnpaddedCharArray(GrowingArrayUtils.growSize(i));
        System.arraycopy(this.mText, 0, newUnpaddedCharArray, 0, this.mGapStart);
        int length2 = newUnpaddedCharArray.length;
        int i2 = length2 - length;
        int i3 = length - (this.mGapStart + this.mGapLength);
        System.arraycopy(this.mText, length - i3, newUnpaddedCharArray, length2 - i3, i3);
        this.mText = newUnpaddedCharArray;
        this.mGapLength += i2;
        if (this.mGapLength < 1) {
            new Exception("mGapLength < 1").printStackTrace();
        }
        if (this.mSpanCount != 0) {
            for (int i4 = 0; i4 < this.mSpanCount; i4++) {
                if (this.mSpanStarts[i4] > this.mGapStart) {
                    int[] iArr = this.mSpanStarts;
                    iArr[i4] = iArr[i4] + i2;
                }
                if (this.mSpanEnds[i4] > this.mGapStart) {
                    int[] iArr2 = this.mSpanEnds;
                    iArr2[i4] = iArr2[i4] + i2;
                }
            }
            calcMax(treeRoot());
        }
    }

    private void moveGapTo(int i) {
        int i2;
        int i3;
        if (i == this.mGapStart) {
            return;
        }
        boolean z = i == length();
        if (i < this.mGapStart) {
            int i4 = this.mGapStart - i;
            System.arraycopy(this.mText, i, this.mText, (this.mGapStart + this.mGapLength) - i4, i4);
        } else {
            int i5 = i - this.mGapStart;
            System.arraycopy(this.mText, (this.mGapLength + i) - i5, this.mText, this.mGapStart, i5);
        }
        if (this.mSpanCount != 0) {
            for (int i6 = 0; i6 < this.mSpanCount; i6++) {
                int i7 = this.mSpanStarts[i6];
                int i8 = this.mSpanEnds[i6];
                if (i7 > this.mGapStart) {
                    i7 -= this.mGapLength;
                }
                if (i7 > i) {
                    i7 += this.mGapLength;
                } else if (i7 == i && ((i2 = (this.mSpanFlags[i6] & 240) >> 4) == 2 || (z && i2 == 3))) {
                    i7 += this.mGapLength;
                }
                if (i8 > this.mGapStart) {
                    i8 -= this.mGapLength;
                }
                if (i8 > i) {
                    i8 += this.mGapLength;
                } else if (i8 == i && ((i3 = this.mSpanFlags[i6] & 15) == 2 || (z && i3 == 3))) {
                    i8 += this.mGapLength;
                }
                this.mSpanStarts[i6] = i7;
                this.mSpanEnds[i6] = i8;
            }
            calcMax(treeRoot());
        }
        this.mGapStart = i;
    }

    @Override // android.text.Editable
    public SpannableStringBuilder insert(int i, CharSequence charSequence, int i2, int i3) {
        return replace(i, i, charSequence, i2, i3);
    }

    @Override // android.text.Editable
    public SpannableStringBuilder insert(int i, CharSequence charSequence) {
        return replace(i, i, charSequence, 0, charSequence.length());
    }

    @Override // android.text.Editable
    public SpannableStringBuilder delete(int i, int i2) {
        SpannableStringBuilder replace = replace(i, i2, TextClassifier.TYPE_UNKNOWN, 0, 0);
        if (this.mGapLength > length() * 2) {
            resizeFor(length());
        }
        return replace;
    }

    @Override // android.text.Editable
    public void clear() {
        replace(0, length(), TextClassifier.TYPE_UNKNOWN, 0, 0);
        this.mSpanInsertCount = 0;
    }

    @Override // android.text.Editable
    public void clearSpans() {
        for (int i = this.mSpanCount - 1; i >= 0; i--) {
            Object obj = this.mSpans[i];
            int i2 = this.mSpanStarts[i];
            int i3 = this.mSpanEnds[i];
            if (i2 > this.mGapStart) {
                i2 -= this.mGapLength;
            }
            if (i3 > this.mGapStart) {
                i3 -= this.mGapLength;
            }
            this.mSpanCount = i;
            this.mSpans[i] = null;
            sendSpanRemoved(obj, i2, i3);
        }
        if (this.mIndexOfSpan != null) {
            this.mIndexOfSpan.clear();
        }
        this.mSpanInsertCount = 0;
    }

    @Override // android.text.Editable, java.lang.Appendable
    public SpannableStringBuilder append(CharSequence charSequence) {
        int length = length();
        return replace(length, length, charSequence, 0, charSequence.length());
    }

    public SpannableStringBuilder append(CharSequence charSequence, Object obj, int i) {
        int length = length();
        append(charSequence);
        setSpan(obj, length, length(), i);
        return this;
    }

    @Override // android.text.Editable, java.lang.Appendable
    public SpannableStringBuilder append(CharSequence charSequence, int i, int i2) {
        int length = length();
        return replace(length, length, charSequence, i, i2);
    }

    @Override // android.text.Editable, java.lang.Appendable
    public SpannableStringBuilder append(char c) {
        return append((CharSequence) String.valueOf(c));
    }

    private boolean removeSpansForChange(int i, int i2, boolean z, int i3) {
        int i4 = i3 & 1;
        if (i4 != 0 && resolveGap(this.mSpanMax[i3]) >= i && removeSpansForChange(i, i2, z, leftChild(i3))) {
            return true;
        }
        if (i3 >= this.mSpanCount) {
            return false;
        }
        if ((this.mSpanFlags[i3] & 33) != 33 || this.mSpanStarts[i3] < i || this.mSpanStarts[i3] >= this.mGapStart + this.mGapLength || this.mSpanEnds[i3] < i || this.mSpanEnds[i3] >= this.mGapStart + this.mGapLength || (!z && this.mSpanStarts[i3] <= i && this.mSpanEnds[i3] >= this.mGapStart)) {
            return resolveGap(this.mSpanStarts[i3]) <= i2 && i4 != 0 && removeSpansForChange(i, i2, z, rightChild(i3));
        }
        this.mIndexOfSpan.remove(this.mSpans[i3]);
        removeSpan(i3, 0);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x018a, code lost:
    
        if (r1 <= r27) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x018c, code lost:
    
        r1 = r27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x0193, code lost:
    
        if (getSpanStart(r10[r13]) >= 0) goto L116;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0195, code lost:
    
        setSpan(false, r10[r13], (r0 - r26) + r23, (r1 - r26) + r23, r9.getSpanFlags(r10[r13]) | 2048, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x01ac, code lost:
    
        r13 = r13 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x01af, code lost:
    
        restoreInvariants();
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x01b2, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00e9, code lost:
    
        if (r13 > 0) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00ed, code lost:
    
        if (r22.mSpanCount <= 0) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x00f7, code lost:
    
        if (removeSpansForChange(r23, r24, r14, treeRoot()) == false) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x00fa, code lost:
    
        r22.mGapStart += r15;
        r22.mGapLength -= r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0106, code lost:
    
        if (r22.mGapLength >= r10) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0108, code lost:
    
        new java.lang.Exception("mGapLength < 1").printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0112, code lost:
    
        android.text.TextUtils.getChars(r25, r26, r27, r22.mText, r23);
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x011a, code lost:
    
        if (r13 <= 0) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0124, code lost:
    
        if ((r22.mGapStart + r22.mGapLength) != r22.mText.length) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0126, code lost:
    
        r10 = r10 == true ? 1 : 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x012a, code lost:
    
        r13 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x012e, code lost:
    
        if (r13 >= r22.mSpanCount) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0130, code lost:
    
        r5 = r10;
        r22.mSpanStarts[r13] = updatedIntervalBound(r22.mSpanStarts[r13], r23, r15, (r22.mSpanFlags[r13] & 240) >> 4, r5, r14);
        r22.mSpanEnds[r13] = updatedIntervalBound(r22.mSpanEnds[r13], r23, r15, r22.mSpanFlags[r13] & 15, r5, r14);
        r13 = r13 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0167, code lost:
    
        restoreInvariants();
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0128, code lost:
    
        r10 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x016c, code lost:
    
        if ((r25 instanceof android.text.Spanned) == false) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x016e, code lost:
    
        r9 = (android.text.Spanned) r25;
        r10 = r9.getSpans(r26, r27, java.lang.Object.class);
        r13 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0179, code lost:
    
        if (r13 >= r10.length) goto L114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x017b, code lost:
    
        r0 = r9.getSpanStart(r10[r13]);
        r1 = r9.getSpanEnd(r10[r13]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0187, code lost:
    
        if (r0 >= r26) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0189, code lost:
    
        r0 = r26;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void change(int i, int i2, CharSequence charSequence, int i3, int i4) {
        boolean z;
        boolean z2;
        int i5;
        int i6;
        int i7;
        int i8 = i2 - i;
        int i9 = i4 - i3;
        int i10 = i9 - i8;
        boolean z3 = true;
        int i11 = this.mSpanCount - 1;
        boolean z4 = false;
        while (i11 >= 0) {
            int i12 = this.mSpanStarts[i11];
            if (i12 > this.mGapStart) {
                i12 -= this.mGapLength;
            }
            int i13 = this.mSpanEnds[i11];
            if (i13 > this.mGapStart) {
                i13 -= this.mGapLength;
            }
            if ((this.mSpanFlags[i11] & 51) == 51) {
                int length = length();
                if (i12 <= i || i12 > i2) {
                    i5 = i12;
                } else {
                    int i14 = i2;
                    while (i14 < length && (i14 <= i2 || charAt(i14 - 1) != '\n')) {
                        i14++;
                    }
                    i5 = i14;
                }
                if (i13 <= i || i13 > i2) {
                    i6 = i13;
                } else {
                    i6 = i2;
                    while (i6 < length) {
                        if (i6 > i2) {
                            i7 = length;
                            if (charAt(i6 - 1) == '\n') {
                                break;
                            }
                        } else {
                            i7 = length;
                        }
                        i6++;
                        length = i7;
                    }
                }
                if (i5 == i12 && i6 == i13) {
                    i13 = i6;
                    i12 = i5;
                    z = true;
                    z2 = z4;
                } else {
                    z = true;
                    setSpan(false, this.mSpans[i11], i5, i6, this.mSpanFlags[i11], true);
                    z2 = true;
                    i12 = i5;
                    i13 = i6;
                }
            } else {
                z = z3;
                z2 = z4;
            }
            int i15 = i12 == i ? 4096 : i12 == i2 + i10 ? 8192 : 0;
            if (i13 == i) {
                i15 |= 16384;
            } else if (i13 == i2 + i10) {
                i15 |= 32768;
            }
            int[] iArr = this.mSpanFlags;
            iArr[i11] = i15 | iArr[i11];
            i11--;
            z3 = z;
            z4 = z2;
        }
        ?? r10 = z3;
        if (z4) {
            restoreInvariants();
        }
        moveGapTo(i2);
        if (i10 >= this.mGapLength) {
            resizeFor((this.mText.length + i10) - this.mGapLength);
        }
        boolean z5 = i9 == 0 ? r10 == true ? 1 : 0 : false;
    }

    private int updatedIntervalBound(int i, int i2, int i3, int i4, boolean z, boolean z2) {
        if (i >= i2 && i < this.mGapStart + this.mGapLength) {
            if (i4 == 2) {
                if (z2 || i > i2) {
                    return this.mGapStart + this.mGapLength;
                }
            } else {
                if (i4 != 3) {
                    return (z2 || i < this.mGapStart - i3) ? i2 : this.mGapStart;
                }
                if (z) {
                    return this.mGapStart + this.mGapLength;
                }
            }
        }
        return i;
    }

    private void removeSpan(int i, int i2) {
        Object obj = this.mSpans[i];
        int i3 = this.mSpanStarts[i];
        int i4 = this.mSpanEnds[i];
        if (i3 > this.mGapStart) {
            i3 -= this.mGapLength;
        }
        if (i4 > this.mGapStart) {
            i4 -= this.mGapLength;
        }
        int i5 = i + 1;
        int i6 = this.mSpanCount - i5;
        System.arraycopy(this.mSpans, i5, this.mSpans, i, i6);
        System.arraycopy(this.mSpanStarts, i5, this.mSpanStarts, i, i6);
        System.arraycopy(this.mSpanEnds, i5, this.mSpanEnds, i, i6);
        System.arraycopy(this.mSpanFlags, i5, this.mSpanFlags, i, i6);
        System.arraycopy(this.mSpanOrder, i5, this.mSpanOrder, i, i6);
        this.mSpanCount--;
        invalidateIndex(i);
        this.mSpans[this.mSpanCount] = null;
        restoreInvariants();
        if ((i2 & 512) == 0) {
            sendSpanRemoved(obj, i3, i4);
        }
    }

    @Override // android.text.Editable
    public SpannableStringBuilder replace(int i, int i2, CharSequence charSequence) {
        return replace(i, i2, charSequence, 0, charSequence.length());
    }

    @Override // android.text.Editable
    public SpannableStringBuilder replace(int i, int i2, CharSequence charSequence, int i3, int i4) {
        int i5;
        int i6;
        TextWatcher[] textWatcherArr;
        checkRange("replace", i, i2);
        int length = this.mFilters.length;
        boolean z = false;
        CharSequence charSequence2 = charSequence;
        int i7 = i3;
        int i8 = i4;
        for (int i9 = 0; i9 < length; i9++) {
            CharSequence filter = this.mFilters[i9].filter(charSequence2, i7, i8, this, i, i2);
            if (filter != null) {
                charSequence2 = filter;
                i8 = filter.length();
                i7 = 0;
            }
        }
        int i10 = i2 - i;
        int i11 = i8 - i7;
        if (i10 == 0 && i11 == 0 && !hasNonExclusiveExclusiveSpanAt(charSequence2, i7)) {
            return this;
        }
        TextWatcher[] textWatcherArr2 = (TextWatcher[]) getSpans(i, i + i10, TextWatcher.class);
        sendBeforeTextChanged(textWatcherArr2, i, i10, i11);
        boolean z2 = (i10 == 0 || i11 == 0) ? false : true;
        if (z2) {
            i6 = Selection.getSelectionStart(this);
            i5 = Selection.getSelectionEnd(this);
        } else {
            i5 = 0;
            i6 = 0;
        }
        CharSequence charSequence3 = charSequence2;
        int i12 = i5;
        int i13 = i7;
        int i14 = i6;
        change(i, i2, charSequence3, i13, i8);
        if (z2) {
            if (i14 <= i || i14 >= i2) {
                textWatcherArr = textWatcherArr2;
            } else {
                int intExact = i + Math.toIntExact(((i14 - i) * i11) / i10);
                textWatcherArr = textWatcherArr2;
                setSpan(false, Selection.SELECTION_START, intExact, intExact, 34, true);
                z = true;
            }
            if (i12 > i && i12 < i2) {
                int intExact2 = i + Math.toIntExact(((i12 - i) * i11) / i10);
                setSpan(false, Selection.SELECTION_END, intExact2, intExact2, 34, true);
                z = true;
            }
            if (z) {
                restoreInvariants();
            }
        } else {
            textWatcherArr = textWatcherArr2;
        }
        sendTextChanged(textWatcherArr, i, i10, i11);
        sendAfterTextChanged(textWatcherArr);
        sendToSpanWatchers(i, i2, i11 - i10);
        return this;
    }

    private static boolean hasNonExclusiveExclusiveSpanAt(CharSequence charSequence, int i) {
        if (charSequence instanceof Spanned) {
            Spanned spanned = (Spanned) charSequence;
            for (Object obj : spanned.getSpans(i, i, Object.class)) {
                if (spanned.getSpanFlags(obj) != 33) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x005a, code lost:
    
        if ((r2 & 16384) != 16384) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0062, code lost:
    
        if ((r2 & 32768) != 32768) goto L40;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0052  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void sendToSpanWatchers(int i, int i2, int i3) {
        boolean z;
        int i4;
        int i5;
        for (int i6 = 0; i6 < this.mSpanCount; i6++) {
            int i7 = this.mSpanFlags[i6];
            if ((i7 & 2048) == 0) {
                int i8 = this.mSpanStarts[i6];
                int i9 = this.mSpanEnds[i6];
                if (i8 > this.mGapStart) {
                    i8 -= this.mGapLength;
                }
                int i10 = i8;
                if (i9 > this.mGapStart) {
                    i9 -= this.mGapLength;
                }
                int i11 = i9;
                int i12 = i2 + i3;
                boolean z2 = true;
                if (i10 > i12) {
                    if (i3 != 0) {
                        i4 = i10 - i3;
                        z = true;
                        if (i11 > i12) {
                            if (i3 != 0) {
                                i5 = i11 - i3;
                                if (z2) {
                                    sendSpanChanged(this.mSpans[i6], i4, i5, i10, i11);
                                }
                                int[] iArr = this.mSpanFlags;
                                iArr[i6] = iArr[i6] & (-61441);
                            }
                        } else if (i11 >= i) {
                            if (i11 == i) {
                            }
                            if (i11 == i12) {
                            }
                            i5 = i11;
                            if (z2) {
                            }
                            int[] iArr2 = this.mSpanFlags;
                            iArr2[i6] = iArr2[i6] & (-61441);
                        }
                        z2 = z;
                        i5 = i11;
                        if (z2) {
                        }
                        int[] iArr22 = this.mSpanFlags;
                        iArr22[i6] = iArr22[i6] & (-61441);
                    }
                } else if (i10 >= i && ((i10 != i || (i7 & 4096) != 4096) && (i10 != i12 || (i7 & 8192) != 8192))) {
                    z = true;
                    i4 = i10;
                    if (i11 > i12) {
                    }
                    z2 = z;
                    i5 = i11;
                    if (z2) {
                    }
                    int[] iArr222 = this.mSpanFlags;
                    iArr222[i6] = iArr222[i6] & (-61441);
                }
                z = false;
                i4 = i10;
                if (i11 > i12) {
                }
                z2 = z;
                i5 = i11;
                if (z2) {
                }
                int[] iArr2222 = this.mSpanFlags;
                iArr2222[i6] = iArr2222[i6] & (-61441);
            }
        }
        for (int i13 = 0; i13 < this.mSpanCount; i13++) {
            if ((this.mSpanFlags[i13] & 2048) != 0) {
                int[] iArr3 = this.mSpanFlags;
                iArr3[i13] = iArr3[i13] & (-2049);
                int i14 = this.mSpanStarts[i13];
                int i15 = this.mSpanEnds[i13];
                if (i14 > this.mGapStart) {
                    i14 -= this.mGapLength;
                }
                if (i15 > this.mGapStart) {
                    i15 -= this.mGapLength;
                }
                sendSpanAdded(this.mSpans[i13], i14, i15);
            }
        }
    }

    @Override // android.text.Spannable
    public void setSpan(Object obj, int i, int i2, int i3) {
        setSpan(true, obj, i, i2, i3, true);
    }

    private void setSpan(boolean z, Object obj, int i, int i2, int i3, boolean z2) {
        int i4;
        int i5;
        Integer num;
        checkRange("setSpan", i, i2);
        int i6 = (i3 & 240) >> 4;
        if (isInvalidParagraph(i, i6)) {
            if (z2) {
                throw new RuntimeException("PARAGRAPH span must start at paragraph boundary (" + i + " follows " + charAt(i - 1) + ")");
            }
            return;
        }
        int i7 = i3 & 15;
        if (isInvalidParagraph(i2, i7)) {
            if (z2) {
                throw new RuntimeException("PARAGRAPH span must end at paragraph boundary (" + i2 + " follows " + charAt(i2 - 1) + ")");
            }
            return;
        }
        if (i6 == 2 && i7 == 1 && i == i2) {
            if (z) {
                Log.e(TAG, "SPAN_EXCLUSIVE_EXCLUSIVE spans cannot have a zero length");
                return;
            }
            return;
        }
        if (i > this.mGapStart) {
            i4 = this.mGapLength + i;
        } else {
            i4 = (i == this.mGapStart && (i6 == 2 || (i6 == 3 && i == length()))) ? this.mGapLength + i : i;
        }
        if (i2 > this.mGapStart) {
            i5 = this.mGapLength + i2;
        } else {
            i5 = (i2 == this.mGapStart && (i7 == 2 || (i7 == 3 && i2 == length()))) ? this.mGapLength + i2 : i2;
        }
        if (this.mIndexOfSpan != null && (num = this.mIndexOfSpan.get(obj)) != null) {
            int intValue = num.intValue();
            int i8 = this.mSpanStarts[intValue];
            int i9 = this.mSpanEnds[intValue];
            if (i8 > this.mGapStart) {
                i8 -= this.mGapLength;
            }
            if (i9 > this.mGapStart) {
                i9 -= this.mGapLength;
            }
            this.mSpanStarts[intValue] = i4;
            this.mSpanEnds[intValue] = i5;
            this.mSpanFlags[intValue] = i3;
            if (z) {
                restoreInvariants();
                sendSpanChanged(obj, i8, i9, i, i2);
                return;
            }
            return;
        }
        this.mSpans = GrowingArrayUtils.append(this.mSpans, this.mSpanCount, obj);
        this.mSpanStarts = GrowingArrayUtils.append(this.mSpanStarts, this.mSpanCount, i4);
        this.mSpanEnds = GrowingArrayUtils.append(this.mSpanEnds, this.mSpanCount, i5);
        this.mSpanFlags = GrowingArrayUtils.append(this.mSpanFlags, this.mSpanCount, i3);
        this.mSpanOrder = GrowingArrayUtils.append(this.mSpanOrder, this.mSpanCount, this.mSpanInsertCount);
        invalidateIndex(this.mSpanCount);
        this.mSpanCount++;
        this.mSpanInsertCount++;
        int treeRoot = (treeRoot() * 2) + 1;
        if (this.mSpanMax.length < treeRoot) {
            this.mSpanMax = new int[treeRoot];
        }
        if (z) {
            restoreInvariants();
            sendSpanAdded(obj, i, i2);
        }
    }

    private boolean isInvalidParagraph(int i, int i2) {
        return (i2 != 3 || i == 0 || i == length() || charAt(i - 1) == '\n') ? false : true;
    }

    @Override // android.text.Spannable
    public void removeSpan(Object obj) {
        removeSpan(obj, 0);
    }

    @Override // android.text.Spannable
    public void removeSpan(Object obj, int i) {
        Integer remove;
        if (this.mIndexOfSpan == null || (remove = this.mIndexOfSpan.remove(obj)) == null) {
            return;
        }
        removeSpan(remove.intValue(), i);
    }

    private int resolveGap(int i) {
        return i > this.mGapStart ? i - this.mGapLength : i;
    }

    @Override // android.text.Spanned
    public int getSpanStart(Object obj) {
        Integer num;
        if (this.mIndexOfSpan == null || (num = this.mIndexOfSpan.get(obj)) == null) {
            return -1;
        }
        return resolveGap(this.mSpanStarts[num.intValue()]);
    }

    @Override // android.text.Spanned
    public int getSpanEnd(Object obj) {
        Integer num;
        if (this.mIndexOfSpan == null || (num = this.mIndexOfSpan.get(obj)) == null) {
            return -1;
        }
        return resolveGap(this.mSpanEnds[num.intValue()]);
    }

    @Override // android.text.Spanned
    public int getSpanFlags(Object obj) {
        Integer num;
        if (this.mIndexOfSpan == null || (num = this.mIndexOfSpan.get(obj)) == null) {
            return 0;
        }
        return this.mSpanFlags[num.intValue()];
    }

    @Override // android.text.Spanned
    public <T> T[] getSpans(int i, int i2, Class<T> cls) {
        return (T[]) getSpans(i, i2, cls, true);
    }

    public <T> T[] getSpans(int i, int i2, Class<T> cls, boolean z) {
        if (cls == null) {
            return (T[]) ArrayUtils.emptyArray(Object.class);
        }
        if (this.mSpanCount == 0) {
            return (T[]) ArrayUtils.emptyArray(cls);
        }
        int countSpans = countSpans(i, i2, cls, treeRoot());
        if (countSpans == 0) {
            return (T[]) ArrayUtils.emptyArray(cls);
        }
        T[] tArr = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, countSpans));
        int[] obtain = z ? obtain(countSpans) : EmptyArray.INT;
        int[] obtain2 = z ? obtain(countSpans) : EmptyArray.INT;
        getSpansRec(i, i2, cls, treeRoot(), tArr, obtain, obtain2, 0, z);
        if (z) {
            sort(tArr, obtain, obtain2);
            recycle(obtain);
            recycle(obtain2);
        }
        return tArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001f  */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int countSpans(int i, int i2, Class cls, int i3) {
        int i4;
        int i5 = i3 & 1;
        if (i5 != 0) {
            int leftChild = leftChild(i3);
            int i6 = this.mSpanMax[leftChild];
            if (i6 > this.mGapStart) {
                i6 -= this.mGapLength;
            }
            if (i6 >= i) {
                i4 = countSpans(i, i2, cls, leftChild);
                if (i3 < this.mSpanCount) {
                    return i4;
                }
                int i7 = this.mSpanStarts[i3];
                if (i7 > this.mGapStart) {
                    i7 -= this.mGapLength;
                }
                if (i7 > i2) {
                    return i4;
                }
                int i8 = this.mSpanEnds[i3];
                if (i8 > this.mGapStart) {
                    i8 -= this.mGapLength;
                }
                if (i8 >= i && ((i7 == i8 || i == i2 || (i7 != i2 && i8 != i)) && (Object.class == cls || cls.isInstance(this.mSpans[i3])))) {
                    i4++;
                }
                return i5 != 0 ? i4 + countSpans(i, i2, cls, rightChild(i3)) : i4;
            }
        }
        i4 = 0;
        if (i3 < this.mSpanCount) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x003e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:12:0x003f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private <T> int getSpansRec(int i, int i2, Class<T> cls, int i3, T[] tArr, int[] iArr, int[] iArr2, int i4, boolean z) {
        int i5;
        int i6;
        int i7 = i3 & 1;
        if (i7 != 0) {
            int leftChild = leftChild(i3);
            int i8 = this.mSpanMax[leftChild];
            if (i8 > this.mGapStart) {
                i8 -= this.mGapLength;
            }
            if (i8 >= i) {
                i5 = getSpansRec(i, i2, cls, leftChild, tArr, iArr, iArr2, i4, z);
                if (i3 < this.mSpanCount) {
                    return i5;
                }
                int i9 = this.mSpanStarts[i3];
                if (i9 > this.mGapStart) {
                    i9 -= this.mGapLength;
                }
                if (i9 > i2) {
                    return i5;
                }
                int i10 = this.mSpanEnds[i3];
                if (i10 > this.mGapStart) {
                    i10 -= this.mGapLength;
                }
                if (i10 >= i && ((i9 == i10 || i == i2 || (i9 != i2 && i10 != i)) && (Object.class == cls || cls.isInstance(this.mSpans[i3])))) {
                    int i11 = this.mSpanFlags[i3] & Spanned.SPAN_PRIORITY;
                    if (z) {
                        iArr[i5] = i11;
                        iArr2[i5] = this.mSpanOrder[i3];
                    } else if (i11 != 0) {
                        i6 = 0;
                        while (i6 < i5 && i11 <= (getSpanFlags(tArr[i6]) & Spanned.SPAN_PRIORITY)) {
                            i6++;
                        }
                        System.arraycopy(tArr, i6, tArr, i6 + 1, i5 - i6);
                        tArr[i6] = this.mSpans[i3];
                        i5++;
                    }
                    i6 = i5;
                    tArr[i6] = this.mSpans[i3];
                    i5++;
                }
                int i12 = i5;
                return (i12 >= tArr.length || i7 == 0) ? i12 : getSpansRec(i, i2, cls, rightChild(i3), tArr, iArr, iArr2, i12, z);
            }
        }
        i5 = i4;
        if (i3 < this.mSpanCount) {
        }
    }

    private static int[] obtain(int i) {
        int[] iArr;
        synchronized (sCachedIntBuffer) {
            int length = sCachedIntBuffer.length - 1;
            int i2 = -1;
            while (true) {
                if (length < 0) {
                    length = i2;
                    break;
                }
                if (sCachedIntBuffer[length] != null) {
                    if (sCachedIntBuffer[length].length >= i) {
                        break;
                    }
                    if (i2 == -1) {
                        i2 = length;
                    }
                }
                length--;
            }
            if (length != -1) {
                iArr = sCachedIntBuffer[length];
                sCachedIntBuffer[length] = null;
            } else {
                iArr = null;
            }
        }
        return checkSortBuffer(iArr, i);
    }

    private static void recycle(int[] iArr) {
        synchronized (sCachedIntBuffer) {
            for (int i = 0; i < sCachedIntBuffer.length; i++) {
                if (sCachedIntBuffer[i] != null && iArr.length <= sCachedIntBuffer[i].length) {
                }
                sCachedIntBuffer[i] = iArr;
            }
        }
    }

    private static int[] checkSortBuffer(int[] iArr, int i) {
        return (iArr == null || i > iArr.length) ? ArrayUtils.newUnpaddedIntArray(GrowingArrayUtils.growSize(i)) : iArr;
    }

    private final <T> void sort(T[] tArr, int[] iArr, int[] iArr2) {
        int length = tArr.length;
        for (int i = (length / 2) - 1; i >= 0; i--) {
            siftDown(i, tArr, length, iArr, iArr2);
        }
        for (int i2 = length - 1; i2 > 0; i2--) {
            T t = tArr[0];
            tArr[0] = tArr[i2];
            tArr[i2] = t;
            int i3 = iArr[0];
            iArr[0] = iArr[i2];
            iArr[i2] = i3;
            int i4 = iArr2[0];
            iArr2[0] = iArr2[i2];
            iArr2[i2] = i4;
            siftDown(0, tArr, i2, iArr, iArr2);
        }
    }

    private final <T> void siftDown(int i, T[] tArr, int i2, int[] iArr, int[] iArr2) {
        int i3 = (i * 2) + 1;
        while (i3 < i2) {
            if (i3 < i2 - 1) {
                int i4 = i3 + 1;
                if (compareSpans(i3, i4, iArr, iArr2) < 0) {
                    i3 = i4;
                }
            }
            if (compareSpans(i, i3, iArr, iArr2) >= 0) {
                return;
            }
            T t = tArr[i];
            tArr[i] = tArr[i3];
            tArr[i3] = t;
            int i5 = iArr[i];
            iArr[i] = iArr[i3];
            iArr[i3] = i5;
            int i6 = iArr2[i];
            iArr2[i] = iArr2[i3];
            iArr2[i3] = i6;
            int i7 = i3;
            i3 = (i3 * 2) + 1;
            i = i7;
        }
    }

    private final int compareSpans(int i, int i2, int[] iArr, int[] iArr2) {
        int i3 = iArr[i];
        int i4 = iArr[i2];
        if (i3 == i4) {
            return Integer.compare(iArr2[i], iArr2[i2]);
        }
        return Integer.compare(i4, i3);
    }

    @Override // android.text.Spanned
    public int nextSpanTransition(int i, int i2, Class cls) {
        if (this.mSpanCount == 0) {
            return i2;
        }
        if (cls == null) {
            cls = Object.class;
        }
        return nextSpanTransitionRec(i, i2, cls, treeRoot());
    }

    private int nextSpanTransitionRec(int i, int i2, Class cls, int i3) {
        int i4 = i3 & 1;
        if (i4 != 0) {
            int leftChild = leftChild(i3);
            if (resolveGap(this.mSpanMax[leftChild]) > i) {
                i2 = nextSpanTransitionRec(i, i2, cls, leftChild);
            }
        }
        if (i3 >= this.mSpanCount) {
            return i2;
        }
        int resolveGap = resolveGap(this.mSpanStarts[i3]);
        int resolveGap2 = resolveGap(this.mSpanEnds[i3]);
        if (resolveGap > i && resolveGap < i2 && cls.isInstance(this.mSpans[i3])) {
            i2 = resolveGap;
        }
        if (resolveGap2 > i && resolveGap2 < i2 && cls.isInstance(this.mSpans[i3])) {
            i2 = resolveGap2;
        }
        return (resolveGap >= i2 || i4 == 0) ? i2 : nextSpanTransitionRec(i, i2, cls, rightChild(i3));
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i, int i2) {
        return new SpannableStringBuilder(this, i, i2);
    }

    @Override // android.text.GetChars
    public void getChars(int i, int i2, char[] cArr, int i3) {
        checkRange("getChars", i, i2);
        if (i2 <= this.mGapStart) {
            System.arraycopy(this.mText, i, cArr, i3, i2 - i);
        } else if (i >= this.mGapStart) {
            System.arraycopy(this.mText, this.mGapLength + i, cArr, i3, i2 - i);
        } else {
            System.arraycopy(this.mText, i, cArr, i3, this.mGapStart - i);
            System.arraycopy(this.mText, this.mGapStart + this.mGapLength, cArr, i3 + (this.mGapStart - i), i2 - this.mGapStart);
        }
    }

    @Override // java.lang.CharSequence
    public String toString() {
        int length = length();
        char[] cArr = new char[length];
        getChars(0, length, cArr, 0);
        return new String(cArr);
    }

    public String substring(int i, int i2) {
        char[] cArr = new char[i2 - i];
        getChars(i, i2, cArr, 0);
        return new String(cArr);
    }

    public int getTextWatcherDepth() {
        return this.mTextWatcherDepth;
    }

    private void sendBeforeTextChanged(TextWatcher[] textWatcherArr, int i, int i2, int i3) {
        this.mTextWatcherDepth++;
        for (TextWatcher textWatcher : textWatcherArr) {
            textWatcher.beforeTextChanged(this, i, i2, i3);
        }
        this.mTextWatcherDepth--;
    }

    private void sendTextChanged(TextWatcher[] textWatcherArr, int i, int i2, int i3) {
        this.mTextWatcherDepth++;
        for (TextWatcher textWatcher : textWatcherArr) {
            textWatcher.onTextChanged(this, i, i2, i3);
        }
        this.mTextWatcherDepth--;
    }

    private void sendAfterTextChanged(TextWatcher[] textWatcherArr) {
        this.mTextWatcherDepth++;
        for (TextWatcher textWatcher : textWatcherArr) {
            textWatcher.afterTextChanged(this);
        }
        this.mTextWatcherDepth--;
    }

    private void sendSpanAdded(Object obj, int i, int i2) {
        for (SpanWatcher spanWatcher : (SpanWatcher[]) getSpans(i, i2, SpanWatcher.class)) {
            spanWatcher.onSpanAdded(this, obj, i, i2);
        }
    }

    private void sendSpanRemoved(Object obj, int i, int i2) {
        for (SpanWatcher spanWatcher : (SpanWatcher[]) getSpans(i, i2, SpanWatcher.class)) {
            spanWatcher.onSpanRemoved(this, obj, i, i2);
        }
    }

    private void sendSpanChanged(Object obj, int i, int i2, int i3, int i4) {
        for (SpanWatcher spanWatcher : (SpanWatcher[]) getSpans(Math.min(i, i3), Math.min(Math.max(i2, i4), length()), SpanWatcher.class)) {
            spanWatcher.onSpanChanged(this, obj, i, i2, i3, i4);
        }
    }

    private static String region(int i, int i2) {
        return "(" + i + " ... " + i2 + ")";
    }

    private void checkRange(String str, int i, int i2) {
        if (i2 < i) {
            throw new IndexOutOfBoundsException(str + " " + region(i, i2) + " has end before start");
        }
        int length = length();
        if (i > length || i2 > length) {
            throw new IndexOutOfBoundsException(str + " " + region(i, i2) + " ends beyond length " + length);
        }
        if (i < 0 || i2 < 0) {
            throw new IndexOutOfBoundsException(str + " " + region(i, i2) + " starts before 0");
        }
    }

    @Override // android.text.GraphicsOperations
    public void drawText(BaseCanvas baseCanvas, int i, int i2, float f, float f2, Paint paint) {
        checkRange("drawText", i, i2);
        if (i2 <= this.mGapStart) {
            baseCanvas.drawText(this.mText, i, i2 - i, f, f2, paint);
            return;
        }
        if (i >= this.mGapStart) {
            baseCanvas.drawText(this.mText, i + this.mGapLength, i2 - i, f, f2, paint);
            return;
        }
        int i3 = i2 - i;
        char[] obtain = TextUtils.obtain(i3);
        getChars(i, i2, obtain, 0);
        baseCanvas.drawText(obtain, 0, i3, f, f2, paint);
        TextUtils.recycle(obtain);
    }

    @Override // android.text.GraphicsOperations
    public void drawTextRun(BaseCanvas baseCanvas, int i, int i2, int i3, int i4, float f, float f2, boolean z, Paint paint) {
        checkRange("drawTextRun", i, i2);
        int i5 = i4 - i3;
        int i6 = i2 - i;
        if (i4 <= this.mGapStart) {
            baseCanvas.drawTextRun(this.mText, i, i6, i3, i5, f, f2, z, paint);
            return;
        }
        if (i3 >= this.mGapStart) {
            baseCanvas.drawTextRun(this.mText, i + this.mGapLength, i6, i3 + this.mGapLength, i5, f, f2, z, paint);
            return;
        }
        char[] obtain = TextUtils.obtain(i5);
        getChars(i3, i4, obtain, 0);
        baseCanvas.drawTextRun(obtain, i - i3, i6, 0, i5, f, f2, z, paint);
        TextUtils.recycle(obtain);
    }

    @Override // android.text.GraphicsOperations
    public float measureText(int i, int i2, Paint paint) {
        checkRange("measureText", i, i2);
        if (i2 <= this.mGapStart) {
            return paint.measureText(this.mText, i, i2 - i);
        }
        if (i >= this.mGapStart) {
            return paint.measureText(this.mText, this.mGapLength + i, i2 - i);
        }
        int i3 = i2 - i;
        char[] obtain = TextUtils.obtain(i3);
        getChars(i, i2, obtain, 0);
        float measureText = paint.measureText(obtain, 0, i3);
        TextUtils.recycle(obtain);
        return measureText;
    }

    @Override // android.text.GraphicsOperations
    public int getTextWidths(int i, int i2, float[] fArr, Paint paint) {
        checkRange("getTextWidths", i, i2);
        if (i2 <= this.mGapStart) {
            return paint.getTextWidths(this.mText, i, i2 - i, fArr);
        }
        if (i >= this.mGapStart) {
            return paint.getTextWidths(this.mText, this.mGapLength + i, i2 - i, fArr);
        }
        int i3 = i2 - i;
        char[] obtain = TextUtils.obtain(i3);
        getChars(i, i2, obtain, 0);
        int textWidths = paint.getTextWidths(obtain, 0, i3, fArr);
        TextUtils.recycle(obtain);
        return textWidths;
    }

    @Override // android.text.GraphicsOperations
    public float getTextRunAdvances(int i, int i2, int i3, int i4, boolean z, float[] fArr, int i5, Paint paint) {
        int i6 = i4 - i3;
        int i7 = i2 - i;
        if (i2 <= this.mGapStart) {
            return paint.getTextRunAdvances(this.mText, i, i7, i3, i6, z, fArr, i5);
        }
        if (i >= this.mGapStart) {
            return paint.getTextRunAdvances(this.mText, i + this.mGapLength, i7, i3 + this.mGapLength, i6, z, fArr, i5);
        }
        char[] obtain = TextUtils.obtain(i6);
        getChars(i3, i4, obtain, 0);
        float textRunAdvances = paint.getTextRunAdvances(obtain, i - i3, i7, 0, i6, z, fArr, i5);
        TextUtils.recycle(obtain);
        return textRunAdvances;
    }

    @Override // android.text.GraphicsOperations
    @Deprecated
    public int getTextRunCursor(int i, int i2, int i3, int i4, int i5, Paint paint) {
        int i6 = i2 - i;
        if (i2 <= this.mGapStart) {
            return paint.getTextRunCursor(this.mText, i, i6, i3, i4, i5);
        }
        if (i >= this.mGapStart) {
            return paint.getTextRunCursor(this.mText, i + this.mGapLength, i6, i3, i4 + this.mGapLength, i5) - this.mGapLength;
        }
        char[] obtain = TextUtils.obtain(i6);
        getChars(i, i2, obtain, 0);
        int textRunCursor = paint.getTextRunCursor(obtain, 0, i6, i3, i4 - i, i5) + i;
        TextUtils.recycle(obtain);
        return textRunCursor;
    }

    @Override // android.text.Editable
    public void setFilters(InputFilter[] inputFilterArr) {
        if (inputFilterArr == null) {
            throw new IllegalArgumentException();
        }
        this.mFilters = inputFilterArr;
    }

    @Override // android.text.Editable
    public InputFilter[] getFilters() {
        return this.mFilters;
    }

    public boolean equals(Object obj) {
        if ((obj instanceof Spanned) && toString().equals(obj.toString())) {
            Spanned spanned = (Spanned) obj;
            Object[] spans = spanned.getSpans(0, spanned.length(), Object.class);
            if (this.mSpanCount == spans.length) {
                for (int i = 0; i < this.mSpanCount; i++) {
                    Object obj2 = this.mSpans[i];
                    Object obj3 = spans[i];
                    if (obj2 == this) {
                        if (spanned != obj3 || getSpanStart(obj2) != spanned.getSpanStart(obj3) || getSpanEnd(obj2) != spanned.getSpanEnd(obj3) || getSpanFlags(obj2) != spanned.getSpanFlags(obj3)) {
                            return false;
                        }
                    } else if (!obj2.equals(obj3) || getSpanStart(obj2) != spanned.getSpanStart(obj3) || getSpanEnd(obj2) != spanned.getSpanEnd(obj3) || getSpanFlags(obj2) != spanned.getSpanFlags(obj3)) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int hashCode = (toString().hashCode() * 31) + this.mSpanCount;
        for (int i = 0; i < this.mSpanCount; i++) {
            Object obj = this.mSpans[i];
            if (obj != this) {
                hashCode = (hashCode * 31) + obj.hashCode();
            }
            hashCode = (((((hashCode * 31) + getSpanStart(obj)) * 31) + getSpanEnd(obj)) * 31) + getSpanFlags(obj);
        }
        return hashCode;
    }

    private int treeRoot() {
        return Integer.highestOneBit(this.mSpanCount) - 1;
    }

    private int calcMax(int i) {
        int i2 = i & 1;
        int calcMax = i2 != 0 ? calcMax(leftChild(i)) : 0;
        if (i < this.mSpanCount) {
            calcMax = Math.max(calcMax, this.mSpanEnds[i]);
            if (i2 != 0) {
                calcMax = Math.max(calcMax, calcMax(rightChild(i)));
            }
        }
        this.mSpanMax[i] = calcMax;
        return calcMax;
    }

    private void restoreInvariants() {
        if (this.mSpanCount == 0) {
            return;
        }
        for (int i = 1; i < this.mSpanCount; i++) {
            if (this.mSpanStarts[i] < this.mSpanStarts[i - 1]) {
                Object obj = this.mSpans[i];
                int i2 = this.mSpanStarts[i];
                int i3 = this.mSpanEnds[i];
                int i4 = this.mSpanFlags[i];
                int i5 = this.mSpanOrder[i];
                int i6 = i;
                do {
                    int i7 = i6 - 1;
                    this.mSpans[i6] = this.mSpans[i7];
                    this.mSpanStarts[i6] = this.mSpanStarts[i7];
                    this.mSpanEnds[i6] = this.mSpanEnds[i7];
                    this.mSpanFlags[i6] = this.mSpanFlags[i7];
                    this.mSpanOrder[i6] = this.mSpanOrder[i7];
                    i6--;
                    if (i6 <= 0) {
                        break;
                    }
                } while (i2 < this.mSpanStarts[i6 - 1]);
                this.mSpans[i6] = obj;
                this.mSpanStarts[i6] = i2;
                this.mSpanEnds[i6] = i3;
                this.mSpanFlags[i6] = i4;
                this.mSpanOrder[i6] = i5;
                invalidateIndex(i6);
            }
        }
        calcMax(treeRoot());
        if (this.mIndexOfSpan == null) {
            this.mIndexOfSpan = new IdentityHashMap<>();
        }
        for (int i8 = this.mLowWaterMark; i8 < this.mSpanCount; i8++) {
            Integer num = this.mIndexOfSpan.get(this.mSpans[i8]);
            if (num == null || num.intValue() != i8) {
                this.mIndexOfSpan.put(this.mSpans[i8], Integer.valueOf(i8));
            }
        }
        this.mLowWaterMark = Integer.MAX_VALUE;
    }

    private void invalidateIndex(int i) {
        this.mLowWaterMark = Math.min(i, this.mLowWaterMark);
    }
}
