package android.text.method;

import android.graphics.Paint;
import android.icu.lang.UCharacter;
import android.opengl.GLES31;
import android.text.Editable;
import android.text.Emoji;
import android.text.Layout;
import android.text.NoCopySpan;
import android.text.Selection;
import android.text.Spanned;
import android.text.method.TextKeyListener;
import android.text.style.ReplacementSpan;
import android.view.KeyEvent;
import android.view.View;
import android.widget.TextView;
import com.android.internal.annotations.GuardedBy;

/* loaded from: /home/user/work/dex/classes2.dex */
public abstract class BaseKeyListener extends MetaKeyKeyListener implements KeyListener {
    private static final int CARRIAGE_RETURN = 13;
    private static final int LINE_FEED = 10;
    static final Object OLD_SEL_START = new NoCopySpan.Concrete();

    @GuardedBy("mLock")
    static Paint sCachedPaint = null;
    private final Object mLock = new Object();

    public boolean backspace(View view, Editable editable, int i, KeyEvent keyEvent) {
        return backspaceOrForwardDelete(view, editable, i, keyEvent, false);
    }

    public boolean forwardDelete(View view, Editable editable, int i, KeyEvent keyEvent) {
        return backspaceOrForwardDelete(view, editable, i, keyEvent, true);
    }

    private static boolean isVariationSelector(int i) {
        return UCharacter.hasBinaryProperty(i, 36);
    }

    private static int adjustReplacementSpan(CharSequence charSequence, int i, boolean z) {
        if (!(charSequence instanceof Spanned)) {
            return i;
        }
        Spanned spanned = (Spanned) charSequence;
        ReplacementSpan[] replacementSpanArr = (ReplacementSpan[]) spanned.getSpans(i, i, ReplacementSpan.class);
        for (int i2 = 0; i2 < replacementSpanArr.length; i2++) {
            int spanStart = spanned.getSpanStart(replacementSpanArr[i2]);
            int spanEnd = spanned.getSpanEnd(replacementSpanArr[i2]);
            if (spanStart < i && spanEnd > i) {
                if (!z) {
                    spanStart = spanEnd;
                }
                i = spanStart;
            }
        }
        return i;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:7:0x0019. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:12:0x015a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x015c A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int getOffsetForBackspaceKey(CharSequence charSequence, int i) {
        int i2;
        int i3;
        int charCount;
        int i4;
        if (i <= 1) {
            return 0;
        }
        int i5 = i;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        do {
            int codePointBefore = Character.codePointBefore(charSequence, i5);
            i5 -= Character.charCount(codePointBefore);
            int i9 = 4;
            switch (i6) {
                case 0:
                    int charCount2 = Character.charCount(codePointBefore);
                    if (codePointBefore == 10) {
                        i7 = charCount2;
                        i6 = 1;
                    } else {
                        if (isVariationSelector(codePointBefore)) {
                            i2 = 6;
                        } else if (Emoji.isRegionalIndicatorSymbol(codePointBefore)) {
                            i7 = charCount2;
                            i6 = 10;
                        } else if (Emoji.isEmojiModifier(codePointBefore)) {
                            i7 = charCount2;
                            i6 = i9;
                        } else if (codePointBefore == Emoji.COMBINING_ENCLOSING_KEYCAP) {
                            i7 = charCount2;
                            i6 = 2;
                        } else if (Emoji.isEmoji(codePointBefore)) {
                            i7 = charCount2;
                            i6 = 7;
                        } else if (codePointBefore == Emoji.CANCEL_TAG) {
                            i2 = 12;
                        } else {
                            i7 = charCount2;
                            i6 = 13;
                        }
                        i3 = i2;
                        i7 = charCount2;
                        i6 = i3;
                    }
                    if (i5 > 0) {
                    }
                    return adjustReplacementSpan(charSequence, i - i7, true);
                case 1:
                    if (codePointBefore == 13) {
                        i7++;
                    }
                    i6 = 13;
                    if (i5 > 0) {
                    }
                    return adjustReplacementSpan(charSequence, i - i7, true);
                case 2:
                    if (isVariationSelector(codePointBefore)) {
                        charCount = Character.charCount(codePointBefore);
                        i4 = 3;
                        i3 = i4;
                        i8 = charCount;
                        i6 = i3;
                        if (i5 > 0) {
                        }
                        return adjustReplacementSpan(charSequence, i - i7, true);
                    }
                    if (Emoji.isKeycapBase(codePointBefore)) {
                        i7 += Character.charCount(codePointBefore);
                    }
                    i6 = 13;
                    if (i5 > 0) {
                    }
                    return adjustReplacementSpan(charSequence, i - i7, true);
                case 3:
                    if (Emoji.isKeycapBase(codePointBefore)) {
                        i7 += Character.charCount(codePointBefore) + i8;
                    }
                    i6 = 13;
                    if (i5 > 0) {
                    }
                    return adjustReplacementSpan(charSequence, i - i7, true);
                case 4:
                    if (isVariationSelector(codePointBefore)) {
                        charCount = Character.charCount(codePointBefore);
                        i4 = 5;
                        i3 = i4;
                        i8 = charCount;
                        i6 = i3;
                        if (i5 > 0) {
                        }
                        return adjustReplacementSpan(charSequence, i - i7, true);
                    }
                    if (Emoji.isEmojiModifierBase(codePointBefore)) {
                        i7 += Character.charCount(codePointBefore);
                    }
                    i6 = 13;
                    if (i5 > 0) {
                    }
                    return adjustReplacementSpan(charSequence, i - i7, true);
                case 5:
                    if (Emoji.isEmojiModifierBase(codePointBefore)) {
                        i7 += Character.charCount(codePointBefore) + i8;
                    }
                    i6 = 13;
                    if (i5 > 0) {
                    }
                    return adjustReplacementSpan(charSequence, i - i7, true);
                case 6:
                    if (Emoji.isEmoji(codePointBefore)) {
                        i7 += Character.charCount(codePointBefore);
                        i6 = 7;
                        if (i5 > 0) {
                        }
                        return adjustReplacementSpan(charSequence, i - i7, true);
                    }
                    if (!isVariationSelector(codePointBefore) && UCharacter.getCombiningClass(codePointBefore) == 0) {
                        i7 += Character.charCount(codePointBefore);
                    }
                    i6 = 13;
                    if (i5 > 0) {
                    }
                    return adjustReplacementSpan(charSequence, i - i7, true);
                case 7:
                    if (codePointBefore == Emoji.ZERO_WIDTH_JOINER) {
                        i6 = 8;
                        if (i5 > 0) {
                        }
                        return adjustReplacementSpan(charSequence, i - i7, true);
                    }
                    i6 = 13;
                    if (i5 > 0) {
                    }
                    return adjustReplacementSpan(charSequence, i - i7, true);
                case 8:
                    if (Emoji.isEmoji(codePointBefore)) {
                        i7 += Character.charCount(codePointBefore) + 1;
                        if (!Emoji.isEmojiModifier(codePointBefore)) {
                            i9 = 7;
                        }
                        i6 = i9;
                        if (i5 > 0) {
                        }
                        return adjustReplacementSpan(charSequence, i - i7, true);
                    }
                    if (isVariationSelector(codePointBefore)) {
                        charCount = Character.charCount(codePointBefore);
                        i4 = 9;
                        i3 = i4;
                        i8 = charCount;
                        i6 = i3;
                        if (i5 > 0) {
                        }
                        return adjustReplacementSpan(charSequence, i - i7, true);
                    }
                    i6 = 13;
                    if (i5 > 0) {
                    }
                    return adjustReplacementSpan(charSequence, i - i7, true);
                case 9:
                    if (Emoji.isEmoji(codePointBefore)) {
                        i7 += i8 + 1 + Character.charCount(codePointBefore);
                        i8 = 0;
                        i6 = 7;
                        if (i5 > 0) {
                        }
                        return adjustReplacementSpan(charSequence, i - i7, true);
                    }
                    i6 = 13;
                    if (i5 > 0) {
                    }
                    return adjustReplacementSpan(charSequence, i - i7, true);
                case 10:
                    if (Emoji.isRegionalIndicatorSymbol(codePointBefore)) {
                        i7 += 2;
                        i6 = 11;
                        if (i5 > 0) {
                        }
                        return adjustReplacementSpan(charSequence, i - i7, true);
                    }
                    i6 = 13;
                    if (i5 > 0) {
                    }
                    return adjustReplacementSpan(charSequence, i - i7, true);
                case 11:
                    if (Emoji.isRegionalIndicatorSymbol(codePointBefore)) {
                        i7 -= 2;
                        i6 = 10;
                        if (i5 > 0) {
                        }
                        return adjustReplacementSpan(charSequence, i - i7, true);
                    }
                    i6 = 13;
                    if (i5 > 0) {
                    }
                    return adjustReplacementSpan(charSequence, i - i7, true);
                case 12:
                    if (!Emoji.isTagSpecChar(codePointBefore)) {
                        i7 = Emoji.isEmoji(codePointBefore) ? i7 + Character.charCount(codePointBefore) : 2;
                        i6 = 13;
                        if (i5 > 0) {
                        }
                        return adjustReplacementSpan(charSequence, i - i7, true);
                    }
                    i7 += 2;
                    if (i5 > 0) {
                    }
                    return adjustReplacementSpan(charSequence, i - i7, true);
                default:
                    throw new IllegalArgumentException("state " + i6 + " is unknown");
            }
        } while (i6 != 13);
        return adjustReplacementSpan(charSequence, i - i7, true);
    }

    private static int getOffsetForForwardDeleteKey(CharSequence charSequence, int i, Paint paint) {
        int length = charSequence.length();
        return i >= length + (-1) ? length : adjustReplacementSpan(charSequence, paint.getTextRunCursor(charSequence, i, length, 0, i, 0), false);
    }

    private boolean backspaceOrForwardDelete(View view, Editable editable, int i, KeyEvent keyEvent, boolean z) {
        int offsetForBackspaceKey;
        Paint paint;
        Paint paint2;
        if (!KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState() & (-28916))) {
            return false;
        }
        if (deleteSelection(view, editable)) {
            return true;
        }
        boolean z2 = (keyEvent.getMetaState() & 4096) != 0;
        boolean z3 = getMetaState(editable, 1, keyEvent) == 1;
        boolean z4 = getMetaState(editable, 2, keyEvent) == 1;
        if (z2) {
            if (z4 || z3) {
                return false;
            }
            return deleteUntilWordBoundary(view, editable, z);
        }
        if (z4 && deleteLine(view, editable)) {
            return true;
        }
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (z) {
            if (view instanceof TextView) {
                paint2 = ((TextView) view).getPaint();
            } else {
                synchronized (this.mLock) {
                    if (sCachedPaint == null) {
                        sCachedPaint = new Paint();
                    }
                    paint = sCachedPaint;
                }
                paint2 = paint;
            }
            offsetForBackspaceKey = getOffsetForForwardDeleteKey(editable, selectionEnd, paint2);
        } else {
            offsetForBackspaceKey = getOffsetForBackspaceKey(editable, selectionEnd);
        }
        if (selectionEnd == offsetForBackspaceKey) {
            return false;
        }
        editable.delete(Math.min(selectionEnd, offsetForBackspaceKey), Math.max(selectionEnd, offsetForBackspaceKey));
        return true;
    }

    private boolean deleteUntilWordBoundary(View view, Editable editable, boolean z) {
        int i;
        int selectionStart = Selection.getSelectionStart(editable);
        if (selectionStart != Selection.getSelectionEnd(editable)) {
            return false;
        }
        if ((!z && selectionStart == 0) || (z && selectionStart == editable.length())) {
            return false;
        }
        WordIterator wordIterator = view instanceof TextView ? ((TextView) view).getWordIterator() : null;
        if (wordIterator == null) {
            wordIterator = new WordIterator();
        }
        if (z) {
            wordIterator.setCharSequence(editable, selectionStart, editable.length());
            int following = wordIterator.following(selectionStart);
            i = following == -1 ? editable.length() : following;
        } else {
            wordIterator.setCharSequence(editable, 0, selectionStart);
            int preceding = wordIterator.preceding(selectionStart);
            if (preceding == -1) {
                i = selectionStart;
                selectionStart = 0;
            } else {
                i = selectionStart;
                selectionStart = preceding;
            }
        }
        editable.delete(selectionStart, i);
        return true;
    }

    private boolean deleteSelection(View view, Editable editable) {
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (selectionEnd < selectionStart) {
            selectionEnd = selectionStart;
            selectionStart = selectionEnd;
        }
        if (selectionStart == selectionEnd) {
            return false;
        }
        editable.delete(selectionStart, selectionEnd);
        return true;
    }

    private boolean deleteLine(View view, Editable editable) {
        Layout layout;
        int lineForOffset;
        int lineStart;
        int lineEnd;
        if (!(view instanceof TextView) || (layout = ((TextView) view).getLayout()) == null || (lineEnd = layout.getLineEnd(lineForOffset)) == (lineStart = layout.getLineStart((lineForOffset = layout.getLineForOffset(Selection.getSelectionStart(editable)))))) {
            return false;
        }
        editable.delete(lineStart, lineEnd);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int makeTextContentType(TextKeyListener.Capitalize capitalize, boolean z) {
        int i;
        switch (capitalize) {
            case CHARACTERS:
                i = GLES31.GL_TEXTURE_HEIGHT;
                break;
            case WORDS:
                i = 8193;
                break;
            case SENTENCES:
                i = 16385;
                break;
            default:
                i = 1;
                break;
        }
        return z ? i | 32768 : i;
    }

    @Override // android.text.method.MetaKeyKeyListener, android.text.method.KeyListener
    public boolean onKeyDown(View view, Editable editable, int i, KeyEvent keyEvent) {
        boolean backspace;
        if (i == 67) {
            backspace = backspace(view, editable, i, keyEvent);
        } else {
            backspace = i != 112 ? false : forwardDelete(view, editable, i, keyEvent);
        }
        if (backspace) {
            adjustMetaAfterKeypress(editable);
            return true;
        }
        return super.onKeyDown(view, editable, i, keyEvent);
    }

    @Override // android.text.method.KeyListener
    public boolean onKeyOther(View view, Editable editable, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 2 || keyEvent.getKeyCode() != 0) {
            return false;
        }
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (selectionEnd < selectionStart) {
            selectionEnd = selectionStart;
            selectionStart = selectionEnd;
        }
        String characters = keyEvent.getCharacters();
        if (characters == null) {
            return false;
        }
        editable.replace(selectionStart, selectionEnd, characters);
        return true;
    }
}
