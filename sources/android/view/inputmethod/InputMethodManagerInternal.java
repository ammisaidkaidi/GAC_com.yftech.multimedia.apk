package android.view.inputmethod;

import android.content.ComponentName;

/* loaded from: /home/user/work/dex/classes2.dex */
public interface InputMethodManagerInternal {
    void hideCurrentInputMethod();

    void setInteractive(boolean z);

    void startVrInputMethodNoCheck(ComponentName componentName);

    void switchInputMethod(boolean z);
}
