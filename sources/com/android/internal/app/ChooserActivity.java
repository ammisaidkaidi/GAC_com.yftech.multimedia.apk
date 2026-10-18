package com.android.internal.app;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.LabeledIntent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Parcelable;
import android.os.Process;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.UserHandle;
import android.os.UserManager;
import android.os.storage.StorageManager;
import android.service.chooser.ChooserTarget;
import android.service.chooser.IChooserTargetResult;
import android.service.chooser.IChooserTargetService;
import android.text.TextUtils;
import android.util.Log;
import android.util.Slog;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.Space;
import com.android.internal.annotations.VisibleForTesting;
import com.android.internal.app.ResolverActivity;
import com.android.internal.logging.MetricsLogger;
import com.google.android.collect.Lists;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes3.dex */
public class ChooserActivity extends ResolverActivity {
    private static final float CALLER_TARGET_SCORE_BOOST = 900.0f;
    private static final int CHOOSER_TARGET_SERVICE_RESULT = 1;
    private static final int CHOOSER_TARGET_SERVICE_WATCHDOG_TIMEOUT = 2;
    private static final boolean DEBUG = false;
    public static final String EXTRA_PRIVATE_RETAIN_IN_ON_STOP = "com.android.internal.app.ChooserActivity.EXTRA_PRIVATE_RETAIN_IN_ON_STOP";
    private static final String PINNED_SHARED_PREFS_NAME = "chooser_pin_settings";
    private static final float PINNED_TARGET_SCORE_BOOST = 1000.0f;
    private static final int QUERY_TARGET_SERVICE_LIMIT = 5;
    private static final String TAG = "ChooserActivity";
    private static final String TARGET_DETAILS_FRAGMENT_TAG = "targetDetailsFragment";
    private static final int WATCHDOG_TIMEOUT_MILLIS = 2000;
    private ChooserTarget[] mCallerChooserTargets;
    private ChooserListAdapter mChooserListAdapter;
    private ChooserRowAdapter mChooserRowAdapter;
    private long mChooserShownTime;
    private IntentSender mChosenComponentSender;
    private ComponentName[] mFilteredComponentNames;
    protected boolean mIsSuccessfullySelected;
    private SharedPreferences mPinnedSharedPrefs;
    private Intent mReferrerFillInIntent;
    private IntentSender mRefinementIntentSender;
    private RefinementResultReceiver mRefinementResultReceiver;
    private Bundle mReplacementExtras;
    private final List<ChooserTargetServiceConnection> mServiceConnections = new ArrayList();
    private final Handler mChooserHandler = new Handler() { // from class: com.android.internal.app.ChooserActivity.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    if (ChooserActivity.this.isDestroyed()) {
                        return;
                    }
                    ServiceResultInfo serviceResultInfo = (ServiceResultInfo) message.obj;
                    if (!ChooserActivity.this.mServiceConnections.contains(serviceResultInfo.connection)) {
                        Log.w(ChooserActivity.TAG, "ChooserTargetServiceConnection " + serviceResultInfo.connection + " returned after being removed from active connections. Have you considered returning results faster?");
                        return;
                    }
                    if (serviceResultInfo.resultTargets != null) {
                        ChooserActivity.this.mChooserListAdapter.addServiceResults(serviceResultInfo.originalTarget, serviceResultInfo.resultTargets);
                    }
                    ChooserActivity.this.unbindService(serviceResultInfo.connection);
                    serviceResultInfo.connection.destroy();
                    ChooserActivity.this.mServiceConnections.remove(serviceResultInfo.connection);
                    if (ChooserActivity.this.mServiceConnections.isEmpty()) {
                        ChooserActivity.this.mChooserHandler.removeMessages(2);
                        ChooserActivity.this.sendVoiceChoicesIfNeeded();
                        ChooserActivity.this.mChooserListAdapter.setShowServiceTargets(true);
                        return;
                    }
                    return;
                case 2:
                    ChooserActivity.this.unbindRemainingServices();
                    ChooserActivity.this.sendVoiceChoicesIfNeeded();
                    ChooserActivity.this.mChooserListAdapter.setShowServiceTargets(true);
                    return;
                default:
                    super.handleMessage(message);
                    return;
            }
        }
    };

    @Override // com.android.internal.app.ResolverActivity
    public int getLayoutResource() {
        return 17367115;
    }

    @Override // com.android.internal.app.ResolverActivity
    public void onSetupVoiceInteraction() {
    }

    @Override // com.android.internal.app.ResolverActivity
    public boolean shouldGetActivityMetadata() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.internal.app.ResolverActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        Intent[] intentArr;
        long currentTimeMillis = System.currentTimeMillis();
        this.mIsSuccessfullySelected = false;
        Intent intent = getIntent();
        Parcelable parcelableExtra = intent.getParcelableExtra("android.intent.extra.INTENT");
        if (!(parcelableExtra instanceof Intent)) {
            Log.w(TAG, "Target is not an intent: " + parcelableExtra);
            finish();
            super.onCreate(null);
            return;
        }
        Intent intent2 = (Intent) parcelableExtra;
        if (intent2 != null) {
            modifyTargetIntent(intent2);
        }
        Parcelable[] parcelableArrayExtra = intent.getParcelableArrayExtra("android.intent.extra.ALTERNATE_INTENTS");
        if (parcelableArrayExtra != null) {
            boolean z = intent2 == null;
            Intent[] intentArr2 = new Intent[z ? parcelableArrayExtra.length - 1 : parcelableArrayExtra.length];
            Intent intent3 = intent2;
            for (int i = 0; i < parcelableArrayExtra.length; i++) {
                if (!(parcelableArrayExtra[i] instanceof Intent)) {
                    Log.w(TAG, "EXTRA_ALTERNATE_INTENTS array entry #" + i + " is not an Intent: " + parcelableArrayExtra[i]);
                    finish();
                    super.onCreate(null);
                    return;
                }
                Intent intent4 = (Intent) parcelableArrayExtra[i];
                if (i == 0 && intent3 == null) {
                    modifyTargetIntent(intent4);
                    intent3 = intent4;
                } else {
                    intentArr2[z ? i - 1 : i] = intent4;
                    modifyTargetIntent(intent4);
                }
            }
            setAdditionalTargets(intentArr2);
            intent2 = intent3;
        }
        this.mReplacementExtras = intent.getBundleExtra("android.intent.extra.REPLACEMENT_EXTRAS");
        CharSequence charSequenceExtra = intent.getCharSequenceExtra("android.intent.extra.TITLE");
        int i2 = charSequenceExtra == null ? 17039617 : 0;
        Parcelable[] parcelableArrayExtra2 = intent.getParcelableArrayExtra("android.intent.extra.INITIAL_INTENTS");
        if (parcelableArrayExtra2 != null) {
            intentArr = new Intent[parcelableArrayExtra2.length];
            for (int i3 = 0; i3 < parcelableArrayExtra2.length; i3++) {
                if (!(parcelableArrayExtra2[i3] instanceof Intent)) {
                    Log.w(TAG, "Initial intent #" + i3 + " not an Intent: " + parcelableArrayExtra2[i3]);
                    finish();
                    super.onCreate(null);
                    return;
                }
                Intent intent5 = (Intent) parcelableArrayExtra2[i3];
                modifyTargetIntent(intent5);
                intentArr[i3] = intent5;
            }
        } else {
            intentArr = null;
        }
        this.mReferrerFillInIntent = new Intent().putExtra("android.intent.extra.REFERRER", getReferrer());
        this.mChosenComponentSender = (IntentSender) intent.getParcelableExtra("android.intent.extra.CHOSEN_COMPONENT_INTENT_SENDER");
        this.mRefinementIntentSender = (IntentSender) intent.getParcelableExtra("android.intent.extra.CHOOSER_REFINEMENT_INTENT_SENDER");
        setSafeForwardingMode(true);
        Parcelable[] parcelableArrayExtra3 = intent.getParcelableArrayExtra("android.intent.extra.EXCLUDE_COMPONENTS");
        if (parcelableArrayExtra3 != null) {
            ComponentName[] componentNameArr = new ComponentName[parcelableArrayExtra3.length];
            int i4 = 0;
            while (true) {
                if (i4 >= parcelableArrayExtra3.length) {
                    break;
                }
                if (!(parcelableArrayExtra3[i4] instanceof ComponentName)) {
                    Log.w(TAG, "Filtered component #" + i4 + " not a ComponentName: " + parcelableArrayExtra3[i4]);
                    componentNameArr = null;
                    break;
                }
                componentNameArr[i4] = (ComponentName) parcelableArrayExtra3[i4];
                i4++;
            }
            this.mFilteredComponentNames = componentNameArr;
        }
        Parcelable[] parcelableArrayExtra4 = intent.getParcelableArrayExtra("android.intent.extra.CHOOSER_TARGETS");
        if (parcelableArrayExtra4 != null) {
            ChooserTarget[] chooserTargetArr = new ChooserTarget[parcelableArrayExtra4.length];
            int i5 = 0;
            while (true) {
                if (i5 >= parcelableArrayExtra4.length) {
                    break;
                }
                if (!(parcelableArrayExtra4[i5] instanceof ChooserTarget)) {
                    Log.w(TAG, "Chooser target #" + i5 + " not a ChooserTarget: " + parcelableArrayExtra4[i5]);
                    chooserTargetArr = null;
                    break;
                }
                chooserTargetArr[i5] = (ChooserTarget) parcelableArrayExtra4[i5];
                i5++;
            }
            this.mCallerChooserTargets = chooserTargetArr;
        }
        this.mPinnedSharedPrefs = getPinnedSharedPrefs(this);
        setRetainInOnStop(intent.getBooleanExtra(EXTRA_PRIVATE_RETAIN_IN_ON_STOP, false));
        super.onCreate(bundle, intent2, charSequenceExtra, i2, intentArr, null, false);
        MetricsLogger.action(this, 214);
        this.mChooserShownTime = System.currentTimeMillis();
        MetricsLogger.histogram(null, "system_cost_for_smart_sharing", (int) (this.mChooserShownTime - currentTimeMillis));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static SharedPreferences getPinnedSharedPrefs(Context context) {
        return context.getSharedPreferences(new File(new File(Environment.getDataUserCePackageDirectory(StorageManager.UUID_PRIVATE_INTERNAL, context.getUserId(), context.getPackageName()), "shared_prefs"), "chooser_pin_settings.xml"), 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.internal.app.ResolverActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (this.mRefinementResultReceiver != null) {
            this.mRefinementResultReceiver.destroy();
            this.mRefinementResultReceiver = null;
        }
        unbindRemainingServices();
        this.mChooserHandler.removeMessages(1);
    }

    @Override // com.android.internal.app.ResolverActivity
    public Intent getReplacementIntent(ActivityInfo activityInfo, Intent intent) {
        Bundle bundle;
        if (this.mReplacementExtras != null && (bundle = this.mReplacementExtras.getBundle(activityInfo.packageName)) != null) {
            Intent intent2 = new Intent(intent);
            intent2.putExtras(bundle);
            intent = intent2;
        }
        if (!activityInfo.name.equals(IntentForwarderActivity.FORWARD_INTENT_TO_PARENT) && !activityInfo.name.equals(IntentForwarderActivity.FORWARD_INTENT_TO_MANAGED_PROFILE)) {
            return intent;
        }
        Intent createChooser = Intent.createChooser(intent, getIntent().getCharSequenceExtra("android.intent.extra.TITLE"));
        createChooser.putExtra("android.intent.extra.AUTO_LAUNCH_SINGLE_CHOICE", false);
        return createChooser;
    }

    @Override // com.android.internal.app.ResolverActivity
    public void onActivityStarted(ResolverActivity.TargetInfo targetInfo) {
        ComponentName resolvedComponentName;
        if (this.mChosenComponentSender == null || (resolvedComponentName = targetInfo.getResolvedComponentName()) == null) {
            return;
        }
        try {
            this.mChosenComponentSender.sendIntent(this, -1, new Intent().putExtra("android.intent.extra.CHOSEN_COMPONENT", resolvedComponentName), null, null);
        } catch (IntentSender.SendIntentException e) {
            Slog.e(TAG, "Unable to launch supplied IntentSender to report the chosen component: " + e);
        }
    }

    @Override // com.android.internal.app.ResolverActivity
    public void onPrepareAdapterView(AbsListView absListView, ResolverActivity.ResolveListAdapter resolveListAdapter) {
        ListView listView = absListView instanceof ListView ? (ListView) absListView : null;
        this.mChooserListAdapter = (ChooserListAdapter) resolveListAdapter;
        if (this.mCallerChooserTargets != null && this.mCallerChooserTargets.length > 0) {
            this.mChooserListAdapter.addServiceResults(null, Lists.newArrayList(this.mCallerChooserTargets));
        }
        this.mChooserRowAdapter = new ChooserRowAdapter(this.mChooserListAdapter);
        this.mChooserRowAdapter.registerDataSetObserver(new OffsetDataSetObserver(absListView));
        absListView.setAdapter((ListAdapter) this.mChooserRowAdapter);
        if (listView != null) {
            listView.setItemsCanFocus(true);
        }
    }

    @Override // com.android.internal.app.ResolverActivity
    public boolean shouldAutoLaunchSingleChoice(ResolverActivity.TargetInfo targetInfo) {
        return getIntent().getBooleanExtra("android.intent.extra.AUTO_LAUNCH_SINGLE_CHOICE", super.shouldAutoLaunchSingleChoice(targetInfo));
    }

    @Override // com.android.internal.app.ResolverActivity
    public void showTargetDetails(ResolveInfo resolveInfo) {
        if (resolveInfo == null) {
            return;
        }
        ComponentName componentName = resolveInfo.activityInfo.getComponentName();
        new ResolverTargetActionsDialogFragment(resolveInfo.loadLabel(getPackageManager()), componentName, this.mPinnedSharedPrefs.getBoolean(componentName.flattenToString(), false)).show(getFragmentManager(), TARGET_DETAILS_FRAGMENT_TAG);
    }

    private void modifyTargetIntent(Intent intent) {
        String action = intent.getAction();
        if ("android.intent.action.SEND".equals(action) || "android.intent.action.SEND_MULTIPLE".equals(action)) {
            intent.addFlags(134742016);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.internal.app.ResolverActivity
    public boolean onTargetSelected(ResolverActivity.TargetInfo targetInfo, boolean z) {
        if (this.mRefinementIntentSender != null) {
            Intent intent = new Intent();
            List<Intent> allSourceIntents = targetInfo.getAllSourceIntents();
            if (!allSourceIntents.isEmpty()) {
                intent.putExtra("android.intent.extra.INTENT", allSourceIntents.get(0));
                if (allSourceIntents.size() > 1) {
                    Intent[] intentArr = new Intent[allSourceIntents.size() - 1];
                    int size = allSourceIntents.size();
                    for (int i = 1; i < size; i++) {
                        intentArr[i - 1] = allSourceIntents.get(i);
                    }
                    intent.putExtra("android.intent.extra.ALTERNATE_INTENTS", intentArr);
                }
                if (this.mRefinementResultReceiver != null) {
                    this.mRefinementResultReceiver.destroy();
                }
                this.mRefinementResultReceiver = new RefinementResultReceiver(this, targetInfo, null);
                intent.putExtra("android.intent.extra.RESULT_RECEIVER", this.mRefinementResultReceiver);
                try {
                    this.mRefinementIntentSender.sendIntent(this, 0, intent, null, null);
                    return false;
                } catch (IntentSender.SendIntentException e) {
                    Log.e(TAG, "Refinement IntentSender failed to send", e);
                }
            }
        }
        updateModelAndChooserCounts(targetInfo);
        return super.onTargetSelected(targetInfo, z);
    }

    @Override // com.android.internal.app.ResolverActivity
    public void startSelected(int i, boolean z, boolean z2) {
        long currentTimeMillis = System.currentTimeMillis() - this.mChooserShownTime;
        super.startSelected(i, z, z2);
        if (this.mChooserListAdapter != null) {
            int i2 = 0;
            switch (this.mChooserListAdapter.getPositionTargetType(i)) {
                case 0:
                    i2 = 215;
                    break;
                case 1:
                    i2 = 216;
                    i -= this.mChooserListAdapter.getCallerTargetCount();
                    break;
                case 2:
                    i2 = 217;
                    i -= this.mChooserListAdapter.getCallerTargetCount() + this.mChooserListAdapter.getServiceTargetCount();
                    break;
            }
            if (i2 != 0) {
                MetricsLogger.action(this, i2, i);
            }
            if (this.mIsSuccessfullySelected) {
                MetricsLogger.histogram(null, "user_selection_cost_for_smart_sharing", (int) currentTimeMillis);
                MetricsLogger.histogram(null, "app_position_for_smart_sharing", i);
            }
        }
    }

    void queryTargetServices(ChooserListAdapter chooserListAdapter) {
        PackageManager packageManager = getPackageManager();
        int displayResolveInfoCount = chooserListAdapter.getDisplayResolveInfoCount();
        int i = 0;
        for (int i2 = 0; i2 < displayResolveInfoCount; i2++) {
            ResolverActivity.DisplayResolveInfo displayResolveInfo = chooserListAdapter.getDisplayResolveInfo(i2);
            if (chooserListAdapter.getScore(displayResolveInfo) != 0.0f) {
                ActivityInfo activityInfo = displayResolveInfo.getResolveInfo().activityInfo;
                Bundle bundle = activityInfo.metaData;
                String convertServiceName = bundle != null ? convertServiceName(activityInfo.packageName, bundle.getString("android.service.chooser.chooser_target_service")) : null;
                if (convertServiceName != null) {
                    ComponentName componentName = new ComponentName(activityInfo.packageName, convertServiceName);
                    Intent component = new Intent("android.service.chooser.ChooserTargetService").setComponent(componentName);
                    try {
                        if ("android.permission.BIND_CHOOSER_TARGET_SERVICE".equals(packageManager.getServiceInfo(componentName, 0).permission)) {
                            ChooserTargetServiceConnection chooserTargetServiceConnection = new ChooserTargetServiceConnection(this, displayResolveInfo);
                            if (bindServiceAsUser(component, chooserTargetServiceConnection, 5, Process.myUserHandle())) {
                                this.mServiceConnections.add(chooserTargetServiceConnection);
                                i++;
                            }
                        } else {
                            Log.w(TAG, "ChooserTargetService " + componentName + " does not require permission android.permission.BIND_CHOOSER_TARGET_SERVICE - this service will not be queried for ChooserTargets. add android:permission=\"android.permission.BIND_CHOOSER_TARGET_SERVICE\" to the <service> tag for " + componentName + " in the manifest.");
                        }
                    } catch (PackageManager.NameNotFoundException unused) {
                        Log.e(TAG, "Could not look up service " + componentName + "; component name not found");
                    }
                }
                if (i >= 5) {
                    break;
                }
            }
        }
        if (!this.mServiceConnections.isEmpty()) {
            this.mChooserHandler.sendEmptyMessageDelayed(2, 2000L);
        } else {
            sendVoiceChoicesIfNeeded();
        }
    }

    private String convertServiceName(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        if (str2.startsWith(".")) {
            return str + str2;
        }
        if (str2.indexOf(46) >= 0) {
            return str2;
        }
        return null;
    }

    void unbindRemainingServices() {
        int size = this.mServiceConnections.size();
        for (int i = 0; i < size; i++) {
            ChooserTargetServiceConnection chooserTargetServiceConnection = this.mServiceConnections.get(i);
            unbindService(chooserTargetServiceConnection);
            chooserTargetServiceConnection.destroy();
        }
        this.mServiceConnections.clear();
        this.mChooserHandler.removeMessages(2);
    }

    void updateModelAndChooserCounts(ResolverActivity.TargetInfo targetInfo) {
        if (targetInfo != null) {
            ResolveInfo resolveInfo = targetInfo.getResolveInfo();
            Intent targetIntent = getTargetIntent();
            if (resolveInfo != null && resolveInfo.activityInfo != null && targetIntent != null && this.mAdapter != null) {
                this.mAdapter.updateModel(targetInfo.getResolvedComponentName());
                this.mAdapter.updateChooserCounts(resolveInfo.activityInfo.packageName, getUserId(), targetIntent.getAction());
            }
        }
        this.mIsSuccessfullySelected = true;
    }

    void onRefinementResult(ResolverActivity.TargetInfo targetInfo, Intent intent) {
        if (this.mRefinementResultReceiver != null) {
            this.mRefinementResultReceiver.destroy();
            this.mRefinementResultReceiver = null;
        }
        if (targetInfo == null) {
            Log.e(TAG, "Refinement result intent did not match any known targets; canceling");
        } else if (!checkTargetSourceIntent(targetInfo, intent)) {
            Log.e(TAG, "onRefinementResult: Selected target " + targetInfo + " cannot match refined source intent " + intent);
        } else {
            ResolverActivity.TargetInfo cloneFilledIn = targetInfo.cloneFilledIn(intent, 0);
            if (super.onTargetSelected(cloneFilledIn, false)) {
                updateModelAndChooserCounts(cloneFilledIn);
                finish();
                return;
            }
        }
        onRefinementCanceled();
    }

    void onRefinementCanceled() {
        if (this.mRefinementResultReceiver != null) {
            this.mRefinementResultReceiver.destroy();
            this.mRefinementResultReceiver = null;
        }
        finish();
    }

    boolean checkTargetSourceIntent(ResolverActivity.TargetInfo targetInfo, Intent intent) {
        List<Intent> allSourceIntents = targetInfo.getAllSourceIntents();
        int size = allSourceIntents.size();
        for (int i = 0; i < size; i++) {
            if (allSourceIntents.get(i).filterEquals(intent)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0031, code lost:
    
        if (r3.permission == null) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void filterServiceTargets(String str, List<ChooserTarget> list) {
        if (list == null) {
            return;
        }
        PackageManager packageManager = getPackageManager();
        for (int size = list.size() - 1; size >= 0; size--) {
            ChooserTarget chooserTarget = list.get(size);
            ComponentName componentName = chooserTarget.getComponentName();
            if (str == null || !str.equals(componentName.getPackageName())) {
                boolean z = false;
                try {
                    ActivityInfo activityInfo = packageManager.getActivityInfo(componentName, 0);
                    if (activityInfo.exported) {
                    }
                } catch (PackageManager.NameNotFoundException unused) {
                    Log.e(TAG, "Target " + chooserTarget + " returned by " + str + " component not found");
                }
                z = true;
                if (z) {
                    list.remove(size);
                }
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public class ChooserListController extends ResolverListController {
        public ChooserListController(Context context, PackageManager packageManager, Intent intent, String str, int i) {
            super(context, packageManager, intent, str, i);
        }

        @Override // com.android.internal.app.ResolverListController
        boolean isComponentPinned(ComponentName componentName) {
            return ChooserActivity.this.mPinnedSharedPrefs.getBoolean(componentName.flattenToString(), false);
        }

        @Override // com.android.internal.app.ResolverListController
        boolean isComponentFiltered(ComponentName componentName) {
            if (ChooserActivity.this.mFilteredComponentNames == null) {
                return false;
            }
            for (ComponentName componentName2 : ChooserActivity.this.mFilteredComponentNames) {
                if (componentName.equals(componentName2)) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.android.internal.app.ResolverListController
        public float getScore(ResolverActivity.DisplayResolveInfo displayResolveInfo) {
            if (displayResolveInfo == null) {
                return ChooserActivity.CALLER_TARGET_SCORE_BOOST;
            }
            float score = super.getScore(displayResolveInfo);
            return displayResolveInfo.isPinned() ? score + ChooserActivity.PINNED_TARGET_SCORE_BOOST : score;
        }
    }

    @Override // com.android.internal.app.ResolverActivity
    public ResolverActivity.ResolveListAdapter createAdapter(Context context, List<Intent> list, Intent[] intentArr, List<ResolveInfo> list2, int i, boolean z) {
        return new ChooserListAdapter(context, list, intentArr, list2, i, z, createListController());
    }

    @Override // com.android.internal.app.ResolverActivity
    @VisibleForTesting
    protected ResolverListController createListController() {
        return new ChooserListController(this, this.mPm, getTargetIntent(), getReferrerPackageName(), this.mLaunchedFromUid);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public final class ChooserTargetInfo implements ResolverActivity.TargetInfo {
        private final ResolveInfo mBackupResolveInfo;
        private CharSequence mBadgeContentDescription;
        private Drawable mBadgeIcon;
        private final ChooserTarget mChooserTarget;
        private Drawable mDisplayIcon;
        private final int mFillInFlags;
        private final Intent mFillInIntent;
        private final float mModifiedScore;
        private final ResolverActivity.DisplayResolveInfo mSourceInfo;

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public CharSequence getExtendedInfo() {
            return null;
        }

        public ChooserTargetInfo(ResolverActivity.DisplayResolveInfo displayResolveInfo, ChooserTarget chooserTarget, float f) {
            ResolveInfo resolveInfo;
            ActivityInfo activityInfo;
            this.mBadgeIcon = null;
            this.mSourceInfo = displayResolveInfo;
            this.mChooserTarget = chooserTarget;
            this.mModifiedScore = f;
            if (displayResolveInfo != null && (resolveInfo = displayResolveInfo.getResolveInfo()) != null && (activityInfo = resolveInfo.activityInfo) != null && activityInfo.applicationInfo != null) {
                PackageManager packageManager = ChooserActivity.this.getPackageManager();
                this.mBadgeIcon = packageManager.getApplicationIcon(activityInfo.applicationInfo);
                this.mBadgeContentDescription = packageManager.getApplicationLabel(activityInfo.applicationInfo);
            }
            Icon icon = chooserTarget.getIcon();
            this.mDisplayIcon = icon != null ? icon.loadDrawable(ChooserActivity.this) : null;
            if (displayResolveInfo != null) {
                this.mBackupResolveInfo = null;
            } else {
                this.mBackupResolveInfo = ChooserActivity.this.getPackageManager().resolveActivity(getResolvedIntent(), 0);
            }
            this.mFillInIntent = null;
            this.mFillInFlags = 0;
        }

        private ChooserTargetInfo(ChooserTargetInfo chooserTargetInfo, Intent intent, int i) {
            this.mBadgeIcon = null;
            this.mSourceInfo = chooserTargetInfo.mSourceInfo;
            this.mBackupResolveInfo = chooserTargetInfo.mBackupResolveInfo;
            this.mChooserTarget = chooserTargetInfo.mChooserTarget;
            this.mBadgeIcon = chooserTargetInfo.mBadgeIcon;
            this.mBadgeContentDescription = chooserTargetInfo.mBadgeContentDescription;
            this.mDisplayIcon = chooserTargetInfo.mDisplayIcon;
            this.mFillInIntent = intent;
            this.mFillInFlags = i;
            this.mModifiedScore = chooserTargetInfo.mModifiedScore;
        }

        public float getModifiedScore() {
            return this.mModifiedScore;
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public Intent getResolvedIntent() {
            if (this.mSourceInfo != null) {
                return this.mSourceInfo.getResolvedIntent();
            }
            Intent intent = new Intent(ChooserActivity.this.getTargetIntent());
            intent.setComponent(this.mChooserTarget.getComponentName());
            intent.putExtras(this.mChooserTarget.getIntentExtras());
            return intent;
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public ComponentName getResolvedComponentName() {
            if (this.mSourceInfo != null) {
                return this.mSourceInfo.getResolvedComponentName();
            }
            if (this.mBackupResolveInfo != null) {
                return new ComponentName(this.mBackupResolveInfo.activityInfo.packageName, this.mBackupResolveInfo.activityInfo.name);
            }
            return null;
        }

        private Intent getBaseIntentToSend() {
            Intent resolvedIntent = getResolvedIntent();
            if (resolvedIntent == null) {
                Log.e(ChooserActivity.TAG, "ChooserTargetInfo: no base intent available to send");
                return resolvedIntent;
            }
            Intent intent = new Intent(resolvedIntent);
            if (this.mFillInIntent != null) {
                intent.fillIn(this.mFillInIntent, this.mFillInFlags);
            }
            intent.fillIn(ChooserActivity.this.mReferrerFillInIntent, 0);
            return intent;
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public boolean start(Activity activity, Bundle bundle) {
            throw new RuntimeException("ChooserTargets should be started as caller.");
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public boolean startAsCaller(Activity activity, Bundle bundle, int i) {
            Intent baseIntentToSend = getBaseIntentToSend();
            boolean z = false;
            if (baseIntentToSend == null) {
                return false;
            }
            baseIntentToSend.setComponent(this.mChooserTarget.getComponentName());
            baseIntentToSend.putExtras(this.mChooserTarget.getIntentExtras());
            if (this.mSourceInfo != null && this.mSourceInfo.getResolvedComponentName().getPackageName().equals(this.mChooserTarget.getComponentName().getPackageName())) {
                z = true;
            }
            activity.startActivityAsCaller(baseIntentToSend, bundle, z, i);
            return true;
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public boolean startAsUser(Activity activity, Bundle bundle, UserHandle userHandle) {
            throw new RuntimeException("ChooserTargets should be started as caller.");
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public ResolveInfo getResolveInfo() {
            return this.mSourceInfo != null ? this.mSourceInfo.getResolveInfo() : this.mBackupResolveInfo;
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public CharSequence getDisplayLabel() {
            return this.mChooserTarget.getTitle();
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public Drawable getDisplayIcon() {
            return this.mDisplayIcon;
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public Drawable getBadgeIcon() {
            return this.mBadgeIcon;
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public CharSequence getBadgeContentDescription() {
            return this.mBadgeContentDescription;
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public ResolverActivity.TargetInfo cloneFilledIn(Intent intent, int i) {
            return new ChooserTargetInfo(this, intent, i);
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public List<Intent> getAllSourceIntents() {
            ArrayList arrayList = new ArrayList();
            if (this.mSourceInfo != null) {
                arrayList.add(this.mSourceInfo.getAllSourceIntents().get(0));
            }
            return arrayList;
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public boolean isPinned() {
            if (this.mSourceInfo != null) {
                return this.mSourceInfo.isPinned();
            }
            return false;
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public class ChooserListAdapter extends ResolverActivity.ResolveListAdapter {
        private static final int MAX_SERVICE_TARGETS = 4;
        private static final int MAX_TARGETS_PER_SERVICE = 2;
        public static final int TARGET_BAD = -1;
        public static final int TARGET_CALLER = 0;
        public static final int TARGET_SERVICE = 1;
        public static final int TARGET_STANDARD = 2;
        private final BaseChooserTargetComparator mBaseTargetComparator;
        private final List<ResolverActivity.TargetInfo> mCallerTargets;
        private float mLateFee;
        private final List<ChooserTargetInfo> mServiceTargets;
        private boolean mShowServiceTargets;
        private boolean mTargetsNeedPruning;

        @Override // com.android.internal.app.ResolverActivity.ResolveListAdapter
        public boolean shouldGetResolvedFilter() {
            return true;
        }

        @Override // com.android.internal.app.ResolverActivity.ResolveListAdapter
        public boolean showsExtendedInfo(ResolverActivity.TargetInfo targetInfo) {
            return false;
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0063  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x0073  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x008a  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0070  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public ChooserListAdapter(Context context, List<Intent> list, Intent[] intentArr, List<ResolveInfo> list2, int i, boolean z, ResolverListController resolverListController) {
            super(context, list, null, list2, i, z, resolverListController);
            ActivityInfo activityInfo;
            ResolveInfo resolveInfo;
            ResolveInfo resolveInfo2;
            this.mServiceTargets = new ArrayList();
            this.mCallerTargets = new ArrayList();
            this.mLateFee = 1.0f;
            this.mTargetsNeedPruning = false;
            this.mBaseTargetComparator = new BaseChooserTargetComparator();
            if (intentArr != null) {
                PackageManager packageManager = ChooserActivity.this.getPackageManager();
                for (Intent intent : intentArr) {
                    if (intent != null) {
                        if (intent.getComponent() != null) {
                            try {
                                activityInfo = packageManager.getActivityInfo(intent.getComponent(), 0);
                                try {
                                    resolveInfo = new ResolveInfo();
                                    try {
                                        resolveInfo.activityInfo = activityInfo;
                                    } catch (PackageManager.NameNotFoundException unused) {
                                    }
                                } catch (PackageManager.NameNotFoundException unused2) {
                                    resolveInfo = null;
                                }
                            } catch (PackageManager.NameNotFoundException unused3) {
                            }
                            if (activityInfo != null) {
                                ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 65536);
                                resolveInfo2 = resolveActivity;
                                activityInfo = resolveActivity != null ? resolveActivity.activityInfo : null;
                            } else {
                                resolveInfo2 = resolveInfo;
                            }
                            if (activityInfo != null) {
                                Log.w(ChooserActivity.TAG, "No activity found for " + intent);
                            } else {
                                UserManager userManager = (UserManager) ChooserActivity.this.getSystemService("user");
                                if (intent instanceof LabeledIntent) {
                                    LabeledIntent labeledIntent = (LabeledIntent) intent;
                                    resolveInfo2.resolvePackageName = labeledIntent.getSourcePackage();
                                    resolveInfo2.labelRes = labeledIntent.getLabelResource();
                                    resolveInfo2.nonLocalizedLabel = labeledIntent.getNonLocalizedLabel();
                                    resolveInfo2.icon = labeledIntent.getIconResource();
                                    resolveInfo2.iconResourceId = resolveInfo2.icon;
                                }
                                if (userManager.isManagedProfile()) {
                                    resolveInfo2.noResourceId = true;
                                    resolveInfo2.icon = 0;
                                }
                                this.mCallerTargets.add(new ResolverActivity.DisplayResolveInfo(intent, resolveInfo2, resolveInfo2.loadLabel(packageManager), null, intent));
                            }
                        }
                        activityInfo = null;
                        resolveInfo = null;
                        if (activityInfo != null) {
                        }
                        if (activityInfo != null) {
                        }
                    }
                }
            }
        }

        @Override // com.android.internal.app.ResolverActivity.ResolveListAdapter
        public boolean isComponentPinned(ComponentName componentName) {
            return ChooserActivity.this.mPinnedSharedPrefs.getBoolean(componentName.flattenToString(), false);
        }

        @Override // com.android.internal.app.ResolverActivity.ResolveListAdapter
        public View onCreateView(ViewGroup viewGroup) {
            return this.mInflater.inflate(17367248, viewGroup, false);
        }

        @Override // com.android.internal.app.ResolverActivity.ResolveListAdapter
        public void onListRebuilt() {
            if (ActivityManager.isLowRamDeviceStatic()) {
                return;
            }
            if (this.mServiceTargets != null && getDisplayInfoCount() == 0) {
                this.mTargetsNeedPruning = true;
            }
            ChooserActivity.this.queryTargetServices(this);
        }

        @Override // com.android.internal.app.ResolverActivity.ResolveListAdapter, android.widget.Adapter
        public int getCount() {
            return super.getCount() + getServiceTargetCount() + getCallerTargetCount();
        }

        @Override // com.android.internal.app.ResolverActivity.ResolveListAdapter
        public int getUnfilteredCount() {
            return super.getUnfilteredCount() + getServiceTargetCount() + getCallerTargetCount();
        }

        public int getCallerTargetCount() {
            return this.mCallerTargets.size();
        }

        public int getServiceTargetCount() {
            if (this.mShowServiceTargets) {
                return Math.min(this.mServiceTargets.size(), 4);
            }
            return 0;
        }

        public int getStandardTargetCount() {
            return super.getCount();
        }

        public int getPositionTargetType(int i) {
            int callerTargetCount = getCallerTargetCount();
            if (i < callerTargetCount) {
                return 0;
            }
            int i2 = callerTargetCount + 0;
            int serviceTargetCount = getServiceTargetCount();
            if (i - i2 < serviceTargetCount) {
                return 1;
            }
            return i - (i2 + serviceTargetCount) < super.getCount() ? 2 : -1;
        }

        @Override // com.android.internal.app.ResolverActivity.ResolveListAdapter, android.widget.Adapter
        public ResolverActivity.TargetInfo getItem(int i) {
            return targetInfoForPosition(i, true);
        }

        @Override // com.android.internal.app.ResolverActivity.ResolveListAdapter
        public ResolverActivity.TargetInfo targetInfoForPosition(int i, boolean z) {
            int callerTargetCount = getCallerTargetCount();
            if (i < callerTargetCount) {
                return this.mCallerTargets.get(i);
            }
            int i2 = callerTargetCount + 0;
            int serviceTargetCount = getServiceTargetCount();
            int i3 = i - i2;
            if (i3 < serviceTargetCount) {
                return this.mServiceTargets.get(i3);
            }
            int i4 = i2 + serviceTargetCount;
            if (z) {
                return super.getItem(i - i4);
            }
            return getDisplayInfoAt(i - i4);
        }

        public void addServiceResults(ResolverActivity.DisplayResolveInfo displayResolveInfo, List<ChooserTarget> list) {
            int i = 0;
            if (this.mTargetsNeedPruning && list.size() > 0) {
                this.mServiceTargets.clear();
                this.mTargetsNeedPruning = false;
            }
            float score = getScore(displayResolveInfo);
            Collections.sort(list, this.mBaseTargetComparator);
            float f = 0.0f;
            int min = Math.min(list.size(), 2);
            while (i < min) {
                ChooserTarget chooserTarget = list.get(i);
                float score2 = chooserTarget.getScore() * score * this.mLateFee;
                f = (i <= 0 || score2 < f) ? score2 : f * 0.95f;
                insertServiceTarget(new ChooserTargetInfo(displayResolveInfo, chooserTarget, f));
                i++;
            }
            this.mLateFee *= 0.95f;
            notifyDataSetChanged();
        }

        public void setShowServiceTargets(boolean z) {
            if (z != this.mShowServiceTargets) {
                this.mShowServiceTargets = z;
                notifyDataSetChanged();
            }
        }

        private void insertServiceTarget(ChooserTargetInfo chooserTargetInfo) {
            float modifiedScore = chooserTargetInfo.getModifiedScore();
            int size = this.mServiceTargets.size();
            for (int i = 0; i < size; i++) {
                if (modifiedScore > this.mServiceTargets.get(i).getModifiedScore()) {
                    this.mServiceTargets.add(i, chooserTargetInfo);
                    return;
                }
            }
            this.mServiceTargets.add(chooserTargetInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class BaseChooserTargetComparator implements Comparator<ChooserTarget> {
        BaseChooserTargetComparator() {
        }

        @Override // java.util.Comparator
        public int compare(ChooserTarget chooserTarget, ChooserTarget chooserTarget2) {
            return (int) Math.signum(chooserTarget2.getScore() - chooserTarget.getScore());
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    class ChooserRowAdapter extends BaseAdapter {
        private ChooserListAdapter mChooserListAdapter;
        private final LayoutInflater mLayoutInflater;
        private final int mColumnCount = 4;
        private int mAnimationCount = 0;

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        public ChooserRowAdapter(ChooserListAdapter chooserListAdapter) {
            this.mChooserListAdapter = chooserListAdapter;
            this.mLayoutInflater = LayoutInflater.from(ChooserActivity.this);
            chooserListAdapter.registerDataSetObserver(new DataSetObserver() { // from class: com.android.internal.app.ChooserActivity.ChooserRowAdapter.1
                @Override // android.database.DataSetObserver
                public void onChanged() {
                    super.onChanged();
                    ChooserRowAdapter.this.notifyDataSetChanged();
                }

                @Override // android.database.DataSetObserver
                public void onInvalidated() {
                    super.onInvalidated();
                    ChooserRowAdapter.this.notifyDataSetInvalidated();
                }
            });
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return (int) (getCallerTargetRowCount() + getServiceTargetRowCount() + Math.ceil(this.mChooserListAdapter.getStandardTargetCount() / 4.0f));
        }

        public int getCallerTargetRowCount() {
            return (int) Math.ceil(this.mChooserListAdapter.getCallerTargetCount() / 4.0f);
        }

        public int getServiceTargetRowCount() {
            return this.mChooserListAdapter.getServiceTargetCount() == 0 ? 0 : 1;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return Integer.valueOf(i);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            RowViewHolder rowViewHolder;
            if (view == null) {
                rowViewHolder = createViewHolder(viewGroup);
            } else {
                rowViewHolder = (RowViewHolder) view.getTag();
            }
            bindViewHolder(i, rowViewHolder);
            return rowViewHolder.row;
        }

        RowViewHolder createViewHolder(ViewGroup viewGroup) {
            ViewGroup viewGroup2 = (ViewGroup) this.mLayoutInflater.inflate(17367116, viewGroup, false);
            final RowViewHolder rowViewHolder = new RowViewHolder(viewGroup2, 4);
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
            for (final int i = 0; i < 4; i++) {
                View createView = this.mChooserListAdapter.createView(viewGroup2);
                createView.setOnClickListener(new View.OnClickListener() { // from class: com.android.internal.app.ChooserActivity.ChooserRowAdapter.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        ChooserActivity.this.startSelected(rowViewHolder.itemIndices[i], false, true);
                    }
                });
                createView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.android.internal.app.ChooserActivity.ChooserRowAdapter.3
                    @Override // android.view.View.OnLongClickListener
                    public boolean onLongClick(View view) {
                        ChooserActivity.this.showTargetDetails(ChooserRowAdapter.this.mChooserListAdapter.resolveInfoForPosition(rowViewHolder.itemIndices[i], true));
                        return true;
                    }
                });
                viewGroup2.addView(createView);
                rowViewHolder.cells[i] = createView;
                ViewGroup.LayoutParams layoutParams = createView.getLayoutParams();
                createView.measure(makeMeasureSpec, makeMeasureSpec);
                if (layoutParams == null) {
                    viewGroup2.setLayoutParams(new ViewGroup.LayoutParams(-1, createView.getMeasuredHeight()));
                } else {
                    layoutParams.height = createView.getMeasuredHeight();
                }
                if (i != 3) {
                    viewGroup2.addView(new Space(ChooserActivity.this), new LinearLayout.LayoutParams(0, 0, 1.0f));
                }
            }
            rowViewHolder.measure();
            ViewGroup.LayoutParams layoutParams2 = viewGroup2.getLayoutParams();
            if (layoutParams2 == null) {
                viewGroup2.setLayoutParams(new ViewGroup.LayoutParams(-1, rowViewHolder.measuredRowHeight));
            } else {
                layoutParams2.height = rowViewHolder.measuredRowHeight;
            }
            viewGroup2.setTag(rowViewHolder);
            return rowViewHolder;
        }

        void bindViewHolder(int i, RowViewHolder rowViewHolder) {
            int firstRowPosition = getFirstRowPosition(i);
            int positionTargetType = this.mChooserListAdapter.getPositionTargetType(firstRowPosition);
            int i2 = (firstRowPosition + 4) - 1;
            while (this.mChooserListAdapter.getPositionTargetType(i2) != positionTargetType && i2 >= firstRowPosition) {
                i2--;
            }
            if (positionTargetType == 1) {
                rowViewHolder.row.setBackgroundColor(ChooserActivity.this.getColor(17170616));
                int positionTargetType2 = this.mChooserListAdapter.getPositionTargetType(getFirstRowPosition(i + 1));
                int dimensionPixelSize = rowViewHolder.row.getContext().getResources().getDimensionPixelSize(17104974);
                if (i != 0 || positionTargetType2 == 1) {
                    int i3 = i == 0 ? dimensionPixelSize : 0;
                    if (positionTargetType2 != 1) {
                        setVertPadding(rowViewHolder, i3, dimensionPixelSize);
                    } else {
                        setVertPadding(rowViewHolder, i3, 0);
                    }
                } else {
                    setVertPadding(rowViewHolder, 0, 0);
                }
            } else {
                rowViewHolder.row.setBackgroundColor(0);
                if (this.mChooserListAdapter.getPositionTargetType(getFirstRowPosition(i - 1)) == 1 || i == 0) {
                    setVertPadding(rowViewHolder, rowViewHolder.row.getContext().getResources().getDimensionPixelSize(17104974), 0);
                } else {
                    setVertPadding(rowViewHolder, 0, 0);
                }
            }
            int i4 = rowViewHolder.row.getLayoutParams().height;
            rowViewHolder.row.getLayoutParams().height = Math.max(1, rowViewHolder.measuredRowHeight);
            if (rowViewHolder.row.getLayoutParams().height != i4) {
                rowViewHolder.row.requestLayout();
            }
            for (int i5 = 0; i5 < 4; i5++) {
                View view = rowViewHolder.cells[i5];
                int i6 = firstRowPosition + i5;
                if (i6 <= i2) {
                    view.setVisibility(0);
                    rowViewHolder.itemIndices[i5] = i6;
                    this.mChooserListAdapter.bindView(rowViewHolder.itemIndices[i5], view);
                } else {
                    view.setVisibility(4);
                }
            }
        }

        private void setVertPadding(RowViewHolder rowViewHolder, int i, int i2) {
            rowViewHolder.row.setPadding(rowViewHolder.row.getPaddingLeft(), i, rowViewHolder.row.getPaddingRight(), i2);
        }

        int getFirstRowPosition(int i) {
            int callerTargetCount = this.mChooserListAdapter.getCallerTargetCount();
            int ceil = (int) Math.ceil(callerTargetCount / 4.0f);
            if (i < ceil) {
                return i * 4;
            }
            int serviceTargetCount = this.mChooserListAdapter.getServiceTargetCount();
            int ceil2 = (int) Math.ceil(serviceTargetCount / 4.0f);
            return i < ceil + ceil2 ? callerTargetCount + ((i - ceil) * 4) : callerTargetCount + serviceTargetCount + (((i - ceil) - ceil2) * 4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class RowViewHolder {
        final View[] cells;
        int[] itemIndices;
        int measuredRowHeight;
        final ViewGroup row;

        public RowViewHolder(ViewGroup viewGroup, int i) {
            this.row = viewGroup;
            this.cells = new View[i];
            this.itemIndices = new int[i];
        }

        public void measure() {
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
            this.row.measure(makeMeasureSpec, makeMeasureSpec);
            this.measuredRowHeight = this.row.getMeasuredHeight();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class ChooserTargetServiceConnection implements ServiceConnection {
        private ChooserActivity mChooserActivity;
        private ComponentName mConnectedComponent;
        private ResolverActivity.DisplayResolveInfo mOriginalTarget;
        private final Object mLock = new Object();
        private final IChooserTargetResult mChooserTargetResult = new IChooserTargetResult.Stub() { // from class: com.android.internal.app.ChooserActivity.ChooserTargetServiceConnection.1
            public void sendResult(List<ChooserTarget> list) throws RemoteException {
                synchronized (ChooserTargetServiceConnection.this.mLock) {
                    if (ChooserTargetServiceConnection.this.mChooserActivity == null) {
                        Log.e(ChooserActivity.TAG, "destroyed ChooserTargetServiceConnection received result from " + ChooserTargetServiceConnection.this.mConnectedComponent + "; ignoring...");
                        return;
                    }
                    ChooserTargetServiceConnection.this.mChooserActivity.filterServiceTargets(ChooserTargetServiceConnection.this.mOriginalTarget.getResolveInfo().activityInfo.packageName, list);
                    Message obtain = Message.obtain();
                    obtain.what = 1;
                    obtain.obj = new ServiceResultInfo(ChooserTargetServiceConnection.this.mOriginalTarget, list, ChooserTargetServiceConnection.this);
                    ChooserTargetServiceConnection.this.mChooserActivity.mChooserHandler.sendMessage(obtain);
                }
            }
        };

        public ChooserTargetServiceConnection(ChooserActivity chooserActivity, ResolverActivity.DisplayResolveInfo displayResolveInfo) {
            this.mChooserActivity = chooserActivity;
            this.mOriginalTarget = displayResolveInfo;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            synchronized (this.mLock) {
                if (this.mChooserActivity == null) {
                    Log.e(ChooserActivity.TAG, "destroyed ChooserTargetServiceConnection got onServiceConnected");
                    return;
                }
                try {
                    IChooserTargetService.Stub.asInterface(iBinder).getChooserTargets(this.mOriginalTarget.getResolvedComponentName(), this.mOriginalTarget.getResolveInfo().filter, this.mChooserTargetResult);
                } catch (RemoteException e) {
                    Log.e(ChooserActivity.TAG, "Querying ChooserTargetService " + componentName + " failed.", e);
                    this.mChooserActivity.unbindService(this);
                    this.mChooserActivity.mServiceConnections.remove(this);
                    destroy();
                }
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            synchronized (this.mLock) {
                if (this.mChooserActivity == null) {
                    Log.e(ChooserActivity.TAG, "destroyed ChooserTargetServiceConnection got onServiceDisconnected");
                    return;
                }
                this.mChooserActivity.unbindService(this);
                this.mChooserActivity.mServiceConnections.remove(this);
                if (this.mChooserActivity.mServiceConnections.isEmpty()) {
                    this.mChooserActivity.mChooserHandler.removeMessages(2);
                    this.mChooserActivity.sendVoiceChoicesIfNeeded();
                }
                this.mConnectedComponent = null;
                destroy();
            }
        }

        public void destroy() {
            synchronized (this.mLock) {
                this.mChooserActivity = null;
                this.mOriginalTarget = null;
            }
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("ChooserTargetServiceConnection{service=");
            sb.append(this.mConnectedComponent);
            sb.append(", activity=");
            sb.append(this.mOriginalTarget != null ? this.mOriginalTarget.getResolveInfo().activityInfo.toString() : "<connection destroyed>");
            sb.append("}");
            return sb.toString();
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    static class ServiceResultInfo {
        public final ChooserTargetServiceConnection connection;
        public final ResolverActivity.DisplayResolveInfo originalTarget;
        public final List<ChooserTarget> resultTargets;

        public ServiceResultInfo(ResolverActivity.DisplayResolveInfo displayResolveInfo, List<ChooserTarget> list, ChooserTargetServiceConnection chooserTargetServiceConnection) {
            this.originalTarget = displayResolveInfo;
            this.resultTargets = list;
            this.connection = chooserTargetServiceConnection;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class RefinementResultReceiver extends ResultReceiver {
        private ChooserActivity mChooserActivity;
        private ResolverActivity.TargetInfo mSelectedTarget;

        public RefinementResultReceiver(ChooserActivity chooserActivity, ResolverActivity.TargetInfo targetInfo, Handler handler) {
            super(handler);
            this.mChooserActivity = chooserActivity;
            this.mSelectedTarget = targetInfo;
        }

        @Override // android.os.ResultReceiver
        protected void onReceiveResult(int i, Bundle bundle) {
            if (this.mChooserActivity == null) {
                Log.e(ChooserActivity.TAG, "Destroyed RefinementResultReceiver received a result");
                return;
            }
            if (bundle == null) {
                Log.e(ChooserActivity.TAG, "RefinementResultReceiver received null resultData");
                return;
            }
            switch (i) {
                case -1:
                    Parcelable parcelable = bundle.getParcelable("android.intent.extra.INTENT");
                    if (parcelable instanceof Intent) {
                        this.mChooserActivity.onRefinementResult(this.mSelectedTarget, (Intent) parcelable);
                        return;
                    } else {
                        Log.e(ChooserActivity.TAG, "RefinementResultReceiver received RESULT_OK but no Intent in resultData with key Intent.EXTRA_INTENT");
                        return;
                    }
                case 0:
                    this.mChooserActivity.onRefinementCanceled();
                    return;
                default:
                    Log.w(ChooserActivity.TAG, "Unknown result code " + i + " sent to RefinementResultReceiver");
                    return;
            }
        }

        public void destroy() {
            this.mChooserActivity = null;
            this.mSelectedTarget = null;
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    class OffsetDataSetObserver extends DataSetObserver {
        private View mCachedView;
        private int mCachedViewType = -1;
        private final AbsListView mListView;

        public OffsetDataSetObserver(AbsListView absListView) {
            this.mListView = absListView;
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            if (ChooserActivity.this.mResolverDrawerLayout == null) {
                return;
            }
            int serviceTargetRowCount = ChooserActivity.this.mChooserRowAdapter.getServiceTargetRowCount();
            int i = 0;
            for (int i2 = 0; i2 < serviceTargetRowCount; i2++) {
                int callerTargetRowCount = ChooserActivity.this.mChooserRowAdapter.getCallerTargetRowCount() + i2;
                int itemViewType = ChooserActivity.this.mChooserRowAdapter.getItemViewType(callerTargetRowCount);
                if (itemViewType != this.mCachedViewType) {
                    this.mCachedView = null;
                }
                View view = ChooserActivity.this.mChooserRowAdapter.getView(callerTargetRowCount, this.mCachedView, this.mListView);
                i += ((RowViewHolder) view.getTag()).measuredRowHeight;
                if (itemViewType >= 0) {
                    this.mCachedViewType = itemViewType;
                    this.mCachedView = view;
                } else {
                    this.mCachedViewType = -1;
                }
            }
            ChooserActivity.this.mResolverDrawerLayout.setCollapsibleHeightReserved(i);
        }
    }
}
