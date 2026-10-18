package android.widget;

import android.R;
import android.animation.ValueAnimator;
import android.app.PendingIntent;
import android.app.RemoteAction;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.content.UndoManager;
import android.content.UndoOperation;
import android.content.UndoOwner;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.LocaleList;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.ParcelableParcel;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.DynamicLayout;
import android.text.Editable;
import android.text.InputFilter;
import android.text.InputType;
import android.text.Layout;
import android.text.ParcelableSpan;
import android.text.Selection;
import android.text.SpanWatcher;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.StaticLayout;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.text.method.KeyListener;
import android.text.method.MetaKeyKeyListener;
import android.text.method.MovementMethod;
import android.text.method.WordIterator;
import android.text.style.EasyEditSpan;
import android.text.style.SuggestionRangeSpan;
import android.text.style.SuggestionSpan;
import android.text.style.TextAppearanceSpan;
import android.text.style.URLSpan;
import android.util.ArraySet;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.SparseArray;
import android.view.ActionMode;
import android.view.ContextMenu;
import android.view.ContextThemeWrapper;
import android.view.DisplayListCanvas;
import android.view.DragAndDropPermissions;
import android.view.DragEvent;
import android.view.InputDevice;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.RenderNode;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.LinearInterpolator;
import android.view.inputmethod.CorrectionInfo;
import android.view.inputmethod.CursorAnchorInfo;
import android.view.inputmethod.ExtractedText;
import android.view.inputmethod.ExtractedTextRequest;
import android.view.inputmethod.InputMethodManager;
import android.view.textclassifier.TextClassification;
import android.view.textclassifier.TextClassificationManager;
import android.view.textclassifier.TextClassifier;
import android.widget.AdapterView;
import android.widget.Editor;
import android.widget.Magnifier;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.android.internal.annotations.VisibleForTesting;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.GrowingArrayUtils;
import com.android.internal.util.Preconditions;
import com.android.internal.view.FloatingActionMode;
import com.android.internal.widget.EditableInputConnection;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes2.dex */
public class Editor {
    static final int BLINK = 500;
    private static final boolean DEBUG_UNDO = false;
    private static final int DRAG_SHADOW_MAX_TEXT_LENGTH = 20;
    static final int EXTRACT_NOTHING = -2;
    static final int EXTRACT_UNKNOWN = -1;
    private static final boolean FLAG_USE_MAGNIFIER = true;
    public static final int HANDLE_TYPE_SELECTION_END = 1;
    public static final int HANDLE_TYPE_SELECTION_START = 0;
    private static final float LINE_SLOP_MULTIPLIER_FOR_HANDLEVIEWS = 0.5f;
    private static final int MENU_ITEM_ORDER_ASSIST = 0;
    private static final int MENU_ITEM_ORDER_AUTOFILL = 10;
    private static final int MENU_ITEM_ORDER_COPY = 5;
    private static final int MENU_ITEM_ORDER_CUT = 4;
    private static final int MENU_ITEM_ORDER_PASTE = 6;
    private static final int MENU_ITEM_ORDER_PASTE_AS_PLAIN_TEXT = 11;
    private static final int MENU_ITEM_ORDER_PROCESS_TEXT_INTENT_ACTIONS_START = 100;
    private static final int MENU_ITEM_ORDER_REDO = 3;
    private static final int MENU_ITEM_ORDER_REPLACE = 9;
    private static final int MENU_ITEM_ORDER_SECONDARY_ASSIST_ACTIONS_START = 50;
    private static final int MENU_ITEM_ORDER_SELECT_ALL = 8;
    private static final int MENU_ITEM_ORDER_SHARE = 7;
    private static final int MENU_ITEM_ORDER_UNDO = 2;
    private static final String TAG = "Editor";
    private static final int TAP_STATE_DOUBLE_TAP = 2;
    private static final int TAP_STATE_FIRST_TAP = 1;
    private static final int TAP_STATE_INITIAL = 0;
    private static final int TAP_STATE_TRIPLE_CLICK = 3;
    private static final String UNDO_OWNER_TAG = "Editor";
    private static final int UNSET_LINE = -1;
    private static final int UNSET_X_VALUE = -1;
    private Blink mBlink;
    private float mContextMenuAnchorX;
    private float mContextMenuAnchorY;
    private CorrectionHighlighter mCorrectionHighlighter;
    boolean mCreatedWithASelection;
    private final CursorAnchorInfoNotifier mCursorAnchorInfoNotifier;
    ActionMode.Callback mCustomInsertionActionModeCallback;
    ActionMode.Callback mCustomSelectionActionModeCallback;
    boolean mDiscardNextActionUp;
    CharSequence mError;
    private ErrorPopup mErrorPopup;
    boolean mErrorWasChanged;
    boolean mFrozenWithFocus;
    private final boolean mHapticTextHandleEnabled;
    boolean mIgnoreActionUpEvent;
    boolean mInBatchEditControllers;
    InputContentType mInputContentType;
    InputMethodState mInputMethodState;
    private Runnable mInsertionActionModeRunnable;
    private boolean mInsertionControllerEnabled;
    private InsertionPointCursorController mInsertionPointCursorController;
    boolean mIsBeingLongClicked;
    KeyListener mKeyListener;
    private int mLastButtonState;
    private float mLastDownPositionX;
    private float mLastDownPositionY;
    private float mLastUpPositionX;
    private float mLastUpPositionY;
    private final MagnifierMotionAnimator mMagnifierAnimator;
    private PositionListener mPositionListener;
    private boolean mPreserveSelection;
    final ProcessTextIntentActionsHandler mProcessTextIntentActionsHandler;
    private boolean mRenderCursorRegardlessTiming;
    private boolean mRequestingLinkActionMode;
    private boolean mRestartActionModeOnNextRefresh;
    boolean mSelectAllOnFocus;
    private Drawable mSelectHandleCenter;
    private Drawable mSelectHandleLeft;
    private Drawable mSelectHandleRight;
    private SelectionActionModeHelper mSelectionActionModeHelper;
    private boolean mSelectionControllerEnabled;
    SelectionModifierCursorController mSelectionModifierCursorController;
    boolean mSelectionMoved;
    private long mShowCursor;
    private boolean mShowErrorAfterAttach;
    private Runnable mShowSuggestionRunnable;
    private SpanController mSpanController;
    SpellChecker mSpellChecker;
    private final SuggestionHelper mSuggestionHelper;
    SuggestionRangeSpan mSuggestionRangeSpan;
    private SuggestionsPopupWindow mSuggestionsPopupWindow;
    private Rect mTempRect;
    private ActionMode mTextActionMode;
    boolean mTextIsSelectable;
    private TextRenderNode[] mTextRenderNodes;
    private final TextView mTextView;
    boolean mTouchFocusSelected;
    private boolean mUpdateWordIteratorText;
    private WordIterator mWordIterator;
    private WordIterator mWordIteratorWithText;
    private final UndoManager mUndoManager = new UndoManager();
    private UndoOwner mUndoOwner = this.mUndoManager.getOwner("Editor", this);
    final UndoInputFilter mUndoInputFilter = new UndoInputFilter(this);
    boolean mAllowUndo = true;
    private final MetricsLogger mMetricsLogger = new MetricsLogger();
    private final Runnable mUpdateMagnifierRunnable = new Runnable() { // from class: android.widget.Editor.1
        @Override // java.lang.Runnable
        public void run() {
            Editor.this.mMagnifierAnimator.update();
        }
    };
    private final ViewTreeObserver.OnDrawListener mMagnifierOnDrawListener = new ViewTreeObserver.OnDrawListener() { // from class: android.widget.Editor.2
        @Override // android.view.ViewTreeObserver.OnDrawListener
        public void onDraw() {
            if (Editor.this.mMagnifierAnimator != null) {
                Editor.this.mTextView.post(Editor.this.mUpdateMagnifierRunnable);
            }
        }
    };
    int mInputType = 0;
    boolean mCursorVisible = true;
    boolean mShowSoftInputOnFocus = true;
    Drawable mDrawableForCursor = null;
    private int mTapState = 0;
    private long mLastTouchUpTime = 0;
    private final Runnable mShowFloatingToolbar = new Runnable() { // from class: android.widget.Editor.3
        @Override // java.lang.Runnable
        public void run() {
            if (Editor.this.mTextActionMode != null) {
                Editor.this.mTextActionMode.hide(0L);
            }
        }
    };
    boolean mIsInsertionActionModeStartPending = false;
    private final MenuItem.OnMenuItemClickListener mOnContextMenuItemClickListener = new MenuItem.OnMenuItemClickListener() { // from class: android.widget.Editor.5
        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            if (Editor.this.mProcessTextIntentActionsHandler.performMenuItemAction(menuItem)) {
                return true;
            }
            return Editor.this.mTextView.onTextContextMenuItem(menuItem.getItemId());
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public interface CursorController extends ViewTreeObserver.OnTouchModeChangeListener {
        void hide();

        boolean isActive();

        boolean isCursorBeingModified();

        void onDetached();

        void show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public interface EasyEditDeleteListener {
        void onDeleteClick(EasyEditSpan easyEditSpan);
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes2.dex */
    public @interface HandleType {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes2.dex */
    private @interface MagnifierHandleTrigger {
        public static final int INSERTION = 0;
        public static final int SELECTION_END = 2;
        public static final int SELECTION_START = 1;
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    @interface TextActionMode {
        public static final int INSERTION = 1;
        public static final int SELECTION = 0;
        public static final int TEXT_LINK = 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public interface TextViewPositionListener {
        void updatePosition(int i, int i2, boolean z, boolean z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class TextRenderNode {
        boolean isDirty = true;
        boolean needsToBeShifted = true;
        RenderNode renderNode;

        public TextRenderNode(String str) {
            this.renderNode = RenderNode.create(str, null);
        }

        boolean needsRecord() {
            return this.isDirty || !this.renderNode.isValid();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Editor(TextView textView) {
        this.mCursorAnchorInfoNotifier = new CursorAnchorInfoNotifier();
        this.mSuggestionHelper = new SuggestionHelper();
        this.mTextView = textView;
        this.mTextView.setFilters(this.mTextView.getFilters());
        this.mProcessTextIntentActionsHandler = new ProcessTextIntentActionsHandler();
        this.mHapticTextHandleEnabled = this.mTextView.getContext().getResources().getBoolean(R.^attr-private.internalMinHeight);
        this.mMagnifierAnimator = new MagnifierMotionAnimator(new Magnifier(this.mTextView));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ParcelableParcel saveInstanceState() {
        ParcelableParcel parcelableParcel = new ParcelableParcel(getClass().getClassLoader());
        Parcel parcel = parcelableParcel.getParcel();
        this.mUndoManager.saveInstanceState(parcel);
        this.mUndoInputFilter.saveInstanceState(parcel);
        return parcelableParcel;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void restoreInstanceState(ParcelableParcel parcelableParcel) {
        Parcel parcel = parcelableParcel.getParcel();
        this.mUndoManager.restoreInstanceState(parcel, parcelableParcel.getClassLoader());
        this.mUndoInputFilter.restoreInstanceState(parcel);
        this.mUndoOwner = this.mUndoManager.getOwner("Editor", this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void forgetUndoRedo() {
        UndoOwner[] undoOwnerArr = {this.mUndoOwner};
        this.mUndoManager.forgetUndos(undoOwnerArr, -1);
        this.mUndoManager.forgetRedos(undoOwnerArr, -1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean canUndo() {
        return this.mAllowUndo && this.mUndoManager.countUndos(new UndoOwner[]{this.mUndoOwner}) > 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean canRedo() {
        return this.mAllowUndo && this.mUndoManager.countRedos(new UndoOwner[]{this.mUndoOwner}) > 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void undo() {
        if (this.mAllowUndo) {
            this.mUndoManager.undo(new UndoOwner[]{this.mUndoOwner}, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void redo() {
        if (this.mAllowUndo) {
            this.mUndoManager.redo(new UndoOwner[]{this.mUndoOwner}, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void replace() {
        if (this.mSuggestionsPopupWindow == null) {
            this.mSuggestionsPopupWindow = new SuggestionsPopupWindow();
        }
        hideCursorAndSpanControllers();
        this.mSuggestionsPopupWindow.show();
        Selection.setSelection((Spannable) this.mTextView.getText(), (this.mTextView.getSelectionStart() + this.mTextView.getSelectionEnd()) / 2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onAttachedToWindow() {
        if (this.mShowErrorAfterAttach) {
            showError();
            this.mShowErrorAfterAttach = false;
        }
        ViewTreeObserver viewTreeObserver = this.mTextView.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            if (this.mInsertionPointCursorController != null) {
                viewTreeObserver.addOnTouchModeChangeListener(this.mInsertionPointCursorController);
            }
            if (this.mSelectionModifierCursorController != null) {
                this.mSelectionModifierCursorController.resetTouchOffsets();
                viewTreeObserver.addOnTouchModeChangeListener(this.mSelectionModifierCursorController);
            }
            viewTreeObserver.addOnDrawListener(this.mMagnifierOnDrawListener);
        }
        updateSpellCheckSpans(0, this.mTextView.getText().length(), true);
        if (this.mTextView.hasSelection()) {
            refreshTextActionMode();
        }
        getPositionListener().addSubscriber(this.mCursorAnchorInfoNotifier, true);
        resumeBlink();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onDetachedFromWindow() {
        getPositionListener().removeSubscriber(this.mCursorAnchorInfoNotifier);
        if (this.mError != null) {
            hideError();
        }
        suspendBlink();
        if (this.mInsertionPointCursorController != null) {
            this.mInsertionPointCursorController.onDetached();
        }
        if (this.mSelectionModifierCursorController != null) {
            this.mSelectionModifierCursorController.onDetached();
        }
        if (this.mShowSuggestionRunnable != null) {
            this.mTextView.removeCallbacks(this.mShowSuggestionRunnable);
        }
        if (this.mInsertionActionModeRunnable != null) {
            this.mTextView.removeCallbacks(this.mInsertionActionModeRunnable);
        }
        this.mTextView.removeCallbacks(this.mShowFloatingToolbar);
        discardTextDisplayLists();
        if (this.mSpellChecker != null) {
            this.mSpellChecker.closeSession();
            this.mSpellChecker = null;
        }
        ViewTreeObserver viewTreeObserver = this.mTextView.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnDrawListener(this.mMagnifierOnDrawListener);
        }
        hideCursorAndSpanControllers();
        stopTextActionModeWithPreservingSelection();
    }

    private void discardTextDisplayLists() {
        if (this.mTextRenderNodes != null) {
            for (int i = 0; i < this.mTextRenderNodes.length; i++) {
                RenderNode renderNode = this.mTextRenderNodes[i] != null ? this.mTextRenderNodes[i].renderNode : null;
                if (renderNode != null && renderNode.isValid()) {
                    renderNode.discardDisplayList();
                }
            }
        }
    }

    private void showError() {
        if (this.mTextView.getWindowToken() == null) {
            this.mShowErrorAfterAttach = true;
            return;
        }
        if (this.mErrorPopup == null) {
            TextView textView = (TextView) LayoutInflater.from(this.mTextView.getContext()).inflate(R.layout.slice_title, (ViewGroup) null);
            float f = this.mTextView.getResources().getDisplayMetrics().density;
            this.mErrorPopup = new ErrorPopup(textView, (int) ((200.0f * f) + LINE_SLOP_MULTIPLIER_FOR_HANDLEVIEWS), (int) ((f * 50.0f) + LINE_SLOP_MULTIPLIER_FOR_HANDLEVIEWS));
            this.mErrorPopup.setFocusable(false);
            this.mErrorPopup.setInputMethodMode(1);
        }
        TextView textView2 = (TextView) this.mErrorPopup.getContentView();
        chooseSize(this.mErrorPopup, this.mError, textView2);
        textView2.setText(this.mError);
        this.mErrorPopup.showAsDropDown(this.mTextView, getErrorX(), getErrorY(), 51);
        this.mErrorPopup.fixDirection(this.mErrorPopup.isAboveAnchor());
    }

    public void setError(CharSequence charSequence, Drawable drawable) {
        this.mError = TextUtils.stringOrSpannedString(charSequence);
        this.mErrorWasChanged = true;
        if (this.mError == null) {
            setErrorIcon(null);
            if (this.mErrorPopup != null) {
                if (this.mErrorPopup.isShowing()) {
                    this.mErrorPopup.dismiss();
                }
                this.mErrorPopup = null;
            }
            this.mShowErrorAfterAttach = false;
            return;
        }
        setErrorIcon(drawable);
        if (this.mTextView.isFocused()) {
            showError();
        }
    }

    private void setErrorIcon(Drawable drawable) {
        TextView.Drawables drawables = this.mTextView.mDrawables;
        if (drawables == null) {
            TextView textView = this.mTextView;
            TextView.Drawables drawables2 = new TextView.Drawables(this.mTextView.getContext());
            textView.mDrawables = drawables2;
            drawables = drawables2;
        }
        drawables.setErrorDrawable(drawable, this.mTextView);
        this.mTextView.resetResolvedDrawables();
        this.mTextView.invalidate();
        this.mTextView.requestLayout();
    }

    private void hideError() {
        if (this.mErrorPopup != null && this.mErrorPopup.isShowing()) {
            this.mErrorPopup.dismiss();
        }
        this.mShowErrorAfterAttach = false;
    }

    private int getErrorX() {
        float f = this.mTextView.getResources().getDisplayMetrics().density;
        TextView.Drawables drawables = this.mTextView.mDrawables;
        if (this.mTextView.getLayoutDirection() != 1) {
            return ((this.mTextView.getWidth() - this.mErrorPopup.getWidth()) - this.mTextView.getPaddingRight()) + ((-(drawables != null ? drawables.mDrawableSizeRight : 0)) / 2) + ((int) ((f * 25.0f) + LINE_SLOP_MULTIPLIER_FOR_HANDLEVIEWS));
        }
        return this.mTextView.getPaddingLeft() + (((drawables != null ? drawables.mDrawableSizeLeft : 0) / 2) - ((int) ((f * 25.0f) + LINE_SLOP_MULTIPLIER_FOR_HANDLEVIEWS)));
    }

    private int getErrorY() {
        int compoundPaddingTop = this.mTextView.getCompoundPaddingTop();
        int bottom = ((this.mTextView.getBottom() - this.mTextView.getTop()) - this.mTextView.getCompoundPaddingBottom()) - compoundPaddingTop;
        TextView.Drawables drawables = this.mTextView.mDrawables;
        int i = 0;
        if (this.mTextView.getLayoutDirection() != 1) {
            if (drawables != null) {
                i = drawables.mDrawableHeightRight;
            }
        } else if (drawables != null) {
            i = drawables.mDrawableHeightLeft;
        }
        return (((compoundPaddingTop + ((bottom - i) / 2)) + i) - this.mTextView.getHeight()) - ((int) ((this.mTextView.getResources().getDisplayMetrics().density * 2.0f) + LINE_SLOP_MULTIPLIER_FOR_HANDLEVIEWS));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void createInputContentTypeIfNeeded() {
        if (this.mInputContentType == null) {
            this.mInputContentType = new InputContentType();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void createInputMethodStateIfNeeded() {
        if (this.mInputMethodState == null) {
            this.mInputMethodState = new InputMethodState();
        }
    }

    private boolean isCursorVisible() {
        return this.mCursorVisible && this.mTextView.isTextEditable();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean shouldRenderCursor() {
        if (isCursorVisible()) {
            return this.mRenderCursorRegardlessTiming || (SystemClock.uptimeMillis() - this.mShowCursor) % 1000 < 500;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:22:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void prepareCursorControllers() {
        boolean z;
        ViewGroup.LayoutParams layoutParams = this.mTextView.getRootView().getLayoutParams();
        if (layoutParams instanceof WindowManager.LayoutParams) {
            WindowManager.LayoutParams layoutParams2 = (WindowManager.LayoutParams) layoutParams;
            if (layoutParams2.type < 1000 || layoutParams2.type > 1999) {
                z = true;
                boolean z2 = (z || this.mTextView.getLayout() == null) ? false : true;
                this.mInsertionControllerEnabled = !z2 && isCursorVisible();
                this.mSelectionControllerEnabled = !z2 && this.mTextView.textCanBeSelected();
                if (!this.mInsertionControllerEnabled) {
                    hideInsertionPointCursorController();
                    if (this.mInsertionPointCursorController != null) {
                        this.mInsertionPointCursorController.onDetached();
                        this.mInsertionPointCursorController = null;
                    }
                }
                if (this.mSelectionControllerEnabled) {
                    stopTextActionMode();
                    if (this.mSelectionModifierCursorController != null) {
                        this.mSelectionModifierCursorController.onDetached();
                        this.mSelectionModifierCursorController = null;
                        return;
                    }
                    return;
                }
                return;
            }
        }
        z = false;
        if (z) {
        }
        this.mInsertionControllerEnabled = !z2 && isCursorVisible();
        this.mSelectionControllerEnabled = !z2 && this.mTextView.textCanBeSelected();
        if (!this.mInsertionControllerEnabled) {
        }
        if (this.mSelectionControllerEnabled) {
        }
    }

    void hideInsertionPointCursorController() {
        if (this.mInsertionPointCursorController != null) {
            this.mInsertionPointCursorController.hide();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void hideCursorAndSpanControllers() {
        hideCursorControllers();
        hideSpanControllers();
    }

    private void hideSpanControllers() {
        if (this.mSpanController != null) {
            this.mSpanController.hide();
        }
    }

    private void hideCursorControllers() {
        if (this.mSuggestionsPopupWindow != null && (this.mTextView.isInExtractedMode() || !this.mSuggestionsPopupWindow.isShowingUp())) {
            this.mSuggestionsPopupWindow.hide();
        }
        hideInsertionPointCursorController();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSpellCheckSpans(int i, int i2, boolean z) {
        this.mTextView.removeAdjacentSuggestionSpans(i);
        this.mTextView.removeAdjacentSuggestionSpans(i2);
        if (this.mTextView.isTextEditable() && this.mTextView.isSuggestionsEnabled() && !this.mTextView.isInExtractedMode()) {
            if (this.mSpellChecker == null && z) {
                this.mSpellChecker = new SpellChecker(this.mTextView);
            }
            if (this.mSpellChecker != null) {
                this.mSpellChecker.spellCheck(i, i2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onScreenStateChanged(int i) {
        switch (i) {
            case 0:
                suspendBlink();
                return;
            case 1:
                resumeBlink();
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void suspendBlink() {
        if (this.mBlink != null) {
            this.mBlink.cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resumeBlink() {
        if (this.mBlink != null) {
            this.mBlink.uncancel();
            makeBlink();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void adjustInputType(boolean z, boolean z2, boolean z3, boolean z4) {
        if ((this.mInputType & 15) != 1) {
            if ((this.mInputType & 15) == 2 && z4) {
                this.mInputType = (this.mInputType & (-4081)) | 16;
                return;
            }
            return;
        }
        if (z || z2) {
            this.mInputType = (this.mInputType & (-4081)) | 128;
        }
        if (z3) {
            this.mInputType = (this.mInputType & (-4081)) | 224;
        }
    }

    private void chooseSize(PopupWindow popupWindow, CharSequence charSequence, TextView textView) {
        int paddingLeft = textView.getPaddingLeft() + textView.getPaddingRight();
        int paddingTop = textView.getPaddingTop() + textView.getPaddingBottom();
        StaticLayout build = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), textView.getPaint(), this.mTextView.getResources().getDimensionPixelSize(R.dimen.notification_header_padding_bottom)).setUseLineSpacingFromFallbacks(textView.mUseFallbackLineSpacing).build();
        float f = 0.0f;
        for (int i = 0; i < build.getLineCount(); i++) {
            f = Math.max(f, build.getLineWidth(i));
        }
        popupWindow.setWidth(paddingLeft + ((int) Math.ceil(f)));
        popupWindow.setHeight(paddingTop + build.getHeight());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setFrame() {
        if (this.mErrorPopup != null) {
            chooseSize(this.mErrorPopup, this.mError, (TextView) this.mErrorPopup.getContentView());
            this.mErrorPopup.update(this.mTextView, getErrorX(), getErrorY(), this.mErrorPopup.getWidth(), this.mErrorPopup.getHeight());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getWordStart(int i) {
        int prevWordBeginningOnTwoWordsBoundary;
        if (getWordIteratorWithText().isOnPunctuation(getWordIteratorWithText().prevBoundary(i))) {
            prevWordBeginningOnTwoWordsBoundary = getWordIteratorWithText().getPunctuationBeginning(i);
        } else {
            prevWordBeginningOnTwoWordsBoundary = getWordIteratorWithText().getPrevWordBeginningOnTwoWordsBoundary(i);
        }
        return prevWordBeginningOnTwoWordsBoundary == -1 ? i : prevWordBeginningOnTwoWordsBoundary;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getWordEnd(int i) {
        int nextWordEndOnTwoWordBoundary;
        if (getWordIteratorWithText().isAfterPunctuation(getWordIteratorWithText().nextBoundary(i))) {
            nextWordEndOnTwoWordBoundary = getWordIteratorWithText().getPunctuationEnd(i);
        } else {
            nextWordEndOnTwoWordBoundary = getWordIteratorWithText().getNextWordEndOnTwoWordBoundary(i);
        }
        return nextWordEndOnTwoWordBoundary == -1 ? i : nextWordEndOnTwoWordBoundary;
    }

    private boolean needsToSelectAllToSelectWordOrParagraph() {
        if (this.mTextView.hasPasswordTransformationMethod()) {
            return true;
        }
        int inputType = this.mTextView.getInputType();
        int i = inputType & 15;
        int i2 = inputType & InputType.TYPE_MASK_VARIATION;
        return i == 2 || i == 3 || i == 4 || i2 == 16 || i2 == 32 || i2 == 208 || i2 == 176;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean selectCurrentWord() {
        int end;
        int unpackRangeStartFromLong;
        if (!this.mTextView.canSelectText()) {
            return false;
        }
        if (needsToSelectAllToSelectWordOrParagraph()) {
            return this.mTextView.selectAllText();
        }
        long lastTouchOffsets = getLastTouchOffsets();
        int unpackRangeStartFromLong2 = TextUtils.unpackRangeStartFromLong(lastTouchOffsets);
        int unpackRangeEndFromLong = TextUtils.unpackRangeEndFromLong(lastTouchOffsets);
        if (unpackRangeStartFromLong2 < 0 || unpackRangeStartFromLong2 > this.mTextView.getText().length() || unpackRangeEndFromLong < 0 || unpackRangeEndFromLong > this.mTextView.getText().length()) {
            return false;
        }
        URLSpan[] uRLSpanArr = (URLSpan[]) ((Spanned) this.mTextView.getText()).getSpans(unpackRangeStartFromLong2, unpackRangeEndFromLong, URLSpan.class);
        if (uRLSpanArr.length >= 1) {
            URLSpan uRLSpan = uRLSpanArr[0];
            int spanStart = ((Spanned) this.mTextView.getText()).getSpanStart(uRLSpan);
            end = ((Spanned) this.mTextView.getText()).getSpanEnd(uRLSpan);
            unpackRangeStartFromLong = spanStart;
        } else {
            WordIterator wordIterator = getWordIterator();
            wordIterator.setCharSequence(this.mTextView.getText(), unpackRangeStartFromLong2, unpackRangeEndFromLong);
            int beginning = wordIterator.getBeginning(unpackRangeStartFromLong2);
            end = wordIterator.getEnd(unpackRangeEndFromLong);
            if (beginning == -1 || end == -1 || beginning == end) {
                long charClusterRange = getCharClusterRange(unpackRangeStartFromLong2);
                unpackRangeStartFromLong = TextUtils.unpackRangeStartFromLong(charClusterRange);
                end = TextUtils.unpackRangeEndFromLong(charClusterRange);
            } else {
                unpackRangeStartFromLong = beginning;
            }
        }
        Selection.setSelection((Spannable) this.mTextView.getText(), unpackRangeStartFromLong, end);
        return end > unpackRangeStartFromLong;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean selectCurrentParagraph() {
        if (!this.mTextView.canSelectText()) {
            return false;
        }
        if (needsToSelectAllToSelectWordOrParagraph()) {
            return this.mTextView.selectAllText();
        }
        long lastTouchOffsets = getLastTouchOffsets();
        long paragraphsRange = getParagraphsRange(TextUtils.unpackRangeStartFromLong(lastTouchOffsets), TextUtils.unpackRangeEndFromLong(lastTouchOffsets));
        int unpackRangeStartFromLong = TextUtils.unpackRangeStartFromLong(paragraphsRange);
        int unpackRangeEndFromLong = TextUtils.unpackRangeEndFromLong(paragraphsRange);
        if (unpackRangeStartFromLong >= unpackRangeEndFromLong) {
            return false;
        }
        Selection.setSelection((Spannable) this.mTextView.getText(), unpackRangeStartFromLong, unpackRangeEndFromLong);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long getParagraphsRange(int i, int i2) {
        Layout layout = this.mTextView.getLayout();
        if (layout == null) {
            return TextUtils.packRangeInLong(-1, -1);
        }
        CharSequence text = this.mTextView.getText();
        int lineForOffset = layout.getLineForOffset(i);
        while (lineForOffset > 0 && text.charAt(layout.getLineEnd(lineForOffset - 1) - 1) != '\n') {
            lineForOffset--;
        }
        int lineForOffset2 = layout.getLineForOffset(i2);
        while (lineForOffset2 < layout.getLineCount() - 1 && text.charAt(layout.getLineEnd(lineForOffset2) - 1) != '\n') {
            lineForOffset2++;
        }
        return TextUtils.packRangeInLong(layout.getLineStart(lineForOffset), layout.getLineEnd(lineForOffset2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onLocaleChanged() {
        this.mWordIterator = null;
        this.mWordIteratorWithText = null;
    }

    public WordIterator getWordIterator() {
        if (this.mWordIterator == null) {
            this.mWordIterator = new WordIterator(this.mTextView.getTextServicesLocale());
        }
        return this.mWordIterator;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public WordIterator getWordIteratorWithText() {
        if (this.mWordIteratorWithText == null) {
            this.mWordIteratorWithText = new WordIterator(this.mTextView.getTextServicesLocale());
            this.mUpdateWordIteratorText = true;
        }
        if (this.mUpdateWordIteratorText) {
            CharSequence text = this.mTextView.getText();
            this.mWordIteratorWithText.setCharSequence(text, 0, text.length());
            this.mUpdateWordIteratorText = false;
        }
        return this.mWordIteratorWithText;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getNextCursorOffset(int i, boolean z) {
        Layout layout = this.mTextView.getLayout();
        return layout == null ? i : z == layout.isRtlCharAt(i) ? layout.getOffsetToLeftOf(i) : layout.getOffsetToRightOf(i);
    }

    private long getCharClusterRange(int i) {
        if (i < this.mTextView.getText().length()) {
            int nextCursorOffset = getNextCursorOffset(i, true);
            return TextUtils.packRangeInLong(getNextCursorOffset(nextCursorOffset, false), nextCursorOffset);
        }
        if (i - 1 >= 0) {
            int nextCursorOffset2 = getNextCursorOffset(i, false);
            return TextUtils.packRangeInLong(nextCursorOffset2, getNextCursorOffset(nextCursorOffset2, true));
        }
        return TextUtils.packRangeInLong(i, i);
    }

    private boolean touchPositionIsInSelection() {
        int selectionStart = this.mTextView.getSelectionStart();
        int selectionEnd = this.mTextView.getSelectionEnd();
        if (selectionStart == selectionEnd) {
            return false;
        }
        if (selectionStart > selectionEnd) {
            Selection.setSelection((Spannable) this.mTextView.getText(), selectionEnd, selectionStart);
            selectionEnd = selectionStart;
            selectionStart = selectionEnd;
        }
        SelectionModifierCursorController selectionController = getSelectionController();
        return selectionController.getMinTouchOffset() >= selectionStart && selectionController.getMaxTouchOffset() < selectionEnd;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PositionListener getPositionListener() {
        if (this.mPositionListener == null) {
            this.mPositionListener = new PositionListener();
        }
        return this.mPositionListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isOffsetVisible(int i) {
        Layout layout = this.mTextView.getLayout();
        if (layout == null) {
            return false;
        }
        int lineBottom = layout.getLineBottom(layout.getLineForOffset(i));
        return this.mTextView.isPositionVisible(((int) layout.getPrimaryHorizontal(i)) + this.mTextView.viewportToContentHorizontalOffset(), lineBottom + this.mTextView.viewportToContentVerticalOffset());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isPositionOnText(float f, float f2) {
        Layout layout = this.mTextView.getLayout();
        if (layout == null) {
            return false;
        }
        int lineAtCoordinate = this.mTextView.getLineAtCoordinate(f2);
        float convertToLocalHorizontalCoordinate = this.mTextView.convertToLocalHorizontalCoordinate(f);
        return convertToLocalHorizontalCoordinate >= layout.getLineLeft(lineAtCoordinate) && convertToLocalHorizontalCoordinate <= layout.getLineRight(lineAtCoordinate);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startDragAndDrop() {
        getSelectionActionModeHelper().onSelectionDrag();
        if (this.mTextView.isInExtractedMode()) {
            return;
        }
        int selectionStart = this.mTextView.getSelectionStart();
        int selectionEnd = this.mTextView.getSelectionEnd();
        this.mTextView.startDragAndDrop(ClipData.newPlainText(null, this.mTextView.getTransformedText(selectionStart, selectionEnd)), getTextThumbnailBuilder(selectionStart, selectionEnd), new DragLocalState(this.mTextView, selectionStart, selectionEnd), 256);
        stopTextActionMode();
        if (hasSelectionController()) {
            getSelectionController().resetTouchOffsets();
        }
    }

    public boolean performLongClick(boolean z) {
        if (!z && !isPositionOnText(this.mLastDownPositionX, this.mLastDownPositionY) && this.mInsertionControllerEnabled) {
            Selection.setSelection((Spannable) this.mTextView.getText(), this.mTextView.getOffsetForPosition(this.mLastDownPositionX, this.mLastDownPositionY));
            getInsertionController().show();
            this.mIsInsertionActionModeStartPending = true;
            MetricsLogger.action(this.mTextView.getContext(), 629, 0);
            z = true;
        }
        if (!z && this.mTextActionMode != null) {
            if (touchPositionIsInSelection()) {
                startDragAndDrop();
                MetricsLogger.action(this.mTextView.getContext(), 629, 2);
            } else {
                stopTextActionMode();
                selectCurrentWordAndStartDrag();
                MetricsLogger.action(this.mTextView.getContext(), 629, 1);
            }
            z = true;
        }
        if (!z && (z = selectCurrentWordAndStartDrag())) {
            MetricsLogger.action(this.mTextView.getContext(), 629, 1);
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float getLastUpPositionX() {
        return this.mLastUpPositionX;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float getLastUpPositionY() {
        return this.mLastUpPositionY;
    }

    private long getLastTouchOffsets() {
        SelectionModifierCursorController selectionController = getSelectionController();
        return TextUtils.packRangeInLong(selectionController.getMinTouchOffset(), selectionController.getMaxTouchOffset());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onFocusChanged(boolean z, int i) {
        this.mShowCursor = SystemClock.uptimeMillis();
        ensureEndedBatchEdit();
        if (z) {
            int selectionStart = this.mTextView.getSelectionStart();
            int selectionEnd = this.mTextView.getSelectionEnd();
            this.mCreatedWithASelection = this.mFrozenWithFocus && this.mTextView.hasSelection() && !(this.mSelectAllOnFocus && selectionStart == 0 && selectionEnd == this.mTextView.getText().length());
            if (!this.mFrozenWithFocus || selectionStart < 0 || selectionEnd < 0) {
                int lastTapPosition = getLastTapPosition();
                if (lastTapPosition >= 0) {
                    Selection.setSelection((Spannable) this.mTextView.getText(), lastTapPosition);
                }
                MovementMethod movementMethod = this.mTextView.getMovementMethod();
                if (movementMethod != null) {
                    movementMethod.onTakeFocus(this.mTextView, (Spannable) this.mTextView.getText(), i);
                }
                if ((this.mTextView.isInExtractedMode() || this.mSelectionMoved) && selectionStart >= 0 && selectionEnd >= 0) {
                    Selection.setSelection((Spannable) this.mTextView.getText(), selectionStart, selectionEnd);
                }
                if (this.mSelectAllOnFocus) {
                    this.mTextView.selectAllText();
                }
                this.mTouchFocusSelected = true;
            }
            this.mFrozenWithFocus = false;
            this.mSelectionMoved = false;
            if (this.mError != null) {
                showError();
            }
            makeBlink();
            return;
        }
        if (this.mError != null) {
            hideError();
        }
        this.mTextView.onEndBatchEdit();
        if (this.mTextView.isInExtractedMode()) {
            hideCursorAndSpanControllers();
            stopTextActionModeWithPreservingSelection();
        } else {
            hideCursorAndSpanControllers();
            if (this.mTextView.isTemporarilyDetached()) {
                stopTextActionModeWithPreservingSelection();
            } else {
                stopTextActionMode();
            }
            downgradeEasyCorrectionSpans();
        }
        if (this.mSelectionModifierCursorController != null) {
            this.mSelectionModifierCursorController.resetTouchOffsets();
        }
        ensureNoSelectionIfNonSelectable();
    }

    private void ensureNoSelectionIfNonSelectable() {
        if (this.mTextView.textCanBeSelected() || !this.mTextView.hasSelection()) {
            return;
        }
        Selection.setSelection((Spannable) this.mTextView.getText(), this.mTextView.length(), this.mTextView.length());
    }

    private void downgradeEasyCorrectionSpans() {
        CharSequence text = this.mTextView.getText();
        if (text instanceof Spannable) {
            Spannable spannable = (Spannable) text;
            SuggestionSpan[] suggestionSpanArr = (SuggestionSpan[]) spannable.getSpans(0, spannable.length(), SuggestionSpan.class);
            for (int i = 0; i < suggestionSpanArr.length; i++) {
                int flags = suggestionSpanArr[i].getFlags();
                if ((flags & 1) != 0 && (flags & 2) == 0) {
                    suggestionSpanArr[i].setFlags(flags & (-2));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void sendOnTextChanged(int i, int i2, int i3) {
        getSelectionActionModeHelper().onTextChanged(i, i2 + i);
        updateSpellCheckSpans(i, i3 + i, false);
        this.mUpdateWordIteratorText = true;
        hideCursorControllers();
        if (this.mSelectionModifierCursorController != null) {
            this.mSelectionModifierCursorController.resetTouchOffsets();
        }
        stopTextActionMode();
    }

    private int getLastTapPosition() {
        int minTouchOffset;
        if (this.mSelectionModifierCursorController == null || (minTouchOffset = this.mSelectionModifierCursorController.getMinTouchOffset()) < 0) {
            return -1;
        }
        return minTouchOffset > this.mTextView.getText().length() ? this.mTextView.getText().length() : minTouchOffset;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onWindowFocusChanged(boolean z) {
        if (z) {
            if (this.mBlink != null) {
                this.mBlink.uncancel();
                makeBlink();
            }
            if (!this.mTextView.hasSelection() || extractedTextModeWillBeStarted()) {
                return;
            }
            refreshTextActionMode();
            return;
        }
        if (this.mBlink != null) {
            this.mBlink.cancel();
        }
        if (this.mInputContentType != null) {
            this.mInputContentType.enterDown = false;
        }
        hideCursorAndSpanControllers();
        stopTextActionModeWithPreservingSelection();
        if (this.mSuggestionsPopupWindow != null) {
            this.mSuggestionsPopupWindow.onParentLostFocus();
        }
        ensureEndedBatchEdit();
        ensureNoSelectionIfNonSelectable();
    }

    private void updateTapState(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            boolean isFromSource = motionEvent.isFromSource(InputDevice.SOURCE_MOUSE);
            if ((this.mTapState == 1 || (this.mTapState == 2 && isFromSource)) && SystemClock.uptimeMillis() - this.mLastTouchUpTime <= ViewConfiguration.getDoubleTapTimeout()) {
                if (this.mTapState == 1) {
                    this.mTapState = 2;
                } else {
                    this.mTapState = 3;
                }
            } else {
                this.mTapState = 1;
            }
        }
        if (actionMasked == 1) {
            this.mLastTouchUpTime = SystemClock.uptimeMillis();
        }
    }

    private boolean shouldFilterOutTouchEvent(MotionEvent motionEvent) {
        if (!motionEvent.isFromSource(InputDevice.SOURCE_MOUSE)) {
            return false;
        }
        boolean z = ((this.mLastButtonState ^ motionEvent.getButtonState()) & 1) != 0;
        int actionMasked = motionEvent.getActionMasked();
        if ((actionMasked == 0 || actionMasked == 1) && !z) {
            return true;
        }
        return actionMasked == 2 && !motionEvent.isButtonPressed(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onTouchEvent(MotionEvent motionEvent) {
        boolean shouldFilterOutTouchEvent = shouldFilterOutTouchEvent(motionEvent);
        this.mLastButtonState = motionEvent.getButtonState();
        if (shouldFilterOutTouchEvent) {
            if (motionEvent.getActionMasked() == 1) {
                this.mDiscardNextActionUp = true;
                return;
            }
            return;
        }
        updateTapState(motionEvent);
        updateFloatingToolbarVisibility(motionEvent);
        if (hasSelectionController()) {
            getSelectionController().onTouchEvent(motionEvent);
        }
        if (this.mShowSuggestionRunnable != null) {
            this.mTextView.removeCallbacks(this.mShowSuggestionRunnable);
            this.mShowSuggestionRunnable = null;
        }
        if (motionEvent.getActionMasked() == 1) {
            this.mLastUpPositionX = motionEvent.getX();
            this.mLastUpPositionY = motionEvent.getY();
        }
        if (motionEvent.getActionMasked() == 0) {
            this.mLastDownPositionX = motionEvent.getX();
            this.mLastDownPositionY = motionEvent.getY();
            this.mTouchFocusSelected = false;
            this.mIgnoreActionUpEvent = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateFloatingToolbarVisibility(MotionEvent motionEvent) {
        if (this.mTextActionMode != null) {
            switch (motionEvent.getActionMasked()) {
                case 1:
                case 3:
                    showFloatingToolbar();
                    return;
                case 2:
                    hideFloatingToolbar(-1);
                    return;
                default:
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void hideFloatingToolbar(int i) {
        if (this.mTextActionMode != null) {
            this.mTextView.removeCallbacks(this.mShowFloatingToolbar);
            this.mTextActionMode.hide(i);
        }
    }

    private void showFloatingToolbar() {
        if (this.mTextActionMode != null) {
            this.mTextView.postDelayed(this.mShowFloatingToolbar, ViewConfiguration.getDoubleTapTimeout());
            invalidateActionModeAsync();
        }
    }

    public void beginBatchEdit() {
        this.mInBatchEditControllers = true;
        InputMethodState inputMethodState = this.mInputMethodState;
        if (inputMethodState != null) {
            int i = inputMethodState.mBatchEditNesting + 1;
            inputMethodState.mBatchEditNesting = i;
            if (i == 1) {
                inputMethodState.mCursorChanged = false;
                inputMethodState.mChangedDelta = 0;
                if (inputMethodState.mContentChanged) {
                    inputMethodState.mChangedStart = 0;
                    inputMethodState.mChangedEnd = this.mTextView.getText().length();
                } else {
                    inputMethodState.mChangedStart = -1;
                    inputMethodState.mChangedEnd = -1;
                    inputMethodState.mContentChanged = false;
                }
                this.mUndoInputFilter.beginBatchEdit();
                this.mTextView.onBeginBatchEdit();
            }
        }
    }

    public void endBatchEdit() {
        this.mInBatchEditControllers = false;
        InputMethodState inputMethodState = this.mInputMethodState;
        if (inputMethodState != null) {
            int i = inputMethodState.mBatchEditNesting - 1;
            inputMethodState.mBatchEditNesting = i;
            if (i == 0) {
                finishBatchEdit(inputMethodState);
            }
        }
    }

    void ensureEndedBatchEdit() {
        InputMethodState inputMethodState = this.mInputMethodState;
        if (inputMethodState == null || inputMethodState.mBatchEditNesting == 0) {
            return;
        }
        inputMethodState.mBatchEditNesting = 0;
        finishBatchEdit(inputMethodState);
    }

    void finishBatchEdit(InputMethodState inputMethodState) {
        this.mTextView.onEndBatchEdit();
        this.mUndoInputFilter.endBatchEdit();
        if (inputMethodState.mContentChanged || inputMethodState.mSelectionModeChanged) {
            this.mTextView.updateAfterEdit();
            reportExtractedText();
        } else if (inputMethodState.mCursorChanged) {
            this.mTextView.invalidateCursor();
        }
        sendUpdateSelection();
        if (this.mTextActionMode != null) {
            CursorController selectionController = this.mTextView.hasSelection() ? getSelectionController() : getInsertionController();
            if (selectionController == null || selectionController.isActive() || selectionController.isCursorBeingModified()) {
                return;
            }
            selectionController.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean extractText(ExtractedTextRequest extractedTextRequest, ExtractedText extractedText) {
        return extractTextInternal(extractedTextRequest, -1, -1, -1, extractedText);
    }

    private boolean extractTextInternal(ExtractedTextRequest extractedTextRequest, int i, int i2, int i3, ExtractedText extractedText) {
        CharSequence text;
        if (extractedTextRequest == null || extractedText == null || (text = this.mTextView.getText()) == null) {
            return false;
        }
        if (i != -2) {
            int length = text.length();
            if (i < 0) {
                extractedText.partialEndOffset = -1;
                extractedText.partialStartOffset = -1;
                i = 0;
            } else {
                int i4 = i2 + i3;
                if (text instanceof Spanned) {
                    Spanned spanned = (Spanned) text;
                    Object[] spans = spanned.getSpans(i, i4, ParcelableSpan.class);
                    int length2 = spans.length;
                    while (length2 > 0) {
                        length2--;
                        int spanStart = spanned.getSpanStart(spans[length2]);
                        if (spanStart < i) {
                            i = spanStart;
                        }
                        int spanEnd = spanned.getSpanEnd(spans[length2]);
                        if (spanEnd > i4) {
                            i4 = spanEnd;
                        }
                    }
                }
                extractedText.partialStartOffset = i;
                extractedText.partialEndOffset = i4 - i3;
                if (i > length) {
                    i = length;
                } else if (i < 0) {
                    i = 0;
                }
                if (i4 <= length) {
                    length = i4 < 0 ? 0 : i4;
                }
            }
            if ((extractedTextRequest.flags & 1) != 0) {
                extractedText.text = text.subSequence(i, length);
            } else {
                extractedText.text = TextUtils.substring(text, i, length);
            }
        } else {
            extractedText.partialStartOffset = 0;
            extractedText.partialEndOffset = 0;
            extractedText.text = TextClassifier.TYPE_UNKNOWN;
        }
        extractedText.flags = 0;
        if (MetaKeyKeyListener.getMetaState(text, 2048) != 0) {
            extractedText.flags |= 2;
        }
        if (this.mTextView.isSingleLine()) {
            extractedText.flags |= 1;
        }
        extractedText.startOffset = 0;
        extractedText.selectionStart = this.mTextView.getSelectionStart();
        extractedText.selectionEnd = this.mTextView.getSelectionEnd();
        extractedText.hint = this.mTextView.getHint();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean reportExtractedText() {
        InputMethodManager peekInstance;
        InputMethodState inputMethodState = this.mInputMethodState;
        if (inputMethodState == null) {
            return false;
        }
        boolean z = inputMethodState.mContentChanged;
        if (!z && !inputMethodState.mSelectionModeChanged) {
            return false;
        }
        inputMethodState.mContentChanged = false;
        inputMethodState.mSelectionModeChanged = false;
        ExtractedTextRequest extractedTextRequest = inputMethodState.mExtractedTextRequest;
        if (extractedTextRequest == null || (peekInstance = InputMethodManager.peekInstance()) == null) {
            return false;
        }
        if (inputMethodState.mChangedStart < 0 && !z) {
            inputMethodState.mChangedStart = -2;
        }
        if (!extractTextInternal(extractedTextRequest, inputMethodState.mChangedStart, inputMethodState.mChangedEnd, inputMethodState.mChangedDelta, inputMethodState.mExtractedText)) {
            return false;
        }
        peekInstance.updateExtractedText(this.mTextView, extractedTextRequest.token, inputMethodState.mExtractedText);
        inputMethodState.mChangedStart = -1;
        inputMethodState.mChangedEnd = -1;
        inputMethodState.mChangedDelta = 0;
        inputMethodState.mContentChanged = false;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendUpdateSelection() {
        InputMethodManager peekInstance;
        int i;
        int i2;
        if (this.mInputMethodState == null || this.mInputMethodState.mBatchEditNesting > 0 || (peekInstance = InputMethodManager.peekInstance()) == null) {
            return;
        }
        int selectionStart = this.mTextView.getSelectionStart();
        int selectionEnd = this.mTextView.getSelectionEnd();
        if (this.mTextView.getText() instanceof Spannable) {
            Spannable spannable = (Spannable) this.mTextView.getText();
            int composingSpanStart = EditableInputConnection.getComposingSpanStart(spannable);
            i2 = EditableInputConnection.getComposingSpanEnd(spannable);
            i = composingSpanStart;
        } else {
            i = -1;
            i2 = -1;
        }
        peekInstance.updateSelection(this.mTextView, selectionStart, selectionEnd, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onDraw(Canvas canvas, Layout layout, Path path, Paint paint, int i) {
        Path path2;
        InputMethodManager peekInstance;
        int selectionStart = this.mTextView.getSelectionStart();
        int selectionEnd = this.mTextView.getSelectionEnd();
        InputMethodState inputMethodState = this.mInputMethodState;
        if (inputMethodState != null && inputMethodState.mBatchEditNesting == 0 && (peekInstance = InputMethodManager.peekInstance()) != null && peekInstance.isActive(this.mTextView) && (inputMethodState.mContentChanged || inputMethodState.mSelectionModeChanged)) {
            reportExtractedText();
        }
        if (this.mCorrectionHighlighter != null) {
            this.mCorrectionHighlighter.draw(canvas, i);
        }
        if (path != null && selectionStart == selectionEnd && this.mDrawableForCursor != null) {
            drawCursor(canvas, i);
            path = null;
        }
        if (this.mSelectionActionModeHelper != null) {
            this.mSelectionActionModeHelper.onDraw(canvas);
            if (this.mSelectionActionModeHelper.isDrawingHighlight()) {
                path2 = null;
                if (!this.mTextView.canHaveDisplayList() && canvas.isHardwareAccelerated()) {
                    drawHardwareAccelerated(canvas, layout, path2, paint, i);
                    return;
                } else {
                    layout.draw(canvas, path2, paint, i);
                }
            }
        }
        path2 = path;
        if (!this.mTextView.canHaveDisplayList()) {
        }
        layout.draw(canvas, path2, paint, i);
    }

    private void drawHardwareAccelerated(Canvas canvas, Layout layout, Path path, Paint paint, int i) {
        int i2;
        ArraySet<Integer> arraySet;
        int i3;
        int[] iArr;
        DynamicLayout dynamicLayout;
        int i4;
        int i5;
        boolean z;
        int i6;
        int i7;
        long lineRangeForDraw = layout.getLineRangeForDraw(canvas);
        int unpackRangeStartFromLong = TextUtils.unpackRangeStartFromLong(lineRangeForDraw);
        int unpackRangeEndFromLong = TextUtils.unpackRangeEndFromLong(lineRangeForDraw);
        if (unpackRangeEndFromLong < 0) {
            return;
        }
        layout.drawBackground(canvas, path, paint, i, unpackRangeStartFromLong, unpackRangeEndFromLong);
        if (layout instanceof DynamicLayout) {
            if (this.mTextRenderNodes == null) {
                this.mTextRenderNodes = (TextRenderNode[]) ArrayUtils.emptyArray(TextRenderNode.class);
            }
            DynamicLayout dynamicLayout2 = (DynamicLayout) layout;
            int[] blockEndLines = dynamicLayout2.getBlockEndLines();
            int[] blockIndices = dynamicLayout2.getBlockIndices();
            int numberOfBlocks = dynamicLayout2.getNumberOfBlocks();
            int indexFirstChangedBlock = dynamicLayout2.getIndexFirstChangedBlock();
            ArraySet<Integer> blocksAlwaysNeedToBeRedrawn = dynamicLayout2.getBlocksAlwaysNeedToBeRedrawn();
            int i8 = -1;
            int i9 = 0;
            boolean z2 = true;
            if (blocksAlwaysNeedToBeRedrawn != null) {
                for (int i10 = 0; i10 < blocksAlwaysNeedToBeRedrawn.size(); i10++) {
                    int blockIndex = dynamicLayout2.getBlockIndex(blocksAlwaysNeedToBeRedrawn.valueAt(i10).intValue());
                    if (blockIndex != -1 && this.mTextRenderNodes[blockIndex] != null) {
                        this.mTextRenderNodes[blockIndex].needsToBeShifted = true;
                    }
                }
            }
            int binarySearch = Arrays.binarySearch(blockEndLines, 0, numberOfBlocks, unpackRangeStartFromLong);
            if (binarySearch < 0) {
                binarySearch = -(binarySearch + 1);
            }
            int min = Math.min(indexFirstChangedBlock, binarySearch);
            int i11 = 0;
            while (true) {
                if (min >= numberOfBlocks) {
                    i2 = i9;
                    arraySet = blocksAlwaysNeedToBeRedrawn;
                    i3 = numberOfBlocks;
                    iArr = blockEndLines;
                    dynamicLayout = dynamicLayout2;
                    i4 = i3;
                    break;
                }
                int i12 = blockIndices[min];
                if (min >= indexFirstChangedBlock && i12 != i8 && this.mTextRenderNodes[i12] != null) {
                    this.mTextRenderNodes[i12].needsToBeShifted = z2;
                }
                if (blockEndLines[min] >= unpackRangeStartFromLong) {
                    i5 = min;
                    z = z2;
                    i2 = i9;
                    arraySet = blocksAlwaysNeedToBeRedrawn;
                    i6 = indexFirstChangedBlock;
                    i3 = numberOfBlocks;
                    iArr = blockEndLines;
                    i7 = unpackRangeStartFromLong;
                    dynamicLayout = dynamicLayout2;
                    i11 = drawHardwareAcceleratedInner(canvas, layout, path, paint, i, blockEndLines, blockIndices, i5, i3, i11);
                    if (iArr[i5] >= unpackRangeEndFromLong) {
                        i4 = Math.max(i6, i5 + 1);
                        break;
                    }
                } else {
                    i5 = min;
                    z = z2;
                    i2 = i9;
                    arraySet = blocksAlwaysNeedToBeRedrawn;
                    i6 = indexFirstChangedBlock;
                    i3 = numberOfBlocks;
                    iArr = blockEndLines;
                    i7 = unpackRangeStartFromLong;
                    dynamicLayout = dynamicLayout2;
                }
                min = i5 + 1;
                blocksAlwaysNeedToBeRedrawn = arraySet;
                indexFirstChangedBlock = i6;
                dynamicLayout2 = dynamicLayout;
                z2 = z;
                i9 = i2;
                numberOfBlocks = i3;
                blockEndLines = iArr;
                unpackRangeStartFromLong = i7;
                i8 = -1;
            }
            if (arraySet != null) {
                int i13 = i11;
                for (int i14 = i2; i14 < arraySet.size(); i14++) {
                    int intValue = arraySet.valueAt(i14).intValue();
                    int blockIndex2 = dynamicLayout.getBlockIndex(intValue);
                    if (blockIndex2 == -1 || this.mTextRenderNodes[blockIndex2] == null || this.mTextRenderNodes[blockIndex2].needsToBeShifted) {
                        i13 = drawHardwareAcceleratedInner(canvas, layout, path, paint, i, iArr, blockIndices, intValue, i3, i13);
                    }
                }
            }
            dynamicLayout.setIndexFirstChangedBlock(i4);
            return;
        }
        layout.drawText(canvas, unpackRangeStartFromLong, unpackRangeEndFromLong);
    }

    private int drawHardwareAcceleratedInner(Canvas canvas, Layout layout, Path path, Paint paint, int i, int[] iArr, int[] iArr2, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7 = iArr[i2];
        int i8 = iArr2[i2];
        if (i8 == -1) {
            i8 = getAvailableDisplayListIndex(iArr2, i3, i4);
            iArr2[i2] = i8;
            if (this.mTextRenderNodes[i8] != null) {
                this.mTextRenderNodes[i8].isDirty = true;
            }
            i5 = i8 + 1;
        } else {
            i5 = i4;
        }
        if (this.mTextRenderNodes[i8] == null) {
            this.mTextRenderNodes[i8] = new TextRenderNode("Text " + i8);
        }
        boolean needsRecord = this.mTextRenderNodes[i8].needsRecord();
        RenderNode renderNode = this.mTextRenderNodes[i8].renderNode;
        if (this.mTextRenderNodes[i8].needsToBeShifted || needsRecord) {
            int i9 = i2 == 0 ? 0 : iArr[i2 - 1] + 1;
            int lineTop = layout.getLineTop(i9);
            int lineBottom = layout.getLineBottom(i7);
            int width = this.mTextView.getWidth();
            if (this.mTextView.getHorizontallyScrolling()) {
                float f = Float.MIN_VALUE;
                float f2 = Float.MAX_VALUE;
                for (int i10 = i9; i10 <= i7; i10++) {
                    f2 = Math.min(f2, layout.getLineLeft(i10));
                    f = Math.max(f, layout.getLineRight(i10));
                }
                i6 = (int) f2;
                width = (int) (f + LINE_SLOP_MULTIPLIER_FOR_HANDLEVIEWS);
            } else {
                i6 = 0;
            }
            if (needsRecord) {
                DisplayListCanvas start = renderNode.start(width - i6, lineBottom - lineTop);
                try {
                    start.translate(-i6, -lineTop);
                    layout.drawText(start, i9, i7);
                    this.mTextRenderNodes[i8].isDirty = false;
                } finally {
                    renderNode.end(start);
                    renderNode.setClipToBounds(false);
                }
            }
            renderNode.setLeftTopRightBottom(i6, lineTop, width, lineBottom);
            this.mTextRenderNodes[i8].needsToBeShifted = false;
        }
        ((DisplayListCanvas) canvas).drawRenderNode(renderNode);
        return i5;
    }

    private int getAvailableDisplayListIndex(int[] iArr, int i, int i2) {
        int length = this.mTextRenderNodes.length;
        while (i2 < length) {
            boolean z = false;
            int i3 = 0;
            while (true) {
                if (i3 >= i) {
                    break;
                }
                if (iArr[i3] == i2) {
                    z = true;
                    break;
                }
                i3++;
            }
            if (!z) {
                return i2;
            }
            i2++;
        }
        this.mTextRenderNodes = (TextRenderNode[]) GrowingArrayUtils.append(this.mTextRenderNodes, length, (Object) null);
        return length;
    }

    private void drawCursor(Canvas canvas, int i) {
        boolean z = i != 0;
        if (z) {
            canvas.translate(0.0f, i);
        }
        if (this.mDrawableForCursor != null) {
            this.mDrawableForCursor.draw(canvas);
        }
        if (z) {
            canvas.translate(0.0f, -i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void invalidateHandlesAndActionMode() {
        if (this.mSelectionModifierCursorController != null) {
            this.mSelectionModifierCursorController.invalidateHandles();
        }
        if (this.mInsertionPointCursorController != null) {
            this.mInsertionPointCursorController.invalidateHandle();
        }
        if (this.mTextActionMode != null) {
            invalidateActionMode();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void invalidateTextDisplayList(Layout layout, int i, int i2) {
        if (this.mTextRenderNodes == null || !(layout instanceof DynamicLayout)) {
            return;
        }
        int lineForOffset = layout.getLineForOffset(i);
        int lineForOffset2 = layout.getLineForOffset(i2);
        DynamicLayout dynamicLayout = (DynamicLayout) layout;
        int[] blockEndLines = dynamicLayout.getBlockEndLines();
        int[] blockIndices = dynamicLayout.getBlockIndices();
        int numberOfBlocks = dynamicLayout.getNumberOfBlocks();
        int i3 = 0;
        while (i3 < numberOfBlocks && blockEndLines[i3] < lineForOffset) {
            i3++;
        }
        while (i3 < numberOfBlocks) {
            int i4 = blockIndices[i3];
            if (i4 != -1) {
                this.mTextRenderNodes[i4].isDirty = true;
            }
            if (blockEndLines[i3] >= lineForOffset2) {
                return;
            } else {
                i3++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void invalidateTextDisplayList() {
        if (this.mTextRenderNodes != null) {
            for (int i = 0; i < this.mTextRenderNodes.length; i++) {
                if (this.mTextRenderNodes[i] != null) {
                    this.mTextRenderNodes[i].isDirty = true;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateCursorPosition() {
        if (this.mTextView.mCursorDrawableRes == 0) {
            this.mDrawableForCursor = null;
            return;
        }
        Layout layout = this.mTextView.getLayout();
        int selectionStart = this.mTextView.getSelectionStart();
        int lineForOffset = layout.getLineForOffset(selectionStart);
        updateCursorPosition(layout.getLineTop(lineForOffset), layout.getLineBottomWithoutSpacing(lineForOffset), layout.getPrimaryHorizontal(selectionStart, layout.shouldClampCursor(lineForOffset)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void refreshTextActionMode() {
        if (extractedTextModeWillBeStarted()) {
            this.mRestartActionModeOnNextRefresh = false;
            return;
        }
        boolean hasSelection = this.mTextView.hasSelection();
        SelectionModifierCursorController selectionController = getSelectionController();
        InsertionPointCursorController insertionController = getInsertionController();
        if ((selectionController != null && selectionController.isCursorBeingModified()) || (insertionController != null && insertionController.isCursorBeingModified())) {
            this.mRestartActionModeOnNextRefresh = false;
            return;
        }
        if (hasSelection) {
            hideInsertionPointCursorController();
            if (this.mTextActionMode == null) {
                if (this.mRestartActionModeOnNextRefresh) {
                    startSelectionActionModeAsync(false);
                }
            } else if (selectionController == null || !selectionController.isActive()) {
                stopTextActionModeWithPreservingSelection();
                startSelectionActionModeAsync(false);
            } else {
                this.mTextActionMode.invalidateContentRect();
            }
        } else if (insertionController == null || !insertionController.isActive()) {
            stopTextActionMode();
        } else if (this.mTextActionMode != null) {
            this.mTextActionMode.invalidateContentRect();
        }
        this.mRestartActionModeOnNextRefresh = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void startInsertionActionMode() {
        if (this.mInsertionActionModeRunnable != null) {
            this.mTextView.removeCallbacks(this.mInsertionActionModeRunnable);
        }
        if (extractedTextModeWillBeStarted()) {
            return;
        }
        stopTextActionMode();
        this.mTextActionMode = this.mTextView.startActionMode(new TextActionModeCallback(1), 1);
        if (this.mTextActionMode == null || getInsertionController() == null) {
            return;
        }
        getInsertionController().show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TextView getTextView() {
        return this.mTextView;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ActionMode getTextActionMode() {
        return this.mTextActionMode;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setRestartActionModeOnNextRefresh(boolean z) {
        this.mRestartActionModeOnNextRefresh = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void startSelectionActionModeAsync(boolean z) {
        getSelectionActionModeHelper().startSelectionActionModeAsync(z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void startLinkActionModeAsync(int i, int i2) {
        if (this.mTextView.getText() instanceof Spannable) {
            stopTextActionMode();
            this.mRequestingLinkActionMode = true;
            getSelectionActionModeHelper().startLinkActionModeAsync(i, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void invalidateActionModeAsync() {
        getSelectionActionModeHelper().invalidateActionModeAsync();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invalidateActionMode() {
        if (this.mTextActionMode != null) {
            this.mTextActionMode.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SelectionActionModeHelper getSelectionActionModeHelper() {
        if (this.mSelectionActionModeHelper == null) {
            this.mSelectionActionModeHelper = new SelectionActionModeHelper(this);
        }
        return this.mSelectionActionModeHelper;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean selectCurrentWordAndStartDrag() {
        if (this.mInsertionActionModeRunnable != null) {
            this.mTextView.removeCallbacks(this.mInsertionActionModeRunnable);
        }
        if (extractedTextModeWillBeStarted() || !checkField()) {
            return false;
        }
        if (!this.mTextView.hasSelection() && !selectCurrentWord()) {
            return false;
        }
        stopTextActionModeWithPreservingSelection();
        getSelectionController().enterDrag(2);
        return true;
    }

    boolean checkField() {
        if (this.mTextView.canSelectText() && this.mTextView.requestFocus()) {
            return true;
        }
        Log.w("TextView", "TextView does not support text selection. Selection cancelled.");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean startActionModeInternal(@TextActionMode int i) {
        InputMethodManager peekInstance;
        if (extractedTextModeWillBeStarted()) {
            return false;
        }
        if (this.mTextActionMode != null) {
            invalidateActionMode();
            return false;
        }
        if (i != 2 && (!checkField() || !this.mTextView.hasSelection())) {
            return false;
        }
        this.mTextActionMode = this.mTextView.startActionMode(new TextActionModeCallback(i), 1);
        boolean z = this.mTextView.isTextEditable() || this.mTextView.isTextSelectable();
        if (i == 2 && !z && (this.mTextActionMode instanceof FloatingActionMode)) {
            this.mTextActionMode.setOutsideTouchable(true, new PopupWindow.OnDismissListener() { // from class: android.widget.-$$Lambda$Editor$TdqUlJ6RRep0wXYHaRH51nTa08I
                @Override // android.widget.PopupWindow.OnDismissListener
                public final void onDismiss() {
                    Editor.this.stopTextActionMode();
                }
            });
        }
        boolean z2 = this.mTextActionMode != null;
        if (z2 && this.mTextView.isTextEditable() && !this.mTextView.isTextSelectable() && this.mShowSoftInputOnFocus && (peekInstance = InputMethodManager.peekInstance()) != null) {
            peekInstance.showSoftInput(this.mTextView, 0, null);
        }
        return z2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean extractedTextModeWillBeStarted() {
        InputMethodManager peekInstance;
        return (this.mTextView.isInExtractedMode() || (peekInstance = InputMethodManager.peekInstance()) == null || !peekInstance.isFullscreenMode()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldOfferToShowSuggestions() {
        CharSequence text = this.mTextView.getText();
        if (!(text instanceof Spannable)) {
            return false;
        }
        Spannable spannable = (Spannable) text;
        int selectionStart = this.mTextView.getSelectionStart();
        int selectionEnd = this.mTextView.getSelectionEnd();
        SuggestionSpan[] suggestionSpanArr = (SuggestionSpan[]) spannable.getSpans(selectionStart, selectionEnd, SuggestionSpan.class);
        if (suggestionSpanArr.length == 0) {
            return false;
        }
        if (selectionStart == selectionEnd) {
            for (SuggestionSpan suggestionSpan : suggestionSpanArr) {
                if (suggestionSpan.getSuggestions().length > 0) {
                    return true;
                }
            }
            return false;
        }
        int length = this.mTextView.getText().length();
        int length2 = this.mTextView.getText().length();
        int i = 0;
        boolean z = false;
        int i2 = 0;
        for (int i3 = 0; i3 < suggestionSpanArr.length; i3++) {
            int spanStart = spannable.getSpanStart(suggestionSpanArr[i3]);
            int spanEnd = spannable.getSpanEnd(suggestionSpanArr[i3]);
            length = Math.min(length, spanStart);
            i = Math.max(i, spanEnd);
            if (selectionStart >= spanStart && selectionStart <= spanEnd) {
                z = z || suggestionSpanArr[i3].getSuggestions().length > 0;
                length2 = Math.min(length2, spanStart);
                i2 = Math.max(i2, spanEnd);
            }
        }
        return z && length2 < i2 && length >= length2 && i <= i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isCursorInsideEasyCorrectionSpan() {
        for (SuggestionSpan suggestionSpan : (SuggestionSpan[]) ((Spannable) this.mTextView.getText()).getSpans(this.mTextView.getSelectionStart(), this.mTextView.getSelectionEnd(), SuggestionSpan.class)) {
            if ((suggestionSpan.getFlags() & 1) != 0) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onTouchUpEvent(MotionEvent motionEvent) {
        if (getSelectionActionModeHelper().resetSelection(getTextView().getOffsetForPosition(motionEvent.getX(), motionEvent.getY()))) {
            return;
        }
        boolean z = this.mSelectAllOnFocus && this.mTextView.didTouchFocusSelect();
        hideCursorAndSpanControllers();
        stopTextActionMode();
        CharSequence text = this.mTextView.getText();
        if (z || text.length() <= 0) {
            return;
        }
        int offsetForPosition = this.mTextView.getOffsetForPosition(motionEvent.getX(), motionEvent.getY());
        boolean z2 = !this.mRequestingLinkActionMode;
        if (z2) {
            Selection.setSelection((Spannable) text, offsetForPosition);
            if (this.mSpellChecker != null) {
                this.mSpellChecker.onSelectionChanged();
            }
        }
        if (extractedTextModeWillBeStarted()) {
            return;
        }
        if (isCursorInsideEasyCorrectionSpan()) {
            if (this.mInsertionActionModeRunnable != null) {
                this.mTextView.removeCallbacks(this.mInsertionActionModeRunnable);
            }
            this.mShowSuggestionRunnable = new Runnable() { // from class: android.widget.-$$Lambda$DZXn7FbDDFyBvNjI-iG9_hfa7kw
                @Override // java.lang.Runnable
                public final void run() {
                    Editor.this.replace();
                }
            };
            this.mTextView.postDelayed(this.mShowSuggestionRunnable, ViewConfiguration.getDoubleTapTimeout());
            return;
        }
        if (hasInsertionController()) {
            if (z2) {
                getInsertionController().show();
            } else {
                getInsertionController().hide();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void stopTextActionMode() {
        if (this.mTextActionMode != null) {
            this.mTextActionMode.finish();
        }
    }

    private void stopTextActionModeWithPreservingSelection() {
        if (this.mTextActionMode != null) {
            this.mRestartActionModeOnNextRefresh = true;
        }
        this.mPreserveSelection = true;
        stopTextActionMode();
        this.mPreserveSelection = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasInsertionController() {
        return this.mInsertionControllerEnabled;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasSelectionController() {
        return this.mSelectionControllerEnabled;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public InsertionPointCursorController getInsertionController() {
        if (!this.mInsertionControllerEnabled) {
            return null;
        }
        if (this.mInsertionPointCursorController == null) {
            this.mInsertionPointCursorController = new InsertionPointCursorController();
            this.mTextView.getViewTreeObserver().addOnTouchModeChangeListener(this.mInsertionPointCursorController);
        }
        return this.mInsertionPointCursorController;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SelectionModifierCursorController getSelectionController() {
        if (!this.mSelectionControllerEnabled) {
            return null;
        }
        if (this.mSelectionModifierCursorController == null) {
            this.mSelectionModifierCursorController = new SelectionModifierCursorController();
            this.mTextView.getViewTreeObserver().addOnTouchModeChangeListener(this.mSelectionModifierCursorController);
        }
        return this.mSelectionModifierCursorController;
    }

    @VisibleForTesting
    public Drawable getCursorDrawable() {
        return this.mDrawableForCursor;
    }

    private void updateCursorPosition(int i, int i2, float f) {
        if (this.mDrawableForCursor == null) {
            this.mDrawableForCursor = this.mTextView.getContext().getDrawable(this.mTextView.mCursorDrawableRes);
        }
        int clampHorizontalPosition = clampHorizontalPosition(this.mDrawableForCursor, f);
        this.mDrawableForCursor.setBounds(clampHorizontalPosition, i - this.mTempRect.top, this.mDrawableForCursor.getIntrinsicWidth() + clampHorizontalPosition, i2 + this.mTempRect.bottom);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int clampHorizontalPosition(Drawable drawable, float f) {
        float max = Math.max(LINE_SLOP_MULTIPLIER_FOR_HANDLEVIEWS, f - LINE_SLOP_MULTIPLIER_FOR_HANDLEVIEWS);
        if (this.mTempRect == null) {
            this.mTempRect = new Rect();
        }
        int i = 0;
        if (drawable != null) {
            drawable.getPadding(this.mTempRect);
            i = drawable.getIntrinsicWidth();
        } else {
            this.mTempRect.setEmpty();
        }
        int scrollX = this.mTextView.getScrollX();
        float f2 = max - scrollX;
        int width = (this.mTextView.getWidth() - this.mTextView.getCompoundPaddingLeft()) - this.mTextView.getCompoundPaddingRight();
        float f3 = width;
        if (f2 >= f3 - 1.0f) {
            return (width + scrollX) - (i - this.mTempRect.right);
        }
        if (Math.abs(f2) <= 1.0f || (TextUtils.isEmpty(this.mTextView.getText()) && 1048576 - scrollX <= f3 + 1.0f && max <= 1.0f)) {
            return scrollX - this.mTempRect.left;
        }
        return ((int) max) - this.mTempRect.left;
    }

    public void onCommitCorrection(CorrectionInfo correctionInfo) {
        if (this.mCorrectionHighlighter == null) {
            this.mCorrectionHighlighter = new CorrectionHighlighter();
        } else {
            this.mCorrectionHighlighter.invalidate(false);
        }
        this.mCorrectionHighlighter.highlight(correctionInfo);
        this.mUndoInputFilter.freezeLastEdit();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onScrollChanged() {
        if (this.mPositionListener != null) {
            this.mPositionListener.onScrollChanged();
        }
        if (this.mTextActionMode != null) {
            this.mTextActionMode.invalidateContentRect();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldBlink() {
        int selectionStart;
        int selectionEnd;
        return isCursorVisible() && this.mTextView.isFocused() && (selectionStart = this.mTextView.getSelectionStart()) >= 0 && (selectionEnd = this.mTextView.getSelectionEnd()) >= 0 && selectionStart == selectionEnd;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void makeBlink() {
        if (shouldBlink()) {
            this.mShowCursor = SystemClock.uptimeMillis();
            if (this.mBlink == null) {
                this.mBlink = new Blink();
            }
            this.mTextView.removeCallbacks(this.mBlink);
            this.mTextView.postDelayed(this.mBlink, 500L);
            return;
        }
        if (this.mBlink != null) {
            this.mTextView.removeCallbacks(this.mBlink);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public class Blink implements Runnable {
        private boolean mCancelled;

        private Blink() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.mCancelled) {
                return;
            }
            Editor.this.mTextView.removeCallbacks(this);
            if (Editor.this.shouldBlink()) {
                if (Editor.this.mTextView.getLayout() != null) {
                    Editor.this.mTextView.invalidateCursorPath();
                }
                Editor.this.mTextView.postDelayed(this, 500L);
            }
        }

        void cancel() {
            if (this.mCancelled) {
                return;
            }
            Editor.this.mTextView.removeCallbacks(this);
            this.mCancelled = true;
        }

        void uncancel() {
            this.mCancelled = false;
        }
    }

    private View.DragShadowBuilder getTextThumbnailBuilder(int i, int i2) {
        TextView textView = (TextView) View.inflate(this.mTextView.getContext(), R.layout.shutdown_dialog, null);
        if (textView == null) {
            throw new IllegalArgumentException("Unable to inflate text drag thumbnail");
        }
        if (i2 - i > 20) {
            i2 = TextUtils.unpackRangeEndFromLong(getCharClusterRange(i + 20));
        }
        textView.setText(this.mTextView.getTransformedText(i, i2));
        textView.setTextColor(this.mTextView.getTextColors());
        textView.setTextAppearance(16);
        textView.setGravity(17);
        textView.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        textView.measure(makeMeasureSpec, makeMeasureSpec);
        textView.layout(0, 0, textView.getMeasuredWidth(), textView.getMeasuredHeight());
        textView.invalidate();
        return new View.DragShadowBuilder(textView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class DragLocalState {
        public int end;
        public TextView sourceTextView;
        public int start;

        public DragLocalState(TextView textView, int i, int i2) {
            this.sourceTextView = textView;
            this.start = i;
            this.end = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onDrop(DragEvent dragEvent) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        DragAndDropPermissions obtain = DragAndDropPermissions.obtain(dragEvent);
        if (obtain != null) {
            obtain.takeTransient();
        }
        try {
            ClipData clipData = dragEvent.getClipData();
            int itemCount = clipData.getItemCount();
            for (int i = 0; i < itemCount; i++) {
                spannableStringBuilder.append(clipData.getItemAt(i).coerceToStyledText(this.mTextView.getContext()));
            }
            this.mTextView.beginBatchEdit();
            this.mUndoInputFilter.freezeLastEdit();
            try {
                int offsetForPosition = this.mTextView.getOffsetForPosition(dragEvent.getX(), dragEvent.getY());
                Object localState = dragEvent.getLocalState();
                DragLocalState dragLocalState = localState instanceof DragLocalState ? (DragLocalState) localState : null;
                boolean z = dragLocalState != null && dragLocalState.sourceTextView == this.mTextView;
                if (!z || offsetForPosition < dragLocalState.start || offsetForPosition >= dragLocalState.end) {
                    int length = this.mTextView.getText().length();
                    Selection.setSelection((Spannable) this.mTextView.getText(), offsetForPosition);
                    this.mTextView.replaceText_internal(offsetForPosition, offsetForPosition, spannableStringBuilder);
                    if (z) {
                        int i2 = dragLocalState.start;
                        int i3 = dragLocalState.end;
                        if (offsetForPosition <= i2) {
                            int length2 = this.mTextView.getText().length() - length;
                            i2 += length2;
                            i3 += length2;
                        }
                        this.mTextView.deleteText_internal(i2, i3);
                        int max = Math.max(0, i2 - 1);
                        int min = Math.min(this.mTextView.getText().length(), i2 + 1);
                        int i4 = max + 1;
                        if (min > i4) {
                            CharSequence transformedText = this.mTextView.getTransformedText(max, min);
                            if (Character.isSpaceChar(transformedText.charAt(0)) && Character.isSpaceChar(transformedText.charAt(1))) {
                                this.mTextView.deleteText_internal(max, i4);
                            }
                        }
                    }
                }
            } finally {
                this.mTextView.endBatchEdit();
                this.mUndoInputFilter.freezeLastEdit();
            }
        } finally {
            if (obtain != null) {
                obtain.release();
            }
        }
    }

    public void addSpanWatchers(Spannable spannable) {
        int length = spannable.length();
        if (this.mKeyListener != null) {
            spannable.setSpan(this.mKeyListener, 0, length, 18);
        }
        if (this.mSpanController == null) {
            this.mSpanController = new SpanController();
        }
        spannable.setSpan(this.mSpanController, 0, length, 18);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setContextMenuAnchor(float f, float f2) {
        this.mContextMenuAnchorX = f;
        this.mContextMenuAnchorY = f2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onCreateContextMenu(ContextMenu contextMenu) {
        int offsetForPosition;
        if (this.mIsBeingLongClicked || Float.isNaN(this.mContextMenuAnchorX) || Float.isNaN(this.mContextMenuAnchorY) || (offsetForPosition = this.mTextView.getOffsetForPosition(this.mContextMenuAnchorX, this.mContextMenuAnchorY)) == -1) {
            return;
        }
        stopTextActionModeWithPreservingSelection();
        if (this.mTextView.canSelectText()) {
            if (!(this.mTextView.hasSelection() && offsetForPosition >= this.mTextView.getSelectionStart() && offsetForPosition <= this.mTextView.getSelectionEnd())) {
                Selection.setSelection((Spannable) this.mTextView.getText(), offsetForPosition);
                stopTextActionMode();
            }
        }
        if (shouldOfferToShowSuggestions()) {
            SuggestionInfo[] suggestionInfoArr = new SuggestionInfo[5];
            int i = 0;
            while (true) {
                if (i >= suggestionInfoArr.length) {
                    break;
                }
                suggestionInfoArr[i] = new SuggestionInfo();
                i++;
            }
            SubMenu addSubMenu = contextMenu.addSubMenu(0, 0, 9, R.string.permdesc_bindCarrierServices);
            int suggestionInfo = this.mSuggestionHelper.getSuggestionInfo(suggestionInfoArr, null);
            for (int i2 = 0; i2 < suggestionInfo; i2++) {
                final SuggestionInfo suggestionInfo2 = suggestionInfoArr[i2];
                addSubMenu.add(0, 0, i2, suggestionInfo2.mText).setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: android.widget.Editor.4
                    @Override // android.view.MenuItem.OnMenuItemClickListener
                    public boolean onMenuItemClick(MenuItem menuItem) {
                        Editor.this.replaceWithSuggestion(suggestionInfo2);
                        return true;
                    }
                });
            }
        }
        contextMenu.add(0, R.id.undo, 2, R.string.permlab_runInBackground).setAlphabeticShortcut(DateFormat.TIME_ZONE).setOnMenuItemClickListener(this.mOnContextMenuItemClickListener).setEnabled(this.mTextView.canUndo());
        contextMenu.add(0, R.id.redo, 3, R.string.permdesc_acceptHandovers).setOnMenuItemClickListener(this.mOnContextMenuItemClickListener).setEnabled(this.mTextView.canRedo());
        contextMenu.add(0, R.id.cut, 4, R.string.cut).setAlphabeticShortcut('x').setOnMenuItemClickListener(this.mOnContextMenuItemClickListener).setEnabled(this.mTextView.canCut());
        contextMenu.add(0, R.id.copy, 5, R.string.copy).setAlphabeticShortcut('c').setOnMenuItemClickListener(this.mOnContextMenuItemClickListener).setEnabled(this.mTextView.canCopy());
        contextMenu.add(0, R.id.paste, 6, R.string.paste).setAlphabeticShortcut('v').setEnabled(this.mTextView.canPaste()).setOnMenuItemClickListener(this.mOnContextMenuItemClickListener);
        contextMenu.add(0, R.id.pasteAsPlainText, 11, R.string.paste_as_plain_text).setEnabled(this.mTextView.canPasteAsPlainText()).setOnMenuItemClickListener(this.mOnContextMenuItemClickListener);
        contextMenu.add(0, R.id.shareText, 7, R.string.permdesc_statusBar).setEnabled(this.mTextView.canShare()).setOnMenuItemClickListener(this.mOnContextMenuItemClickListener);
        contextMenu.add(0, R.id.selectAll, 8, R.string.selectAll).setAlphabeticShortcut(DateFormat.AM_PM).setEnabled(this.mTextView.canSelectAllText()).setOnMenuItemClickListener(this.mOnContextMenuItemClickListener);
        contextMenu.add(0, R.id.autofill, 10, R.string.autofill).setEnabled(this.mTextView.canRequestAutofill()).setOnMenuItemClickListener(this.mOnContextMenuItemClickListener);
        this.mPreserveSelection = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SuggestionSpan findEquivalentSuggestionSpan(SuggestionSpanInfo suggestionSpanInfo) {
        Editable editable = (Editable) this.mTextView.getText();
        if (editable.getSpanStart(suggestionSpanInfo.mSuggestionSpan) >= 0) {
            return suggestionSpanInfo.mSuggestionSpan;
        }
        for (SuggestionSpan suggestionSpan : (SuggestionSpan[]) editable.getSpans(suggestionSpanInfo.mSpanStart, suggestionSpanInfo.mSpanEnd, SuggestionSpan.class)) {
            if (editable.getSpanStart(suggestionSpan) == suggestionSpanInfo.mSpanStart && editable.getSpanEnd(suggestionSpan) == suggestionSpanInfo.mSpanEnd && suggestionSpan.equals(suggestionSpanInfo.mSuggestionSpan)) {
                return suggestionSpan;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void replaceWithSuggestion(SuggestionInfo suggestionInfo) {
        SuggestionSpan findEquivalentSuggestionSpan = findEquivalentSuggestionSpan(suggestionInfo.mSuggestionSpanInfo);
        if (findEquivalentSuggestionSpan == null) {
            return;
        }
        Editable editable = (Editable) this.mTextView.getText();
        int spanStart = editable.getSpanStart(findEquivalentSuggestionSpan);
        int spanEnd = editable.getSpanEnd(findEquivalentSuggestionSpan);
        if (spanStart < 0 || spanEnd <= spanStart) {
            return;
        }
        String substring = TextUtils.substring(editable, spanStart, spanEnd);
        SuggestionSpan[] suggestionSpanArr = (SuggestionSpan[]) editable.getSpans(spanStart, spanEnd, SuggestionSpan.class);
        int length = suggestionSpanArr.length;
        int[] iArr = new int[length];
        int[] iArr2 = new int[length];
        int[] iArr3 = new int[length];
        for (int i = 0; i < length; i++) {
            SuggestionSpan suggestionSpan = suggestionSpanArr[i];
            iArr[i] = editable.getSpanStart(suggestionSpan);
            iArr2[i] = editable.getSpanEnd(suggestionSpan);
            iArr3[i] = editable.getSpanFlags(suggestionSpan);
            int flags = suggestionSpan.getFlags();
            if ((flags & 2) != 0) {
                suggestionSpan.setFlags(flags & (-3) & (-2));
            }
        }
        findEquivalentSuggestionSpan.notifySelection(this.mTextView.getContext(), substring, suggestionInfo.mSuggestionIndex);
        String charSequence = suggestionInfo.mText.subSequence(suggestionInfo.mSuggestionStart, suggestionInfo.mSuggestionEnd).toString();
        this.mTextView.replaceText_internal(spanStart, spanEnd, charSequence);
        findEquivalentSuggestionSpan.getSuggestions()[suggestionInfo.mSuggestionIndex] = substring;
        int length2 = charSequence.length() - (spanEnd - spanStart);
        for (int i2 = 0; i2 < length; i2++) {
            if (iArr[i2] <= spanStart && iArr2[i2] >= spanEnd) {
                this.mTextView.setSpan_internal(suggestionSpanArr[i2], iArr[i2], iArr2[i2] + length2, iArr3[i2]);
            }
        }
        int i3 = spanEnd + length2;
        this.mTextView.setCursorPosition_internal(i3, i3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public class SpanController implements SpanWatcher {
        private static final int DISPLAY_TIMEOUT_MS = 3000;
        private Runnable mHidePopup;
        private EasyEditPopupWindow mPopupWindow;

        private SpanController() {
        }

        private boolean isNonIntermediateSelectionSpan(Spannable spannable, Object obj) {
            return (Selection.SELECTION_START == obj || Selection.SELECTION_END == obj) && (spannable.getSpanFlags(obj) & 512) == 0;
        }

        @Override // android.text.SpanWatcher
        public void onSpanAdded(Spannable spannable, Object obj, int i, int i2) {
            if (isNonIntermediateSelectionSpan(spannable, obj)) {
                Editor.this.sendUpdateSelection();
                return;
            }
            if (obj instanceof EasyEditSpan) {
                if (this.mPopupWindow == null) {
                    this.mPopupWindow = new EasyEditPopupWindow();
                    this.mHidePopup = new Runnable() { // from class: android.widget.Editor.SpanController.1
                        @Override // java.lang.Runnable
                        public void run() {
                            SpanController.this.hide();
                        }
                    };
                }
                if (this.mPopupWindow.mEasyEditSpan != null) {
                    this.mPopupWindow.mEasyEditSpan.setDeleteEnabled(false);
                }
                this.mPopupWindow.setEasyEditSpan((EasyEditSpan) obj);
                this.mPopupWindow.setOnDeleteListener(new EasyEditDeleteListener() { // from class: android.widget.Editor.SpanController.2
                    @Override // android.widget.Editor.EasyEditDeleteListener
                    public void onDeleteClick(EasyEditSpan easyEditSpan) {
                        Editable editable = (Editable) Editor.this.mTextView.getText();
                        int spanStart = editable.getSpanStart(easyEditSpan);
                        int spanEnd = editable.getSpanEnd(easyEditSpan);
                        if (spanStart >= 0 && spanEnd >= 0) {
                            SpanController.this.sendEasySpanNotification(1, easyEditSpan);
                            Editor.this.mTextView.deleteText_internal(spanStart, spanEnd);
                        }
                        editable.removeSpan(easyEditSpan);
                    }
                });
                if (Editor.this.mTextView.getWindowVisibility() != 0 || Editor.this.mTextView.getLayout() == null || Editor.this.extractedTextModeWillBeStarted()) {
                    return;
                }
                this.mPopupWindow.show();
                Editor.this.mTextView.removeCallbacks(this.mHidePopup);
                Editor.this.mTextView.postDelayed(this.mHidePopup, 3000L);
            }
        }

        @Override // android.text.SpanWatcher
        public void onSpanRemoved(Spannable spannable, Object obj, int i, int i2) {
            if (isNonIntermediateSelectionSpan(spannable, obj)) {
                Editor.this.sendUpdateSelection();
            } else {
                if (this.mPopupWindow == null || obj != this.mPopupWindow.mEasyEditSpan) {
                    return;
                }
                hide();
            }
        }

        @Override // android.text.SpanWatcher
        public void onSpanChanged(Spannable spannable, Object obj, int i, int i2, int i3, int i4) {
            if (isNonIntermediateSelectionSpan(spannable, obj)) {
                Editor.this.sendUpdateSelection();
            } else {
                if (this.mPopupWindow == null || !(obj instanceof EasyEditSpan)) {
                    return;
                }
                EasyEditSpan easyEditSpan = (EasyEditSpan) obj;
                sendEasySpanNotification(2, easyEditSpan);
                spannable.removeSpan(easyEditSpan);
            }
        }

        public void hide() {
            if (this.mPopupWindow != null) {
                this.mPopupWindow.hide();
                Editor.this.mTextView.removeCallbacks(this.mHidePopup);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void sendEasySpanNotification(int i, EasyEditSpan easyEditSpan) {
            try {
                PendingIntent pendingIntent = easyEditSpan.getPendingIntent();
                if (pendingIntent != null) {
                    Intent intent = new Intent();
                    intent.putExtra(EasyEditSpan.EXTRA_TEXT_CHANGED_TYPE, i);
                    pendingIntent.send(Editor.this.mTextView.getContext(), 0, intent);
                }
            } catch (PendingIntent.CanceledException e) {
                Log.w("Editor", "PendingIntent for notification cannot be sent", e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public class EasyEditPopupWindow extends PinnedPopupWindow implements View.OnClickListener {
        private static final int POPUP_TEXT_LAYOUT = 17367299;
        private TextView mDeleteTextView;
        private EasyEditSpan mEasyEditSpan;
        private EasyEditDeleteListener mOnDeleteListener;

        @Override // android.widget.Editor.PinnedPopupWindow
        protected int clipVertically(int i) {
            return i;
        }

        private EasyEditPopupWindow() {
            super();
        }

        @Override // android.widget.Editor.PinnedPopupWindow
        protected void createPopupWindow() {
            this.mPopupWindow = new PopupWindow(Editor.this.mTextView.getContext(), (AttributeSet) null, R.attr.textSelectHandleWindowStyle);
            this.mPopupWindow.setInputMethodMode(2);
            this.mPopupWindow.setClippingEnabled(true);
        }

        @Override // android.widget.Editor.PinnedPopupWindow
        protected void initContentView() {
            LinearLayout linearLayout = new LinearLayout(Editor.this.mTextView.getContext());
            linearLayout.setOrientation(0);
            this.mContentView = linearLayout;
            this.mContentView.setBackgroundResource(R.drawable.switch_bg_disabled_holo_light);
            LayoutInflater layoutInflater = (LayoutInflater) Editor.this.mTextView.getContext().getSystemService("layout_inflater");
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -2);
            this.mDeleteTextView = (TextView) layoutInflater.inflate(17367299, (ViewGroup) null);
            this.mDeleteTextView.setLayoutParams(layoutParams);
            this.mDeleteTextView.setText(R.string.capability_title_canCaptureFingerprintGestures);
            this.mDeleteTextView.setOnClickListener(this);
            this.mContentView.addView(this.mDeleteTextView);
        }

        public void setEasyEditSpan(EasyEditSpan easyEditSpan) {
            this.mEasyEditSpan = easyEditSpan;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOnDeleteListener(EasyEditDeleteListener easyEditDeleteListener) {
            this.mOnDeleteListener = easyEditDeleteListener;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view != this.mDeleteTextView || this.mEasyEditSpan == null || !this.mEasyEditSpan.isDeleteEnabled() || this.mOnDeleteListener == null) {
                return;
            }
            this.mOnDeleteListener.onDeleteClick(this.mEasyEditSpan);
        }

        @Override // android.widget.Editor.PinnedPopupWindow
        public void hide() {
            if (this.mEasyEditSpan != null) {
                this.mEasyEditSpan.setDeleteEnabled(false);
            }
            this.mOnDeleteListener = null;
            super.hide();
        }

        @Override // android.widget.Editor.PinnedPopupWindow
        protected int getTextOffset() {
            return ((Editable) Editor.this.mTextView.getText()).getSpanEnd(this.mEasyEditSpan);
        }

        @Override // android.widget.Editor.PinnedPopupWindow
        protected int getVerticalLocalPosition(int i) {
            return Editor.this.mTextView.getLayout().getLineBottomWithoutSpacing(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public class PositionListener implements ViewTreeObserver.OnPreDrawListener {
        private static final int MAXIMUM_NUMBER_OF_LISTENERS = 7;
        private boolean[] mCanMove;
        private int mNumberOfListeners;
        private boolean mPositionHasChanged;
        private TextViewPositionListener[] mPositionListeners;
        private int mPositionX;
        private int mPositionXOnScreen;
        private int mPositionY;
        private int mPositionYOnScreen;
        private boolean mScrollHasChanged;
        final int[] mTempCoords;

        private PositionListener() {
            this.mPositionListeners = new TextViewPositionListener[7];
            this.mCanMove = new boolean[7];
            this.mPositionHasChanged = true;
            this.mTempCoords = new int[2];
        }

        public void addSubscriber(TextViewPositionListener textViewPositionListener, boolean z) {
            if (this.mNumberOfListeners == 0) {
                updatePosition();
                Editor.this.mTextView.getViewTreeObserver().addOnPreDrawListener(this);
            }
            int i = -1;
            for (int i2 = 0; i2 < 7; i2++) {
                TextViewPositionListener textViewPositionListener2 = this.mPositionListeners[i2];
                if (textViewPositionListener2 == textViewPositionListener) {
                    return;
                }
                if (i < 0 && textViewPositionListener2 == null) {
                    i = i2;
                }
            }
            this.mPositionListeners[i] = textViewPositionListener;
            this.mCanMove[i] = z;
            this.mNumberOfListeners++;
        }

        public void removeSubscriber(TextViewPositionListener textViewPositionListener) {
            int i = 0;
            while (true) {
                if (i >= 7) {
                    break;
                }
                if (this.mPositionListeners[i] == textViewPositionListener) {
                    this.mPositionListeners[i] = null;
                    this.mNumberOfListeners--;
                    break;
                }
                i++;
            }
            if (this.mNumberOfListeners == 0) {
                Editor.this.mTextView.getViewTreeObserver().removeOnPreDrawListener(this);
            }
        }

        public int getPositionX() {
            return this.mPositionX;
        }

        public int getPositionY() {
            return this.mPositionY;
        }

        public int getPositionXOnScreen() {
            return this.mPositionXOnScreen;
        }

        public int getPositionYOnScreen() {
            return this.mPositionYOnScreen;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            TextViewPositionListener textViewPositionListener;
            updatePosition();
            for (int i = 0; i < 7; i++) {
                if ((this.mPositionHasChanged || this.mScrollHasChanged || this.mCanMove[i]) && (textViewPositionListener = this.mPositionListeners[i]) != null) {
                    textViewPositionListener.updatePosition(this.mPositionX, this.mPositionY, this.mPositionHasChanged, this.mScrollHasChanged);
                }
            }
            this.mScrollHasChanged = false;
            return true;
        }

        private void updatePosition() {
            Editor.this.mTextView.getLocationInWindow(this.mTempCoords);
            this.mPositionHasChanged = (this.mTempCoords[0] == this.mPositionX && this.mTempCoords[1] == this.mPositionY) ? false : true;
            this.mPositionX = this.mTempCoords[0];
            this.mPositionY = this.mTempCoords[1];
            Editor.this.mTextView.getLocationOnScreen(this.mTempCoords);
            this.mPositionXOnScreen = this.mTempCoords[0];
            this.mPositionYOnScreen = this.mTempCoords[1];
        }

        public void onScrollChanged() {
            this.mScrollHasChanged = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public abstract class PinnedPopupWindow implements TextViewPositionListener {
        int mClippingLimitLeft;
        int mClippingLimitRight;
        protected ViewGroup mContentView;
        protected PopupWindow mPopupWindow;
        int mPositionX;
        int mPositionY;

        protected abstract int clipVertically(int i);

        protected abstract void createPopupWindow();

        protected abstract int getTextOffset();

        protected abstract int getVerticalLocalPosition(int i);

        protected abstract void initContentView();

        protected void setUp() {
        }

        public PinnedPopupWindow() {
            setUp();
            createPopupWindow();
            this.mPopupWindow.setWindowLayoutType(1005);
            this.mPopupWindow.setWidth(-2);
            this.mPopupWindow.setHeight(-2);
            initContentView();
            this.mContentView.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            this.mPopupWindow.setContentView(this.mContentView);
        }

        public void show() {
            Editor.this.getPositionListener().addSubscriber(this, false);
            computeLocalPosition();
            PositionListener positionListener = Editor.this.getPositionListener();
            updatePosition(positionListener.getPositionX(), positionListener.getPositionY());
        }

        protected void measureContent() {
            DisplayMetrics displayMetrics = Editor.this.mTextView.getResources().getDisplayMetrics();
            this.mContentView.measure(View.MeasureSpec.makeMeasureSpec(displayMetrics.widthPixels, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(displayMetrics.heightPixels, Integer.MIN_VALUE));
        }

        private void computeLocalPosition() {
            measureContent();
            int measuredWidth = this.mContentView.getMeasuredWidth();
            int textOffset = getTextOffset();
            this.mPositionX = (int) (Editor.this.mTextView.getLayout().getPrimaryHorizontal(textOffset) - (measuredWidth / 2.0f));
            this.mPositionX += Editor.this.mTextView.viewportToContentHorizontalOffset();
            this.mPositionY = getVerticalLocalPosition(Editor.this.mTextView.getLayout().getLineForOffset(textOffset));
            this.mPositionY += Editor.this.mTextView.viewportToContentVerticalOffset();
        }

        private void updatePosition(int i, int i2) {
            int i3 = i + this.mPositionX;
            int clipVertically = clipVertically(i2 + this.mPositionY);
            DisplayMetrics displayMetrics = Editor.this.mTextView.getResources().getDisplayMetrics();
            int max = Math.max(-this.mClippingLimitLeft, Math.min((displayMetrics.widthPixels - this.mContentView.getMeasuredWidth()) + this.mClippingLimitRight, i3));
            if (!isShowing()) {
                this.mPopupWindow.showAtLocation(Editor.this.mTextView, 0, max, clipVertically);
            } else {
                this.mPopupWindow.update(max, clipVertically, -1, -1);
            }
        }

        public void hide() {
            if (isShowing()) {
                this.mPopupWindow.dismiss();
                Editor.this.getPositionListener().removeSubscriber(this);
            }
        }

        @Override // android.widget.Editor.TextViewPositionListener
        public void updatePosition(int i, int i2, boolean z, boolean z2) {
            if (isShowing() && Editor.this.isOffsetVisible(getTextOffset())) {
                if (z2) {
                    computeLocalPosition();
                }
                updatePosition(i, i2);
                return;
            }
            hide();
        }

        public boolean isShowing() {
            return this.mPopupWindow.isShowing();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static final class SuggestionInfo {
        int mSuggestionEnd;
        int mSuggestionIndex;
        final SuggestionSpanInfo mSuggestionSpanInfo;
        int mSuggestionStart;
        final SpannableStringBuilder mText;

        private SuggestionInfo() {
            this.mSuggestionSpanInfo = new SuggestionSpanInfo();
            this.mText = new SpannableStringBuilder();
        }

        void clear() {
            this.mSuggestionSpanInfo.clear();
            this.mText.clear();
        }

        void setSpanInfo(SuggestionSpan suggestionSpan, int i, int i2) {
            this.mSuggestionSpanInfo.mSuggestionSpan = suggestionSpan;
            this.mSuggestionSpanInfo.mSpanStart = i;
            this.mSuggestionSpanInfo.mSpanEnd = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static final class SuggestionSpanInfo {
        int mSpanEnd;
        int mSpanStart;
        SuggestionSpan mSuggestionSpan;

        private SuggestionSpanInfo() {
        }

        void clear() {
            this.mSuggestionSpan = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public class SuggestionHelper {
        private final HashMap<SuggestionSpan, Integer> mSpansLengths;
        private final Comparator<SuggestionSpan> mSuggestionSpanComparator;

        private SuggestionHelper() {
            this.mSuggestionSpanComparator = new SuggestionSpanComparator();
            this.mSpansLengths = new HashMap<>();
        }

        /* loaded from: /home/user/work/dex/classes2.dex */
        private class SuggestionSpanComparator implements Comparator<SuggestionSpan> {
            private SuggestionSpanComparator() {
            }

            @Override // java.util.Comparator
            public int compare(SuggestionSpan suggestionSpan, SuggestionSpan suggestionSpan2) {
                int flags = suggestionSpan.getFlags();
                int flags2 = suggestionSpan2.getFlags();
                if (flags != flags2) {
                    boolean z = (flags & 1) != 0;
                    boolean z2 = (flags2 & 1) != 0;
                    boolean z3 = (flags & 2) != 0;
                    boolean z4 = (flags2 & 2) != 0;
                    if (z && !z3) {
                        return -1;
                    }
                    if (z2 && !z4) {
                        return 1;
                    }
                    if (z3) {
                        return -1;
                    }
                    if (z4) {
                        return 1;
                    }
                }
                return ((Integer) SuggestionHelper.this.mSpansLengths.get(suggestionSpan)).intValue() - ((Integer) SuggestionHelper.this.mSpansLengths.get(suggestionSpan2)).intValue();
            }
        }

        private SuggestionSpan[] getSortedSuggestionSpans() {
            int selectionStart = Editor.this.mTextView.getSelectionStart();
            Spannable spannable = (Spannable) Editor.this.mTextView.getText();
            SuggestionSpan[] suggestionSpanArr = (SuggestionSpan[]) spannable.getSpans(selectionStart, selectionStart, SuggestionSpan.class);
            this.mSpansLengths.clear();
            for (SuggestionSpan suggestionSpan : suggestionSpanArr) {
                this.mSpansLengths.put(suggestionSpan, Integer.valueOf(spannable.getSpanEnd(suggestionSpan) - spannable.getSpanStart(suggestionSpan)));
            }
            Arrays.sort(suggestionSpanArr, this.mSuggestionSpanComparator);
            this.mSpansLengths.clear();
            return suggestionSpanArr;
        }

        public int getSuggestionInfo(SuggestionInfo[] suggestionInfoArr, SuggestionSpanInfo suggestionSpanInfo) {
            SuggestionSpan[] suggestionSpanArr;
            Spannable spannable = (Spannable) Editor.this.mTextView.getText();
            SuggestionSpan[] sortedSuggestionSpans = getSortedSuggestionSpans();
            int i = 0;
            if (sortedSuggestionSpans.length == 0) {
                return 0;
            }
            int length = sortedSuggestionSpans.length;
            int i2 = 0;
            int i3 = 0;
            while (i2 < length) {
                SuggestionSpan suggestionSpan = sortedSuggestionSpans[i2];
                int spanStart = spannable.getSpanStart(suggestionSpan);
                int spanEnd = spannable.getSpanEnd(suggestionSpan);
                if (suggestionSpanInfo != null && (suggestionSpan.getFlags() & 2) != 0) {
                    suggestionSpanInfo.mSuggestionSpan = suggestionSpan;
                    suggestionSpanInfo.mSpanStart = spanStart;
                    suggestionSpanInfo.mSpanEnd = spanEnd;
                }
                String[] suggestions = suggestionSpan.getSuggestions();
                int length2 = suggestions.length;
                int i4 = i3;
                int i5 = i;
                while (i5 < length2) {
                    String str = suggestions[i5];
                    int i6 = i;
                    while (true) {
                        if (i6 < i4) {
                            SuggestionInfo suggestionInfo = suggestionInfoArr[i6];
                            suggestionSpanArr = sortedSuggestionSpans;
                            if (suggestionInfo.mText.toString().equals(str)) {
                                int i7 = suggestionInfo.mSuggestionSpanInfo.mSpanStart;
                                int i8 = suggestionInfo.mSuggestionSpanInfo.mSpanEnd;
                                if (spanStart == i7 && spanEnd == i8) {
                                    i = 0;
                                    break;
                                }
                            }
                            i6++;
                            sortedSuggestionSpans = suggestionSpanArr;
                        } else {
                            suggestionSpanArr = sortedSuggestionSpans;
                            SuggestionInfo suggestionInfo2 = suggestionInfoArr[i4];
                            suggestionInfo2.setSpanInfo(suggestionSpan, spanStart, spanEnd);
                            suggestionInfo2.mSuggestionIndex = i5;
                            i = 0;
                            suggestionInfo2.mSuggestionStart = 0;
                            suggestionInfo2.mSuggestionEnd = str.length();
                            suggestionInfo2.mText.replace(0, suggestionInfo2.mText.length(), (CharSequence) str);
                            i4++;
                            if (i4 >= suggestionInfoArr.length) {
                                return i4;
                            }
                        }
                    }
                    i5++;
                    sortedSuggestionSpans = suggestionSpanArr;
                }
                i2++;
                i3 = i4;
            }
            return i3;
        }
    }

    @VisibleForTesting
    /* loaded from: /home/user/work/dex/classes2.dex */
    public class SuggestionsPopupWindow extends PinnedPopupWindow implements AdapterView.OnItemClickListener {
        private static final int MAX_NUMBER_SUGGESTIONS = 5;
        private static final String USER_DICTIONARY_EXTRA_LOCALE = "locale";
        private static final String USER_DICTIONARY_EXTRA_WORD = "word";
        private TextView mAddToDictionaryButton;
        private int mContainerMarginTop;
        private int mContainerMarginWidth;
        private LinearLayout mContainerView;
        private Context mContext;
        private boolean mCursorWasVisibleBeforeSuggestions;
        private TextView mDeleteButton;
        private TextAppearanceSpan mHighlightSpan;
        private boolean mIsShowingUp;
        private final SuggestionSpanInfo mMisspelledSpanInfo;
        private int mNumberOfSuggestions;
        private SuggestionInfo[] mSuggestionInfos;
        private ListView mSuggestionListView;
        private SuggestionAdapter mSuggestionsAdapter;

        @Override // android.widget.Editor.PinnedPopupWindow
        public /* bridge */ /* synthetic */ void hide() {
            super.hide();
        }

        @Override // android.widget.Editor.PinnedPopupWindow
        public /* bridge */ /* synthetic */ boolean isShowing() {
            return super.isShowing();
        }

        @Override // android.widget.Editor.PinnedPopupWindow, android.widget.Editor.TextViewPositionListener
        public /* bridge */ /* synthetic */ void updatePosition(int i, int i2, boolean z, boolean z2) {
            super.updatePosition(i, i2, z, z2);
        }

        /* loaded from: /home/user/work/dex/classes2.dex */
        private class CustomPopupWindow extends PopupWindow {
            private CustomPopupWindow() {
            }

            @Override // android.widget.PopupWindow
            public void dismiss() {
                if (isShowing()) {
                    super.dismiss();
                    Editor.this.getPositionListener().removeSubscriber(SuggestionsPopupWindow.this);
                    ((Spannable) Editor.this.mTextView.getText()).removeSpan(Editor.this.mSuggestionRangeSpan);
                    Editor.this.mTextView.setCursorVisible(SuggestionsPopupWindow.this.mCursorWasVisibleBeforeSuggestions);
                    if (!Editor.this.hasInsertionController() || Editor.this.extractedTextModeWillBeStarted()) {
                        return;
                    }
                    Editor.this.getInsertionController().show();
                }
            }
        }

        public SuggestionsPopupWindow() {
            super();
            this.mIsShowingUp = false;
            this.mMisspelledSpanInfo = new SuggestionSpanInfo();
            this.mCursorWasVisibleBeforeSuggestions = Editor.this.mCursorVisible;
        }

        @Override // android.widget.Editor.PinnedPopupWindow
        protected void setUp() {
            this.mContext = applyDefaultTheme(Editor.this.mTextView.getContext());
            this.mHighlightSpan = new TextAppearanceSpan(this.mContext, Editor.this.mTextView.mTextEditSuggestionHighlightStyle);
        }

        private Context applyDefaultTheme(Context context) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{R.bool.config_disableMenuKeyInLockScreen});
            int i = obtainStyledAttributes.getBoolean(0, true) ? R.style.ThemeOverlay.Material.Light : R.style.ThemeOverlay.Material.Dark;
            obtainStyledAttributes.recycle();
            return new ContextThemeWrapper(context, i);
        }

        @Override // android.widget.Editor.PinnedPopupWindow
        protected void createPopupWindow() {
            this.mPopupWindow = new CustomPopupWindow();
            this.mPopupWindow.setInputMethodMode(2);
            this.mPopupWindow.setBackgroundDrawable(new ColorDrawable(0));
            this.mPopupWindow.setFocusable(true);
            this.mPopupWindow.setClippingEnabled(false);
        }

        @Override // android.widget.Editor.PinnedPopupWindow
        protected void initContentView() {
            this.mContentView = (ViewGroup) ((LayoutInflater) this.mContext.getSystemService("layout_inflater")).inflate(Editor.this.mTextView.mTextEditSuggestionContainerLayout, (ViewGroup) null);
            this.mContainerView = (LinearLayout) this.mContentView.findViewById(R.id.reverseLandscape);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.mContainerView.getLayoutParams();
            this.mContainerMarginWidth = marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
            this.mContainerMarginTop = marginLayoutParams.topMargin;
            this.mClippingLimitLeft = marginLayoutParams.leftMargin;
            this.mClippingLimitRight = marginLayoutParams.rightMargin;
            this.mSuggestionListView = (ListView) this.mContentView.findViewById(R.id.reverse);
            this.mSuggestionsAdapter = new SuggestionAdapter();
            this.mSuggestionListView.setAdapter((ListAdapter) this.mSuggestionsAdapter);
            this.mSuggestionListView.setOnItemClickListener(this);
            this.mSuggestionInfos = new SuggestionInfo[5];
            for (int i = 0; i < this.mSuggestionInfos.length; i++) {
                this.mSuggestionInfos[i] = new SuggestionInfo();
            }
            this.mAddToDictionaryButton = (TextView) this.mContentView.findViewById(R.id.accessibility_shortcut_target_icon);
            this.mAddToDictionaryButton.setOnClickListener(new View.OnClickListener() { // from class: android.widget.Editor.SuggestionsPopupWindow.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    SuggestionSpan findEquivalentSuggestionSpan = Editor.this.findEquivalentSuggestionSpan(SuggestionsPopupWindow.this.mMisspelledSpanInfo);
                    if (findEquivalentSuggestionSpan == null) {
                        return;
                    }
                    Editable editable = (Editable) Editor.this.mTextView.getText();
                    int spanStart = editable.getSpanStart(findEquivalentSuggestionSpan);
                    int spanEnd = editable.getSpanEnd(findEquivalentSuggestionSpan);
                    if (spanStart < 0 || spanEnd <= spanStart) {
                        return;
                    }
                    String substring = TextUtils.substring(editable, spanStart, spanEnd);
                    Intent intent = new Intent(Settings.ACTION_USER_DICTIONARY_INSERT);
                    intent.putExtra("word", substring);
                    intent.putExtra("locale", Editor.this.mTextView.getTextServicesLocale().toString());
                    intent.setFlags(intent.getFlags() | 268435456);
                    Editor.this.mTextView.getContext().startActivity(intent);
                    editable.removeSpan(SuggestionsPopupWindow.this.mMisspelledSpanInfo.mSuggestionSpan);
                    Selection.setSelection(editable, spanEnd);
                    Editor.this.updateSpellCheckSpans(spanStart, spanEnd, false);
                    SuggestionsPopupWindow.this.hideWithCleanUp();
                }
            });
            this.mDeleteButton = (TextView) this.mContentView.findViewById(R.id.chooser_row_text_option);
            this.mDeleteButton.setOnClickListener(new View.OnClickListener() { // from class: android.widget.Editor.SuggestionsPopupWindow.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Editable editable = (Editable) Editor.this.mTextView.getText();
                    int spanStart = editable.getSpanStart(Editor.this.mSuggestionRangeSpan);
                    int spanEnd = editable.getSpanEnd(Editor.this.mSuggestionRangeSpan);
                    if (spanStart >= 0 && spanEnd > spanStart) {
                        if (spanEnd < editable.length() && Character.isSpaceChar(editable.charAt(spanEnd)) && (spanStart == 0 || Character.isSpaceChar(editable.charAt(spanStart - 1)))) {
                            spanEnd++;
                        }
                        Editor.this.mTextView.deleteText_internal(spanStart, spanEnd);
                    }
                    SuggestionsPopupWindow.this.hideWithCleanUp();
                }
            });
        }

        public boolean isShowingUp() {
            return this.mIsShowingUp;
        }

        public void onParentLostFocus() {
            this.mIsShowingUp = false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: /home/user/work/dex/classes2.dex */
        public class SuggestionAdapter extends BaseAdapter {
            private LayoutInflater mInflater;

            @Override // android.widget.Adapter
            public long getItemId(int i) {
                return i;
            }

            private SuggestionAdapter() {
                this.mInflater = (LayoutInflater) SuggestionsPopupWindow.this.mContext.getSystemService("layout_inflater");
            }

            @Override // android.widget.Adapter
            public int getCount() {
                return SuggestionsPopupWindow.this.mNumberOfSuggestions;
            }

            @Override // android.widget.Adapter
            public Object getItem(int i) {
                return SuggestionsPopupWindow.this.mSuggestionInfos[i];
            }

            @Override // android.widget.Adapter
            public View getView(int i, View view, ViewGroup viewGroup) {
                TextView textView = (TextView) view;
                if (textView == null) {
                    textView = (TextView) this.mInflater.inflate(Editor.this.mTextView.mTextEditSuggestionItemLayout, viewGroup, false);
                }
                textView.setText(SuggestionsPopupWindow.this.mSuggestionInfos[i].mText);
                return textView;
            }
        }

        @VisibleForTesting
        public ViewGroup getContentViewForTesting() {
            return this.mContentView;
        }

        @Override // android.widget.Editor.PinnedPopupWindow
        public void show() {
            if ((Editor.this.mTextView.getText() instanceof Editable) && !Editor.this.extractedTextModeWillBeStarted()) {
                if (updateSuggestions()) {
                    this.mCursorWasVisibleBeforeSuggestions = Editor.this.mCursorVisible;
                    Editor.this.mTextView.setCursorVisible(false);
                    this.mIsShowingUp = true;
                    super.show();
                }
                this.mSuggestionListView.setVisibility(this.mNumberOfSuggestions == 0 ? 8 : 0);
            }
        }

        @Override // android.widget.Editor.PinnedPopupWindow
        protected void measureContent() {
            DisplayMetrics displayMetrics = Editor.this.mTextView.getResources().getDisplayMetrics();
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(displayMetrics.widthPixels, Integer.MIN_VALUE);
            int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(displayMetrics.heightPixels, Integer.MIN_VALUE);
            View view = null;
            int i = 0;
            for (int i2 = 0; i2 < this.mNumberOfSuggestions; i2++) {
                view = this.mSuggestionsAdapter.getView(i2, view, this.mContentView);
                view.getLayoutParams().width = -2;
                view.measure(makeMeasureSpec, makeMeasureSpec2);
                i = Math.max(i, view.getMeasuredWidth());
            }
            if (this.mAddToDictionaryButton.getVisibility() != 8) {
                this.mAddToDictionaryButton.measure(makeMeasureSpec, makeMeasureSpec2);
                i = Math.max(i, this.mAddToDictionaryButton.getMeasuredWidth());
            }
            this.mDeleteButton.measure(makeMeasureSpec, makeMeasureSpec2);
            int max = Math.max(i, this.mDeleteButton.getMeasuredWidth()) + this.mContainerView.getPaddingLeft() + this.mContainerView.getPaddingRight() + this.mContainerMarginWidth;
            this.mContentView.measure(View.MeasureSpec.makeMeasureSpec(max, 1073741824), makeMeasureSpec2);
            Drawable background = this.mPopupWindow.getBackground();
            if (background != null) {
                if (Editor.this.mTempRect == null) {
                    Editor.this.mTempRect = new Rect();
                }
                background.getPadding(Editor.this.mTempRect);
                max += Editor.this.mTempRect.left + Editor.this.mTempRect.right;
            }
            this.mPopupWindow.setWidth(max);
        }

        @Override // android.widget.Editor.PinnedPopupWindow
        protected int getTextOffset() {
            return (Editor.this.mTextView.getSelectionStart() + Editor.this.mTextView.getSelectionStart()) / 2;
        }

        @Override // android.widget.Editor.PinnedPopupWindow
        protected int getVerticalLocalPosition(int i) {
            return Editor.this.mTextView.getLayout().getLineBottomWithoutSpacing(i) - this.mContainerMarginTop;
        }

        @Override // android.widget.Editor.PinnedPopupWindow
        protected int clipVertically(int i) {
            return Math.min(i, Editor.this.mTextView.getResources().getDisplayMetrics().heightPixels - this.mContentView.getMeasuredHeight());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void hideWithCleanUp() {
            for (SuggestionInfo suggestionInfo : this.mSuggestionInfos) {
                suggestionInfo.clear();
            }
            this.mMisspelledSpanInfo.clear();
            hide();
        }

        private boolean updateSuggestions() {
            int underlineColor;
            Spannable spannable = (Spannable) Editor.this.mTextView.getText();
            this.mNumberOfSuggestions = Editor.this.mSuggestionHelper.getSuggestionInfo(this.mSuggestionInfos, this.mMisspelledSpanInfo);
            if (this.mNumberOfSuggestions == 0 && this.mMisspelledSpanInfo.mSuggestionSpan == null) {
                return false;
            }
            int length = Editor.this.mTextView.getText().length();
            int i = 0;
            for (int i2 = 0; i2 < this.mNumberOfSuggestions; i2++) {
                SuggestionSpanInfo suggestionSpanInfo = this.mSuggestionInfos[i2].mSuggestionSpanInfo;
                length = Math.min(length, suggestionSpanInfo.mSpanStart);
                i = Math.max(i, suggestionSpanInfo.mSpanEnd);
            }
            if (this.mMisspelledSpanInfo.mSuggestionSpan != null) {
                length = Math.min(length, this.mMisspelledSpanInfo.mSpanStart);
                i = Math.max(i, this.mMisspelledSpanInfo.mSpanEnd);
            }
            for (int i3 = 0; i3 < this.mNumberOfSuggestions; i3++) {
                highlightTextDifferences(this.mSuggestionInfos[i3], length, i);
            }
            int i4 = 8;
            if (this.mMisspelledSpanInfo.mSuggestionSpan != null && this.mMisspelledSpanInfo.mSpanStart >= 0 && this.mMisspelledSpanInfo.mSpanEnd > this.mMisspelledSpanInfo.mSpanStart) {
                i4 = 0;
            }
            this.mAddToDictionaryButton.setVisibility(i4);
            if (Editor.this.mSuggestionRangeSpan == null) {
                Editor.this.mSuggestionRangeSpan = new SuggestionRangeSpan();
            }
            if (this.mNumberOfSuggestions != 0) {
                underlineColor = this.mSuggestionInfos[0].mSuggestionSpanInfo.mSuggestionSpan.getUnderlineColor();
            } else {
                underlineColor = this.mMisspelledSpanInfo.mSuggestionSpan.getUnderlineColor();
            }
            if (underlineColor == 0) {
                Editor.this.mSuggestionRangeSpan.setBackgroundColor(Editor.this.mTextView.mHighlightColor);
            } else {
                Editor.this.mSuggestionRangeSpan.setBackgroundColor((underlineColor & 16777215) + (((int) (Color.alpha(underlineColor) * 0.4f)) << 24));
            }
            spannable.setSpan(Editor.this.mSuggestionRangeSpan, length, i, 33);
            this.mSuggestionsAdapter.notifyDataSetChanged();
            return true;
        }

        private void highlightTextDifferences(SuggestionInfo suggestionInfo, int i, int i2) {
            Spannable spannable = (Spannable) Editor.this.mTextView.getText();
            int i3 = suggestionInfo.mSuggestionSpanInfo.mSpanStart;
            int i4 = suggestionInfo.mSuggestionSpanInfo.mSpanEnd;
            suggestionInfo.mSuggestionStart = i3 - i;
            suggestionInfo.mSuggestionEnd = suggestionInfo.mSuggestionStart + suggestionInfo.mText.length();
            suggestionInfo.mText.setSpan(this.mHighlightSpan, 0, suggestionInfo.mText.length(), 33);
            String obj = spannable.toString();
            suggestionInfo.mText.insert(0, (CharSequence) obj.substring(i, i3));
            suggestionInfo.mText.append((CharSequence) obj.substring(i4, i2));
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            Editor.this.replaceWithSuggestion(this.mSuggestionInfos[i]);
            hideWithCleanUp();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public class TextActionModeCallback extends ActionMode.Callback2 {
        private final int mHandleHeight;
        private final boolean mHasSelection;
        private final Path mSelectionPath = new Path();
        private final RectF mSelectionBounds = new RectF();
        private final Map<MenuItem, View.OnClickListener> mAssistClickHandlers = new HashMap();

        TextActionModeCallback(@TextActionMode int i) {
            this.mHasSelection = i == 0 || (Editor.this.mTextIsSelectable && i == 2);
            if (!this.mHasSelection) {
                InsertionPointCursorController insertionController = Editor.this.getInsertionController();
                if (insertionController == null) {
                    this.mHandleHeight = 0;
                    return;
                } else {
                    insertionController.getHandle();
                    this.mHandleHeight = Editor.this.mSelectHandleCenter.getMinimumHeight();
                    return;
                }
            }
            SelectionModifierCursorController selectionController = Editor.this.getSelectionController();
            if (selectionController.mStartHandle == null) {
                selectionController.initDrawables();
                selectionController.initHandles();
                selectionController.hide();
            }
            this.mHandleHeight = Math.max(Editor.this.mSelectHandleLeft.getMinimumHeight(), Editor.this.mSelectHandleRight.getMinimumHeight());
        }

        @Override // android.view.ActionMode.Callback
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            this.mAssistClickHandlers.clear();
            actionMode.setTitle((CharSequence) null);
            actionMode.setSubtitle((CharSequence) null);
            actionMode.setTitleOptionalHint(true);
            populateMenuWithItems(menu);
            ActionMode.Callback customCallback = getCustomCallback();
            if (customCallback == null || customCallback.onCreateActionMode(actionMode, menu)) {
                if (Editor.this.mTextView.canProcessText()) {
                    Editor.this.mProcessTextIntentActionsHandler.onInitializeMenu(menu);
                }
                if (this.mHasSelection && !Editor.this.mTextView.hasTransientState()) {
                    Editor.this.mTextView.setHasTransientState(true);
                }
                return true;
            }
            Selection.setSelection((Spannable) Editor.this.mTextView.getText(), Editor.this.mTextView.getSelectionEnd());
            return false;
        }

        private ActionMode.Callback getCustomCallback() {
            if (this.mHasSelection) {
                return Editor.this.mCustomSelectionActionModeCallback;
            }
            return Editor.this.mCustomInsertionActionModeCallback;
        }

        private void populateMenuWithItems(Menu menu) {
            String selectedText;
            if (Editor.this.mTextView.canCut()) {
                menu.add(0, R.id.cut, 4, R.string.cut).setAlphabeticShortcut('x').setShowAsAction(2);
            }
            if (Editor.this.mTextView.canCopy()) {
                menu.add(0, R.id.copy, 5, R.string.copy).setAlphabeticShortcut('c').setShowAsAction(2);
            }
            if (Editor.this.mTextView.canPaste()) {
                menu.add(0, R.id.paste, 6, R.string.paste).setAlphabeticShortcut('v').setShowAsAction(2);
            }
            if (Editor.this.mTextView.canShare()) {
                menu.add(0, R.id.shareText, 7, R.string.permdesc_statusBar).setShowAsAction(1);
            }
            if (Editor.this.mTextView.canRequestAutofill() && ((selectedText = Editor.this.mTextView.getSelectedText()) == null || selectedText.isEmpty())) {
                menu.add(0, R.id.autofill, 10, R.string.autofill).setShowAsAction(0);
            }
            if (Editor.this.mTextView.canPasteAsPlainText()) {
                menu.add(0, R.id.pasteAsPlainText, 11, R.string.paste_as_plain_text).setShowAsAction(1);
            }
            updateSelectAllItem(menu);
            updateReplaceItem(menu);
            updateAssistMenuItems(menu);
        }

        @Override // android.view.ActionMode.Callback
        public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            updateSelectAllItem(menu);
            updateReplaceItem(menu);
            updateAssistMenuItems(menu);
            ActionMode.Callback customCallback = getCustomCallback();
            if (customCallback != null) {
                return customCallback.onPrepareActionMode(actionMode, menu);
            }
            return true;
        }

        private void updateSelectAllItem(Menu menu) {
            boolean canSelectAllText = Editor.this.mTextView.canSelectAllText();
            boolean z = menu.findItem(R.id.selectAll) != null;
            if (canSelectAllText && !z) {
                menu.add(0, R.id.selectAll, 8, R.string.selectAll).setShowAsAction(1);
            } else {
                if (canSelectAllText || !z) {
                    return;
                }
                menu.removeItem(R.id.selectAll);
            }
        }

        private void updateReplaceItem(Menu menu) {
            boolean z = Editor.this.mTextView.isSuggestionsEnabled() && Editor.this.shouldOfferToShowSuggestions();
            boolean z2 = menu.findItem(R.id.replaceText) != null;
            if (z && !z2) {
                menu.add(0, R.id.replaceText, 9, R.string.permdesc_bindCarrierServices).setShowAsAction(1);
            } else {
                if (z || !z2) {
                    return;
                }
                menu.removeItem(R.id.replaceText);
            }
        }

        private void updateAssistMenuItems(Menu menu) {
            TextClassification textClassification;
            clearAssistMenuItems(menu);
            if (shouldEnableAssistMenuItems() && (textClassification = Editor.this.getSelectionActionModeHelper().getTextClassification()) != null) {
                if (!textClassification.getActions().isEmpty()) {
                    addAssistMenuItem(menu, textClassification.getActions().get(0), R.id.textAssist, 0, 2).setIntent(textClassification.getIntent());
                } else if (hasLegacyAssistItem(textClassification)) {
                    MenuItem intent = menu.add(R.id.textAssist, R.id.textAssist, 0, textClassification.getLabel()).setIcon(textClassification.getIcon()).setIntent(textClassification.getIntent());
                    intent.setShowAsAction(2);
                    this.mAssistClickHandlers.put(intent, TextClassification.createIntentOnClickListener(TextClassification.createPendingIntent(Editor.this.mTextView.getContext(), textClassification.getIntent(), createAssistMenuItemPendingIntentRequestCode())));
                }
                int size = textClassification.getActions().size();
                for (int i = 1; i < size; i++) {
                    addAssistMenuItem(menu, textClassification.getActions().get(i), 0, (i + 50) - 1, 0);
                }
            }
        }

        private MenuItem addAssistMenuItem(Menu menu, RemoteAction remoteAction, int i, int i2, int i3) {
            MenuItem contentDescription = menu.add(R.id.textAssist, i, i2, remoteAction.getTitle()).setContentDescription(remoteAction.getContentDescription());
            if (remoteAction.shouldShowIcon()) {
                contentDescription.setIcon(remoteAction.getIcon().loadDrawable(Editor.this.mTextView.getContext()));
            }
            contentDescription.setShowAsAction(i3);
            this.mAssistClickHandlers.put(contentDescription, TextClassification.createIntentOnClickListener(remoteAction.getActionIntent()));
            return contentDescription;
        }

        private void clearAssistMenuItems(Menu menu) {
            int i = 0;
            while (i < menu.size()) {
                MenuItem item = menu.getItem(i);
                if (item.getGroupId() == 16908353) {
                    menu.removeItem(item.getItemId());
                } else {
                    i++;
                }
            }
        }

        private boolean hasLegacyAssistItem(TextClassification textClassification) {
            return ((textClassification.getIcon() == null && TextUtils.isEmpty(textClassification.getLabel())) || (textClassification.getIntent() == null && textClassification.getOnClickListener() == null)) ? false : true;
        }

        private boolean onAssistMenuItemClicked(MenuItem menuItem) {
            Intent intent;
            Preconditions.checkArgument(menuItem.getGroupId() == 16908353);
            TextClassification textClassification = Editor.this.getSelectionActionModeHelper().getTextClassification();
            if (!shouldEnableAssistMenuItems() || textClassification == null) {
                return true;
            }
            View.OnClickListener onClickListener = this.mAssistClickHandlers.get(menuItem);
            if (onClickListener == null && (intent = menuItem.getIntent()) != null) {
                onClickListener = TextClassification.createIntentOnClickListener(TextClassification.createPendingIntent(Editor.this.mTextView.getContext(), intent, createAssistMenuItemPendingIntentRequestCode()));
            }
            if (onClickListener != null) {
                onClickListener.onClick(Editor.this.mTextView);
                Editor.this.stopTextActionMode();
            }
            return true;
        }

        private int createAssistMenuItemPendingIntentRequestCode() {
            if (Editor.this.mTextView.hasSelection()) {
                return Editor.this.mTextView.getText().subSequence(Editor.this.mTextView.getSelectionStart(), Editor.this.mTextView.getSelectionEnd()).hashCode();
            }
            return 0;
        }

        private boolean shouldEnableAssistMenuItems() {
            return Editor.this.mTextView.isDeviceProvisioned() && TextClassificationManager.getSettings(Editor.this.mTextView.getContext()).isSmartTextShareEnabled();
        }

        @Override // android.view.ActionMode.Callback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            Editor.this.getSelectionActionModeHelper().onSelectionAction(menuItem.getItemId());
            if (Editor.this.mProcessTextIntentActionsHandler.performMenuItemAction(menuItem)) {
                return true;
            }
            ActionMode.Callback customCallback = getCustomCallback();
            if (customCallback != null && customCallback.onActionItemClicked(actionMode, menuItem)) {
                return true;
            }
            if (menuItem.getGroupId() == 16908353 && onAssistMenuItemClicked(menuItem)) {
                return true;
            }
            return Editor.this.mTextView.onTextContextMenuItem(menuItem.getItemId());
        }

        @Override // android.view.ActionMode.Callback
        public void onDestroyActionMode(ActionMode actionMode) {
            Editor.this.getSelectionActionModeHelper().onDestroyActionMode();
            Editor.this.mTextActionMode = null;
            ActionMode.Callback customCallback = getCustomCallback();
            if (customCallback != null) {
                customCallback.onDestroyActionMode(actionMode);
            }
            if (!Editor.this.mPreserveSelection) {
                Selection.setSelection((Spannable) Editor.this.mTextView.getText(), Editor.this.mTextView.getSelectionEnd());
            }
            if (Editor.this.mSelectionModifierCursorController != null) {
                Editor.this.mSelectionModifierCursorController.hide();
            }
            this.mAssistClickHandlers.clear();
            Editor.this.mRequestingLinkActionMode = false;
        }

        @Override // android.view.ActionMode.Callback2
        public void onGetContentRect(ActionMode actionMode, View view, Rect rect) {
            if (view.equals(Editor.this.mTextView) && Editor.this.mTextView.getLayout() != null) {
                if (Editor.this.mTextView.getSelectionStart() == Editor.this.mTextView.getSelectionEnd()) {
                    Layout layout = Editor.this.mTextView.getLayout();
                    int lineForOffset = layout.getLineForOffset(Editor.this.mTextView.getSelectionStart());
                    float clampHorizontalPosition = Editor.this.clampHorizontalPosition(null, layout.getPrimaryHorizontal(Editor.this.mTextView.getSelectionStart()));
                    this.mSelectionBounds.set(clampHorizontalPosition, layout.getLineTop(lineForOffset), clampHorizontalPosition, layout.getLineBottom(lineForOffset) + this.mHandleHeight);
                } else {
                    this.mSelectionPath.reset();
                    Editor.this.mTextView.getLayout().getSelectionPath(Editor.this.mTextView.getSelectionStart(), Editor.this.mTextView.getSelectionEnd(), this.mSelectionPath);
                    this.mSelectionPath.computeBounds(this.mSelectionBounds, true);
                    this.mSelectionBounds.bottom += this.mHandleHeight;
                }
                float viewportToContentHorizontalOffset = Editor.this.mTextView.viewportToContentHorizontalOffset();
                float viewportToContentVerticalOffset = Editor.this.mTextView.viewportToContentVerticalOffset();
                rect.set((int) Math.floor(this.mSelectionBounds.left + viewportToContentHorizontalOffset), (int) Math.floor(this.mSelectionBounds.top + viewportToContentVerticalOffset), (int) Math.ceil(this.mSelectionBounds.right + viewportToContentHorizontalOffset), (int) Math.ceil(this.mSelectionBounds.bottom + viewportToContentVerticalOffset));
                return;
            }
            super.onGetContentRect(actionMode, view, rect);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public final class CursorAnchorInfoNotifier implements TextViewPositionListener {
        final CursorAnchorInfo.Builder mSelectionInfoBuilder;
        final int[] mTmpIntOffset;
        final Matrix mViewToScreenMatrix;

        private CursorAnchorInfoNotifier() {
            this.mSelectionInfoBuilder = new CursorAnchorInfo.Builder();
            this.mTmpIntOffset = new int[2];
            this.mViewToScreenMatrix = new Matrix();
        }

        @Override // android.widget.Editor.TextViewPositionListener
        public void updatePosition(int i, int i2, boolean z, boolean z2) {
            InputMethodManager peekInstance;
            Layout layout;
            int i3;
            InputMethodState inputMethodState = Editor.this.mInputMethodState;
            if (inputMethodState == null || inputMethodState.mBatchEditNesting > 0 || (peekInstance = InputMethodManager.peekInstance()) == null || !peekInstance.isActive(Editor.this.mTextView) || !peekInstance.isCursorAnchorInfoEnabled() || (layout = Editor.this.mTextView.getLayout()) == null) {
                return;
            }
            CursorAnchorInfo.Builder builder = this.mSelectionInfoBuilder;
            builder.reset();
            int selectionStart = Editor.this.mTextView.getSelectionStart();
            builder.setSelectionRange(selectionStart, Editor.this.mTextView.getSelectionEnd());
            this.mViewToScreenMatrix.set(Editor.this.mTextView.getMatrix());
            Editor.this.mTextView.getLocationOnScreen(this.mTmpIntOffset);
            this.mViewToScreenMatrix.postTranslate(this.mTmpIntOffset[0], this.mTmpIntOffset[1]);
            builder.setMatrix(this.mViewToScreenMatrix);
            float viewportToContentHorizontalOffset = Editor.this.mTextView.viewportToContentHorizontalOffset();
            float viewportToContentVerticalOffset = Editor.this.mTextView.viewportToContentVerticalOffset();
            CharSequence text = Editor.this.mTextView.getText();
            if (text instanceof Spannable) {
                Spannable spannable = (Spannable) text;
                int composingSpanStart = EditableInputConnection.getComposingSpanStart(spannable);
                int composingSpanEnd = EditableInputConnection.getComposingSpanEnd(spannable);
                if (composingSpanEnd < composingSpanStart) {
                    i3 = composingSpanStart;
                    composingSpanStart = composingSpanEnd;
                } else {
                    i3 = composingSpanEnd;
                }
                if (composingSpanStart >= 0 && composingSpanStart < i3) {
                    builder.setComposingText(composingSpanStart, text.subSequence(composingSpanStart, i3));
                    Editor.this.mTextView.populateCharacterBounds(builder, composingSpanStart, i3, viewportToContentHorizontalOffset, viewportToContentVerticalOffset);
                }
            }
            if (selectionStart >= 0) {
                int lineForOffset = layout.getLineForOffset(selectionStart);
                float primaryHorizontal = layout.getPrimaryHorizontal(selectionStart) + viewportToContentHorizontalOffset;
                float lineTop = layout.getLineTop(lineForOffset) + viewportToContentVerticalOffset;
                float lineBaseline = layout.getLineBaseline(lineForOffset) + viewportToContentVerticalOffset;
                float lineBottomWithoutSpacing = layout.getLineBottomWithoutSpacing(lineForOffset) + viewportToContentVerticalOffset;
                boolean isPositionVisible = Editor.this.mTextView.isPositionVisible(primaryHorizontal, lineTop);
                boolean isPositionVisible2 = Editor.this.mTextView.isPositionVisible(primaryHorizontal, lineBottomWithoutSpacing);
                int i4 = (isPositionVisible || isPositionVisible2) ? 1 : 0;
                if (!isPositionVisible || !isPositionVisible2) {
                    i4 |= 2;
                }
                builder.setInsertionMarkerLocation(primaryHorizontal, lineTop, lineBaseline, lineBottomWithoutSpacing, layout.isRtlCharAt(selectionStart) ? i4 | 4 : i4);
            }
            peekInstance.updateCursorAnchorInfo(Editor.this.mTextView, builder.build());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class MagnifierMotionAnimator {
        private static final long DURATION = 100;
        private float mAnimationCurrentX;
        private float mAnimationCurrentY;
        private float mAnimationStartX;
        private float mAnimationStartY;
        private final ValueAnimator mAnimator;
        private float mLastX;
        private float mLastY;
        private final Magnifier mMagnifier;
        private boolean mMagnifierIsShowing;

        private MagnifierMotionAnimator(Magnifier magnifier) {
            this.mMagnifier = magnifier;
            this.mAnimator = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.mAnimator.setDuration(DURATION);
            this.mAnimator.setInterpolator(new LinearInterpolator());
            this.mAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: android.widget.-$$Lambda$Editor$MagnifierMotionAnimator$E-RaelOMgCHAzvKgSSZE-hDYeIg
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    Editor.MagnifierMotionAnimator.lambda$new$0(Editor.MagnifierMotionAnimator.this, valueAnimator);
                }
            });
        }

        public static /* synthetic */ void lambda$new$0(MagnifierMotionAnimator magnifierMotionAnimator, ValueAnimator valueAnimator) {
            magnifierMotionAnimator.mAnimationCurrentX = magnifierMotionAnimator.mAnimationStartX + ((magnifierMotionAnimator.mLastX - magnifierMotionAnimator.mAnimationStartX) * valueAnimator.getAnimatedFraction());
            magnifierMotionAnimator.mAnimationCurrentY = magnifierMotionAnimator.mAnimationStartY + ((magnifierMotionAnimator.mLastY - magnifierMotionAnimator.mAnimationStartY) * valueAnimator.getAnimatedFraction());
            magnifierMotionAnimator.mMagnifier.show(magnifierMotionAnimator.mAnimationCurrentX, magnifierMotionAnimator.mAnimationCurrentY);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void show(float f, float f2) {
            if (this.mMagnifierIsShowing && f2 != this.mLastY) {
                if (this.mAnimator.isRunning()) {
                    this.mAnimator.cancel();
                    this.mAnimationStartX = this.mAnimationCurrentX;
                    this.mAnimationStartY = this.mAnimationCurrentY;
                } else {
                    this.mAnimationStartX = this.mLastX;
                    this.mAnimationStartY = this.mLastY;
                }
                this.mAnimator.start();
            } else if (!this.mAnimator.isRunning()) {
                this.mMagnifier.show(f, f2);
            }
            this.mLastX = f;
            this.mLastY = f2;
            this.mMagnifierIsShowing = true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void update() {
            this.mMagnifier.update();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void dismiss() {
            this.mMagnifier.dismiss();
            this.mAnimator.cancel();
            this.mMagnifierIsShowing = false;
        }
    }

    @VisibleForTesting
    /* loaded from: /home/user/work/dex/classes2.dex */
    public abstract class HandleView extends View implements TextViewPositionListener {
        private static final int HISTORY_SIZE = 5;
        private static final int TOUCH_UP_FILTER_DELAY_AFTER = 150;
        private static final int TOUCH_UP_FILTER_DELAY_BEFORE = 350;
        private final PopupWindow mContainer;
        protected Drawable mDrawable;
        protected Drawable mDrawableLtr;
        protected Drawable mDrawableRtl;
        private final Magnifier.Callback mHandlesVisibilityCallback;
        protected int mHorizontalGravity;
        protected int mHotspotX;
        private float mIdealVerticalOffset;
        private boolean mIsDragging;
        private int mLastParentX;
        private int mLastParentXOnScreen;
        private int mLastParentY;
        private int mLastParentYOnScreen;
        private int mMinSize;
        private int mNumberPreviousOffsets;
        private boolean mPositionHasChanged;
        private int mPositionX;
        private int mPositionY;
        protected int mPrevLine;
        protected int mPreviousLineTouched;
        protected int mPreviousOffset;
        private int mPreviousOffsetIndex;
        private final int[] mPreviousOffsets;
        private final long[] mPreviousOffsetsTimes;
        private float mTouchOffsetY;
        private float mTouchToWindowOffsetX;
        private float mTouchToWindowOffsetY;

        public abstract int getCurrentCursorOffset();

        protected int getCursorOffset() {
            return 0;
        }

        protected abstract int getHorizontalGravity(boolean z);

        protected abstract int getHotspotX(Drawable drawable, boolean z);

        protected abstract int getMagnifierHandleTrigger();

        public void onDetached() {
        }

        void onHandleMoved() {
        }

        protected abstract void updatePosition(float f, float f2, boolean z);

        protected abstract void updateSelection(int i);

        private HandleView(Drawable drawable, Drawable drawable2, int i) {
            super(Editor.this.mTextView.getContext());
            this.mPreviousOffset = -1;
            this.mPositionHasChanged = true;
            this.mPrevLine = -1;
            this.mPreviousLineTouched = -1;
            this.mPreviousOffsetsTimes = new long[5];
            this.mPreviousOffsets = new int[5];
            this.mPreviousOffsetIndex = 0;
            this.mNumberPreviousOffsets = 0;
            this.mHandlesVisibilityCallback = new Magnifier.Callback() { // from class: android.widget.Editor.HandleView.1
                @Override // android.widget.Magnifier.Callback
                public void onOperationComplete() {
                    Point windowCoords = Editor.this.mMagnifierAnimator.mMagnifier.getWindowCoords();
                    if (windowCoords == null) {
                        return;
                    }
                    Rect rect = new Rect(windowCoords.x, windowCoords.y, windowCoords.x + Editor.this.mMagnifierAnimator.mMagnifier.getWidth(), windowCoords.y + Editor.this.mMagnifierAnimator.mMagnifier.getHeight());
                    HandleView.this.setVisible(!HandleView.this.handleOverlapsMagnifier(HandleView.this, rect));
                    HandleView otherSelectionHandle = HandleView.this.getOtherSelectionHandle();
                    if (otherSelectionHandle != null) {
                        otherSelectionHandle.setVisible(!HandleView.this.handleOverlapsMagnifier(otherSelectionHandle, rect));
                    }
                }
            };
            setId(i);
            this.mContainer = new PopupWindow(Editor.this.mTextView.getContext(), (AttributeSet) null, R.attr.textSelectHandleWindowStyle);
            this.mContainer.setSplitTouchEnabled(true);
            this.mContainer.setClippingEnabled(false);
            this.mContainer.setWindowLayoutType(1002);
            this.mContainer.setWidth(-2);
            this.mContainer.setHeight(-2);
            this.mContainer.setContentView(this);
            this.mDrawableLtr = drawable;
            this.mDrawableRtl = drawable2;
            this.mMinSize = Editor.this.mTextView.getContext().getResources().getDimensionPixelSize(R.dimen.notification_big_picture_max_width_low_ram);
            updateDrawable();
            float preferredHeight = getPreferredHeight();
            this.mTouchOffsetY = (-0.3f) * preferredHeight;
            this.mIdealVerticalOffset = preferredHeight * 0.7f;
        }

        public float getIdealVerticalOffset() {
            return this.mIdealVerticalOffset;
        }

        protected void updateDrawable() {
            Layout layout;
            if (this.mIsDragging || (layout = Editor.this.mTextView.getLayout()) == null) {
                return;
            }
            int currentCursorOffset = getCurrentCursorOffset();
            boolean isAtRtlRun = isAtRtlRun(layout, currentCursorOffset);
            Drawable drawable = this.mDrawable;
            this.mDrawable = isAtRtlRun ? this.mDrawableRtl : this.mDrawableLtr;
            this.mHotspotX = getHotspotX(this.mDrawable, isAtRtlRun);
            this.mHorizontalGravity = getHorizontalGravity(isAtRtlRun);
            if (drawable == this.mDrawable || !isShowing()) {
                return;
            }
            this.mPositionX = ((getCursorHorizontalPosition(layout, currentCursorOffset) - this.mHotspotX) - getHorizontalOffset()) + getCursorOffset();
            this.mPositionX += Editor.this.mTextView.viewportToContentHorizontalOffset();
            this.mPositionHasChanged = true;
            updatePosition(this.mLastParentX, this.mLastParentY, false, false);
            postInvalidate();
        }

        private void startTouchUpFilter(int i) {
            this.mNumberPreviousOffsets = 0;
            addPositionToTouchUpFilter(i);
        }

        private void addPositionToTouchUpFilter(int i) {
            this.mPreviousOffsetIndex = (this.mPreviousOffsetIndex + 1) % 5;
            this.mPreviousOffsets[this.mPreviousOffsetIndex] = i;
            this.mPreviousOffsetsTimes[this.mPreviousOffsetIndex] = SystemClock.uptimeMillis();
            this.mNumberPreviousOffsets++;
        }

        private void filterOnTouchUp(boolean z) {
            long uptimeMillis = SystemClock.uptimeMillis();
            int i = this.mPreviousOffsetIndex;
            int min = Math.min(this.mNumberPreviousOffsets, 5);
            int i2 = i;
            int i3 = 0;
            while (i3 < min && uptimeMillis - this.mPreviousOffsetsTimes[i2] < 150) {
                i3++;
                i2 = ((this.mPreviousOffsetIndex - i3) + 5) % 5;
            }
            if (i3 <= 0 || i3 >= min || uptimeMillis - this.mPreviousOffsetsTimes[i2] <= 350) {
                return;
            }
            positionAtCursorOffset(this.mPreviousOffsets[i2], false, z);
        }

        public boolean offsetHasBeenChanged() {
            return this.mNumberPreviousOffsets > 1;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.view.View
        public void onMeasure(int i, int i2) {
            setMeasuredDimension(getPreferredWidth(), getPreferredHeight());
        }

        @Override // android.view.View
        public void invalidate() {
            super.invalidate();
            if (isShowing()) {
                positionAtCursorOffset(getCurrentCursorOffset(), true, false);
            }
        }

        private int getPreferredWidth() {
            return Math.max(this.mDrawable.getIntrinsicWidth(), this.mMinSize);
        }

        private int getPreferredHeight() {
            return Math.max(this.mDrawable.getIntrinsicHeight(), this.mMinSize);
        }

        public void show() {
            if (isShowing()) {
                return;
            }
            Editor.this.getPositionListener().addSubscriber(this, true);
            this.mPreviousOffset = -1;
            positionAtCursorOffset(getCurrentCursorOffset(), false, false);
        }

        protected void dismiss() {
            this.mIsDragging = false;
            this.mContainer.dismiss();
            onDetached();
        }

        public void hide() {
            dismiss();
            Editor.this.getPositionListener().removeSubscriber(this);
        }

        public boolean isShowing() {
            return this.mContainer.isShowing();
        }

        private boolean shouldShow() {
            if (this.mIsDragging) {
                return true;
            }
            if (Editor.this.mTextView.isInBatchEditMode()) {
                return false;
            }
            return Editor.this.mTextView.isPositionVisible(this.mPositionX + this.mHotspotX + getHorizontalOffset(), this.mPositionY);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setVisible(boolean z) {
            this.mContainer.getContentView().setVisibility(z ? 0 : 4);
        }

        protected boolean isAtRtlRun(Layout layout, int i) {
            return layout.isRtlCharAt(i);
        }

        @VisibleForTesting
        public float getHorizontal(Layout layout, int i) {
            return layout.getPrimaryHorizontal(i);
        }

        protected int getOffsetAtCoordinate(Layout layout, int i, float f) {
            return Editor.this.mTextView.getOffsetAtCoordinate(i, f);
        }

        protected void positionAtCursorOffset(int i, boolean z, boolean z2) {
            if (Editor.this.mTextView.getLayout() != null) {
                Layout layout = Editor.this.mTextView.getLayout();
                boolean z3 = i != this.mPreviousOffset;
                if (z3 || z) {
                    if (z3) {
                        updateSelection(i);
                        if (z2 && Editor.this.mHapticTextHandleEnabled) {
                            Editor.this.mTextView.performHapticFeedback(9);
                        }
                        addPositionToTouchUpFilter(i);
                    }
                    int lineForOffset = layout.getLineForOffset(i);
                    this.mPrevLine = lineForOffset;
                    this.mPositionX = ((getCursorHorizontalPosition(layout, i) - this.mHotspotX) - getHorizontalOffset()) + getCursorOffset();
                    this.mPositionY = layout.getLineBottomWithoutSpacing(lineForOffset);
                    this.mPositionX += Editor.this.mTextView.viewportToContentHorizontalOffset();
                    this.mPositionY += Editor.this.mTextView.viewportToContentVerticalOffset();
                    this.mPreviousOffset = i;
                    this.mPositionHasChanged = true;
                    return;
                }
                return;
            }
            Editor.this.prepareCursorControllers();
        }

        int getCursorHorizontalPosition(Layout layout, int i) {
            return (int) (getHorizontal(layout, i) - Editor.LINE_SLOP_MULTIPLIER_FOR_HANDLEVIEWS);
        }

        @Override // android.widget.Editor.TextViewPositionListener
        public void updatePosition(int i, int i2, boolean z, boolean z2) {
            positionAtCursorOffset(getCurrentCursorOffset(), z2, false);
            if (z || this.mPositionHasChanged) {
                if (this.mIsDragging) {
                    if (i != this.mLastParentX || i2 != this.mLastParentY) {
                        this.mTouchToWindowOffsetX += i - this.mLastParentX;
                        this.mTouchToWindowOffsetY += i2 - this.mLastParentY;
                        this.mLastParentX = i;
                        this.mLastParentY = i2;
                    }
                    onHandleMoved();
                }
                if (shouldShow()) {
                    int[] iArr = {this.mPositionX + this.mHotspotX + getHorizontalOffset(), this.mPositionY};
                    Editor.this.mTextView.transformFromViewToWindowSpace(iArr);
                    iArr[0] = iArr[0] - (this.mHotspotX + getHorizontalOffset());
                    if (!isShowing()) {
                        this.mContainer.showAtLocation(Editor.this.mTextView, 0, iArr[0], iArr[1]);
                    } else {
                        this.mContainer.update(iArr[0], iArr[1], -1, -1);
                    }
                } else if (isShowing()) {
                    dismiss();
                }
                this.mPositionHasChanged = false;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            int intrinsicWidth = this.mDrawable.getIntrinsicWidth();
            int horizontalOffset = getHorizontalOffset();
            this.mDrawable.setBounds(horizontalOffset, 0, intrinsicWidth + horizontalOffset, this.mDrawable.getIntrinsicHeight());
            this.mDrawable.draw(canvas);
        }

        private int getHorizontalOffset() {
            int preferredWidth = getPreferredWidth();
            int intrinsicWidth = this.mDrawable.getIntrinsicWidth();
            int i = this.mHorizontalGravity;
            if (i != 3) {
                return i != 5 ? (preferredWidth - intrinsicWidth) / 2 : preferredWidth - intrinsicWidth;
            }
            return 0;
        }

        private boolean tooLargeTextForMagnifier() {
            float round = Math.round(Editor.this.mMagnifierAnimator.mMagnifier.getHeight() / Editor.this.mMagnifierAnimator.mMagnifier.getZoom());
            Paint.FontMetrics fontMetrics = Editor.this.mTextView.getPaint().getFontMetrics();
            return fontMetrics.descent - fontMetrics.ascent > round;
        }

        /* JADX WARN: Removed duplicated region for block: B:23:0x00cf  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x00f8  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x014b  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private boolean obtainMagnifierShowCoordinates(MotionEvent motionEvent, PointF pointF) {
            int selectionStart;
            int i;
            boolean z;
            float rawX;
            float lineLeft;
            float lineRight;
            float round;
            int magnifierHandleTrigger = getMagnifierHandleTrigger();
            switch (magnifierHandleTrigger) {
                case 0:
                    selectionStart = Editor.this.mTextView.getSelectionStart();
                    i = -1;
                    break;
                case 1:
                    selectionStart = Editor.this.mTextView.getSelectionStart();
                    i = Editor.this.mTextView.getSelectionEnd();
                    break;
                case 2:
                    selectionStart = Editor.this.mTextView.getSelectionEnd();
                    i = Editor.this.mTextView.getSelectionStart();
                    break;
                default:
                    selectionStart = -1;
                    i = -1;
                    break;
            }
            if (selectionStart == -1) {
                return false;
            }
            Layout layout = Editor.this.mTextView.getLayout();
            int lineForOffset = layout.getLineForOffset(selectionStart);
            boolean z2 = i != -1 && lineForOffset == layout.getLineForOffset(i);
            if (z2) {
                if ((selectionStart < i) != (getHorizontal(Editor.this.mTextView.getLayout(), selectionStart) < getHorizontal(Editor.this.mTextView.getLayout(), i))) {
                    z = true;
                    Editor.this.mTextView.getLocationOnScreen(new int[2]);
                    rawX = motionEvent.getRawX() - r8[0];
                    float totalPaddingLeft = Editor.this.mTextView.getTotalPaddingLeft() - Editor.this.mTextView.getScrollX();
                    float totalPaddingLeft2 = Editor.this.mTextView.getTotalPaddingLeft() - Editor.this.mTextView.getScrollX();
                    if (z2) {
                        if ((magnifierHandleTrigger == 2) ^ z) {
                            lineLeft = totalPaddingLeft + getHorizontal(Editor.this.mTextView.getLayout(), i);
                            if (z2) {
                                if ((magnifierHandleTrigger == 1) ^ z) {
                                    lineRight = totalPaddingLeft2 + getHorizontal(Editor.this.mTextView.getLayout(), i);
                                    round = Math.round(Editor.this.mMagnifierAnimator.mMagnifier.getWidth() / Editor.this.mMagnifierAnimator.mMagnifier.getZoom()) / 2.0f;
                                    if (rawX >= lineLeft - round || rawX > round + lineRight) {
                                        return false;
                                    }
                                    pointF.x = Math.max(lineLeft, Math.min(lineRight, rawX));
                                    pointF.y = (((Editor.this.mTextView.getLayout().getLineTop(lineForOffset) + Editor.this.mTextView.getLayout().getLineBottom(lineForOffset)) / 2.0f) + Editor.this.mTextView.getTotalPaddingTop()) - Editor.this.mTextView.getScrollY();
                                    return true;
                                }
                            }
                            lineRight = totalPaddingLeft2 + Editor.this.mTextView.getLayout().getLineRight(lineForOffset);
                            round = Math.round(Editor.this.mMagnifierAnimator.mMagnifier.getWidth() / Editor.this.mMagnifierAnimator.mMagnifier.getZoom()) / 2.0f;
                            if (rawX >= lineLeft - round) {
                            }
                            return false;
                        }
                    }
                    lineLeft = totalPaddingLeft + Editor.this.mTextView.getLayout().getLineLeft(lineForOffset);
                    if (z2) {
                    }
                    lineRight = totalPaddingLeft2 + Editor.this.mTextView.getLayout().getLineRight(lineForOffset);
                    round = Math.round(Editor.this.mMagnifierAnimator.mMagnifier.getWidth() / Editor.this.mMagnifierAnimator.mMagnifier.getZoom()) / 2.0f;
                    if (rawX >= lineLeft - round) {
                    }
                    return false;
                }
            }
            z = false;
            Editor.this.mTextView.getLocationOnScreen(new int[2]);
            rawX = motionEvent.getRawX() - r8[0];
            float totalPaddingLeft3 = Editor.this.mTextView.getTotalPaddingLeft() - Editor.this.mTextView.getScrollX();
            float totalPaddingLeft22 = Editor.this.mTextView.getTotalPaddingLeft() - Editor.this.mTextView.getScrollX();
            if (z2) {
            }
            lineLeft = totalPaddingLeft3 + Editor.this.mTextView.getLayout().getLineLeft(lineForOffset);
            if (z2) {
            }
            lineRight = totalPaddingLeft22 + Editor.this.mTextView.getLayout().getLineRight(lineForOffset);
            round = Math.round(Editor.this.mMagnifierAnimator.mMagnifier.getWidth() / Editor.this.mMagnifierAnimator.mMagnifier.getZoom()) / 2.0f;
            if (rawX >= lineLeft - round) {
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean handleOverlapsMagnifier(HandleView handleView, Rect rect) {
            PopupWindow popupWindow = handleView.mContainer;
            if (popupWindow.hasDecorView()) {
                return Rect.intersects(new Rect(popupWindow.getDecorViewLayoutParams().x, popupWindow.getDecorViewLayoutParams().y, popupWindow.getDecorViewLayoutParams().x + popupWindow.getContentView().getWidth(), popupWindow.getDecorViewLayoutParams().y + popupWindow.getContentView().getHeight()), rect);
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public HandleView getOtherSelectionHandle() {
            SelectionModifierCursorController selectionController = Editor.this.getSelectionController();
            if (selectionController == null || !selectionController.isActive()) {
                return null;
            }
            return selectionController.mStartHandle != this ? selectionController.mStartHandle : selectionController.mEndHandle;
        }

        protected final void updateMagnifier(MotionEvent motionEvent) {
            if (Editor.this.mMagnifierAnimator == null) {
                return;
            }
            PointF pointF = new PointF();
            if (!tooLargeTextForMagnifier() && obtainMagnifierShowCoordinates(motionEvent, pointF)) {
                Editor.this.mRenderCursorRegardlessTiming = true;
                Editor.this.mTextView.invalidateCursorPath();
                Editor.this.suspendBlink();
                Editor.this.mMagnifierAnimator.mMagnifier.setOnOperationCompleteCallback(this.mHandlesVisibilityCallback);
                Editor.this.mMagnifierAnimator.show(pointF.x, pointF.y);
                return;
            }
            dismissMagnifier();
        }

        protected final void dismissMagnifier() {
            if (Editor.this.mMagnifierAnimator != null) {
                Editor.this.mMagnifierAnimator.dismiss();
                Editor.this.mRenderCursorRegardlessTiming = false;
                Editor.this.resumeBlink();
                setVisible(true);
                HandleView otherSelectionHandle = getOtherSelectionHandle();
                if (otherSelectionHandle != null) {
                    otherSelectionHandle.setVisible(true);
                }
            }
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            float min;
            Editor.this.updateFloatingToolbarVisibility(motionEvent);
            switch (motionEvent.getActionMasked()) {
                case 0:
                    startTouchUpFilter(getCurrentCursorOffset());
                    PositionListener positionListener = Editor.this.getPositionListener();
                    this.mLastParentX = positionListener.getPositionX();
                    this.mLastParentY = positionListener.getPositionY();
                    this.mLastParentXOnScreen = positionListener.getPositionXOnScreen();
                    this.mLastParentYOnScreen = positionListener.getPositionYOnScreen();
                    float rawX = (motionEvent.getRawX() - this.mLastParentXOnScreen) + this.mLastParentX;
                    float rawY = (motionEvent.getRawY() - this.mLastParentYOnScreen) + this.mLastParentY;
                    this.mTouchToWindowOffsetX = rawX - this.mPositionX;
                    this.mTouchToWindowOffsetY = rawY - this.mPositionY;
                    this.mIsDragging = true;
                    this.mPreviousLineTouched = -1;
                    break;
                case 1:
                    filterOnTouchUp(motionEvent.isFromSource(InputDevice.SOURCE_TOUCHSCREEN));
                    this.mIsDragging = false;
                    updateDrawable();
                    break;
                case 2:
                    float rawX2 = (motionEvent.getRawX() - this.mLastParentXOnScreen) + this.mLastParentX;
                    float rawY2 = (motionEvent.getRawY() - this.mLastParentYOnScreen) + this.mLastParentY;
                    float f = this.mTouchToWindowOffsetY - this.mLastParentY;
                    float f2 = (rawY2 - this.mPositionY) - this.mLastParentY;
                    if (f < this.mIdealVerticalOffset) {
                        min = Math.max(Math.min(f2, this.mIdealVerticalOffset), f);
                    } else {
                        min = Math.min(Math.max(f2, this.mIdealVerticalOffset), f);
                    }
                    this.mTouchToWindowOffsetY = min + this.mLastParentY;
                    updatePosition((rawX2 - this.mTouchToWindowOffsetX) + this.mHotspotX + getHorizontalOffset(), (rawY2 - this.mTouchToWindowOffsetY) + this.mTouchOffsetY, motionEvent.isFromSource(InputDevice.SOURCE_TOUCHSCREEN));
                    break;
                case 3:
                    this.mIsDragging = false;
                    updateDrawable();
                    break;
            }
            return true;
        }

        public boolean isDragging() {
            return this.mIsDragging;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public class InsertionHandleView extends HandleView {
        private static final int DELAY_BEFORE_HANDLE_FADES_OUT = 4000;
        private static final int RECENT_CUT_COPY_DURATION = 15000;
        private float mDownPositionX;
        private float mDownPositionY;
        private Runnable mHider;

        @Override // android.widget.Editor.HandleView
        protected int getHorizontalGravity(boolean z) {
            return 1;
        }

        @Override // android.widget.Editor.HandleView
        protected int getMagnifierHandleTrigger() {
            return 0;
        }

        public InsertionHandleView(Drawable drawable) {
            super(drawable, drawable, R.id.flagIncludeNotImportantViews);
        }

        @Override // android.widget.Editor.HandleView
        public void show() {
            super.show();
            long uptimeMillis = SystemClock.uptimeMillis() - TextView.sLastCutCopyOrTextChangedTime;
            if (Editor.this.mInsertionActionModeRunnable != null && (Editor.this.mTapState == 2 || Editor.this.mTapState == 3 || Editor.this.isCursorInsideEasyCorrectionSpan())) {
                Editor.this.mTextView.removeCallbacks(Editor.this.mInsertionActionModeRunnable);
            }
            if (Editor.this.mTapState != 2 && Editor.this.mTapState != 3 && !Editor.this.isCursorInsideEasyCorrectionSpan() && uptimeMillis < 15000 && Editor.this.mTextActionMode == null) {
                if (Editor.this.mInsertionActionModeRunnable == null) {
                    Editor.this.mInsertionActionModeRunnable = new Runnable() { // from class: android.widget.Editor.InsertionHandleView.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Editor.this.startInsertionActionMode();
                        }
                    };
                }
                Editor.this.mTextView.postDelayed(Editor.this.mInsertionActionModeRunnable, ViewConfiguration.getDoubleTapTimeout() + 1);
            }
            hideAfterDelay();
        }

        private void hideAfterDelay() {
            if (this.mHider == null) {
                this.mHider = new Runnable() { // from class: android.widget.Editor.InsertionHandleView.2
                    @Override // java.lang.Runnable
                    public void run() {
                        InsertionHandleView.this.hide();
                    }
                };
            } else {
                removeHiderCallback();
            }
            Editor.this.mTextView.postDelayed(this.mHider, 4000L);
        }

        private void removeHiderCallback() {
            if (this.mHider != null) {
                Editor.this.mTextView.removeCallbacks(this.mHider);
            }
        }

        @Override // android.widget.Editor.HandleView
        protected int getHotspotX(Drawable drawable, boolean z) {
            return drawable.getIntrinsicWidth() / 2;
        }

        @Override // android.widget.Editor.HandleView
        protected int getCursorOffset() {
            int cursorOffset = super.getCursorOffset();
            if (Editor.this.mDrawableForCursor == null) {
                return cursorOffset;
            }
            Editor.this.mDrawableForCursor.getPadding(Editor.this.mTempRect);
            return cursorOffset + (((Editor.this.mDrawableForCursor.getIntrinsicWidth() - Editor.this.mTempRect.left) - Editor.this.mTempRect.right) / 2);
        }

        @Override // android.widget.Editor.HandleView
        int getCursorHorizontalPosition(Layout layout, int i) {
            if (Editor.this.mDrawableForCursor != null) {
                return Editor.this.clampHorizontalPosition(Editor.this.mDrawableForCursor, getHorizontal(layout, i)) + Editor.this.mTempRect.left;
            }
            return super.getCursorHorizontalPosition(layout, i);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // android.widget.Editor.HandleView, android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            switch (motionEvent.getActionMasked()) {
                case 0:
                    this.mDownPositionX = motionEvent.getRawX();
                    this.mDownPositionY = motionEvent.getRawY();
                    updateMagnifier(motionEvent);
                    break;
                case 1:
                    if (offsetHasBeenChanged()) {
                        if (Editor.this.mTextActionMode != null) {
                            Editor.this.mTextActionMode.invalidateContentRect();
                        }
                    } else {
                        float rawX = this.mDownPositionX - motionEvent.getRawX();
                        float rawY = this.mDownPositionY - motionEvent.getRawY();
                        float f = (rawX * rawX) + (rawY * rawY);
                        int scaledTouchSlop = ViewConfiguration.get(Editor.this.mTextView.getContext()).getScaledTouchSlop();
                        if (f < scaledTouchSlop * scaledTouchSlop) {
                            if (Editor.this.mTextActionMode != null) {
                                Editor.this.stopTextActionMode();
                            } else {
                                Editor.this.startInsertionActionMode();
                            }
                        }
                    }
                    hideAfterDelay();
                    dismissMagnifier();
                    break;
                case 2:
                    updateMagnifier(motionEvent);
                    break;
                case 3:
                    hideAfterDelay();
                    dismissMagnifier();
                    break;
            }
            return onTouchEvent;
        }

        @Override // android.widget.Editor.HandleView
        public int getCurrentCursorOffset() {
            return Editor.this.mTextView.getSelectionStart();
        }

        @Override // android.widget.Editor.HandleView
        public void updateSelection(int i) {
            Selection.setSelection((Spannable) Editor.this.mTextView.getText(), i);
        }

        @Override // android.widget.Editor.HandleView
        protected void updatePosition(float f, float f2, boolean z) {
            Layout layout = Editor.this.mTextView.getLayout();
            int i = -1;
            if (layout != null) {
                if (this.mPreviousLineTouched == -1) {
                    this.mPreviousLineTouched = Editor.this.mTextView.getLineAtCoordinate(f2);
                }
                int currentLineAdjustedForSlop = Editor.this.getCurrentLineAdjustedForSlop(layout, this.mPreviousLineTouched, f2);
                i = getOffsetAtCoordinate(layout, currentLineAdjustedForSlop, f);
                this.mPreviousLineTouched = currentLineAdjustedForSlop;
            }
            positionAtCursorOffset(i, false, z);
            if (Editor.this.mTextActionMode != null) {
                Editor.this.invalidateActionMode();
            }
        }

        @Override // android.widget.Editor.HandleView
        void onHandleMoved() {
            super.onHandleMoved();
            removeHiderCallback();
        }

        @Override // android.widget.Editor.HandleView
        public void onDetached() {
            super.onDetached();
            removeHiderCallback();
        }
    }

    @VisibleForTesting
    /* loaded from: /home/user/work/dex/classes2.dex */
    public final class SelectionHandleView extends HandleView {
        private final int mHandleType;
        private boolean mInWord;
        private boolean mLanguageDirectionChanged;
        private float mPrevX;
        private final float mTextViewEdgeSlop;
        private final int[] mTextViewLocation;
        private float mTouchWordDelta;

        public SelectionHandleView(Drawable drawable, Drawable drawable2, int i, int i2) {
            super(drawable, drawable2, i);
            this.mInWord = false;
            this.mLanguageDirectionChanged = false;
            this.mTextViewLocation = new int[2];
            this.mHandleType = i2;
            this.mTextViewEdgeSlop = ViewConfiguration.get(Editor.this.mTextView.getContext()).getScaledTouchSlop() * 4;
        }

        private boolean isStartHandle() {
            return this.mHandleType == 0;
        }

        @Override // android.widget.Editor.HandleView
        protected int getHotspotX(Drawable drawable, boolean z) {
            if (z == isStartHandle()) {
                return drawable.getIntrinsicWidth() / 4;
            }
            return (drawable.getIntrinsicWidth() * 3) / 4;
        }

        @Override // android.widget.Editor.HandleView
        protected int getHorizontalGravity(boolean z) {
            return z == isStartHandle() ? 3 : 5;
        }

        @Override // android.widget.Editor.HandleView
        public int getCurrentCursorOffset() {
            return isStartHandle() ? Editor.this.mTextView.getSelectionStart() : Editor.this.mTextView.getSelectionEnd();
        }

        @Override // android.widget.Editor.HandleView
        protected void updateSelection(int i) {
            if (isStartHandle()) {
                Selection.setSelection((Spannable) Editor.this.mTextView.getText(), i, Editor.this.mTextView.getSelectionEnd());
            } else {
                Selection.setSelection((Spannable) Editor.this.mTextView.getText(), Editor.this.mTextView.getSelectionStart(), i);
            }
            updateDrawable();
            if (Editor.this.mTextActionMode != null) {
                Editor.this.invalidateActionMode();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:69:0x011c, code lost:
        
            if (r16.this$0.mTextView.canScrollHorizontally(r11 ? -1 : 1) != false) goto L72;
         */
        /* JADX WARN: Removed duplicated region for block: B:103:0x0260  */
        @Override // android.widget.Editor.HandleView
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        protected void updatePosition(float f, float f2, boolean z) {
            boolean z2;
            int i;
            int offsetToLeftOf;
            Layout layout = Editor.this.mTextView.getLayout();
            if (layout == null) {
                positionAndAdjustForCrossingHandles(Editor.this.mTextView.getOffsetForPosition(f, f2), z);
                return;
            }
            if (this.mPreviousLineTouched == -1) {
                this.mPreviousLineTouched = Editor.this.mTextView.getLineAtCoordinate(f2);
            }
            int selectionEnd = isStartHandle() ? Editor.this.mTextView.getSelectionEnd() : Editor.this.mTextView.getSelectionStart();
            int currentLineAdjustedForSlop = Editor.this.getCurrentLineAdjustedForSlop(layout, this.mPreviousLineTouched, f2);
            int offsetAtCoordinate = getOffsetAtCoordinate(layout, currentLineAdjustedForSlop, f);
            if ((isStartHandle() && offsetAtCoordinate >= selectionEnd) || (!isStartHandle() && offsetAtCoordinate <= selectionEnd)) {
                currentLineAdjustedForSlop = layout.getLineForOffset(selectionEnd);
                offsetAtCoordinate = getOffsetAtCoordinate(layout, currentLineAdjustedForSlop, f);
            }
            int wordEnd = Editor.this.getWordEnd(offsetAtCoordinate);
            int wordStart = Editor.this.getWordStart(offsetAtCoordinate);
            if (this.mPrevX == -1.0f) {
                this.mPrevX = f;
            }
            int currentCursorOffset = getCurrentCursorOffset();
            boolean isAtRtlRun = isAtRtlRun(layout, currentCursorOffset);
            boolean isAtRtlRun2 = isAtRtlRun(layout, offsetAtCoordinate);
            boolean isLevelBoundary = layout.isLevelBoundary(offsetAtCoordinate);
            boolean z3 = true;
            if (isLevelBoundary || ((isAtRtlRun && !isAtRtlRun2) || (!isAtRtlRun && isAtRtlRun2))) {
                this.mLanguageDirectionChanged = true;
                this.mTouchWordDelta = 0.0f;
                positionAndAdjustForCrossingHandles(offsetAtCoordinate, z);
                return;
            }
            boolean z4 = false;
            if (this.mLanguageDirectionChanged && !isLevelBoundary) {
                positionAndAdjustForCrossingHandles(offsetAtCoordinate, z);
                this.mTouchWordDelta = 0.0f;
                this.mLanguageDirectionChanged = false;
                return;
            }
            float f3 = f - this.mPrevX;
            boolean z5 = !isStartHandle() ? currentLineAdjustedForSlop <= this.mPreviousLineTouched : currentLineAdjustedForSlop >= this.mPreviousLineTouched;
            if (isAtRtlRun2 == isStartHandle()) {
                z2 = (f3 > 0.0f) | z5;
            } else {
                z2 = (f3 < 0.0f) | z5;
            }
            if (Editor.this.mTextView.getHorizontallyScrolling() && positionNearEdgeOfScrollingView(f, isAtRtlRun2)) {
                if (!isStartHandle() || Editor.this.mTextView.getScrollX() == 0) {
                    if (!isStartHandle()) {
                    }
                }
                if ((z2 && ((isStartHandle() && offsetAtCoordinate < currentCursorOffset) || (!isStartHandle() && offsetAtCoordinate > currentCursorOffset))) || !z2) {
                    this.mTouchWordDelta = 0.0f;
                    if (isAtRtlRun2 == isStartHandle()) {
                        offsetToLeftOf = layout.getOffsetToRightOf(this.mPreviousOffset);
                    } else {
                        offsetToLeftOf = layout.getOffsetToLeftOf(this.mPreviousOffset);
                    }
                    positionAndAdjustForCrossingHandles(offsetToLeftOf, z);
                    return;
                }
            }
            if (z2) {
                int i2 = isStartHandle() ? wordStart : wordEnd;
                if ((!this.mInWord || (!isStartHandle() ? currentLineAdjustedForSlop > this.mPrevLine : currentLineAdjustedForSlop < this.mPrevLine)) && isAtRtlRun2 == isAtRtlRun(layout, i2)) {
                    z4 = true;
                }
                if (z4) {
                    if (layout.getLineForOffset(i2) != currentLineAdjustedForSlop) {
                        i2 = isStartHandle() ? layout.getLineStart(currentLineAdjustedForSlop) : layout.getLineEnd(currentLineAdjustedForSlop);
                    }
                    if (isStartHandle()) {
                        i = wordEnd - ((wordEnd - i2) / 2);
                    } else {
                        i = ((i2 - wordStart) / 2) + wordStart;
                    }
                    if (isStartHandle() && (offsetAtCoordinate <= i || currentLineAdjustedForSlop < this.mPrevLine)) {
                        wordEnd = wordStart;
                    } else if (isStartHandle() || (offsetAtCoordinate < i && currentLineAdjustedForSlop <= this.mPrevLine)) {
                        wordEnd = this.mPreviousOffset;
                    }
                } else {
                    wordEnd = offsetAtCoordinate;
                }
                if ((isStartHandle() && wordEnd < offsetAtCoordinate) || (!isStartHandle() && wordEnd > offsetAtCoordinate)) {
                    this.mTouchWordDelta = Editor.this.mTextView.convertToLocalHorizontalCoordinate(f) - getHorizontal(layout, wordEnd);
                } else {
                    this.mTouchWordDelta = 0.0f;
                }
            } else {
                int offsetAtCoordinate2 = getOffsetAtCoordinate(layout, currentLineAdjustedForSlop, f - this.mTouchWordDelta);
                if (!isStartHandle() ? !(offsetAtCoordinate2 < this.mPreviousOffset || currentLineAdjustedForSlop < this.mPrevLine) : !(offsetAtCoordinate2 > this.mPreviousOffset || currentLineAdjustedForSlop > this.mPrevLine)) {
                    if (currentLineAdjustedForSlop != this.mPrevLine) {
                        if (isStartHandle()) {
                            wordEnd = wordStart;
                        }
                        if ((isStartHandle() && wordEnd < offsetAtCoordinate) || (!isStartHandle() && wordEnd > offsetAtCoordinate)) {
                            this.mTouchWordDelta = Editor.this.mTextView.convertToLocalHorizontalCoordinate(f) - getHorizontal(layout, wordEnd);
                        } else {
                            this.mTouchWordDelta = 0.0f;
                        }
                    } else {
                        offsetAtCoordinate = offsetAtCoordinate2;
                    }
                } else {
                    if ((isStartHandle() && offsetAtCoordinate2 < this.mPreviousOffset) || (!isStartHandle() && offsetAtCoordinate2 > this.mPreviousOffset)) {
                        this.mTouchWordDelta = Editor.this.mTextView.convertToLocalHorizontalCoordinate(f) - getHorizontal(layout, this.mPreviousOffset);
                    }
                    z3 = false;
                }
                if (z3) {
                    this.mPreviousLineTouched = currentLineAdjustedForSlop;
                    positionAndAdjustForCrossingHandles(offsetAtCoordinate, z);
                }
                this.mPrevX = f;
            }
            offsetAtCoordinate = wordEnd;
            if (z3) {
            }
            this.mPrevX = f;
        }

        @Override // android.widget.Editor.HandleView
        protected void positionAtCursorOffset(int i, boolean z, boolean z2) {
            super.positionAtCursorOffset(i, z, z2);
            this.mInWord = (i == -1 || Editor.this.getWordIteratorWithText().isBoundary(i)) ? false : true;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:6:0x001e, code lost:
        
            return r0;
         */
        @Override // android.widget.Editor.HandleView, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean onTouchEvent(MotionEvent motionEvent) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            switch (motionEvent.getActionMasked()) {
                case 0:
                    this.mTouchWordDelta = 0.0f;
                    this.mPrevX = -1.0f;
                    updateMagnifier(motionEvent);
                    break;
                case 1:
                case 3:
                    dismissMagnifier();
                    break;
                case 2:
                    updateMagnifier(motionEvent);
                    break;
            }
        }

        private void positionAndAdjustForCrossingHandles(int i, boolean z) {
            int unpackRangeEndFromLong;
            int selectionEnd = isStartHandle() ? Editor.this.mTextView.getSelectionEnd() : Editor.this.mTextView.getSelectionStart();
            if ((isStartHandle() && i >= selectionEnd) || (!isStartHandle() && i <= selectionEnd)) {
                this.mTouchWordDelta = 0.0f;
                Layout layout = Editor.this.mTextView.getLayout();
                if (layout != null && i != selectionEnd) {
                    float horizontal = getHorizontal(layout, i);
                    float horizontal2 = getHorizontal(layout, selectionEnd, !isStartHandle());
                    float horizontal3 = getHorizontal(layout, this.mPreviousOffset);
                    if ((horizontal3 < horizontal2 && horizontal < horizontal2) || (horizontal3 > horizontal2 && horizontal > horizontal2)) {
                        int currentCursorOffset = getCurrentCursorOffset();
                        if (!isStartHandle()) {
                            currentCursorOffset = Math.max(currentCursorOffset - 1, 0);
                        }
                        long runRange = layout.getRunRange(currentCursorOffset);
                        if (isStartHandle()) {
                            unpackRangeEndFromLong = TextUtils.unpackRangeStartFromLong(runRange);
                        } else {
                            unpackRangeEndFromLong = TextUtils.unpackRangeEndFromLong(runRange);
                        }
                        positionAtCursorOffset(unpackRangeEndFromLong, false, z);
                        return;
                    }
                }
                i = Editor.this.getNextCursorOffset(selectionEnd, !isStartHandle());
            }
            positionAtCursorOffset(i, false, z);
        }

        private boolean positionNearEdgeOfScrollingView(float f, boolean z) {
            Editor.this.mTextView.getLocationOnScreen(this.mTextViewLocation);
            if (z == isStartHandle()) {
                if (f > ((this.mTextViewLocation[0] + Editor.this.mTextView.getWidth()) - Editor.this.mTextView.getPaddingRight()) - this.mTextViewEdgeSlop) {
                    return true;
                }
            } else if (f < this.mTextViewLocation[0] + Editor.this.mTextView.getPaddingLeft() + this.mTextViewEdgeSlop) {
                return true;
            }
            return false;
        }

        @Override // android.widget.Editor.HandleView
        protected boolean isAtRtlRun(Layout layout, int i) {
            if (!isStartHandle()) {
                i = Math.max(i - 1, 0);
            }
            return layout.isRtlCharAt(i);
        }

        @Override // android.widget.Editor.HandleView
        public float getHorizontal(Layout layout, int i) {
            return getHorizontal(layout, i, isStartHandle());
        }

        private float getHorizontal(Layout layout, int i, boolean z) {
            return layout.isRtlCharAt(z ? i : Math.max(i + (-1), 0)) == (layout.getParagraphDirection(layout.getLineForOffset(i)) == -1) ? layout.getPrimaryHorizontal(i) : layout.getSecondaryHorizontal(i);
        }

        @Override // android.widget.Editor.HandleView
        protected int getOffsetAtCoordinate(Layout layout, int i, float f) {
            float convertToLocalHorizontalCoordinate = Editor.this.mTextView.convertToLocalHorizontalCoordinate(f);
            int offsetForHorizontal = layout.getOffsetForHorizontal(i, convertToLocalHorizontalCoordinate, true);
            if (!layout.isLevelBoundary(offsetForHorizontal)) {
                return offsetForHorizontal;
            }
            int offsetForHorizontal2 = layout.getOffsetForHorizontal(i, convertToLocalHorizontalCoordinate, false);
            int currentCursorOffset = getCurrentCursorOffset();
            int abs = Math.abs(offsetForHorizontal - currentCursorOffset);
            int abs2 = Math.abs(offsetForHorizontal2 - currentCursorOffset);
            if (abs < abs2) {
                return offsetForHorizontal;
            }
            if (abs > abs2) {
                return offsetForHorizontal2;
            }
            if (!isStartHandle()) {
                currentCursorOffset = Math.max(currentCursorOffset - 1, 0);
            }
            return layout.isRtlCharAt(currentCursorOffset) == (layout.getParagraphDirection(i) == -1) ? offsetForHorizontal : offsetForHorizontal2;
        }

        @Override // android.widget.Editor.HandleView
        protected int getMagnifierHandleTrigger() {
            return isStartHandle() ? 1 : 2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getCurrentLineAdjustedForSlop(Layout layout, int i, float f) {
        int lineAtCoordinate = this.mTextView.getLineAtCoordinate(f);
        if (layout == null || i > layout.getLineCount() || layout.getLineCount() <= 0 || i < 0 || Math.abs(lineAtCoordinate - i) >= 2) {
            return lineAtCoordinate;
        }
        float viewportToContentVerticalOffset = this.mTextView.viewportToContentVerticalOffset();
        int lineCount = layout.getLineCount();
        float lineHeight = this.mTextView.getLineHeight() * LINE_SLOP_MULTIPLIER_FOR_HANDLEVIEWS;
        float max = Math.max((layout.getLineTop(i) + viewportToContentVerticalOffset) - lineHeight, layout.getLineTop(0) + viewportToContentVerticalOffset + lineHeight);
        int i2 = lineCount - 1;
        float min = Math.min(layout.getLineBottom(i) + viewportToContentVerticalOffset + lineHeight, (layout.getLineBottom(i2) + viewportToContentVerticalOffset) - lineHeight);
        if (f <= max) {
            return Math.max(i - 1, 0);
        }
        return f >= min ? Math.min(i + 1, i2) : i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public class InsertionPointCursorController implements CursorController {
        private InsertionHandleView mHandle;

        private InsertionPointCursorController() {
        }

        @Override // android.widget.Editor.CursorController
        public void show() {
            getHandle().show();
            if (Editor.this.mSelectionModifierCursorController != null) {
                Editor.this.mSelectionModifierCursorController.hide();
            }
        }

        @Override // android.widget.Editor.CursorController
        public void hide() {
            if (this.mHandle != null) {
                this.mHandle.hide();
            }
        }

        @Override // android.view.ViewTreeObserver.OnTouchModeChangeListener
        public void onTouchModeChanged(boolean z) {
            if (z) {
                return;
            }
            hide();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public InsertionHandleView getHandle() {
            if (Editor.this.mSelectHandleCenter == null) {
                Editor.this.mSelectHandleCenter = Editor.this.mTextView.getContext().getDrawable(Editor.this.mTextView.mTextSelectHandleRes);
            }
            if (this.mHandle == null) {
                this.mHandle = new InsertionHandleView(Editor.this.mSelectHandleCenter);
            }
            return this.mHandle;
        }

        @Override // android.widget.Editor.CursorController
        public void onDetached() {
            Editor.this.mTextView.getViewTreeObserver().removeOnTouchModeChangeListener(this);
            if (this.mHandle != null) {
                this.mHandle.onDetached();
            }
        }

        @Override // android.widget.Editor.CursorController
        public boolean isCursorBeingModified() {
            return this.mHandle != null && this.mHandle.isDragging();
        }

        @Override // android.widget.Editor.CursorController
        public boolean isActive() {
            return this.mHandle != null && this.mHandle.isShowing();
        }

        public void invalidateHandle() {
            if (this.mHandle != null) {
                this.mHandle.invalidate();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public class SelectionModifierCursorController implements CursorController {
        private static final int DRAG_ACCELERATOR_MODE_CHARACTER = 1;
        private static final int DRAG_ACCELERATOR_MODE_INACTIVE = 0;
        private static final int DRAG_ACCELERATOR_MODE_PARAGRAPH = 3;
        private static final int DRAG_ACCELERATOR_MODE_WORD = 2;
        private float mDownPositionX;
        private float mDownPositionY;
        private SelectionHandleView mEndHandle;
        private boolean mGestureStayedInTapRegion;
        private boolean mHaventMovedEnoughToStartDrag;
        private int mMaxTouchOffset;
        private int mMinTouchOffset;
        private SelectionHandleView mStartHandle;
        private int mStartOffset = -1;
        private int mLineSelectionIsOn = -1;
        private boolean mSwitchedLines = false;
        private int mDragAcceleratorMode = 0;

        SelectionModifierCursorController() {
            resetTouchOffsets();
        }

        @Override // android.widget.Editor.CursorController
        public void show() {
            if (Editor.this.mTextView.isInBatchEditMode()) {
                return;
            }
            initDrawables();
            initHandles();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void initDrawables() {
            if (Editor.this.mSelectHandleLeft == null) {
                Editor.this.mSelectHandleLeft = Editor.this.mTextView.getContext().getDrawable(Editor.this.mTextView.mTextSelectHandleLeftRes);
            }
            if (Editor.this.mSelectHandleRight == null) {
                Editor.this.mSelectHandleRight = Editor.this.mTextView.getContext().getDrawable(Editor.this.mTextView.mTextSelectHandleRightRes);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void initHandles() {
            if (this.mStartHandle == null) {
                this.mStartHandle = new SelectionHandleView(Editor.this.mSelectHandleLeft, Editor.this.mSelectHandleRight, R.id.pathType, 0);
            }
            if (this.mEndHandle == null) {
                this.mEndHandle = new SelectionHandleView(Editor.this.mSelectHandleRight, Editor.this.mSelectHandleLeft, R.id.parentPanel, 1);
            }
            this.mStartHandle.show();
            this.mEndHandle.show();
            Editor.this.hideInsertionPointCursorController();
        }

        @Override // android.widget.Editor.CursorController
        public void hide() {
            if (this.mStartHandle != null) {
                this.mStartHandle.hide();
            }
            if (this.mEndHandle != null) {
                this.mEndHandle.hide();
            }
        }

        public void enterDrag(int i) {
            show();
            this.mDragAcceleratorMode = i;
            this.mStartOffset = Editor.this.mTextView.getOffsetForPosition(Editor.this.mLastDownPositionX, Editor.this.mLastDownPositionY);
            this.mLineSelectionIsOn = Editor.this.mTextView.getLineAtCoordinate(Editor.this.mLastDownPositionY);
            hide();
            Editor.this.mTextView.getParent().requestDisallowInterceptTouchEvent(true);
            Editor.this.mTextView.cancelLongPress();
        }

        public void onTouchEvent(MotionEvent motionEvent) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            boolean isFromSource = motionEvent.isFromSource(InputDevice.SOURCE_MOUSE);
            switch (motionEvent.getActionMasked()) {
                case 0:
                    if (!Editor.this.extractedTextModeWillBeStarted()) {
                        int offsetForPosition = Editor.this.mTextView.getOffsetForPosition(x, y);
                        this.mMaxTouchOffset = offsetForPosition;
                        this.mMinTouchOffset = offsetForPosition;
                        if (this.mGestureStayedInTapRegion && (Editor.this.mTapState == 2 || Editor.this.mTapState == 3)) {
                            float f = x - this.mDownPositionX;
                            float f2 = y - this.mDownPositionY;
                            float f3 = (f * f) + (f2 * f2);
                            int scaledDoubleTapSlop = ViewConfiguration.get(Editor.this.mTextView.getContext()).getScaledDoubleTapSlop();
                            if ((f3 < ((float) (scaledDoubleTapSlop * scaledDoubleTapSlop))) && (isFromSource || Editor.this.isPositionOnText(x, y))) {
                                if (Editor.this.mTapState == 2) {
                                    Editor.this.selectCurrentWordAndStartDrag();
                                } else if (Editor.this.mTapState == 3) {
                                    selectCurrentParagraphAndStartDrag();
                                }
                                Editor.this.mDiscardNextActionUp = true;
                            }
                        }
                        this.mDownPositionX = x;
                        this.mDownPositionY = y;
                        this.mGestureStayedInTapRegion = true;
                        this.mHaventMovedEnoughToStartDrag = true;
                        return;
                    }
                    hide();
                    return;
                case 1:
                    if (isDragAcceleratorActive()) {
                        updateSelection(motionEvent);
                        Editor.this.mTextView.getParent().requestDisallowInterceptTouchEvent(false);
                        resetDragAcceleratorState();
                        if (Editor.this.mTextView.hasSelection()) {
                            Editor.this.startSelectionActionModeAsync(this.mHaventMovedEnoughToStartDrag);
                            return;
                        }
                        return;
                    }
                    return;
                case 2:
                    ViewConfiguration viewConfiguration = ViewConfiguration.get(Editor.this.mTextView.getContext());
                    int scaledTouchSlop = viewConfiguration.getScaledTouchSlop();
                    if (this.mGestureStayedInTapRegion || this.mHaventMovedEnoughToStartDrag) {
                        float f4 = x - this.mDownPositionX;
                        float f5 = y - this.mDownPositionY;
                        float f6 = (f4 * f4) + (f5 * f5);
                        if (this.mGestureStayedInTapRegion) {
                            int scaledDoubleTapTouchSlop = viewConfiguration.getScaledDoubleTapTouchSlop();
                            this.mGestureStayedInTapRegion = f6 <= ((float) (scaledDoubleTapTouchSlop * scaledDoubleTapTouchSlop));
                        }
                        if (this.mHaventMovedEnoughToStartDrag) {
                            this.mHaventMovedEnoughToStartDrag = f6 <= ((float) (scaledTouchSlop * scaledTouchSlop));
                        }
                    }
                    if (isFromSource && !isDragAcceleratorActive()) {
                        int offsetForPosition2 = Editor.this.mTextView.getOffsetForPosition(x, y);
                        if (Editor.this.mTextView.hasSelection() && ((!this.mHaventMovedEnoughToStartDrag || this.mStartOffset != offsetForPosition2) && offsetForPosition2 >= Editor.this.mTextView.getSelectionStart() && offsetForPosition2 <= Editor.this.mTextView.getSelectionEnd())) {
                            Editor.this.startDragAndDrop();
                            return;
                        } else if (this.mStartOffset != offsetForPosition2) {
                            Editor.this.stopTextActionMode();
                            enterDrag(1);
                            Editor.this.mDiscardNextActionUp = true;
                            this.mHaventMovedEnoughToStartDrag = false;
                        }
                    }
                    if (this.mStartHandle == null || !this.mStartHandle.isShowing()) {
                        updateSelection(motionEvent);
                        return;
                    }
                    return;
                case 3:
                case 4:
                default:
                    return;
                case 5:
                case 6:
                    if (Editor.this.mTextView.getContext().getPackageManager().hasSystemFeature("android.hardware.touchscreen.multitouch.distinct")) {
                        updateMinAndMaxOffsets(motionEvent);
                        return;
                    }
                    return;
            }
        }

        private void updateSelection(MotionEvent motionEvent) {
            if (Editor.this.mTextView.getLayout() != null) {
                switch (this.mDragAcceleratorMode) {
                    case 1:
                        updateCharacterBasedSelection(motionEvent);
                        return;
                    case 2:
                        updateWordBasedSelection(motionEvent);
                        return;
                    case 3:
                        updateParagraphBasedSelection(motionEvent);
                        return;
                    default:
                        return;
                }
            }
        }

        private boolean selectCurrentParagraphAndStartDrag() {
            if (Editor.this.mInsertionActionModeRunnable != null) {
                Editor.this.mTextView.removeCallbacks(Editor.this.mInsertionActionModeRunnable);
            }
            Editor.this.stopTextActionMode();
            if (!Editor.this.selectCurrentParagraph()) {
                return false;
            }
            enterDrag(3);
            return true;
        }

        private void updateCharacterBasedSelection(MotionEvent motionEvent) {
            updateSelectionInternal(this.mStartOffset, Editor.this.mTextView.getOffsetForPosition(motionEvent.getX(), motionEvent.getY()), motionEvent.isFromSource(InputDevice.SOURCE_TOUCHSCREEN));
        }

        private void updateWordBasedSelection(MotionEvent motionEvent) {
            int currentLineAdjustedForSlop;
            int wordStart;
            int wordEnd;
            if (this.mHaventMovedEnoughToStartDrag) {
                return;
            }
            boolean isFromSource = motionEvent.isFromSource(InputDevice.SOURCE_MOUSE);
            ViewConfiguration viewConfiguration = ViewConfiguration.get(Editor.this.mTextView.getContext());
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            if (isFromSource) {
                currentLineAdjustedForSlop = Editor.this.mTextView.getLineAtCoordinate(y);
            } else {
                if (this.mSwitchedLines) {
                    y -= this.mStartHandle != null ? this.mStartHandle.getIdealVerticalOffset() : viewConfiguration.getScaledTouchSlop();
                }
                currentLineAdjustedForSlop = Editor.this.getCurrentLineAdjustedForSlop(Editor.this.mTextView.getLayout(), this.mLineSelectionIsOn, y);
                if (!this.mSwitchedLines && currentLineAdjustedForSlop != this.mLineSelectionIsOn) {
                    this.mSwitchedLines = true;
                    return;
                }
            }
            int offsetAtCoordinate = Editor.this.mTextView.getOffsetAtCoordinate(currentLineAdjustedForSlop, x);
            if (this.mStartOffset < offsetAtCoordinate) {
                wordStart = Editor.this.getWordEnd(offsetAtCoordinate);
                wordEnd = Editor.this.getWordStart(this.mStartOffset);
            } else {
                wordStart = Editor.this.getWordStart(offsetAtCoordinate);
                wordEnd = Editor.this.getWordEnd(this.mStartOffset);
                if (wordEnd == wordStart) {
                    wordStart = Editor.this.getNextCursorOffset(wordStart, false);
                }
            }
            this.mLineSelectionIsOn = currentLineAdjustedForSlop;
            updateSelectionInternal(wordEnd, wordStart, motionEvent.isFromSource(InputDevice.SOURCE_TOUCHSCREEN));
        }

        private void updateParagraphBasedSelection(MotionEvent motionEvent) {
            int offsetForPosition = Editor.this.mTextView.getOffsetForPosition(motionEvent.getX(), motionEvent.getY());
            long paragraphsRange = Editor.this.getParagraphsRange(Math.min(offsetForPosition, this.mStartOffset), Math.max(offsetForPosition, this.mStartOffset));
            updateSelectionInternal(TextUtils.unpackRangeStartFromLong(paragraphsRange), TextUtils.unpackRangeEndFromLong(paragraphsRange), motionEvent.isFromSource(InputDevice.SOURCE_TOUCHSCREEN));
        }

        private void updateSelectionInternal(int i, int i2, boolean z) {
            boolean z2 = z && Editor.this.mHapticTextHandleEnabled && !(Editor.this.mTextView.getSelectionStart() == i && Editor.this.mTextView.getSelectionEnd() == i2);
            Selection.setSelection((Spannable) Editor.this.mTextView.getText(), i, i2);
            if (z2) {
                Editor.this.mTextView.performHapticFeedback(9);
            }
        }

        private void updateMinAndMaxOffsets(MotionEvent motionEvent) {
            int pointerCount = motionEvent.getPointerCount();
            for (int i = 0; i < pointerCount; i++) {
                int offsetForPosition = Editor.this.mTextView.getOffsetForPosition(motionEvent.getX(i), motionEvent.getY(i));
                if (offsetForPosition < this.mMinTouchOffset) {
                    this.mMinTouchOffset = offsetForPosition;
                }
                if (offsetForPosition > this.mMaxTouchOffset) {
                    this.mMaxTouchOffset = offsetForPosition;
                }
            }
        }

        public int getMinTouchOffset() {
            return this.mMinTouchOffset;
        }

        public int getMaxTouchOffset() {
            return this.mMaxTouchOffset;
        }

        public void resetTouchOffsets() {
            this.mMaxTouchOffset = -1;
            this.mMinTouchOffset = -1;
            resetDragAcceleratorState();
        }

        private void resetDragAcceleratorState() {
            this.mStartOffset = -1;
            this.mDragAcceleratorMode = 0;
            this.mSwitchedLines = false;
            int selectionStart = Editor.this.mTextView.getSelectionStart();
            int selectionEnd = Editor.this.mTextView.getSelectionEnd();
            if (selectionStart < 0 || selectionEnd < 0) {
                Selection.removeSelection((Spannable) Editor.this.mTextView.getText());
            } else if (selectionStart > selectionEnd) {
                Selection.setSelection((Spannable) Editor.this.mTextView.getText(), selectionEnd, selectionStart);
            }
        }

        public boolean isSelectionStartDragged() {
            return this.mStartHandle != null && this.mStartHandle.isDragging();
        }

        @Override // android.widget.Editor.CursorController
        public boolean isCursorBeingModified() {
            return isDragAcceleratorActive() || isSelectionStartDragged() || (this.mEndHandle != null && this.mEndHandle.isDragging());
        }

        public boolean isDragAcceleratorActive() {
            return this.mDragAcceleratorMode != 0;
        }

        @Override // android.view.ViewTreeObserver.OnTouchModeChangeListener
        public void onTouchModeChanged(boolean z) {
            if (z) {
                return;
            }
            hide();
        }

        @Override // android.widget.Editor.CursorController
        public void onDetached() {
            Editor.this.mTextView.getViewTreeObserver().removeOnTouchModeChangeListener(this);
            if (this.mStartHandle != null) {
                this.mStartHandle.onDetached();
            }
            if (this.mEndHandle != null) {
                this.mEndHandle.onDetached();
            }
        }

        @Override // android.widget.Editor.CursorController
        public boolean isActive() {
            return this.mStartHandle != null && this.mStartHandle.isShowing();
        }

        public void invalidateHandles() {
            if (this.mStartHandle != null) {
                this.mStartHandle.invalidate();
            }
            if (this.mEndHandle != null) {
                this.mEndHandle.invalidate();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public class CorrectionHighlighter {
        private static final int FADE_OUT_DURATION = 400;
        private int mEnd;
        private long mFadingStartTime;
        private int mStart;
        private RectF mTempRectF;
        private final Path mPath = new Path();
        private final Paint mPaint = new Paint(1);

        public CorrectionHighlighter() {
            this.mPaint.setCompatibilityScaling(Editor.this.mTextView.getResources().getCompatibilityInfo().applicationScale);
            this.mPaint.setStyle(Paint.Style.FILL);
        }

        public void highlight(CorrectionInfo correctionInfo) {
            this.mStart = correctionInfo.getOffset();
            this.mEnd = this.mStart + correctionInfo.getNewText().length();
            this.mFadingStartTime = SystemClock.uptimeMillis();
            if (this.mStart < 0 || this.mEnd < 0) {
                stopAnimation();
            }
        }

        public void draw(Canvas canvas, int i) {
            if (updatePath() && updatePaint()) {
                if (i != 0) {
                    canvas.translate(0.0f, i);
                }
                canvas.drawPath(this.mPath, this.mPaint);
                if (i != 0) {
                    canvas.translate(0.0f, -i);
                }
                invalidate(true);
                return;
            }
            stopAnimation();
            invalidate(false);
        }

        private boolean updatePaint() {
            long uptimeMillis = SystemClock.uptimeMillis() - this.mFadingStartTime;
            if (uptimeMillis > 400) {
                return false;
            }
            this.mPaint.setColor((Editor.this.mTextView.mHighlightColor & 16777215) + (((int) (Color.alpha(Editor.this.mTextView.mHighlightColor) * (1.0f - (((float) uptimeMillis) / 400.0f)))) << 24));
            return true;
        }

        private boolean updatePath() {
            Layout layout = Editor.this.mTextView.getLayout();
            if (layout == null) {
                return false;
            }
            int length = Editor.this.mTextView.getText().length();
            int min = Math.min(length, this.mStart);
            int min2 = Math.min(length, this.mEnd);
            this.mPath.reset();
            layout.getSelectionPath(min, min2, this.mPath);
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void invalidate(boolean z) {
            if (Editor.this.mTextView.getLayout() == null) {
                return;
            }
            if (this.mTempRectF == null) {
                this.mTempRectF = new RectF();
            }
            this.mPath.computeBounds(this.mTempRectF, false);
            int compoundPaddingLeft = Editor.this.mTextView.getCompoundPaddingLeft();
            int extendedPaddingTop = Editor.this.mTextView.getExtendedPaddingTop() + Editor.this.mTextView.getVerticalOffset(true);
            if (z) {
                Editor.this.mTextView.postInvalidateOnAnimation(((int) this.mTempRectF.left) + compoundPaddingLeft, ((int) this.mTempRectF.top) + extendedPaddingTop, compoundPaddingLeft + ((int) this.mTempRectF.right), extendedPaddingTop + ((int) this.mTempRectF.bottom));
            } else {
                Editor.this.mTextView.postInvalidate((int) this.mTempRectF.left, (int) this.mTempRectF.top, (int) this.mTempRectF.right, (int) this.mTempRectF.bottom);
            }
        }

        private void stopAnimation() {
            Editor.this.mCorrectionHighlighter = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class ErrorPopup extends PopupWindow {
        private boolean mAbove;
        private int mPopupInlineErrorAboveBackgroundId;
        private int mPopupInlineErrorBackgroundId;
        private final TextView mView;

        ErrorPopup(TextView textView, int i, int i2) {
            super(textView, i, i2);
            this.mAbove = false;
            this.mPopupInlineErrorBackgroundId = 0;
            this.mPopupInlineErrorAboveBackgroundId = 0;
            this.mView = textView;
            this.mPopupInlineErrorBackgroundId = getResourceId(this.mPopupInlineErrorBackgroundId, 293);
            this.mView.setBackgroundResource(this.mPopupInlineErrorBackgroundId);
        }

        void fixDirection(boolean z) {
            this.mAbove = z;
            if (z) {
                this.mPopupInlineErrorAboveBackgroundId = getResourceId(this.mPopupInlineErrorAboveBackgroundId, 292);
            } else {
                this.mPopupInlineErrorBackgroundId = getResourceId(this.mPopupInlineErrorBackgroundId, 293);
            }
            this.mView.setBackgroundResource(z ? this.mPopupInlineErrorAboveBackgroundId : this.mPopupInlineErrorBackgroundId);
        }

        private int getResourceId(int i, int i2) {
            if (i != 0) {
                return i;
            }
            TypedArray obtainStyledAttributes = this.mView.getContext().obtainStyledAttributes(R.styleable.Theme);
            int resourceId = obtainStyledAttributes.getResourceId(i2, 0);
            obtainStyledAttributes.recycle();
            return resourceId;
        }

        @Override // android.widget.PopupWindow
        public void update(int i, int i2, int i3, int i4, boolean z) {
            super.update(i, i2, i3, i4, z);
            boolean isAboveAnchor = isAboveAnchor();
            if (isAboveAnchor != this.mAbove) {
                fixDirection(isAboveAnchor);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class InputContentType {
        boolean enterDown;
        Bundle extras;
        int imeActionId;
        CharSequence imeActionLabel;
        LocaleList imeHintLocales;
        int imeOptions = 0;
        TextView.OnEditorActionListener onEditorActionListener;
        String privateImeOptions;

        InputContentType() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class InputMethodState {
        int mBatchEditNesting;
        int mChangedDelta;
        int mChangedEnd;
        int mChangedStart;
        boolean mContentChanged;
        boolean mCursorChanged;
        final ExtractedText mExtractedText = new ExtractedText();
        ExtractedTextRequest mExtractedTextRequest;
        boolean mSelectionModeChanged;

        InputMethodState() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isValidRange(CharSequence charSequence, int i, int i2) {
        return i >= 0 && i <= i2 && i2 <= charSequence.length();
    }

    @VisibleForTesting
    public SuggestionsPopupWindow getSuggestionsPopupWindowForTesting() {
        return this.mSuggestionsPopupWindow;
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class UndoInputFilter implements InputFilter {
        private static final int MERGE_EDIT_MODE_FORCE_MERGE = 0;
        private static final int MERGE_EDIT_MODE_NEVER_MERGE = 1;
        private static final int MERGE_EDIT_MODE_NORMAL = 2;
        private final Editor mEditor;
        private boolean mExpanding;
        private boolean mHasComposition;
        private boolean mIsUserEdit;
        private boolean mPreviousOperationWasInSameBatchEdit;

        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: /home/user/work/dex/classes2.dex */
        private @interface MergeMode {
        }

        public UndoInputFilter(Editor editor) {
            this.mEditor = editor;
        }

        public void saveInstanceState(Parcel parcel) {
            parcel.writeInt(this.mIsUserEdit ? 1 : 0);
            parcel.writeInt(this.mHasComposition ? 1 : 0);
            parcel.writeInt(this.mExpanding ? 1 : 0);
            parcel.writeInt(this.mPreviousOperationWasInSameBatchEdit ? 1 : 0);
        }

        public void restoreInstanceState(Parcel parcel) {
            this.mIsUserEdit = parcel.readInt() != 0;
            this.mHasComposition = parcel.readInt() != 0;
            this.mExpanding = parcel.readInt() != 0;
            this.mPreviousOperationWasInSameBatchEdit = parcel.readInt() != 0;
        }

        public void beginBatchEdit() {
            this.mIsUserEdit = true;
        }

        public void endBatchEdit() {
            this.mIsUserEdit = false;
            this.mPreviousOperationWasInSameBatchEdit = false;
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x0026, code lost:
        
            if (r12.mExpanding != r2) goto L16;
         */
        @Override // android.text.InputFilter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
            if (!canUndoEdit(charSequence, i, i2, spanned, i3, i4)) {
                return null;
            }
            boolean z = this.mHasComposition;
            this.mHasComposition = isComposition(charSequence);
            boolean z2 = this.mExpanding;
            int i5 = i2 - i;
            int i6 = i4 - i3;
            boolean z3 = true;
            if (i5 != i6) {
                this.mExpanding = i5 > i6;
                if (z) {
                }
            }
            z3 = false;
            handleEdit(charSequence, i, i2, spanned, i3, i4, z3);
            return null;
        }

        void freezeLastEdit() {
            this.mEditor.mUndoManager.beginUpdate("Edit text");
            EditOperation lastEdit = getLastEdit();
            if (lastEdit != null) {
                lastEdit.mFrozen = true;
            }
            this.mEditor.mUndoManager.endUpdate();
        }

        private void handleEdit(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4, boolean z) {
            int i5 = (isInTextWatcher() || this.mPreviousOperationWasInSameBatchEdit) ? 0 : z ? 1 : 2;
            EditOperation editOperation = new EditOperation(this.mEditor, TextUtils.substring(spanned, i3, i4), i3, TextUtils.substring(charSequence, i, i2), this.mHasComposition);
            if (this.mHasComposition && TextUtils.equals(editOperation.mNewText, editOperation.mOldText)) {
                return;
            }
            recordEdit(editOperation, i5);
        }

        private EditOperation getLastEdit() {
            return (EditOperation) this.mEditor.mUndoManager.getLastOperation(EditOperation.class, this.mEditor.mUndoOwner, 1);
        }

        private void recordEdit(EditOperation editOperation, int i) {
            UndoManager undoManager = this.mEditor.mUndoManager;
            undoManager.beginUpdate("Edit text");
            EditOperation lastEdit = getLastEdit();
            if (lastEdit == null) {
                undoManager.addOperation(editOperation, 0);
            } else if (i == 0) {
                lastEdit.forceMergeWith(editOperation);
            } else if (!this.mIsUserEdit) {
                undoManager.commitState(this.mEditor.mUndoOwner);
                undoManager.addOperation(editOperation, 0);
            } else if (i != 2 || !lastEdit.mergeWith(editOperation)) {
                undoManager.commitState(this.mEditor.mUndoOwner);
                undoManager.addOperation(editOperation, 0);
            }
            this.mPreviousOperationWasInSameBatchEdit = this.mIsUserEdit;
            undoManager.endUpdate();
        }

        private boolean canUndoEdit(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
            if (this.mEditor.mAllowUndo && !this.mEditor.mUndoManager.isInUndo() && Editor.isValidRange(charSequence, i, i2) && Editor.isValidRange(spanned, i3, i4)) {
                return (i == i2 && i3 == i4) ? false : true;
            }
            return false;
        }

        private static boolean isComposition(CharSequence charSequence) {
            if (!(charSequence instanceof Spannable)) {
                return false;
            }
            Spannable spannable = (Spannable) charSequence;
            return EditableInputConnection.getComposingSpanStart(spannable) < EditableInputConnection.getComposingSpanEnd(spannable);
        }

        private boolean isInTextWatcher() {
            CharSequence text = this.mEditor.mTextView.getText();
            return (text instanceof SpannableStringBuilder) && ((SpannableStringBuilder) text).getTextWatcherDepth() > 0;
        }
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class EditOperation extends UndoOperation<Editor> {
        public static final Parcelable.ClassLoaderCreator<EditOperation> CREATOR = new Parcelable.ClassLoaderCreator<EditOperation>() { // from class: android.widget.Editor.EditOperation.1
            @Override // android.os.Parcelable.Creator
            public EditOperation createFromParcel(Parcel parcel) {
                return new EditOperation(parcel, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public EditOperation createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new EditOperation(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public EditOperation[] newArray(int i) {
                return new EditOperation[i];
            }
        };
        private static final int TYPE_DELETE = 1;
        private static final int TYPE_INSERT = 0;
        private static final int TYPE_REPLACE = 2;
        private boolean mFrozen;
        private boolean mIsComposition;
        private int mNewCursorPos;
        private String mNewText;
        private int mOldCursorPos;
        private String mOldText;
        private int mStart;
        private int mType;

        public void commit() {
        }

        public EditOperation(Editor editor, String str, int i, String str2, boolean z) {
            super(editor.mUndoOwner);
            this.mOldText = str;
            this.mNewText = str2;
            if (this.mNewText.length() > 0 && this.mOldText.length() == 0) {
                this.mType = 0;
            } else if (this.mNewText.length() == 0 && this.mOldText.length() > 0) {
                this.mType = 1;
            } else {
                this.mType = 2;
            }
            this.mStart = i;
            this.mOldCursorPos = editor.mTextView.getSelectionStart();
            this.mNewCursorPos = i + this.mNewText.length();
            this.mIsComposition = z;
        }

        public EditOperation(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.mType = parcel.readInt();
            this.mOldText = parcel.readString();
            this.mNewText = parcel.readString();
            this.mStart = parcel.readInt();
            this.mOldCursorPos = parcel.readInt();
            this.mNewCursorPos = parcel.readInt();
            this.mFrozen = parcel.readInt() == 1;
            this.mIsComposition = parcel.readInt() == 1;
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.mType);
            parcel.writeString(this.mOldText);
            parcel.writeString(this.mNewText);
            parcel.writeInt(this.mStart);
            parcel.writeInt(this.mOldCursorPos);
            parcel.writeInt(this.mNewCursorPos);
            parcel.writeInt(this.mFrozen ? 1 : 0);
            parcel.writeInt(this.mIsComposition ? 1 : 0);
        }

        private int getNewTextEnd() {
            return this.mStart + this.mNewText.length();
        }

        private int getOldTextEnd() {
            return this.mStart + this.mOldText.length();
        }

        public void undo() {
            modifyText((Editable) ((Editor) getOwnerData()).mTextView.getText(), this.mStart, getNewTextEnd(), this.mOldText, this.mStart, this.mOldCursorPos);
        }

        public void redo() {
            modifyText((Editable) ((Editor) getOwnerData()).mTextView.getText(), this.mStart, getOldTextEnd(), this.mNewText, this.mStart, this.mNewCursorPos);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean mergeWith(EditOperation editOperation) {
            if (this.mFrozen) {
                return false;
            }
            switch (this.mType) {
                case 0:
                    return mergeInsertWith(editOperation);
                case 1:
                    return mergeDeleteWith(editOperation);
                case 2:
                    return mergeReplaceWith(editOperation);
                default:
                    return false;
            }
        }

        private boolean mergeInsertWith(EditOperation editOperation) {
            if (editOperation.mType == 0) {
                if (getNewTextEnd() != editOperation.mStart) {
                    return false;
                }
                this.mNewText += editOperation.mNewText;
                this.mNewCursorPos = editOperation.mNewCursorPos;
                this.mFrozen = editOperation.mFrozen;
                this.mIsComposition = editOperation.mIsComposition;
                return true;
            }
            if (!this.mIsComposition || editOperation.mType != 2 || this.mStart > editOperation.mStart || getNewTextEnd() < editOperation.getOldTextEnd()) {
                return false;
            }
            this.mNewText = this.mNewText.substring(0, editOperation.mStart - this.mStart) + editOperation.mNewText + this.mNewText.substring(editOperation.getOldTextEnd() - this.mStart, this.mNewText.length());
            this.mNewCursorPos = editOperation.mNewCursorPos;
            this.mIsComposition = editOperation.mIsComposition;
            return true;
        }

        private boolean mergeDeleteWith(EditOperation editOperation) {
            if (editOperation.mType != 1 || this.mStart != editOperation.getOldTextEnd()) {
                return false;
            }
            this.mStart = editOperation.mStart;
            this.mOldText = editOperation.mOldText + this.mOldText;
            this.mNewCursorPos = editOperation.mNewCursorPos;
            this.mIsComposition = editOperation.mIsComposition;
            return true;
        }

        private boolean mergeReplaceWith(EditOperation editOperation) {
            if (editOperation.mType == 0 && getNewTextEnd() == editOperation.mStart) {
                this.mNewText += editOperation.mNewText;
                this.mNewCursorPos = editOperation.mNewCursorPos;
                return true;
            }
            if (!this.mIsComposition) {
                return false;
            }
            if (editOperation.mType == 1 && this.mStart <= editOperation.mStart && getNewTextEnd() >= editOperation.getOldTextEnd()) {
                this.mNewText = this.mNewText.substring(0, editOperation.mStart - this.mStart) + this.mNewText.substring(editOperation.getOldTextEnd() - this.mStart, this.mNewText.length());
                if (this.mNewText.isEmpty()) {
                    this.mType = 1;
                }
                this.mNewCursorPos = editOperation.mNewCursorPos;
                this.mIsComposition = editOperation.mIsComposition;
                return true;
            }
            if (editOperation.mType != 2 || this.mStart != editOperation.mStart || !TextUtils.equals(this.mNewText, editOperation.mOldText)) {
                return false;
            }
            this.mNewText = editOperation.mNewText;
            this.mNewCursorPos = editOperation.mNewCursorPos;
            this.mIsComposition = editOperation.mIsComposition;
            return true;
        }

        public void forceMergeWith(EditOperation editOperation) {
            if (mergeWith(editOperation)) {
                return;
            }
            Editable editable = (Editable) ((Editor) getOwnerData()).mTextView.getText();
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(editable.toString());
            modifyText(spannableStringBuilder, this.mStart, getNewTextEnd(), this.mOldText, this.mStart, this.mOldCursorPos);
            SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(editable.toString());
            modifyText(spannableStringBuilder2, editOperation.mStart, editOperation.getOldTextEnd(), editOperation.mNewText, editOperation.mStart, editOperation.mNewCursorPos);
            this.mType = 2;
            this.mNewText = spannableStringBuilder2.toString();
            this.mOldText = spannableStringBuilder.toString();
            this.mStart = 0;
            this.mNewCursorPos = editOperation.mNewCursorPos;
            this.mIsComposition = editOperation.mIsComposition;
        }

        private static void modifyText(Editable editable, int i, int i2, CharSequence charSequence, int i3, int i4) {
            if (Editor.isValidRange(editable, i, i2) && i3 <= editable.length() - (i2 - i)) {
                if (i != i2) {
                    editable.delete(i, i2);
                }
                if (charSequence.length() != 0) {
                    editable.insert(i3, charSequence);
                }
            }
            if (i4 < 0 || i4 > editable.length()) {
                return;
            }
            Selection.setSelection(editable, i4);
        }

        private String getTypeString() {
            switch (this.mType) {
                case 0:
                    return "insert";
                case 1:
                    return "delete";
                case 2:
                    return "replace";
                default:
                    return TextClassifier.TYPE_UNKNOWN;
            }
        }

        public String toString() {
            return "[mType=" + getTypeString() + ", mOldText=" + this.mOldText + ", mNewText=" + this.mNewText + ", mStart=" + this.mStart + ", mOldCursorPos=" + this.mOldCursorPos + ", mNewCursorPos=" + this.mNewCursorPos + ", mFrozen=" + this.mFrozen + ", mIsComposition=" + this.mIsComposition + "]";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static final class ProcessTextIntentActionsHandler {
        private final SparseArray<AccessibilityNodeInfo.AccessibilityAction> mAccessibilityActions;
        private final SparseArray<Intent> mAccessibilityIntents;
        private final Context mContext;
        private final Editor mEditor;
        private final PackageManager mPackageManager;
        private final String mPackageName;
        private final List<ResolveInfo> mSupportedActivities;
        private final TextView mTextView;

        private ProcessTextIntentActionsHandler(Editor editor) {
            this.mAccessibilityIntents = new SparseArray<>();
            this.mAccessibilityActions = new SparseArray<>();
            this.mSupportedActivities = new ArrayList();
            this.mEditor = (Editor) Preconditions.checkNotNull(editor);
            this.mTextView = (TextView) Preconditions.checkNotNull(this.mEditor.mTextView);
            this.mContext = (Context) Preconditions.checkNotNull(this.mTextView.getContext());
            this.mPackageManager = (PackageManager) Preconditions.checkNotNull(this.mContext.getPackageManager());
            this.mPackageName = (String) Preconditions.checkNotNull(this.mContext.getPackageName());
        }

        public void onInitializeMenu(Menu menu) {
            loadSupportedActivities();
            int size = this.mSupportedActivities.size();
            for (int i = 0; i < size; i++) {
                ResolveInfo resolveInfo = this.mSupportedActivities.get(i);
                menu.add(0, 0, i + 100, getLabel(resolveInfo)).setIntent(createProcessTextIntentForResolveInfo(resolveInfo)).setShowAsAction(0);
            }
        }

        public boolean performMenuItemAction(MenuItem menuItem) {
            return fireIntent(menuItem.getIntent());
        }

        public void initializeAccessibilityActions() {
            this.mAccessibilityIntents.clear();
            this.mAccessibilityActions.clear();
            loadSupportedActivities();
            int i = 0;
            for (ResolveInfo resolveInfo : this.mSupportedActivities) {
                int i2 = i + 1;
                int i3 = i + 268435712;
                this.mAccessibilityActions.put(i3, new AccessibilityNodeInfo.AccessibilityAction(i3, getLabel(resolveInfo)));
                this.mAccessibilityIntents.put(i3, createProcessTextIntentForResolveInfo(resolveInfo));
                i = i2;
            }
        }

        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            for (int i = 0; i < this.mAccessibilityActions.size(); i++) {
                accessibilityNodeInfo.addAction(this.mAccessibilityActions.valueAt(i));
            }
        }

        public boolean performAccessibilityAction(int i) {
            return fireIntent(this.mAccessibilityIntents.get(i));
        }

        private boolean fireIntent(Intent intent) {
            if (intent == null || !"android.intent.action.PROCESS_TEXT".equals(intent.getAction())) {
                return false;
            }
            intent.putExtra("android.intent.extra.PROCESS_TEXT", (String) TextUtils.trimToParcelableSize(this.mTextView.getSelectedText()));
            this.mEditor.mPreserveSelection = true;
            this.mTextView.startActivityForResult(intent, 100);
            return true;
        }

        private void loadSupportedActivities() {
            this.mSupportedActivities.clear();
            if (this.mContext.canStartActivityForResult()) {
                for (ResolveInfo resolveInfo : this.mTextView.getContext().getPackageManager().queryIntentActivities(createProcessTextIntent(), 0)) {
                    if (isSupportedActivity(resolveInfo)) {
                        this.mSupportedActivities.add(resolveInfo);
                    }
                }
            }
        }

        private boolean isSupportedActivity(ResolveInfo resolveInfo) {
            return this.mPackageName.equals(resolveInfo.activityInfo.packageName) || (resolveInfo.activityInfo.exported && (resolveInfo.activityInfo.permission == null || this.mContext.checkSelfPermission(resolveInfo.activityInfo.permission) == 0));
        }

        private Intent createProcessTextIntentForResolveInfo(ResolveInfo resolveInfo) {
            return createProcessTextIntent().putExtra("android.intent.extra.PROCESS_TEXT_READONLY", !this.mTextView.isTextEditable()).setClassName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name);
        }

        private Intent createProcessTextIntent() {
            return new Intent().setAction("android.intent.action.PROCESS_TEXT").setType("text/plain");
        }

        private CharSequence getLabel(ResolveInfo resolveInfo) {
            return resolveInfo.loadLabel(this.mPackageManager);
        }
    }
}
