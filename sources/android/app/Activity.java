package android.app;

import android.R;
import android.annotation.SystemApi;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.app.Instrumentation;
import android.app.PictureInPictureParams;
import android.app.VoiceInteractor;
import android.app.assist.AssistContent;
import android.content.ComponentCallbacks2;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.IIntentSender;
import android.content.Intent;
import android.content.IntentSender;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.media.session.MediaController;
import android.net.Uri;
import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Parcelable;
import android.os.PersistableBundle;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.StrictMode;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.text.Selection;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.method.TextKeyListener;
import android.transition.Scene;
import android.transition.TransitionManager;
import android.util.ArrayMap;
import android.util.AttributeSet;
import android.util.EventLog;
import android.util.Log;
import android.util.PrintWriterPrinter;
import android.util.SparseArray;
import android.util.SuperNotCalledException;
import android.view.ActionMode;
import android.view.ContextMenu;
import android.view.ContextThemeWrapper;
import android.view.DragAndDropPermissions;
import android.view.DragEvent;
import android.view.KeyEvent;
import android.view.KeyboardShortcutGroup;
import android.view.KeyboardShortcutInfo;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.RemoteAnimationDefinition;
import android.view.SearchEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewRootImpl;
import android.view.Window;
import android.view.WindowManager;
import android.view.WindowManagerGlobal;
import android.view.accessibility.AccessibilityEvent;
import android.view.autofill.AutofillId;
import android.view.autofill.AutofillManager;
import android.view.autofill.AutofillPopupWindow;
import android.view.autofill.Helper;
import android.view.autofill.IAutofillWindowPresenter;
import android.widget.Toast;
import android.widget.Toolbar;
import com.android.internal.annotations.GuardedBy;
import com.android.internal.annotations.VisibleForTesting;
import com.android.internal.app.IVoiceInteractor;
import com.android.internal.app.ToolbarActionBar;
import com.android.internal.app.WindowDecorActionBar;
import com.android.internal.policy.PhoneWindow;
import dalvik.system.VMRuntime;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class Activity extends ContextThemeWrapper implements LayoutInflater.Factory2, Window.Callback, KeyEvent.Callback, View.OnCreateContextMenuListener, ComponentCallbacks2, Window.OnWindowDismissedCallback, Window.WindowControllerCallback, AutofillManager.AutofillClient {
    private static final String AUTOFILL_RESET_NEEDED = "@android:autofillResetNeeded";
    private static final String AUTO_FILL_AUTH_WHO_PREFIX = "@android:autoFillAuth:";
    private static final boolean DEBUG_LIFECYCLE = false;
    public static final int DEFAULT_KEYS_DIALER = 1;
    public static final int DEFAULT_KEYS_DISABLE = 0;
    public static final int DEFAULT_KEYS_SEARCH_GLOBAL = 4;
    public static final int DEFAULT_KEYS_SEARCH_LOCAL = 3;
    public static final int DEFAULT_KEYS_SHORTCUT = 2;
    public static final int DONT_FINISH_TASK_WITH_ACTIVITY = 0;
    public static final int FINISH_TASK_WITH_ACTIVITY = 2;
    public static final int FINISH_TASK_WITH_ROOT_ACTIVITY = 1;
    protected static final int[] FOCUSED_STATE_SET = {R.attr.state_focused};
    static final String FRAGMENTS_TAG = "android:fragments";
    private static final String HAS_CURENT_PERMISSIONS_REQUEST_KEY = "android:hasCurrentPermissionsRequest";
    private static final String KEYBOARD_SHORTCUTS_RECEIVER_PKG_NAME = "com.android.systemui";
    private static final String LAST_AUTOFILL_ID = "android:lastAutofillId";
    private static final int LOG_AM_ON_ACTIVITY_RESULT_CALLED = 30062;
    private static final int LOG_AM_ON_CREATE_CALLED = 30057;
    private static final int LOG_AM_ON_DESTROY_CALLED = 30060;
    private static final int LOG_AM_ON_PAUSE_CALLED = 30021;
    private static final int LOG_AM_ON_RESTART_CALLED = 30058;
    private static final int LOG_AM_ON_RESUME_CALLED = 30022;
    private static final int LOG_AM_ON_START_CALLED = 30059;
    private static final int LOG_AM_ON_STOP_CALLED = 30049;
    private static final String REQUEST_PERMISSIONS_WHO_PREFIX = "@android:requestPermissions:";
    public static final int RESULT_CANCELED = 0;
    public static final int RESULT_FIRST_USER = 1;
    public static final int RESULT_OK = -1;
    private static final String SAVED_DIALOGS_TAG = "android:savedDialogs";
    private static final String SAVED_DIALOG_ARGS_KEY_PREFIX = "android:dialog_args_";
    private static final String SAVED_DIALOG_IDS_KEY = "android:savedDialogIds";
    private static final String SAVED_DIALOG_KEY_PREFIX = "android:dialog_";
    private static final String TAG = "Activity";
    private static final String WINDOW_HIERARCHY_TAG = "android:viewHierarchyState";
    ActivityInfo mActivityInfo;
    private Application mApplication;
    private boolean mAutoFillIgnoreFirstResumePause;
    private boolean mAutoFillResetNeeded;
    private AutofillManager mAutofillManager;
    private AutofillPopupWindow mAutofillPopupWindow;
    boolean mCalled;
    private boolean mChangeCanvasToTranslucent;
    private ComponentName mComponent;
    int mConfigChangeFlags;
    Configuration mCurrentConfig;
    private boolean mDestroyed;
    String mEmbeddedID;
    private boolean mEnableDefaultActionBarUp;
    boolean mFinished;
    private boolean mHasCurrentPermissionsRequest;
    private int mIdent;
    private Instrumentation mInstrumentation;
    Intent mIntent;
    NonConfigurationInstances mLastNonConfigurationInstances;
    ActivityThread mMainThread;
    private SparseArray<ManagedDialog> mManagedDialogs;
    private MenuInflater mMenuInflater;
    Activity mParent;
    String mReferrer;
    private boolean mRestoredFromBundle;
    boolean mResumed;
    private SearchEvent mSearchEvent;
    private SearchManager mSearchManager;
    boolean mStartedActivity;
    boolean mStopped;
    private CharSequence mTitle;
    private IBinder mToken;
    private TranslucentConversionListener mTranslucentCallback;
    private Thread mUiThread;
    private VoiceInteractor mVoiceInteractor;
    private Window mWindow;
    private WindowManager mWindowManager;
    private boolean mDoReportFullyDrawn = true;
    private boolean mCanEnterPictureInPicture = false;
    boolean mTemporaryPause = false;
    boolean mChangingConfigurations = false;
    View mDecor = null;
    boolean mWindowAdded = false;
    boolean mVisibleFromServer = false;
    boolean mVisibleFromClient = true;
    ActionBar mActionBar = null;
    private int mTitleColor = 0;
    final Handler mHandler = new Handler();
    final FragmentController mFragments = FragmentController.createController(new HostCallbacks());

    @GuardedBy("mManagedCursors")
    private final ArrayList<ManagedCursor> mManagedCursors = new ArrayList<>();

    @GuardedBy("this")
    int mResultCode = 0;

    @GuardedBy("this")
    Intent mResultData = null;
    private boolean mTitleReady = false;
    private int mActionModeTypeStarting = 0;
    private int mDefaultKeyMode = 0;
    private SpannableStringBuilder mDefaultKeySsb = null;
    private ActivityManager.TaskDescription mTaskDescription = new ActivityManager.TaskDescription();
    private final Object mInstanceTracker = StrictMode.trackActivity(this);
    ActivityTransitionState mActivityTransitionState = new ActivityTransitionState();
    SharedElementCallback mEnterTransitionListener = SharedElementCallback.NULL_CALLBACK;
    SharedElementCallback mExitTransitionListener = SharedElementCallback.NULL_CALLBACK;
    private int mLastAutofillId = 1073741823;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes.dex */
    @interface DefaultKeyMode {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class NonConfigurationInstances {
        Object activity;
        HashMap<String, Object> children;
        FragmentManagerNonConfig fragments;
        ArrayMap<String, LoaderManager> loaders;
        VoiceInteractor voiceInteractor;
    }

    @SystemApi
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface TranslucentConversionListener {
        void onTranslucentConversionComplete(boolean z);
    }

    private static native String getDlWarning();

    @Override // android.content.ContextWrapper, android.content.Context
    public boolean canStartActivityForResult() {
        return true;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final AutofillManager.AutofillClient getAutofillClient() {
        return this;
    }

    @SystemApi
    @Deprecated
    public boolean isBackgroundVisibleBehind() {
        return false;
    }

    @Override // android.view.Window.Callback
    public void onActionModeFinished(ActionMode actionMode) {
    }

    @Override // android.view.Window.Callback
    public void onActionModeStarted(ActionMode actionMode) {
    }

    public void onActivityReenter(int i, Intent intent) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onActivityResult(int i, int i2, Intent intent) {
    }

    @Deprecated
    public void onAttachFragment(Fragment fragment) {
    }

    @Override // android.view.Window.Callback
    public void onAttachedToWindow() {
    }

    @SystemApi
    @Deprecated
    public void onBackgroundVisibleBehindChanged(boolean z) {
    }

    protected void onChildTitleChanged(Activity activity, CharSequence charSequence) {
    }

    @Override // android.view.Window.Callback
    public void onContentChanged() {
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
    }

    public CharSequence onCreateDescription() {
        return null;
    }

    @Deprecated
    protected Dialog onCreateDialog(int i) {
        return null;
    }

    @Override // android.view.Window.Callback
    public View onCreatePanelView(int i) {
        return null;
    }

    @Deprecated
    public boolean onCreateThumbnail(Bitmap bitmap, Canvas canvas) {
        return false;
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return null;
    }

    @Override // android.view.Window.Callback
    public void onDetachedFromWindow() {
    }

    public void onEnterAnimationComplete() {
    }

    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.view.KeyEvent.Callback
    public boolean onKeyLongPress(int i, KeyEvent keyEvent) {
        return false;
    }

    @Override // android.view.KeyEvent.Callback
    public boolean onKeyMultiple(int i, int i2, KeyEvent keyEvent) {
        return false;
    }

    public void onLocalVoiceInteractionStarted() {
    }

    public void onLocalVoiceInteractionStopped() {
    }

    public void onMovedToDisplay(int i, Configuration configuration) {
    }

    @Deprecated
    public void onMultiWindowModeChanged(boolean z) {
    }

    protected void onNewIntent(Intent intent) {
    }

    @Deprecated
    public void onPictureInPictureModeChanged(boolean z) {
    }

    public void onPrepareNavigateUpTaskStack(TaskStackBuilder taskStackBuilder) {
    }

    public void onProvideAssistContent(AssistContent assistContent) {
    }

    public void onProvideAssistData(Bundle bundle) {
    }

    public Uri onProvideReferrer() {
        return null;
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
    }

    HashMap<String, Object> onRetainNonConfigurationChildInstances() {
        return null;
    }

    public Object onRetainNonConfigurationInstance() {
        return null;
    }

    public void onStateNotSaved() {
    }

    public boolean onTrackballEvent(MotionEvent motionEvent) {
        return false;
    }

    public void onUserInteraction() {
    }

    protected void onUserLeaveHint() {
    }

    @Override // android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
    }

    @Deprecated
    public boolean requestVisibleBehind(boolean z) {
        return false;
    }

    @Deprecated
    public void setPersistent(boolean z) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class ManagedDialog {
        Bundle mArgs;
        Dialog mDialog;

        private ManagedDialog() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class ManagedCursor {
        private final Cursor mCursor;
        private boolean mReleased = false;
        private boolean mUpdated = false;

        ManagedCursor(Cursor cursor) {
            this.mCursor = cursor;
        }
    }

    public Intent getIntent() {
        return this.mIntent;
    }

    public void setIntent(Intent intent) {
        this.mIntent = intent;
    }

    public final Application getApplication() {
        return this.mApplication;
    }

    public final boolean isChild() {
        return this.mParent != null;
    }

    public final Activity getParent() {
        return this.mParent;
    }

    public WindowManager getWindowManager() {
        return this.mWindowManager;
    }

    public Window getWindow() {
        return this.mWindow;
    }

    @Deprecated
    public LoaderManager getLoaderManager() {
        return this.mFragments.getLoaderManager();
    }

    public View getCurrentFocus() {
        if (this.mWindow != null) {
            return this.mWindow.getCurrentFocus();
        }
        return null;
    }

    private AutofillManager getAutofillManager() {
        if (this.mAutofillManager == null) {
            this.mAutofillManager = (AutofillManager) getSystemService(AutofillManager.class);
        }
        return this.mAutofillManager;
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        if (context != null) {
            context.setAutofillClient(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        if (this.mLastNonConfigurationInstances != null) {
            this.mFragments.restoreLoaderNonConfig(this.mLastNonConfigurationInstances.loaders);
        }
        if (this.mActivityInfo.parentActivityName != null) {
            if (this.mActionBar == null) {
                this.mEnableDefaultActionBarUp = true;
            } else {
                this.mActionBar.setDefaultDisplayHomeAsUpEnabled(true);
            }
        }
        if (bundle != null) {
            this.mAutoFillResetNeeded = bundle.getBoolean(AUTOFILL_RESET_NEEDED, false);
            this.mLastAutofillId = bundle.getInt(LAST_AUTOFILL_ID, 1073741823);
            if (this.mAutoFillResetNeeded) {
                getAutofillManager().onCreate(bundle);
            }
            this.mFragments.restoreAllState(bundle.getParcelable(FRAGMENTS_TAG), this.mLastNonConfigurationInstances != null ? this.mLastNonConfigurationInstances.fragments : null);
        }
        this.mFragments.dispatchCreate();
        getApplication().dispatchActivityCreated(this, bundle);
        if (this.mVoiceInteractor != null) {
            this.mVoiceInteractor.attachActivity(this);
        }
        this.mRestoredFromBundle = bundle != null;
        this.mCalled = true;
    }

    public void onCreate(Bundle bundle, PersistableBundle persistableBundle) {
        onCreate(bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void performRestoreInstanceState(Bundle bundle) {
        onRestoreInstanceState(bundle);
        restoreManagedDialogs(bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void performRestoreInstanceState(Bundle bundle, PersistableBundle persistableBundle) {
        onRestoreInstanceState(bundle, persistableBundle);
        if (bundle != null) {
            restoreManagedDialogs(bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onRestoreInstanceState(Bundle bundle) {
        Bundle bundle2;
        if (this.mWindow == null || (bundle2 = bundle.getBundle(WINDOW_HIERARCHY_TAG)) == null) {
            return;
        }
        this.mWindow.restoreHierarchyState(bundle2);
    }

    public void onRestoreInstanceState(Bundle bundle, PersistableBundle persistableBundle) {
        if (bundle != null) {
            onRestoreInstanceState(bundle);
        }
    }

    private void restoreManagedDialogs(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle(SAVED_DIALOGS_TAG);
        if (bundle2 == null) {
            return;
        }
        int[] intArray = bundle2.getIntArray(SAVED_DIALOG_IDS_KEY);
        this.mManagedDialogs = new SparseArray<>(intArray.length);
        for (int i : intArray) {
            Integer valueOf = Integer.valueOf(i);
            Bundle bundle3 = bundle2.getBundle(savedDialogKeyFor(valueOf.intValue()));
            if (bundle3 != null) {
                ManagedDialog managedDialog = new ManagedDialog();
                managedDialog.mArgs = bundle2.getBundle(savedDialogArgsKeyFor(valueOf.intValue()));
                managedDialog.mDialog = createDialog(valueOf, bundle3, managedDialog.mArgs);
                if (managedDialog.mDialog != null) {
                    this.mManagedDialogs.put(valueOf.intValue(), managedDialog);
                    onPrepareDialog(valueOf.intValue(), managedDialog.mDialog, managedDialog.mArgs);
                    managedDialog.mDialog.onRestoreInstanceState(bundle3);
                }
            }
        }
    }

    private Dialog createDialog(Integer num, Bundle bundle, Bundle bundle2) {
        Dialog onCreateDialog = onCreateDialog(num.intValue(), bundle2);
        if (onCreateDialog == null) {
            return null;
        }
        onCreateDialog.dispatchOnCreate(bundle);
        return onCreateDialog;
    }

    private static String savedDialogKeyFor(int i) {
        return SAVED_DIALOG_KEY_PREFIX + i;
    }

    private static String savedDialogArgsKeyFor(int i) {
        return SAVED_DIALOG_ARGS_KEY_PREFIX + i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onPostCreate(Bundle bundle) {
        if (!isChild()) {
            this.mTitleReady = true;
            onTitleChanged(getTitle(), getTitleColor());
        }
        this.mCalled = true;
    }

    public void onPostCreate(Bundle bundle, PersistableBundle persistableBundle) {
        onPostCreate(bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onStart() {
        this.mCalled = true;
        this.mFragments.doLoaderStart();
        getApplication().dispatchActivityStarted(this);
        if (this.mAutoFillResetNeeded) {
            getAutofillManager().onVisibleForAutofill();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onRestart() {
        this.mCalled = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onResume() {
        View currentFocus;
        getApplication().dispatchActivityResumed(this);
        this.mActivityTransitionState.onResume(this, isTopOfTask());
        if (this.mAutoFillResetNeeded && !this.mAutoFillIgnoreFirstResumePause && (currentFocus = getCurrentFocus()) != null && currentFocus.canNotifyAutofillEnterExitEvent()) {
            getAutofillManager().notifyViewEntered(currentFocus);
        }
        this.mCalled = true;
    }

    protected void onPostResume() {
        Window window = getWindow();
        if (window != null) {
            window.makeActive();
        }
        if (this.mActionBar != null) {
            this.mActionBar.setShowHideAnimationEnabled(true);
        }
        this.mCalled = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setVoiceInteractor(IVoiceInteractor iVoiceInteractor) {
        if (this.mVoiceInteractor != null) {
            for (VoiceInteractor.Request request : this.mVoiceInteractor.getActiveRequests()) {
                request.cancel();
                request.clear();
            }
        }
        if (iVoiceInteractor == null) {
            this.mVoiceInteractor = null;
        } else {
            this.mVoiceInteractor = new VoiceInteractor(iVoiceInteractor, this, this, Looper.myLooper());
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public int getNextAutofillId() {
        if (this.mLastAutofillId == 2147483646) {
            this.mLastAutofillId = 1073741823;
        }
        this.mLastAutofillId++;
        return this.mLastAutofillId;
    }

    public AutofillId autofillClientGetNextAutofillId() {
        return new AutofillId(getNextAutofillId());
    }

    public boolean isVoiceInteraction() {
        return this.mVoiceInteractor != null;
    }

    public boolean isVoiceInteractionRoot() {
        try {
            if (this.mVoiceInteractor != null) {
                return ActivityManager.getService().isRootVoiceInteraction(this.mToken);
            }
            return false;
        } catch (RemoteException unused) {
            return false;
        }
    }

    public VoiceInteractor getVoiceInteractor() {
        return this.mVoiceInteractor;
    }

    public boolean isLocalVoiceInteractionSupported() {
        try {
            return ActivityManager.getService().supportsLocalVoiceInteraction();
        } catch (RemoteException unused) {
            return false;
        }
    }

    public void startLocalVoiceInteraction(Bundle bundle) {
        try {
            ActivityManager.getService().startLocalVoiceInteraction(this.mToken, bundle);
        } catch (RemoteException unused) {
        }
    }

    public void stopLocalVoiceInteraction() {
        try {
            ActivityManager.getService().stopLocalVoiceInteraction(this.mToken);
        } catch (RemoteException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void performSaveInstanceState(Bundle bundle) {
        onSaveInstanceState(bundle);
        saveManagedDialogs(bundle);
        this.mActivityTransitionState.saveState(bundle);
        storeHasCurrentPermissionRequest(bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void performSaveInstanceState(Bundle bundle, PersistableBundle persistableBundle) {
        onSaveInstanceState(bundle, persistableBundle);
        saveManagedDialogs(bundle);
        storeHasCurrentPermissionRequest(bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putBundle(WINDOW_HIERARCHY_TAG, this.mWindow.saveHierarchyState());
        bundle.putInt(LAST_AUTOFILL_ID, this.mLastAutofillId);
        Parcelable saveAllState = this.mFragments.saveAllState();
        if (saveAllState != null) {
            bundle.putParcelable(FRAGMENTS_TAG, saveAllState);
        }
        if (this.mAutoFillResetNeeded) {
            bundle.putBoolean(AUTOFILL_RESET_NEEDED, true);
            getAutofillManager().onSaveInstanceState(bundle);
        }
        getApplication().dispatchActivitySaveInstanceState(this, bundle);
    }

    public void onSaveInstanceState(Bundle bundle, PersistableBundle persistableBundle) {
        onSaveInstanceState(bundle);
    }

    private void saveManagedDialogs(Bundle bundle) {
        int size;
        if (this.mManagedDialogs == null || (size = this.mManagedDialogs.size()) == 0) {
            return;
        }
        Bundle bundle2 = new Bundle();
        int[] iArr = new int[this.mManagedDialogs.size()];
        for (int i = 0; i < size; i++) {
            int keyAt = this.mManagedDialogs.keyAt(i);
            iArr[i] = keyAt;
            ManagedDialog valueAt = this.mManagedDialogs.valueAt(i);
            bundle2.putBundle(savedDialogKeyFor(keyAt), valueAt.mDialog.onSaveInstanceState());
            if (valueAt.mArgs != null) {
                bundle2.putBundle(savedDialogArgsKeyFor(keyAt), valueAt.mArgs);
            }
        }
        bundle2.putIntArray(SAVED_DIALOG_IDS_KEY, iArr);
        bundle.putBundle(SAVED_DIALOGS_TAG, bundle2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onPause() {
        getApplication().dispatchActivityPaused(this);
        if (this.mAutoFillResetNeeded) {
            if (!this.mAutoFillIgnoreFirstResumePause) {
                View currentFocus = getCurrentFocus();
                if (currentFocus != null && currentFocus.canNotifyAutofillEnterExitEvent()) {
                    getAutofillManager().notifyViewExited(currentFocus);
                }
            } else {
                this.mAutoFillIgnoreFirstResumePause = false;
            }
        }
        this.mCalled = true;
    }

    public final void requestShowKeyboardShortcuts() {
        Intent intent = new Intent(Intent.ACTION_SHOW_KEYBOARD_SHORTCUTS);
        intent.setPackage(KEYBOARD_SHORTCUTS_RECEIVER_PKG_NAME);
        sendBroadcastAsUser(intent, UserHandle.SYSTEM);
    }

    public final void dismissKeyboardShortcutsHelper() {
        Intent intent = new Intent(Intent.ACTION_DISMISS_KEYBOARD_SHORTCUTS);
        intent.setPackage(KEYBOARD_SHORTCUTS_RECEIVER_PKG_NAME);
        sendBroadcastAsUser(intent, UserHandle.SYSTEM);
    }

    @Override // android.view.Window.Callback
    public void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> list, Menu menu, int i) {
        if (menu == null) {
            return;
        }
        int size = menu.size();
        KeyboardShortcutGroup keyboardShortcutGroup = null;
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem item = menu.getItem(i2);
            CharSequence title = item.getTitle();
            char alphabeticShortcut = item.getAlphabeticShortcut();
            int alphabeticModifiers = item.getAlphabeticModifiers();
            if (title != null && alphabeticShortcut != 0) {
                if (keyboardShortcutGroup == null) {
                    int i3 = this.mApplication.getApplicationInfo().labelRes;
                    keyboardShortcutGroup = new KeyboardShortcutGroup(i3 != 0 ? getString(i3) : null);
                }
                keyboardShortcutGroup.addItem(new KeyboardShortcutInfo(title, alphabeticShortcut, alphabeticModifiers));
            }
        }
        if (keyboardShortcutGroup != null) {
            list.add(keyboardShortcutGroup);
        }
    }

    public boolean showAssist(Bundle bundle) {
        try {
            return ActivityManager.getService().showAssistFromActivity(this.mToken, bundle);
        } catch (RemoteException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onStop() {
        if (this.mActionBar != null) {
            this.mActionBar.setShowHideAnimationEnabled(false);
        }
        this.mActivityTransitionState.onStop();
        getApplication().dispatchActivityStopped(this);
        this.mTranslucentCallback = null;
        this.mCalled = true;
        if (this.mAutoFillResetNeeded) {
            getAutofillManager().onInvisibleForAutofill();
        }
        if (isFinishing()) {
            if (this.mAutoFillResetNeeded) {
                getAutofillManager().onActivityFinishing();
            } else {
                if (this.mIntent == null || !this.mIntent.hasExtra("android.view.autofill.extra.RESTORE_SESSION_TOKEN")) {
                    return;
                }
                getAutofillManager().onPendingSaveUi(1, this.mIntent.getIBinderExtra("android.view.autofill.extra.RESTORE_SESSION_TOKEN"));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onDestroy() {
        this.mCalled = true;
        if (this.mManagedDialogs != null) {
            int size = this.mManagedDialogs.size();
            for (int i = 0; i < size; i++) {
                ManagedDialog valueAt = this.mManagedDialogs.valueAt(i);
                if (valueAt.mDialog.isShowing()) {
                    valueAt.mDialog.dismiss();
                }
            }
            this.mManagedDialogs = null;
        }
        synchronized (this.mManagedCursors) {
            int size2 = this.mManagedCursors.size();
            for (int i2 = 0; i2 < size2; i2++) {
                ManagedCursor managedCursor = this.mManagedCursors.get(i2);
                if (managedCursor != null) {
                    managedCursor.mCursor.close();
                }
            }
            this.mManagedCursors.clear();
        }
        if (this.mSearchManager != null) {
            this.mSearchManager.stopSearch();
        }
        if (this.mActionBar != null) {
            this.mActionBar.onDestroy();
        }
        getApplication().dispatchActivityDestroyed(this);
    }

    public void reportFullyDrawn() {
        if (this.mDoReportFullyDrawn) {
            this.mDoReportFullyDrawn = false;
            try {
                ActivityManager.getService().reportActivityFullyDrawn(this.mToken, this.mRestoredFromBundle);
            } catch (RemoteException unused) {
            }
        }
    }

    public void onMultiWindowModeChanged(boolean z, Configuration configuration) {
        onMultiWindowModeChanged(z);
    }

    public boolean isInMultiWindowMode() {
        try {
            return ActivityManager.getService().isInMultiWindowMode(this.mToken);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public void onPictureInPictureModeChanged(boolean z, Configuration configuration) {
        onPictureInPictureModeChanged(z);
    }

    public boolean isInPictureInPictureMode() {
        try {
            return ActivityManager.getService().isInPictureInPictureMode(this.mToken);
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Deprecated
    public void enterPictureInPictureMode() {
        enterPictureInPictureMode(new PictureInPictureParams.Builder().build());
    }

    @Deprecated
    public boolean enterPictureInPictureMode(PictureInPictureArgs pictureInPictureArgs) {
        return enterPictureInPictureMode(PictureInPictureArgs.convert(pictureInPictureArgs));
    }

    public boolean enterPictureInPictureMode(PictureInPictureParams pictureInPictureParams) {
        try {
            if (!deviceSupportsPictureInPictureMode()) {
                return false;
            }
            if (pictureInPictureParams == null) {
                throw new IllegalArgumentException("Expected non-null picture-in-picture params");
            }
            if (!this.mCanEnterPictureInPicture) {
                throw new IllegalStateException("Activity must be resumed to enter picture-in-picture");
            }
            return ActivityManagerNative.getDefault().enterPictureInPictureMode(this.mToken, pictureInPictureParams);
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Deprecated
    public void setPictureInPictureArgs(PictureInPictureArgs pictureInPictureArgs) {
        setPictureInPictureParams(PictureInPictureArgs.convert(pictureInPictureArgs));
    }

    public void setPictureInPictureParams(PictureInPictureParams pictureInPictureParams) {
        try {
            if (deviceSupportsPictureInPictureMode()) {
                if (pictureInPictureParams == null) {
                    throw new IllegalArgumentException("Expected non-null picture-in-picture params");
                }
                ActivityManagerNative.getDefault().setPictureInPictureParams(this.mToken, pictureInPictureParams);
            }
        } catch (RemoteException unused) {
        }
    }

    public int getMaxNumPictureInPictureActions() {
        try {
            return ActivityManagerNative.getDefault().getMaxNumPictureInPictureActions(this.mToken);
        } catch (RemoteException unused) {
            return 0;
        }
    }

    private boolean deviceSupportsPictureInPictureMode() {
        return getPackageManager().hasSystemFeature(PackageManager.FEATURE_PICTURE_IN_PICTURE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void dispatchMovedToDisplay(int i, Configuration configuration) {
        updateDisplay(i);
        onMovedToDisplay(i, configuration);
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        this.mCalled = true;
        this.mFragments.dispatchConfigurationChanged(configuration);
        if (this.mWindow != null) {
            this.mWindow.onConfigurationChanged(configuration);
        }
        if (this.mActionBar != null) {
            this.mActionBar.onConfigurationChanged(configuration);
        }
    }

    public int getChangingConfigurations() {
        return this.mConfigChangeFlags;
    }

    public Object getLastNonConfigurationInstance() {
        if (this.mLastNonConfigurationInstances != null) {
            return this.mLastNonConfigurationInstances.activity;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public HashMap<String, Object> getLastNonConfigurationChildInstances() {
        if (this.mLastNonConfigurationInstances != null) {
            return this.mLastNonConfigurationInstances.children;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NonConfigurationInstances retainNonConfigurationInstances() {
        Object onRetainNonConfigurationInstance = onRetainNonConfigurationInstance();
        HashMap<String, Object> onRetainNonConfigurationChildInstances = onRetainNonConfigurationChildInstances();
        FragmentManagerNonConfig retainNestedNonConfig = this.mFragments.retainNestedNonConfig();
        this.mFragments.doLoaderStart();
        this.mFragments.doLoaderStop(true);
        ArrayMap<String, LoaderManager> retainLoaderNonConfig = this.mFragments.retainLoaderNonConfig();
        if (onRetainNonConfigurationInstance == null && onRetainNonConfigurationChildInstances == null && retainNestedNonConfig == null && retainLoaderNonConfig == null && this.mVoiceInteractor == null) {
            return null;
        }
        NonConfigurationInstances nonConfigurationInstances = new NonConfigurationInstances();
        nonConfigurationInstances.activity = onRetainNonConfigurationInstance;
        nonConfigurationInstances.children = onRetainNonConfigurationChildInstances;
        nonConfigurationInstances.fragments = retainNestedNonConfig;
        nonConfigurationInstances.loaders = retainLoaderNonConfig;
        if (this.mVoiceInteractor != null) {
            this.mVoiceInteractor.retainInstance();
            nonConfigurationInstances.voiceInteractor = this.mVoiceInteractor;
        }
        return nonConfigurationInstances;
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        this.mCalled = true;
        this.mFragments.dispatchLowMemory();
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        this.mCalled = true;
        this.mFragments.dispatchTrimMemory(i);
    }

    @Deprecated
    public FragmentManager getFragmentManager() {
        return this.mFragments.getFragmentManager();
    }

    @Deprecated
    public final Cursor managedQuery(Uri uri, String[] strArr, String str, String str2) {
        Cursor query = getContentResolver().query(uri, strArr, str, null, str2);
        if (query != null) {
            startManagingCursor(query);
        }
        return query;
    }

    @Deprecated
    public final Cursor managedQuery(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        Cursor query = getContentResolver().query(uri, strArr, str, strArr2, str2);
        if (query != null) {
            startManagingCursor(query);
        }
        return query;
    }

    @Deprecated
    public void startManagingCursor(Cursor cursor) {
        synchronized (this.mManagedCursors) {
            this.mManagedCursors.add(new ManagedCursor(cursor));
        }
    }

    @Deprecated
    public void stopManagingCursor(Cursor cursor) {
        synchronized (this.mManagedCursors) {
            int size = this.mManagedCursors.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    break;
                }
                if (this.mManagedCursors.get(i).mCursor == cursor) {
                    this.mManagedCursors.remove(i);
                    break;
                }
                i++;
            }
        }
    }

    public <T extends View> T findViewById(int i) {
        return (T) getWindow().findViewById(i);
    }

    public final <T extends View> T requireViewById(int i) {
        T t = (T) findViewById(i);
        if (t != null) {
            return t;
        }
        throw new IllegalArgumentException("ID does not reference a View inside this Activity");
    }

    public ActionBar getActionBar() {
        initWindowDecorActionBar();
        return this.mActionBar;
    }

    public void setActionBar(Toolbar toolbar) {
        ActionBar actionBar = getActionBar();
        if (actionBar instanceof WindowDecorActionBar) {
            throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_ACTION_BAR and set android:windowActionBar to false in your theme to use a Toolbar instead.");
        }
        this.mMenuInflater = null;
        if (actionBar != null) {
            actionBar.onDestroy();
        }
        if (toolbar != null) {
            ToolbarActionBar toolbarActionBar = new ToolbarActionBar(toolbar, getTitle(), this);
            this.mActionBar = toolbarActionBar;
            this.mWindow.setCallback(toolbarActionBar.getWrappedWindowCallback());
        } else {
            this.mActionBar = null;
            this.mWindow.setCallback(this);
        }
        invalidateOptionsMenu();
    }

    private void initWindowDecorActionBar() {
        Window window = getWindow();
        window.getDecorView();
        if (!isChild() && window.hasFeature(8) && this.mActionBar == null) {
            this.mActionBar = new WindowDecorActionBar(this);
            this.mActionBar.setDefaultDisplayHomeAsUpEnabled(this.mEnableDefaultActionBarUp);
            this.mWindow.setDefaultIcon(this.mActivityInfo.getIconResource());
            this.mWindow.setDefaultLogo(this.mActivityInfo.getLogoResource());
        }
    }

    public void setContentView(int i) {
        getWindow().setContentView(i);
        initWindowDecorActionBar();
    }

    public void setContentView(View view) {
        getWindow().setContentView(view);
        initWindowDecorActionBar();
    }

    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        getWindow().setContentView(view, layoutParams);
        initWindowDecorActionBar();
    }

    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        getWindow().addContentView(view, layoutParams);
        initWindowDecorActionBar();
    }

    public TransitionManager getContentTransitionManager() {
        return getWindow().getTransitionManager();
    }

    public void setContentTransitionManager(TransitionManager transitionManager) {
        getWindow().setTransitionManager(transitionManager);
    }

    public Scene getContentScene() {
        return getWindow().getContentScene();
    }

    public void setFinishOnTouchOutside(boolean z) {
        this.mWindow.setCloseOnTouchOutside(z);
    }

    public final void setDefaultKeyMode(int i) {
        this.mDefaultKeyMode = i;
        switch (i) {
            case 0:
            case 2:
                this.mDefaultKeySsb = null;
                return;
            case 1:
            case 3:
            case 4:
                this.mDefaultKeySsb = new SpannableStringBuilder();
                Selection.setSelection(this.mDefaultKeySsb, 0);
                return;
            default:
                throw new IllegalArgumentException();
        }
    }

    @Override // android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        boolean z;
        boolean z2 = true;
        if (i == 4) {
            if (getApplicationInfo().targetSdkVersion >= 5) {
                keyEvent.startTracking();
            } else {
                onBackPressed();
            }
            return true;
        }
        if (this.mDefaultKeyMode == 0) {
            return false;
        }
        if (this.mDefaultKeyMode == 2) {
            Window window = getWindow();
            return window.hasFeature(0) && window.performPanelShortcut(0, i, keyEvent, 2);
        }
        if (i == 61) {
            return false;
        }
        if (keyEvent.getRepeatCount() != 0 || keyEvent.isSystem()) {
            z = false;
        } else {
            z = TextKeyListener.getInstance().onKeyDown(null, this.mDefaultKeySsb, i, keyEvent);
            if (!z || this.mDefaultKeySsb.length() <= 0) {
                z2 = false;
            } else {
                String spannableStringBuilder = this.mDefaultKeySsb.toString();
                int i2 = this.mDefaultKeyMode;
                if (i2 == 1) {
                    Intent intent = new Intent(Intent.ACTION_DIAL, Uri.parse("tel:" + spannableStringBuilder));
                    intent.addFlags(268435456);
                    startActivity(intent);
                } else {
                    switch (i2) {
                        case 3:
                            startSearch(spannableStringBuilder, false, null, false);
                            break;
                        case 4:
                            startSearch(spannableStringBuilder, false, null, true);
                            break;
                    }
                }
            }
        }
        if (z2) {
            this.mDefaultKeySsb.clear();
            this.mDefaultKeySsb.clearSpans();
            Selection.setSelection(this.mDefaultKeySsb, 0);
        }
        return z;
    }

    @Override // android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (getApplicationInfo().targetSdkVersion < 5 || i != 4 || !keyEvent.isTracking() || keyEvent.isCanceled()) {
            return false;
        }
        onBackPressed();
        return true;
    }

    public void onBackPressed() {
        if (this.mActionBar == null || !this.mActionBar.collapseActionView()) {
            FragmentManager fragmentManager = this.mFragments.getFragmentManager();
            if (fragmentManager.isStateSaved() || !fragmentManager.popBackStackImmediate()) {
                finishAfterTransition();
            }
        }
    }

    public boolean onKeyShortcut(int i, KeyEvent keyEvent) {
        ActionBar actionBar = getActionBar();
        return actionBar != null && actionBar.onKeyShortcut(i, keyEvent);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.mWindow.shouldCloseOnTouch(this, motionEvent)) {
            return false;
        }
        finish();
        return true;
    }

    @Override // android.view.Window.Callback
    public void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
        View view;
        if (this.mParent != null || (view = this.mDecor) == null || view.getParent() == null) {
            return;
        }
        getWindowManager().updateViewLayout(view, layoutParams);
    }

    public boolean hasWindowFocus() {
        View decorView;
        Window window = getWindow();
        if (window == null || (decorView = window.getDecorView()) == null) {
            return false;
        }
        return decorView.hasWindowFocus();
    }

    public void onWindowDismissed(boolean z, boolean z2) {
        finish(z ? 2 : 0);
        if (z2) {
            overridePendingTransition(0, 0);
        }
    }

    public void exitFreeformMode() throws RemoteException {
        ActivityManager.getService().exitFreeformMode(this.mToken);
    }

    public void enterPictureInPictureModeIfPossible() {
        if (this.mActivityInfo.supportsPictureInPicture()) {
            enterPictureInPictureMode();
        }
    }

    @Override // android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        onUserInteraction();
        if (keyEvent.getKeyCode() == 82 && this.mActionBar != null && this.mActionBar.onMenuKeyEvent(keyEvent)) {
            return true;
        }
        Window window = getWindow();
        if (window.superDispatchKeyEvent(keyEvent)) {
            return true;
        }
        View view = this.mDecor;
        if (view == null) {
            view = window.getDecorView();
        }
        return keyEvent.dispatch(this, view != null ? view.getKeyDispatcherState() : null, this);
    }

    @Override // android.view.Window.Callback
    public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        onUserInteraction();
        if (getWindow().superDispatchKeyShortcutEvent(keyEvent)) {
            return true;
        }
        return onKeyShortcut(keyEvent.getKeyCode(), keyEvent);
    }

    @Override // android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            onUserInteraction();
        }
        if (getWindow().superDispatchTouchEvent(motionEvent)) {
            return true;
        }
        return onTouchEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public boolean dispatchTrackballEvent(MotionEvent motionEvent) {
        onUserInteraction();
        if (getWindow().superDispatchTrackballEvent(motionEvent)) {
            return true;
        }
        return onTrackballEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        onUserInteraction();
        if (getWindow().superDispatchGenericMotionEvent(motionEvent)) {
            return true;
        }
        return onGenericMotionEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        accessibilityEvent.setClassName(getClass().getName());
        accessibilityEvent.setPackageName(getPackageName());
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        accessibilityEvent.setFullScreen(((ViewGroup.LayoutParams) attributes).width == -1 && ((ViewGroup.LayoutParams) attributes).height == -1);
        CharSequence title = getTitle();
        if (!TextUtils.isEmpty(title)) {
            accessibilityEvent.getText().add(title);
        }
        return true;
    }

    @Override // android.view.Window.Callback
    public boolean onCreatePanelMenu(int i, Menu menu) {
        if (i != 0) {
            return false;
        }
        return this.mFragments.dispatchCreateOptionsMenu(menu, getMenuInflater()) | onCreateOptionsMenu(menu);
    }

    @Override // android.view.Window.Callback
    public boolean onPreparePanel(int i, View view, Menu menu) {
        if (i != 0 || menu == null) {
            return true;
        }
        return this.mFragments.dispatchPrepareOptionsMenu(menu) | onPrepareOptionsMenu(menu);
    }

    @Override // android.view.Window.Callback
    public boolean onMenuOpened(int i, Menu menu) {
        if (i == 8) {
            initWindowDecorActionBar();
            if (this.mActionBar != null) {
                this.mActionBar.dispatchMenuVisibilityChanged(true);
            } else {
                Log.e(TAG, "Tried to open action bar menu with no action bar");
            }
        }
        return true;
    }

    @Override // android.view.Window.Callback
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        CharSequence titleCondensed = menuItem.getTitleCondensed();
        if (i != 0) {
            if (i != 6) {
                return false;
            }
            if (titleCondensed != null) {
                EventLog.writeEvent(SQLiteDatabase.SQLITE_MAX_LIKE_PATTERN_LENGTH, 1, titleCondensed.toString());
            }
            if (onContextItemSelected(menuItem)) {
                return true;
            }
            return this.mFragments.dispatchContextItemSelected(menuItem);
        }
        if (titleCondensed != null) {
            EventLog.writeEvent(SQLiteDatabase.SQLITE_MAX_LIKE_PATTERN_LENGTH, 0, titleCondensed.toString());
        }
        if (onOptionsItemSelected(menuItem) || this.mFragments.dispatchOptionsItemSelected(menuItem)) {
            return true;
        }
        if (menuItem.getItemId() != 16908332 || this.mActionBar == null || (this.mActionBar.getDisplayOptions() & 4) == 0) {
            return false;
        }
        if (this.mParent == null) {
            return onNavigateUp();
        }
        return this.mParent.onNavigateUpFromChild(this);
    }

    @Override // android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        if (i == 0) {
            this.mFragments.dispatchOptionsMenuClosed(menu);
            onOptionsMenuClosed(menu);
        } else if (i == 6) {
            onContextMenuClosed(menu);
        } else {
            if (i != 8) {
                return;
            }
            initWindowDecorActionBar();
            this.mActionBar.dispatchMenuVisibilityChanged(false);
        }
    }

    public void invalidateOptionsMenu() {
        if (this.mWindow.hasFeature(0)) {
            if (this.mActionBar == null || !this.mActionBar.invalidateOptionsMenu()) {
                this.mWindow.invalidatePanelMenu(0);
            }
        }
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        if (this.mParent != null) {
            return this.mParent.onCreateOptionsMenu(menu);
        }
        return true;
    }

    public boolean onPrepareOptionsMenu(Menu menu) {
        if (this.mParent != null) {
            return this.mParent.onPrepareOptionsMenu(menu);
        }
        return true;
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (this.mParent != null) {
            return this.mParent.onOptionsItemSelected(menuItem);
        }
        return false;
    }

    public boolean onNavigateUp() {
        Intent parentActivityIntent = getParentActivityIntent();
        if (parentActivityIntent == null) {
            return false;
        }
        if (this.mActivityInfo.taskAffinity == null) {
            finish();
            return true;
        }
        if (shouldUpRecreateTask(parentActivityIntent)) {
            TaskStackBuilder create = TaskStackBuilder.create(this);
            onCreateNavigateUpTaskStack(create);
            onPrepareNavigateUpTaskStack(create);
            create.startActivities();
            if (this.mResultCode != 0 || this.mResultData != null) {
                Log.i(TAG, "onNavigateUp only finishing topmost activity to return a result");
                finish();
                return true;
            }
            finishAffinity();
            return true;
        }
        navigateUpTo(parentActivityIntent);
        return true;
    }

    public boolean onNavigateUpFromChild(Activity activity) {
        return onNavigateUp();
    }

    public void onCreateNavigateUpTaskStack(TaskStackBuilder taskStackBuilder) {
        taskStackBuilder.addParentStack(this);
    }

    public void onOptionsMenuClosed(Menu menu) {
        if (this.mParent != null) {
            this.mParent.onOptionsMenuClosed(menu);
        }
    }

    public void openOptionsMenu() {
        if (this.mWindow.hasFeature(0)) {
            if (this.mActionBar == null || !this.mActionBar.openOptionsMenu()) {
                this.mWindow.openPanel(0, null);
            }
        }
    }

    public void closeOptionsMenu() {
        if (this.mWindow.hasFeature(0)) {
            if (this.mActionBar == null || !this.mActionBar.closeOptionsMenu()) {
                this.mWindow.closePanel(0);
            }
        }
    }

    public void registerForContextMenu(View view) {
        view.setOnCreateContextMenuListener(this);
    }

    public void unregisterForContextMenu(View view) {
        view.setOnCreateContextMenuListener(null);
    }

    public void openContextMenu(View view) {
        view.showContextMenu();
    }

    public void closeContextMenu() {
        if (this.mWindow.hasFeature(6)) {
            this.mWindow.closePanel(6);
        }
    }

    public boolean onContextItemSelected(MenuItem menuItem) {
        if (this.mParent != null) {
            return this.mParent.onContextItemSelected(menuItem);
        }
        return false;
    }

    public void onContextMenuClosed(Menu menu) {
        if (this.mParent != null) {
            this.mParent.onContextMenuClosed(menu);
        }
    }

    @Deprecated
    protected Dialog onCreateDialog(int i, Bundle bundle) {
        return onCreateDialog(i);
    }

    @Deprecated
    protected void onPrepareDialog(int i, Dialog dialog) {
        dialog.setOwnerActivity(this);
    }

    @Deprecated
    protected void onPrepareDialog(int i, Dialog dialog, Bundle bundle) {
        onPrepareDialog(i, dialog);
    }

    @Deprecated
    public final void showDialog(int i) {
        showDialog(i, null);
    }

    @Deprecated
    public final boolean showDialog(int i, Bundle bundle) {
        if (this.mManagedDialogs == null) {
            this.mManagedDialogs = new SparseArray<>();
        }
        ManagedDialog managedDialog = this.mManagedDialogs.get(i);
        if (managedDialog == null) {
            managedDialog = new ManagedDialog();
            managedDialog.mDialog = createDialog(Integer.valueOf(i), null, bundle);
            if (managedDialog.mDialog == null) {
                return false;
            }
            this.mManagedDialogs.put(i, managedDialog);
        }
        managedDialog.mArgs = bundle;
        onPrepareDialog(i, managedDialog.mDialog, bundle);
        managedDialog.mDialog.show();
        return true;
    }

    @Deprecated
    public final void dismissDialog(int i) {
        if (this.mManagedDialogs == null) {
            throw missingDialog(i);
        }
        ManagedDialog managedDialog = this.mManagedDialogs.get(i);
        if (managedDialog == null) {
            throw missingDialog(i);
        }
        managedDialog.mDialog.dismiss();
    }

    private IllegalArgumentException missingDialog(int i) {
        return new IllegalArgumentException("no dialog with id " + i + " was ever shown via Activity#showDialog");
    }

    @Deprecated
    public final void removeDialog(int i) {
        ManagedDialog managedDialog;
        if (this.mManagedDialogs == null || (managedDialog = this.mManagedDialogs.get(i)) == null) {
            return;
        }
        managedDialog.mDialog.dismiss();
        this.mManagedDialogs.remove(i);
    }

    @Override // android.view.Window.Callback
    public boolean onSearchRequested(SearchEvent searchEvent) {
        this.mSearchEvent = searchEvent;
        boolean onSearchRequested = onSearchRequested();
        this.mSearchEvent = null;
        return onSearchRequested;
    }

    @Override // android.view.Window.Callback
    public boolean onSearchRequested() {
        int i = getResources().getConfiguration().uiMode & 15;
        if (i == 4 || i == 6) {
            return false;
        }
        startSearch(null, false, null, false);
        return true;
    }

    public final SearchEvent getSearchEvent() {
        return this.mSearchEvent;
    }

    public void startSearch(String str, boolean z, Bundle bundle, boolean z2) {
        ensureSearchManager();
        this.mSearchManager.startSearch(str, z, getComponentName(), bundle, z2);
    }

    public void triggerSearch(String str, Bundle bundle) {
        ensureSearchManager();
        this.mSearchManager.triggerSearch(str, getComponentName(), bundle);
    }

    public void takeKeyEvents(boolean z) {
        getWindow().takeKeyEvents(z);
    }

    public final boolean requestWindowFeature(int i) {
        return getWindow().requestFeature(i);
    }

    public final void setFeatureDrawableResource(int i, int i2) {
        getWindow().setFeatureDrawableResource(i, i2);
    }

    public final void setFeatureDrawableUri(int i, Uri uri) {
        getWindow().setFeatureDrawableUri(i, uri);
    }

    public final void setFeatureDrawable(int i, Drawable drawable) {
        getWindow().setFeatureDrawable(i, drawable);
    }

    public final void setFeatureDrawableAlpha(int i, int i2) {
        getWindow().setFeatureDrawableAlpha(i, i2);
    }

    public LayoutInflater getLayoutInflater() {
        return getWindow().getLayoutInflater();
    }

    public MenuInflater getMenuInflater() {
        if (this.mMenuInflater == null) {
            initWindowDecorActionBar();
            if (this.mActionBar != null) {
                this.mMenuInflater = new MenuInflater(this.mActionBar.getThemedContext(), this);
            } else {
                this.mMenuInflater = new MenuInflater(this);
            }
        }
        return this.mMenuInflater;
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        super.setTheme(i);
        this.mWindow.setTheme(i);
    }

    @Override // android.view.ContextThemeWrapper
    protected void onApplyThemeResource(Resources.Theme theme, int i, boolean z) {
        int color;
        if (this.mParent == null) {
            super.onApplyThemeResource(theme, i, z);
        } else {
            try {
                theme.setTo(this.mParent.getTheme());
            } catch (Exception unused) {
            }
            theme.applyStyle(i, false);
        }
        TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(com.android.internal.R.styleable.ActivityTaskDescription);
        if (this.mTaskDescription.getPrimaryColor() == 0 && (color = obtainStyledAttributes.getColor(1, 0)) != 0 && Color.alpha(color) == 255) {
            this.mTaskDescription.setPrimaryColor(color);
        }
        int color2 = obtainStyledAttributes.getColor(0, 0);
        if (color2 != 0 && Color.alpha(color2) == 255) {
            this.mTaskDescription.setBackgroundColor(color2);
        }
        int color3 = obtainStyledAttributes.getColor(2, 0);
        if (color3 != 0) {
            this.mTaskDescription.setStatusBarColor(color3);
        }
        int color4 = obtainStyledAttributes.getColor(3, 0);
        if (color4 != 0) {
            this.mTaskDescription.setNavigationBarColor(color4);
        }
        obtainStyledAttributes.recycle();
        setTaskDescription(this.mTaskDescription);
    }

    public final void requestPermissions(String[] strArr, int i) {
        if (i < 0) {
            throw new IllegalArgumentException("requestCode should be >= 0");
        }
        if (this.mHasCurrentPermissionsRequest) {
            Log.w(TAG, "Can request only one set of permissions at a time");
            onRequestPermissionsResult(i, new String[0], new int[0]);
        } else {
            startActivityForResult(REQUEST_PERMISSIONS_WHO_PREFIX, getPackageManager().buildRequestPermissionsIntent(strArr), i, null);
            this.mHasCurrentPermissionsRequest = true;
        }
    }

    public boolean shouldShowRequestPermissionRationale(String str) {
        return getPackageManager().shouldShowRequestPermissionRationale(str);
    }

    public void startActivityForResult(Intent intent, int i) {
        startActivityForResult(intent, i, null);
    }

    public void startActivityForResult(Intent intent, int i, Bundle bundle) {
        if (this.mParent != null) {
            if (bundle != null) {
                this.mParent.startActivityFromChild(this, intent, i, bundle);
                return;
            } else {
                this.mParent.startActivityFromChild(this, intent, i);
                return;
            }
        }
        Bundle transferSpringboardActivityOptions = transferSpringboardActivityOptions(bundle);
        Instrumentation.ActivityResult execStartActivity = this.mInstrumentation.execStartActivity(this, this.mMainThread.getApplicationThread(), this.mToken, this, intent, i, transferSpringboardActivityOptions);
        if (execStartActivity != null) {
            this.mMainThread.sendActivityResult(this.mToken, this.mEmbeddedID, i, execStartActivity.getResultCode(), execStartActivity.getResultData());
        }
        if (i >= 0) {
            this.mStartedActivity = true;
        }
        cancelInputsAndStartExitTransition(transferSpringboardActivityOptions);
    }

    private void cancelInputsAndStartExitTransition(Bundle bundle) {
        View peekDecorView = this.mWindow != null ? this.mWindow.peekDecorView() : null;
        if (peekDecorView != null) {
            peekDecorView.cancelPendingInputEvents();
        }
        if (bundle == null || isTopOfTask()) {
            return;
        }
        this.mActivityTransitionState.startExitOutTransition(this, bundle);
    }

    public boolean isActivityTransitionRunning() {
        return this.mActivityTransitionState.isTransitionRunning();
    }

    private Bundle transferSpringboardActivityOptions(Bundle bundle) {
        ActivityOptions activityOptions;
        return (bundle != null || this.mWindow == null || this.mWindow.isActive() || (activityOptions = getActivityOptions()) == null || activityOptions.getAnimationType() != 5) ? bundle : activityOptions.toBundle();
    }

    public void startActivityForResultAsUser(Intent intent, int i, UserHandle userHandle) {
        startActivityForResultAsUser(intent, i, null, userHandle);
    }

    public void startActivityForResultAsUser(Intent intent, int i, Bundle bundle, UserHandle userHandle) {
        startActivityForResultAsUser(intent, this.mEmbeddedID, i, bundle, userHandle);
    }

    public void startActivityForResultAsUser(Intent intent, String str, int i, Bundle bundle, UserHandle userHandle) {
        if (this.mParent != null) {
            throw new RuntimeException("Can't be called from a child");
        }
        Bundle transferSpringboardActivityOptions = transferSpringboardActivityOptions(bundle);
        Instrumentation.ActivityResult execStartActivity = this.mInstrumentation.execStartActivity(this, this.mMainThread.getApplicationThread(), this.mToken, str, intent, i, transferSpringboardActivityOptions, userHandle);
        if (execStartActivity != null) {
            this.mMainThread.sendActivityResult(this.mToken, this.mEmbeddedID, i, execStartActivity.getResultCode(), execStartActivity.getResultData());
        }
        if (i >= 0) {
            this.mStartedActivity = true;
        }
        cancelInputsAndStartExitTransition(transferSpringboardActivityOptions);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void startActivityAsUser(Intent intent, UserHandle userHandle) {
        startActivityAsUser(intent, null, userHandle);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void startActivityAsUser(Intent intent, Bundle bundle, UserHandle userHandle) {
        Log.w(TAG, "startActivityAsUser: getPackageName: " + getPackageName() + ", intent: " + intent);
        if (this.mParent != null) {
            throw new RuntimeException("Can't be called from a child");
        }
        Bundle transferSpringboardActivityOptions = transferSpringboardActivityOptions(bundle);
        Instrumentation.ActivityResult execStartActivity = this.mInstrumentation.execStartActivity(this, this.mMainThread.getApplicationThread(), this.mToken, this.mEmbeddedID, intent, -1, transferSpringboardActivityOptions, userHandle);
        if (execStartActivity != null) {
            this.mMainThread.sendActivityResult(this.mToken, this.mEmbeddedID, -1, execStartActivity.getResultCode(), execStartActivity.getResultData());
        }
        cancelInputsAndStartExitTransition(transferSpringboardActivityOptions);
    }

    public void startActivityAsCaller(Intent intent, Bundle bundle, boolean z, int i) {
        if (this.mParent != null) {
            throw new RuntimeException("Can't be called from a child");
        }
        Bundle transferSpringboardActivityOptions = transferSpringboardActivityOptions(bundle);
        Instrumentation.ActivityResult execStartActivityAsCaller = this.mInstrumentation.execStartActivityAsCaller(this, this.mMainThread.getApplicationThread(), this.mToken, this, intent, -1, transferSpringboardActivityOptions, z, i);
        if (execStartActivityAsCaller != null) {
            this.mMainThread.sendActivityResult(this.mToken, this.mEmbeddedID, -1, execStartActivityAsCaller.getResultCode(), execStartActivityAsCaller.getResultData());
        }
        cancelInputsAndStartExitTransition(transferSpringboardActivityOptions);
    }

    public void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4) throws IntentSender.SendIntentException {
        startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, null);
    }

    public void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        if (this.mParent == null) {
            startIntentSenderForResultInner(intentSender, this.mEmbeddedID, i, intent, i2, i3, bundle);
        } else if (bundle != null) {
            this.mParent.startIntentSenderFromChild(this, intentSender, i, intent, i2, i3, i4, bundle);
        } else {
            this.mParent.startIntentSenderFromChild(this, intentSender, i, intent, i2, i3, i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startIntentSenderForResultInner(IntentSender intentSender, String str, int i, Intent intent, int i2, int i3, Bundle bundle) throws IntentSender.SendIntentException {
        String resolveTypeIfNeeded;
        if (intent != null) {
            try {
                intent.migrateExtraStreamToClipData();
                intent.prepareToLeaveProcess(this);
                resolveTypeIfNeeded = intent.resolveTypeIfNeeded(getContentResolver());
            } catch (RemoteException unused) {
            }
        } else {
            resolveTypeIfNeeded = null;
        }
        int startActivityIntentSender = ActivityManager.getService().startActivityIntentSender(this.mMainThread.getApplicationThread(), intentSender != null ? intentSender.getTarget() : null, intentSender != null ? intentSender.getWhitelistToken() : null, intent, resolveTypeIfNeeded, this.mToken, str, i, i2, i3, bundle);
        if (startActivityIntentSender == -96) {
            throw new IntentSender.SendIntentException();
        }
        Instrumentation.checkStartActivityResult(startActivityIntentSender, null);
        if (i >= 0) {
            this.mStartedActivity = true;
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void startActivity(Intent intent) {
        startActivity(intent, null);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void startActivity(Intent intent, Bundle bundle) {
        if (bundle != null) {
            startActivityForResult(intent, -1, bundle);
        } else {
            startActivityForResult(intent, -1);
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void startActivities(Intent[] intentArr) {
        startActivities(intentArr, null);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void startActivities(Intent[] intentArr, Bundle bundle) {
        this.mInstrumentation.execStartActivities(this, this.mMainThread.getApplicationThread(), this.mToken, this, intentArr, bundle);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void startIntentSender(IntentSender intentSender, Intent intent, int i, int i2, int i3) throws IntentSender.SendIntentException {
        startIntentSender(intentSender, intent, i, i2, i3, null);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void startIntentSender(IntentSender intentSender, Intent intent, int i, int i2, int i3, Bundle bundle) throws IntentSender.SendIntentException {
        if (bundle != null) {
            startIntentSenderForResult(intentSender, -1, intent, i, i2, i3, bundle);
        } else {
            startIntentSenderForResult(intentSender, -1, intent, i, i2, i3);
        }
    }

    public boolean startActivityIfNeeded(Intent intent, int i) {
        return startActivityIfNeeded(intent, i, null);
    }

    public boolean startActivityIfNeeded(Intent intent, int i, Bundle bundle) {
        int i2;
        if (this.mParent == null) {
            try {
                Uri onProvideReferrer = onProvideReferrer();
                if (onProvideReferrer != null) {
                    intent.putExtra(Intent.EXTRA_REFERRER, onProvideReferrer);
                }
                intent.migrateExtraStreamToClipData();
                intent.prepareToLeaveProcess(this);
                i2 = ActivityManager.getService().startActivity(this.mMainThread.getApplicationThread(), getBasePackageName(), intent, intent.resolveTypeIfNeeded(getContentResolver()), this.mToken, this.mEmbeddedID, i, 1, null, bundle);
            } catch (RemoteException unused) {
                i2 = 1;
            }
            Instrumentation.checkStartActivityResult(i2, intent);
            if (i >= 0) {
                this.mStartedActivity = true;
            }
            return i2 != 1;
        }
        throw new UnsupportedOperationException("startActivityIfNeeded can only be called from a top-level activity");
    }

    public boolean startNextMatchingActivity(Intent intent) {
        return startNextMatchingActivity(intent, null);
    }

    public boolean startNextMatchingActivity(Intent intent, Bundle bundle) {
        if (this.mParent == null) {
            try {
                intent.migrateExtraStreamToClipData();
                intent.prepareToLeaveProcess(this);
                return ActivityManager.getService().startNextMatchingActivity(this.mToken, intent, bundle);
            } catch (RemoteException unused) {
                return false;
            }
        }
        throw new UnsupportedOperationException("startNextMatchingActivity can only be called from a top-level activity");
    }

    public void startActivityFromChild(Activity activity, Intent intent, int i) {
        startActivityFromChild(activity, intent, i, null);
    }

    public void startActivityFromChild(Activity activity, Intent intent, int i, Bundle bundle) {
        Bundle transferSpringboardActivityOptions = transferSpringboardActivityOptions(bundle);
        Instrumentation.ActivityResult execStartActivity = this.mInstrumentation.execStartActivity(this, this.mMainThread.getApplicationThread(), this.mToken, activity, intent, i, transferSpringboardActivityOptions);
        if (execStartActivity != null) {
            this.mMainThread.sendActivityResult(this.mToken, activity.mEmbeddedID, i, execStartActivity.getResultCode(), execStartActivity.getResultData());
        }
        cancelInputsAndStartExitTransition(transferSpringboardActivityOptions);
    }

    @Deprecated
    public void startActivityFromFragment(Fragment fragment, Intent intent, int i) {
        startActivityFromFragment(fragment, intent, i, null);
    }

    @Deprecated
    public void startActivityFromFragment(Fragment fragment, Intent intent, int i, Bundle bundle) {
        startActivityForResult(fragment.mWho, intent, i, bundle);
    }

    public void startActivityAsUserFromFragment(Fragment fragment, Intent intent, int i, Bundle bundle, UserHandle userHandle) {
        startActivityForResultAsUser(intent, fragment.mWho, i, bundle, userHandle);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void startActivityForResult(String str, Intent intent, int i, Bundle bundle) {
        Log.w(TAG, "startActivityForResult: getPackageName: " + getPackageName() + ", intent: " + intent);
        Uri onProvideReferrer = onProvideReferrer();
        if (onProvideReferrer != null) {
            intent.putExtra(Intent.EXTRA_REFERRER, onProvideReferrer);
        }
        Bundle transferSpringboardActivityOptions = transferSpringboardActivityOptions(bundle);
        Instrumentation.ActivityResult execStartActivity = this.mInstrumentation.execStartActivity(this, this.mMainThread.getApplicationThread(), this.mToken, str, intent, i, transferSpringboardActivityOptions);
        if (execStartActivity != null) {
            this.mMainThread.sendActivityResult(this.mToken, str, i, execStartActivity.getResultCode(), execStartActivity.getResultData());
        }
        cancelInputsAndStartExitTransition(transferSpringboardActivityOptions);
        overridePendingTransition(0, 0);
    }

    public void startIntentSenderFromChild(Activity activity, IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4) throws IntentSender.SendIntentException {
        startIntentSenderFromChild(activity, intentSender, i, intent, i2, i3, i4, null);
    }

    public void startIntentSenderFromChild(Activity activity, IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        startIntentSenderForResultInner(intentSender, activity.mEmbeddedID, i, intent, i2, i3, bundle);
    }

    public void startIntentSenderFromChildFragment(Fragment fragment, IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        startIntentSenderForResultInner(intentSender, fragment.mWho, i, intent, i2, i3, bundle);
    }

    public void overridePendingTransition(int i, int i2) {
        try {
            ActivityManager.getService().overridePendingTransition(this.mToken, getPackageName(), i, i2);
        } catch (RemoteException unused) {
        }
    }

    public final void setResult(int i) {
        synchronized (this) {
            this.mResultCode = i;
            this.mResultData = null;
        }
    }

    public final void setResult(int i, Intent intent) {
        synchronized (this) {
            this.mResultCode = i;
            this.mResultData = intent;
        }
    }

    public Uri getReferrer() {
        Uri uri;
        Intent intent = getIntent();
        try {
            uri = (Uri) intent.getParcelableExtra(Intent.EXTRA_REFERRER);
        } catch (BadParcelableException unused) {
            Log.w(TAG, "Cannot read referrer from intent; intent extras contain unknown custom Parcelable objects");
        }
        if (uri != null) {
            return uri;
        }
        String stringExtra = intent.getStringExtra(Intent.EXTRA_REFERRER_NAME);
        if (stringExtra != null) {
            return Uri.parse(stringExtra);
        }
        if (this.mReferrer != null) {
            return new Uri.Builder().scheme("android-app").authority(this.mReferrer).build();
        }
        return null;
    }

    public String getCallingPackage() {
        try {
            return ActivityManager.getService().getCallingPackage(this.mToken);
        } catch (RemoteException unused) {
            return null;
        }
    }

    public ComponentName getCallingActivity() {
        try {
            return ActivityManager.getService().getCallingActivity(this.mToken);
        } catch (RemoteException unused) {
            return null;
        }
    }

    public void setVisible(boolean z) {
        if (this.mVisibleFromClient != z) {
            this.mVisibleFromClient = z;
            if (this.mVisibleFromServer) {
                if (z) {
                    makeVisible();
                } else {
                    this.mDecor.setVisibility(4);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void makeVisible() {
        if (!this.mWindowAdded) {
            getWindowManager().addView(this.mDecor, getWindow().getAttributes());
            this.mWindowAdded = true;
        }
        this.mDecor.setVisibility(0);
    }

    public boolean isFinishing() {
        return this.mFinished;
    }

    public boolean isDestroyed() {
        return this.mDestroyed;
    }

    public boolean isChangingConfigurations() {
        return this.mChangingConfigurations;
    }

    public void recreate() {
        if (this.mParent != null) {
            throw new IllegalStateException("Can only be called on top-level activity");
        }
        if (Looper.myLooper() != this.mMainThread.getLooper()) {
            throw new IllegalStateException("Must be called from main thread");
        }
        this.mMainThread.scheduleRelaunchActivity(this.mToken);
    }

    private void finish(int i) {
        int i2;
        Intent intent;
        if (this.mParent == null) {
            synchronized (this) {
                i2 = this.mResultCode;
                intent = this.mResultData;
            }
            if (intent != null) {
                try {
                    intent.prepareToLeaveProcess(this);
                } catch (RemoteException unused) {
                }
            }
            if (ActivityManager.getService().finishActivity(this.mToken, i2, intent, i)) {
                this.mFinished = true;
            }
        } else {
            this.mParent.finishFromChild(this);
        }
        if (this.mIntent != null && this.mIntent.hasExtra("android.view.autofill.extra.RESTORE_SESSION_TOKEN")) {
            getAutofillManager().onPendingSaveUi(2, this.mIntent.getIBinderExtra("android.view.autofill.extra.RESTORE_SESSION_TOKEN"));
        }
        overridePendingTransition(0, 0);
    }

    public void finish() {
        finish(0);
    }

    public void finishAffinity() {
        if (this.mParent != null) {
            throw new IllegalStateException("Can not be called from an embedded activity");
        }
        if (this.mResultCode != 0 || this.mResultData != null) {
            throw new IllegalStateException("Can not be called to deliver a result");
        }
        try {
            if (ActivityManager.getService().finishActivityAffinity(this.mToken)) {
                this.mFinished = true;
            }
        } catch (RemoteException unused) {
        }
    }

    public void finishFromChild(Activity activity) {
        finish();
    }

    public void finishAfterTransition() {
        if (this.mActivityTransitionState.startExitBackTransition(this)) {
            return;
        }
        finish();
    }

    public void finishActivity(int i) {
        if (this.mParent == null) {
            try {
                ActivityManager.getService().finishSubActivity(this.mToken, this.mEmbeddedID, i);
            } catch (RemoteException unused) {
            }
        } else {
            this.mParent.finishActivityFromChild(this, i);
        }
    }

    public void finishActivityFromChild(Activity activity, int i) {
        try {
            ActivityManager.getService().finishSubActivity(this.mToken, activity.mEmbeddedID, i);
        } catch (RemoteException unused) {
        }
    }

    public void finishAndRemoveTask() {
        finish(1);
    }

    public boolean releaseInstance() {
        try {
            return ActivityManager.getService().releaseActivityInstance(this.mToken);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public PendingIntent createPendingResult(int i, Intent intent, int i2) {
        String packageName = getPackageName();
        try {
            intent.prepareToLeaveProcess(this);
            IIntentSender intentSender = ActivityManager.getService().getIntentSender(3, packageName, this.mParent == null ? this.mToken : this.mParent.mToken, this.mEmbeddedID, i, new Intent[]{intent}, null, i2, null, getUserId());
            if (intentSender != null) {
                return new PendingIntent(intentSender);
            }
            return null;
        } catch (RemoteException unused) {
            return null;
        }
    }

    public void setRequestedOrientation(int i) {
        if (this.mParent == null) {
            try {
                ActivityManager.getService().setRequestedOrientation(this.mToken, i);
            } catch (RemoteException unused) {
            }
        } else {
            this.mParent.setRequestedOrientation(i);
        }
    }

    public int getRequestedOrientation() {
        if (this.mParent == null) {
            try {
                return ActivityManager.getService().getRequestedOrientation(this.mToken);
            } catch (RemoteException unused) {
                return -1;
            }
        }
        return this.mParent.getRequestedOrientation();
    }

    public int getTaskId() {
        try {
            return ActivityManager.getService().getTaskForActivity(this.mToken, false);
        } catch (RemoteException unused) {
            return -1;
        }
    }

    public boolean isTaskRoot() {
        try {
            return ActivityManager.getService().getTaskForActivity(this.mToken, true) >= 0;
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean moveTaskToBack(boolean z) {
        try {
            return ActivityManager.getService().moveActivityTaskToBack(this.mToken, z);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public String getLocalClassName() {
        String packageName = getPackageName();
        String className = this.mComponent.getClassName();
        int length = packageName.length();
        return (className.startsWith(packageName) && className.length() > length && className.charAt(length) == '.') ? className.substring(length + 1) : className;
    }

    public ComponentName getComponentName() {
        return this.mComponent;
    }

    public final ComponentName autofillClientGetComponentName() {
        return getComponentName();
    }

    public SharedPreferences getPreferences(int i) {
        return getSharedPreferences(getLocalClassName(), i);
    }

    private void ensureSearchManager() {
        if (this.mSearchManager != null) {
            return;
        }
        try {
            this.mSearchManager = new SearchManager(this, null);
        } catch (ServiceManager.ServiceNotFoundException e) {
            throw new IllegalStateException((Throwable) e);
        }
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        if (getBaseContext() == null) {
            throw new IllegalStateException("System services not available to Activities before onCreate()");
        }
        if (Context.WINDOW_SERVICE.equals(str)) {
            return this.mWindowManager;
        }
        if (Context.SEARCH_SERVICE.equals(str)) {
            ensureSearchManager();
            return this.mSearchManager;
        }
        return super.getSystemService(str);
    }

    public void setTitle(CharSequence charSequence) {
        this.mTitle = charSequence;
        onTitleChanged(charSequence, this.mTitleColor);
        if (this.mParent != null) {
            this.mParent.onChildTitleChanged(this, charSequence);
        }
    }

    public void setTitle(int i) {
        setTitle(getText(i));
    }

    @Deprecated
    public void setTitleColor(int i) {
        this.mTitleColor = i;
        onTitleChanged(this.mTitle, i);
    }

    public final CharSequence getTitle() {
        return this.mTitle;
    }

    public final int getTitleColor() {
        return this.mTitleColor;
    }

    protected void onTitleChanged(CharSequence charSequence, int i) {
        if (this.mTitleReady) {
            Window window = getWindow();
            if (window != null) {
                window.setTitle(charSequence);
                if (i != 0) {
                    window.setTitleColor(i);
                }
            }
            if (this.mActionBar != null) {
                this.mActionBar.setWindowTitle(charSequence);
            }
        }
    }

    public void setTaskDescription(ActivityManager.TaskDescription taskDescription) {
        if (this.mTaskDescription != taskDescription) {
            this.mTaskDescription.copyFromPreserveHiddenFields(taskDescription);
            if (taskDescription.getIconFilename() == null && taskDescription.getIcon() != null) {
                int launcherLargeIconSizeInner = ActivityManager.getLauncherLargeIconSizeInner(this);
                this.mTaskDescription.setIcon(Bitmap.createScaledBitmap(taskDescription.getIcon(), launcherLargeIconSizeInner, launcherLargeIconSizeInner, true));
            }
        }
        try {
            ActivityManager.getService().setTaskDescription(this.mToken, this.mTaskDescription);
        } catch (RemoteException unused) {
        }
    }

    @Deprecated
    public final void setProgressBarVisibility(boolean z) {
        getWindow().setFeatureInt(2, z ? -1 : -2);
    }

    @Deprecated
    public final void setProgressBarIndeterminateVisibility(boolean z) {
        getWindow().setFeatureInt(5, z ? -1 : -2);
    }

    @Deprecated
    public final void setProgressBarIndeterminate(boolean z) {
        getWindow().setFeatureInt(2, z ? -3 : -4);
    }

    @Deprecated
    public final void setProgress(int i) {
        getWindow().setFeatureInt(2, i + 0);
    }

    @Deprecated
    public final void setSecondaryProgress(int i) {
        getWindow().setFeatureInt(2, i + 20000);
    }

    public final void setVolumeControlStream(int i) {
        getWindow().setVolumeControlStream(i);
    }

    public final int getVolumeControlStream() {
        return getWindow().getVolumeControlStream();
    }

    public final void setMediaController(MediaController mediaController) {
        getWindow().setMediaController(mediaController);
    }

    public final MediaController getMediaController() {
        return getWindow().getMediaController();
    }

    public final void runOnUiThread(Runnable runnable) {
        if (Thread.currentThread() != this.mUiThread) {
            this.mHandler.post(runnable);
        } else {
            runnable.run();
        }
    }

    public final void autofillClientRunOnUiThread(Runnable runnable) {
        runOnUiThread(runnable);
    }

    @Override // android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        if (!"fragment".equals(str)) {
            return onCreateView(str, context, attributeSet);
        }
        return this.mFragments.onCreateView(view, str, context, attributeSet);
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        dumpInner(str, fileDescriptor, printWriter, strArr);
    }

    void dumpInner(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("Local Activity ");
        printWriter.print(Integer.toHexString(System.identityHashCode(this)));
        printWriter.println(" State:");
        String str2 = str + "  ";
        printWriter.print(str2);
        printWriter.print("mResumed=");
        printWriter.print(this.mResumed);
        printWriter.print(" mStopped=");
        printWriter.print(this.mStopped);
        printWriter.print(" mFinished=");
        printWriter.println(this.mFinished);
        printWriter.print(str2);
        printWriter.print("mChangingConfigurations=");
        printWriter.println(this.mChangingConfigurations);
        printWriter.print(str2);
        printWriter.print("mCurrentConfig=");
        printWriter.println(this.mCurrentConfig);
        this.mFragments.dumpLoaders(str2, fileDescriptor, printWriter, strArr);
        this.mFragments.getFragmentManager().dump(str2, fileDescriptor, printWriter, strArr);
        if (this.mVoiceInteractor != null) {
            this.mVoiceInteractor.dump(str2, fileDescriptor, printWriter, strArr);
        }
        if (getWindow() != null && getWindow().peekDecorView() != null && getWindow().peekDecorView().getViewRootImpl() != null) {
            getWindow().peekDecorView().getViewRootImpl().dump(str, fileDescriptor, printWriter, strArr);
        }
        this.mHandler.getLooper().dump(new PrintWriterPrinter(printWriter), str);
        AutofillManager autofillManager = getAutofillManager();
        if (autofillManager != null) {
            printWriter.print(str);
            printWriter.print("Autofill Compat Mode: ");
            printWriter.println(isAutofillCompatibilityEnabled());
            autofillManager.dump(str, printWriter);
        } else {
            printWriter.print(str);
            printWriter.println("No AutofillManager");
        }
        ResourcesManager.getInstance().dump(str, printWriter);
    }

    public boolean isImmersive() {
        try {
            return ActivityManager.getService().isImmersive(this.mToken);
        } catch (RemoteException unused) {
            return false;
        }
    }

    private boolean isTopOfTask() {
        if (this.mToken == null || this.mWindow == null) {
            return false;
        }
        try {
            return ActivityManager.getService().isTopOfTask(getActivityToken());
        } catch (RemoteException unused) {
            return false;
        }
    }

    @SystemApi
    public void convertFromTranslucent() {
        try {
            this.mTranslucentCallback = null;
            if (ActivityManager.getService().convertFromTranslucent(this.mToken)) {
                WindowManagerGlobal.getInstance().changeCanvasOpacity(this.mToken, true);
            }
        } catch (RemoteException unused) {
        }
    }

    @SystemApi
    public boolean convertToTranslucent(TranslucentConversionListener translucentConversionListener, ActivityOptions activityOptions) {
        boolean z = false;
        try {
            this.mTranslucentCallback = translucentConversionListener;
            this.mChangeCanvasToTranslucent = ActivityManager.getService().convertToTranslucent(this.mToken, activityOptions == null ? null : activityOptions.toBundle());
            WindowManagerGlobal.getInstance().changeCanvasOpacity(this.mToken, false);
            z = true;
        } catch (RemoteException unused) {
            this.mChangeCanvasToTranslucent = false;
        }
        if (!this.mChangeCanvasToTranslucent && this.mTranslucentCallback != null) {
            this.mTranslucentCallback.onTranslucentConversionComplete(z);
        }
        return this.mChangeCanvasToTranslucent;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onTranslucentConversionComplete(boolean z) {
        if (this.mTranslucentCallback != null) {
            this.mTranslucentCallback.onTranslucentConversionComplete(z);
            this.mTranslucentCallback = null;
        }
        if (this.mChangeCanvasToTranslucent) {
            WindowManagerGlobal.getInstance().changeCanvasOpacity(this.mToken, false);
        }
    }

    public void onNewActivityOptions(ActivityOptions activityOptions) {
        this.mActivityTransitionState.setEnterActivityOptions(this, activityOptions);
        if (this.mStopped) {
            return;
        }
        this.mActivityTransitionState.enterReady(this);
    }

    ActivityOptions getActivityOptions() {
        try {
            return ActivityOptions.fromBundle(ActivityManager.getService().getActivityOptions(this.mToken));
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Deprecated
    public void onVisibleBehindCanceled() {
        this.mCalled = true;
    }

    public void dispatchEnterAnimationComplete() {
        onEnterAnimationComplete();
        if (getWindow() == null || getWindow().getDecorView() == null) {
            return;
        }
        getWindow().getDecorView().getViewTreeObserver().dispatchOnEnterAnimationComplete();
    }

    public void setImmersive(boolean z) {
        try {
            ActivityManager.getService().setImmersive(this.mToken, z);
        } catch (RemoteException unused) {
        }
    }

    public void setVrModeEnabled(boolean z, ComponentName componentName) throws PackageManager.NameNotFoundException {
        try {
            if (ActivityManager.getService().setVrMode(this.mToken, z, componentName) == 0) {
            } else {
                throw new PackageManager.NameNotFoundException(componentName.flattenToString());
            }
        } catch (RemoteException unused) {
        }
    }

    public ActionMode startActionMode(ActionMode.Callback callback) {
        return this.mWindow.getDecorView().startActionMode(callback);
    }

    public ActionMode startActionMode(ActionMode.Callback callback, int i) {
        return this.mWindow.getDecorView().startActionMode(callback, i);
    }

    @Override // android.view.Window.Callback
    public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
        if (this.mActionModeTypeStarting != 0) {
            return null;
        }
        initWindowDecorActionBar();
        if (this.mActionBar != null) {
            return this.mActionBar.startActionMode(callback);
        }
        return null;
    }

    @Override // android.view.Window.Callback
    public ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i) {
        try {
            this.mActionModeTypeStarting = i;
            return onWindowStartingActionMode(callback);
        } finally {
            this.mActionModeTypeStarting = 0;
        }
    }

    public boolean shouldUpRecreateTask(Intent intent) {
        try {
            PackageManager packageManager = getPackageManager();
            ComponentName component = intent.getComponent();
            if (component == null) {
                component = intent.resolveActivity(packageManager);
            }
            ActivityInfo activityInfo = packageManager.getActivityInfo(component, 0);
            if (activityInfo.taskAffinity == null) {
                return false;
            }
            return ActivityManager.getService().shouldUpRecreateTask(this.mToken, activityInfo.taskAffinity);
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        } catch (RemoteException unused2) {
            return false;
        }
    }

    public boolean navigateUpTo(Intent intent) {
        int i;
        Intent intent2;
        if (this.mParent == null) {
            if (intent.getComponent() == null) {
                ComponentName resolveActivity = intent.resolveActivity(getPackageManager());
                if (resolveActivity == null) {
                    return false;
                }
                Intent intent3 = new Intent(intent);
                intent3.setComponent(resolveActivity);
                intent = intent3;
            }
            synchronized (this) {
                i = this.mResultCode;
                intent2 = this.mResultData;
            }
            if (intent2 != null) {
                intent2.prepareToLeaveProcess(this);
            }
            try {
                intent.prepareToLeaveProcess(this);
                return ActivityManager.getService().navigateUpTo(this.mToken, intent, i, intent2);
            } catch (RemoteException unused) {
                return false;
            }
        }
        return this.mParent.navigateUpToFromChild(this, intent);
    }

    public boolean navigateUpToFromChild(Activity activity, Intent intent) {
        return navigateUpTo(intent);
    }

    public Intent getParentActivityIntent() {
        String str = this.mActivityInfo.parentActivityName;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        ComponentName componentName = new ComponentName(this, str);
        try {
            if (getPackageManager().getActivityInfo(componentName, 0).parentActivityName == null) {
                return Intent.makeMainActivity(componentName);
            }
            return new Intent().setComponent(componentName);
        } catch (PackageManager.NameNotFoundException unused) {
            Log.e(TAG, "getParentActivityIntent: bad parentActivityName '" + str + "' in manifest");
            return null;
        }
    }

    public void setEnterSharedElementCallback(SharedElementCallback sharedElementCallback) {
        if (sharedElementCallback == null) {
            sharedElementCallback = SharedElementCallback.NULL_CALLBACK;
        }
        this.mEnterTransitionListener = sharedElementCallback;
    }

    public void setExitSharedElementCallback(SharedElementCallback sharedElementCallback) {
        if (sharedElementCallback == null) {
            sharedElementCallback = SharedElementCallback.NULL_CALLBACK;
        }
        this.mExitTransitionListener = sharedElementCallback;
    }

    public void postponeEnterTransition() {
        this.mActivityTransitionState.postponeEnterTransition();
    }

    public void startPostponedEnterTransition() {
        this.mActivityTransitionState.startPostponedEnterTransition();
    }

    public DragAndDropPermissions requestDragAndDropPermissions(DragEvent dragEvent) {
        DragAndDropPermissions obtain = DragAndDropPermissions.obtain(dragEvent);
        if (obtain == null || !obtain.take(getActivityToken())) {
            return null;
        }
        return obtain;
    }

    final void setParent(Activity activity) {
        this.mParent = activity;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void attach(Context context, ActivityThread activityThread, Instrumentation instrumentation, IBinder iBinder, int i, Application application, Intent intent, ActivityInfo activityInfo, CharSequence charSequence, Activity activity, String str, NonConfigurationInstances nonConfigurationInstances, Configuration configuration, String str2, IVoiceInteractor iVoiceInteractor, Window window, ViewRootImpl.ActivityConfigCallback activityConfigCallback) {
        attachBaseContext(context);
        this.mFragments.attachHost(null);
        this.mWindow = new PhoneWindow(this, window, activityConfigCallback);
        this.mWindow.setWindowControllerCallback(this);
        this.mWindow.setCallback(this);
        this.mWindow.setOnWindowDismissedCallback(this);
        this.mWindow.getLayoutInflater().setPrivateFactory(this);
        if (activityInfo.softInputMode != 0) {
            this.mWindow.setSoftInputMode(activityInfo.softInputMode);
        }
        if (activityInfo.uiOptions != 0) {
            this.mWindow.setUiOptions(activityInfo.uiOptions);
        }
        this.mUiThread = Thread.currentThread();
        this.mMainThread = activityThread;
        this.mInstrumentation = instrumentation;
        this.mToken = iBinder;
        this.mIdent = i;
        this.mApplication = application;
        this.mIntent = intent;
        this.mReferrer = str2;
        this.mComponent = intent.getComponent();
        this.mActivityInfo = activityInfo;
        this.mTitle = charSequence;
        this.mParent = activity;
        this.mEmbeddedID = str;
        this.mLastNonConfigurationInstances = nonConfigurationInstances;
        if (iVoiceInteractor != null) {
            if (nonConfigurationInstances != null) {
                this.mVoiceInteractor = nonConfigurationInstances.voiceInteractor;
            } else {
                this.mVoiceInteractor = new VoiceInteractor(iVoiceInteractor, this, this, Looper.myLooper());
            }
        }
        this.mWindow.setWindowManager((WindowManager) context.getSystemService(Context.WINDOW_SERVICE), this.mToken, this.mComponent.flattenToString(), (activityInfo.flags & 512) != 0);
        if (this.mParent != null) {
            this.mWindow.setContainer(this.mParent.getWindow());
        }
        this.mWindowManager = this.mWindow.getWindowManager();
        this.mCurrentConfig = configuration;
        this.mWindow.setColorMode(activityInfo.colorMode);
        setAutofillCompatibilityEnabled(application.isAutofillCompatibilityEnabled());
        enableAutofillCompatibilityIfNeeded();
    }

    private void enableAutofillCompatibilityIfNeeded() {
        AutofillManager autofillManager;
        if (!isAutofillCompatibilityEnabled() || (autofillManager = (AutofillManager) getSystemService(AutofillManager.class)) == null) {
            return;
        }
        autofillManager.enableCompatibilityMode();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final IBinder getActivityToken() {
        return this.mParent != null ? this.mParent.getActivityToken() : this.mToken;
    }

    @VisibleForTesting
    public final ActivityThread getActivityThread() {
        return this.mMainThread;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void performCreate(Bundle bundle) {
        performCreate(bundle, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void performCreate(Bundle bundle, PersistableBundle persistableBundle) {
        this.mCanEnterPictureInPicture = true;
        restoreHasCurrentPermissionRequest(bundle);
        if (persistableBundle != null) {
            onCreate(bundle, persistableBundle);
        } else {
            onCreate(bundle);
        }
        writeEventLog(LOG_AM_ON_CREATE_CALLED, "performCreate");
        this.mActivityTransitionState.readState(bundle);
        this.mVisibleFromClient = !this.mWindow.getWindowStyle().getBoolean(10, false);
        this.mFragments.dispatchActivityCreated();
        this.mActivityTransitionState.setEnterActivityOptions(this, getActivityOptions());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void performNewIntent(Intent intent) {
        this.mCanEnterPictureInPicture = true;
        onNewIntent(intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void performStart(String str) {
        String dlWarning;
        this.mActivityTransitionState.setEnterActivityOptions(this, getActivityOptions());
        this.mFragments.noteStateNotSaved();
        this.mCalled = false;
        this.mFragments.execPendingActions();
        this.mInstrumentation.callActivityOnStart(this);
        writeEventLog(LOG_AM_ON_START_CALLED, str);
        if (!this.mCalled) {
            throw new SuperNotCalledException("Activity " + this.mComponent.toShortString() + " did not call through to super.onStart()");
        }
        this.mFragments.dispatchStart();
        this.mFragments.reportLoaderStart();
        boolean z = (this.mApplication.getApplicationInfo().flags & 2) != 0;
        boolean z2 = SystemProperties.getInt("ro.bionic.ld.warning", 0) == 1;
        if ((z || z2) && (dlWarning = getDlWarning()) != null) {
            String charSequence = getApplicationInfo().loadLabel(getPackageManager()).toString();
            String str2 = "Detected problems with app native libraries\n(please consult log for detail):\n" + dlWarning;
            if (z) {
                new AlertDialog.Builder(this).setTitle(charSequence).setMessage(str2).setPositiveButton(R.string.ok, (DialogInterface.OnClickListener) null).setCancelable(false).show();
            } else {
                Toast.makeText(this, charSequence + "\n" + str2, 1).show();
            }
        }
        boolean z3 = SystemProperties.getInt("ro.art.hiddenapi.warning", 0) == 1;
        if ((z || z3) && !this.mMainThread.mHiddenApiWarningShown && VMRuntime.getRuntime().hasUsedHiddenApi()) {
            this.mMainThread.mHiddenApiWarningShown = true;
            String charSequence2 = getApplicationInfo().loadLabel(getPackageManager()).toString();
            if (z) {
                new AlertDialog.Builder(this).setTitle(charSequence2).setMessage("Detected problems with API compatibility\n(visit g.co/dev/appcompat for more info)").setPositiveButton(R.string.ok, (DialogInterface.OnClickListener) null).setCancelable(false).show();
            } else {
                Toast.makeText(this, charSequence2 + "\nDetected problems with API compatibility\n(visit g.co/dev/appcompat for more info)", 1).show();
            }
        }
        this.mActivityTransitionState.enterReady(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void performRestart(boolean z, String str) {
        this.mCanEnterPictureInPicture = true;
        this.mFragments.noteStateNotSaved();
        if (this.mToken != null && this.mParent == null) {
            WindowManagerGlobal.getInstance().setStoppedState(this.mToken, false);
        }
        if (this.mStopped) {
            this.mStopped = false;
            synchronized (this.mManagedCursors) {
                int size = this.mManagedCursors.size();
                for (int i = 0; i < size; i++) {
                    ManagedCursor managedCursor = this.mManagedCursors.get(i);
                    if (managedCursor.mReleased || managedCursor.mUpdated) {
                        if (!managedCursor.mCursor.requery() && getApplicationInfo().targetSdkVersion >= 14) {
                            throw new IllegalStateException("trying to requery an already closed cursor  " + managedCursor.mCursor);
                        }
                        managedCursor.mReleased = false;
                        managedCursor.mUpdated = false;
                    }
                }
            }
            this.mCalled = false;
            this.mInstrumentation.callActivityOnRestart(this);
            writeEventLog(LOG_AM_ON_RESTART_CALLED, str);
            if (!this.mCalled) {
                throw new SuperNotCalledException("Activity " + this.mComponent.toShortString() + " did not call through to super.onRestart()");
            }
            if (z) {
                performStart(str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void performResume(boolean z, String str) {
        performRestart(true, str);
        this.mFragments.execPendingActions();
        this.mLastNonConfigurationInstances = null;
        if (this.mAutoFillResetNeeded) {
            this.mAutoFillIgnoreFirstResumePause = z;
            boolean z2 = this.mAutoFillIgnoreFirstResumePause;
        }
        this.mCalled = false;
        this.mInstrumentation.callActivityOnResume(this);
        writeEventLog(LOG_AM_ON_RESUME_CALLED, str);
        if (!this.mCalled) {
            throw new SuperNotCalledException("Activity " + this.mComponent.toShortString() + " did not call through to super.onResume()");
        }
        if (!this.mVisibleFromClient && !this.mFinished) {
            Log.w(TAG, "An activity without a UI must call finish() before onResume() completes");
            if (getApplicationInfo().targetSdkVersion > 22) {
                throw new IllegalStateException("Activity " + this.mComponent.toShortString() + " did not call finish() prior to onResume() completing");
            }
        }
        this.mCalled = false;
        this.mFragments.dispatchResume();
        this.mFragments.execPendingActions();
        onPostResume();
        if (this.mCalled) {
            return;
        }
        throw new SuperNotCalledException("Activity " + this.mComponent.toShortString() + " did not call through to super.onPostResume()");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void performPause() {
        this.mDoReportFullyDrawn = false;
        this.mFragments.dispatchPause();
        this.mCalled = false;
        onPause();
        writeEventLog(LOG_AM_ON_PAUSE_CALLED, "performPause");
        this.mResumed = false;
        if (this.mCalled || getApplicationInfo().targetSdkVersion < 9) {
            return;
        }
        throw new SuperNotCalledException("Activity " + this.mComponent.toShortString() + " did not call through to super.onPause()");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void performUserLeaving() {
        onUserInteraction();
        onUserLeaveHint();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void performStop(boolean z, String str) {
        this.mDoReportFullyDrawn = false;
        this.mFragments.doLoaderStop(this.mChangingConfigurations);
        this.mCanEnterPictureInPicture = false;
        if (!this.mStopped) {
            if (this.mWindow != null) {
                this.mWindow.closeAllPanels();
            }
            if (!z && this.mToken != null && this.mParent == null) {
                WindowManagerGlobal.getInstance().setStoppedState(this.mToken, true);
            }
            this.mFragments.dispatchStop();
            this.mCalled = false;
            this.mInstrumentation.callActivityOnStop(this);
            writeEventLog(LOG_AM_ON_STOP_CALLED, str);
            if (!this.mCalled) {
                throw new SuperNotCalledException("Activity " + this.mComponent.toShortString() + " did not call through to super.onStop()");
            }
            synchronized (this.mManagedCursors) {
                int size = this.mManagedCursors.size();
                for (int i = 0; i < size; i++) {
                    ManagedCursor managedCursor = this.mManagedCursors.get(i);
                    if (!managedCursor.mReleased) {
                        managedCursor.mCursor.deactivate();
                        managedCursor.mReleased = true;
                    }
                }
            }
            this.mStopped = true;
        }
        this.mResumed = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void performDestroy() {
        this.mDestroyed = true;
        this.mWindow.destroy();
        this.mFragments.dispatchDestroy();
        onDestroy();
        writeEventLog(LOG_AM_ON_DESTROY_CALLED, "performDestroy");
        this.mFragments.doLoaderDestroy();
        if (this.mVoiceInteractor != null) {
            this.mVoiceInteractor.detachActivity();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void dispatchMultiWindowModeChanged(boolean z, Configuration configuration) {
        this.mFragments.dispatchMultiWindowModeChanged(z, configuration);
        if (this.mWindow != null) {
            this.mWindow.onMultiWindowModeChanged();
        }
        onMultiWindowModeChanged(z, configuration);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void dispatchPictureInPictureModeChanged(boolean z, Configuration configuration) {
        this.mFragments.dispatchPictureInPictureModeChanged(z, configuration);
        if (this.mWindow != null) {
            this.mWindow.onPictureInPictureModeChanged(z);
        }
        onPictureInPictureModeChanged(z, configuration);
    }

    public final boolean isResumed() {
        return this.mResumed;
    }

    private void storeHasCurrentPermissionRequest(Bundle bundle) {
        if (bundle == null || !this.mHasCurrentPermissionsRequest) {
            return;
        }
        bundle.putBoolean(HAS_CURENT_PERMISSIONS_REQUEST_KEY, true);
    }

    private void restoreHasCurrentPermissionRequest(Bundle bundle) {
        if (bundle != null) {
            this.mHasCurrentPermissionsRequest = bundle.getBoolean(HAS_CURENT_PERMISSIONS_REQUEST_KEY, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void dispatchActivityResult(String str, int i, int i2, Intent intent, String str2) {
        this.mFragments.noteStateNotSaved();
        if (str == null) {
            onActivityResult(i, i2, intent);
        } else if (str.startsWith(REQUEST_PERMISSIONS_WHO_PREFIX)) {
            String substring = str.substring(REQUEST_PERMISSIONS_WHO_PREFIX.length());
            if (TextUtils.isEmpty(substring)) {
                dispatchRequestPermissionsResult(i, intent);
            } else {
                Fragment findFragmentByWho = this.mFragments.findFragmentByWho(substring);
                if (findFragmentByWho != null) {
                    dispatchRequestPermissionsResultToFragment(i, intent, findFragmentByWho);
                }
            }
        } else if (str.startsWith("@android:view:")) {
            Iterator it = WindowManagerGlobal.getInstance().getRootViews(getActivityToken()).iterator();
            while (it.hasNext()) {
                ViewRootImpl viewRootImpl = (ViewRootImpl) it.next();
                if (viewRootImpl.getView() != null && viewRootImpl.getView().dispatchActivityResult(str, i, i2, intent)) {
                    return;
                }
            }
        } else if (str.startsWith(AUTO_FILL_AUTH_WHO_PREFIX)) {
            if (i2 != -1) {
                intent = null;
            }
            getAutofillManager().onAuthenticationResult(i, intent, getCurrentFocus());
        } else {
            Fragment findFragmentByWho2 = this.mFragments.findFragmentByWho(str);
            if (findFragmentByWho2 != null) {
                findFragmentByWho2.onActivityResult(i, i2, intent);
            }
        }
        writeEventLog(LOG_AM_ON_ACTIVITY_RESULT_CALLED, str2);
    }

    public void startLockTask() {
        try {
            ActivityManager.getService().startLockTaskModeByToken(this.mToken);
        } catch (RemoteException unused) {
        }
    }

    public void stopLockTask() {
        try {
            ActivityManager.getService().stopLockTaskModeByToken(this.mToken);
        } catch (RemoteException unused) {
        }
    }

    public void showLockTaskEscapeMessage() {
        try {
            ActivityManager.getService().showLockTaskEscapeMessage(this.mToken);
        } catch (RemoteException unused) {
        }
    }

    public boolean isOverlayWithDecorCaptionEnabled() {
        return this.mWindow.isOverlayWithDecorCaptionEnabled();
    }

    public void setOverlayWithDecorCaptionEnabled(boolean z) {
        this.mWindow.setOverlayWithDecorCaptionEnabled(z);
    }

    private void dispatchRequestPermissionsResult(int i, Intent intent) {
        String[] strArr;
        int[] iArr;
        this.mHasCurrentPermissionsRequest = false;
        if (intent != null) {
            strArr = intent.getStringArrayExtra(PackageManager.EXTRA_REQUEST_PERMISSIONS_NAMES);
        } else {
            strArr = new String[0];
        }
        if (intent != null) {
            iArr = intent.getIntArrayExtra(PackageManager.EXTRA_REQUEST_PERMISSIONS_RESULTS);
        } else {
            iArr = new int[0];
        }
        onRequestPermissionsResult(i, strArr, iArr);
    }

    private void dispatchRequestPermissionsResultToFragment(int i, Intent intent, Fragment fragment) {
        String[] strArr;
        int[] iArr;
        if (intent != null) {
            strArr = intent.getStringArrayExtra(PackageManager.EXTRA_REQUEST_PERMISSIONS_NAMES);
        } else {
            strArr = new String[0];
        }
        if (intent != null) {
            iArr = intent.getIntArrayExtra(PackageManager.EXTRA_REQUEST_PERMISSIONS_RESULTS);
        } else {
            iArr = new int[0];
        }
        fragment.onRequestPermissionsResult(i, strArr, iArr);
    }

    public final void autofillClientAuthenticate(int i, IntentSender intentSender, Intent intent) {
        try {
            startIntentSenderForResultInner(intentSender, AUTO_FILL_AUTH_WHO_PREFIX, i, intent, 0, 0, null);
        } catch (IntentSender.SendIntentException e) {
            Log.e(TAG, "authenticate() failed for intent:" + intentSender, e);
        }
    }

    public final void autofillClientResetableStateAvailable() {
        this.mAutoFillResetNeeded = true;
    }

    public final boolean autofillClientRequestShowFillUi(View view, int i, int i2, Rect rect, IAutofillWindowPresenter iAutofillWindowPresenter) {
        boolean isShowing;
        if (this.mAutofillPopupWindow == null) {
            this.mAutofillPopupWindow = new AutofillPopupWindow(iAutofillWindowPresenter);
            isShowing = false;
        } else {
            isShowing = this.mAutofillPopupWindow.isShowing();
        }
        this.mAutofillPopupWindow.update(view, 0, 0, i, i2, rect);
        return !isShowing && this.mAutofillPopupWindow.isShowing();
    }

    public final void autofillClientDispatchUnhandledKey(View view, KeyEvent keyEvent) {
        ViewRootImpl viewRootImpl = view.getViewRootImpl();
        if (viewRootImpl != null) {
            viewRootImpl.dispatchKeyFromAutofill(keyEvent);
        }
    }

    public final boolean autofillClientRequestHideFillUi() {
        if (this.mAutofillPopupWindow == null) {
            return false;
        }
        this.mAutofillPopupWindow.dismiss();
        this.mAutofillPopupWindow = null;
        return true;
    }

    public final boolean autofillClientIsFillUiShowing() {
        return this.mAutofillPopupWindow != null && this.mAutofillPopupWindow.isShowing();
    }

    public final View[] autofillClientFindViewsByAutofillIdTraversal(AutofillId[] autofillIdArr) {
        View[] viewArr = new View[autofillIdArr.length];
        ArrayList rootViews = WindowManagerGlobal.getInstance().getRootViews(getActivityToken());
        for (int i = 0; i < rootViews.size(); i++) {
            View view = ((ViewRootImpl) rootViews.get(i)).getView();
            if (view != null) {
                int length = autofillIdArr.length;
                for (int i2 = 0; i2 < length; i2++) {
                    if (viewArr[i2] == null) {
                        viewArr[i2] = view.findViewByAutofillIdTraversal(autofillIdArr[i2].getViewId());
                    }
                }
            }
        }
        return viewArr;
    }

    public final View autofillClientFindViewByAutofillIdTraversal(AutofillId autofillId) {
        View findViewByAutofillIdTraversal;
        ArrayList rootViews = WindowManagerGlobal.getInstance().getRootViews(getActivityToken());
        for (int i = 0; i < rootViews.size(); i++) {
            View view = ((ViewRootImpl) rootViews.get(i)).getView();
            if (view != null && (findViewByAutofillIdTraversal = view.findViewByAutofillIdTraversal(autofillId.getViewId())) != null) {
                return findViewByAutofillIdTraversal;
            }
        }
        return null;
    }

    public final boolean[] autofillClientGetViewVisibility(AutofillId[] autofillIdArr) {
        int length = autofillIdArr.length;
        boolean[] zArr = new boolean[length];
        for (int i = 0; i < length; i++) {
            AutofillId autofillId = autofillIdArr[i];
            View autofillClientFindViewByAutofillIdTraversal = autofillClientFindViewByAutofillIdTraversal(autofillId);
            if (autofillClientFindViewByAutofillIdTraversal != null) {
                if (!autofillId.isVirtual()) {
                    zArr[i] = autofillClientFindViewByAutofillIdTraversal.isVisibleToUser();
                } else {
                    zArr[i] = autofillClientFindViewByAutofillIdTraversal.isVisibleToUserForAutofill(autofillId.getVirtualChildId());
                }
            }
        }
        if (Helper.sVerbose) {
            Log.v(TAG, "autofillClientGetViewVisibility(): " + Arrays.toString(zArr));
        }
        return zArr;
    }

    public final View autofillClientFindViewByAccessibilityIdTraversal(int i, int i2) {
        View findViewByAccessibilityIdTraversal;
        ArrayList rootViews = WindowManagerGlobal.getInstance().getRootViews(getActivityToken());
        for (int i3 = 0; i3 < rootViews.size(); i3++) {
            View view = ((ViewRootImpl) rootViews.get(i3)).getView();
            if (view != null && view.getAccessibilityWindowId() == i2 && (findViewByAccessibilityIdTraversal = view.findViewByAccessibilityIdTraversal(i)) != null) {
                return findViewByAccessibilityIdTraversal;
            }
        }
        return null;
    }

    public final IBinder autofillClientGetActivityToken() {
        return getActivityToken();
    }

    public final boolean autofillClientIsVisibleForAutofill() {
        return !this.mStopped;
    }

    public final boolean autofillClientIsCompatibilityModeEnabled() {
        return isAutofillCompatibilityEnabled();
    }

    public final boolean isDisablingEnterExitEventForAutofill() {
        return this.mAutoFillIgnoreFirstResumePause || !this.mResumed;
    }

    public void setDisablePreviewScreenshots(boolean z) {
        try {
            ActivityManager.getService().setDisablePreviewScreenshots(this.mToken, z);
        } catch (RemoteException e) {
            Log.e(TAG, "Failed to call setDisablePreviewScreenshots", e);
        }
    }

    public void setShowWhenLocked(boolean z) {
        try {
            ActivityManager.getService().setShowWhenLocked(this.mToken, z);
        } catch (RemoteException e) {
            Log.e(TAG, "Failed to call setShowWhenLocked", e);
        }
    }

    public void setTurnScreenOn(boolean z) {
        try {
            ActivityManager.getService().setTurnScreenOn(this.mToken, z);
        } catch (RemoteException e) {
            Log.e(TAG, "Failed to call setTurnScreenOn", e);
        }
    }

    public void registerRemoteAnimations(RemoteAnimationDefinition remoteAnimationDefinition) {
        try {
            ActivityManager.getService().registerRemoteAnimations(this.mToken, remoteAnimationDefinition);
        } catch (RemoteException e) {
            Log.e(TAG, "Failed to call registerRemoteAnimations", e);
        }
    }

    private void writeEventLog(int i, String str) {
        EventLog.writeEvent(i, Integer.valueOf(UserHandle.myUserId()), getComponentName().getClassName(), str);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    class HostCallbacks extends FragmentHostCallback<Activity> {
        public HostCallbacks() {
            super(Activity.this);
        }

        @Override // android.app.FragmentHostCallback
        public void onDump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            Activity.this.dump(str, fileDescriptor, printWriter, strArr);
        }

        @Override // android.app.FragmentHostCallback
        public boolean onShouldSaveFragmentState(Fragment fragment) {
            return !Activity.this.isFinishing();
        }

        @Override // android.app.FragmentHostCallback
        public LayoutInflater onGetLayoutInflater() {
            LayoutInflater layoutInflater = Activity.this.getLayoutInflater();
            return onUseFragmentManagerInflaterFactory() ? layoutInflater.cloneInContext(Activity.this) : layoutInflater;
        }

        @Override // android.app.FragmentHostCallback
        public boolean onUseFragmentManagerInflaterFactory() {
            return Activity.this.getApplicationInfo().targetSdkVersion >= 21;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.app.FragmentHostCallback
        public Activity onGetHost() {
            return Activity.this;
        }

        @Override // android.app.FragmentHostCallback
        public void onInvalidateOptionsMenu() {
            Activity.this.invalidateOptionsMenu();
        }

        @Override // android.app.FragmentHostCallback
        public void onStartActivityFromFragment(Fragment fragment, Intent intent, int i, Bundle bundle) {
            Activity.this.startActivityFromFragment(fragment, intent, i, bundle);
        }

        @Override // android.app.FragmentHostCallback
        public void onStartActivityAsUserFromFragment(Fragment fragment, Intent intent, int i, Bundle bundle, UserHandle userHandle) {
            Activity.this.startActivityAsUserFromFragment(fragment, intent, i, bundle, userHandle);
        }

        @Override // android.app.FragmentHostCallback
        public void onStartIntentSenderFromFragment(Fragment fragment, IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
            if (Activity.this.mParent == null) {
                Activity.this.startIntentSenderForResultInner(intentSender, fragment.mWho, i, intent, i2, i3, bundle);
            } else if (bundle != null) {
                Activity.this.mParent.startIntentSenderFromChildFragment(fragment, intentSender, i, intent, i2, i3, i4, bundle);
            }
        }

        @Override // android.app.FragmentHostCallback
        public void onRequestPermissionsFromFragment(Fragment fragment, String[] strArr, int i) {
            Activity.this.startActivityForResult(Activity.REQUEST_PERMISSIONS_WHO_PREFIX + fragment.mWho, Activity.this.getPackageManager().buildRequestPermissionsIntent(strArr), i, null);
        }

        @Override // android.app.FragmentHostCallback
        public boolean onHasWindowAnimations() {
            return Activity.this.getWindow() != null;
        }

        @Override // android.app.FragmentHostCallback
        public int onGetWindowAnimations() {
            Window window = Activity.this.getWindow();
            if (window == null) {
                return 0;
            }
            return window.getAttributes().windowAnimations;
        }

        @Override // android.app.FragmentHostCallback
        public void onAttachFragment(Fragment fragment) {
            Activity.this.onAttachFragment(fragment);
        }

        @Override // android.app.FragmentHostCallback, android.app.FragmentContainer
        public <T extends View> T onFindViewById(int i) {
            return (T) Activity.this.findViewById(i);
        }

        @Override // android.app.FragmentHostCallback, android.app.FragmentContainer
        public boolean onHasView() {
            Window window = Activity.this.getWindow();
            return (window == null || window.peekDecorView() == null) ? false : true;
        }
    }
}
