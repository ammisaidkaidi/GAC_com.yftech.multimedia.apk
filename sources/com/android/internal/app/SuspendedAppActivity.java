package com.android.internal.app;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.UserHandle;
import android.util.Slog;
import com.android.internal.app.AlertController;

/* loaded from: /home/user/work/dex/classes3.dex */
public class SuspendedAppActivity extends AlertActivity implements DialogInterface.OnClickListener {
    public static final String EXTRA_DIALOG_MESSAGE = "SuspendedAppActivity.extra.DIALOG_MESSAGE";
    public static final String EXTRA_SUSPENDED_PACKAGE = "SuspendedAppActivity.extra.SUSPENDED_PACKAGE";
    public static final String EXTRA_SUSPENDING_PACKAGE = "SuspendedAppActivity.extra.SUSPENDING_PACKAGE";
    private static final String TAG = "SuspendedAppActivity";
    private Intent mMoreDetailsIntent;
    private PackageManager mPm;
    private int mUserId;

    private CharSequence getAppLabel(String str) {
        try {
            return this.mPm.getApplicationInfoAsUser(str, 0, this.mUserId).loadLabel(this.mPm);
        } catch (PackageManager.NameNotFoundException e) {
            Slog.e(TAG, "Package " + str + " not found", e);
            return str;
        }
    }

    private Intent getMoreDetailsActivity(String str, String str2, int i) {
        Intent intent = new Intent("android.intent.action.SHOW_SUSPENDED_APP_DETAILS").setPackage(str);
        ResolveInfo resolveActivityAsUser = this.mPm.resolveActivityAsUser(intent, 0, i);
        if (resolveActivityAsUser == null || resolveActivityAsUser.activityInfo == null || !"android.permission.SEND_SHOW_SUSPENDED_APP_DETAILS".equals(resolveActivityAsUser.activityInfo.permission)) {
            return null;
        }
        intent.putExtra("android.intent.extra.PACKAGE_NAME", str2).setFlags(335544320);
        return intent;
    }

    @Override // com.android.internal.app.AlertActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        String format;
        super.onCreate(bundle);
        this.mPm = getPackageManager();
        getWindow().setType(2008);
        Intent intent = getIntent();
        this.mUserId = intent.getIntExtra("android.intent.extra.USER_ID", -1);
        if (this.mUserId < 0) {
            Slog.wtf(TAG, "Invalid user: " + this.mUserId);
            finish();
            return;
        }
        String stringExtra = intent.getStringExtra(EXTRA_DIALOG_MESSAGE);
        String stringExtra2 = intent.getStringExtra(EXTRA_SUSPENDED_PACKAGE);
        String stringExtra3 = intent.getStringExtra(EXTRA_SUSPENDING_PACKAGE);
        CharSequence appLabel = getAppLabel(stringExtra2);
        if (stringExtra == null) {
            format = getString(17039497, new Object[]{appLabel, getAppLabel(stringExtra3)});
        } else {
            format = String.format(getResources().getConfiguration().getLocales().get(0), stringExtra, appLabel);
        }
        AlertController.AlertParams alertParams = this.mAlertParams;
        alertParams.mTitle = getString(17039499);
        alertParams.mMessage = format;
        alertParams.mPositiveButtonText = getString(17039370);
        this.mMoreDetailsIntent = getMoreDetailsActivity(stringExtra3, stringExtra2, this.mUserId);
        if (this.mMoreDetailsIntent != null) {
            alertParams.mNeutralButtonText = getString(17039498);
        }
        alertParams.mNeutralButtonListener = this;
        alertParams.mPositiveButtonListener = this;
        setupAlert();
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        if (i == -3) {
            startActivityAsUser(this.mMoreDetailsIntent, UserHandle.of(this.mUserId));
            Slog.i(TAG, "Started more details activity");
        }
        finish();
    }

    public static Intent createSuspendedAppInterceptIntent(String str, String str2, String str3, int i) {
        return new Intent().setClassName("android", SuspendedAppActivity.class.getName()).putExtra(EXTRA_SUSPENDED_PACKAGE, str).putExtra(EXTRA_DIALOG_MESSAGE, str3).putExtra(EXTRA_SUSPENDING_PACKAGE, str2).putExtra("android.intent.extra.USER_ID", i).setFlags(276824064);
    }
}
