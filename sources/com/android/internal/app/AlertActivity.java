package com.android.internal.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import com.android.internal.app.AlertController;

/* loaded from: /home/user/work/dex/classes3.dex */
public abstract class AlertActivity extends Activity implements DialogInterface {
    protected AlertController mAlert;
    protected AlertController.AlertParams mAlertParams;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mAlert = AlertController.create(this, this, getWindow());
        this.mAlertParams = new AlertController.AlertParams(this);
    }

    @Override // android.content.DialogInterface
    public void cancel() {
        finish();
    }

    @Override // android.content.DialogInterface
    public void dismiss() {
        if (isFinishing()) {
            return;
        }
        finish();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return dispatchPopulateAccessibilityEvent(this, accessibilityEvent);
    }

    public static boolean dispatchPopulateAccessibilityEvent(Activity activity, AccessibilityEvent accessibilityEvent) {
        accessibilityEvent.setClassName(Dialog.class.getName());
        accessibilityEvent.setPackageName(activity.getPackageName());
        WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
        accessibilityEvent.setFullScreen(((ViewGroup.LayoutParams) attributes).width == -1 && ((ViewGroup.LayoutParams) attributes).height == -1);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setupAlert() {
        this.mAlert.installContent(this.mAlertParams);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (this.mAlert.onKeyDown(i, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (this.mAlert.onKeyUp(i, keyEvent)) {
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }
}
