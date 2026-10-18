package android.accounts;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;

/* loaded from: /home/user/work/dex/classes.dex */
public class CantAddAccountActivity extends Activity {
    public static final String EXTRA_ERROR_CODE = "android.accounts.extra.ERROR_CODE";

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(17367094);
    }

    public void onCancelButtonClicked(View view) {
        onBackPressed();
    }
}
