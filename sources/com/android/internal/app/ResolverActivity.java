package com.android.internal.app;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityThread;
import android.app.VoiceInteractor;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.LabeledIntent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.UserInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.PatternMatcher;
import android.os.RemoteException;
import android.os.StrictMode;
import android.os.UserHandle;
import android.os.UserManager;
import android.text.TextUtils;
import android.util.IconDrawableFactory;
import android.util.Log;
import android.util.Slog;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.android.internal.annotations.VisibleForTesting;
import com.android.internal.content.PackageMonitor;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.logging.nano.MetricsProto;
import com.android.internal.widget.ResolverDrawerLayout;
import com.facebook.common.util.UriUtil;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;

/* loaded from: /home/user/work/dex/classes3.dex */
public class ResolverActivity extends Activity {
    private static final boolean DEBUG = false;
    private static final String TAG = "ResolverActivity";
    protected ResolveListAdapter mAdapter;
    private AbsListView mAdapterView;
    private Button mAlwaysButton;
    private int mDefaultTitleResId;
    private int mIconDpi;
    IconDrawableFactory mIconFactory;
    protected int mLaunchedFromUid;
    private int mLayoutId;
    private Button mOnceButton;
    private PickTargetOptionRequest mPickOptionRequest;
    protected PackageManager mPm;
    private Runnable mPostListReadyRunnable;
    private View mProfileView;
    private String mReferrerPackage;
    private boolean mRegistered;
    protected ResolverDrawerLayout mResolverDrawerLayout;
    private boolean mRetainInOnStop;
    private boolean mSafeForwardingMode;
    private boolean mSupportsAlwaysUseOption;
    private CharSequence mTitle;
    private int mLastSelected = -1;
    private boolean mResolvingHome = false;
    private int mProfileSwitchMessageId = -1;
    private final ArrayList<Intent> mIntents = new ArrayList<>();
    private final PackageMonitor mPackageMonitor = new PackageMonitor() { // from class: com.android.internal.app.ResolverActivity.1
        @Override // com.android.internal.content.PackageMonitor
        public boolean onPackageChanged(String str, int i, String[] strArr) {
            return true;
        }

        @Override // com.android.internal.content.PackageMonitor
        public void onSomePackagesChanged() {
            ResolverActivity.this.mAdapter.handlePackagesChanged();
            if (ResolverActivity.this.mProfileView != null) {
                ResolverActivity.this.bindProfileView();
            }
        }
    };

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface TargetInfo {
        TargetInfo cloneFilledIn(Intent intent, int i);

        List<Intent> getAllSourceIntents();

        CharSequence getBadgeContentDescription();

        Drawable getBadgeIcon();

        Drawable getDisplayIcon();

        CharSequence getDisplayLabel();

        CharSequence getExtendedInfo();

        ResolveInfo getResolveInfo();

        ComponentName getResolvedComponentName();

        Intent getResolvedIntent();

        boolean isPinned();

        boolean start(Activity activity, Bundle bundle);

        boolean startAsCaller(Activity activity, Bundle bundle, int i);

        boolean startAsUser(Activity activity, Bundle bundle, UserHandle userHandle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final boolean isSpecificUriMatch(int i) {
        int i2 = i & 268369920;
        return i2 >= 3145728 && i2 <= 5242880;
    }

    public int getLayoutResource() {
        return 17367251;
    }

    public Intent getReplacementIntent(ActivityInfo activityInfo, Intent intent) {
        return intent;
    }

    public void onActivityStarted(TargetInfo targetInfo) {
    }

    public boolean shouldAutoLaunchSingleChoice(TargetInfo targetInfo) {
        return true;
    }

    public boolean shouldGetActivityMetadata() {
        return false;
    }

    public static int getLabelRes(String str) {
        return ActionTitle.forAction(str).labelRes;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public enum ActionTitle {
        VIEW("android.intent.action.VIEW", 17041083, 17041085, 17041084),
        EDIT("android.intent.action.EDIT", 17041068, 17041070, 17041069),
        SEND("android.intent.action.SEND", 17041077, 17041079, 17041078),
        SENDTO("android.intent.action.SENDTO", 17041080, 17041082, 17041081),
        SEND_MULTIPLE("android.intent.action.SEND_MULTIPLE", 17041077, 17041079, 17041078),
        CAPTURE_IMAGE("android.media.action.IMAGE_CAPTURE", 17041074, 17041076, 17041075),
        DEFAULT(null, 17041065, 17041067, 17041066),
        HOME("android.intent.action.MAIN", 17041071, 17041073, 17041072);

        public final String action;
        public final int labelRes;
        public final int namedTitleRes;
        public final int titleRes;

        ActionTitle(String str, int i, int i2, int i3) {
            this.action = str;
            this.titleRes = i;
            this.namedTitleRes = i2;
            this.labelRes = i3;
        }

        public static ActionTitle forAction(String str) {
            for (ActionTitle actionTitle : values()) {
                if (actionTitle != HOME && str != null && str.equals(actionTitle.action)) {
                    return actionTitle;
                }
            }
            return DEFAULT;
        }
    }

    private Intent makeMyIntent() {
        Intent intent = new Intent(getIntent());
        intent.setComponent(null);
        intent.setFlags(intent.getFlags() & (-8388609));
        return intent;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        Intent makeMyIntent = makeMyIntent();
        Set<String> categories = makeMyIntent.getCategories();
        if ("android.intent.action.MAIN".equals(makeMyIntent.getAction()) && categories != null && categories.size() == 1 && categories.contains("android.intent.category.HOME")) {
            this.mResolvingHome = true;
        }
        setSafeForwardingMode(true);
        onCreate(bundle, makeMyIntent, null, 0, null, null, true);
    }

    protected void onCreate(Bundle bundle, Intent intent, CharSequence charSequence, Intent[] intentArr, List<ResolveInfo> list, boolean z) {
        onCreate(bundle, intent, charSequence, 0, intentArr, list, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onCreate(Bundle bundle, Intent intent, CharSequence charSequence, int i, Intent[] intentArr, List<ResolveInfo> list, boolean z) {
        setTheme(16974799);
        super.onCreate(bundle);
        setProfileSwitchMessageId(intent.getContentUserHint());
        try {
            this.mLaunchedFromUid = ActivityManager.getService().getLaunchedFromUid(getActivityToken());
        } catch (RemoteException unused) {
            this.mLaunchedFromUid = -1;
        }
        if (this.mLaunchedFromUid < 0 || UserHandle.isIsolated(this.mLaunchedFromUid)) {
            finish();
            return;
        }
        this.mPm = getPackageManager();
        this.mPackageMonitor.register(this, getMainLooper(), false);
        this.mRegistered = true;
        this.mReferrerPackage = getReferrerPackageName();
        this.mSupportsAlwaysUseOption = z;
        this.mIconDpi = ((ActivityManager) getSystemService("activity")).getLauncherLargeIconDensity();
        this.mIntents.add(0, new Intent(intent));
        this.mTitle = charSequence;
        this.mDefaultTitleResId = i;
        if (configureContentView(this.mIntents, intentArr, list)) {
            return;
        }
        ResolverDrawerLayout resolverDrawerLayout = (ResolverDrawerLayout) findViewById(16908813);
        if (resolverDrawerLayout != null) {
            resolverDrawerLayout.setOnDismissedListener(new ResolverDrawerLayout.OnDismissedListener() { // from class: com.android.internal.app.ResolverActivity.2
                @Override // com.android.internal.widget.ResolverDrawerLayout.OnDismissedListener
                public void onDismissed() {
                    ResolverActivity.this.finish();
                }
            });
            if (isVoiceInteraction()) {
                resolverDrawerLayout.setCollapsed(false);
            }
            this.mResolverDrawerLayout = resolverDrawerLayout;
        }
        this.mProfileView = findViewById(16909203);
        if (this.mProfileView != null) {
            this.mProfileView.setOnClickListener(new View.OnClickListener() { // from class: com.android.internal.app.ResolverActivity.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    DisplayResolveInfo otherProfile = ResolverActivity.this.mAdapter.getOtherProfile();
                    if (otherProfile == null) {
                        return;
                    }
                    ResolverActivity.this.mProfileSwitchMessageId = -1;
                    ResolverActivity.this.onTargetSelected(otherProfile, false);
                    ResolverActivity.this.finish();
                }
            });
            bindProfileView();
        }
        if (isVoiceInteraction()) {
            onSetupVoiceInteraction();
        }
        Set<String> categories = intent.getCategories();
        int i2 = this.mAdapter.hasFilteredItem() ? MetricsProto.MetricsEvent.ACTION_SHOW_APP_DISAMBIG_APP_FEATURED : MetricsProto.MetricsEvent.ACTION_SHOW_APP_DISAMBIG_NONE_FEATURED;
        StringBuilder sb = new StringBuilder();
        sb.append(intent.getAction());
        sb.append(":");
        sb.append(intent.getType());
        sb.append(":");
        sb.append(categories != null ? Arrays.toString(categories.toArray()) : "");
        MetricsLogger.action(this, i2, sb.toString());
        this.mIconFactory = IconDrawableFactory.newInstance(this, true);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mAdapter.handlePackagesChanged();
    }

    public void onSetupVoiceInteraction() {
        sendVoiceChoicesIfNeeded();
    }

    public void sendVoiceChoicesIfNeeded() {
        if (isVoiceInteraction()) {
            VoiceInteractor.PickOptionRequest.Option[] optionArr = new VoiceInteractor.PickOptionRequest.Option[this.mAdapter.getCount()];
            int length = optionArr.length;
            for (int i = 0; i < length; i++) {
                optionArr[i] = optionForChooserTarget(this.mAdapter.getItem(i), i);
            }
            this.mPickOptionRequest = new PickTargetOptionRequest(new VoiceInteractor.Prompt(getTitle()), optionArr, null);
            getVoiceInteractor().submitRequest(this.mPickOptionRequest);
        }
    }

    VoiceInteractor.PickOptionRequest.Option optionForChooserTarget(TargetInfo targetInfo, int i) {
        return new VoiceInteractor.PickOptionRequest.Option(targetInfo.getDisplayLabel(), i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void setAdditionalTargets(Intent[] intentArr) {
        if (intentArr != null) {
            for (Intent intent : intentArr) {
                this.mIntents.add(intent);
            }
        }
    }

    public Intent getTargetIntent() {
        if (this.mIntents.isEmpty()) {
            return null;
        }
        return this.mIntents.get(0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getReferrerPackageName() {
        Uri referrer = getReferrer();
        if (referrer == null || !"android-app".equals(referrer.getScheme())) {
            return null;
        }
        return referrer.getHost();
    }

    void bindProfileView() {
        DisplayResolveInfo otherProfile = this.mAdapter.getOtherProfile();
        if (otherProfile != null) {
            this.mProfileView.setVisibility(0);
            View findViewById = this.mProfileView.findViewById(16909203);
            if (!(findViewById instanceof TextView)) {
                findViewById = this.mProfileView.findViewById(16908308);
            }
            ((TextView) findViewById).setText(otherProfile.getDisplayLabel());
            return;
        }
        this.mProfileView.setVisibility(8);
    }

    private void setProfileSwitchMessageId(int i) {
        if (i == -2 || i == UserHandle.myUserId()) {
            return;
        }
        UserManager userManager = (UserManager) getSystemService("user");
        UserInfo userInfo = userManager.getUserInfo(i);
        boolean isManagedProfile = userInfo != null ? userInfo.isManagedProfile() : false;
        boolean isManagedProfile2 = userManager.isManagedProfile();
        if (isManagedProfile && !isManagedProfile2) {
            this.mProfileSwitchMessageId = 17039935;
        } else {
            if (isManagedProfile || !isManagedProfile2) {
                return;
            }
            this.mProfileSwitchMessageId = 17039936;
        }
    }

    public void setSafeForwardingMode(boolean z) {
        this.mSafeForwardingMode = z;
    }

    protected CharSequence getTitleForAction(String str, int i) {
        ActionTitle forAction = this.mResolvingHome ? ActionTitle.HOME : ActionTitle.forAction(str);
        boolean z = this.mAdapter.getFilteredPosition() >= 0;
        if (forAction != ActionTitle.DEFAULT || i == 0) {
            return z ? getString(forAction.namedTitleRes, new Object[]{this.mAdapter.getFilteredItem().getDisplayLabel()}) : getString(forAction.titleRes);
        }
        return getString(i);
    }

    void dismiss() {
        if (isFinishing()) {
            return;
        }
        finish();
    }

    Drawable getIcon(Resources resources, int i) {
        try {
            return resources.getDrawableForDensity(i, this.mIconDpi);
        } catch (Resources.NotFoundException unused) {
            return null;
        }
    }

    Drawable loadIconForResolveInfo(ResolveInfo resolveInfo) {
        Drawable icon;
        Drawable icon2;
        try {
        } catch (PackageManager.NameNotFoundException e) {
            Log.e(TAG, "Couldn't find resources for package", e);
        }
        if (resolveInfo.resolvePackageName != null && resolveInfo.icon != 0 && (icon2 = getIcon(this.mPm.getResourcesForApplication(resolveInfo.resolvePackageName), resolveInfo.icon)) != null) {
            return this.mIconFactory.getShadowedIcon(icon2);
        }
        int iconResource = resolveInfo.getIconResource();
        if (iconResource != 0 && (icon = getIcon(this.mPm.getResourcesForApplication(resolveInfo.activityInfo.packageName), iconResource)) != null) {
            return this.mIconFactory.getShadowedIcon(icon);
        }
        return this.mIconFactory.getBadgedIcon(resolveInfo.activityInfo.applicationInfo);
    }

    @Override // android.app.Activity
    protected void onRestart() {
        super.onRestart();
        if (!this.mRegistered) {
            this.mPackageMonitor.register(this, getMainLooper(), false);
            this.mRegistered = true;
        }
        this.mAdapter.handlePackagesChanged();
        if (this.mProfileView != null) {
            bindProfileView();
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        if (this.mRegistered) {
            this.mPackageMonitor.unregister();
            this.mRegistered = false;
        }
        if ((getIntent().getFlags() & 268435456) == 0 || isVoiceInteraction() || this.mResolvingHome || this.mRetainInOnStop || isChangingConfigurations()) {
            return;
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (!isChangingConfigurations() && this.mPickOptionRequest != null) {
            this.mPickOptionRequest.cancel();
        }
        if (this.mPostListReadyRunnable != null) {
            getMainThreadHandler().removeCallbacks(this.mPostListReadyRunnable);
            this.mPostListReadyRunnable = null;
        }
        if (this.mAdapter == null || this.mAdapter.mResolverListController == null) {
            return;
        }
        this.mAdapter.mResolverListController.destroy();
    }

    @Override // android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        resetAlwaysOrOnceButtonBar();
    }

    private boolean hasManagedProfile() {
        UserManager userManager = (UserManager) getSystemService("user");
        if (userManager == null) {
            return false;
        }
        try {
            for (UserInfo userInfo : userManager.getProfiles(getUserId())) {
                if (userInfo != null && userInfo.isManagedProfile()) {
                    return true;
                }
            }
            return false;
        } catch (SecurityException unused) {
            return false;
        }
    }

    private boolean supportsManagedProfiles(ResolveInfo resolveInfo) {
        try {
            return getPackageManager().getApplicationInfo(resolveInfo.activityInfo.packageName, 0).targetSdkVersion >= 21;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAlwaysButtonEnabled(boolean z, int i, boolean z2) {
        boolean z3;
        if (z) {
            ResolveInfo resolveInfoForPosition = this.mAdapter.resolveInfoForPosition(i, z2);
            if (resolveInfoForPosition == null) {
                Log.e(TAG, "Invalid position supplied to setAlwaysButtonEnabled");
                return;
            } else {
                if (resolveInfoForPosition.targetUserId != -2) {
                    Log.e(TAG, "Attempted to set selection to resolve info for another user");
                    return;
                }
                z3 = true;
            }
        } else {
            z3 = false;
        }
        this.mAlwaysButton.setEnabled(z3);
    }

    public void onButtonClick(View view) {
        int checkedItemPosition;
        int id = view.getId();
        if (this.mAdapter.hasFilteredItem()) {
            checkedItemPosition = this.mAdapter.getFilteredPosition();
        } else {
            checkedItemPosition = this.mAdapterView.getCheckedItemPosition();
        }
        startSelected(checkedItemPosition, id == 16908767, !this.mAdapter.hasFilteredItem());
    }

    public void startSelected(int i, boolean z, boolean z2) {
        if (isFinishing()) {
            return;
        }
        ResolveInfo resolveInfoForPosition = this.mAdapter.resolveInfoForPosition(i, z2);
        if (this.mResolvingHome && hasManagedProfile() && !supportsManagedProfiles(resolveInfoForPosition)) {
            Toast.makeText(this, String.format(getResources().getString(17039440), resolveInfoForPosition.activityInfo.loadLabel(getPackageManager()).toString()), 1).show();
            return;
        }
        TargetInfo targetInfoForPosition = this.mAdapter.targetInfoForPosition(i, z2);
        if (targetInfoForPosition != null && onTargetSelected(targetInfoForPosition, z)) {
            if (z && this.mSupportsAlwaysUseOption) {
                MetricsLogger.action(this, MetricsProto.MetricsEvent.ACTION_APP_DISAMBIG_ALWAYS);
            } else if (this.mSupportsAlwaysUseOption) {
                MetricsLogger.action(this, MetricsProto.MetricsEvent.ACTION_APP_DISAMBIG_JUST_ONCE);
            } else {
                MetricsLogger.action(this, MetricsProto.MetricsEvent.ACTION_APP_DISAMBIG_TAP);
            }
            MetricsLogger.action(this, this.mAdapter.hasFilteredItem() ? MetricsProto.MetricsEvent.ACTION_HIDE_APP_DISAMBIG_APP_FEATURED : MetricsProto.MetricsEvent.ACTION_HIDE_APP_DISAMBIG_NONE_FEATURED);
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00d6, code lost:
    
        if (r6 != null) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00dc, code lost:
    
        if (r6.hasNext() == false) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00de, code lost:
    
        r7 = r6.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00e8, code lost:
    
        if (r7.match(r8) < 0) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00ea, code lost:
    
        r6 = r7.getPort();
        r7 = r7.getHost();
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00f2, code lost:
    
        if (r6 < 0) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00f4, code lost:
    
        r3 = java.lang.Integer.toString(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00f8, code lost:
    
        r0.addDataAuthority(r7, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00fb, code lost:
    
        r3 = r2.filter.pathsIterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0101, code lost:
    
        if (r3 == null) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0103, code lost:
    
        r6 = r8.getPath();
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0107, code lost:
    
        if (r6 == null) goto L114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x010d, code lost:
    
        if (r3.hasNext() == false) goto L116;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x010f, code lost:
    
        r7 = r3.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0119, code lost:
    
        if (r7.match(r6) == false) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x011b, code lost:
    
        r0.addDataPath(r7.getPath(), r7.getType());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTargetSelected(TargetInfo targetInfo, boolean z) {
        ComponentName[] componentNameArr;
        String resolveType;
        ResolveInfo resolveInfo = targetInfo.getResolveInfo();
        String str = null;
        Intent resolvedIntent = targetInfo != null ? targetInfo.getResolvedIntent() : null;
        if (resolvedIntent != null && ((this.mSupportsAlwaysUseOption || this.mAdapter.hasFilteredItem()) && this.mAdapter.mUnfilteredResolveList != null)) {
            IntentFilter intentFilter = new IntentFilter();
            Intent selector = resolvedIntent.getSelector() != null ? resolvedIntent.getSelector() : resolvedIntent;
            String action = selector.getAction();
            if (action != null) {
                intentFilter.addAction(action);
            }
            Set<String> categories = selector.getCategories();
            if (categories != null) {
                Iterator<String> it = categories.iterator();
                while (it.hasNext()) {
                    intentFilter.addCategory(it.next());
                }
            }
            intentFilter.addCategory("android.intent.category.DEFAULT");
            int i = resolveInfo.match & 268369920;
            Uri data = selector.getData();
            if (i == 6291456 && (resolveType = selector.resolveType(this)) != null) {
                try {
                    intentFilter.addDataType(resolveType);
                } catch (IntentFilter.MalformedMimeTypeException e) {
                    Log.w(TAG, e);
                    intentFilter = null;
                }
            }
            if (data != null && data.getScheme() != null && (i != 6291456 || (!UriUtil.LOCAL_FILE_SCHEME.equals(data.getScheme()) && !UriUtil.LOCAL_CONTENT_SCHEME.equals(data.getScheme())))) {
                intentFilter.addDataScheme(data.getScheme());
                Iterator<PatternMatcher> schemeSpecificPartsIterator = resolveInfo.filter.schemeSpecificPartsIterator();
                if (schemeSpecificPartsIterator != null) {
                    String schemeSpecificPart = data.getSchemeSpecificPart();
                    while (true) {
                        if (schemeSpecificPart == null || !schemeSpecificPartsIterator.hasNext()) {
                            break;
                        }
                        PatternMatcher next = schemeSpecificPartsIterator.next();
                        if (next.match(schemeSpecificPart)) {
                            intentFilter.addDataSchemeSpecificPart(next.getPath(), next.getType());
                            break;
                        }
                    }
                }
                Iterator<IntentFilter.AuthorityEntry> authoritiesIterator = resolveInfo.filter.authoritiesIterator();
            }
            if (intentFilter != null) {
                int size = this.mAdapter.mUnfilteredResolveList.size();
                boolean z2 = this.mAdapter.mOtherProfile != null;
                if (!z2) {
                    componentNameArr = new ComponentName[size];
                } else {
                    componentNameArr = new ComponentName[size + 1];
                }
                int i2 = 0;
                for (int i3 = 0; i3 < size; i3++) {
                    ResolveInfo resolveInfoAt = this.mAdapter.mUnfilteredResolveList.get(i3).getResolveInfoAt(0);
                    componentNameArr[i3] = new ComponentName(resolveInfoAt.activityInfo.packageName, resolveInfoAt.activityInfo.name);
                    if (resolveInfoAt.match > i2) {
                        i2 = resolveInfoAt.match;
                    }
                }
                if (z2) {
                    componentNameArr[size] = this.mAdapter.mOtherProfile.getResolvedComponentName();
                    int i4 = this.mAdapter.mOtherProfile.getResolveInfo().match;
                    if (i4 > i2) {
                        i2 = i4;
                    }
                }
                if (z) {
                    int userId = getUserId();
                    PackageManager packageManager = getPackageManager();
                    packageManager.addPreferredActivity(intentFilter, i2, componentNameArr, resolvedIntent.getComponent());
                    if (resolveInfo.handleAllWebDataURI && TextUtils.isEmpty(packageManager.getDefaultBrowserPackageNameAsUser(userId))) {
                        packageManager.setDefaultBrowserPackageNameAsUser(resolveInfo.activityInfo.packageName, userId);
                    }
                } else {
                    try {
                        this.mAdapter.mResolverListController.setLastChosen(resolvedIntent, intentFilter, i2);
                    } catch (RemoteException e2) {
                        Log.d(TAG, "Error calling setLastChosenActivity\n" + e2);
                    }
                }
            }
        }
        if (targetInfo != null) {
            safelyStartActivity(targetInfo);
        }
        return true;
    }

    public void safelyStartActivity(TargetInfo targetInfo) {
        StrictMode.disableDeathOnFileUriExposure();
        try {
            safelyStartActivityInternal(targetInfo);
        } finally {
            StrictMode.enableDeathOnFileUriExposure();
        }
    }

    private void safelyStartActivityInternal(TargetInfo targetInfo) {
        String str;
        if (this.mProfileSwitchMessageId != -1) {
            Toast.makeText(this, getString(this.mProfileSwitchMessageId), 1).show();
        }
        if (!this.mSafeForwardingMode) {
            if (targetInfo.start(this, null)) {
                onActivityStarted(targetInfo);
                return;
            }
            return;
        }
        try {
            if (targetInfo.startAsCaller(this, null, -10000)) {
                onActivityStarted(targetInfo);
            }
        } catch (RuntimeException e) {
            try {
                str = ActivityManager.getService().getLaunchedFromPackage(getActivityToken());
            } catch (RemoteException unused) {
                str = "??";
            }
            Slog.wtf(TAG, "Unable to launch as uid " + this.mLaunchedFromUid + " package " + str + ", while running in " + ActivityThread.currentProcessName(), e);
        }
    }

    public void showTargetDetails(ResolveInfo resolveInfo) {
        startActivity(new Intent().setAction("android.settings.APPLICATION_DETAILS_SETTINGS").setData(Uri.fromParts("package", resolveInfo.activityInfo.packageName, null)).addFlags(524288));
    }

    public ResolveListAdapter createAdapter(Context context, List<Intent> list, Intent[] intentArr, List<ResolveInfo> list2, int i, boolean z) {
        return new ResolveListAdapter(context, list, intentArr, list2, i, z, createListController());
    }

    @VisibleForTesting
    protected ResolverListController createListController() {
        return new ResolverListController(this, this.mPm, getTargetIntent(), getReferrerPackageName(), this.mLaunchedFromUid);
    }

    public boolean configureContentView(List<Intent> list, Intent[] intentArr, List<ResolveInfo> list2) {
        this.mAdapter = createAdapter(this, list, intentArr, list2, this.mLaunchedFromUid, this.mSupportsAlwaysUseOption && !isVoiceInteraction());
        boolean rebuildList = this.mAdapter.rebuildList();
        if (useLayoutWithDefault()) {
            this.mLayoutId = 17367252;
        } else {
            this.mLayoutId = getLayoutResource();
        }
        setContentView(this.mLayoutId);
        int unfilteredCount = this.mAdapter.getUnfilteredCount();
        if (rebuildList && unfilteredCount == 1 && this.mAdapter.getOtherProfile() == null) {
            TargetInfo targetInfoForPosition = this.mAdapter.targetInfoForPosition(0, false);
            if (shouldAutoLaunchSingleChoice(targetInfoForPosition)) {
                safelyStartActivity(targetInfoForPosition);
                this.mPackageMonitor.unregister();
                this.mRegistered = false;
                finish();
                return true;
            }
        }
        this.mAdapterView = (AbsListView) findViewById(16909230);
        if (unfilteredCount == 0 && this.mAdapter.mPlaceholderCount == 0) {
            ((TextView) findViewById(16908292)).setVisibility(0);
            this.mAdapterView.setVisibility(8);
        } else {
            this.mAdapterView.setVisibility(0);
            onPrepareAdapterView(this.mAdapterView, this.mAdapter);
        }
        return false;
    }

    public void onPrepareAdapterView(AbsListView absListView, ResolveListAdapter resolveListAdapter) {
        boolean hasFilteredItem = resolveListAdapter.hasFilteredItem();
        ListView listView = absListView instanceof ListView ? (ListView) absListView : null;
        absListView.setAdapter(this.mAdapter);
        ItemClickListener itemClickListener = new ItemClickListener();
        absListView.setOnItemClickListener(itemClickListener);
        absListView.setOnItemLongClickListener(itemClickListener);
        if (this.mSupportsAlwaysUseOption) {
            listView.setChoiceMode(1);
        }
        if (hasFilteredItem && listView != null && listView.getHeaderViewsCount() == 0) {
            listView.addHeaderView(LayoutInflater.from(this).inflate(17367250, (ViewGroup) listView, false));
        }
    }

    public void setTitleAndIcon() {
        CharSequence titleForAction;
        TextView textView;
        if (this.mAdapter.getCount() == 0 && this.mAdapter.mPlaceholderCount == 0 && (textView = (TextView) findViewById(16908310)) != null) {
            textView.setVisibility(8);
        }
        if (this.mTitle != null) {
            titleForAction = this.mTitle;
        } else {
            titleForAction = getTitleForAction(getTargetIntent().getAction(), this.mDefaultTitleResId);
        }
        if (!TextUtils.isEmpty(titleForAction)) {
            TextView textView2 = (TextView) findViewById(16908310);
            if (textView2 != null) {
                textView2.setText(titleForAction);
            }
            setTitle(titleForAction);
            ImageView imageView = (ImageView) findViewById(16909416);
            if (imageView != null) {
                ApplicationInfo applicationInfo = null;
                try {
                    if (!TextUtils.isEmpty(this.mReferrerPackage)) {
                        applicationInfo = this.mPm.getApplicationInfo(this.mReferrerPackage, 0);
                    }
                } catch (PackageManager.NameNotFoundException unused) {
                    Log.e(TAG, "Could not find referrer package " + this.mReferrerPackage);
                }
                if (applicationInfo != null) {
                    imageView.setImageDrawable(applicationInfo.loadIcon(this.mPm));
                }
            }
        }
        ImageView imageView2 = (ImageView) findViewById(16908294);
        DisplayResolveInfo filteredItem = this.mAdapter.getFilteredItem();
        if (imageView2 == null || filteredItem == null) {
            return;
        }
        new LoadIconIntoViewTask(filteredItem, imageView2).execute(new Void[0]);
    }

    public void resetAlwaysOrOnceButtonBar() {
        if (this.mSupportsAlwaysUseOption) {
            ViewGroup viewGroup = (ViewGroup) findViewById(16908768);
            if (viewGroup != null) {
                viewGroup.setVisibility(0);
                this.mAlwaysButton = (Button) viewGroup.findViewById(16908767);
                this.mOnceButton = (Button) viewGroup.findViewById(16908769);
            } else {
                Log.e(TAG, "Layout unexpectedly does not have a button bar");
            }
        }
        if (useLayoutWithDefault() && this.mAdapter.getFilteredPosition() != -1) {
            setAlwaysButtonEnabled(true, this.mAdapter.getFilteredPosition(), false);
            this.mOnceButton.setEnabled(true);
        } else {
            if (this.mAdapterView == null || this.mAdapterView.getCheckedItemPosition() == -1) {
                return;
            }
            setAlwaysButtonEnabled(true, this.mAdapterView.getCheckedItemPosition(), true);
            this.mOnceButton.setEnabled(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean useLayoutWithDefault() {
        return this.mSupportsAlwaysUseOption && this.mAdapter.hasFilteredItem();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setRetainInOnStop(boolean z) {
        this.mRetainInOnStop = z;
    }

    static boolean resolveInfoMatch(ResolveInfo resolveInfo, ResolveInfo resolveInfo2) {
        if (resolveInfo == null) {
            if (resolveInfo2 != null) {
                return false;
            }
        } else if (resolveInfo.activityInfo == null) {
            if (resolveInfo2.activityInfo != null) {
                return false;
            }
        } else if (!Objects.equals(resolveInfo.activityInfo.name, resolveInfo2.activityInfo.name) || !Objects.equals(resolveInfo.activityInfo.packageName, resolveInfo2.activityInfo.packageName)) {
            return false;
        }
        return true;
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public final class DisplayResolveInfo implements TargetInfo {
        private Drawable mBadge;
        private Drawable mDisplayIcon;
        private final CharSequence mDisplayLabel;
        private final CharSequence mExtendedInfo;
        private boolean mPinned;
        private final ResolveInfo mResolveInfo;
        private final Intent mResolvedIntent;
        private final List<Intent> mSourceIntents = new ArrayList();

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public CharSequence getBadgeContentDescription() {
            return null;
        }

        public DisplayResolveInfo(Intent intent, ResolveInfo resolveInfo, CharSequence charSequence, CharSequence charSequence2, Intent intent2) {
            this.mSourceIntents.add(intent);
            this.mResolveInfo = resolveInfo;
            this.mDisplayLabel = charSequence;
            this.mExtendedInfo = charSequence2;
            Intent intent3 = new Intent(intent2 == null ? ResolverActivity.this.getReplacementIntent(resolveInfo.activityInfo, ResolverActivity.this.getTargetIntent()) : intent2);
            intent3.addFlags(50331648);
            ActivityInfo activityInfo = this.mResolveInfo.activityInfo;
            intent3.setComponent(new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name));
            this.mResolvedIntent = intent3;
        }

        private DisplayResolveInfo(DisplayResolveInfo displayResolveInfo, Intent intent, int i) {
            this.mSourceIntents.addAll(displayResolveInfo.getAllSourceIntents());
            this.mResolveInfo = displayResolveInfo.mResolveInfo;
            this.mDisplayLabel = displayResolveInfo.mDisplayLabel;
            this.mDisplayIcon = displayResolveInfo.mDisplayIcon;
            this.mExtendedInfo = displayResolveInfo.mExtendedInfo;
            this.mResolvedIntent = new Intent(displayResolveInfo.mResolvedIntent);
            this.mResolvedIntent.fillIn(intent, i);
            this.mPinned = displayResolveInfo.mPinned;
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public ResolveInfo getResolveInfo() {
            return this.mResolveInfo;
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public CharSequence getDisplayLabel() {
            return this.mDisplayLabel;
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public Drawable getDisplayIcon() {
            return this.mDisplayIcon;
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public Drawable getBadgeIcon() {
            if (TextUtils.isEmpty(getExtendedInfo())) {
                return null;
            }
            if (this.mBadge == null && this.mResolveInfo != null && this.mResolveInfo.activityInfo != null && this.mResolveInfo.activityInfo.applicationInfo != null) {
                if (this.mResolveInfo.activityInfo.icon == 0 || this.mResolveInfo.activityInfo.icon == this.mResolveInfo.activityInfo.applicationInfo.icon) {
                    return null;
                }
                this.mBadge = this.mResolveInfo.activityInfo.applicationInfo.loadIcon(ResolverActivity.this.mPm);
            }
            return this.mBadge;
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public TargetInfo cloneFilledIn(Intent intent, int i) {
            return new DisplayResolveInfo(this, intent, i);
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public List<Intent> getAllSourceIntents() {
            return this.mSourceIntents;
        }

        public void addAlternateSourceIntent(Intent intent) {
            this.mSourceIntents.add(intent);
        }

        public void setDisplayIcon(Drawable drawable) {
            this.mDisplayIcon = drawable;
        }

        public boolean hasDisplayIcon() {
            return this.mDisplayIcon != null;
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public CharSequence getExtendedInfo() {
            return this.mExtendedInfo;
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public Intent getResolvedIntent() {
            return this.mResolvedIntent;
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public ComponentName getResolvedComponentName() {
            return new ComponentName(this.mResolveInfo.activityInfo.packageName, this.mResolveInfo.activityInfo.name);
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public boolean start(Activity activity, Bundle bundle) {
            activity.startActivity(this.mResolvedIntent, bundle);
            return true;
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public boolean startAsCaller(Activity activity, Bundle bundle, int i) {
            activity.startActivityAsCaller(this.mResolvedIntent, bundle, false, i);
            return true;
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public boolean startAsUser(Activity activity, Bundle bundle, UserHandle userHandle) {
            activity.startActivityAsUser(this.mResolvedIntent, bundle, userHandle);
            return false;
        }

        @Override // com.android.internal.app.ResolverActivity.TargetInfo
        public boolean isPinned() {
            return this.mPinned;
        }

        public void setPinned(boolean z) {
            this.mPinned = z;
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public class ResolveListAdapter extends BaseAdapter {
        private final List<ResolveInfo> mBaseResolveList;
        List<DisplayResolveInfo> mDisplayList;
        private boolean mFilterLastUsed;
        private boolean mHasExtendedInfo;
        protected final LayoutInflater mInflater;
        private final Intent[] mInitialIntents;
        private final List<Intent> mIntents;
        protected ResolveInfo mLastChosen;
        private int mLastChosenPosition = -1;
        private DisplayResolveInfo mOtherProfile;
        private int mPlaceholderCount;
        private ResolverListController mResolverListController;
        List<ResolvedComponentInfo> mUnfilteredResolveList;

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        public boolean isComponentPinned(ComponentName componentName) {
            return false;
        }

        public ResolveListAdapter(Context context, List<Intent> list, Intent[] intentArr, List<ResolveInfo> list2, int i, boolean z, ResolverListController resolverListController) {
            this.mIntents = list;
            this.mInitialIntents = intentArr;
            this.mBaseResolveList = list2;
            ResolverActivity.this.mLaunchedFromUid = i;
            this.mInflater = LayoutInflater.from(context);
            this.mDisplayList = new ArrayList();
            this.mFilterLastUsed = z;
            this.mResolverListController = resolverListController;
        }

        public void handlePackagesChanged() {
            rebuildList();
            if (getCount() == 0) {
                ResolverActivity.this.finish();
            }
        }

        public void setPlaceholderCount(int i) {
            this.mPlaceholderCount = i;
        }

        public int getPlaceholderCount() {
            return this.mPlaceholderCount;
        }

        public DisplayResolveInfo getFilteredItem() {
            if (!this.mFilterLastUsed || this.mLastChosenPosition < 0) {
                return null;
            }
            return this.mDisplayList.get(this.mLastChosenPosition);
        }

        public DisplayResolveInfo getOtherProfile() {
            return this.mOtherProfile;
        }

        public int getFilteredPosition() {
            if (!this.mFilterLastUsed || this.mLastChosenPosition < 0) {
                return -1;
            }
            return this.mLastChosenPosition;
        }

        public boolean hasFilteredItem() {
            return this.mFilterLastUsed && this.mLastChosen != null;
        }

        public float getScore(DisplayResolveInfo displayResolveInfo) {
            return this.mResolverListController.getScore(displayResolveInfo);
        }

        public void updateModel(ComponentName componentName) {
            this.mResolverListController.updateModel(componentName);
        }

        public void updateChooserCounts(String str, int i, String str2) {
            this.mResolverListController.updateChooserCounts(str, i, str2);
        }

        protected boolean rebuildList() {
            List<ResolvedComponentInfo> resolversForIntent;
            this.mOtherProfile = null;
            this.mLastChosen = null;
            this.mLastChosenPosition = -1;
            this.mDisplayList.clear();
            if (this.mBaseResolveList != null) {
                resolversForIntent = new ArrayList<>();
                this.mUnfilteredResolveList = resolversForIntent;
                this.mResolverListController.addResolveListDedupe(resolversForIntent, ResolverActivity.this.getTargetIntent(), this.mBaseResolveList);
            } else {
                resolversForIntent = this.mResolverListController.getResolversForIntent(shouldGetResolvedFilter(), ResolverActivity.this.shouldGetActivityMetadata(), this.mIntents);
                this.mUnfilteredResolveList = resolversForIntent;
                if (resolversForIntent == null) {
                    processSortedList(resolversForIntent);
                    return true;
                }
                ArrayList<ResolvedComponentInfo> filterIneligibleActivities = this.mResolverListController.filterIneligibleActivities(resolversForIntent, true);
                if (filterIneligibleActivities != null) {
                    this.mUnfilteredResolveList = filterIneligibleActivities;
                }
            }
            Iterator<ResolvedComponentInfo> it = resolversForIntent.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                ResolvedComponentInfo next = it.next();
                if (next.getResolveInfoAt(0).targetUserId != -2) {
                    this.mOtherProfile = new DisplayResolveInfo(next.getIntentAt(0), next.getResolveInfoAt(0), next.getResolveInfoAt(0).loadLabel(ResolverActivity.this.mPm), next.getResolveInfoAt(0).loadLabel(ResolverActivity.this.mPm), ResolverActivity.this.getReplacementIntent(next.getResolveInfoAt(0).activityInfo, next.getIntentAt(0)));
                    resolversForIntent.remove(next);
                    break;
                }
            }
            if (this.mOtherProfile == null) {
                try {
                    this.mLastChosen = this.mResolverListController.getLastChosen();
                } catch (RemoteException e) {
                    Log.d(ResolverActivity.TAG, "Error calling getLastChosenActivity\n" + e);
                }
            }
            if (resolversForIntent != null && resolversForIntent.size() > 0) {
                ArrayList<ResolvedComponentInfo> filterLowPriority = this.mResolverListController.filterLowPriority(resolversForIntent, this.mUnfilteredResolveList == resolversForIntent);
                if (filterLowPriority != null) {
                    this.mUnfilteredResolveList = filterLowPriority;
                }
                if (resolversForIntent.size() > 1) {
                    int size = resolversForIntent.size();
                    if (ResolverActivity.this.useLayoutWithDefault()) {
                        size--;
                    }
                    setPlaceholderCount(size);
                    new AsyncTask<List<ResolvedComponentInfo>, Void, List<ResolvedComponentInfo>>() { // from class: com.android.internal.app.ResolverActivity.ResolveListAdapter.1
                        /* JADX INFO: Access modifiers changed from: protected */
                        @Override // android.os.AsyncTask
                        public List<ResolvedComponentInfo> doInBackground(List<ResolvedComponentInfo>... listArr) {
                            ResolveListAdapter.this.mResolverListController.sort(listArr[0]);
                            return listArr[0];
                        }

                        /* JADX INFO: Access modifiers changed from: protected */
                        @Override // android.os.AsyncTask
                        public void onPostExecute(List<ResolvedComponentInfo> list) {
                            ResolveListAdapter.this.processSortedList(list);
                            if (ResolverActivity.this.mProfileView != null) {
                                ResolverActivity.this.bindProfileView();
                            }
                            ResolveListAdapter.this.notifyDataSetChanged();
                        }
                    }.execute(resolversForIntent);
                    postListReadyRunnable();
                    return false;
                }
                processSortedList(resolversForIntent);
                return true;
            }
            processSortedList(resolversForIntent);
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void processSortedList(List<ResolvedComponentInfo> list) {
            int size;
            if (list != null && (size = list.size()) != 0) {
                if (this.mInitialIntents != null) {
                    for (int i = 0; i < this.mInitialIntents.length; i++) {
                        Intent intent = this.mInitialIntents[i];
                        if (intent != null) {
                            ActivityInfo resolveActivityInfo = intent.resolveActivityInfo(ResolverActivity.this.getPackageManager(), 0);
                            if (resolveActivityInfo == null) {
                                Log.w(ResolverActivity.TAG, "No activity found for " + intent);
                            } else {
                                ResolveInfo resolveInfo = new ResolveInfo();
                                resolveInfo.activityInfo = resolveActivityInfo;
                                UserManager userManager = (UserManager) ResolverActivity.this.getSystemService("user");
                                if (intent instanceof LabeledIntent) {
                                    LabeledIntent labeledIntent = (LabeledIntent) intent;
                                    resolveInfo.resolvePackageName = labeledIntent.getSourcePackage();
                                    resolveInfo.labelRes = labeledIntent.getLabelResource();
                                    resolveInfo.nonLocalizedLabel = labeledIntent.getNonLocalizedLabel();
                                    resolveInfo.icon = labeledIntent.getIconResource();
                                    resolveInfo.iconResourceId = resolveInfo.icon;
                                }
                                if (userManager.isManagedProfile()) {
                                    resolveInfo.noResourceId = true;
                                    resolveInfo.icon = 0;
                                }
                                addResolveInfo(new DisplayResolveInfo(intent, resolveInfo, resolveInfo.loadLabel(ResolverActivity.this.getPackageManager()), null, intent));
                            }
                        }
                    }
                }
                ResolvedComponentInfo resolvedComponentInfo = list.get(0);
                ResolveInfo resolveInfoAt = resolvedComponentInfo.getResolveInfoAt(0);
                CharSequence loadLabel = resolveInfoAt.loadLabel(ResolverActivity.this.mPm);
                this.mHasExtendedInfo = false;
                ResolvedComponentInfo resolvedComponentInfo2 = resolvedComponentInfo;
                CharSequence charSequence = loadLabel;
                int i2 = 0;
                for (int i3 = 1; i3 < size; i3++) {
                    if (charSequence == null) {
                        charSequence = resolveInfoAt.activityInfo.packageName;
                    }
                    ResolvedComponentInfo resolvedComponentInfo3 = list.get(i3);
                    ResolveInfo resolveInfoAt2 = resolvedComponentInfo3.getResolveInfoAt(0);
                    CharSequence loadLabel2 = resolveInfoAt2.loadLabel(ResolverActivity.this.mPm);
                    if (loadLabel2 == null) {
                        loadLabel2 = resolveInfoAt2.activityInfo.packageName;
                    }
                    CharSequence charSequence2 = loadLabel2;
                    if (!charSequence2.equals(charSequence)) {
                        processGroup(list, i2, i3 - 1, resolvedComponentInfo2, charSequence);
                        i2 = i3;
                        resolvedComponentInfo2 = resolvedComponentInfo3;
                        resolveInfoAt = resolveInfoAt2;
                        charSequence = charSequence2;
                    }
                }
                processGroup(list, i2, size - 1, resolvedComponentInfo2, charSequence);
            }
            postListReadyRunnable();
        }

        private void postListReadyRunnable() {
            if (ResolverActivity.this.mPostListReadyRunnable == null) {
                ResolverActivity.this.mPostListReadyRunnable = new Runnable() { // from class: com.android.internal.app.ResolverActivity.ResolveListAdapter.2
                    @Override // java.lang.Runnable
                    public void run() {
                        ResolverActivity.this.setTitleAndIcon();
                        ResolverActivity.this.resetAlwaysOrOnceButtonBar();
                        ResolveListAdapter.this.onListRebuilt();
                        ResolverActivity.this.mPostListReadyRunnable = null;
                    }
                };
                ResolverActivity.this.getMainThreadHandler().post(ResolverActivity.this.mPostListReadyRunnable);
            }
        }

        public void onListRebuilt() {
            if (getUnfilteredCount() == 1 && getOtherProfile() == null) {
                TargetInfo targetInfoForPosition = targetInfoForPosition(0, false);
                if (ResolverActivity.this.shouldAutoLaunchSingleChoice(targetInfoForPosition)) {
                    ResolverActivity.this.safelyStartActivity(targetInfoForPosition);
                    ResolverActivity.this.finish();
                }
            }
        }

        public boolean shouldGetResolvedFilter() {
            return this.mFilterLastUsed;
        }

        private void processGroup(List<ResolvedComponentInfo> list, int i, int i2, ResolvedComponentInfo resolvedComponentInfo, CharSequence charSequence) {
            CharSequence loadLabel;
            if ((i2 - i) + 1 == 1) {
                addResolveInfoWithAlternates(resolvedComponentInfo, null, charSequence);
                return;
            }
            this.mHasExtendedInfo = true;
            CharSequence loadLabel2 = resolvedComponentInfo.getResolveInfoAt(0).activityInfo.applicationInfo.loadLabel(ResolverActivity.this.mPm);
            boolean z = loadLabel2 == null;
            if (!z) {
                HashSet hashSet = new HashSet();
                hashSet.add(loadLabel2);
                for (int i3 = i + 1; i3 <= i2; i3++) {
                    CharSequence loadLabel3 = list.get(i3).getResolveInfoAt(0).activityInfo.applicationInfo.loadLabel(ResolverActivity.this.mPm);
                    if (loadLabel3 == null || hashSet.contains(loadLabel3)) {
                        z = true;
                        break;
                    }
                    hashSet.add(loadLabel3);
                }
                hashSet.clear();
            }
            while (i <= i2) {
                ResolvedComponentInfo resolvedComponentInfo2 = list.get(i);
                ResolveInfo resolveInfoAt = resolvedComponentInfo2.getResolveInfoAt(0);
                if (z) {
                    loadLabel = resolveInfoAt.activityInfo.packageName;
                } else {
                    loadLabel = resolveInfoAt.activityInfo.applicationInfo.loadLabel(ResolverActivity.this.mPm);
                }
                addResolveInfoWithAlternates(resolvedComponentInfo2, loadLabel, charSequence);
                i++;
            }
        }

        private void addResolveInfoWithAlternates(ResolvedComponentInfo resolvedComponentInfo, CharSequence charSequence, CharSequence charSequence2) {
            int count = resolvedComponentInfo.getCount();
            Intent intentAt = resolvedComponentInfo.getIntentAt(0);
            ResolveInfo resolveInfoAt = resolvedComponentInfo.getResolveInfoAt(0);
            Intent replacementIntent = ResolverActivity.this.getReplacementIntent(resolveInfoAt.activityInfo, intentAt);
            DisplayResolveInfo displayResolveInfo = new DisplayResolveInfo(intentAt, resolveInfoAt, charSequence2, charSequence, replacementIntent);
            displayResolveInfo.setPinned(resolvedComponentInfo.isPinned());
            addResolveInfo(displayResolveInfo);
            if (replacementIntent == intentAt) {
                for (int i = 1; i < count; i++) {
                    displayResolveInfo.addAlternateSourceIntent(resolvedComponentInfo.getIntentAt(i));
                }
            }
            updateLastChosenPosition(resolveInfoAt);
        }

        private void updateLastChosenPosition(ResolveInfo resolveInfo) {
            if (this.mOtherProfile != null) {
                this.mLastChosenPosition = -1;
            } else if (this.mLastChosen != null && this.mLastChosen.activityInfo.packageName.equals(resolveInfo.activityInfo.packageName) && this.mLastChosen.activityInfo.name.equals(resolveInfo.activityInfo.name)) {
                this.mLastChosenPosition = this.mDisplayList.size() - 1;
            }
        }

        private void addResolveInfo(DisplayResolveInfo displayResolveInfo) {
            if (displayResolveInfo == null || displayResolveInfo.mResolveInfo == null || displayResolveInfo.mResolveInfo.targetUserId != -2) {
                return;
            }
            Iterator<DisplayResolveInfo> it = this.mDisplayList.iterator();
            while (it.hasNext()) {
                if (ResolverActivity.resolveInfoMatch(displayResolveInfo.mResolveInfo, it.next().mResolveInfo)) {
                    return;
                }
            }
            this.mDisplayList.add(displayResolveInfo);
        }

        public ResolveInfo resolveInfoForPosition(int i, boolean z) {
            TargetInfo targetInfoForPosition = targetInfoForPosition(i, z);
            if (targetInfoForPosition != null) {
                return targetInfoForPosition.getResolveInfo();
            }
            return null;
        }

        public TargetInfo targetInfoForPosition(int i, boolean z) {
            if (z) {
                return getItem(i);
            }
            if (this.mDisplayList.size() > i) {
                return this.mDisplayList.get(i);
            }
            return null;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            int i;
            if (this.mDisplayList == null || this.mDisplayList.isEmpty()) {
                i = this.mPlaceholderCount;
            } else {
                i = this.mDisplayList.size();
            }
            return (!this.mFilterLastUsed || this.mLastChosenPosition < 0) ? i : i - 1;
        }

        public int getUnfilteredCount() {
            return this.mDisplayList.size();
        }

        public int getDisplayInfoCount() {
            return this.mDisplayList.size();
        }

        public DisplayResolveInfo getDisplayInfoAt(int i) {
            return this.mDisplayList.get(i);
        }

        @Override // android.widget.Adapter
        public TargetInfo getItem(int i) {
            if (this.mFilterLastUsed && this.mLastChosenPosition >= 0 && i >= this.mLastChosenPosition) {
                i++;
            }
            if (this.mDisplayList.size() > i) {
                return this.mDisplayList.get(i);
            }
            return null;
        }

        public boolean hasExtendedInfo() {
            return this.mHasExtendedInfo;
        }

        public boolean hasResolvedTarget(ResolveInfo resolveInfo) {
            int size = this.mDisplayList.size();
            for (int i = 0; i < size; i++) {
                if (ResolverActivity.resolveInfoMatch(resolveInfo, this.mDisplayList.get(i).getResolveInfo())) {
                    return true;
                }
            }
            return false;
        }

        public int getDisplayResolveInfoCount() {
            return this.mDisplayList.size();
        }

        public DisplayResolveInfo getDisplayResolveInfo(int i) {
            return this.mDisplayList.get(i);
        }

        @Override // android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = createView(viewGroup);
            }
            onBindView(view, getItem(i));
            return view;
        }

        public final View createView(ViewGroup viewGroup) {
            View onCreateView = onCreateView(viewGroup);
            onCreateView.setTag(new ViewHolder(onCreateView));
            return onCreateView;
        }

        public View onCreateView(ViewGroup viewGroup) {
            return this.mInflater.inflate(17367249, viewGroup, false);
        }

        public boolean showsExtendedInfo(TargetInfo targetInfo) {
            return !TextUtils.isEmpty(targetInfo.getExtendedInfo());
        }

        public final void bindView(int i, View view) {
            onBindView(view, getItem(i));
        }

        private void onBindView(View view, TargetInfo targetInfo) {
            ViewHolder viewHolder = (ViewHolder) view.getTag();
            if (targetInfo == null) {
                viewHolder.icon.setImageDrawable(ResolverActivity.this.getDrawable(17303318));
                return;
            }
            if (!TextUtils.equals(viewHolder.text.getText(), targetInfo.getDisplayLabel())) {
                viewHolder.text.setText(targetInfo.getDisplayLabel());
            }
            if (showsExtendedInfo(targetInfo)) {
                viewHolder.text2.setVisibility(0);
                viewHolder.text2.setText(targetInfo.getExtendedInfo());
            } else {
                viewHolder.text2.setVisibility(8);
            }
            if (targetInfo instanceof DisplayResolveInfo) {
                DisplayResolveInfo displayResolveInfo = (DisplayResolveInfo) targetInfo;
                if (!displayResolveInfo.hasDisplayIcon()) {
                    new LoadAdapterIconTask(displayResolveInfo).execute(new Void[0]);
                }
            }
            viewHolder.icon.setImageDrawable(targetInfo.getDisplayIcon());
            if (viewHolder.badge != null) {
                Drawable badgeIcon = targetInfo.getBadgeIcon();
                if (badgeIcon != null) {
                    viewHolder.badge.setImageDrawable(badgeIcon);
                    viewHolder.badge.setContentDescription(targetInfo.getBadgeContentDescription());
                    viewHolder.badge.setVisibility(0);
                    return;
                }
                viewHolder.badge.setVisibility(8);
            }
        }
    }

    @VisibleForTesting
    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class ResolvedComponentInfo {
        private boolean mPinned;
        public final ComponentName name;
        private final List<Intent> mIntents = new ArrayList();
        private final List<ResolveInfo> mResolveInfos = new ArrayList();

        public ResolvedComponentInfo(ComponentName componentName, Intent intent, ResolveInfo resolveInfo) {
            this.name = componentName;
            add(intent, resolveInfo);
        }

        public void add(Intent intent, ResolveInfo resolveInfo) {
            this.mIntents.add(intent);
            this.mResolveInfos.add(resolveInfo);
        }

        public int getCount() {
            return this.mIntents.size();
        }

        public Intent getIntentAt(int i) {
            if (i >= 0) {
                return this.mIntents.get(i);
            }
            return null;
        }

        public ResolveInfo getResolveInfoAt(int i) {
            if (i >= 0) {
                return this.mResolveInfos.get(i);
            }
            return null;
        }

        public int findIntent(Intent intent) {
            int size = this.mIntents.size();
            for (int i = 0; i < size; i++) {
                if (intent.equals(this.mIntents.get(i))) {
                    return i;
                }
            }
            return -1;
        }

        public int findResolveInfo(ResolveInfo resolveInfo) {
            int size = this.mResolveInfos.size();
            for (int i = 0; i < size; i++) {
                if (resolveInfo.equals(this.mResolveInfos.get(i))) {
                    return i;
                }
            }
            return -1;
        }

        public boolean isPinned() {
            return this.mPinned;
        }

        public void setPinned(boolean z) {
            this.mPinned = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class ViewHolder {
        public ImageView badge;
        public ImageView icon;
        public TextView text;
        public TextView text2;

        public ViewHolder(View view) {
            this.text = (TextView) view.findViewById(16908308);
            this.text2 = (TextView) view.findViewById(16908309);
            this.icon = (ImageView) view.findViewById(16908294);
            this.badge = (ImageView) view.findViewById(16909373);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public class ItemClickListener implements AdapterView.OnItemClickListener, AdapterView.OnItemLongClickListener {
        ItemClickListener() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            ListView listView = adapterView instanceof ListView ? (ListView) adapterView : null;
            if (listView != null) {
                i -= listView.getHeaderViewsCount();
            }
            if (i >= 0 && ResolverActivity.this.mAdapter.resolveInfoForPosition(i, true) != null) {
                int checkedItemPosition = ResolverActivity.this.mAdapterView.getCheckedItemPosition();
                boolean z = checkedItemPosition != -1;
                if (!ResolverActivity.this.useLayoutWithDefault() && ((!z || ResolverActivity.this.mLastSelected != checkedItemPosition) && ResolverActivity.this.mAlwaysButton != null)) {
                    ResolverActivity.this.setAlwaysButtonEnabled(z, checkedItemPosition, true);
                    ResolverActivity.this.mOnceButton.setEnabled(z);
                    if (z) {
                        ResolverActivity.this.mAdapterView.smoothScrollToPosition(checkedItemPosition);
                    }
                    ResolverActivity.this.mLastSelected = checkedItemPosition;
                    return;
                }
                ResolverActivity.this.startSelected(i, false, true);
            }
        }

        @Override // android.widget.AdapterView.OnItemLongClickListener
        public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
            ListView listView = adapterView instanceof ListView ? (ListView) adapterView : null;
            if (listView != null) {
                i -= listView.getHeaderViewsCount();
            }
            if (i < 0) {
                return false;
            }
            ResolverActivity.this.showTargetDetails(ResolverActivity.this.mAdapter.resolveInfoForPosition(i, true));
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public abstract class LoadIconTask extends AsyncTask<Void, Void, Drawable> {
        protected final DisplayResolveInfo mDisplayResolveInfo;
        private final ResolveInfo mResolveInfo;

        public LoadIconTask(DisplayResolveInfo displayResolveInfo) {
            this.mDisplayResolveInfo = displayResolveInfo;
            this.mResolveInfo = displayResolveInfo.getResolveInfo();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Drawable doInBackground(Void... voidArr) {
            return ResolverActivity.this.loadIconForResolveInfo(this.mResolveInfo);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.AsyncTask
        public void onPostExecute(Drawable drawable) {
            this.mDisplayResolveInfo.setDisplayIcon(drawable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public class LoadAdapterIconTask extends LoadIconTask {
        public LoadAdapterIconTask(DisplayResolveInfo displayResolveInfo) {
            super(displayResolveInfo);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.android.internal.app.ResolverActivity.LoadIconTask, android.os.AsyncTask
        public void onPostExecute(Drawable drawable) {
            super.onPostExecute(drawable);
            if (ResolverActivity.this.mProfileView != null && ResolverActivity.this.mAdapter.getOtherProfile() == this.mDisplayResolveInfo) {
                ResolverActivity.this.bindProfileView();
            }
            ResolverActivity.this.mAdapter.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public class LoadIconIntoViewTask extends LoadIconTask {
        private final ImageView mTargetView;

        public LoadIconIntoViewTask(DisplayResolveInfo displayResolveInfo, ImageView imageView) {
            super(displayResolveInfo);
            this.mTargetView = imageView;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.android.internal.app.ResolverActivity.LoadIconTask, android.os.AsyncTask
        public void onPostExecute(Drawable drawable) {
            super.onPostExecute(drawable);
            this.mTargetView.setImageDrawable(drawable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class PickTargetOptionRequest extends VoiceInteractor.PickOptionRequest {
        public PickTargetOptionRequest(VoiceInteractor.Prompt prompt, VoiceInteractor.PickOptionRequest.Option[] optionArr, Bundle bundle) {
            super(prompt, optionArr, bundle);
        }

        @Override // android.app.VoiceInteractor.Request
        public void onCancel() {
            super.onCancel();
            ResolverActivity resolverActivity = (ResolverActivity) getActivity();
            if (resolverActivity != null) {
                resolverActivity.mPickOptionRequest = null;
                resolverActivity.finish();
            }
        }

        @Override // android.app.VoiceInteractor.PickOptionRequest
        public void onPickOptionResult(boolean z, VoiceInteractor.PickOptionRequest.Option[] optionArr, Bundle bundle) {
            ResolverActivity resolverActivity;
            super.onPickOptionResult(z, optionArr, bundle);
            if (optionArr.length == 1 && (resolverActivity = (ResolverActivity) getActivity()) != null && resolverActivity.onTargetSelected(resolverActivity.mAdapter.getItem(optionArr[0].getIndex()), false)) {
                resolverActivity.mPickOptionRequest = null;
                resolverActivity.finish();
            }
        }
    }
}
