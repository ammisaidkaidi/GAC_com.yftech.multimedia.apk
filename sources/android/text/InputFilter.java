package android.text;

import android.view.textclassifier.TextClassifier;
import com.android.internal.util.Preconditions;
import java.util.Locale;

/* loaded from: /home/user/work/dex/classes2.dex */
public interface InputFilter {
    CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4);

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class AllCaps implements InputFilter {
        private final Locale mLocale;

        public AllCaps() {
            this.mLocale = null;
        }

        public AllCaps(Locale locale) {
            Preconditions.checkNotNull(locale);
            this.mLocale = locale;
        }

        @Override // android.text.InputFilter
        public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
            boolean z;
            CharSequence upperCase;
            CharSequenceWrapper charSequenceWrapper = new CharSequenceWrapper(charSequence, i, i2);
            int i5 = i2 - i;
            boolean z2 = false;
            int i6 = 0;
            while (i6 < i5) {
                int codePointAt = Character.codePointAt(charSequenceWrapper, i6);
                if (Character.isLowerCase(codePointAt) || Character.isTitleCase(codePointAt)) {
                    z2 = true;
                    break;
                }
                i6 += Character.charCount(codePointAt);
            }
            if (z2 && (upperCase = TextUtils.toUpperCase(this.mLocale, charSequenceWrapper, (z = charSequence instanceof Spanned))) != charSequenceWrapper) {
                return z ? new SpannableString(upperCase) : upperCase.toString();
            }
            return null;
        }

        /* loaded from: /home/user/work/dex/classes2.dex */
        private static class CharSequenceWrapper implements CharSequence, Spanned {
            private final int mEnd;
            private final int mLength;
            private final CharSequence mSource;
            private final int mStart;

            CharSequenceWrapper(CharSequence charSequence, int i, int i2) {
                this.mSource = charSequence;
                this.mStart = i;
                this.mEnd = i2;
                this.mLength = i2 - i;
            }

            @Override // java.lang.CharSequence
            public int length() {
                return this.mLength;
            }

            @Override // java.lang.CharSequence
            public char charAt(int i) {
                if (i < 0 || i >= this.mLength) {
                    throw new IndexOutOfBoundsException();
                }
                return this.mSource.charAt(this.mStart + i);
            }

            @Override // java.lang.CharSequence
            public CharSequence subSequence(int i, int i2) {
                if (i < 0 || i2 < 0 || i2 > this.mLength || i > i2) {
                    throw new IndexOutOfBoundsException();
                }
                return new CharSequenceWrapper(this.mSource, this.mStart + i, this.mStart + i2);
            }

            @Override // java.lang.CharSequence
            public String toString() {
                return this.mSource.subSequence(this.mStart, this.mEnd).toString();
            }

            @Override // android.text.Spanned
            public <T> T[] getSpans(int i, int i2, Class<T> cls) {
                return (T[]) ((Spanned) this.mSource).getSpans(this.mStart + i, this.mStart + i2, cls);
            }

            @Override // android.text.Spanned
            public int getSpanStart(Object obj) {
                return ((Spanned) this.mSource).getSpanStart(obj) - this.mStart;
            }

            @Override // android.text.Spanned
            public int getSpanEnd(Object obj) {
                return ((Spanned) this.mSource).getSpanEnd(obj) - this.mStart;
            }

            @Override // android.text.Spanned
            public int getSpanFlags(Object obj) {
                return ((Spanned) this.mSource).getSpanFlags(obj);
            }

            @Override // android.text.Spanned
            public int nextSpanTransition(int i, int i2, Class cls) {
                return ((Spanned) this.mSource).nextSpanTransition(this.mStart + i, this.mStart + i2, cls) - this.mStart;
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class LengthFilter implements InputFilter {
        private final int mMax;

        public LengthFilter(int i) {
            this.mMax = i;
        }

        @Override // android.text.InputFilter
        public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
            int length = this.mMax - (spanned.length() - (i4 - i3));
            if (length <= 0) {
                return TextClassifier.TYPE_UNKNOWN;
            }
            if (length >= i2 - i) {
                return null;
            }
            int i5 = length + i;
            return (Character.isHighSurrogate(charSequence.charAt(i5 + (-1))) && (i5 = i5 + (-1)) == i) ? TextClassifier.TYPE_UNKNOWN : charSequence.subSequence(i, i5);
        }

        public int getMax() {
            return this.mMax;
        }
    }
}
