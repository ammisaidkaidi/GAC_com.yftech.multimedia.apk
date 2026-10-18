package android.view.inputmethod;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.method.MetaKeyKeyListener;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.View;
import android.view.textclassifier.TextClassifier;

/* loaded from: /home/user/work/dex/classes2.dex */
public class BaseInputConnection implements InputConnection {
    private static final boolean DEBUG = false;
    private static final String TAG = "BaseInputConnection";
    private Object[] mDefaultComposingSpans;
    final boolean mDummyMode;
    Editable mEditable;
    protected final InputMethodManager mIMM;
    KeyCharacterMap mKeyCharacterMap;
    final View mTargetView;
    static final Object COMPOSING = new ComposingText();
    private static int INVALID_INDEX = -1;

    @Override // android.view.inputmethod.InputConnection
    public boolean beginBatchEdit() {
        return false;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean commitCompletion(CompletionInfo completionInfo) {
        return false;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean commitContent(InputContentInfo inputContentInfo, int i, Bundle bundle) {
        return false;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean commitCorrection(CorrectionInfo correctionInfo) {
        return false;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean endBatchEdit() {
        return false;
    }

    @Override // android.view.inputmethod.InputConnection
    public ExtractedText getExtractedText(ExtractedTextRequest extractedTextRequest, int i) {
        return null;
    }

    @Override // android.view.inputmethod.InputConnection
    public Handler getHandler() {
        return null;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean performContextMenuAction(int i) {
        return false;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean performPrivateCommand(String str, Bundle bundle) {
        return false;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean reportFullscreenMode(boolean z) {
        return true;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean requestCursorUpdates(int i) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BaseInputConnection(InputMethodManager inputMethodManager, boolean z) {
        this.mIMM = inputMethodManager;
        this.mTargetView = null;
        this.mDummyMode = !z;
    }

    public BaseInputConnection(View view, boolean z) {
        this.mIMM = (InputMethodManager) view.getContext().getSystemService("input_method");
        this.mTargetView = view;
        this.mDummyMode = !z;
    }

    public static final void removeComposingSpans(Spannable spannable) {
        spannable.removeSpan(COMPOSING);
        Object[] spans = spannable.getSpans(0, spannable.length(), Object.class);
        if (spans != null) {
            for (int length = spans.length - 1; length >= 0; length--) {
                Object obj = spans[length];
                if ((spannable.getSpanFlags(obj) & 256) != 0) {
                    spannable.removeSpan(obj);
                }
            }
        }
    }

    public static void setComposingSpans(Spannable spannable) {
        setComposingSpans(spannable, 0, spannable.length());
    }

    public static void setComposingSpans(Spannable spannable, int i, int i2) {
        Object[] spans = spannable.getSpans(i, i2, Object.class);
        if (spans != null) {
            for (int length = spans.length - 1; length >= 0; length--) {
                Object obj = spans[length];
                if (obj == COMPOSING) {
                    spannable.removeSpan(obj);
                } else {
                    int spanFlags = spannable.getSpanFlags(obj);
                    if ((spanFlags & 307) != 289) {
                        spannable.setSpan(obj, spannable.getSpanStart(obj), spannable.getSpanEnd(obj), (spanFlags & (-52)) | 256 | 33);
                    }
                }
            }
        }
        spannable.setSpan(COMPOSING, i, i2, 289);
    }

    public static int getComposingSpanStart(Spannable spannable) {
        return spannable.getSpanStart(COMPOSING);
    }

    public static int getComposingSpanEnd(Spannable spannable) {
        return spannable.getSpanEnd(COMPOSING);
    }

    public Editable getEditable() {
        if (this.mEditable == null) {
            this.mEditable = Editable.Factory.getInstance().newEditable(TextClassifier.TYPE_UNKNOWN);
            Selection.setSelection(this.mEditable, 0);
        }
        return this.mEditable;
    }

    @Override // android.view.inputmethod.InputConnection
    public void closeConnection() {
        finishComposingText();
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean clearMetaKeyStates(int i) {
        Editable editable = getEditable();
        if (editable == null) {
            return false;
        }
        MetaKeyKeyListener.clearMetaKeyState(editable, i);
        return true;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean commitText(CharSequence charSequence, int i) {
        replaceText(charSequence, i, false);
        sendCurrentText();
        return true;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean deleteSurroundingText(int i, int i2) {
        Editable editable = getEditable();
        int i3 = 0;
        if (editable == null) {
            return false;
        }
        beginBatchEdit();
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (selectionStart > selectionEnd) {
            selectionEnd = selectionStart;
            selectionStart = selectionEnd;
        }
        int composingSpanStart = getComposingSpanStart(editable);
        int composingSpanEnd = getComposingSpanEnd(editable);
        if (composingSpanEnd < composingSpanStart) {
            composingSpanEnd = composingSpanStart;
            composingSpanStart = composingSpanEnd;
        }
        if (composingSpanStart != -1 && composingSpanEnd != -1) {
            if (composingSpanStart < selectionStart) {
                selectionStart = composingSpanStart;
            }
            if (composingSpanEnd > selectionEnd) {
                selectionEnd = composingSpanEnd;
            }
        }
        if (i > 0) {
            int i4 = selectionStart - i;
            if (i4 < 0) {
                i4 = 0;
            }
            editable.delete(i4, selectionStart);
            i3 = selectionStart - i4;
        }
        if (i2 > 0) {
            int i5 = selectionEnd - i3;
            int i6 = i2 + i5;
            if (i6 > editable.length()) {
                i6 = editable.length();
            }
            editable.delete(i5, i6);
        }
        endBatchEdit();
        return true;
    }

    private static int findIndexBackward(CharSequence charSequence, int i, int i2) {
        int length = charSequence.length();
        if (i < 0 || length < i) {
            return INVALID_INDEX;
        }
        if (i2 < 0) {
            return INVALID_INDEX;
        }
        while (true) {
            boolean z = false;
            while (i2 != 0) {
                i--;
                if (i < 0) {
                    if (z) {
                        return INVALID_INDEX;
                    }
                    return 0;
                }
                char charAt = charSequence.charAt(i);
                if (z) {
                    if (!Character.isHighSurrogate(charAt)) {
                        return INVALID_INDEX;
                    }
                    i2--;
                } else if (!Character.isSurrogate(charAt)) {
                    i2--;
                } else {
                    if (Character.isHighSurrogate(charAt)) {
                        return INVALID_INDEX;
                    }
                    z = true;
                }
            }
            return i;
        }
    }

    private static int findIndexForward(CharSequence charSequence, int i, int i2) {
        int length = charSequence.length();
        if (i < 0 || length < i) {
            return INVALID_INDEX;
        }
        if (i2 < 0) {
            return INVALID_INDEX;
        }
        while (true) {
            boolean z = false;
            while (i2 != 0) {
                if (i >= length) {
                    return z ? INVALID_INDEX : length;
                }
                char charAt = charSequence.charAt(i);
                if (z) {
                    if (!Character.isLowSurrogate(charAt)) {
                        return INVALID_INDEX;
                    }
                    i2--;
                    i++;
                } else if (!Character.isSurrogate(charAt)) {
                    i2--;
                    i++;
                } else {
                    if (Character.isLowSurrogate(charAt)) {
                        return INVALID_INDEX;
                    }
                    i++;
                    z = true;
                }
            }
            return i;
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean deleteSurroundingTextInCodePoints(int i, int i2) {
        int findIndexBackward;
        int findIndexForward;
        Editable editable = getEditable();
        if (editable == null) {
            return false;
        }
        beginBatchEdit();
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (selectionStart > selectionEnd) {
            selectionEnd = selectionStart;
            selectionStart = selectionEnd;
        }
        int composingSpanStart = getComposingSpanStart(editable);
        int composingSpanEnd = getComposingSpanEnd(editable);
        if (composingSpanEnd < composingSpanStart) {
            composingSpanEnd = composingSpanStart;
            composingSpanStart = composingSpanEnd;
        }
        if (composingSpanStart != -1 && composingSpanEnd != -1) {
            if (composingSpanStart < selectionStart) {
                selectionStart = composingSpanStart;
            }
            if (composingSpanEnd > selectionEnd) {
                selectionEnd = composingSpanEnd;
            }
        }
        if (selectionStart >= 0 && selectionEnd >= 0 && (findIndexBackward = findIndexBackward(editable, selectionStart, Math.max(i, 0))) != INVALID_INDEX && (findIndexForward = findIndexForward(editable, selectionEnd, Math.max(i2, 0))) != INVALID_INDEX) {
            int i3 = selectionStart - findIndexBackward;
            if (i3 > 0) {
                editable.delete(findIndexBackward, selectionStart);
            }
            if (findIndexForward - selectionEnd > 0) {
                editable.delete(selectionEnd - i3, findIndexForward - i3);
            }
        }
        endBatchEdit();
        return true;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean finishComposingText() {
        Editable editable = getEditable();
        if (editable == null) {
            return true;
        }
        beginBatchEdit();
        removeComposingSpans(editable);
        sendCurrentText();
        endBatchEdit();
        return true;
    }

    @Override // android.view.inputmethod.InputConnection
    public int getCursorCapsMode(int i) {
        Editable editable;
        if (this.mDummyMode || (editable = getEditable()) == null) {
            return 0;
        }
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (selectionStart > selectionEnd) {
            selectionStart = selectionEnd;
        }
        return TextUtils.getCapsMode(editable, selectionStart, i);
    }

    @Override // android.view.inputmethod.InputConnection
    public CharSequence getTextBeforeCursor(int i, int i2) {
        Editable editable = getEditable();
        if (editable == null) {
            return null;
        }
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (selectionStart > selectionEnd) {
            selectionStart = selectionEnd;
        }
        if (selectionStart <= 0) {
            return TextClassifier.TYPE_UNKNOWN;
        }
        if (i > selectionStart) {
            i = selectionStart;
        }
        if ((i2 & 1) != 0) {
            return editable.subSequence(selectionStart - i, selectionStart);
        }
        return TextUtils.substring(editable, selectionStart - i, selectionStart);
    }

    @Override // android.view.inputmethod.InputConnection
    public CharSequence getSelectedText(int i) {
        Editable editable = getEditable();
        if (editable == null) {
            return null;
        }
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (selectionStart > selectionEnd) {
            selectionEnd = selectionStart;
            selectionStart = selectionEnd;
        }
        if (selectionStart == selectionEnd || selectionStart < 0) {
            return null;
        }
        if ((i & 1) != 0) {
            return editable.subSequence(selectionStart, selectionEnd);
        }
        return TextUtils.substring(editable, selectionStart, selectionEnd);
    }

    @Override // android.view.inputmethod.InputConnection
    public CharSequence getTextAfterCursor(int i, int i2) {
        Editable editable = getEditable();
        if (editable == null) {
            return null;
        }
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (selectionStart <= selectionEnd) {
            selectionStart = selectionEnd;
        }
        if (selectionStart < 0) {
            selectionStart = 0;
        }
        if (selectionStart + i > editable.length()) {
            i = editable.length() - selectionStart;
        }
        if ((i2 & 1) != 0) {
            return editable.subSequence(selectionStart, i + selectionStart);
        }
        return TextUtils.substring(editable, selectionStart, i + selectionStart);
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean performEditorAction(int i) {
        long uptimeMillis = SystemClock.uptimeMillis();
        sendKeyEvent(new KeyEvent(uptimeMillis, uptimeMillis, 0, 66, 0, 0, -1, 0, 22));
        sendKeyEvent(new KeyEvent(SystemClock.uptimeMillis(), uptimeMillis, 1, 66, 0, 0, -1, 0, 22));
        return true;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean setComposingText(CharSequence charSequence, int i) {
        replaceText(charSequence, i, true);
        return true;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean setComposingRegion(int i, int i2) {
        Editable editable = getEditable();
        if (editable == null) {
            return true;
        }
        beginBatchEdit();
        removeComposingSpans(editable);
        if (i > i2) {
            i2 = i;
            i = i2;
        }
        int length = editable.length();
        if (i < 0) {
            i = 0;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        if (i > length) {
            i = length;
        }
        if (i2 > length) {
            i2 = length;
        }
        ensureDefaultComposingSpans();
        if (this.mDefaultComposingSpans != null) {
            for (int i3 = 0; i3 < this.mDefaultComposingSpans.length; i3++) {
                editable.setSpan(this.mDefaultComposingSpans[i3], i, i2, 289);
            }
        }
        editable.setSpan(COMPOSING, i, i2, 289);
        sendCurrentText();
        endBatchEdit();
        return true;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean setSelection(int i, int i2) {
        Editable editable = getEditable();
        if (editable == null) {
            return false;
        }
        int length = editable.length();
        if (i > length || i2 > length || i < 0 || i2 < 0) {
            return true;
        }
        if (i == i2 && MetaKeyKeyListener.getMetaState(editable, 2048) != 0) {
            Selection.extendSelection(editable, i);
        } else {
            Selection.setSelection(editable, i, i2);
        }
        return true;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean sendKeyEvent(KeyEvent keyEvent) {
        this.mIMM.dispatchKeyEventFromInputMethod(this.mTargetView, keyEvent);
        return false;
    }

    private void sendCurrentText() {
        Editable editable;
        int length;
        if (!this.mDummyMode || (editable = getEditable()) == null || (length = editable.length()) == 0) {
            return;
        }
        if (length == 1) {
            if (this.mKeyCharacterMap == null) {
                this.mKeyCharacterMap = KeyCharacterMap.load(-1);
            }
            char[] cArr = new char[1];
            editable.getChars(0, 1, cArr, 0);
            KeyEvent[] events = this.mKeyCharacterMap.getEvents(cArr);
            if (events != null) {
                for (KeyEvent keyEvent : events) {
                    sendKeyEvent(keyEvent);
                }
                editable.clear();
                return;
            }
        }
        sendKeyEvent(new KeyEvent(SystemClock.uptimeMillis(), editable.toString(), -1, 0));
        editable.clear();
    }

    private void ensureDefaultComposingSpans() {
        Context context;
        if (this.mDefaultComposingSpans == null) {
            if (this.mTargetView != null) {
                context = this.mTargetView.getContext();
            } else {
                context = this.mIMM.mServedView != null ? this.mIMM.mServedView.getContext() : null;
            }
            if (context != null) {
                TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{R.attr.candidatesTextStyleSpans});
                CharSequence text = obtainStyledAttributes.getText(0);
                obtainStyledAttributes.recycle();
                if (text == null || !(text instanceof Spanned)) {
                    return;
                }
                this.mDefaultComposingSpans = ((Spanned) text).getSpans(0, text.length(), Object.class);
            }
        }
    }

    private void replaceText(CharSequence charSequence, int i, boolean z) {
        Spannable spannable;
        Editable editable = getEditable();
        if (editable == null) {
            return;
        }
        beginBatchEdit();
        int composingSpanStart = getComposingSpanStart(editable);
        int composingSpanEnd = getComposingSpanEnd(editable);
        if (composingSpanEnd < composingSpanStart) {
            composingSpanEnd = composingSpanStart;
            composingSpanStart = composingSpanEnd;
        }
        if (composingSpanStart != -1 && composingSpanEnd != -1) {
            removeComposingSpans(editable);
        } else {
            composingSpanStart = Selection.getSelectionStart(editable);
            composingSpanEnd = Selection.getSelectionEnd(editable);
            if (composingSpanStart < 0) {
                composingSpanStart = 0;
            }
            if (composingSpanEnd < 0) {
                composingSpanEnd = 0;
            }
            if (composingSpanEnd < composingSpanStart) {
                int i2 = composingSpanEnd;
                composingSpanEnd = composingSpanStart;
                composingSpanStart = i2;
            }
        }
        if (z) {
            if (!(charSequence instanceof Spannable)) {
                spannable = new SpannableStringBuilder(charSequence);
                ensureDefaultComposingSpans();
                if (this.mDefaultComposingSpans != null) {
                    for (int i3 = 0; i3 < this.mDefaultComposingSpans.length; i3++) {
                        spannable.setSpan(this.mDefaultComposingSpans[i3], 0, spannable.length(), 289);
                    }
                }
                charSequence = spannable;
            } else {
                spannable = (Spannable) charSequence;
            }
            setComposingSpans(spannable);
        }
        int i4 = i > 0 ? i + (composingSpanEnd - 1) : i + composingSpanStart;
        if (i4 < 0) {
            i4 = 0;
        }
        if (i4 > editable.length()) {
            i4 = editable.length();
        }
        Selection.setSelection(editable, i4);
        editable.replace(composingSpanStart, composingSpanEnd, charSequence);
        endBatchEdit();
    }
}
