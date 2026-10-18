package android.content.res;

import android.app.slice.Slice;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.media.TtmlUtils;
import android.text.Annotation;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannedString;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.BulletSpan;
import android.text.style.CharacterStyle;
import android.text.style.ForegroundColorSpan;
import android.text.style.LineHeightSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.SubscriptSpan;
import android.text.style.SuperscriptSpan;
import android.text.style.TextAppearanceSpan;
import android.text.style.TypefaceSpan;
import android.text.style.URLSpan;
import android.text.style.UnderlineSpan;
import android.util.SparseArray;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public final class StringBlock {
    private static final String TAG = "AssetManager";
    private static final boolean localLOGV = false;
    private final long mNative;
    private SparseArray<CharSequence> mSparseStrings;
    private CharSequence[] mStrings;
    private final boolean mUseSparse;
    StyleIDs mStyleIDs = null;
    private final boolean mOwnsNative = false;

    private static native long nativeCreate(byte[] bArr, int i, int i2);

    private static native void nativeDestroy(long j);

    private static native int nativeGetSize(long j);

    private static native String nativeGetString(long j, int i);

    private static native int[] nativeGetStyle(long j, int i);

    public StringBlock(byte[] bArr, boolean z) {
        this.mNative = nativeCreate(bArr, 0, bArr.length);
        this.mUseSparse = z;
    }

    public StringBlock(byte[] bArr, int i, int i2, boolean z) {
        this.mNative = nativeCreate(bArr, i, i2);
        this.mUseSparse = z;
    }

    public CharSequence get(int i) {
        synchronized (this) {
            if (this.mStrings != null) {
                CharSequence charSequence = this.mStrings[i];
                if (charSequence != null) {
                    return charSequence;
                }
            } else if (this.mSparseStrings != null) {
                CharSequence charSequence2 = this.mSparseStrings.get(i);
                if (charSequence2 != null) {
                    return charSequence2;
                }
            } else {
                int nativeGetSize = nativeGetSize(this.mNative);
                if (this.mUseSparse && nativeGetSize > 250) {
                    this.mSparseStrings = new SparseArray<>();
                } else {
                    this.mStrings = new CharSequence[nativeGetSize];
                }
            }
            String nativeGetString = nativeGetString(this.mNative, i);
            int[] nativeGetStyle = nativeGetStyle(this.mNative, i);
            CharSequence charSequence3 = nativeGetString;
            if (nativeGetStyle != null) {
                if (this.mStyleIDs == null) {
                    this.mStyleIDs = new StyleIDs();
                }
                for (int i2 = 0; i2 < nativeGetStyle.length; i2 += 3) {
                    int i3 = nativeGetStyle[i2];
                    if (i3 != this.mStyleIDs.boldId && i3 != this.mStyleIDs.italicId && i3 != this.mStyleIDs.underlineId && i3 != this.mStyleIDs.ttId && i3 != this.mStyleIDs.bigId && i3 != this.mStyleIDs.smallId && i3 != this.mStyleIDs.subId && i3 != this.mStyleIDs.supId && i3 != this.mStyleIDs.strikeId && i3 != this.mStyleIDs.listItemId && i3 != this.mStyleIDs.marqueeId) {
                        String nativeGetString2 = nativeGetString(this.mNative, i3);
                        if (!nativeGetString2.equals("b")) {
                            if (!nativeGetString2.equals("i")) {
                                if (!nativeGetString2.equals("u")) {
                                    if (!nativeGetString2.equals(TtmlUtils.TAG_TT)) {
                                        if (!nativeGetString2.equals("big")) {
                                            if (!nativeGetString2.equals("small")) {
                                                if (!nativeGetString2.equals("sup")) {
                                                    if (!nativeGetString2.equals("sub")) {
                                                        if (!nativeGetString2.equals("strike")) {
                                                            if (!nativeGetString2.equals("li")) {
                                                                if (nativeGetString2.equals("marquee")) {
                                                                    this.mStyleIDs.marqueeId = i3;
                                                                }
                                                            } else {
                                                                this.mStyleIDs.listItemId = i3;
                                                            }
                                                        } else {
                                                            this.mStyleIDs.strikeId = i3;
                                                        }
                                                    } else {
                                                        this.mStyleIDs.subId = i3;
                                                    }
                                                } else {
                                                    this.mStyleIDs.supId = i3;
                                                }
                                            } else {
                                                this.mStyleIDs.smallId = i3;
                                            }
                                        } else {
                                            this.mStyleIDs.bigId = i3;
                                        }
                                    } else {
                                        this.mStyleIDs.ttId = i3;
                                    }
                                } else {
                                    this.mStyleIDs.underlineId = i3;
                                }
                            } else {
                                this.mStyleIDs.italicId = i3;
                            }
                        } else {
                            this.mStyleIDs.boldId = i3;
                        }
                    }
                }
                charSequence3 = applyStyles(nativeGetString, nativeGetStyle, this.mStyleIDs);
            }
            if (this.mStrings != null) {
                this.mStrings[i] = charSequence3;
            } else {
                this.mSparseStrings.put(i, charSequence3);
            }
            return charSequence3;
        }
    }

    protected void finalize() throws Throwable {
        try {
            super.finalize();
        } finally {
            if (this.mOwnsNative) {
                nativeDestroy(this.mNative);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class StyleIDs {
        private int boldId = -1;
        private int italicId = -1;
        private int underlineId = -1;
        private int ttId = -1;
        private int bigId = -1;
        private int smallId = -1;
        private int subId = -1;
        private int supId = -1;
        private int strikeId = -1;
        private int listItemId = -1;
        private int marqueeId = -1;

        StyleIDs() {
        }
    }

    private CharSequence applyStyles(String str, int[] iArr, StyleIDs styleIDs) {
        if (iArr.length == 0) {
            return str;
        }
        SpannableString spannableString = new SpannableString(str);
        for (int i = 0; i < iArr.length; i += 3) {
            int i2 = iArr[i];
            if (i2 != styleIDs.boldId) {
                if (i2 != styleIDs.italicId) {
                    if (i2 != styleIDs.underlineId) {
                        if (i2 != styleIDs.ttId) {
                            if (i2 != styleIDs.bigId) {
                                if (i2 != styleIDs.smallId) {
                                    if (i2 != styleIDs.subId) {
                                        if (i2 != styleIDs.supId) {
                                            if (i2 != styleIDs.strikeId) {
                                                if (i2 != styleIDs.listItemId) {
                                                    if (i2 == styleIDs.marqueeId) {
                                                        spannableString.setSpan(TextUtils.TruncateAt.MARQUEE, iArr[i + 1], iArr[i + 2] + 1, 18);
                                                    } else {
                                                        String nativeGetString = nativeGetString(this.mNative, i2);
                                                        if (nativeGetString.startsWith("font;")) {
                                                            String subtag = subtag(nativeGetString, ";height=");
                                                            if (subtag != null) {
                                                                addParagraphSpan(spannableString, new Height(Integer.parseInt(subtag)), iArr[i + 1], iArr[i + 2] + 1);
                                                            }
                                                            String subtag2 = subtag(nativeGetString, ";size=");
                                                            if (subtag2 != null) {
                                                                spannableString.setSpan(new AbsoluteSizeSpan(Integer.parseInt(subtag2), true), iArr[i + 1], iArr[i + 2] + 1, 33);
                                                            }
                                                            String subtag3 = subtag(nativeGetString, ";fgcolor=");
                                                            if (subtag3 != null) {
                                                                spannableString.setSpan(getColor(subtag3, true), iArr[i + 1], iArr[i + 2] + 1, 33);
                                                            }
                                                            String subtag4 = subtag(nativeGetString, ";color=");
                                                            if (subtag4 != null) {
                                                                spannableString.setSpan(getColor(subtag4, true), iArr[i + 1], iArr[i + 2] + 1, 33);
                                                            }
                                                            String subtag5 = subtag(nativeGetString, ";bgcolor=");
                                                            if (subtag5 != null) {
                                                                spannableString.setSpan(getColor(subtag5, false), iArr[i + 1], iArr[i + 2] + 1, 33);
                                                            }
                                                            String subtag6 = subtag(nativeGetString, ";face=");
                                                            if (subtag6 != null) {
                                                                spannableString.setSpan(new TypefaceSpan(subtag6), iArr[i + 1], iArr[i + 2] + 1, 33);
                                                            }
                                                        } else if (nativeGetString.startsWith("a;")) {
                                                            String subtag7 = subtag(nativeGetString, ";href=");
                                                            if (subtag7 != null) {
                                                                spannableString.setSpan(new URLSpan(subtag7), iArr[i + 1], iArr[i + 2] + 1, 33);
                                                            }
                                                        } else if (nativeGetString.startsWith("annotation;")) {
                                                            int length = nativeGetString.length();
                                                            int indexOf = nativeGetString.indexOf(59);
                                                            while (indexOf < length) {
                                                                int indexOf2 = nativeGetString.indexOf(61, indexOf);
                                                                if (indexOf2 < 0) {
                                                                    break;
                                                                }
                                                                int indexOf3 = nativeGetString.indexOf(59, indexOf2);
                                                                if (indexOf3 < 0) {
                                                                    indexOf3 = length;
                                                                }
                                                                spannableString.setSpan(new Annotation(nativeGetString.substring(indexOf + 1, indexOf2), nativeGetString.substring(indexOf2 + 1, indexOf3)), iArr[i + 1], iArr[i + 2] + 1, 33);
                                                                indexOf = indexOf3;
                                                            }
                                                        }
                                                    }
                                                } else {
                                                    addParagraphSpan(spannableString, new BulletSpan(10), iArr[i + 1], iArr[i + 2] + 1);
                                                }
                                            } else {
                                                spannableString.setSpan(new StrikethroughSpan(), iArr[i + 1], iArr[i + 2] + 1, 33);
                                            }
                                        } else {
                                            spannableString.setSpan(new SuperscriptSpan(), iArr[i + 1], iArr[i + 2] + 1, 33);
                                        }
                                    } else {
                                        spannableString.setSpan(new SubscriptSpan(), iArr[i + 1], iArr[i + 2] + 1, 33);
                                    }
                                } else {
                                    spannableString.setSpan(new RelativeSizeSpan(0.8f), iArr[i + 1], iArr[i + 2] + 1, 33);
                                }
                            } else {
                                spannableString.setSpan(new RelativeSizeSpan(1.25f), iArr[i + 1], iArr[i + 2] + 1, 33);
                            }
                        } else {
                            spannableString.setSpan(new TypefaceSpan("monospace"), iArr[i + 1], iArr[i + 2] + 1, 33);
                        }
                    } else {
                        spannableString.setSpan(new UnderlineSpan(), iArr[i + 1], iArr[i + 2] + 1, 33);
                    }
                } else {
                    spannableString.setSpan(new StyleSpan(2), iArr[i + 1], iArr[i + 2] + 1, 33);
                }
            } else {
                spannableString.setSpan(new StyleSpan(1), iArr[i + 1], iArr[i + 2] + 1, 33);
            }
        }
        return new SpannedString(spannableString);
    }

    private static CharacterStyle getColor(String str, boolean z) {
        int parseColor;
        int i = -16777216;
        if (!TextUtils.isEmpty(str)) {
            if (str.startsWith("@")) {
                Resources system = Resources.getSystem();
                int identifier = system.getIdentifier(str.substring(1), Slice.SUBTYPE_COLOR, "android");
                if (identifier != 0) {
                    ColorStateList colorStateList = system.getColorStateList(identifier, null);
                    if (z) {
                        return new TextAppearanceSpan(null, 0, 0, colorStateList, null);
                    }
                    parseColor = colorStateList.getDefaultColor();
                }
            } else {
                try {
                    parseColor = Color.parseColor(str);
                } catch (IllegalArgumentException unused) {
                }
            }
            i = parseColor;
        }
        if (z) {
            return new ForegroundColorSpan(i);
        }
        return new BackgroundColorSpan(i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0028, code lost:
    
        if (r3.charAt(r6 - 1) != '\n') goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x002a, code lost:
    
        r6 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x002c, code lost:
    
        if (r6 >= r0) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0034, code lost:
    
        if (r3.charAt(r6 - 1) != '\n') goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0010, code lost:
    
        if (r3.charAt(r5 - 1) != '\n') goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0012, code lost:
    
        r5 = r5 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0014, code lost:
    
        if (r5 <= 0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001c, code lost:
    
        if (r3.charAt(r5 - 1) != '\n') goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void addParagraphSpan(Spannable spannable, Object obj, int i, int i2) {
        int length = spannable.length();
        if (i != 0) {
            if (i != length) {
            }
        }
        if (i2 != 0) {
            if (i2 != length) {
            }
        }
        spannable.setSpan(obj, i, i2, 51);
    }

    private static String subtag(String str, String str2) {
        int indexOf = str.indexOf(str2);
        if (indexOf < 0) {
            return null;
        }
        int length = indexOf + str2.length();
        int indexOf2 = str.indexOf(59, length);
        if (indexOf2 < 0) {
            return str.substring(length);
        }
        return str.substring(length, indexOf2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class Height implements LineHeightSpan.WithDensity {
        private static float sProportion;
        private int mSize;

        public Height(int i) {
            this.mSize = i;
        }

        @Override // android.text.style.LineHeightSpan
        public void chooseHeight(CharSequence charSequence, int i, int i2, int i3, int i4, Paint.FontMetricsInt fontMetricsInt) {
            chooseHeight(charSequence, i, i2, i3, i4, fontMetricsInt, null);
        }

        @Override // android.text.style.LineHeightSpan.WithDensity
        public void chooseHeight(CharSequence charSequence, int i, int i2, int i3, int i4, Paint.FontMetricsInt fontMetricsInt, TextPaint textPaint) {
            int i5 = this.mSize;
            if (textPaint != null) {
                i5 = (int) (i5 * textPaint.density);
            }
            if (fontMetricsInt.bottom - fontMetricsInt.top < i5) {
                fontMetricsInt.top = fontMetricsInt.bottom - i5;
                fontMetricsInt.ascent -= i5;
                return;
            }
            if (sProportion == 0.0f) {
                Paint paint = new Paint();
                paint.setTextSize(100.0f);
                paint.getTextBounds("ABCDEFG", 0, 7, new Rect());
                sProportion = r3.top / paint.ascent();
            }
            int ceil = (int) Math.ceil((-fontMetricsInt.top) * sProportion);
            if (i5 - fontMetricsInt.descent >= ceil) {
                fontMetricsInt.top = fontMetricsInt.bottom - i5;
                fontMetricsInt.ascent = fontMetricsInt.descent - i5;
                return;
            }
            if (i5 >= ceil) {
                int i6 = -ceil;
                fontMetricsInt.ascent = i6;
                fontMetricsInt.top = i6;
                int i7 = fontMetricsInt.top + i5;
                fontMetricsInt.descent = i7;
                fontMetricsInt.bottom = i7;
                return;
            }
            int i8 = -i5;
            fontMetricsInt.ascent = i8;
            fontMetricsInt.top = i8;
            fontMetricsInt.descent = 0;
            fontMetricsInt.bottom = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StringBlock(long j, boolean z) {
        this.mNative = j;
        this.mUseSparse = z;
    }
}
