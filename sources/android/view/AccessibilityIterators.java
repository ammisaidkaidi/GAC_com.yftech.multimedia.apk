package android.view;

import android.content.res.Configuration;
import android.view.ViewRootImpl;
import java.text.BreakIterator;
import java.util.Locale;

/* loaded from: /home/user/work/dex/classes2.dex */
public final class AccessibilityIterators {

    /* loaded from: /home/user/work/dex/classes2.dex */
    public interface TextSegmentIterator {
        int[] following(int i);

        int[] preceding(int i);
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static abstract class AbstractTextSegmentIterator implements TextSegmentIterator {
        private final int[] mSegment = new int[2];
        protected String mText;

        public void initialize(String str) {
            this.mText = str;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public int[] getRange(int i, int i2) {
            if (i < 0 || i2 < 0 || i == i2) {
                return null;
            }
            this.mSegment[0] = i;
            this.mSegment[1] = i2;
            return this.mSegment;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class CharacterTextSegmentIterator extends AbstractTextSegmentIterator implements ViewRootImpl.ConfigChangedCallback {
        private static CharacterTextSegmentIterator sInstance;
        protected BreakIterator mImpl;
        private Locale mLocale;

        public static CharacterTextSegmentIterator getInstance(Locale locale) {
            if (sInstance == null) {
                sInstance = new CharacterTextSegmentIterator(locale);
            }
            return sInstance;
        }

        private CharacterTextSegmentIterator(Locale locale) {
            this.mLocale = locale;
            onLocaleChanged(locale);
            ViewRootImpl.addConfigCallback(this);
        }

        @Override // android.view.AccessibilityIterators.AbstractTextSegmentIterator
        public void initialize(String str) {
            super.initialize(str);
            this.mImpl.setText(str);
        }

        @Override // android.view.AccessibilityIterators.TextSegmentIterator
        public int[] following(int i) {
            int length = this.mText.length();
            if (length <= 0 || i >= length) {
                return null;
            }
            if (i < 0) {
                i = 0;
            }
            while (!this.mImpl.isBoundary(i)) {
                i = this.mImpl.following(i);
                if (i == -1) {
                    return null;
                }
            }
            int following = this.mImpl.following(i);
            if (following == -1) {
                return null;
            }
            return getRange(i, following);
        }

        @Override // android.view.AccessibilityIterators.TextSegmentIterator
        public int[] preceding(int i) {
            int length = this.mText.length();
            if (length <= 0 || i <= 0) {
                return null;
            }
            if (i > length) {
                i = length;
            }
            while (!this.mImpl.isBoundary(i)) {
                i = this.mImpl.preceding(i);
                if (i == -1) {
                    return null;
                }
            }
            int preceding = this.mImpl.preceding(i);
            if (preceding == -1) {
                return null;
            }
            return getRange(preceding, i);
        }

        @Override // android.view.ViewRootImpl.ConfigChangedCallback
        public void onConfigurationChanged(Configuration configuration) {
            Locale locale = configuration.getLocales().get(0);
            if (this.mLocale.equals(locale)) {
                return;
            }
            this.mLocale = locale;
            onLocaleChanged(locale);
        }

        protected void onLocaleChanged(Locale locale) {
            this.mImpl = BreakIterator.getCharacterInstance(locale);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class WordTextSegmentIterator extends CharacterTextSegmentIterator {
        private static WordTextSegmentIterator sInstance;

        public static WordTextSegmentIterator getInstance(Locale locale) {
            if (sInstance == null) {
                sInstance = new WordTextSegmentIterator(locale);
            }
            return sInstance;
        }

        private WordTextSegmentIterator(Locale locale) {
            super(locale);
        }

        @Override // android.view.AccessibilityIterators.CharacterTextSegmentIterator
        protected void onLocaleChanged(Locale locale) {
            this.mImpl = BreakIterator.getWordInstance(locale);
        }

        @Override // android.view.AccessibilityIterators.CharacterTextSegmentIterator, android.view.AccessibilityIterators.TextSegmentIterator
        public int[] following(int i) {
            if (this.mText.length() <= 0 || i >= this.mText.length()) {
                return null;
            }
            if (i < 0) {
                i = 0;
            }
            while (!isLetterOrDigit(i) && !isStartBoundary(i)) {
                i = this.mImpl.following(i);
                if (i == -1) {
                    return null;
                }
            }
            int following = this.mImpl.following(i);
            if (following == -1 || !isEndBoundary(following)) {
                return null;
            }
            return getRange(i, following);
        }

        @Override // android.view.AccessibilityIterators.CharacterTextSegmentIterator, android.view.AccessibilityIterators.TextSegmentIterator
        public int[] preceding(int i) {
            int length = this.mText.length();
            if (length <= 0 || i <= 0) {
                return null;
            }
            if (i > length) {
                i = length;
            }
            while (i > 0 && !isLetterOrDigit(i - 1) && !isEndBoundary(i)) {
                i = this.mImpl.preceding(i);
                if (i == -1) {
                    return null;
                }
            }
            int preceding = this.mImpl.preceding(i);
            if (preceding == -1 || !isStartBoundary(preceding)) {
                return null;
            }
            return getRange(preceding, i);
        }

        private boolean isStartBoundary(int i) {
            return isLetterOrDigit(i) && (i == 0 || !isLetterOrDigit(i - 1));
        }

        private boolean isEndBoundary(int i) {
            return i > 0 && isLetterOrDigit(i + (-1)) && (i == this.mText.length() || !isLetterOrDigit(i));
        }

        private boolean isLetterOrDigit(int i) {
            if (i < 0 || i >= this.mText.length()) {
                return false;
            }
            return Character.isLetterOrDigit(this.mText.codePointAt(i));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class ParagraphTextSegmentIterator extends AbstractTextSegmentIterator {
        private static ParagraphTextSegmentIterator sInstance;

        ParagraphTextSegmentIterator() {
        }

        public static ParagraphTextSegmentIterator getInstance() {
            if (sInstance == null) {
                sInstance = new ParagraphTextSegmentIterator();
            }
            return sInstance;
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x0027, code lost:
        
            return null;
         */
        @Override // android.view.AccessibilityIterators.TextSegmentIterator
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public int[] following(int i) {
            int length = this.mText.length();
            if (length <= 0 || i >= length) {
                return null;
            }
            if (i < 0) {
                i = 0;
            }
            while (i < length && this.mText.charAt(i) == '\n' && !isStartBoundary(i)) {
                i++;
            }
            int i2 = i + 1;
            while (i2 < length && !isEndBoundary(i2)) {
                i2++;
            }
            return getRange(i, i2);
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x0029, code lost:
        
            return null;
         */
        @Override // android.view.AccessibilityIterators.TextSegmentIterator
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public int[] preceding(int i) {
            int length = this.mText.length();
            if (length <= 0 || i <= 0) {
                return null;
            }
            if (i > length) {
                i = length;
            }
            while (i > 0 && this.mText.charAt(i - 1) == '\n' && !isEndBoundary(i)) {
                i--;
            }
            int i2 = i - 1;
            while (i2 > 0 && !isStartBoundary(i2)) {
                i2--;
            }
            return getRange(i2, i);
        }

        private boolean isStartBoundary(int i) {
            return this.mText.charAt(i) != '\n' && (i == 0 || this.mText.charAt(i - 1) == '\n');
        }

        private boolean isEndBoundary(int i) {
            return i > 0 && this.mText.charAt(i + (-1)) != '\n' && (i == this.mText.length() || this.mText.charAt(i) == '\n');
        }
    }
}
