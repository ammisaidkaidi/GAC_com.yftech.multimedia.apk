package android.nfc;

import android.app.Activity;
import android.app.Application;
import android.content.ContentProvider;
import android.content.ContentResolver;
import android.net.Uri;
import android.net.wifi.WifiEnterpriseConfig;
import android.nfc.IAppCallback;
import android.nfc.NfcAdapter;
import android.os.Binder;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public final class NfcActivityManager extends IAppCallback.Stub implements Application.ActivityLifecycleCallbacks {
    static final Boolean DBG = false;
    static final String TAG = "NFC";
    final NfcAdapter mAdapter;
    final List<NfcActivityState> mActivities = new LinkedList();
    final List<NfcApplicationState> mApps = new ArrayList(1);

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class NfcApplicationState {
        final Application app;
        int refCount = 0;

        public NfcApplicationState(Application application) {
            this.app = application;
        }

        public void register() {
            this.refCount++;
            if (this.refCount == 1) {
                this.app.registerActivityLifecycleCallbacks(NfcActivityManager.this);
            }
        }

        public void unregister() {
            this.refCount--;
            if (this.refCount == 0) {
                this.app.unregisterActivityLifecycleCallbacks(NfcActivityManager.this);
            } else if (this.refCount < 0) {
                Log.e(NfcActivityManager.TAG, "-ve refcount for " + this.app);
            }
        }
    }

    NfcApplicationState findAppState(Application application) {
        for (NfcApplicationState nfcApplicationState : this.mApps) {
            if (nfcApplicationState.app == application) {
                return nfcApplicationState;
            }
        }
        return null;
    }

    void registerApplication(Application application) {
        NfcApplicationState findAppState = findAppState(application);
        if (findAppState == null) {
            findAppState = new NfcApplicationState(application);
            this.mApps.add(findAppState);
        }
        findAppState.register();
    }

    void unregisterApplication(Application application) {
        NfcApplicationState findAppState = findAppState(application);
        if (findAppState == null) {
            Log.e(TAG, "app was not registered " + application);
            return;
        }
        findAppState.unregister();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class NfcActivityState {
        Activity activity;
        boolean resumed;
        Binder token;
        NdefMessage ndefMessage = null;
        NfcAdapter.CreateNdefMessageCallback ndefMessageCallback = null;
        NfcAdapter.OnNdefPushCompleteCallback onNdefPushCompleteCallback = null;
        NfcAdapter.CreateBeamUrisCallback uriCallback = null;
        Uri[] uris = null;
        int flags = 0;
        int readerModeFlags = 0;
        NfcAdapter.ReaderCallback readerCallback = null;
        Bundle readerModeExtras = null;

        public NfcActivityState(Activity activity) {
            this.resumed = false;
            if (activity.getWindow().isDestroyed()) {
                throw new IllegalStateException("activity is already destroyed");
            }
            this.resumed = activity.isResumed();
            this.activity = activity;
            this.token = new Binder();
            NfcActivityManager.this.registerApplication(activity.getApplication());
        }

        public void destroy() {
            NfcActivityManager.this.unregisterApplication(this.activity.getApplication());
            this.resumed = false;
            this.activity = null;
            this.ndefMessage = null;
            this.ndefMessageCallback = null;
            this.onNdefPushCompleteCallback = null;
            this.uriCallback = null;
            this.uris = null;
            this.readerModeFlags = 0;
            this.token = null;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("[");
            sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
            sb.append(this.ndefMessage);
            sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
            sb.append(this.ndefMessageCallback);
            sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
            sb.append(this.uriCallback);
            sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
            if (this.uris != null) {
                for (Uri uri : this.uris) {
                    sb.append(this.onNdefPushCompleteCallback);
                    sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
                    sb.append(uri);
                    sb.append("]");
                }
            }
            return sb.toString();
        }
    }

    synchronized NfcActivityState findActivityState(Activity activity) {
        for (NfcActivityState nfcActivityState : this.mActivities) {
            if (nfcActivityState.activity == activity) {
                return nfcActivityState;
            }
        }
        return null;
    }

    synchronized NfcActivityState getActivityState(Activity activity) {
        NfcActivityState findActivityState;
        findActivityState = findActivityState(activity);
        if (findActivityState == null) {
            findActivityState = new NfcActivityState(activity);
            this.mActivities.add(findActivityState);
        }
        return findActivityState;
    }

    synchronized NfcActivityState findResumedActivityState() {
        for (NfcActivityState nfcActivityState : this.mActivities) {
            if (nfcActivityState.resumed) {
                return nfcActivityState;
            }
        }
        return null;
    }

    synchronized void destroyActivityState(Activity activity) {
        NfcActivityState findActivityState = findActivityState(activity);
        if (findActivityState != null) {
            findActivityState.destroy();
            this.mActivities.remove(findActivityState);
        }
    }

    public NfcActivityManager(NfcAdapter nfcAdapter) {
        this.mAdapter = nfcAdapter;
    }

    public void enableReaderMode(Activity activity, NfcAdapter.ReaderCallback readerCallback, int i, Bundle bundle) {
        Binder binder;
        boolean z;
        synchronized (this) {
            NfcActivityState activityState = getActivityState(activity);
            activityState.readerCallback = readerCallback;
            activityState.readerModeFlags = i;
            activityState.readerModeExtras = bundle;
            binder = activityState.token;
            z = activityState.resumed;
        }
        if (z) {
            setReaderMode(binder, i, bundle);
        }
    }

    public void disableReaderMode(Activity activity) {
        Binder binder;
        boolean z;
        synchronized (this) {
            NfcActivityState activityState = getActivityState(activity);
            activityState.readerCallback = null;
            activityState.readerModeFlags = 0;
            activityState.readerModeExtras = null;
            binder = activityState.token;
            z = activityState.resumed;
        }
        if (z) {
            setReaderMode(binder, 0, null);
        }
    }

    public void setReaderMode(Binder binder, int i, Bundle bundle) {
        if (DBG.booleanValue()) {
            Log.d(TAG, "Setting reader mode");
        }
        try {
            NfcAdapter.sService.setReaderMode(binder, this, i, bundle);
        } catch (RemoteException e) {
            this.mAdapter.attemptDeadServiceRecovery(e);
        }
    }

    public void setNdefPushContentUri(Activity activity, Uri[] uriArr) {
        boolean z;
        synchronized (this) {
            NfcActivityState activityState = getActivityState(activity);
            activityState.uris = uriArr;
            z = activityState.resumed;
        }
        if (z) {
            requestNfcServiceCallback();
        } else {
            verifyNfcPermission();
        }
    }

    public void setNdefPushContentUriCallback(Activity activity, NfcAdapter.CreateBeamUrisCallback createBeamUrisCallback) {
        boolean z;
        synchronized (this) {
            NfcActivityState activityState = getActivityState(activity);
            activityState.uriCallback = createBeamUrisCallback;
            z = activityState.resumed;
        }
        if (z) {
            requestNfcServiceCallback();
        } else {
            verifyNfcPermission();
        }
    }

    public void setNdefPushMessage(Activity activity, NdefMessage ndefMessage, int i) {
        boolean z;
        synchronized (this) {
            NfcActivityState activityState = getActivityState(activity);
            activityState.ndefMessage = ndefMessage;
            activityState.flags = i;
            z = activityState.resumed;
        }
        if (z) {
            requestNfcServiceCallback();
        } else {
            verifyNfcPermission();
        }
    }

    public void setNdefPushMessageCallback(Activity activity, NfcAdapter.CreateNdefMessageCallback createNdefMessageCallback, int i) {
        boolean z;
        synchronized (this) {
            NfcActivityState activityState = getActivityState(activity);
            activityState.ndefMessageCallback = createNdefMessageCallback;
            activityState.flags = i;
            z = activityState.resumed;
        }
        if (z) {
            requestNfcServiceCallback();
        } else {
            verifyNfcPermission();
        }
    }

    public void setOnNdefPushCompleteCallback(Activity activity, NfcAdapter.OnNdefPushCompleteCallback onNdefPushCompleteCallback) {
        boolean z;
        synchronized (this) {
            NfcActivityState activityState = getActivityState(activity);
            activityState.onNdefPushCompleteCallback = onNdefPushCompleteCallback;
            z = activityState.resumed;
        }
        if (z) {
            requestNfcServiceCallback();
        } else {
            verifyNfcPermission();
        }
    }

    void requestNfcServiceCallback() {
        try {
            NfcAdapter.sService.setAppCallback(this);
        } catch (RemoteException e) {
            this.mAdapter.attemptDeadServiceRecovery(e);
        }
    }

    void verifyNfcPermission() {
        try {
            NfcAdapter.sService.verifyNfcPermission();
        } catch (RemoteException e) {
            this.mAdapter.attemptDeadServiceRecovery(e);
        }
    }

    @Override // android.nfc.IAppCallback
    public BeamShareData createBeamShareData(byte b) {
        NfcEvent nfcEvent = new NfcEvent(this.mAdapter, b);
        synchronized (this) {
            NfcActivityState findResumedActivityState = findResumedActivityState();
            if (findResumedActivityState == null) {
                return null;
            }
            NfcAdapter.CreateNdefMessageCallback createNdefMessageCallback = findResumedActivityState.ndefMessageCallback;
            NfcAdapter.CreateBeamUrisCallback createBeamUrisCallback = findResumedActivityState.uriCallback;
            NdefMessage ndefMessage = findResumedActivityState.ndefMessage;
            Uri[] uriArr = findResumedActivityState.uris;
            int i = findResumedActivityState.flags;
            Activity activity = findResumedActivityState.activity;
            long clearCallingIdentity = Binder.clearCallingIdentity();
            if (createNdefMessageCallback != null) {
                try {
                    ndefMessage = createNdefMessageCallback.createNdefMessage(nfcEvent);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                    throw th;
                }
            }
            if (createBeamUrisCallback != null && (uriArr = createBeamUrisCallback.createBeamUris(nfcEvent)) != null) {
                ArrayList arrayList = new ArrayList();
                for (Uri uri : uriArr) {
                    if (uri == null) {
                        Log.e(TAG, "Uri not allowed to be null.");
                    } else {
                        String scheme = uri.getScheme();
                        if (scheme != null && (scheme.equalsIgnoreCase(ContentResolver.SCHEME_FILE) || scheme.equalsIgnoreCase("content"))) {
                            arrayList.add(ContentProvider.maybeAddUserId(uri, activity.getUserId()));
                        }
                        Log.e(TAG, "Uri needs to have either scheme file or scheme content");
                    }
                }
                uriArr = (Uri[]) arrayList.toArray(new Uri[arrayList.size()]);
            }
            if (uriArr != null && uriArr.length > 0) {
                for (Uri uri2 : uriArr) {
                    activity.grantUriPermission("com.android.nfc", uri2, 1);
                }
            }
            Binder.restoreCallingIdentity(clearCallingIdentity);
            return new BeamShareData(ndefMessage, uriArr, activity.getUser(), i);
        }
    }

    @Override // android.nfc.IAppCallback
    public void onNdefPushComplete(byte b) {
        synchronized (this) {
            NfcActivityState findResumedActivityState = findResumedActivityState();
            if (findResumedActivityState == null) {
                return;
            }
            NfcAdapter.OnNdefPushCompleteCallback onNdefPushCompleteCallback = findResumedActivityState.onNdefPushCompleteCallback;
            NfcEvent nfcEvent = new NfcEvent(this.mAdapter, b);
            if (onNdefPushCompleteCallback != null) {
                onNdefPushCompleteCallback.onNdefPushComplete(nfcEvent);
            }
        }
    }

    @Override // android.nfc.IAppCallback
    public void onTagDiscovered(Tag tag) throws RemoteException {
        synchronized (this) {
            NfcActivityState findResumedActivityState = findResumedActivityState();
            if (findResumedActivityState == null) {
                return;
            }
            NfcAdapter.ReaderCallback readerCallback = findResumedActivityState.readerCallback;
            if (readerCallback != null) {
                readerCallback.onTagDiscovered(tag);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        synchronized (this) {
            NfcActivityState findActivityState = findActivityState(activity);
            if (DBG.booleanValue()) {
                Log.d(TAG, "onResume() for " + activity + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + findActivityState);
            }
            if (findActivityState == null) {
                return;
            }
            findActivityState.resumed = true;
            Binder binder = findActivityState.token;
            int i = findActivityState.readerModeFlags;
            Bundle bundle = findActivityState.readerModeExtras;
            if (i != 0) {
                setReaderMode(binder, i, bundle);
            }
            requestNfcServiceCallback();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        synchronized (this) {
            NfcActivityState findActivityState = findActivityState(activity);
            if (DBG.booleanValue()) {
                Log.d(TAG, "onPause() for " + activity + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + findActivityState);
            }
            if (findActivityState == null) {
                return;
            }
            findActivityState.resumed = false;
            Binder binder = findActivityState.token;
            boolean z = findActivityState.readerModeFlags != 0;
            if (z) {
                setReaderMode(binder, 0, null);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        synchronized (this) {
            NfcActivityState findActivityState = findActivityState(activity);
            if (DBG.booleanValue()) {
                Log.d(TAG, "onDestroy() for " + activity + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + findActivityState);
            }
            if (findActivityState != null) {
                destroyActivityState(activity);
            }
        }
    }
}
