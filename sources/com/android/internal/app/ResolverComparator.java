package com.android.internal.app;

import android.app.usage.UsageStats;
import android.app.usage.UsageStatsManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.metrics.LogMaker;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.UserHandle;
import android.service.resolver.IResolverRankerResult;
import android.service.resolver.IResolverRankerService;
import android.service.resolver.ResolverTarget;
import android.util.ArrayMap;
import android.util.Log;
import com.android.internal.app.ResolverActivity;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.logging.nano.MetricsProto;
import com.facebook.common.util.UriUtil;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes3.dex */
public class ResolverComparator implements Comparator<ResolverActivity.ResolvedComponentInfo> {
    private static final int CONNECTION_COST_TIMEOUT_MILLIS = 200;
    private static final boolean DEBUG = false;
    private static final int NUM_OF_TOP_ANNOTATIONS_TO_USE = 3;
    private static final float RECENCY_MULTIPLIER = 2.0f;
    private static final long RECENCY_TIME_PERIOD = 43200000;
    private static final int RESOLVER_RANKER_RESULT_TIMEOUT = 1;
    private static final int RESOLVER_RANKER_SERVICE_RESULT = 0;
    private static final String TAG = "ResolverComparator";
    private static final long USAGE_STATS_PERIOD = 604800000;
    private static final int WATCHDOG_TIMEOUT_MILLIS = 500;
    private String mAction;
    private AfterCompute mAfterCompute;
    private String[] mAnnotations;
    private final Collator mCollator;
    private CountDownLatch mConnectSignal;
    private ResolverRankerServiceConnection mConnection;
    private String mContentType;
    private Context mContext;
    private final long mCurrentTime;
    private final boolean mHttp;
    private final PackageManager mPm;
    private IResolverRankerService mRanker;
    private ComponentName mRankerServiceName;
    private final String mReferrerPackage;
    private ComponentName mResolvedRankerName;
    private final long mSinceTime;
    private final Map<String, UsageStats> mStats;
    private ArrayList<ResolverTarget> mTargets;
    private final UsageStatsManager mUsm;
    private final LinkedHashMap<ComponentName, ResolverTarget> mTargetsDict = new LinkedHashMap<>();
    private final Object mLock = new Object();
    private final Handler mHandler = new Handler(Looper.getMainLooper()) { // from class: com.android.internal.app.ResolverComparator.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    if (ResolverComparator.this.mHandler.hasMessages(1)) {
                        if (message.obj != null) {
                            List list = (List) message.obj;
                            if (list != null && ResolverComparator.this.mTargets != null && list.size() == ResolverComparator.this.mTargets.size()) {
                                int size = ResolverComparator.this.mTargets.size();
                                boolean z = false;
                                for (int i = 0; i < size; i++) {
                                    float selectProbability = ((ResolverTarget) list.get(i)).getSelectProbability();
                                    if (selectProbability != ((ResolverTarget) ResolverComparator.this.mTargets.get(i)).getSelectProbability()) {
                                        ((ResolverTarget) ResolverComparator.this.mTargets.get(i)).setSelectProbability(selectProbability);
                                        z = true;
                                    }
                                }
                                if (z) {
                                    ResolverComparator.this.mRankerServiceName = ResolverComparator.this.mResolvedRankerName;
                                }
                            } else {
                                Log.e(ResolverComparator.TAG, "Sizes of sent and received ResolverTargets diff.");
                            }
                        } else {
                            Log.e(ResolverComparator.TAG, "Receiving null prediction results.");
                        }
                        ResolverComparator.this.mHandler.removeMessages(1);
                        ResolverComparator.this.mAfterCompute.afterCompute();
                        return;
                    }
                    return;
                case 1:
                    ResolverComparator.this.mHandler.removeMessages(0);
                    ResolverComparator.this.mAfterCompute.afterCompute();
                    return;
                default:
                    super.handleMessage(message);
                    return;
            }
        }
    };

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface AfterCompute {
        void afterCompute();
    }

    public ResolverComparator(Context context, Intent intent, String str, AfterCompute afterCompute) {
        this.mCollator = Collator.getInstance(context.getResources().getConfiguration().locale);
        String scheme = intent.getScheme();
        this.mHttp = UriUtil.HTTP_SCHEME.equals(scheme) || UriUtil.HTTPS_SCHEME.equals(scheme);
        this.mReferrerPackage = str;
        this.mAfterCompute = afterCompute;
        this.mContext = context;
        this.mPm = context.getPackageManager();
        this.mUsm = (UsageStatsManager) context.getSystemService("usagestats");
        this.mCurrentTime = System.currentTimeMillis();
        this.mSinceTime = this.mCurrentTime - USAGE_STATS_PERIOD;
        this.mStats = this.mUsm.queryAndAggregateUsageStats(this.mSinceTime, this.mCurrentTime);
        this.mContentType = intent.getType();
        getContentAnnotations(intent);
        this.mAction = intent.getAction();
        this.mRankerServiceName = new ComponentName(this.mContext, getClass());
    }

    public void getContentAnnotations(Intent intent) {
        ArrayList<String> stringArrayListExtra = intent.getStringArrayListExtra("android.intent.extra.CONTENT_ANNOTATIONS");
        if (stringArrayListExtra != null) {
            int size = stringArrayListExtra.size();
            if (size > 3) {
                size = 3;
            }
            this.mAnnotations = new String[size];
            for (int i = 0; i < size; i++) {
                this.mAnnotations[i] = stringArrayListExtra.get(i);
            }
        }
    }

    public void setCallBack(AfterCompute afterCompute) {
        this.mAfterCompute = afterCompute;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0062, code lost:
    
        if (r3 > r7) goto L15;
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ec  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void compute(List<ResolverActivity.ResolvedComponentInfo> list) {
        long j;
        float f;
        reset();
        long j2 = this.mCurrentTime - RECENCY_TIME_PERIOD;
        float f2 = 1.0f;
        float f3 = 1.0f;
        float f4 = 1.0f;
        float f5 = 1.0f;
        for (ResolverActivity.ResolvedComponentInfo resolvedComponentInfo : list) {
            ResolverTarget resolverTarget = new ResolverTarget();
            this.mTargetsDict.put(resolvedComponentInfo.name, resolverTarget);
            UsageStats usageStats = this.mStats.get(resolvedComponentInfo.name.getPackageName());
            if (usageStats != null) {
                if (!resolvedComponentInfo.name.getPackageName().equals(this.mReferrerPackage) && !isPersistentProcess(resolvedComponentInfo)) {
                    f = (float) Math.max(usageStats.getLastTimeUsed() - j2, 0L);
                    resolverTarget.setRecencyScore(f);
                }
                f = f2;
                float totalTimeInForeground = (float) usageStats.getTotalTimeInForeground();
                resolverTarget.setTimeSpentScore(totalTimeInForeground);
                if (totalTimeInForeground <= f3) {
                    totalTimeInForeground = f3;
                }
                float f6 = usageStats.mLaunchCount;
                resolverTarget.setLaunchScore(f6);
                if (f6 <= f4) {
                    f6 = f4;
                }
                float f7 = 0.0f;
                if (usageStats.mChooserCounts != null && this.mAction != null && usageStats.mChooserCounts.get(this.mAction) != null) {
                    f7 = ((Integer) ((ArrayMap) usageStats.mChooserCounts.get(this.mAction)).getOrDefault(this.mContentType, 0)).intValue();
                    if (this.mAnnotations != null) {
                        float f8 = f7;
                        int i = 0;
                        while (i < this.mAnnotations.length) {
                            f8 += ((Integer) ((ArrayMap) usageStats.mChooserCounts.get(this.mAction)).getOrDefault(this.mAnnotations[i], 0)).intValue();
                            i++;
                            j2 = j2;
                        }
                        j = j2;
                        f7 = f8;
                        resolverTarget.setChooserScore(f7);
                        if (f7 > f5) {
                            f5 = f7;
                        }
                        f4 = f6;
                        f3 = totalTimeInForeground;
                        f2 = f;
                    }
                }
                j = j2;
                resolverTarget.setChooserScore(f7);
                if (f7 > f5) {
                }
                f4 = f6;
                f3 = totalTimeInForeground;
                f2 = f;
            } else {
                j = j2;
            }
            j2 = j;
        }
        this.mTargets = new ArrayList<>(this.mTargetsDict.values());
        Iterator<ResolverTarget> it = this.mTargets.iterator();
        while (it.hasNext()) {
            ResolverTarget next = it.next();
            float recencyScore = next.getRecencyScore() / f2;
            setFeatures(next, recencyScore * recencyScore * RECENCY_MULTIPLIER, next.getLaunchScore() / f4, next.getTimeSpentScore() / f3, next.getChooserScore() / f5);
            addDefaultSelectProbability(next);
        }
        predictSelectProbabilities(this.mTargets);
    }

    @Override // java.util.Comparator
    public int compare(ResolverActivity.ResolvedComponentInfo resolvedComponentInfo, ResolverActivity.ResolvedComponentInfo resolvedComponentInfo2) {
        int compare;
        boolean isSpecificUriMatch;
        ResolveInfo resolveInfoAt = resolvedComponentInfo.getResolveInfoAt(0);
        ResolveInfo resolveInfoAt2 = resolvedComponentInfo2.getResolveInfoAt(0);
        if (resolveInfoAt.targetUserId != -2) {
            return resolveInfoAt2.targetUserId != -2 ? 0 : 1;
        }
        if (resolveInfoAt2.targetUserId != -2) {
            return -1;
        }
        if (this.mHttp && (isSpecificUriMatch = ResolverActivity.isSpecificUriMatch(resolveInfoAt.match)) != ResolverActivity.isSpecificUriMatch(resolveInfoAt2.match)) {
            return isSpecificUriMatch ? -1 : 1;
        }
        boolean isPinned = resolvedComponentInfo.isPinned();
        boolean isPinned2 = resolvedComponentInfo2.isPinned();
        if (isPinned && !isPinned2) {
            return -1;
        }
        if (!isPinned && isPinned2) {
            return 1;
        }
        if (!isPinned && !isPinned2 && this.mStats != null) {
            ResolverTarget resolverTarget = this.mTargetsDict.get(new ComponentName(resolveInfoAt.activityInfo.packageName, resolveInfoAt.activityInfo.name));
            ResolverTarget resolverTarget2 = this.mTargetsDict.get(new ComponentName(resolveInfoAt2.activityInfo.packageName, resolveInfoAt2.activityInfo.name));
            if (resolverTarget != null && resolverTarget2 != null && (compare = Float.compare(resolverTarget2.getSelectProbability(), resolverTarget.getSelectProbability())) != 0) {
                return compare > 0 ? 1 : -1;
            }
        }
        CharSequence loadLabel = resolveInfoAt.loadLabel(this.mPm);
        if (loadLabel == null) {
            loadLabel = resolveInfoAt.activityInfo.name;
        }
        CharSequence loadLabel2 = resolveInfoAt2.loadLabel(this.mPm);
        if (loadLabel2 == null) {
            loadLabel2 = resolveInfoAt2.activityInfo.name;
        }
        return this.mCollator.compare(loadLabel.toString().trim(), loadLabel2.toString().trim());
    }

    public float getScore(ComponentName componentName) {
        ResolverTarget resolverTarget = this.mTargetsDict.get(componentName);
        if (resolverTarget != null) {
            return resolverTarget.getSelectProbability();
        }
        return 0.0f;
    }

    public void updateChooserCounts(String str, int i, String str2) {
        if (this.mUsm != null) {
            this.mUsm.reportChooserSelection(str, i, this.mContentType, this.mAnnotations, str2);
        }
    }

    public void updateModel(ComponentName componentName) {
        synchronized (this.mLock) {
            if (this.mRanker != null) {
                try {
                    int indexOf = new ArrayList(this.mTargetsDict.keySet()).indexOf(componentName);
                    if (indexOf >= 0 && this.mTargets != null) {
                        float score = getScore(componentName);
                        int i = 0;
                        Iterator<ResolverTarget> it = this.mTargets.iterator();
                        while (it.hasNext()) {
                            if (it.next().getSelectProbability() > score) {
                                i++;
                            }
                        }
                        logMetrics(i);
                        this.mRanker.train(this.mTargets, indexOf);
                    }
                } catch (RemoteException e) {
                    Log.e(TAG, "Error in Train: " + e);
                }
            }
        }
    }

    public void destroy() {
        this.mHandler.removeMessages(0);
        this.mHandler.removeMessages(1);
        if (this.mConnection != null) {
            this.mContext.unbindService(this.mConnection);
            this.mConnection.destroy();
        }
        if (this.mAfterCompute != null) {
            this.mAfterCompute.afterCompute();
        }
    }

    private void logMetrics(int i) {
        if (this.mRankerServiceName != null) {
            MetricsLogger metricsLogger = new MetricsLogger();
            LogMaker logMaker = new LogMaker(MetricsProto.MetricsEvent.ACTION_TARGET_SELECTED);
            logMaker.setComponentName(this.mRankerServiceName);
            logMaker.addTaggedData(MetricsProto.MetricsEvent.FIELD_IS_CATEGORY_USED, Integer.valueOf(this.mAnnotations == null ? 0 : 1));
            logMaker.addTaggedData(MetricsProto.MetricsEvent.FIELD_RANKED_POSITION, Integer.valueOf(i));
            metricsLogger.write(logMaker);
        }
    }

    private void initRanker(Context context) {
        synchronized (this.mLock) {
            if (this.mConnection == null || this.mRanker == null) {
                Intent resolveRankerService = resolveRankerService();
                if (resolveRankerService == null) {
                    return;
                }
                this.mConnectSignal = new CountDownLatch(1);
                this.mConnection = new ResolverRankerServiceConnection(this.mConnectSignal);
                context.bindServiceAsUser(resolveRankerService, this.mConnection, 1, UserHandle.SYSTEM);
            }
        }
    }

    private Intent resolveRankerService() {
        Intent intent = new Intent("android.service.resolver.ResolverRankerService");
        for (ResolveInfo resolveInfo : this.mPm.queryIntentServices(intent, 0)) {
            if (resolveInfo != null && resolveInfo.serviceInfo != null && resolveInfo.serviceInfo.applicationInfo != null) {
                ComponentName componentName = new ComponentName(resolveInfo.serviceInfo.applicationInfo.packageName, resolveInfo.serviceInfo.name);
                try {
                    if (!"android.permission.BIND_RESOLVER_RANKER_SERVICE".equals(this.mPm.getServiceInfo(componentName, 0).permission)) {
                        Log.w(TAG, "ResolverRankerService " + componentName + " does not require permission android.permission.BIND_RESOLVER_RANKER_SERVICE - this service will not be queried for ResolverComparator. add android:permission=\"android.permission.BIND_RESOLVER_RANKER_SERVICE\" to the <service> tag for " + componentName + " in the manifest.");
                    } else {
                        if (this.mPm.checkPermission("android.permission.PROVIDE_RESOLVER_RANKER_SERVICE", resolveInfo.serviceInfo.packageName) == 0) {
                            this.mResolvedRankerName = componentName;
                            intent.setComponent(componentName);
                            return intent;
                        }
                        Log.w(TAG, "ResolverRankerService " + componentName + " does not hold permission android.permission.PROVIDE_RESOLVER_RANKER_SERVICE - this service will not be queried for ResolverComparator.");
                    }
                } catch (PackageManager.NameNotFoundException unused) {
                    Log.e(TAG, "Could not look up service " + componentName + "; component name not found");
                }
            }
        }
        return null;
    }

    private void startWatchDog(int i) {
        if (this.mHandler == null) {
            Log.d(TAG, "Error: Handler is Null; Needs to be initialized.");
        }
        this.mHandler.sendEmptyMessageDelayed(1, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public class ResolverRankerServiceConnection implements ServiceConnection {
        private final CountDownLatch mConnectSignal;
        public final IResolverRankerResult resolverRankerResult = new IResolverRankerResult.Stub() { // from class: com.android.internal.app.ResolverComparator.ResolverRankerServiceConnection.1
            public void sendResult(List<ResolverTarget> list) throws RemoteException {
                synchronized (ResolverComparator.this.mLock) {
                    Message obtain = Message.obtain();
                    obtain.what = 0;
                    obtain.obj = list;
                    ResolverComparator.this.mHandler.sendMessage(obtain);
                }
            }
        };

        public ResolverRankerServiceConnection(CountDownLatch countDownLatch) {
            this.mConnectSignal = countDownLatch;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            synchronized (ResolverComparator.this.mLock) {
                ResolverComparator.this.mRanker = IResolverRankerService.Stub.asInterface(iBinder);
                this.mConnectSignal.countDown();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            synchronized (ResolverComparator.this.mLock) {
                destroy();
            }
        }

        public void destroy() {
            synchronized (ResolverComparator.this.mLock) {
                ResolverComparator.this.mRanker = null;
            }
        }
    }

    private void reset() {
        this.mTargetsDict.clear();
        this.mTargets = null;
        this.mRankerServiceName = new ComponentName(this.mContext, getClass());
        this.mResolvedRankerName = null;
        startWatchDog(500);
        initRanker(this.mContext);
    }

    private void predictSelectProbabilities(List<ResolverTarget> list) {
        if (this.mConnection != null) {
            try {
                this.mConnectSignal.await(200L, TimeUnit.MILLISECONDS);
                synchronized (this.mLock) {
                    if (this.mRanker != null) {
                        this.mRanker.predict(list, this.mConnection.resolverRankerResult);
                        return;
                    }
                }
            } catch (RemoteException e) {
                Log.e(TAG, "Error in Predict: " + e);
            } catch (InterruptedException unused) {
                Log.e(TAG, "Error in Wait for Service Connection.");
            }
        }
        if (this.mAfterCompute != null) {
            this.mAfterCompute.afterCompute();
        }
    }

    private void addDefaultSelectProbability(ResolverTarget resolverTarget) {
        resolverTarget.setSelectProbability((float) (1.0d / (Math.exp(1.6568f - ((((resolverTarget.getLaunchScore() * 2.5543f) + (resolverTarget.getTimeSpentScore() * 2.8412f)) + (resolverTarget.getRecencyScore() * 0.269f)) + (resolverTarget.getChooserScore() * 4.2222f))) + 1.0d)));
    }

    private void setFeatures(ResolverTarget resolverTarget, float f, float f2, float f3, float f4) {
        resolverTarget.setRecencyScore(f);
        resolverTarget.setLaunchScore(f2);
        resolverTarget.setTimeSpentScore(f3);
        resolverTarget.setChooserScore(f4);
    }

    static boolean isPersistentProcess(ResolverActivity.ResolvedComponentInfo resolvedComponentInfo) {
        return (resolvedComponentInfo == null || resolvedComponentInfo.getCount() <= 0 || (resolvedComponentInfo.getResolveInfoAt(0).activityInfo.applicationInfo.flags & 8) == 0) ? false : true;
    }
}
