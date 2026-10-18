package com.android.internal.app;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.android.internal.app.AlertController;

/* loaded from: /home/user/work/dex/classes3.dex */
public class HarmfulAppWarningActivity extends AlertActivity implements DialogInterface.OnClickListener {
    private static final String EXTRA_HARMFUL_APP_WARNING = "harmful_app_warning";
    private static final String TAG = "HarmfulAppWarningActivity";
    private String mHarmfulAppWarning;
    private String mPackageName;
    private IntentSender mTarget;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.internal.app.AlertActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        this.mPackageName = intent.getStringExtra("android.intent.extra.PACKAGE_NAME");
        this.mTarget = (IntentSender) intent.getParcelableExtra("android.intent.extra.INTENT");
        this.mHarmfulAppWarning = intent.getStringExtra(EXTRA_HARMFUL_APP_WARNING);
        if (this.mPackageName == null || this.mTarget == null || this.mHarmfulAppWarning == null) {
            Log.wtf(TAG, "Invalid intent: " + intent.toString());
            finish();
        }
        try {
            ApplicationInfo applicationInfo = getPackageManager().getApplicationInfo(this.mPackageName, 0);
            AlertController.AlertParams alertParams = this.mAlertParams;
            alertParams.mTitle = getString(17039975);
            alertParams.mView = createView(applicationInfo);
            alertParams.mPositiveButtonText = getString(17039976);
            alertParams.mPositiveButtonListener = this;
            alertParams.mNegativeButtonText = getString(17039974);
            alertParams.mNegativeButtonListener = this;
            this.mAlert.installContent(this.mAlertParams);
        } catch (PackageManager.NameNotFoundException e) {
            Log.e(TAG, "Could not show warning because package does not exist ", e);
            finish();
        }
    }

    private View createView(ApplicationInfo applicationInfo) {
        View inflate = getLayoutInflater().inflate(17367150, (ViewGroup) null);
        ((TextView) inflate.findViewById(16908719)).setText(applicationInfo.loadSafeLabel(getPackageManager()));
        ((TextView) inflate.findViewById(16908299)).setText(this.mHarmfulAppWarning);
        return inflate;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        switch (i) {
            case -2:
                getPackageManager().setHarmfulAppWarning(this.mPackageName, null);
                try {
                    startIntentSenderForResult((IntentSender) getIntent().getParcelableExtra("android.intent.extra.INTENT"), -1, null, 0, 0, 0);
                } catch (IntentSender.SendIntentException e) {
                    Log.e(TAG, "Error while starting intent sender", e);
                }
                EventLogTags.writeHarmfulAppWarningLaunchAnyway(this.mPackageName);
                finish();
                return;
            case -1:
                getPackageManager().deletePackage(this.mPackageName, null, 0);
                EventLogTags.writeHarmfulAppWarningUninstall(this.mPackageName);
                finish();
                return;
            default:
                return;
        }
    }

    public static Intent createHarmfulAppWarningIntent(Context context, String str, IntentSender intentSender, CharSequence charSequence) {
        Intent intent = new Intent();
        intent.setClass(context, HarmfulAppWarningActivity.class);
        intent.putExtra("android.intent.extra.PACKAGE_NAME", str);
        intent.putExtra("android.intent.extra.INTENT", intentSender);
        intent.putExtra(EXTRA_HARMFUL_APP_WARNING, charSequence);
        return intent;
    }
}
