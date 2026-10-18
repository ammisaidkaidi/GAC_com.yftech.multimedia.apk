package android.text.method;

import android.os.Handler;
import android.os.SystemClock;
import android.text.Editable;
import android.text.Selection;
import android.text.SpanWatcher;
import android.text.Spannable;
import android.text.method.TextKeyListener;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.View;

/* loaded from: /home/user/work/dex/classes2.dex */
public class MultiTapKeyListener extends BaseKeyListener implements SpanWatcher {
    private static MultiTapKeyListener[] sInstance = new MultiTapKeyListener[TextKeyListener.Capitalize.values().length * 2];
    private static final SparseArray<String> sRecs = new SparseArray<>();
    private boolean mAutoText;
    private TextKeyListener.Capitalize mCapitalize;

    @Override // android.text.SpanWatcher
    public void onSpanAdded(Spannable spannable, Object obj, int i, int i2) {
    }

    @Override // android.text.SpanWatcher
    public void onSpanRemoved(Spannable spannable, Object obj, int i, int i2) {
    }

    static {
        sRecs.put(8, ".,1!@#$%^&*:/?'=()");
        sRecs.put(9, "abc2ABC");
        sRecs.put(10, "def3DEF");
        sRecs.put(11, "ghi4GHI");
        sRecs.put(12, "jkl5JKL");
        sRecs.put(13, "mno6MNO");
        sRecs.put(14, "pqrs7PQRS");
        sRecs.put(15, "tuv8TUV");
        sRecs.put(16, "wxyz9WXYZ");
        sRecs.put(7, "0+");
        sRecs.put(18, " ");
    }

    public MultiTapKeyListener(TextKeyListener.Capitalize capitalize, boolean z) {
        this.mCapitalize = capitalize;
        this.mAutoText = z;
    }

    public static MultiTapKeyListener getInstance(boolean z, TextKeyListener.Capitalize capitalize) {
        int ordinal = (capitalize.ordinal() * 2) + (z ? 1 : 0);
        if (sInstance[ordinal] == null) {
            sInstance[ordinal] = new MultiTapKeyListener(capitalize, z);
        }
        return sInstance[ordinal];
    }

    @Override // android.text.method.KeyListener
    public int getInputType() {
        return makeTextContentType(this.mCapitalize, this.mAutoText);
    }

    @Override // android.text.method.BaseKeyListener, android.text.method.MetaKeyKeyListener, android.text.method.KeyListener
    public boolean onKeyDown(View view, Editable editable, int i, KeyEvent keyEvent) {
        int indexOfKey;
        int i2;
        String valueAt;
        int indexOf;
        int prefs = view != null ? TextKeyListener.getInstance().getPrefs(view.getContext()) : 0;
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        int min = Math.min(selectionStart, selectionEnd);
        int max = Math.max(selectionStart, selectionEnd);
        int spanStart = editable.getSpanStart(TextKeyListener.ACTIVE);
        int spanEnd = editable.getSpanEnd(TextKeyListener.ACTIVE);
        int spanFlags = (editable.getSpanFlags(TextKeyListener.ACTIVE) & (-16777216)) >>> 24;
        if (spanStart == min && spanEnd == max && max - min == 1 && spanFlags >= 0 && spanFlags < sRecs.size()) {
            if (i == 17) {
                char charAt = editable.charAt(min);
                if (Character.isLowerCase(charAt)) {
                    editable.replace(min, max, String.valueOf(charAt).toUpperCase());
                    removeTimeouts(editable);
                    new Timeout(editable);
                    return true;
                }
                if (Character.isUpperCase(charAt)) {
                    editable.replace(min, max, String.valueOf(charAt).toLowerCase());
                    removeTimeouts(editable);
                    new Timeout(editable);
                    return true;
                }
            }
            if (sRecs.indexOfKey(i) == spanFlags && (indexOf = (valueAt = sRecs.valueAt(spanFlags)).indexOf(editable.charAt(min))) >= 0) {
                int length = (indexOf + 1) % valueAt.length();
                editable.replace(min, max, valueAt, length, length + 1);
                removeTimeouts(editable);
                new Timeout(editable);
                return true;
            }
            indexOfKey = sRecs.indexOfKey(i);
            if (indexOfKey >= 0) {
                Selection.setSelection(editable, max, max);
                min = max;
            }
        } else {
            indexOfKey = sRecs.indexOfKey(i);
        }
        int i3 = indexOfKey;
        if (i3 >= 0) {
            String valueAt2 = sRecs.valueAt(i3);
            if ((prefs & 1) != 0 && TextKeyListener.shouldCap(this.mCapitalize, editable, min)) {
                for (int i4 = 0; i4 < valueAt2.length(); i4++) {
                    if (Character.isUpperCase(valueAt2.charAt(i4))) {
                        i2 = i4;
                        break;
                    }
                }
            }
            i2 = 0;
            if (min != max) {
                Selection.setSelection(editable, max);
            }
            editable.setSpan(OLD_SEL_START, min, min, 17);
            editable.replace(min, max, valueAt2, i2, i2 + 1);
            int spanStart2 = editable.getSpanStart(OLD_SEL_START);
            int selectionEnd2 = Selection.getSelectionEnd(editable);
            if (selectionEnd2 != spanStart2) {
                Selection.setSelection(editable, spanStart2, selectionEnd2);
                editable.setSpan(TextKeyListener.LAST_TYPED, spanStart2, selectionEnd2, 33);
                editable.setSpan(TextKeyListener.ACTIVE, spanStart2, selectionEnd2, 33 | (i3 << 24));
            }
            removeTimeouts(editable);
            new Timeout(editable);
            if (editable.getSpanStart(this) < 0) {
                for (Object obj : (KeyListener[]) editable.getSpans(0, editable.length(), KeyListener.class)) {
                    editable.removeSpan(obj);
                }
                editable.setSpan(this, 0, editable.length(), 18);
            }
            return true;
        }
        return super.onKeyDown(view, editable, i, keyEvent);
    }

    @Override // android.text.SpanWatcher
    public void onSpanChanged(Spannable spannable, Object obj, int i, int i2, int i3, int i4) {
        if (obj == Selection.SELECTION_END) {
            spannable.removeSpan(TextKeyListener.ACTIVE);
            removeTimeouts(spannable);
        }
    }

    private static void removeTimeouts(Spannable spannable) {
        for (Timeout timeout : (Timeout[]) spannable.getSpans(0, spannable.length(), Timeout.class)) {
            timeout.removeCallbacks(timeout);
            timeout.mBuffer = null;
            spannable.removeSpan(timeout);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public class Timeout extends Handler implements Runnable {
        private Editable mBuffer;

        public Timeout(Editable editable) {
            this.mBuffer = editable;
            this.mBuffer.setSpan(this, 0, this.mBuffer.length(), 18);
            postAtTime(this, SystemClock.uptimeMillis() + 2000);
        }

        @Override // java.lang.Runnable
        public void run() {
            Editable editable = this.mBuffer;
            if (editable != null) {
                int selectionStart = Selection.getSelectionStart(editable);
                int selectionEnd = Selection.getSelectionEnd(editable);
                int spanStart = editable.getSpanStart(TextKeyListener.ACTIVE);
                int spanEnd = editable.getSpanEnd(TextKeyListener.ACTIVE);
                if (selectionStart == spanStart && selectionEnd == spanEnd) {
                    Selection.setSelection(editable, Selection.getSelectionEnd(editable));
                }
                editable.removeSpan(this);
            }
        }
    }
}
