package android.accounts;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.io.IOException;

/* loaded from: /home/user/work/dex/classes.dex */
public class GrantCredentialsPermissionActivity extends Activity implements View.OnClickListener {
    public static final String EXTRAS_ACCOUNT = "account";
    public static final String EXTRAS_AUTH_TOKEN_TYPE = "authTokenType";
    public static final String EXTRAS_REQUESTING_UID = "uid";
    public static final String EXTRAS_RESPONSE = "response";
    private Account mAccount;
    private String mAuthTokenType;
    protected LayoutInflater mInflater;
    private Bundle mResultBundle = null;
    private int mUid;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(17367149);
        setTitle(17039967);
        this.mInflater = (LayoutInflater) getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        Bundle extras = getIntent().getExtras();
        if (extras == null) {
            setResult(0);
            finish();
            return;
        }
        this.mAccount = (Account) extras.getParcelable("account");
        this.mAuthTokenType = extras.getString("authTokenType");
        this.mUid = extras.getInt(EXTRAS_REQUESTING_UID);
        PackageManager packageManager = getPackageManager();
        String[] packagesForUid = packageManager.getPackagesForUid(this.mUid);
        if (this.mAccount == null || this.mAuthTokenType == null || packagesForUid == null) {
            setResult(0);
            finish();
            return;
        }
        try {
            String accountLabel = getAccountLabel(this.mAccount);
            final TextView textView = (TextView) findViewById(16908727);
            textView.setVisibility(8);
            AccountManagerCallback<String> accountManagerCallback = new AccountManagerCallback<String>() { // from class: android.accounts.GrantCredentialsPermissionActivity.1
                @Override // android.accounts.AccountManagerCallback
                public void run(AccountManagerFuture<String> accountManagerFuture) {
                    try {
                        final String result = accountManagerFuture.getResult();
                        if (TextUtils.isEmpty(result)) {
                            return;
                        }
                        GrantCredentialsPermissionActivity.this.runOnUiThread(new Runnable() { // from class: android.accounts.GrantCredentialsPermissionActivity.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (GrantCredentialsPermissionActivity.this.isFinishing()) {
                                    return;
                                }
                                textView.setText(result);
                                textView.setVisibility(0);
                            }
                        });
                    } catch (AuthenticatorException | OperationCanceledException | IOException unused) {
                    }
                }
            };
            if (!AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE.equals(this.mAuthTokenType)) {
                AccountManager.get(this).getAuthTokenLabel(this.mAccount.type, this.mAuthTokenType, accountManagerCallback, null);
            }
            findViewById(16908707).setOnClickListener(this);
            findViewById(16908843).setOnClickListener(this);
            LinearLayout linearLayout = (LinearLayout) findViewById(16909158);
            for (String str : packagesForUid) {
                try {
                    str = packageManager.getApplicationLabel(packageManager.getApplicationInfo(str, 0)).toString();
                } catch (PackageManager.NameNotFoundException unused) {
                }
                linearLayout.addView(newPackageView(str));
            }
            ((TextView) findViewById(16908657)).setText(this.mAccount.name);
            ((TextView) findViewById(16908660)).setText(accountLabel);
        } catch (IllegalArgumentException unused2) {
            setResult(0);
            finish();
        }
    }

    private String getAccountLabel(Account account) {
        for (AuthenticatorDescription authenticatorDescription : AccountManager.get(this).getAuthenticatorTypes()) {
            if (authenticatorDescription.type.equals(account.type)) {
                try {
                    return createPackageContext(authenticatorDescription.packageName, 0).getString(authenticatorDescription.labelId);
                } catch (PackageManager.NameNotFoundException unused) {
                    return account.type;
                } catch (Resources.NotFoundException unused2) {
                    return account.type;
                }
            }
        }
        return account.type;
    }

    private View newPackageView(String str) {
        View inflate = this.mInflater.inflate(17367211, (ViewGroup) null);
        ((TextView) inflate.findViewById(16909157)).setText(str);
        return inflate;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == 16908707) {
            AccountManager.get(this).updateAppPermission(this.mAccount, this.mAuthTokenType, this.mUid, true);
            Intent intent = new Intent();
            intent.putExtra("retry", true);
            setResult(-1, intent);
            setAccountAuthenticatorResult(intent.getExtras());
        } else if (id == 16908843) {
            AccountManager.get(this).updateAppPermission(this.mAccount, this.mAuthTokenType, this.mUid, false);
            setResult(0);
        }
        finish();
    }

    public final void setAccountAuthenticatorResult(Bundle bundle) {
        this.mResultBundle = bundle;
    }

    @Override // android.app.Activity
    public void finish() {
        AccountAuthenticatorResponse accountAuthenticatorResponse = (AccountAuthenticatorResponse) getIntent().getParcelableExtra(EXTRAS_RESPONSE);
        if (accountAuthenticatorResponse != null) {
            if (this.mResultBundle != null) {
                accountAuthenticatorResponse.onResult(this.mResultBundle);
            } else {
                accountAuthenticatorResponse.onError(4, "canceled");
            }
        }
        super.finish();
    }
}
