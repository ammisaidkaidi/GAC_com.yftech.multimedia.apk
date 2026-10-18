package android.widget;

import android.text.Editable;
import android.text.Selection;
import android.text.TextUtils;
import android.text.method.WordIterator;
import android.text.style.SpellCheckSpan;
import android.text.style.SuggestionSpan;
import android.util.Log;
import android.util.LruCache;
import android.view.textservice.SentenceSuggestionsInfo;
import android.view.textservice.SpellCheckerSession;
import android.view.textservice.SuggestionsInfo;
import android.view.textservice.TextInfo;
import android.view.textservice.TextServicesManager;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.GrowingArrayUtils;
import java.util.Locale;

/* loaded from: /home/user/work/dex/classes2.dex */
public class SpellChecker implements SpellCheckerSession.SpellCheckerSessionListener {
    public static final int AVERAGE_WORD_LENGTH = 7;
    private static final boolean DBG = false;
    public static final int MAX_NUMBER_OF_WORDS = 50;
    private static final int MIN_SENTENCE_LENGTH = 50;
    private static final int SPELL_PAUSE_DURATION = 400;
    private static final int SUGGESTION_SPAN_CACHE_SIZE = 10;
    private static final String TAG = "SpellChecker";
    private static final int USE_SPAN_RANGE = -1;
    public static final int WORD_ITERATOR_INTERVAL = 350;
    final int mCookie;
    private Locale mCurrentLocale;
    private boolean mIsSentenceSpellCheckSupported;
    private int mLength;
    SpellCheckerSession mSpellCheckerSession;
    private Runnable mSpellRunnable;
    private TextServicesManager mTextServicesManager;
    private final TextView mTextView;
    private WordIterator mWordIterator;
    private SpellParser[] mSpellParsers = new SpellParser[0];
    private int mSpanSequenceCounter = 0;
    private final LruCache<Long, SuggestionSpan> mSuggestionSpanCache = new LruCache<>(10);
    private int[] mIds = ArrayUtils.newUnpaddedIntArray(1);
    private SpellCheckSpan[] mSpellCheckSpans = new SpellCheckSpan[this.mIds.length];

    public SpellChecker(TextView textView) {
        this.mTextView = textView;
        setLocale(this.mTextView.getSpellCheckerLocale());
        this.mCookie = hashCode();
    }

    private void resetSession() {
        closeSession();
        this.mTextServicesManager = (TextServicesManager) this.mTextView.getContext().getSystemService("textservices");
        if (!this.mTextServicesManager.isSpellCheckerEnabled() || this.mCurrentLocale == null || this.mTextServicesManager.getCurrentSpellCheckerSubtype(true) == null) {
            this.mSpellCheckerSession = null;
        } else {
            this.mSpellCheckerSession = this.mTextServicesManager.newSpellCheckerSession(null, this.mCurrentLocale, this, false);
            this.mIsSentenceSpellCheckSupported = true;
        }
        for (int i = 0; i < this.mLength; i++) {
            this.mIds[i] = -1;
        }
        this.mLength = 0;
        this.mTextView.removeMisspelledSpans((Editable) this.mTextView.getText());
        this.mSuggestionSpanCache.evictAll();
    }

    private void setLocale(Locale locale) {
        this.mCurrentLocale = locale;
        resetSession();
        if (locale != null) {
            this.mWordIterator = new WordIterator(locale);
        }
        this.mTextView.onLocaleChanged();
    }

    private boolean isSessionActive() {
        return this.mSpellCheckerSession != null;
    }

    public void closeSession() {
        if (this.mSpellCheckerSession != null) {
            this.mSpellCheckerSession.close();
        }
        int length = this.mSpellParsers.length;
        for (int i = 0; i < length; i++) {
            this.mSpellParsers[i].stop();
        }
        if (this.mSpellRunnable != null) {
            this.mTextView.removeCallbacks(this.mSpellRunnable);
        }
    }

    private int nextSpellCheckSpanIndex() {
        for (int i = 0; i < this.mLength; i++) {
            if (this.mIds[i] < 0) {
                return i;
            }
        }
        this.mIds = GrowingArrayUtils.append(this.mIds, this.mLength, 0);
        this.mSpellCheckSpans = (SpellCheckSpan[]) GrowingArrayUtils.append(this.mSpellCheckSpans, this.mLength, new SpellCheckSpan());
        this.mLength++;
        return this.mLength - 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addSpellCheckSpan(Editable editable, int i, int i2) {
        int nextSpellCheckSpanIndex = nextSpellCheckSpanIndex();
        SpellCheckSpan spellCheckSpan = this.mSpellCheckSpans[nextSpellCheckSpanIndex];
        editable.setSpan(spellCheckSpan, i, i2, 33);
        spellCheckSpan.setSpellCheckInProgress(false);
        int[] iArr = this.mIds;
        int i3 = this.mSpanSequenceCounter;
        this.mSpanSequenceCounter = i3 + 1;
        iArr[nextSpellCheckSpanIndex] = i3;
    }

    public void onSpellCheckSpanRemoved(SpellCheckSpan spellCheckSpan) {
        for (int i = 0; i < this.mLength; i++) {
            if (this.mSpellCheckSpans[i] == spellCheckSpan) {
                this.mIds[i] = -1;
                return;
            }
        }
    }

    public void onSelectionChanged() {
        spellCheck();
    }

    public void spellCheck(int i, int i2) {
        Locale spellCheckerLocale = this.mTextView.getSpellCheckerLocale();
        boolean isSessionActive = isSessionActive();
        if (spellCheckerLocale == null || this.mCurrentLocale == null || !this.mCurrentLocale.equals(spellCheckerLocale)) {
            setLocale(spellCheckerLocale);
            i2 = this.mTextView.getText().length();
            i = 0;
        } else if (isSessionActive != this.mTextServicesManager.isSpellCheckerEnabled()) {
            resetSession();
        }
        if (isSessionActive) {
            int length = this.mSpellParsers.length;
            for (int i3 = 0; i3 < length; i3++) {
                SpellParser spellParser = this.mSpellParsers[i3];
                if (spellParser.isFinished()) {
                    spellParser.parse(i, i2);
                    return;
                }
            }
            SpellParser[] spellParserArr = new SpellParser[length + 1];
            System.arraycopy(this.mSpellParsers, 0, spellParserArr, 0, length);
            this.mSpellParsers = spellParserArr;
            SpellParser spellParser2 = new SpellParser();
            this.mSpellParsers[length] = spellParser2;
            spellParser2.parse(i, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void spellCheck() {
        TextInfo[] textInfoArr;
        if (this.mSpellCheckerSession == null) {
            return;
        }
        Editable editable = (Editable) this.mTextView.getText();
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        TextInfo[] textInfoArr2 = new TextInfo[this.mLength];
        int i = 0;
        for (int i2 = 0; i2 < this.mLength; i2++) {
            SpellCheckSpan spellCheckSpan = this.mSpellCheckSpans[i2];
            if (this.mIds[i2] >= 0 && !spellCheckSpan.isSpellCheckInProgress()) {
                int spanStart = editable.getSpanStart(spellCheckSpan);
                int spanEnd = editable.getSpanEnd(spellCheckSpan);
                int i3 = spanEnd + 1;
                boolean z = !(selectionStart == i3 && WordIterator.isMidWordPunctuation(this.mCurrentLocale, Character.codePointBefore(editable, i3))) && (!this.mIsSentenceSpellCheckSupported ? !(selectionEnd < spanStart || selectionStart > spanEnd) : !(selectionEnd <= spanStart || selectionStart > spanEnd));
                if (spanStart >= 0 && spanEnd > spanStart && z) {
                    spellCheckSpan.setSpellCheckInProgress(true);
                    textInfoArr2[i] = new TextInfo(editable, spanStart, spanEnd, this.mCookie, this.mIds[i2]);
                    i++;
                }
            }
        }
        if (i > 0) {
            if (i < textInfoArr2.length) {
                textInfoArr = new TextInfo[i];
                System.arraycopy(textInfoArr2, 0, textInfoArr, 0, i);
            } else {
                textInfoArr = textInfoArr2;
            }
            if (this.mIsSentenceSpellCheckSupported) {
                this.mSpellCheckerSession.getSentenceSuggestions(textInfoArr, 5);
            } else {
                this.mSpellCheckerSession.getSuggestions(textInfoArr, 5, false);
            }
        }
    }

    private SpellCheckSpan onGetSuggestionsInternal(SuggestionsInfo suggestionsInfo, int i, int i2) {
        int i3;
        int i4;
        if (suggestionsInfo == null || suggestionsInfo.getCookie() != this.mCookie) {
            return null;
        }
        Editable editable = (Editable) this.mTextView.getText();
        int sequence = suggestionsInfo.getSequence();
        for (int i5 = 0; i5 < this.mLength; i5++) {
            if (sequence == this.mIds[i5]) {
                int suggestionsAttributes = suggestionsInfo.getSuggestionsAttributes();
                boolean z = (suggestionsAttributes & 1) > 0;
                boolean z2 = (suggestionsAttributes & 2) > 0;
                SpellCheckSpan spellCheckSpan = this.mSpellCheckSpans[i5];
                if (!z && z2) {
                    createMisspelledSuggestionSpan(editable, suggestionsInfo, spellCheckSpan, i, i2);
                } else if (this.mIsSentenceSpellCheckSupported) {
                    int spanStart = editable.getSpanStart(spellCheckSpan);
                    int spanEnd = editable.getSpanEnd(spellCheckSpan);
                    if (i == -1 || i2 == -1) {
                        i3 = spanStart;
                        i4 = spanEnd;
                    } else {
                        i3 = i + spanStart;
                        i4 = i2 + i3;
                    }
                    if (spanStart >= 0 && spanEnd > spanStart && i4 > i3) {
                        Long valueOf = Long.valueOf(TextUtils.packRangeInLong(i3, i4));
                        Object obj = (SuggestionSpan) this.mSuggestionSpanCache.get(valueOf);
                        if (obj != null) {
                            editable.removeSpan(obj);
                            this.mSuggestionSpanCache.remove(valueOf);
                        }
                    }
                }
                return spellCheckSpan;
            }
        }
        return null;
    }

    @Override // android.view.textservice.SpellCheckerSession.SpellCheckerSessionListener
    public void onGetSuggestions(SuggestionsInfo[] suggestionsInfoArr) {
        Editable editable = (Editable) this.mTextView.getText();
        for (SuggestionsInfo suggestionsInfo : suggestionsInfoArr) {
            SpellCheckSpan onGetSuggestionsInternal = onGetSuggestionsInternal(suggestionsInfo, -1, -1);
            if (onGetSuggestionsInternal != null) {
                editable.removeSpan(onGetSuggestionsInternal);
            }
        }
        scheduleNewSpellCheck();
    }

    @Override // android.view.textservice.SpellCheckerSession.SpellCheckerSessionListener
    public void onGetSentenceSuggestions(SentenceSuggestionsInfo[] sentenceSuggestionsInfoArr) {
        Editable editable = (Editable) this.mTextView.getText();
        for (SentenceSuggestionsInfo sentenceSuggestionsInfo : sentenceSuggestionsInfoArr) {
            if (sentenceSuggestionsInfo != null) {
                SpellCheckSpan spellCheckSpan = null;
                for (int i = 0; i < sentenceSuggestionsInfo.getSuggestionsCount(); i++) {
                    SuggestionsInfo suggestionsInfoAt = sentenceSuggestionsInfo.getSuggestionsInfoAt(i);
                    if (suggestionsInfoAt != null) {
                        SpellCheckSpan onGetSuggestionsInternal = onGetSuggestionsInternal(suggestionsInfoAt, sentenceSuggestionsInfo.getOffsetAt(i), sentenceSuggestionsInfo.getLengthAt(i));
                        if (spellCheckSpan == null && onGetSuggestionsInternal != null) {
                            spellCheckSpan = onGetSuggestionsInternal;
                        }
                    }
                }
                if (spellCheckSpan != null) {
                    editable.removeSpan(spellCheckSpan);
                }
            }
        }
        scheduleNewSpellCheck();
    }

    private void scheduleNewSpellCheck() {
        if (this.mSpellRunnable == null) {
            this.mSpellRunnable = new Runnable() { // from class: android.widget.SpellChecker.1
                @Override // java.lang.Runnable
                public void run() {
                    int length = SpellChecker.this.mSpellParsers.length;
                    for (int i = 0; i < length; i++) {
                        SpellParser spellParser = SpellChecker.this.mSpellParsers[i];
                        if (!spellParser.isFinished()) {
                            spellParser.parse();
                            return;
                        }
                    }
                }
            };
        } else {
            this.mTextView.removeCallbacks(this.mSpellRunnable);
        }
        this.mTextView.postDelayed(this.mSpellRunnable, 400L);
    }

    private void createMisspelledSuggestionSpan(Editable editable, SuggestionsInfo suggestionsInfo, SpellCheckSpan spellCheckSpan, int i, int i2) {
        String[] strArr;
        int spanStart = editable.getSpanStart(spellCheckSpan);
        int spanEnd = editable.getSpanEnd(spellCheckSpan);
        if (spanStart < 0 || spanEnd <= spanStart) {
            return;
        }
        if (i != -1 && i2 != -1) {
            spanStart += i;
            spanEnd = spanStart + i2;
        }
        int suggestionsCount = suggestionsInfo.getSuggestionsCount();
        if (suggestionsCount > 0) {
            strArr = new String[suggestionsCount];
            for (int i3 = 0; i3 < suggestionsCount; i3++) {
                strArr[i3] = suggestionsInfo.getSuggestionAt(i3);
            }
        } else {
            strArr = (String[]) ArrayUtils.emptyArray(String.class);
        }
        SuggestionSpan suggestionSpan = new SuggestionSpan(this.mTextView.getContext(), strArr, 3);
        if (this.mIsSentenceSpellCheckSupported) {
            Long valueOf = Long.valueOf(TextUtils.packRangeInLong(spanStart, spanEnd));
            SuggestionSpan suggestionSpan2 = this.mSuggestionSpanCache.get(valueOf);
            if (suggestionSpan2 != null) {
                editable.removeSpan(suggestionSpan2);
            }
            this.mSuggestionSpanCache.put(valueOf, suggestionSpan);
        }
        editable.setSpan(suggestionSpan, spanStart, spanEnd, 33);
        this.mTextView.invalidateRegion(spanStart, spanEnd, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public class SpellParser {
        private Object mRange;

        private SpellParser() {
            this.mRange = new Object();
        }

        public void parse(int i, int i2) {
            int length = SpellChecker.this.mTextView.length();
            if (i2 > length) {
                Log.w(SpellChecker.TAG, "Parse invalid region, from " + i + " to " + i2);
                i2 = length;
            }
            if (i2 > i) {
                setRangeSpan((Editable) SpellChecker.this.mTextView.getText(), i, i2);
                parse();
            }
        }

        public boolean isFinished() {
            return ((Editable) SpellChecker.this.mTextView.getText()).getSpanStart(this.mRange) < 0;
        }

        public void stop() {
            removeRangeSpan((Editable) SpellChecker.this.mTextView.getText());
        }

        private void setRangeSpan(Editable editable, int i, int i2) {
            editable.setSpan(this.mRange, i, i2, 33);
        }

        private void removeRangeSpan(Editable editable) {
            editable.removeSpan(this.mRange);
        }

        public void parse() {
            int spanStart;
            int end;
            int i;
            boolean z;
            Editable editable = (Editable) SpellChecker.this.mTextView.getText();
            int i2 = 50;
            boolean z2 = false;
            if (SpellChecker.this.mIsSentenceSpellCheckSupported) {
                spanStart = Math.max(0, editable.getSpanStart(this.mRange) - 50);
            } else {
                spanStart = editable.getSpanStart(this.mRange);
            }
            int spanEnd = editable.getSpanEnd(this.mRange);
            int min = Math.min(spanEnd, spanStart + SpellChecker.WORD_ITERATOR_INTERVAL);
            SpellChecker.this.mWordIterator.setCharSequence(editable, spanStart, min);
            int preceding = SpellChecker.this.mWordIterator.preceding(spanStart);
            if (preceding == -1) {
                end = SpellChecker.this.mWordIterator.following(spanStart);
                if (end != -1) {
                    preceding = SpellChecker.this.mWordIterator.getBeginning(end);
                }
            } else {
                end = SpellChecker.this.mWordIterator.getEnd(preceding);
            }
            if (end == -1) {
                removeRangeSpan(editable);
                return;
            }
            int i3 = spanStart - 1;
            int i4 = spanEnd + 1;
            SpellCheckSpan[] spellCheckSpanArr = (SpellCheckSpan[]) editable.getSpans(i3, i4, SpellCheckSpan.class);
            SuggestionSpan[] suggestionSpanArr = (SuggestionSpan[]) editable.getSpans(i3, i4, SuggestionSpan.class);
            if (!SpellChecker.this.mIsSentenceSpellCheckSupported) {
                int i5 = min;
                int i6 = end;
                i = preceding;
                int i7 = 0;
                while (true) {
                    if (i > spanEnd) {
                        break;
                    }
                    if (i6 >= spanStart && i6 > i) {
                        if (i7 >= i2) {
                            z2 = true;
                            break;
                        }
                        if (i < spanStart && i6 > spanStart) {
                            removeSpansAt(editable, spanStart, spellCheckSpanArr);
                            removeSpansAt(editable, spanStart, suggestionSpanArr);
                        }
                        if (i < spanEnd && i6 > spanEnd) {
                            removeSpansAt(editable, spanEnd, spellCheckSpanArr);
                            removeSpansAt(editable, spanEnd, suggestionSpanArr);
                        }
                        if (i6 == spanStart) {
                            for (SpellCheckSpan spellCheckSpan : spellCheckSpanArr) {
                                if (editable.getSpanEnd(spellCheckSpan) == spanStart) {
                                    z = false;
                                    break;
                                }
                            }
                        }
                        z = true;
                        if (i == spanEnd) {
                            int i8 = 0;
                            while (true) {
                                if (i8 >= spellCheckSpanArr.length) {
                                    break;
                                }
                                if (editable.getSpanStart(spellCheckSpanArr[i8]) == spanEnd) {
                                    z = false;
                                    break;
                                }
                                i8++;
                            }
                        }
                        if (z) {
                            SpellChecker.this.addSpellCheckSpan(editable, i, i6);
                        }
                        i7++;
                    }
                    int following = SpellChecker.this.mWordIterator.following(i6);
                    if (i5 >= spanEnd || (following != -1 && following < i5)) {
                        i6 = following;
                    } else {
                        int min2 = Math.min(spanEnd, i6 + SpellChecker.WORD_ITERATOR_INTERVAL);
                        SpellChecker.this.mWordIterator.setCharSequence(editable, i6, min2);
                        i6 = SpellChecker.this.mWordIterator.following(i6);
                        i5 = min2;
                    }
                    if (i6 == -1 || (i = SpellChecker.this.mWordIterator.getBeginning(i6)) == -1) {
                        break;
                    } else {
                        i2 = 50;
                    }
                }
            } else {
                boolean z3 = min < spanEnd;
                int preceding2 = SpellChecker.this.mWordIterator.preceding(min);
                boolean z4 = preceding2 != -1;
                if (z4) {
                    preceding2 = SpellChecker.this.mWordIterator.getEnd(preceding2);
                    z4 = preceding2 != -1;
                }
                if (!z4) {
                    removeRangeSpan(editable);
                    return;
                }
                i = preceding2;
                int i9 = 0;
                while (true) {
                    if (i9 >= SpellChecker.this.mLength) {
                        z2 = true;
                        break;
                    }
                    SpellCheckSpan spellCheckSpan2 = SpellChecker.this.mSpellCheckSpans[i9];
                    if (SpellChecker.this.mIds[i9] >= 0 && !spellCheckSpan2.isSpellCheckInProgress()) {
                        int spanStart2 = editable.getSpanStart(spellCheckSpan2);
                        int spanEnd2 = editable.getSpanEnd(spellCheckSpan2);
                        if (spanEnd2 >= preceding && i >= spanStart2) {
                            if (spanStart2 <= preceding && i <= spanEnd2) {
                                break;
                            }
                            editable.removeSpan(spellCheckSpan2);
                            preceding = Math.min(spanStart2, preceding);
                            i = Math.max(spanEnd2, i);
                        }
                    }
                    i9++;
                }
                if (i >= spanStart) {
                    if (i <= preceding) {
                        Log.w(SpellChecker.TAG, "Trying to spellcheck invalid region, from " + spanStart + " to " + spanEnd);
                    } else if (z2) {
                        SpellChecker.this.addSpellCheckSpan(editable, preceding, i);
                    }
                }
                z2 = z3;
            }
            if (z2 && i != -1 && i <= spanEnd) {
                setRangeSpan(editable, i, spanEnd);
            } else {
                removeRangeSpan(editable);
            }
            SpellChecker.this.spellCheck();
        }

        private <T> void removeSpansAt(Editable editable, int i, T[] tArr) {
            for (T t : tArr) {
                if (editable.getSpanStart(t) <= i && editable.getSpanEnd(t) >= i) {
                    editable.removeSpan(t);
                }
            }
        }
    }

    public static boolean haveWordBoundariesChanged(Editable editable, int i, int i2, int i3, int i4) {
        if (i4 != i && i3 != i2) {
            return true;
        }
        if (i4 == i && i < editable.length()) {
            return Character.isLetterOrDigit(Character.codePointAt(editable, i));
        }
        if (i3 != i2 || i2 <= 0) {
            return false;
        }
        return Character.isLetterOrDigit(Character.codePointBefore(editable, i2));
    }
}
