package com.android.internal.app;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.IntentSender;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

/* loaded from: /home/user/work/dex/classes3.dex */
public class HeavyWeightSwitcherActivity extends Activity {
    public static final String KEY_CUR_APP = "cur_app";
    public static final String KEY_CUR_TASK = "cur_task";
    public static final String KEY_HAS_RESULT = "has_result";
    public static final String KEY_INTENT = "intent";
    public static final String KEY_NEW_APP = "new_app";
    String mCurApp;
    int mCurTask;
    boolean mHasResult;
    String mNewApp;
    IntentSender mStartIntent;
    private View.OnClickListener mSwitchOldListener = new View.OnClickListener() { // from class: com.android.internal.app.HeavyWeightSwitcherActivity.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                ActivityManager.getService().moveTaskToFront(HeavyWeightSwitcherActivity.this.mCurTask, 0, (Bundle) null);
            } catch (RemoteException unused) {
            }
            HeavyWeightSwitcherActivity.this.finish();
        }
    };
    private View.OnClickListener mSwitchNewListener = new View.OnClickListener() { // from class: com.android.internal.app.HeavyWeightSwitcherActivity.2
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                ActivityManager.getService().finishHeavyWeightApp();
            } catch (RemoteException unused) {
            }
            try {
                if (HeavyWeightSwitcherActivity.this.mHasResult) {
                    HeavyWeightSwitcherActivity.this.startIntentSenderForResult(HeavyWeightSwitcherActivity.this.mStartIntent, -1, null, 33554432, 33554432, 0);
                } else {
                    HeavyWeightSwitcherActivity.this.startIntentSenderForResult(HeavyWeightSwitcherActivity.this.mStartIntent, -1, null, 0, 0, 0);
                }
            } catch (IntentSender.SendIntentException e) {
                Log.w("HeavyWeightSwitcherActivity", "Failure starting", e);
            }
            HeavyWeightSwitcherActivity.this.finish();
        }
    };

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        this.mStartIntent = (IntentSender) getIntent().getParcelableExtra(KEY_INTENT);
        this.mHasResult = getIntent().getBooleanExtra(KEY_HAS_RESULT, false);
        this.mCurApp = getIntent().getStringExtra(KEY_CUR_APP);
        this.mCurTask = getIntent().getIntExtra(KEY_CUR_TASK, 0);
        this.mNewApp = getIntent().getStringExtra(KEY_NEW_APP);
        setContentView(17367151);
        setIconAndText(16909136, 16909135, 0, this.mCurApp, this.mNewApp, 17040396, 0);
        setIconAndText(16909097, 16909095, 16909096, this.mNewApp, this.mCurApp, 17040338, 17040339);
        findViewById(16909364).setOnClickListener(this.mSwitchOldListener);
        findViewById(16909363).setOnClickListener(this.mSwitchNewListener);
    }

    void setText(int i, CharSequence charSequence) {
        ((TextView) findViewById(i)).setText(charSequence);
    }

    void setDrawable(int i, Drawable drawable) {
        if (drawable != null) {
            ((ImageView) findViewById(i)).setImageDrawable(drawable);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.CharSequence] */
    void setIconAndText(int i, int i2, int i3, String str, String str2, int i4, int i5) {
        CharSequence loadLabel;
        Drawable drawable = null;
        if (str != null) {
            try {
                ApplicationInfo applicationInfo = getPackageManager().getApplicationInfo(str, 0);
                ?? loadLabel2 = applicationInfo.loadLabel(getPackageManager());
                try {
                    drawable = applicationInfo.loadIcon(getPackageManager());
                } catch (PackageManager.NameNotFoundException unused) {
                }
                str = loadLabel2;
            } catch (PackageManager.NameNotFoundException unused2) {
            }
        }
        setDrawable(i, drawable);
        setText(i2, getString(i4, new Object[]{str}));
        if (i3 != 0) {
            if (str2 != null) {
                try {
                    loadLabel = getPackageManager().getApplicationInfo(str2, 0).loadLabel(getPackageManager());
                } catch (PackageManager.NameNotFoundException unused3) {
                }
                setText(i3, getString(i5, new Object[]{loadLabel}));
            }
            loadLabel = str2;
            setText(i3, getString(i5, new Object[]{loadLabel}));
        }
    }
}
