package android.app;

import android.content.Intent;
import android.os.Bundle;
import java.util.HashMap;

@Deprecated
/* loaded from: /home/user/work/dex/classes.dex */
public class ActivityGroup extends Activity {
    static final String PARENT_NON_CONFIG_INSTANCE_KEY = "android:parent_non_config_instance";
    private static final String STATES_KEY = "android:states";
    protected LocalActivityManager mLocalActivityManager;

    public ActivityGroup() {
        this(true);
    }

    public ActivityGroup(boolean z) {
        this.mLocalActivityManager = new LocalActivityManager(this, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mLocalActivityManager.dispatchCreate(bundle != null ? bundle.getBundle(STATES_KEY) : null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.mLocalActivityManager.dispatchResume();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        Bundle saveInstanceState = this.mLocalActivityManager.saveInstanceState();
        if (saveInstanceState != null) {
            bundle.putBundle(STATES_KEY, saveInstanceState);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.mLocalActivityManager.dispatchPause(isFinishing());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        this.mLocalActivityManager.dispatchStop();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.mLocalActivityManager.dispatchDestroy(isFinishing());
    }

    @Override // android.app.Activity
    public HashMap<String, Object> onRetainNonConfigurationChildInstances() {
        return this.mLocalActivityManager.dispatchRetainNonConfigurationInstance();
    }

    public Activity getCurrentActivity() {
        return this.mLocalActivityManager.getCurrentActivity();
    }

    public final LocalActivityManager getLocalActivityManager() {
        return this.mLocalActivityManager;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.app.Activity
    public void dispatchActivityResult(String str, int i, int i2, Intent intent, String str2) {
        Activity activity;
        if (str != null && (activity = this.mLocalActivityManager.getActivity(str)) != null) {
            activity.onActivityResult(i, i2, intent);
        } else {
            super.dispatchActivityResult(str, i, i2, intent, str2);
        }
    }
}
