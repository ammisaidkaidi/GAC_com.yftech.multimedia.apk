package android.app;

import android.accessibilityservice.AccessibilityService;
import android.accessibilityservice.AccessibilityServiceInfo;
import android.accessibilityservice.IAccessibilityServiceClient;
import android.accessibilityservice.IAccessibilityServiceConnection;
import android.app.UiAutomation;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.Region;
import android.hardware.display.DisplayManagerGlobal;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.UserHandle;
import android.util.Log;
import android.view.Display;
import android.view.InputEvent;
import android.view.KeyEvent;
import android.view.WindowAnimationFrameStats;
import android.view.WindowContentFrameStats;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityInteractionClient;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityWindowInfo;
import com.android.internal.util.function.pooled.PooledLambda;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeoutException;
import java.util.function.BiConsumer;
import libcore.io.IoUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public final class UiAutomation {
    private static final int CONNECTION_ID_UNDEFINED = -1;
    private static final long CONNECT_TIMEOUT_MILLIS = 5000;
    private static final boolean DEBUG = false;
    public static final int FLAG_DONT_SUPPRESS_ACCESSIBILITY_SERVICES = 1;
    private static final String LOG_TAG = "UiAutomation";
    public static final int ROTATION_FREEZE_0 = 0;
    public static final int ROTATION_FREEZE_180 = 2;
    public static final int ROTATION_FREEZE_270 = 3;
    public static final int ROTATION_FREEZE_90 = 1;
    public static final int ROTATION_FREEZE_CURRENT = -1;
    public static final int ROTATION_UNFREEZE = -2;
    private IAccessibilityServiceClient mClient;
    private int mFlags;
    private boolean mIsConnecting;
    private boolean mIsDestroyed;
    private long mLastEventTimeMillis;
    private final Handler mLocalCallbackHandler;
    private OnAccessibilityEventListener mOnAccessibilityEventListener;
    private HandlerThread mRemoteCallbackThread;
    private final IUiAutomationConnection mUiAutomationConnection;
    private boolean mWaitingForEventDelivery;
    private final Object mLock = new Object();
    private final ArrayList<AccessibilityEvent> mEventQueue = new ArrayList<>();
    private int mConnectionId = -1;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface AccessibilityEventFilter {
        boolean accept(AccessibilityEvent accessibilityEvent);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnAccessibilityEventListener {
        void onAccessibilityEvent(AccessibilityEvent accessibilityEvent);
    }

    private static float getDegreesForRotation(int i) {
        switch (i) {
            case 1:
                return 270.0f;
            case 2:
                return 180.0f;
            case 3:
                return 90.0f;
            default:
                return 0.0f;
        }
    }

    public UiAutomation(Looper looper, IUiAutomationConnection iUiAutomationConnection) {
        if (looper == null) {
            throw new IllegalArgumentException("Looper cannot be null!");
        }
        if (iUiAutomationConnection == null) {
            throw new IllegalArgumentException("Connection cannot be null!");
        }
        this.mLocalCallbackHandler = new Handler(looper);
        this.mUiAutomationConnection = iUiAutomationConnection;
    }

    public void connect() {
        connect(0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0061, code lost:
    
        throw new java.lang.RuntimeException("Error while connecting UiAutomation");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void connect(int i) {
        synchronized (this.mLock) {
            throwIfConnectedLocked();
            if (this.mIsConnecting) {
                return;
            }
            this.mIsConnecting = true;
            this.mRemoteCallbackThread = new HandlerThread(LOG_TAG);
            this.mRemoteCallbackThread.start();
            this.mClient = new IAccessibilityServiceClientImpl(this.mRemoteCallbackThread.getLooper());
            try {
                this.mUiAutomationConnection.connect(this.mClient, i);
                this.mFlags = i;
                synchronized (this.mLock) {
                    long uptimeMillis = SystemClock.uptimeMillis();
                    while (true) {
                        try {
                            if (!isConnectedLocked()) {
                                long uptimeMillis2 = CONNECT_TIMEOUT_MILLIS - (SystemClock.uptimeMillis() - uptimeMillis);
                                if (uptimeMillis2 <= 0) {
                                    break;
                                } else {
                                    try {
                                        this.mLock.wait(uptimeMillis2);
                                    } catch (InterruptedException unused) {
                                    }
                                }
                            }
                        } finally {
                            this.mIsConnecting = false;
                        }
                    }
                }
            } catch (RemoteException e) {
                throw new RuntimeException("Error while connecting UiAutomation", e);
            }
        }
    }

    public int getFlags() {
        return this.mFlags;
    }

    public void disconnect() {
        synchronized (this.mLock) {
            if (this.mIsConnecting) {
                throw new IllegalStateException("Cannot call disconnect() while connecting!");
            }
            throwIfNotConnectedLocked();
            this.mConnectionId = -1;
        }
        try {
            try {
                this.mUiAutomationConnection.disconnect();
            } catch (RemoteException e) {
                throw new RuntimeException("Error while disconnecting UiAutomation", e);
            }
        } finally {
            this.mRemoteCallbackThread.quit();
            this.mRemoteCallbackThread = null;
        }
    }

    public int getConnectionId() {
        int i;
        synchronized (this.mLock) {
            throwIfNotConnectedLocked();
            i = this.mConnectionId;
        }
        return i;
    }

    public boolean isDestroyed() {
        return this.mIsDestroyed;
    }

    public void setOnAccessibilityEventListener(OnAccessibilityEventListener onAccessibilityEventListener) {
        synchronized (this.mLock) {
            this.mOnAccessibilityEventListener = onAccessibilityEventListener;
        }
    }

    public void destroy() {
        disconnect();
        this.mIsDestroyed = true;
    }

    public final boolean performGlobalAction(int i) {
        IAccessibilityServiceConnection connection;
        synchronized (this.mLock) {
            throwIfNotConnectedLocked();
            AccessibilityInteractionClient.getInstance();
            connection = AccessibilityInteractionClient.getConnection(this.mConnectionId);
        }
        if (connection == null) {
            return false;
        }
        try {
            return connection.performGlobalAction(i);
        } catch (RemoteException e) {
            Log.w(LOG_TAG, "Error while calling performGlobalAction", e);
            return false;
        }
    }

    public AccessibilityNodeInfo findFocus(int i) {
        return AccessibilityInteractionClient.getInstance().findFocus(this.mConnectionId, -2, AccessibilityNodeInfo.ROOT_NODE_ID, i);
    }

    public final AccessibilityServiceInfo getServiceInfo() {
        IAccessibilityServiceConnection connection;
        synchronized (this.mLock) {
            throwIfNotConnectedLocked();
            AccessibilityInteractionClient.getInstance();
            connection = AccessibilityInteractionClient.getConnection(this.mConnectionId);
        }
        if (connection == null) {
            return null;
        }
        try {
            return connection.getServiceInfo();
        } catch (RemoteException e) {
            Log.w(LOG_TAG, "Error while getting AccessibilityServiceInfo", e);
            return null;
        }
    }

    public final void setServiceInfo(AccessibilityServiceInfo accessibilityServiceInfo) {
        IAccessibilityServiceConnection connection;
        synchronized (this.mLock) {
            throwIfNotConnectedLocked();
            AccessibilityInteractionClient.getInstance().clearCache();
            AccessibilityInteractionClient.getInstance();
            connection = AccessibilityInteractionClient.getConnection(this.mConnectionId);
        }
        if (connection != null) {
            try {
                connection.setServiceInfo(accessibilityServiceInfo);
            } catch (RemoteException e) {
                Log.w(LOG_TAG, "Error while setting AccessibilityServiceInfo", e);
            }
        }
    }

    public List<AccessibilityWindowInfo> getWindows() {
        int i;
        synchronized (this.mLock) {
            throwIfNotConnectedLocked();
            i = this.mConnectionId;
        }
        return AccessibilityInteractionClient.getInstance().getWindows(i);
    }

    public AccessibilityNodeInfo getRootInActiveWindow() {
        int i;
        synchronized (this.mLock) {
            throwIfNotConnectedLocked();
            i = this.mConnectionId;
        }
        return AccessibilityInteractionClient.getInstance().getRootInActiveWindow(i);
    }

    public boolean injectInputEvent(InputEvent inputEvent, boolean z) {
        synchronized (this.mLock) {
            throwIfNotConnectedLocked();
        }
        try {
            return this.mUiAutomationConnection.injectInputEvent(inputEvent, z);
        } catch (RemoteException e) {
            Log.e(LOG_TAG, "Error while injecting input event!", e);
            return false;
        }
    }

    public boolean setRotation(int i) {
        synchronized (this.mLock) {
            throwIfNotConnectedLocked();
        }
        switch (i) {
            case -2:
            case -1:
            case 0:
            case 1:
            case 2:
            case 3:
                try {
                    this.mUiAutomationConnection.setRotation(i);
                    return true;
                } catch (RemoteException e) {
                    Log.e(LOG_TAG, "Error while setting rotation!", e);
                    return false;
                }
            default:
                throw new IllegalArgumentException("Invalid rotation.");
        }
    }

    public AccessibilityEvent executeAndWaitForEvent(Runnable runnable, AccessibilityEventFilter accessibilityEventFilter, long j) throws TimeoutException {
        synchronized (this.mLock) {
            throwIfNotConnectedLocked();
            this.mEventQueue.clear();
            this.mWaitingForEventDelivery = true;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        runnable.run();
        ArrayList arrayList = new ArrayList();
        try {
            long uptimeMillis2 = SystemClock.uptimeMillis();
            while (true) {
                ArrayList arrayList2 = new ArrayList();
                synchronized (this.mLock) {
                    arrayList2.addAll(this.mEventQueue);
                    this.mEventQueue.clear();
                }
                while (!arrayList2.isEmpty()) {
                    AccessibilityEvent accessibilityEvent = (AccessibilityEvent) arrayList2.remove(0);
                    if (accessibilityEvent.getEventTime() >= uptimeMillis) {
                        if (!accessibilityEventFilter.accept(accessibilityEvent)) {
                            arrayList.add(accessibilityEvent);
                        } else {
                            int size = arrayList.size();
                            for (int i = 0; i < size; i++) {
                                ((AccessibilityEvent) arrayList.get(i)).recycle();
                            }
                            synchronized (this.mLock) {
                                this.mWaitingForEventDelivery = false;
                                this.mEventQueue.clear();
                                this.mLock.notifyAll();
                            }
                            return accessibilityEvent;
                        }
                    }
                }
                long uptimeMillis3 = j - (SystemClock.uptimeMillis() - uptimeMillis2);
                if (uptimeMillis3 <= 0) {
                    throw new TimeoutException("Expected event not received within: " + j + " ms among: " + arrayList);
                }
                synchronized (this.mLock) {
                    if (this.mEventQueue.isEmpty()) {
                        try {
                            this.mLock.wait(uptimeMillis3);
                        } catch (InterruptedException unused) {
                        }
                    }
                }
            }
        } catch (Throwable th) {
            int size2 = arrayList.size();
            for (int i2 = 0; i2 < size2; i2++) {
                ((AccessibilityEvent) arrayList.get(i2)).recycle();
            }
            synchronized (this.mLock) {
                this.mWaitingForEventDelivery = false;
                this.mEventQueue.clear();
                this.mLock.notifyAll();
                throw th;
            }
        }
    }

    public void waitForIdle(long j, long j2) throws TimeoutException {
        synchronized (this.mLock) {
            throwIfNotConnectedLocked();
            long uptimeMillis = SystemClock.uptimeMillis();
            if (this.mLastEventTimeMillis <= 0) {
                this.mLastEventTimeMillis = uptimeMillis;
            }
            while (true) {
                long uptimeMillis2 = SystemClock.uptimeMillis();
                if (j2 - (uptimeMillis2 - uptimeMillis) <= 0) {
                    throw new TimeoutException("No idle state with idle timeout: " + j + " within global timeout: " + j2);
                }
                long j3 = j - (uptimeMillis2 - this.mLastEventTimeMillis);
                if (j3 > 0) {
                    try {
                        this.mLock.wait(j3);
                    } catch (InterruptedException unused) {
                    }
                }
            }
        }
    }

    public Bitmap takeScreenshot() {
        synchronized (this.mLock) {
            throwIfNotConnectedLocked();
        }
        Display realDisplay = DisplayManagerGlobal.getInstance().getRealDisplay(0);
        Point point = new Point();
        realDisplay.getRealSize(point);
        try {
            Bitmap takeScreenshot = this.mUiAutomationConnection.takeScreenshot(new Rect(0, 0, point.x, point.y), realDisplay.getRotation());
            if (takeScreenshot == null) {
                return null;
            }
            takeScreenshot.setHasAlpha(false);
            return takeScreenshot;
        } catch (RemoteException e) {
            Log.e(LOG_TAG, "Error while taking screnshot!", e);
            return null;
        }
    }

    public void setRunAsMonkey(boolean z) {
        synchronized (this.mLock) {
            throwIfNotConnectedLocked();
        }
        try {
            ActivityManager.getService().setUserIsMonkey(z);
        } catch (RemoteException e) {
            Log.e(LOG_TAG, "Error while setting run as monkey!", e);
        }
    }

    public boolean clearWindowContentFrameStats(int i) {
        synchronized (this.mLock) {
            throwIfNotConnectedLocked();
        }
        try {
            return this.mUiAutomationConnection.clearWindowContentFrameStats(i);
        } catch (RemoteException e) {
            Log.e(LOG_TAG, "Error clearing window content frame stats!", e);
            return false;
        }
    }

    public WindowContentFrameStats getWindowContentFrameStats(int i) {
        synchronized (this.mLock) {
            throwIfNotConnectedLocked();
        }
        try {
            return this.mUiAutomationConnection.getWindowContentFrameStats(i);
        } catch (RemoteException e) {
            Log.e(LOG_TAG, "Error getting window content frame stats!", e);
            return null;
        }
    }

    public void clearWindowAnimationFrameStats() {
        synchronized (this.mLock) {
            throwIfNotConnectedLocked();
        }
        try {
            this.mUiAutomationConnection.clearWindowAnimationFrameStats();
        } catch (RemoteException e) {
            Log.e(LOG_TAG, "Error clearing window animation frame stats!", e);
        }
    }

    public WindowAnimationFrameStats getWindowAnimationFrameStats() {
        synchronized (this.mLock) {
            throwIfNotConnectedLocked();
        }
        try {
            return this.mUiAutomationConnection.getWindowAnimationFrameStats();
        } catch (RemoteException e) {
            Log.e(LOG_TAG, "Error getting window animation frame stats!", e);
            return null;
        }
    }

    public void grantRuntimePermission(String str, String str2) {
        grantRuntimePermissionAsUser(str, str2, Process.myUserHandle());
    }

    @Deprecated
    public boolean grantRuntimePermission(String str, String str2, UserHandle userHandle) {
        grantRuntimePermissionAsUser(str, str2, userHandle);
        return true;
    }

    public void grantRuntimePermissionAsUser(String str, String str2, UserHandle userHandle) {
        synchronized (this.mLock) {
            throwIfNotConnectedLocked();
        }
        try {
            this.mUiAutomationConnection.grantRuntimePermission(str, str2, userHandle.getIdentifier());
        } catch (Exception e) {
            throw new SecurityException("Error granting runtime permission", e);
        }
    }

    public void revokeRuntimePermission(String str, String str2) {
        revokeRuntimePermissionAsUser(str, str2, Process.myUserHandle());
    }

    @Deprecated
    public boolean revokeRuntimePermission(String str, String str2, UserHandle userHandle) {
        revokeRuntimePermissionAsUser(str, str2, userHandle);
        return true;
    }

    public void revokeRuntimePermissionAsUser(String str, String str2, UserHandle userHandle) {
        synchronized (this.mLock) {
            throwIfNotConnectedLocked();
        }
        try {
            this.mUiAutomationConnection.revokeRuntimePermission(str, str2, userHandle.getIdentifier());
        } catch (Exception e) {
            throw new SecurityException("Error granting runtime permission", e);
        }
    }

    public ParcelFileDescriptor executeShellCommand(String str) {
        ParcelFileDescriptor parcelFileDescriptor;
        ParcelFileDescriptor parcelFileDescriptor2;
        synchronized (this.mLock) {
            throwIfNotConnectedLocked();
        }
        warnIfBetterCommand(str);
        ParcelFileDescriptor parcelFileDescriptor3 = null;
        try {
            try {
                ParcelFileDescriptor[] createPipe = ParcelFileDescriptor.createPipe();
                parcelFileDescriptor = createPipe[0];
                try {
                    parcelFileDescriptor2 = createPipe[1];
                } catch (RemoteException e) {
                    e = e;
                } catch (IOException e2) {
                    e = e2;
                }
            } catch (Throwable th) {
                th = th;
            }
        } catch (RemoteException e3) {
            e = e3;
            parcelFileDescriptor = null;
        } catch (IOException e4) {
            e = e4;
            parcelFileDescriptor = null;
        }
        try {
            this.mUiAutomationConnection.executeShellCommand(str, parcelFileDescriptor2, null);
            IoUtils.closeQuietly(parcelFileDescriptor2);
        } catch (RemoteException e5) {
            e = e5;
            parcelFileDescriptor3 = parcelFileDescriptor2;
            Log.e(LOG_TAG, "Error executing shell command!", e);
            IoUtils.closeQuietly(parcelFileDescriptor3);
            return parcelFileDescriptor;
        } catch (IOException e6) {
            e = e6;
            parcelFileDescriptor3 = parcelFileDescriptor2;
            Log.e(LOG_TAG, "Error executing shell command!", e);
            IoUtils.closeQuietly(parcelFileDescriptor3);
            return parcelFileDescriptor;
        } catch (Throwable th2) {
            th = th2;
            parcelFileDescriptor3 = parcelFileDescriptor2;
            IoUtils.closeQuietly(parcelFileDescriptor3);
            throw th;
        }
        return parcelFileDescriptor;
    }

    public ParcelFileDescriptor[] executeShellCommandRw(String str) {
        ParcelFileDescriptor parcelFileDescriptor;
        ParcelFileDescriptor parcelFileDescriptor2;
        ParcelFileDescriptor parcelFileDescriptor3;
        synchronized (this.mLock) {
            throwIfNotConnectedLocked();
        }
        warnIfBetterCommand(str);
        ParcelFileDescriptor parcelFileDescriptor4 = null;
        try {
            try {
                try {
                    ParcelFileDescriptor[] createPipe = ParcelFileDescriptor.createPipe();
                    parcelFileDescriptor2 = createPipe[0];
                    try {
                        ParcelFileDescriptor parcelFileDescriptor5 = createPipe[1];
                        try {
                            ParcelFileDescriptor[] createPipe2 = ParcelFileDescriptor.createPipe();
                            parcelFileDescriptor = createPipe2[0];
                            try {
                                try {
                                    parcelFileDescriptor3 = createPipe2[1];
                                } catch (Throwable th) {
                                    th = th;
                                    parcelFileDescriptor4 = parcelFileDescriptor5;
                                    IoUtils.closeQuietly(parcelFileDescriptor4);
                                    IoUtils.closeQuietly(parcelFileDescriptor);
                                    throw th;
                                }
                            } catch (RemoteException e) {
                                e = e;
                                parcelFileDescriptor3 = null;
                            } catch (IOException e2) {
                                e = e2;
                                parcelFileDescriptor3 = null;
                            }
                            try {
                                this.mUiAutomationConnection.executeShellCommand(str, parcelFileDescriptor5, parcelFileDescriptor);
                                IoUtils.closeQuietly(parcelFileDescriptor5);
                            } catch (RemoteException e3) {
                                e = e3;
                                parcelFileDescriptor4 = parcelFileDescriptor5;
                                Log.e(LOG_TAG, "Error executing shell command!", e);
                                IoUtils.closeQuietly(parcelFileDescriptor4);
                                IoUtils.closeQuietly(parcelFileDescriptor);
                                return new ParcelFileDescriptor[]{parcelFileDescriptor2, parcelFileDescriptor3};
                            } catch (IOException e4) {
                                e = e4;
                                parcelFileDescriptor4 = parcelFileDescriptor5;
                                Log.e(LOG_TAG, "Error executing shell command!", e);
                                IoUtils.closeQuietly(parcelFileDescriptor4);
                                IoUtils.closeQuietly(parcelFileDescriptor);
                                return new ParcelFileDescriptor[]{parcelFileDescriptor2, parcelFileDescriptor3};
                            }
                        } catch (RemoteException e5) {
                            e = e5;
                            parcelFileDescriptor3 = null;
                            parcelFileDescriptor = null;
                        } catch (IOException e6) {
                            e = e6;
                            parcelFileDescriptor3 = null;
                            parcelFileDescriptor = null;
                        } catch (Throwable th2) {
                            th = th2;
                            parcelFileDescriptor = null;
                        }
                    } catch (RemoteException e7) {
                        e = e7;
                        parcelFileDescriptor3 = null;
                        parcelFileDescriptor = parcelFileDescriptor3;
                        Log.e(LOG_TAG, "Error executing shell command!", e);
                        IoUtils.closeQuietly(parcelFileDescriptor4);
                        IoUtils.closeQuietly(parcelFileDescriptor);
                        return new ParcelFileDescriptor[]{parcelFileDescriptor2, parcelFileDescriptor3};
                    } catch (IOException e8) {
                        e = e8;
                        parcelFileDescriptor3 = null;
                        parcelFileDescriptor = parcelFileDescriptor3;
                        Log.e(LOG_TAG, "Error executing shell command!", e);
                        IoUtils.closeQuietly(parcelFileDescriptor4);
                        IoUtils.closeQuietly(parcelFileDescriptor);
                        return new ParcelFileDescriptor[]{parcelFileDescriptor2, parcelFileDescriptor3};
                    }
                } catch (Throwable th3) {
                    th = th3;
                    parcelFileDescriptor = null;
                }
            } catch (RemoteException e9) {
                e = e9;
                parcelFileDescriptor2 = null;
                parcelFileDescriptor3 = null;
            } catch (IOException e10) {
                e = e10;
                parcelFileDescriptor2 = null;
                parcelFileDescriptor3 = null;
            }
            IoUtils.closeQuietly(parcelFileDescriptor);
            return new ParcelFileDescriptor[]{parcelFileDescriptor2, parcelFileDescriptor3};
        } catch (Throwable th4) {
            th = th4;
        }
    }

    private boolean isConnectedLocked() {
        return this.mConnectionId != -1;
    }

    private void throwIfConnectedLocked() {
        if (this.mConnectionId != -1) {
            throw new IllegalStateException("UiAutomation not connected!");
        }
    }

    private void throwIfNotConnectedLocked() {
        if (!isConnectedLocked()) {
            throw new IllegalStateException("UiAutomation not connected!");
        }
    }

    private void warnIfBetterCommand(String str) {
        if (str.startsWith("pm grant ")) {
            Log.w(LOG_TAG, "UiAutomation.grantRuntimePermission() is more robust and should be used instead of 'pm grant'");
        } else if (str.startsWith("pm revoke ")) {
            Log.w(LOG_TAG, "UiAutomation.revokeRuntimePermission() is more robust and should be used instead of 'pm revoke'");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class IAccessibilityServiceClientImpl extends AccessibilityService.IAccessibilityServiceClientWrapper {
        public IAccessibilityServiceClientImpl(Looper looper) {
            super(null, looper, new AccessibilityService.Callbacks() { // from class: android.app.UiAutomation.IAccessibilityServiceClientImpl.1
                @Override // android.accessibilityservice.AccessibilityService.Callbacks
                public void onAccessibilityButtonAvailabilityChanged(boolean z) {
                }

                @Override // android.accessibilityservice.AccessibilityService.Callbacks
                public void onAccessibilityButtonClicked() {
                }

                @Override // android.accessibilityservice.AccessibilityService.Callbacks
                public void onFingerprintCapturingGesturesChanged(boolean z) {
                }

                @Override // android.accessibilityservice.AccessibilityService.Callbacks
                public void onFingerprintGesture(int i) {
                }

                @Override // android.accessibilityservice.AccessibilityService.Callbacks
                public boolean onGesture(int i) {
                    return false;
                }

                @Override // android.accessibilityservice.AccessibilityService.Callbacks
                public void onInterrupt() {
                }

                @Override // android.accessibilityservice.AccessibilityService.Callbacks
                public boolean onKeyEvent(KeyEvent keyEvent) {
                    return false;
                }

                @Override // android.accessibilityservice.AccessibilityService.Callbacks
                public void onMagnificationChanged(Region region, float f, float f2, float f3) {
                }

                @Override // android.accessibilityservice.AccessibilityService.Callbacks
                public void onPerformGestureResult(int i, boolean z) {
                }

                @Override // android.accessibilityservice.AccessibilityService.Callbacks
                public void onServiceConnected() {
                }

                @Override // android.accessibilityservice.AccessibilityService.Callbacks
                public void onSoftKeyboardShowModeChanged(int i) {
                }

                @Override // android.accessibilityservice.AccessibilityService.Callbacks
                public void init(int i, IBinder iBinder) {
                    synchronized (UiAutomation.this.mLock) {
                        UiAutomation.this.mConnectionId = i;
                        UiAutomation.this.mLock.notifyAll();
                    }
                }

                @Override // android.accessibilityservice.AccessibilityService.Callbacks
                public void onAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
                    OnAccessibilityEventListener onAccessibilityEventListener;
                    synchronized (UiAutomation.this.mLock) {
                        UiAutomation.this.mLastEventTimeMillis = accessibilityEvent.getEventTime();
                        if (UiAutomation.this.mWaitingForEventDelivery) {
                            UiAutomation.this.mEventQueue.add(AccessibilityEvent.obtain(accessibilityEvent));
                        }
                        UiAutomation.this.mLock.notifyAll();
                        onAccessibilityEventListener = UiAutomation.this.mOnAccessibilityEventListener;
                    }
                    if (onAccessibilityEventListener != null) {
                        UiAutomation.this.mLocalCallbackHandler.post(PooledLambda.obtainRunnable(new BiConsumer() { // from class: android.app.-$$Lambda$GnVtsLTLDH5bZdtLeTd6cfwpgcs
                            @Override // java.util.function.BiConsumer
                            public final void accept(Object obj, Object obj2) {
                                ((UiAutomation.OnAccessibilityEventListener) obj).onAccessibilityEvent((AccessibilityEvent) obj2);
                            }
                        }, onAccessibilityEventListener, AccessibilityEvent.obtain(accessibilityEvent)).recycleOnUse());
                    }
                }
            });
        }
    }
}
