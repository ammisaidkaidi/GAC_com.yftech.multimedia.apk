package android.view;

import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Parcelable;
import android.os.Process;
import android.os.RemoteException;
import android.text.style.AccessibilityClickableSpan;
import android.text.style.ClickableSpan;
import android.util.LongSparseArray;
import android.util.Slog;
import android.view.View;
import android.view.accessibility.AccessibilityInteractionClient;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import android.view.accessibility.AccessibilityRequestPreparer;
import android.view.accessibility.IAccessibilityInteractionConnectionCallback;
import com.android.internal.annotations.GuardedBy;
import com.android.internal.os.SomeArgs;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.function.Predicate;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes2.dex */
public final class AccessibilityInteractionController {
    private static final boolean CONSIDER_REQUEST_PREPARERS = false;
    private static final boolean ENFORCE_NODE_TREE_CONSISTENT = false;
    private static final boolean IGNORE_REQUEST_PREPARERS = true;
    private static final String LOG_TAG = "AccessibilityInteractionController";
    private static final long REQUEST_PREPARER_TIMEOUT_MS = 500;
    private final AccessibilityManager mA11yManager;

    @GuardedBy("mLock")
    private int mActiveRequestPreparerId;
    private AddNodeInfosForViewId mAddNodeInfosForViewId;
    private final Handler mHandler;

    @GuardedBy("mLock")
    private List<MessageHolder> mMessagesWaitingForRequestPreparer;
    private final long mMyLooperThreadId;
    private final int mMyProcessId;

    @GuardedBy("mLock")
    private int mNumActiveRequestPreparers;
    private final AccessibilityNodePrefetcher mPrefetcher;
    private final ViewRootImpl mViewRootImpl;
    private final ArrayList<AccessibilityNodeInfo> mTempAccessibilityNodeInfoList = new ArrayList<>();
    private final Object mLock = new Object();
    private final ArrayList<View> mTempArrayList = new ArrayList<>();
    private final Point mTempPoint = new Point();
    private final Rect mTempRect = new Rect();
    private final Rect mTempRect1 = new Rect();
    private final Rect mTempRect2 = new Rect();

    public AccessibilityInteractionController(ViewRootImpl viewRootImpl) {
        Looper looper = viewRootImpl.mHandler.getLooper();
        this.mMyLooperThreadId = looper.getThread().getId();
        this.mMyProcessId = Process.myPid();
        this.mHandler = new PrivateHandler(looper);
        this.mViewRootImpl = viewRootImpl;
        this.mPrefetcher = new AccessibilityNodePrefetcher();
        this.mA11yManager = (AccessibilityManager) this.mViewRootImpl.mContext.getSystemService(AccessibilityManager.class);
    }

    private void scheduleMessage(Message message, int i, long j, boolean z) {
        if (z || !holdOffMessageIfNeeded(message, i, j)) {
            if (i == this.mMyProcessId && j == this.mMyLooperThreadId) {
                AccessibilityInteractionClient.getInstanceForThread(j).setSameThreadMessage(message);
            } else {
                this.mHandler.sendMessage(message);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isShown(View view) {
        return view.mAttachInfo != null && view.mAttachInfo.mWindowVisibility == 0 && view.isShown();
    }

    public void findAccessibilityNodeInfoByAccessibilityIdClientThread(long j, Region region, int i, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i2, int i3, long j2, MagnificationSpec magnificationSpec, Bundle bundle) {
        Message obtainMessage = this.mHandler.obtainMessage();
        obtainMessage.what = 2;
        obtainMessage.arg1 = i2;
        SomeArgs obtain = SomeArgs.obtain();
        obtain.argi1 = AccessibilityNodeInfo.getAccessibilityViewId(j);
        obtain.argi2 = AccessibilityNodeInfo.getVirtualDescendantId(j);
        obtain.argi3 = i;
        obtain.arg1 = iAccessibilityInteractionConnectionCallback;
        obtain.arg2 = magnificationSpec;
        obtain.arg3 = region;
        obtain.arg4 = bundle;
        obtainMessage.obj = obtain;
        scheduleMessage(obtainMessage, i3, j2, false);
    }

    private boolean holdOffMessageIfNeeded(Message message, int i, long j) {
        synchronized (this.mLock) {
            if (this.mNumActiveRequestPreparers != 0) {
                queueMessageToHandleOncePrepared(message, i, j);
                return true;
            }
            if (message.what != 2) {
                return false;
            }
            SomeArgs someArgs = (SomeArgs) message.obj;
            Bundle bundle = (Bundle) someArgs.arg4;
            if (bundle == null) {
                return false;
            }
            List<AccessibilityRequestPreparer> requestPreparersForAccessibilityId = this.mA11yManager.getRequestPreparersForAccessibilityId(someArgs.argi1);
            if (requestPreparersForAccessibilityId == null) {
                return false;
            }
            String string = bundle.getString(AccessibilityNodeInfo.EXTRA_DATA_REQUESTED_KEY);
            if (string == null) {
                return false;
            }
            this.mNumActiveRequestPreparers = requestPreparersForAccessibilityId.size();
            for (int i2 = 0; i2 < requestPreparersForAccessibilityId.size(); i2++) {
                Message obtainMessage = this.mHandler.obtainMessage(7);
                SomeArgs obtain = SomeArgs.obtain();
                obtain.argi1 = someArgs.argi2 == Integer.MAX_VALUE ? -1 : someArgs.argi2;
                obtain.arg1 = requestPreparersForAccessibilityId.get(i2);
                obtain.arg2 = string;
                obtain.arg3 = bundle;
                Message obtainMessage2 = this.mHandler.obtainMessage(8);
                int i3 = this.mActiveRequestPreparerId + 1;
                this.mActiveRequestPreparerId = i3;
                obtainMessage2.arg1 = i3;
                obtain.arg4 = obtainMessage2;
                obtainMessage.obj = obtain;
                scheduleMessage(obtainMessage, i, j, true);
                this.mHandler.obtainMessage(9);
                this.mHandler.sendEmptyMessageDelayed(9, REQUEST_PREPARER_TIMEOUT_MS);
            }
            queueMessageToHandleOncePrepared(message, i, j);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void prepareForExtraDataRequestUiThread(Message message) {
        SomeArgs someArgs = (SomeArgs) message.obj;
        ((AccessibilityRequestPreparer) someArgs.arg1).onPrepareExtraData(someArgs.argi1, (String) someArgs.arg2, (Bundle) someArgs.arg3, (Message) someArgs.arg4);
    }

    private void queueMessageToHandleOncePrepared(Message message, int i, long j) {
        if (this.mMessagesWaitingForRequestPreparer == null) {
            this.mMessagesWaitingForRequestPreparer = new ArrayList(1);
        }
        this.mMessagesWaitingForRequestPreparer.add(new MessageHolder(message, i, j));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestPreparerDoneUiThread(Message message) {
        synchronized (this.mLock) {
            if (message.arg1 != this.mActiveRequestPreparerId) {
                Slog.e(LOG_TAG, "Surprising AccessibilityRequestPreparer callback (likely late)");
                return;
            }
            this.mNumActiveRequestPreparers--;
            if (this.mNumActiveRequestPreparers <= 0) {
                this.mHandler.removeMessages(9);
                scheduleAllMessagesWaitingForRequestPreparerLocked();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestPreparerTimeoutUiThread() {
        synchronized (this.mLock) {
            Slog.e(LOG_TAG, "AccessibilityRequestPreparer timed out");
            scheduleAllMessagesWaitingForRequestPreparerLocked();
        }
    }

    @GuardedBy("mLock")
    private void scheduleAllMessagesWaitingForRequestPreparerLocked() {
        int size = this.mMessagesWaitingForRequestPreparer.size();
        int i = 0;
        while (i < size) {
            MessageHolder messageHolder = this.mMessagesWaitingForRequestPreparer.get(i);
            scheduleMessage(messageHolder.mMessage, messageHolder.mInterrogatingPid, messageHolder.mInterrogatingTid, i == 0);
            i++;
        }
        this.mMessagesWaitingForRequestPreparer.clear();
        this.mNumActiveRequestPreparers = 0;
        this.mActiveRequestPreparerId = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void findAccessibilityNodeInfoByAccessibilityIdUiThread(Message message) {
        View findViewByAccessibilityId;
        int i = message.arg1;
        SomeArgs someArgs = (SomeArgs) message.obj;
        int i2 = someArgs.argi1;
        int i3 = someArgs.argi2;
        int i4 = someArgs.argi3;
        IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback = (IAccessibilityInteractionConnectionCallback) someArgs.arg1;
        MagnificationSpec magnificationSpec = (MagnificationSpec) someArgs.arg2;
        Region region = (Region) someArgs.arg3;
        Bundle bundle = (Bundle) someArgs.arg4;
        someArgs.recycle();
        ArrayList<AccessibilityNodeInfo> arrayList = this.mTempAccessibilityNodeInfoList;
        arrayList.clear();
        try {
            if (this.mViewRootImpl.mView != null && this.mViewRootImpl.mAttachInfo != null) {
                this.mViewRootImpl.mAttachInfo.mAccessibilityFetchFlags = i;
                if (i2 == 2147483646) {
                    findViewByAccessibilityId = this.mViewRootImpl.mView;
                } else {
                    findViewByAccessibilityId = findViewByAccessibilityId(i2);
                }
                View view = findViewByAccessibilityId;
                if (view != null && isShown(view)) {
                    this.mPrefetcher.prefetchAccessibilityNodeInfos(view, i3, i, arrayList, bundle);
                }
            }
        } finally {
            updateInfosForViewportAndReturnFindNodeResult(arrayList, iAccessibilityInteractionConnectionCallback, i4, magnificationSpec, region);
        }
    }

    public void findAccessibilityNodeInfosByViewIdClientThread(long j, String str, Region region, int i, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i2, int i3, long j2, MagnificationSpec magnificationSpec) {
        Message obtainMessage = this.mHandler.obtainMessage();
        obtainMessage.what = 3;
        obtainMessage.arg1 = i2;
        obtainMessage.arg2 = AccessibilityNodeInfo.getAccessibilityViewId(j);
        SomeArgs obtain = SomeArgs.obtain();
        obtain.argi1 = i;
        obtain.arg1 = iAccessibilityInteractionConnectionCallback;
        obtain.arg2 = magnificationSpec;
        obtain.arg3 = str;
        obtain.arg4 = region;
        obtainMessage.obj = obtain;
        scheduleMessage(obtainMessage, i3, j2, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void findAccessibilityNodeInfosByViewIdUiThread(Message message) {
        View view;
        int i = message.arg1;
        int i2 = message.arg2;
        SomeArgs someArgs = (SomeArgs) message.obj;
        int i3 = someArgs.argi1;
        IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback = (IAccessibilityInteractionConnectionCallback) someArgs.arg1;
        MagnificationSpec magnificationSpec = (MagnificationSpec) someArgs.arg2;
        String str = (String) someArgs.arg3;
        Region region = (Region) someArgs.arg4;
        someArgs.recycle();
        ArrayList<AccessibilityNodeInfo> arrayList = this.mTempAccessibilityNodeInfoList;
        arrayList.clear();
        try {
            if (this.mViewRootImpl.mView != null && this.mViewRootImpl.mAttachInfo != null) {
                this.mViewRootImpl.mAttachInfo.mAccessibilityFetchFlags = i;
                if (i2 != 2147483646) {
                    view = findViewByAccessibilityId(i2);
                } else {
                    view = this.mViewRootImpl.mView;
                }
                if (view != null) {
                    int identifier = view.getContext().getResources().getIdentifier(str, null, null);
                    if (identifier <= 0) {
                        return;
                    }
                    if (this.mAddNodeInfosForViewId == null) {
                        this.mAddNodeInfosForViewId = new AddNodeInfosForViewId();
                    }
                    this.mAddNodeInfosForViewId.init(identifier, arrayList);
                    view.findViewByPredicate(this.mAddNodeInfosForViewId);
                    this.mAddNodeInfosForViewId.reset();
                }
            }
        } finally {
            updateInfosForViewportAndReturnFindNodeResult(arrayList, iAccessibilityInteractionConnectionCallback, i3, magnificationSpec, region);
        }
    }

    public void findAccessibilityNodeInfosByTextClientThread(long j, String str, Region region, int i, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i2, int i3, long j2, MagnificationSpec magnificationSpec) {
        Message obtainMessage = this.mHandler.obtainMessage();
        obtainMessage.what = 4;
        obtainMessage.arg1 = i2;
        SomeArgs obtain = SomeArgs.obtain();
        obtain.arg1 = str;
        obtain.arg2 = iAccessibilityInteractionConnectionCallback;
        obtain.arg3 = magnificationSpec;
        obtain.argi1 = AccessibilityNodeInfo.getAccessibilityViewId(j);
        obtain.argi2 = AccessibilityNodeInfo.getVirtualDescendantId(j);
        obtain.argi3 = i;
        obtain.arg4 = region;
        obtainMessage.obj = obtain;
        scheduleMessage(obtainMessage, i3, j2, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void findAccessibilityNodeInfosByTextUiThread(Message message) {
        View view;
        List<AccessibilityNodeInfo> list;
        int i = message.arg1;
        SomeArgs someArgs = (SomeArgs) message.obj;
        String str = (String) someArgs.arg1;
        IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback = (IAccessibilityInteractionConnectionCallback) someArgs.arg2;
        MagnificationSpec magnificationSpec = (MagnificationSpec) someArgs.arg3;
        int i2 = someArgs.argi1;
        int i3 = someArgs.argi2;
        int i4 = someArgs.argi3;
        Region region = (Region) someArgs.arg4;
        someArgs.recycle();
        List<AccessibilityNodeInfo> list2 = null;
        try {
            if (this.mViewRootImpl.mView != null && this.mViewRootImpl.mAttachInfo != null) {
                this.mViewRootImpl.mAttachInfo.mAccessibilityFetchFlags = i;
                if (i2 != 2147483646) {
                    view = findViewByAccessibilityId(i2);
                } else {
                    view = this.mViewRootImpl.mView;
                }
                if (view != null && isShown(view)) {
                    AccessibilityNodeProvider accessibilityNodeProvider = view.getAccessibilityNodeProvider();
                    if (accessibilityNodeProvider != null) {
                        list = accessibilityNodeProvider.findAccessibilityNodeInfosByText(str, i3);
                    } else if (i3 == -1) {
                        ArrayList<View> arrayList = this.mTempArrayList;
                        arrayList.clear();
                        view.findViewsWithText(arrayList, str, 7);
                        if (!arrayList.isEmpty()) {
                            list = this.mTempAccessibilityNodeInfoList;
                            try {
                                list.clear();
                                int size = arrayList.size();
                                for (int i5 = 0; i5 < size; i5++) {
                                    View view2 = arrayList.get(i5);
                                    if (isShown(view2)) {
                                        AccessibilityNodeProvider accessibilityNodeProvider2 = view2.getAccessibilityNodeProvider();
                                        if (accessibilityNodeProvider2 != null) {
                                            List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText = accessibilityNodeProvider2.findAccessibilityNodeInfosByText(str, -1);
                                            if (findAccessibilityNodeInfosByText != null) {
                                                list.addAll(findAccessibilityNodeInfosByText);
                                            }
                                        } else {
                                            list.add(view2.createAccessibilityNodeInfo());
                                        }
                                    }
                                }
                            } catch (Throwable th) {
                                list2 = list;
                                th = th;
                                updateInfosForViewportAndReturnFindNodeResult(list2, iAccessibilityInteractionConnectionCallback, i4, magnificationSpec, region);
                                throw th;
                            }
                        }
                    }
                    list2 = list;
                }
                updateInfosForViewportAndReturnFindNodeResult(list2, iAccessibilityInteractionConnectionCallback, i4, magnificationSpec, region);
                return;
            }
            updateInfosForViewportAndReturnFindNodeResult(null, iAccessibilityInteractionConnectionCallback, i4, magnificationSpec, region);
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public void findFocusClientThread(long j, int i, Region region, int i2, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i3, int i4, long j2, MagnificationSpec magnificationSpec) {
        Message obtainMessage = this.mHandler.obtainMessage();
        obtainMessage.what = 5;
        obtainMessage.arg1 = i3;
        obtainMessage.arg2 = i;
        SomeArgs obtain = SomeArgs.obtain();
        obtain.argi1 = i2;
        obtain.argi2 = AccessibilityNodeInfo.getAccessibilityViewId(j);
        obtain.argi3 = AccessibilityNodeInfo.getVirtualDescendantId(j);
        obtain.arg1 = iAccessibilityInteractionConnectionCallback;
        obtain.arg2 = magnificationSpec;
        obtain.arg3 = region;
        obtainMessage.obj = obtain;
        scheduleMessage(obtainMessage, i4, j2, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to find 'out' block for switch in B:14:0x0048. Please report as an issue. */
    public void findFocusUiThread(Message message) {
        View view;
        AccessibilityNodeInfo accessibilityNodeInfo;
        AccessibilityNodeInfo createAccessibilityNodeInfo;
        int i = message.arg1;
        int i2 = message.arg2;
        SomeArgs someArgs = (SomeArgs) message.obj;
        int i3 = someArgs.argi1;
        int i4 = someArgs.argi2;
        int i5 = someArgs.argi3;
        IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback = (IAccessibilityInteractionConnectionCallback) someArgs.arg1;
        MagnificationSpec magnificationSpec = (MagnificationSpec) someArgs.arg2;
        Region region = (Region) someArgs.arg3;
        someArgs.recycle();
        try {
            if (this.mViewRootImpl.mView != null && this.mViewRootImpl.mAttachInfo != null) {
                this.mViewRootImpl.mAttachInfo.mAccessibilityFetchFlags = i;
                if (i4 != 2147483646) {
                    view = findViewByAccessibilityId(i4);
                } else {
                    view = this.mViewRootImpl.mView;
                }
                if (view != null && isShown(view)) {
                    switch (i2) {
                        case 1:
                            View findFocus = view.findFocus();
                            if (findFocus != null && isShown(findFocus)) {
                                AccessibilityNodeProvider accessibilityNodeProvider = findFocus.getAccessibilityNodeProvider();
                                r10 = accessibilityNodeProvider != null ? accessibilityNodeProvider.findFocus(i2) : null;
                                if (r10 == null) {
                                    r10 = findFocus.createAccessibilityNodeInfo();
                                    break;
                                }
                            }
                            break;
                        case 2:
                            View view2 = this.mViewRootImpl.mAccessibilityFocusedHost;
                            if (view2 != null && ViewRootImpl.isViewDescendantOf(view2, view) && isShown(view2)) {
                                if (view2.getAccessibilityNodeProvider() != null) {
                                    if (this.mViewRootImpl.mAccessibilityFocusedVirtualView != null) {
                                        createAccessibilityNodeInfo = AccessibilityNodeInfo.obtain(this.mViewRootImpl.mAccessibilityFocusedVirtualView);
                                        accessibilityNodeInfo = createAccessibilityNodeInfo;
                                        updateInfoForViewportAndReturnFindNodeResult(accessibilityNodeInfo, iAccessibilityInteractionConnectionCallback, i3, magnificationSpec, region);
                                    }
                                    createAccessibilityNodeInfo = null;
                                    accessibilityNodeInfo = createAccessibilityNodeInfo;
                                    updateInfoForViewportAndReturnFindNodeResult(accessibilityNodeInfo, iAccessibilityInteractionConnectionCallback, i3, magnificationSpec, region);
                                }
                                if (i5 == -1) {
                                    createAccessibilityNodeInfo = view2.createAccessibilityNodeInfo();
                                    accessibilityNodeInfo = createAccessibilityNodeInfo;
                                    updateInfoForViewportAndReturnFindNodeResult(accessibilityNodeInfo, iAccessibilityInteractionConnectionCallback, i3, magnificationSpec, region);
                                }
                                createAccessibilityNodeInfo = null;
                                accessibilityNodeInfo = createAccessibilityNodeInfo;
                                updateInfoForViewportAndReturnFindNodeResult(accessibilityNodeInfo, iAccessibilityInteractionConnectionCallback, i3, magnificationSpec, region);
                            }
                            break;
                        default:
                            throw new IllegalArgumentException("Unknown focus type: " + i2);
                    }
                }
                accessibilityNodeInfo = r10;
                updateInfoForViewportAndReturnFindNodeResult(accessibilityNodeInfo, iAccessibilityInteractionConnectionCallback, i3, magnificationSpec, region);
            }
        } finally {
            updateInfoForViewportAndReturnFindNodeResult(null, iAccessibilityInteractionConnectionCallback, i3, magnificationSpec, region);
        }
    }

    public void focusSearchClientThread(long j, int i, Region region, int i2, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i3, int i4, long j2, MagnificationSpec magnificationSpec) {
        Message obtainMessage = this.mHandler.obtainMessage();
        obtainMessage.what = 6;
        obtainMessage.arg1 = i3;
        obtainMessage.arg2 = AccessibilityNodeInfo.getAccessibilityViewId(j);
        SomeArgs obtain = SomeArgs.obtain();
        obtain.argi2 = i;
        obtain.argi3 = i2;
        obtain.arg1 = iAccessibilityInteractionConnectionCallback;
        obtain.arg2 = magnificationSpec;
        obtain.arg3 = region;
        obtainMessage.obj = obtain;
        scheduleMessage(obtainMessage, i4, j2, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void focusSearchUiThread(Message message) {
        View view;
        View focusSearch;
        int i = message.arg1;
        int i2 = message.arg2;
        SomeArgs someArgs = (SomeArgs) message.obj;
        int i3 = someArgs.argi2;
        int i4 = someArgs.argi3;
        IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback = (IAccessibilityInteractionConnectionCallback) someArgs.arg1;
        MagnificationSpec magnificationSpec = (MagnificationSpec) someArgs.arg2;
        Region region = (Region) someArgs.arg3;
        someArgs.recycle();
        try {
            AccessibilityNodeInfo accessibilityNodeInfo = null;
            if (this.mViewRootImpl.mView != null && this.mViewRootImpl.mAttachInfo != null) {
                this.mViewRootImpl.mAttachInfo.mAccessibilityFetchFlags = i;
                if (i2 != 2147483646) {
                    view = findViewByAccessibilityId(i2);
                } else {
                    view = this.mViewRootImpl.mView;
                }
                if (view != null && isShown(view) && (focusSearch = view.focusSearch(i3)) != null) {
                    accessibilityNodeInfo = focusSearch.createAccessibilityNodeInfo();
                }
                updateInfoForViewportAndReturnFindNodeResult(accessibilityNodeInfo, iAccessibilityInteractionConnectionCallback, i4, magnificationSpec, region);
                return;
            }
            updateInfoForViewportAndReturnFindNodeResult(null, iAccessibilityInteractionConnectionCallback, i4, magnificationSpec, region);
        } catch (Throwable th) {
            updateInfoForViewportAndReturnFindNodeResult(null, iAccessibilityInteractionConnectionCallback, i4, magnificationSpec, region);
            throw th;
        }
    }

    public void performAccessibilityActionClientThread(long j, int i, Bundle bundle, int i2, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i3, int i4, long j2) {
        Message obtainMessage = this.mHandler.obtainMessage();
        obtainMessage.what = 1;
        obtainMessage.arg1 = i3;
        obtainMessage.arg2 = AccessibilityNodeInfo.getAccessibilityViewId(j);
        SomeArgs obtain = SomeArgs.obtain();
        obtain.argi1 = AccessibilityNodeInfo.getVirtualDescendantId(j);
        obtain.argi2 = i;
        obtain.argi3 = i2;
        obtain.arg1 = iAccessibilityInteractionConnectionCallback;
        obtain.arg2 = bundle;
        obtainMessage.obj = obtain;
        scheduleMessage(obtainMessage, i4, j2, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void performAccessibilityActionUiThread(Message message) {
        View view;
        boolean z;
        int i = message.arg1;
        int i2 = message.arg2;
        SomeArgs someArgs = (SomeArgs) message.obj;
        int i3 = someArgs.argi1;
        int i4 = someArgs.argi2;
        int i5 = someArgs.argi3;
        IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback = (IAccessibilityInteractionConnectionCallback) someArgs.arg1;
        Bundle bundle = (Bundle) someArgs.arg2;
        someArgs.recycle();
        try {
            if (this.mViewRootImpl.mView != null && this.mViewRootImpl.mAttachInfo != null && !this.mViewRootImpl.mStopped && !this.mViewRootImpl.mPausedForTransition) {
                this.mViewRootImpl.mAttachInfo.mAccessibilityFetchFlags = i;
                if (i2 != 2147483646) {
                    view = findViewByAccessibilityId(i2);
                } else {
                    view = this.mViewRootImpl.mView;
                }
                try {
                    if (view != null && isShown(view)) {
                        if (i4 == 16908651) {
                            z = handleClickableSpanActionUiThread(view, i3, bundle);
                        } else {
                            AccessibilityNodeProvider accessibilityNodeProvider = view.getAccessibilityNodeProvider();
                            if (accessibilityNodeProvider != null) {
                                z = accessibilityNodeProvider.performAction(i3, i4, bundle);
                            } else if (i3 == -1) {
                                z = view.performAccessibilityAction(i4, bundle);
                            }
                        }
                        this.mViewRootImpl.mAttachInfo.mAccessibilityFetchFlags = 0;
                        iAccessibilityInteractionConnectionCallback.setPerformAccessibilityActionResult(z, i5);
                        return;
                    }
                    this.mViewRootImpl.mAttachInfo.mAccessibilityFetchFlags = 0;
                    iAccessibilityInteractionConnectionCallback.setPerformAccessibilityActionResult(z, i5);
                    return;
                } catch (RemoteException unused) {
                    return;
                }
                z = false;
            }
        } finally {
            try {
                this.mViewRootImpl.mAttachInfo.mAccessibilityFetchFlags = 0;
                iAccessibilityInteractionConnectionCallback.setPerformAccessibilityActionResult(false, i5);
            } catch (RemoteException unused2) {
            }
        }
    }

    private View findViewByAccessibilityId(int i) {
        View view = this.mViewRootImpl.mView;
        if (view == null) {
            return null;
        }
        View findViewByAccessibilityId = view.findViewByAccessibilityId(i);
        if (findViewByAccessibilityId == null || isShown(findViewByAccessibilityId)) {
            return findViewByAccessibilityId;
        }
        return null;
    }

    private void applyAppScaleAndMagnificationSpecIfNeeded(List<AccessibilityNodeInfo> list, MagnificationSpec magnificationSpec) {
        if (list != null && shouldApplyAppScaleAndMagnificationSpec(this.mViewRootImpl.mAttachInfo.mApplicationScale, magnificationSpec)) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                applyAppScaleAndMagnificationSpecIfNeeded(list.get(i), magnificationSpec);
            }
        }
    }

    private void adjustIsVisibleToUserIfNeeded(List<AccessibilityNodeInfo> list, Region region) {
        if (region == null || list == null) {
            return;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            adjustIsVisibleToUserIfNeeded(list.get(i), region);
        }
    }

    private void adjustIsVisibleToUserIfNeeded(AccessibilityNodeInfo accessibilityNodeInfo, Region region) {
        if (region == null || accessibilityNodeInfo == null) {
            return;
        }
        Rect rect = this.mTempRect;
        accessibilityNodeInfo.getBoundsInScreen(rect);
        if (region.quickReject(rect)) {
            accessibilityNodeInfo.setVisibleToUser(false);
        }
    }

    private void applyAppScaleAndMagnificationSpecIfNeeded(AccessibilityNodeInfo accessibilityNodeInfo, MagnificationSpec magnificationSpec) {
        Parcelable[] parcelableArray;
        if (accessibilityNodeInfo == null) {
            return;
        }
        float f = this.mViewRootImpl.mAttachInfo.mApplicationScale;
        if (shouldApplyAppScaleAndMagnificationSpec(f, magnificationSpec)) {
            Rect rect = this.mTempRect;
            Rect rect2 = this.mTempRect1;
            accessibilityNodeInfo.getBoundsInParent(rect);
            accessibilityNodeInfo.getBoundsInScreen(rect2);
            if (f != 1.0f) {
                rect.scale(f);
                rect2.scale(f);
            }
            if (magnificationSpec != null) {
                rect.scale(magnificationSpec.scale);
                rect2.scale(magnificationSpec.scale);
                rect2.offset((int) magnificationSpec.offsetX, (int) magnificationSpec.offsetY);
            }
            accessibilityNodeInfo.setBoundsInParent(rect);
            accessibilityNodeInfo.setBoundsInScreen(rect2);
            if (accessibilityNodeInfo.hasExtras() && (parcelableArray = accessibilityNodeInfo.getExtras().getParcelableArray(AccessibilityNodeInfo.EXTRA_DATA_TEXT_CHARACTER_LOCATION_KEY)) != null) {
                for (Parcelable parcelable : parcelableArray) {
                    RectF rectF = (RectF) parcelable;
                    rectF.scale(f);
                    if (magnificationSpec != null) {
                        rectF.scale(magnificationSpec.scale);
                        rectF.offset(magnificationSpec.offsetX, magnificationSpec.offsetY);
                    }
                }
            }
            if (magnificationSpec != null) {
                View.AttachInfo attachInfo = this.mViewRootImpl.mAttachInfo;
                if (attachInfo.mDisplay == null) {
                    return;
                }
                float f2 = attachInfo.mApplicationScale * magnificationSpec.scale;
                Rect rect3 = this.mTempRect1;
                rect3.left = (int) ((attachInfo.mWindowLeft * f2) + magnificationSpec.offsetX);
                rect3.top = (int) ((attachInfo.mWindowTop * f2) + magnificationSpec.offsetY);
                rect3.right = (int) (rect3.left + (this.mViewRootImpl.mWidth * f2));
                rect3.bottom = (int) (rect3.top + (this.mViewRootImpl.mHeight * f2));
                attachInfo.mDisplay.getRealSize(this.mTempPoint);
                int i = this.mTempPoint.x;
                int i2 = this.mTempPoint.y;
                Rect rect4 = this.mTempRect2;
                rect4.set(0, 0, i, i2);
                if (!rect3.intersect(rect4)) {
                    rect4.setEmpty();
                }
                if (rect3.intersects(rect2.left, rect2.top, rect2.right, rect2.bottom)) {
                    return;
                }
                accessibilityNodeInfo.setVisibleToUser(false);
            }
        }
    }

    private boolean shouldApplyAppScaleAndMagnificationSpec(float f, MagnificationSpec magnificationSpec) {
        return (f == 1.0f && (magnificationSpec == null || magnificationSpec.isNop())) ? false : true;
    }

    private void updateInfosForViewportAndReturnFindNodeResult(List<AccessibilityNodeInfo> list, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i, MagnificationSpec magnificationSpec, Region region) {
        try {
            this.mViewRootImpl.mAttachInfo.mAccessibilityFetchFlags = 0;
            applyAppScaleAndMagnificationSpecIfNeeded(list, magnificationSpec);
            adjustIsVisibleToUserIfNeeded(list, region);
            iAccessibilityInteractionConnectionCallback.setFindAccessibilityNodeInfosResult(list, i);
            if (list != null) {
                list.clear();
            }
        } catch (RemoteException unused) {
        } catch (Throwable th) {
            recycleMagnificationSpecAndRegionIfNeeded(magnificationSpec, region);
            throw th;
        }
        recycleMagnificationSpecAndRegionIfNeeded(magnificationSpec, region);
    }

    private void updateInfoForViewportAndReturnFindNodeResult(AccessibilityNodeInfo accessibilityNodeInfo, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i, MagnificationSpec magnificationSpec, Region region) {
        try {
            this.mViewRootImpl.mAttachInfo.mAccessibilityFetchFlags = 0;
            applyAppScaleAndMagnificationSpecIfNeeded(accessibilityNodeInfo, magnificationSpec);
            adjustIsVisibleToUserIfNeeded(accessibilityNodeInfo, region);
            iAccessibilityInteractionConnectionCallback.setFindAccessibilityNodeInfoResult(accessibilityNodeInfo, i);
        } catch (RemoteException unused) {
        } catch (Throwable th) {
            recycleMagnificationSpecAndRegionIfNeeded(magnificationSpec, region);
            throw th;
        }
        recycleMagnificationSpecAndRegionIfNeeded(magnificationSpec, region);
    }

    private void recycleMagnificationSpecAndRegionIfNeeded(MagnificationSpec magnificationSpec, Region region) {
        if (Process.myPid() != Binder.getCallingPid()) {
            if (magnificationSpec != null) {
                magnificationSpec.recycle();
            }
        } else if (region != null) {
            region.recycle();
        }
    }

    private boolean handleClickableSpanActionUiThread(View view, int i, Bundle bundle) {
        ClickableSpan findClickableSpan;
        Parcelable parcelable = bundle.getParcelable(AccessibilityNodeInfo.ACTION_ARGUMENT_ACCESSIBLE_CLICKABLE_SPAN);
        if (!(parcelable instanceof AccessibilityClickableSpan)) {
            return false;
        }
        AccessibilityNodeInfo accessibilityNodeInfo = null;
        AccessibilityNodeProvider accessibilityNodeProvider = view.getAccessibilityNodeProvider();
        if (accessibilityNodeProvider != null) {
            accessibilityNodeInfo = accessibilityNodeProvider.createAccessibilityNodeInfo(i);
        } else if (i == -1) {
            accessibilityNodeInfo = view.createAccessibilityNodeInfo();
        }
        if (accessibilityNodeInfo == null || (findClickableSpan = ((AccessibilityClickableSpan) parcelable).findClickableSpan(accessibilityNodeInfo.getOriginalText())) == null) {
            return false;
        }
        findClickableSpan.onClick(view);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public class AccessibilityNodePrefetcher {
        private static final int MAX_ACCESSIBILITY_NODE_INFO_BATCH_SIZE = 50;
        private final ArrayList<View> mTempViewList;

        private AccessibilityNodePrefetcher() {
            this.mTempViewList = new ArrayList<>();
        }

        public void prefetchAccessibilityNodeInfos(View view, int i, int i2, List<AccessibilityNodeInfo> list, Bundle bundle) {
            AccessibilityNodeProvider accessibilityNodeProvider = view.getAccessibilityNodeProvider();
            String string = bundle == null ? null : bundle.getString(AccessibilityNodeInfo.EXTRA_DATA_REQUESTED_KEY);
            if (accessibilityNodeProvider == null) {
                AccessibilityNodeInfo createAccessibilityNodeInfo = view.createAccessibilityNodeInfo();
                if (createAccessibilityNodeInfo != null) {
                    if (string != null) {
                        view.addExtraDataToAccessibilityNodeInfo(createAccessibilityNodeInfo, string, bundle);
                    }
                    list.add(createAccessibilityNodeInfo);
                    if ((i2 & 1) != 0) {
                        prefetchPredecessorsOfRealNode(view, list);
                    }
                    if ((i2 & 2) != 0) {
                        prefetchSiblingsOfRealNode(view, list);
                    }
                    if ((i2 & 4) != 0) {
                        prefetchDescendantsOfRealNode(view, list);
                        return;
                    }
                    return;
                }
                return;
            }
            AccessibilityNodeInfo createAccessibilityNodeInfo2 = accessibilityNodeProvider.createAccessibilityNodeInfo(i);
            if (createAccessibilityNodeInfo2 != null) {
                if (string != null) {
                    accessibilityNodeProvider.addExtraDataToAccessibilityNodeInfo(i, createAccessibilityNodeInfo2, string, bundle);
                }
                list.add(createAccessibilityNodeInfo2);
                if ((i2 & 1) != 0) {
                    prefetchPredecessorsOfVirtualNode(createAccessibilityNodeInfo2, view, accessibilityNodeProvider, list);
                }
                if ((i2 & 2) != 0) {
                    prefetchSiblingsOfVirtualNode(createAccessibilityNodeInfo2, view, accessibilityNodeProvider, list);
                }
                if ((i2 & 4) != 0) {
                    prefetchDescendantsOfVirtualNode(createAccessibilityNodeInfo2, accessibilityNodeProvider, list);
                }
            }
        }

        private void enforceNodeTreeConsistent(List<AccessibilityNodeInfo> list) {
            LongSparseArray longSparseArray = new LongSparseArray();
            int size = list.size();
            for (int i = 0; i < size; i++) {
                AccessibilityNodeInfo accessibilityNodeInfo = list.get(i);
                longSparseArray.put(accessibilityNodeInfo.getSourceNodeId(), accessibilityNodeInfo);
            }
            AccessibilityNodeInfo accessibilityNodeInfo2 = (AccessibilityNodeInfo) longSparseArray.valueAt(0);
            AccessibilityNodeInfo accessibilityNodeInfo3 = accessibilityNodeInfo2;
            while (accessibilityNodeInfo2 != null) {
                accessibilityNodeInfo3 = accessibilityNodeInfo2;
                accessibilityNodeInfo2 = (AccessibilityNodeInfo) longSparseArray.get(accessibilityNodeInfo2.getParentNodeId());
            }
            HashSet hashSet = new HashSet();
            LinkedList linkedList = new LinkedList();
            linkedList.add(accessibilityNodeInfo3);
            AccessibilityNodeInfo accessibilityNodeInfo4 = null;
            AccessibilityNodeInfo accessibilityNodeInfo5 = null;
            while (!linkedList.isEmpty()) {
                AccessibilityNodeInfo accessibilityNodeInfo6 = (AccessibilityNodeInfo) linkedList.poll();
                if (!hashSet.add(accessibilityNodeInfo6)) {
                    throw new IllegalStateException("Duplicate node: " + accessibilityNodeInfo6 + " in window:" + AccessibilityInteractionController.this.mViewRootImpl.mAttachInfo.mAccessibilityWindowId);
                }
                if (accessibilityNodeInfo6.isAccessibilityFocused()) {
                    if (accessibilityNodeInfo4 != null) {
                        throw new IllegalStateException("Duplicate accessibility focus:" + accessibilityNodeInfo6 + " in window:" + AccessibilityInteractionController.this.mViewRootImpl.mAttachInfo.mAccessibilityWindowId);
                    }
                    accessibilityNodeInfo4 = accessibilityNodeInfo6;
                }
                if (accessibilityNodeInfo6.isFocused()) {
                    if (accessibilityNodeInfo5 != null) {
                        throw new IllegalStateException("Duplicate input focus: " + accessibilityNodeInfo6 + " in window:" + AccessibilityInteractionController.this.mViewRootImpl.mAttachInfo.mAccessibilityWindowId);
                    }
                    accessibilityNodeInfo5 = accessibilityNodeInfo6;
                }
                int childCount = accessibilityNodeInfo6.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    AccessibilityNodeInfo accessibilityNodeInfo7 = (AccessibilityNodeInfo) longSparseArray.get(accessibilityNodeInfo6.getChildId(i2));
                    if (accessibilityNodeInfo7 != null) {
                        linkedList.add(accessibilityNodeInfo7);
                    }
                }
            }
            for (int size2 = longSparseArray.size() - 1; size2 >= 0; size2--) {
                AccessibilityNodeInfo accessibilityNodeInfo8 = (AccessibilityNodeInfo) longSparseArray.valueAt(size2);
                if (!hashSet.contains(accessibilityNodeInfo8)) {
                    throw new IllegalStateException("Disconnected node: " + accessibilityNodeInfo8);
                }
            }
        }

        private void prefetchPredecessorsOfRealNode(View view, List<AccessibilityNodeInfo> list) {
            for (ViewParent parentForAccessibility = view.getParentForAccessibility(); (parentForAccessibility instanceof View) && list.size() < 50; parentForAccessibility = parentForAccessibility.getParentForAccessibility()) {
                AccessibilityNodeInfo createAccessibilityNodeInfo = ((View) parentForAccessibility).createAccessibilityNodeInfo();
                if (createAccessibilityNodeInfo != null) {
                    list.add(createAccessibilityNodeInfo);
                }
            }
        }

        private void prefetchSiblingsOfRealNode(View view, List<AccessibilityNodeInfo> list) {
            AccessibilityNodeInfo createAccessibilityNodeInfo;
            ViewParent parentForAccessibility = view.getParentForAccessibility();
            if (parentForAccessibility instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) parentForAccessibility;
                ArrayList<View> arrayList = this.mTempViewList;
                arrayList.clear();
                try {
                    viewGroup.addChildrenForAccessibility(arrayList);
                    int size = arrayList.size();
                    for (int i = 0; i < size; i++) {
                        if (list.size() >= 50) {
                            return;
                        }
                        View view2 = arrayList.get(i);
                        if (view2.getAccessibilityViewId() != view.getAccessibilityViewId() && AccessibilityInteractionController.this.isShown(view2)) {
                            AccessibilityNodeProvider accessibilityNodeProvider = view2.getAccessibilityNodeProvider();
                            if (accessibilityNodeProvider == null) {
                                createAccessibilityNodeInfo = view2.createAccessibilityNodeInfo();
                            } else {
                                createAccessibilityNodeInfo = accessibilityNodeProvider.createAccessibilityNodeInfo(-1);
                            }
                            if (createAccessibilityNodeInfo != null) {
                                list.add(createAccessibilityNodeInfo);
                            }
                        }
                    }
                } finally {
                    arrayList.clear();
                }
            }
        }

        private void prefetchDescendantsOfRealNode(View view, List<AccessibilityNodeInfo> list) {
            if (view instanceof ViewGroup) {
                HashMap hashMap = new HashMap();
                ArrayList<View> arrayList = this.mTempViewList;
                arrayList.clear();
                try {
                    view.addChildrenForAccessibility(arrayList);
                    int size = arrayList.size();
                    for (int i = 0; i < size; i++) {
                        if (list.size() >= 50) {
                            return;
                        }
                        View view2 = arrayList.get(i);
                        if (AccessibilityInteractionController.this.isShown(view2)) {
                            AccessibilityNodeProvider accessibilityNodeProvider = view2.getAccessibilityNodeProvider();
                            if (accessibilityNodeProvider == null) {
                                AccessibilityNodeInfo createAccessibilityNodeInfo = view2.createAccessibilityNodeInfo();
                                if (createAccessibilityNodeInfo != null) {
                                    list.add(createAccessibilityNodeInfo);
                                    hashMap.put(view2, null);
                                }
                            } else {
                                AccessibilityNodeInfo createAccessibilityNodeInfo2 = accessibilityNodeProvider.createAccessibilityNodeInfo(-1);
                                if (createAccessibilityNodeInfo2 != null) {
                                    list.add(createAccessibilityNodeInfo2);
                                    hashMap.put(view2, createAccessibilityNodeInfo2);
                                }
                            }
                        }
                    }
                    arrayList.clear();
                    if (list.size() < 50) {
                        for (Map.Entry entry : hashMap.entrySet()) {
                            View view3 = (View) entry.getKey();
                            AccessibilityNodeInfo accessibilityNodeInfo = (AccessibilityNodeInfo) entry.getValue();
                            if (accessibilityNodeInfo == null) {
                                prefetchDescendantsOfRealNode(view3, list);
                            } else {
                                prefetchDescendantsOfVirtualNode(accessibilityNodeInfo, view3.getAccessibilityNodeProvider(), list);
                            }
                        }
                    }
                } finally {
                    arrayList.clear();
                }
            }
        }

        private void prefetchPredecessorsOfVirtualNode(AccessibilityNodeInfo accessibilityNodeInfo, View view, AccessibilityNodeProvider accessibilityNodeProvider, List<AccessibilityNodeInfo> list) {
            int size = list.size();
            long parentNodeId = accessibilityNodeInfo.getParentNodeId();
            int accessibilityViewId = AccessibilityNodeInfo.getAccessibilityViewId(parentNodeId);
            while (accessibilityViewId != Integer.MAX_VALUE && list.size() < 50) {
                int virtualDescendantId = AccessibilityNodeInfo.getVirtualDescendantId(parentNodeId);
                if (virtualDescendantId != -1 || accessibilityViewId == view.getAccessibilityViewId()) {
                    AccessibilityNodeInfo createAccessibilityNodeInfo = accessibilityNodeProvider.createAccessibilityNodeInfo(virtualDescendantId);
                    if (createAccessibilityNodeInfo == null) {
                        for (int size2 = list.size() - 1; size2 >= size; size2--) {
                            list.remove(size2);
                        }
                        return;
                    }
                    list.add(createAccessibilityNodeInfo);
                    parentNodeId = createAccessibilityNodeInfo.getParentNodeId();
                    accessibilityViewId = AccessibilityNodeInfo.getAccessibilityViewId(parentNodeId);
                } else {
                    prefetchPredecessorsOfRealNode(view, list);
                    return;
                }
            }
        }

        private void prefetchSiblingsOfVirtualNode(AccessibilityNodeInfo accessibilityNodeInfo, View view, AccessibilityNodeProvider accessibilityNodeProvider, List<AccessibilityNodeInfo> list) {
            AccessibilityNodeInfo createAccessibilityNodeInfo;
            long parentNodeId = accessibilityNodeInfo.getParentNodeId();
            int accessibilityViewId = AccessibilityNodeInfo.getAccessibilityViewId(parentNodeId);
            int virtualDescendantId = AccessibilityNodeInfo.getVirtualDescendantId(parentNodeId);
            if (virtualDescendantId != -1 || accessibilityViewId == view.getAccessibilityViewId()) {
                AccessibilityNodeInfo createAccessibilityNodeInfo2 = accessibilityNodeProvider.createAccessibilityNodeInfo(virtualDescendantId);
                if (createAccessibilityNodeInfo2 != null) {
                    int childCount = createAccessibilityNodeInfo2.getChildCount();
                    for (int i = 0; i < childCount && list.size() < 50; i++) {
                        long childId = createAccessibilityNodeInfo2.getChildId(i);
                        if (childId != accessibilityNodeInfo.getSourceNodeId() && (createAccessibilityNodeInfo = accessibilityNodeProvider.createAccessibilityNodeInfo(AccessibilityNodeInfo.getVirtualDescendantId(childId))) != null) {
                            list.add(createAccessibilityNodeInfo);
                        }
                    }
                    return;
                }
                return;
            }
            prefetchSiblingsOfRealNode(view, list);
        }

        private void prefetchDescendantsOfVirtualNode(AccessibilityNodeInfo accessibilityNodeInfo, AccessibilityNodeProvider accessibilityNodeProvider, List<AccessibilityNodeInfo> list) {
            int size = list.size();
            int childCount = accessibilityNodeInfo.getChildCount();
            for (int i = 0; i < childCount; i++) {
                if (list.size() >= 50) {
                    return;
                }
                AccessibilityNodeInfo createAccessibilityNodeInfo = accessibilityNodeProvider.createAccessibilityNodeInfo(AccessibilityNodeInfo.getVirtualDescendantId(accessibilityNodeInfo.getChildId(i)));
                if (createAccessibilityNodeInfo != null) {
                    list.add(createAccessibilityNodeInfo);
                }
            }
            if (list.size() < 50) {
                int size2 = list.size() - size;
                for (int i2 = 0; i2 < size2; i2++) {
                    prefetchDescendantsOfVirtualNode(list.get(size + i2), accessibilityNodeProvider, list);
                }
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    private class PrivateHandler extends Handler {
        private static final int MSG_APP_PREPARATION_FINISHED = 8;
        private static final int MSG_APP_PREPARATION_TIMEOUT = 9;
        private static final int MSG_FIND_ACCESSIBILITY_NODE_INFOS_BY_VIEW_ID = 3;
        private static final int MSG_FIND_ACCESSIBILITY_NODE_INFO_BY_ACCESSIBILITY_ID = 2;
        private static final int MSG_FIND_ACCESSIBILITY_NODE_INFO_BY_TEXT = 4;
        private static final int MSG_FIND_FOCUS = 5;
        private static final int MSG_FOCUS_SEARCH = 6;
        private static final int MSG_PERFORM_ACCESSIBILITY_ACTION = 1;
        private static final int MSG_PREPARE_FOR_EXTRA_DATA_REQUEST = 7;

        public PrivateHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public String getMessageName(Message message) {
            int i = message.what;
            switch (i) {
                case 1:
                    return "MSG_PERFORM_ACCESSIBILITY_ACTION";
                case 2:
                    return "MSG_FIND_ACCESSIBILITY_NODE_INFO_BY_ACCESSIBILITY_ID";
                case 3:
                    return "MSG_FIND_ACCESSIBILITY_NODE_INFOS_BY_VIEW_ID";
                case 4:
                    return "MSG_FIND_ACCESSIBILITY_NODE_INFO_BY_TEXT";
                case 5:
                    return "MSG_FIND_FOCUS";
                case 6:
                    return "MSG_FOCUS_SEARCH";
                case 7:
                    return "MSG_PREPARE_FOR_EXTRA_DATA_REQUEST";
                case 8:
                    return "MSG_APP_PREPARATION_FINISHED";
                case 9:
                    return "MSG_APP_PREPARATION_TIMEOUT";
                default:
                    throw new IllegalArgumentException("Unknown message type: " + i);
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            switch (i) {
                case 1:
                    AccessibilityInteractionController.this.performAccessibilityActionUiThread(message);
                    return;
                case 2:
                    AccessibilityInteractionController.this.findAccessibilityNodeInfoByAccessibilityIdUiThread(message);
                    return;
                case 3:
                    AccessibilityInteractionController.this.findAccessibilityNodeInfosByViewIdUiThread(message);
                    return;
                case 4:
                    AccessibilityInteractionController.this.findAccessibilityNodeInfosByTextUiThread(message);
                    return;
                case 5:
                    AccessibilityInteractionController.this.findFocusUiThread(message);
                    return;
                case 6:
                    AccessibilityInteractionController.this.focusSearchUiThread(message);
                    return;
                case 7:
                    AccessibilityInteractionController.this.prepareForExtraDataRequestUiThread(message);
                    return;
                case 8:
                    AccessibilityInteractionController.this.requestPreparerDoneUiThread(message);
                    return;
                case 9:
                    AccessibilityInteractionController.this.requestPreparerTimeoutUiThread();
                    return;
                default:
                    throw new IllegalArgumentException("Unknown message type: " + i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public final class AddNodeInfosForViewId implements Predicate<View> {
        private List<AccessibilityNodeInfo> mInfos;
        private int mViewId;

        private AddNodeInfosForViewId() {
            this.mViewId = -1;
        }

        public void init(int i, List<AccessibilityNodeInfo> list) {
            this.mViewId = i;
            this.mInfos = list;
        }

        public void reset() {
            this.mViewId = -1;
            this.mInfos = null;
        }

        @Override // java.util.function.Predicate
        public boolean test(View view) {
            if (view.getId() != this.mViewId || !AccessibilityInteractionController.this.isShown(view)) {
                return false;
            }
            this.mInfos.add(view.createAccessibilityNodeInfo());
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static final class MessageHolder {
        final int mInterrogatingPid;
        final long mInterrogatingTid;
        final Message mMessage;

        MessageHolder(Message message, int i, long j) {
            this.mMessage = message;
            this.mInterrogatingPid = i;
            this.mInterrogatingTid = j;
        }
    }
}
