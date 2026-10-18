package com.android.internal.app;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.UserInfo;
import android.os.Bundle;
import android.os.PersistableBundle;
import android.os.UserManager;
import android.util.Log;
import com.android.internal.app.AlertController;

/* loaded from: /home/user/work/dex/classes3.dex */
public class ConfirmUserCreationActivity extends AlertActivity implements DialogInterface.OnClickListener {
    private static final String TAG = "CreateUser";
    private String mAccountName;
    private PersistableBundle mAccountOptions;
    private String mAccountType;
    private boolean mCanProceed;
    private UserManager mUserManager;
    private String mUserName;

    @Override // com.android.internal.app.AlertActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        this.mUserName = intent.getStringExtra("android.os.extra.USER_NAME");
        this.mAccountName = intent.getStringExtra("android.os.extra.USER_ACCOUNT_NAME");
        this.mAccountType = intent.getStringExtra("android.os.extra.USER_ACCOUNT_TYPE");
        this.mAccountOptions = (PersistableBundle) intent.getParcelableExtra("android.os.extra.USER_ACCOUNT_OPTIONS");
        this.mUserManager = (UserManager) getSystemService(UserManager.class);
        String checkUserCreationRequirements = checkUserCreationRequirements();
        if (checkUserCreationRequirements == null) {
            finish();
            return;
        }
        AlertController.AlertParams alertParams = this.mAlertParams;
        alertParams.mMessage = checkUserCreationRequirements;
        alertParams.mPositiveButtonText = getString(17039370);
        alertParams.mPositiveButtonListener = this;
        if (this.mCanProceed) {
            alertParams.mNegativeButtonText = getString(17039360);
            alertParams.mNegativeButtonListener = this;
        }
        setupAlert();
    }

    private String checkUserCreationRequirements() {
        String callingPackage = getCallingPackage();
        if (callingPackage == null) {
            throw new SecurityException("User Creation intent must be launched with startActivityForResult");
        }
        try {
            ApplicationInfo applicationInfo = getPackageManager().getApplicationInfo(callingPackage, 0);
            boolean z = this.mUserManager.hasUserRestriction("no_add_user") || !this.mUserManager.isAdminUser();
            boolean z2 = !this.mUserManager.canAddMoreUsers();
            boolean z3 = (this.mAccountName == null || this.mAccountType == null || (!AccountManager.get(this).someUserHasAccount(new Account(this.mAccountName, this.mAccountType)) && !this.mUserManager.someUserHasSeedAccount(this.mAccountName, this.mAccountType))) ? false : true;
            this.mCanProceed = true;
            String charSequence = applicationInfo.loadLabel(getPackageManager()).toString();
            if (z) {
                setResult(1);
                return null;
            }
            if (!z2) {
                return z3 ? getString(17041014, new Object[]{charSequence, this.mAccountName}) : getString(17041015, new Object[]{charSequence, this.mAccountName});
            }
            setResult(2);
            return null;
        } catch (PackageManager.NameNotFoundException unused) {
            throw new SecurityException("Cannot find the calling package");
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        setResult(0);
        if (i == -1 && this.mCanProceed) {
            Log.i(TAG, "Ok, creating user");
            UserInfo createUser = this.mUserManager.createUser(this.mUserName, 0);
            if (createUser == null) {
                Log.e(TAG, "Couldn't create user");
                finish();
                return;
            } else {
                this.mUserManager.setSeedAccountData(createUser.id, this.mAccountName, this.mAccountType, this.mAccountOptions);
                setResult(-1);
            }
        }
        finish();
    }
}
