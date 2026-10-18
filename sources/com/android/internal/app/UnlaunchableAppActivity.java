package com.android.internal.app;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ComponentName;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.UserHandle;
import android.os.UserManager;
import android.util.Log;

/* loaded from: /home/user/work/dex/classes3.dex */
public class UnlaunchableAppActivity extends Activity implements DialogInterface.OnDismissListener, DialogInterface.OnClickListener {
    private static final String EXTRA_UNLAUNCHABLE_REASON = "unlaunchable_reason";
    private static final String TAG = "UnlaunchableAppActivity";
    private static final int UNLAUNCHABLE_REASON_QUIET_MODE = 1;
    private int mReason;
    private IntentSender mTarget;
    private int mUserId;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        Intent intent = getIntent();
        this.mReason = intent.getIntExtra(EXTRA_UNLAUNCHABLE_REASON, -1);
        this.mUserId = intent.getIntExtra("android.intent.extra.user_handle", -10000);
        this.mTarget = (IntentSender) intent.getParcelableExtra("android.intent.extra.INTENT");
        if (this.mUserId == -10000) {
            Log.wtf(TAG, "Invalid user id: " + this.mUserId + ". Stopping.");
            finish();
            return;
        }
        if (this.mReason == 1) {
            AlertDialog.Builder onDismissListener = new AlertDialog.Builder(this).setTitle(getResources().getString(17041126)).setMessage(getResources().getString(17041125)).setOnDismissListener(this);
            if (this.mReason == 1) {
                onDismissListener.setPositiveButton(17041127, this).setNegativeButton(17039360, (DialogInterface.OnClickListener) null);
            } else {
                onDismissListener.setPositiveButton(17039370, (DialogInterface.OnClickListener) null);
            }
            onDismissListener.show();
            return;
        }
        Log.wtf(TAG, "Invalid unlaunchable type: " + this.mReason);
        finish();
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        finish();
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        if (this.mReason == 1 && i == -1) {
            UserManager.get(this).requestQuietModeEnabled(false, UserHandle.of(this.mUserId), this.mTarget);
        }
    }

    private static final Intent createBaseIntent() {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("android", UnlaunchableAppActivity.class.getName()));
        intent.setFlags(276824064);
        return intent;
    }

    public static Intent createInQuietModeDialogIntent(int i) {
        Intent createBaseIntent = createBaseIntent();
        createBaseIntent.putExtra(EXTRA_UNLAUNCHABLE_REASON, 1);
        createBaseIntent.putExtra("android.intent.extra.user_handle", i);
        return createBaseIntent;
    }

    public static Intent createInQuietModeDialogIntent(int i, IntentSender intentSender) {
        Intent createInQuietModeDialogIntent = createInQuietModeDialogIntent(i);
        createInQuietModeDialogIntent.putExtra("android.intent.extra.INTENT", intentSender);
        return createInQuietModeDialogIntent;
    }
}
