package android.widget;

import android.R;
import android.app.INotificationManager;
import android.app.ITransientNotification;
import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemProperties;
import android.util.Log;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: /home/user/work/dex/classes2.dex */
public class Toast {
    public static final int LENGTH_LONG = 1;
    public static final int LENGTH_SHORT = 0;
    static final String TAG = "Toast";
    static final boolean localLOGV = false;
    private static INotificationManager sService;
    final Context mContext;
    int mDuration;
    View mNextView;
    final TN mTN;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes2.dex */
    public @interface Duration {
    }

    static /* synthetic */ INotificationManager access$100() {
        return getService();
    }

    public Toast(Context context) {
        this(context, null);
    }

    public Toast(Context context, Looper looper) {
        this.mContext = context;
        this.mTN = new TN(context.getPackageName(), looper);
        this.mTN.mY = context.getResources().getDimensionPixelSize(R.dimen.notification_title_text_size);
        this.mTN.mGravity = context.getResources().getInteger(R.integer.config_ntpRetry);
    }

    public void show() {
        if (this.mNextView == null) {
            throw new RuntimeException("setView must have been called");
        }
        INotificationManager service = getService();
        String opPackageName = this.mContext.getOpPackageName();
        TN tn = this.mTN;
        tn.mNextView = this.mNextView;
        try {
            service.enqueueToast(opPackageName, tn, this.mDuration);
        } catch (RemoteException unused) {
        }
    }

    public void cancel() {
        this.mTN.cancel();
    }

    public void setView(View view) {
        this.mNextView = view;
    }

    public View getView() {
        return this.mNextView;
    }

    public void setDuration(int i) {
        this.mDuration = i;
        this.mTN.mDuration = i;
    }

    public int getDuration() {
        return this.mDuration;
    }

    public void setMargin(float f, float f2) {
        this.mTN.mHorizontalMargin = f;
        this.mTN.mVerticalMargin = f2;
    }

    public float getHorizontalMargin() {
        return this.mTN.mHorizontalMargin;
    }

    public float getVerticalMargin() {
        return this.mTN.mVerticalMargin;
    }

    public void setGravity(int i, int i2, int i3) {
        this.mTN.mGravity = i;
        this.mTN.mX = i2;
        this.mTN.mY = i3;
    }

    public int getGravity() {
        return this.mTN.mGravity;
    }

    public int getXOffset() {
        return this.mTN.mX;
    }

    public int getYOffset() {
        return this.mTN.mY;
    }

    public WindowManager.LayoutParams getWindowParams() {
        return this.mTN.mParams;
    }

    public static Toast makeText(Context context, CharSequence charSequence, int i) {
        return makeText(context, null, charSequence, i);
    }

    public static Toast makeText(Context context, Looper looper, CharSequence charSequence, int i) {
        Toast toast = new Toast(context, looper);
        View inflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.tab_indicator_holo, (ViewGroup) null);
        ((TextView) inflate.findViewById(R.id.message)).setText(charSequence);
        toast.mNextView = inflate;
        toast.mDuration = i;
        return toast;
    }

    public static Toast makeText(Context context, int i, int i2) throws Resources.NotFoundException {
        return makeText(context, context.getResources().getText(i), i2);
    }

    public void setText(int i) {
        setText(this.mContext.getText(i));
    }

    public void setText(CharSequence charSequence) {
        if (this.mNextView == null) {
            throw new RuntimeException("This Toast was not created with Toast.makeText()");
        }
        TextView textView = (TextView) this.mNextView.findViewById(R.id.message);
        if (textView == null) {
            throw new RuntimeException("This Toast was not created with Toast.makeText()");
        }
        textView.setText(charSequence);
    }

    private static INotificationManager getService() {
        if (sService != null) {
            return sService;
        }
        sService = INotificationManager.Stub.asInterface(ServiceManager.getService("notification"));
        return sService;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class TN extends ITransientNotification.Stub {
        private static final int CANCEL = 2;
        private static final int HIDE = 1;
        static final long LONG_DURATION_TIMEOUT = 7000;
        static final long SHORT_DURATION_TIMEOUT = 4000;
        private static final int SHOW = 0;
        int mDuration;
        int mGravity;
        final Handler mHandler;
        float mHorizontalMargin;
        View mNextView;
        String mPackageName;
        private final WindowManager.LayoutParams mParams = new WindowManager.LayoutParams();
        float mVerticalMargin;
        View mView;
        WindowManager mWM;
        int mX;
        int mY;

        TN(String str, Looper looper) {
            WindowManager.LayoutParams layoutParams = this.mParams;
            layoutParams.height = -2;
            layoutParams.width = -2;
            layoutParams.format = -3;
            layoutParams.windowAnimations = R.style.Animation.Toast;
            layoutParams.type = WindowManager.LayoutParams.TYPE_TOAST;
            layoutParams.setTitle(Toast.TAG);
            layoutParams.flags = KeyEvent.KEYCODE_NUMPAD_8;
            this.mPackageName = str;
            if (looper == null && (looper = Looper.myLooper()) == null) {
                throw new RuntimeException("Can't toast on a thread that has not called Looper.prepare()");
            }
            this.mHandler = new Handler(looper, null) { // from class: android.widget.Toast.TN.1
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    switch (message.what) {
                        case 0:
                            TN.this.handleShow((IBinder) message.obj);
                            return;
                        case 1:
                            TN.this.handleHide();
                            TN.this.mNextView = null;
                            return;
                        case 2:
                            TN.this.handleHide();
                            TN.this.mNextView = null;
                            try {
                                Toast.access$100().cancelToast(TN.this.mPackageName, TN.this);
                                return;
                            } catch (RemoteException unused) {
                                return;
                            }
                        default:
                            return;
                    }
                }
            };
        }

        public void show(IBinder iBinder) {
            this.mHandler.obtainMessage(0, iBinder).sendToTarget();
        }

        public void hide() {
            this.mHandler.obtainMessage(1).sendToTarget();
        }

        public void cancel() {
            this.mHandler.obtainMessage(2).sendToTarget();
        }

        public void handleShow(IBinder iBinder) {
            if (this.mHandler.hasMessages(2) || this.mHandler.hasMessages(1) || this.mView == this.mNextView) {
                return;
            }
            handleHide();
            this.mView = this.mNextView;
            Context applicationContext = this.mView.getContext().getApplicationContext();
            String opPackageName = this.mView.getContext().getOpPackageName();
            if (applicationContext == null) {
                applicationContext = this.mView.getContext();
            }
            this.mWM = (WindowManager) applicationContext.getSystemService("window");
            int absoluteGravity = Gravity.getAbsoluteGravity(this.mGravity, this.mView.getContext().getResources().getConfiguration().getLayoutDirection());
            this.mParams.gravity = absoluteGravity;
            if ((absoluteGravity & 7) == 7) {
                this.mParams.horizontalWeight = 1.0f;
            }
            if ((absoluteGravity & 112) == 112) {
                this.mParams.verticalWeight = 1.0f;
            }
            this.mParams.x = this.mX;
            this.mParams.y = this.mY;
            this.mParams.verticalMargin = this.mVerticalMargin;
            this.mParams.horizontalMargin = this.mHorizontalMargin;
            this.mParams.packageName = opPackageName;
            this.mParams.hideTimeoutMilliseconds = this.mDuration == 1 ? LONG_DURATION_TIMEOUT : SHORT_DURATION_TIMEOUT;
            this.mParams.token = iBinder;
            if (this.mView.getParent() != null) {
                this.mWM.removeView(this.mView);
            }
            try {
                this.mWM.addView(this.mView, this.mParams);
                trySendAccessibilityEvent();
            } catch (WindowManager.BadTokenException unused) {
            } catch (IllegalStateException unused2) {
                if (SystemProperties.getBoolean("ro.atc.aosp_enhancement", false)) {
                    Log.e(Toast.TAG, "ATC: " + this.mView + " was added, remove it");
                    this.mWM.removeViewImmediate(this.mView);
                }
            }
        }

        private void trySendAccessibilityEvent() {
            AccessibilityManager accessibilityManager = AccessibilityManager.getInstance(this.mView.getContext());
            if (accessibilityManager.isEnabled()) {
                AccessibilityEvent obtain = AccessibilityEvent.obtain(64);
                obtain.setClassName(getClass().getName());
                obtain.setPackageName(this.mView.getContext().getPackageName());
                this.mView.dispatchPopulateAccessibilityEvent(obtain);
                accessibilityManager.sendAccessibilityEvent(obtain);
            }
        }

        public void handleHide() {
            if (this.mView != null) {
                if (this.mView.getParent() != null) {
                    this.mWM.removeViewImmediate(this.mView);
                }
                try {
                    Toast.access$100().finishToken(this.mPackageName, this);
                } catch (RemoteException unused) {
                }
                this.mView = null;
            }
        }
    }
}
