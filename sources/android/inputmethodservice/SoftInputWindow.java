package android.inputmethodservice;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Rect;
import android.os.IBinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.WindowManager;

/* loaded from: /home/user/work/dex/classes.dex */
public class SoftInputWindow extends Dialog {
    private final Rect mBounds;
    final Callback mCallback;
    final KeyEvent.DispatcherState mDispatcherState;
    final int mGravity;
    final KeyEvent.Callback mKeyEventCallback;
    final String mName;
    final boolean mTakesFocus;
    final int mWindowType;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface Callback {
        void onBackPressed();
    }

    public void setToken(IBinder iBinder) {
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.token = iBinder;
        getWindow().setAttributes(attributes);
    }

    public SoftInputWindow(Context context, String str, int i, Callback callback, KeyEvent.Callback callback2, KeyEvent.DispatcherState dispatcherState, int i2, int i3, boolean z) {
        super(context, i);
        this.mBounds = new Rect();
        this.mName = str;
        this.mCallback = callback;
        this.mKeyEventCallback = callback2;
        this.mDispatcherState = dispatcherState;
        this.mWindowType = i2;
        this.mGravity = i3;
        this.mTakesFocus = z;
        initDockWindow();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        this.mDispatcherState.reset();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        getWindow().getDecorView().getHitRect(this.mBounds);
        if (motionEvent.isWithinBoundsNoHistory(this.mBounds.left, this.mBounds.top, this.mBounds.right - 1, this.mBounds.bottom - 1)) {
            return super.dispatchTouchEvent(motionEvent);
        }
        MotionEvent clampNoHistory = motionEvent.clampNoHistory(this.mBounds.left, this.mBounds.top, this.mBounds.right - 1, this.mBounds.bottom - 1);
        boolean dispatchTouchEvent = super.dispatchTouchEvent(clampNoHistory);
        clampNoHistory.recycle();
        return dispatchTouchEvent;
    }

    public void setGravity(int i) {
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.gravity = i;
        updateWidthHeight(attributes);
        getWindow().setAttributes(attributes);
    }

    public int getGravity() {
        return getWindow().getAttributes().gravity;
    }

    private void updateWidthHeight(WindowManager.LayoutParams layoutParams) {
        if (layoutParams.gravity == 48 || layoutParams.gravity == 80) {
            layoutParams.width = -1;
            layoutParams.height = -2;
        } else {
            layoutParams.width = -2;
            layoutParams.height = -1;
        }
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (this.mKeyEventCallback == null || !this.mKeyEventCallback.onKeyDown(i, keyEvent)) {
            return super.onKeyDown(i, keyEvent);
        }
        return true;
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyLongPress(int i, KeyEvent keyEvent) {
        if (this.mKeyEventCallback == null || !this.mKeyEventCallback.onKeyLongPress(i, keyEvent)) {
            return super.onKeyLongPress(i, keyEvent);
        }
        return true;
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (this.mKeyEventCallback == null || !this.mKeyEventCallback.onKeyUp(i, keyEvent)) {
            return super.onKeyUp(i, keyEvent);
        }
        return true;
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyMultiple(int i, int i2, KeyEvent keyEvent) {
        if (this.mKeyEventCallback == null || !this.mKeyEventCallback.onKeyMultiple(i, i2, keyEvent)) {
            return super.onKeyMultiple(i, i2, keyEvent);
        }
        return true;
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        if (this.mCallback != null) {
            this.mCallback.onBackPressed();
        } else {
            super.onBackPressed();
        }
    }

    private void initDockWindow() {
        int i;
        int i2;
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.type = this.mWindowType;
        attributes.setTitle(this.mName);
        attributes.gravity = this.mGravity;
        updateWidthHeight(attributes);
        getWindow().setAttributes(attributes);
        if (this.mTakesFocus) {
            i = 288;
            i2 = 298;
        } else {
            i = 264;
            i2 = 266;
        }
        getWindow().setFlags(i, i2);
    }
}
