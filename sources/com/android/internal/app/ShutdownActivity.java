package com.android.internal.app;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.IPowerManager;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Slog;

/* loaded from: /home/user/work/dex/classes3.dex */
public class ShutdownActivity extends Activity {
    private static final String TAG = "ShutdownActivity";
    private boolean mConfirm;
    private boolean mReboot;
    private boolean mUserRequested;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        this.mReboot = "android.intent.action.REBOOT".equals(intent.getAction());
        this.mConfirm = intent.getBooleanExtra("android.intent.extra.KEY_CONFIRM", false);
        this.mUserRequested = intent.getBooleanExtra("android.intent.extra.USER_REQUESTED_SHUTDOWN", false);
        final String stringExtra = this.mUserRequested ? "userrequested" : intent.getStringExtra("android.intent.extra.REASON");
        Slog.i(TAG, "onCreate(): confirm=" + this.mConfirm);
        Thread thread = new Thread(TAG) { // from class: com.android.internal.app.ShutdownActivity.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                IPowerManager asInterface = IPowerManager.Stub.asInterface(ServiceManager.getService("power"));
                try {
                    if (ShutdownActivity.this.mReboot) {
                        asInterface.reboot(ShutdownActivity.this.mConfirm, (String) null, false);
                    } else {
                        asInterface.shutdown(ShutdownActivity.this.mConfirm, stringExtra, false);
                    }
                } catch (RemoteException unused) {
                }
            }
        };
        thread.start();
        finish();
        try {
            thread.join();
        } catch (InterruptedException unused) {
        }
    }
}
