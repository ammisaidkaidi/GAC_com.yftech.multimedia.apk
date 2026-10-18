package android.widget;

import android.R;
import android.content.Context;
import android.graphics.Rect;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Selection;
import android.text.TextWatcher;
import android.text.method.DialerKeyListener;
import android.text.method.KeyListener;
import android.text.method.TextKeyListener;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.textclassifier.TextClassifier;

@Deprecated
/* loaded from: /home/user/work/dex/classes2.dex */
public class DialerFilter extends RelativeLayout {
    public static final int DIGITS_AND_LETTERS = 1;
    public static final int DIGITS_AND_LETTERS_NO_DIGITS = 2;
    public static final int DIGITS_AND_LETTERS_NO_LETTERS = 3;
    public static final int DIGITS_ONLY = 4;
    public static final int LETTERS_ONLY = 5;
    EditText mDigits;
    EditText mHint;
    ImageView mIcon;
    InputFilter[] mInputFilters;
    private boolean mIsQwerty;
    EditText mLetters;
    int mMode;
    EditText mPrimary;

    protected void onModeChange(int i, int i2) {
    }

    public DialerFilter(Context context) {
        super(context);
    }

    public DialerFilter(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mInputFilters = new InputFilter[]{new InputFilter.AllCaps()};
        this.mHint = (EditText) findViewById(R.id.hint);
        if (this.mHint == null) {
            throw new IllegalStateException("DialerFilter must have a child EditText named hint");
        }
        this.mHint.setFilters(this.mInputFilters);
        this.mLetters = this.mHint;
        this.mLetters.setKeyListener(TextKeyListener.getInstance());
        this.mLetters.setMovementMethod(null);
        this.mLetters.setFocusable(false);
        this.mPrimary = (EditText) findViewById(R.id.primary);
        if (this.mPrimary == null) {
            throw new IllegalStateException("DialerFilter must have a child EditText named primary");
        }
        this.mPrimary.setFilters(this.mInputFilters);
        this.mDigits = this.mPrimary;
        this.mDigits.setKeyListener(DialerKeyListener.getInstance());
        this.mDigits.setMovementMethod(null);
        this.mDigits.setFocusable(false);
        this.mIcon = (ImageView) findViewById(R.id.icon);
        setFocusable(true);
        this.mIsQwerty = true;
        setMode(1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (this.mIcon != null) {
            this.mIcon.setVisibility(z ? 0 : 8);
        }
    }

    public boolean isQwertyKeyboard() {
        return this.mIsQwerty;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        boolean z = false;
        switch (i) {
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
                break;
            default:
                switch (i) {
                    case 66:
                        break;
                    case 67:
                        switch (this.mMode) {
                            case 1:
                                z = this.mDigits.onKeyDown(i, keyEvent) & this.mLetters.onKeyDown(i, keyEvent);
                                break;
                            case 2:
                                z = this.mLetters.onKeyDown(i, keyEvent);
                                if (this.mLetters.getText().length() == this.mDigits.getText().length()) {
                                    setMode(1);
                                    break;
                                }
                                break;
                            case 3:
                                if (this.mDigits.getText().length() == this.mLetters.getText().length()) {
                                    this.mLetters.onKeyDown(i, keyEvent);
                                    setMode(1);
                                }
                                z = this.mDigits.onKeyDown(i, keyEvent);
                                break;
                            case 4:
                                z = this.mDigits.onKeyDown(i, keyEvent);
                                break;
                            case 5:
                                z = this.mLetters.onKeyDown(i, keyEvent);
                                break;
                        }
                    default:
                        switch (this.mMode) {
                            case 1:
                                z = this.mLetters.onKeyDown(i, keyEvent);
                                if (KeyEvent.isModifierKey(i)) {
                                    this.mDigits.onKeyDown(i, keyEvent);
                                    z = true;
                                    break;
                                } else if (keyEvent.isPrintingKey() || i == 62 || i == 61) {
                                    if (keyEvent.getMatch(DialerKeyListener.CHARACTERS) != 0) {
                                        z &= this.mDigits.onKeyDown(i, keyEvent);
                                        break;
                                    } else {
                                        setMode(2);
                                        break;
                                    }
                                }
                                break;
                            case 2:
                            case 5:
                                z = this.mLetters.onKeyDown(i, keyEvent);
                                break;
                            case 3:
                            case 4:
                                z = this.mDigits.onKeyDown(i, keyEvent);
                                break;
                        }
                }
        }
        if (z) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        return this.mLetters.onKeyUp(i, keyEvent) || this.mDigits.onKeyUp(i, keyEvent);
    }

    public int getMode() {
        return this.mMode;
    }

    public void setMode(int i) {
        switch (i) {
            case 1:
                makeDigitsPrimary();
                this.mLetters.setVisibility(0);
                this.mDigits.setVisibility(0);
                break;
            case 2:
                makeLettersPrimary();
                this.mLetters.setVisibility(0);
                this.mDigits.setVisibility(4);
                break;
            case 3:
                makeDigitsPrimary();
                this.mLetters.setVisibility(4);
                this.mDigits.setVisibility(0);
                break;
            case 4:
                makeDigitsPrimary();
                this.mLetters.setVisibility(8);
                this.mDigits.setVisibility(0);
                break;
            case 5:
                makeLettersPrimary();
                this.mLetters.setVisibility(0);
                this.mDigits.setVisibility(8);
                break;
        }
        int i2 = this.mMode;
        this.mMode = i;
        onModeChange(i2, i);
    }

    private void makeLettersPrimary() {
        if (this.mPrimary == this.mDigits) {
            swapPrimaryAndHint(true);
        }
    }

    private void makeDigitsPrimary() {
        if (this.mPrimary == this.mLetters) {
            swapPrimaryAndHint(false);
        }
    }

    private void swapPrimaryAndHint(boolean z) {
        Editable text = this.mLetters.getText();
        Editable text2 = this.mDigits.getText();
        KeyListener keyListener = this.mLetters.getKeyListener();
        KeyListener keyListener2 = this.mDigits.getKeyListener();
        if (z) {
            this.mLetters = this.mPrimary;
            this.mDigits = this.mHint;
        } else {
            this.mLetters = this.mHint;
            this.mDigits = this.mPrimary;
        }
        this.mLetters.setKeyListener(keyListener);
        this.mLetters.setText(text);
        Editable text3 = this.mLetters.getText();
        Selection.setSelection(text3, text3.length());
        this.mDigits.setKeyListener(keyListener2);
        this.mDigits.setText(text2);
        Editable text4 = this.mDigits.getText();
        Selection.setSelection(text4, text4.length());
        this.mPrimary.setFilters(this.mInputFilters);
        this.mHint.setFilters(this.mInputFilters);
    }

    public CharSequence getLetters() {
        return this.mLetters.getVisibility() == 0 ? this.mLetters.getText() : TextClassifier.TYPE_UNKNOWN;
    }

    public CharSequence getDigits() {
        return this.mDigits.getVisibility() == 0 ? this.mDigits.getText() : TextClassifier.TYPE_UNKNOWN;
    }

    public CharSequence getFilterText() {
        if (this.mMode != 4) {
            return getLetters();
        }
        return getDigits();
    }

    public void append(String str) {
        switch (this.mMode) {
            case 1:
                this.mDigits.getText().append((CharSequence) str);
                this.mLetters.getText().append((CharSequence) str);
                return;
            case 2:
            case 5:
                this.mLetters.getText().append((CharSequence) str);
                return;
            case 3:
            case 4:
                this.mDigits.getText().append((CharSequence) str);
                return;
            default:
                return;
        }
    }

    public void clearText() {
        this.mLetters.getText().clear();
        this.mDigits.getText().clear();
        if (this.mIsQwerty) {
            setMode(1);
        } else {
            setMode(4);
        }
    }

    public void setLettersWatcher(TextWatcher textWatcher) {
        Editable text = this.mLetters.getText();
        text.setSpan(textWatcher, 0, text.length(), 18);
    }

    public void setDigitsWatcher(TextWatcher textWatcher) {
        Editable text = this.mDigits.getText();
        text.setSpan(textWatcher, 0, text.length(), 18);
    }

    public void setFilterWatcher(TextWatcher textWatcher) {
        if (this.mMode != 4) {
            setLettersWatcher(textWatcher);
        } else {
            setDigitsWatcher(textWatcher);
        }
    }

    public void removeFilterWatcher(TextWatcher textWatcher) {
        Editable text;
        if (this.mMode != 4) {
            text = this.mLetters.getText();
        } else {
            text = this.mDigits.getText();
        }
        text.removeSpan(textWatcher);
    }
}
