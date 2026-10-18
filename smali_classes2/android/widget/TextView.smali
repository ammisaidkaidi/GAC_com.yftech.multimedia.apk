.class public Landroid/widget/TextView;
.super Landroid/view/View;
.source "TextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TextView$ChangeWatcher;,
        Landroid/widget/TextView$Marquee;,
        Landroid/widget/TextView$CharWrapper;,
        Landroid/widget/TextView$SavedState;,
        Landroid/widget/TextView$BufferType;,
        Landroid/widget/TextView$TextAppearanceAttributes;,
        Landroid/widget/TextView$OnEditorActionListener;,
        Landroid/widget/TextView$AutoSizeTextType;,
        Landroid/widget/TextView$Drawables;,
        Landroid/widget/TextView$XMLTypefaceAttr;
    }
.end annotation


# static fields
.field static final ACCESSIBILITY_ACTION_PROCESS_TEXT_START_ID:I = 0x10000100

.field private static final ACCESSIBILITY_ACTION_SHARE:I = 0x10000000

.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field public static final AUTO_SIZE_TEXT_TYPE_NONE:I = 0x0

.field public static final AUTO_SIZE_TEXT_TYPE_UNIFORM:I = 0x1

.field private static final CHANGE_WATCHER_PRIORITY:I = 0x64

.field static final DEBUG_EXTRACT:Z = false

.field private static final DECIMAL:I = 0x4

.field private static final DEFAULT_AUTO_SIZE_GRANULARITY_IN_PX:I = 0x1

.field private static final DEFAULT_AUTO_SIZE_MAX_TEXT_SIZE_IN_SP:I = 0x70

.field private static final DEFAULT_AUTO_SIZE_MIN_TEXT_SIZE_IN_SP:I = 0xc

.field private static final DEFAULT_TYPEFACE:I = -0x1

.field private static final DEVICE_PROVISIONED_NO:I = 0x1

.field private static final DEVICE_PROVISIONED_UNKNOWN:I = 0x0

.field private static final DEVICE_PROVISIONED_YES:I = 0x2

.field private static final ELLIPSIZE_END:I = 0x3

.field private static final ELLIPSIZE_MARQUEE:I = 0x4

.field private static final ELLIPSIZE_MIDDLE:I = 0x2

.field private static final ELLIPSIZE_NONE:I = 0x0

.field private static final ELLIPSIZE_NOT_SET:I = -0x1

.field private static final ELLIPSIZE_START:I = 0x1

.field private static final EMPTY_SPANNED:Landroid/text/Spanned;

.field private static final EMS:I = 0x1

.field private static final FLOATING_TOOLBAR_SELECT_ALL_REFRESH_DELAY:I = 0x1f4

.field static final ID_ASSIST:I = 0x1020041

.field static final ID_AUTOFILL:I = 0x1020043

.field static final ID_COPY:I = 0x1020021

.field static final ID_CUT:I = 0x1020020

.field static final ID_PASTE:I = 0x1020022

.field static final ID_PASTE_AS_PLAIN_TEXT:I = 0x1020031

.field static final ID_REDO:I = 0x1020033

.field static final ID_REPLACE:I = 0x1020034

.field static final ID_SELECT_ALL:I = 0x102001f

.field static final ID_SHARE:I = 0x1020035

.field static final ID_UNDO:I = 0x1020032

.field private static final KEY_DOWN_HANDLED_BY_KEY_LISTENER:I = 0x1

.field private static final KEY_DOWN_HANDLED_BY_MOVEMENT_METHOD:I = 0x2

.field private static final KEY_EVENT_HANDLED:I = -0x1

.field private static final KEY_EVENT_NOT_HANDLED:I = 0x0

.field private static final LINES:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "TextView"

.field private static final MARQUEE_FADE_NORMAL:I = 0x0

.field private static final MARQUEE_FADE_SWITCH_SHOW_ELLIPSIS:I = 0x1

.field private static final MARQUEE_FADE_SWITCH_SHOW_FADE:I = 0x2

.field private static final MONOSPACE:I = 0x3

.field private static final MULTILINE_STATE_SET:[I

.field private static final NO_FILTERS:[Landroid/text/InputFilter;

.field private static final PIXELS:I = 0x2

.field static final PROCESS_TEXT_REQUEST_CODE:I = 0x64

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final SIGNED:I = 0x2

.field private static final TEMP_POSITION:[F

.field private static final TEMP_RECTF:Landroid/graphics/RectF;

.field public static final UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final UNSET_AUTO_SIZE_UNIFORM_CONFIGURATION_VALUE:F = -1.0f

.field static final VERY_WIDE:I = 0x100000

.field private static final sAppearanceValues:Landroid/util/SparseIntArray;

.field static sLastCutCopyOrTextChangedTime:J


# instance fields
.field private mAllowTransformationLengthChange:Z

.field private mAutoLinkMask:I

.field private mAutoSizeMaxTextSizeInPx:F

.field private mAutoSizeMinTextSizeInPx:F

.field private mAutoSizeStepGranularityInPx:F

.field private mAutoSizeTextSizesInPx:[I

.field private mAutoSizeTextType:I

.field private mBoring:Landroid/text/BoringLayout$Metrics;

.field private mBreakStrategy:I

.field private mBufferType:Landroid/widget/TextView$BufferType;

.field private mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

.field private mCharWrapper:Landroid/widget/TextView$CharWrapper;

.field private mCurHintTextColor:I

.field private mCurTextColor:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation
.end field

.field private volatile mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

.field mCursorDrawableRes:I

.field private mDeferScroll:I

.field private mDesiredHeightAtMeasure:I

.field private mDeviceProvisionedState:I

.field mDrawables:Landroid/widget/TextView$Drawables;

.field private mEditableFactory:Landroid/text/Editable$Factory;

.field private mEditor:Landroid/widget/Editor;

.field private mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private mFilters:[Landroid/text/InputFilter;

.field private mFreezesText:Z

.field private mGravity:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation
.end field

.field private mHasPresetAutoSizeValues:Z

.field mHighlightColor:I

.field private final mHighlightPaint:Landroid/graphics/Paint;

.field private mHighlightPath:Landroid/graphics/Path;

.field private mHighlightPathBogus:Z

.field private mHint:Ljava/lang/CharSequence;

.field private mHintBoring:Landroid/text/BoringLayout$Metrics;

.field private mHintLayout:Landroid/text/Layout;

.field private mHintTextColor:Landroid/content/res/ColorStateList;

.field private mHorizontallyScrolling:Z

.field private mHyphenationFrequency:I

.field private mIncludePad:Z

.field private mIsRestrictedAcrossUser:Z

.field private mJustificationMode:I

.field private mLastLayoutDirection:I

.field private mLastScroll:J

.field private mLastValueSentToAutofillManager:Ljava/lang/CharSequence;

.field private mLayout:Landroid/text/Layout;

.field private mLinkTextColor:Landroid/content/res/ColorStateList;

.field private mLinksClickable:Z

.field private mListenerChanged:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/text/TextWatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalesChanged:Z

.field private mMarquee:Landroid/widget/TextView$Marquee;

.field private mMarqueeFadeMode:I

.field private mMarqueeRepeatLimit:I

.field private mMaxMode:I

.field private mMaxWidth:I

.field private mMaxWidthMode:I

.field private mMaximum:I

.field private mMinMode:I

.field private mMinWidth:I

.field private mMinWidthMode:I

.field private mMinimum:I

.field private mMovement:Landroid/text/method/MovementMethod;

.field private mNeedsAutoSizeText:Z

.field private mOldMaxMode:I

.field private mOldMaximum:I

.field private mPreDrawListenerDetached:Z

.field private mPreDrawRegistered:Z

.field private mPrecomputed:Landroid/text/PrecomputedText;

.field private mPreventDefaultMovement:Z

.field private mRestartMarquee:Z

.field private mSavedHintLayout:Landroid/text/BoringLayout;

.field private mSavedLayout:Landroid/text/BoringLayout;

.field private mSavedMarqueeModeLayout:Landroid/text/Layout;

.field private mScroller:Landroid/widget/Scroller;

.field private mShadowColor:I

.field private mShadowDx:F

.field private mShadowDy:F

.field private mShadowRadius:F

.field private mSingleLine:Z

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpannable:Landroid/text/Spannable;

.field private mSpannableFactory:Landroid/text/Spannable$Factory;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTempTextPaint:Landroid/text/TextPaint;

.field private mText:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation
.end field

.field private mTextClassificationSession:Landroid/view/textclassifier/TextClassifier;

.field private mTextClassifier:Landroid/view/textclassifier/TextClassifier;

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextDir:Landroid/text/TextDirectionHeuristic;

.field mTextEditSuggestionContainerLayout:I

.field mTextEditSuggestionHighlightStyle:I

.field mTextEditSuggestionItemLayout:I

.field private mTextId:I

.field private final mTextPaint:Landroid/text/TextPaint;

.field mTextSelectHandleLeftRes:I

.field mTextSelectHandleRes:I

.field mTextSelectHandleRightRes:I

.field private mTextSetFromXmlOrResourceId:Z

.field private mTransformation:Landroid/text/method/TransformationMethod;

.field private mTransformed:Ljava/lang/CharSequence;

.field mUseFallbackLineSpacing:Z

.field private final mUseInternationalizedInput:Z

.field private mUserSetTextScaleX:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x2

    .line 329
    new-array v1, v0, [F

    sput-object v1, Landroid/widget/TextView;->TEMP_POSITION:[F

    .line 375
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    sput-object v1, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    const/4 v1, 0x0

    .line 381
    new-array v2, v1, [Landroid/text/InputFilter;

    sput-object v2, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    .line 382
    new-instance v2, Landroid/text/SpannedString;

    const-string v3, ""

    invoke-direct {v2, v3}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    sput-object v2, Landroid/widget/TextView;->EMPTY_SPANNED:Landroid/text/Spanned;

    const/4 v2, 0x1

    .line 387
    new-array v3, v2, [I

    const v4, 0x101034d

    aput v4, v3, v1

    sput-object v3, Landroid/widget/TextView;->MULTILINE_STATE_SET:[I

    .line 3488
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v3, Landroid/widget/TextView;->sAppearanceValues:Landroid/util/SparseIntArray;

    .line 3490
    sget-object v3, Landroid/widget/TextView;->sAppearanceValues:Landroid/util/SparseIntArray;

    const/4 v4, 0x4

    const/4 v5, 0x6

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 3492
    sget-object v3, Landroid/widget/TextView;->sAppearanceValues:Landroid/util/SparseIntArray;

    const/4 v6, 0x3

    const/4 v7, 0x5

    invoke-virtual {v3, v7, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 3494
    sget-object v3, Landroid/widget/TextView;->sAppearanceValues:Landroid/util/SparseIntArray;

    const/4 v8, 0x7

    invoke-virtual {v3, v8, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 3496
    sget-object v3, Landroid/widget/TextView;->sAppearanceValues:Landroid/util/SparseIntArray;

    const/16 v7, 0x8

    invoke-virtual {v3, v7, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 3498
    sget-object v3, Landroid/widget/TextView;->sAppearanceValues:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 3500
    sget-object v1, Landroid/widget/TextView;->sAppearanceValues:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v6, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3502
    sget-object v1, Landroid/widget/TextView;->sAppearanceValues:Landroid/util/SparseIntArray;

    const/16 v2, 0x4b

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 3504
    sget-object v1, Landroid/widget/TextView;->sAppearanceValues:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v4, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 3506
    sget-object v0, Landroid/widget/TextView;->sAppearanceValues:Landroid/util/SparseIntArray;

    const/16 v1, 0x5e

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3508
    sget-object v0, Landroid/widget/TextView;->sAppearanceValues:Landroid/util/SparseIntArray;

    const/16 v1, 0x48

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3510
    sget-object v0, Landroid/widget/TextView;->sAppearanceValues:Landroid/util/SparseIntArray;

    const/16 v1, 0x24

    invoke-virtual {v0, v1, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 3512
    sget-object v0, Landroid/widget/TextView;->sAppearanceValues:Landroid/util/SparseIntArray;

    const/16 v1, 0x25

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 3514
    sget-object v0, Landroid/widget/TextView;->sAppearanceValues:Landroid/util/SparseIntArray;

    const/16 v1, 0x26

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3516
    sget-object v0, Landroid/widget/TextView;->sAppearanceValues:Landroid/util/SparseIntArray;

    const/16 v1, 0x27

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3518
    sget-object v0, Landroid/widget/TextView;->sAppearanceValues:Landroid/util/SparseIntArray;

    const/16 v1, 0x4c

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3520
    sget-object v0, Landroid/widget/TextView;->sAppearanceValues:Landroid/util/SparseIntArray;

    const/16 v1, 0x5a

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3522
    sget-object v0, Landroid/widget/TextView;->sAppearanceValues:Landroid/util/SparseIntArray;

    const/16 v1, 0x4d

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3524
    sget-object v0, Landroid/widget/TextView;->sAppearanceValues:Landroid/util/SparseIntArray;

    const/16 v1, 0x4e

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 8485
    new-instance v0, Landroid/text/BoringLayout$Metrics;

    invoke-direct {v0}, Landroid/text/BoringLayout$Metrics;-><init>()V

    sput-object v0, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 878
    invoke-direct {p0, p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010084

    .line 882
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 886
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 52

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 892
    invoke-direct/range {p0 .. p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 424
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    .line 425
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    const/4 v6, 0x3

    .line 635
    iput v6, v1, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    const/4 v7, -0x1

    .line 637
    iput v7, v1, Landroid/widget/TextView;->mLastLayoutDirection:I

    const/4 v8, 0x0

    .line 644
    iput v8, v1, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 659
    sget-object v0, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    iput-object v0, v1, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    .line 676
    iput-boolean v8, v1, Landroid/widget/TextView;->mLocalesChanged:Z

    .line 679
    iput-boolean v8, v1, Landroid/widget/TextView;->mListenerChanged:Z

    const v0, 0x800033

    .line 685
    iput v0, v1, Landroid/widget/TextView;->mGravity:I

    const/4 v9, 0x1

    .line 690
    iput-boolean v9, v1, Landroid/widget/TextView;->mLinksClickable:Z

    const/high16 v10, 0x3f800000    # 1.0f

    .line 692
    iput v10, v1, Landroid/widget/TextView;->mSpacingMult:F

    const/4 v0, 0x0

    .line 693
    iput v0, v1, Landroid/widget/TextView;->mSpacingAdd:F

    const v0, 0x7fffffff

    .line 699
    iput v0, v1, Landroid/widget/TextView;->mMaximum:I

    .line 700
    iput v9, v1, Landroid/widget/TextView;->mMaxMode:I

    .line 701
    iput v8, v1, Landroid/widget/TextView;->mMinimum:I

    .line 702
    iput v9, v1, Landroid/widget/TextView;->mMinMode:I

    .line 704
    iget v11, v1, Landroid/widget/TextView;->mMaximum:I

    iput v11, v1, Landroid/widget/TextView;->mOldMaximum:I

    .line 705
    iget v11, v1, Landroid/widget/TextView;->mMaxMode:I

    iput v11, v1, Landroid/widget/TextView;->mOldMaxMode:I

    .line 707
    iput v0, v1, Landroid/widget/TextView;->mMaxWidth:I

    const/4 v11, 0x2

    .line 708
    iput v11, v1, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 709
    iput v8, v1, Landroid/widget/TextView;->mMinWidth:I

    .line 710
    iput v11, v1, Landroid/widget/TextView;->mMinWidthMode:I

    .line 713
    iput v7, v1, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    .line 714
    iput-boolean v9, v1, Landroid/widget/TextView;->mIncludePad:Z

    .line 715
    iput v7, v1, Landroid/widget/TextView;->mDeferScroll:I

    .line 728
    sget-object v0, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    iput-object v0, v1, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    const v0, 0x6633b5e5

    .line 747
    iput v0, v1, Landroid/widget/TextView;->mHighlightColor:I

    .line 750
    iput-boolean v9, v1, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 781
    iput v8, v1, Landroid/widget/TextView;->mDeviceProvisionedState:I

    .line 810
    iput v8, v1, Landroid/widget/TextView;->mAutoSizeTextType:I

    .line 812
    iput-boolean v8, v1, Landroid/widget/TextView;->mNeedsAutoSizeText:Z

    const/high16 v12, -0x40800000    # -1.0f

    .line 814
    iput v12, v1, Landroid/widget/TextView;->mAutoSizeStepGranularityInPx:F

    .line 816
    iput v12, v1, Landroid/widget/TextView;->mAutoSizeMinTextSizeInPx:F

    .line 818
    iput v12, v1, Landroid/widget/TextView;->mAutoSizeMaxTextSizeInPx:F

    .line 821
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, v1, Landroid/widget/TextView;->mAutoSizeTextSizesInPx:[I

    .line 825
    iput-boolean v8, v1, Landroid/widget/TextView;->mHasPresetAutoSizeValues:Z

    .line 831
    iput-boolean v8, v1, Landroid/widget/TextView;->mTextSetFromXmlOrResourceId:Z

    .line 833
    iput v8, v1, Landroid/widget/TextView;->mTextId:I

    .line 895
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getImportantForAutofill()I

    move-result v0

    if-nez v0, :cond_0

    .line 896
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setImportantForAutofill(I)V

    :cond_0
    const-string v0, ""

    .line 899
    invoke-direct {v1, v0}, Landroid/widget/TextView;->setTextInternal(Ljava/lang/CharSequence;)V

    .line 901
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 902
    invoke-virtual {v0}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v13

    .line 904
    new-instance v14, Landroid/text/TextPaint;

    invoke-direct {v14, v9}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v14, v1, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 905
    iget-object v14, v1, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, v14, Landroid/text/TextPaint;->density:F

    .line 906
    iget-object v0, v1, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v14, v13, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v0, v14}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 908
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v1, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    .line 909
    iget-object v0, v1, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    iget v13, v13, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setCompatibilityScaling(F)V

    .line 911
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDefaultMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    const/4 v13, 0x0

    .line 913
    iput-object v13, v1, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    .line 915
    new-instance v14, Landroid/widget/TextView$TextAppearanceAttributes;

    invoke-direct {v14, v13}, Landroid/widget/TextView$TextAppearanceAttributes;-><init>(Landroid/widget/TextView$1;)V

    const/high16 v0, -0x1000000

    .line 916
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, v14, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColor:Landroid/content/res/ColorStateList;

    const/16 v0, 0xf

    .line 917
    iput v0, v14, Landroid/widget/TextView$TextAppearanceAttributes;->mTextSize:I

    .line 918
    iput v8, v1, Landroid/widget/TextView;->mBreakStrategy:I

    .line 919
    iput v8, v1, Landroid/widget/TextView;->mHyphenationFrequency:I

    .line 920
    iput v8, v1, Landroid/widget/TextView;->mJustificationMode:I

    .line 922
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 930
    sget-object v15, Lcom/android/internal/R$styleable;->TextViewAppearance:[I

    invoke-virtual {v0, v3, v15, v4, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v15

    .line 933
    invoke-virtual {v15, v8, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 935
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    if-eq v11, v7, :cond_1

    .line 937
    sget-object v15, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v0, v11, v15}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v11

    goto :goto_0

    :cond_1
    move-object v11, v13

    :goto_0
    if-eqz v11, :cond_2

    .line 941
    invoke-direct {v1, v2, v11, v14, v8}, Landroid/widget/TextView;->readTextAppearance(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/widget/TextView$TextAppearanceAttributes;Z)V

    .line 942
    iput-boolean v8, v14, Landroid/widget/TextView$TextAppearanceAttributes;->mFontFamilyExplicit:Z

    .line 943
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 946
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDefaultEditable()Z

    move-result v11

    const-string v15, ""

    .line 970
    sget-object v13, Lcom/android/internal/R$styleable;->TextView:[I

    invoke-virtual {v0, v3, v13, v4, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 976
    invoke-direct {v1, v2, v13, v14, v9}, Landroid/widget/TextView;->readTextAppearance(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/widget/TextView$TextAppearanceAttributes;Z)V

    .line 978
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v6

    move/from16 v16, v7

    move/from16 v22, v16

    move/from16 v36, v22

    move/from16 v41, v36

    move/from16 v42, v41

    move/from16 v44, v42

    move v10, v8

    move/from16 v17, v10

    move/from16 v18, v17

    move/from16 v19, v18

    move/from16 v20, v19

    move/from16 v21, v20

    move/from16 v23, v21

    move/from16 v25, v23

    move/from16 v38, v25

    move/from16 v24, v11

    move/from16 v40, v12

    move/from16 v43, v40

    move/from16 v45, v43

    move-object/from16 v37, v15

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v39, 0x0

    move/from16 v11, v38

    move v15, v11

    :goto_1
    if-ge v11, v6, :cond_8

    .line 983
    invoke-virtual {v13, v11}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    if-eqz v0, :cond_7

    const/16 v9, 0x43

    if-eq v0, v9, :cond_6

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    packed-switch v0, :pswitch_data_6

    :cond_3
    :goto_2
    move/from16 v46, v6

    move-object/from16 v47, v14

    move/from16 v50, v16

    move/from16 v7, v17

    move/from16 v48, v18

    move/from16 v5, v19

    move/from16 v4, v20

    move/from16 v3, v21

    move/from16 v6, v22

    move/from16 v8, v23

    move/from16 v12, v24

    move/from16 v49, v25

    move-object/from16 v9, v26

    goto/16 :goto_8

    .line 1254
    :pswitch_0
    invoke-virtual {v13, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v1, Landroid/widget/TextView;->mTextEditSuggestionHighlightStyle:I

    goto :goto_2

    .line 1250
    :pswitch_1
    invoke-virtual {v13, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v1, Landroid/widget/TextView;->mTextEditSuggestionContainerLayout:I

    goto :goto_2

    .line 1310
    :pswitch_2
    invoke-virtual {v13, v0, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    move/from16 v44, v0

    goto/16 :goto_4

    .line 1306
    :pswitch_3
    invoke-virtual {v13, v0, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    move/from16 v42, v0

    goto/16 :goto_4

    .line 1302
    :pswitch_4
    invoke-virtual {v13, v0, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    move/from16 v41, v0

    goto/16 :goto_4

    .line 1298
    :pswitch_5
    invoke-virtual {v13, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v1, Landroid/widget/TextView;->mJustificationMode:I

    goto :goto_2

    .line 1284
    :pswitch_6
    invoke-virtual {v13, v0, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    move/from16 v43, v0

    goto/16 :goto_4

    .line 1279
    :pswitch_7
    invoke-virtual {v13, v0, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    move/from16 v40, v0

    goto/16 :goto_4

    .line 1289
    :pswitch_8
    invoke-virtual {v13, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-lez v0, :cond_3

    .line 1291
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1292
    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1293
    invoke-direct {v1, v0}, Landroid/widget/TextView;->setupAutoSizeUniformPresetSizes(Landroid/content/res/TypedArray;)V

    .line 1294
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    .line 1274
    :pswitch_9
    invoke-virtual {v13, v0, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v45

    goto/16 :goto_4

    .line 1270
    :pswitch_a
    invoke-virtual {v13, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v1, Landroid/widget/TextView;->mAutoSizeTextType:I

    goto :goto_2

    .line 1191
    :pswitch_b
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1192
    iget-object v9, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v12, 0x1

    invoke-virtual {v13, v0, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v9, Landroid/widget/Editor;->mAllowUndo:Z

    goto/16 :goto_2

    .line 1266
    :pswitch_c
    invoke-virtual {v13, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v1, Landroid/widget/TextView;->mHyphenationFrequency:I

    goto/16 :goto_2

    .line 1262
    :pswitch_d
    invoke-virtual {v13, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v1, Landroid/widget/TextView;->mBreakStrategy:I

    goto/16 :goto_2

    .line 1059
    :pswitch_e
    invoke-virtual {v13, v0, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    move-object/from16 v9, v26

    invoke-static {v0, v9}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    move-object/from16 v26, v0

    goto/16 :goto_4

    :pswitch_f
    move-object/from16 v9, v26

    .line 1055
    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    move-object/from16 v35, v0

    goto/16 :goto_4

    :pswitch_10
    move-object/from16 v9, v26

    .line 1051
    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object/from16 v34, v0

    goto/16 :goto_4

    :pswitch_11
    move-object/from16 v9, v26

    .line 1047
    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object/from16 v33, v0

    goto/16 :goto_4

    :pswitch_12
    move-object/from16 v9, v26

    .line 1246
    invoke-virtual {v13, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v1, Landroid/widget/TextView;->mTextEditSuggestionItemLayout:I

    goto/16 :goto_3

    :pswitch_13
    move-object/from16 v9, v26

    .line 1230
    invoke-virtual {v13, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v1, Landroid/widget/TextView;->mCursorDrawableRes:I

    goto/16 :goto_3

    :pswitch_14
    move-object/from16 v9, v26

    .line 1242
    invoke-virtual {v13, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleRes:I

    goto/16 :goto_3

    :pswitch_15
    move-object/from16 v9, v26

    .line 1238
    invoke-virtual {v13, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    goto/16 :goto_3

    :pswitch_16
    move-object/from16 v9, v26

    .line 1234
    invoke-virtual {v13, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    goto/16 :goto_3

    :pswitch_17
    move-object/from16 v9, v26

    .line 1209
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1210
    iget-object v12, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v12}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 1211
    iget-object v12, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v12, v12, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v7, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v7, v7, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v7, v7, Landroid/widget/Editor$InputContentType;->imeActionId:I

    invoke-virtual {v13, v0, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v12, Landroid/widget/Editor$InputContentType;->imeActionId:I

    goto/16 :goto_3

    :pswitch_18
    move-object/from16 v9, v26

    .line 1203
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1204
    iget-object v7, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v7}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 1205
    iget-object v7, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v7, v7, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v7, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    goto/16 :goto_3

    :pswitch_19
    move-object/from16 v9, v26

    .line 1196
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1197
    iget-object v7, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v7}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 1198
    iget-object v7, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v7, v7, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v12, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v12, v12, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v12, v12, Landroid/widget/Editor$InputContentType;->imeOptions:I

    invoke-virtual {v13, v0, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v7, Landroid/widget/Editor$InputContentType;->imeOptions:I

    goto :goto_3

    :pswitch_1a
    move-object/from16 v9, v26

    .line 1221
    :try_start_0
    invoke-virtual {v13, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setInputExtras(I)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v7, "TextView"

    const-string v12, "Failure reading input extras"

    .line 1225
    invoke-static {v7, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v7, "TextView"

    const-string v12, "Failure reading input extras"

    .line 1223
    invoke-static {v7, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :pswitch_1b
    move-object/from16 v9, v26

    .line 1216
    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_1c
    move-object/from16 v9, v26

    .line 1187
    invoke-virtual {v13, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    move v15, v0

    goto/16 :goto_4

    :pswitch_1d
    move-object/from16 v9, v26

    .line 1143
    iget v7, v1, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    invoke-virtual {v13, v0, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    goto :goto_3

    :pswitch_1e
    move-object/from16 v9, v26

    .line 1183
    iget v7, v1, Landroid/widget/TextView;->mSpacingMult:F

    invoke-virtual {v13, v0, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, v1, Landroid/widget/TextView;->mSpacingMult:F

    goto :goto_3

    :pswitch_1f
    move-object/from16 v9, v26

    .line 1179
    iget v7, v1, Landroid/widget/TextView;->mSpacingAdd:F

    float-to-int v7, v7

    invoke-virtual {v13, v0, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, v1, Landroid/widget/TextView;->mSpacingAdd:F

    :goto_3
    move/from16 v46, v6

    move-object/from16 v47, v14

    move/from16 v50, v16

    move/from16 v7, v17

    move/from16 v48, v18

    move/from16 v5, v19

    move/from16 v4, v20

    move/from16 v3, v21

    move/from16 v6, v22

    move/from16 v8, v23

    move/from16 v12, v24

    move/from16 v49, v25

    goto/16 :goto_8

    :pswitch_20
    move/from16 v7, v25

    move-object/from16 v9, v26

    .line 1063
    invoke-virtual {v13, v0, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    move/from16 v25, v0

    goto/16 :goto_4

    :pswitch_21
    move/from16 v7, v25

    move-object/from16 v9, v26

    .line 1039
    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object/from16 v31, v0

    goto/16 :goto_4

    :pswitch_22
    move/from16 v7, v25

    move-object/from16 v9, v26

    .line 1031
    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object/from16 v29, v0

    goto :goto_4

    :pswitch_23
    move/from16 v7, v25

    move-object/from16 v9, v26

    .line 1043
    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object/from16 v32, v0

    goto :goto_4

    :pswitch_24
    move/from16 v7, v25

    move-object/from16 v9, v26

    .line 1035
    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object/from16 v30, v0

    goto :goto_4

    :pswitch_25
    move/from16 v7, v25

    move-object/from16 v9, v26

    .line 1167
    invoke-virtual {v13, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v1, Landroid/widget/TextView;->mFreezesText:Z

    move/from16 v46, v6

    move/from16 v49, v7

    move-object/from16 v47, v14

    move/from16 v50, v16

    move/from16 v7, v17

    move/from16 v48, v18

    move/from16 v5, v19

    move/from16 v4, v20

    move/from16 v3, v21

    move/from16 v6, v22

    move/from16 v8, v23

    move/from16 v12, v24

    goto/16 :goto_8

    :pswitch_26
    move/from16 v12, v24

    move/from16 v7, v25

    move-object/from16 v9, v26

    .line 987
    invoke-virtual {v13, v0, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move/from16 v24, v0

    goto :goto_4

    :pswitch_27
    move/from16 v8, v23

    move/from16 v12, v24

    move/from16 v7, v25

    move-object/from16 v9, v26

    .line 1007
    invoke-virtual {v13, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move/from16 v23, v0

    :goto_4
    move/from16 v46, v6

    goto/16 :goto_5

    :pswitch_28
    move/from16 v46, v6

    move/from16 v6, v22

    move/from16 v8, v23

    move/from16 v12, v24

    move/from16 v7, v25

    move-object/from16 v9, v26

    .line 1011
    invoke-virtual {v13, v0, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    move/from16 v22, v0

    goto/16 :goto_5

    :pswitch_29
    move/from16 v46, v6

    move/from16 v6, v22

    move/from16 v8, v23

    move/from16 v12, v24

    move/from16 v7, v25

    move-object/from16 v9, v26

    .line 991
    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    move-object/from16 v27, v0

    goto/16 :goto_5

    :pswitch_2a
    move/from16 v46, v6

    move/from16 v3, v21

    move/from16 v6, v22

    move/from16 v8, v23

    move/from16 v12, v24

    move/from16 v7, v25

    move-object/from16 v9, v26

    .line 1003
    invoke-virtual {v13, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move/from16 v21, v0

    goto/16 :goto_5

    :pswitch_2b
    move/from16 v46, v6

    move/from16 v3, v21

    move/from16 v6, v22

    move/from16 v8, v23

    move/from16 v12, v24

    move/from16 v7, v25

    move-object/from16 v9, v26

    .line 999
    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    move-object/from16 v28, v0

    goto/16 :goto_5

    :pswitch_2c
    move/from16 v46, v6

    move/from16 v4, v20

    move/from16 v3, v21

    move/from16 v6, v22

    move/from16 v8, v23

    move/from16 v12, v24

    move/from16 v7, v25

    move-object/from16 v9, v26

    .line 995
    invoke-virtual {v13, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    move/from16 v20, v0

    goto/16 :goto_5

    :pswitch_2d
    move/from16 v46, v6

    move v5, v7

    move/from16 v4, v20

    move/from16 v3, v21

    move/from16 v6, v22

    move/from16 v8, v23

    move/from16 v12, v24

    move/from16 v7, v25

    move-object/from16 v9, v26

    .line 1159
    invoke-virtual {v13, v0, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    move/from16 v36, v0

    goto :goto_5

    :pswitch_2e
    move/from16 v46, v6

    move/from16 v4, v20

    move/from16 v3, v21

    move/from16 v6, v22

    move/from16 v8, v23

    move/from16 v12, v24

    move/from16 v7, v25

    move-object/from16 v9, v26

    const/4 v5, 0x1

    .line 1147
    invoke-virtual {v13, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v5, 0x0

    .line 1148
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    :cond_4
    move/from16 v49, v7

    move-object/from16 v47, v14

    move/from16 v50, v16

    move/from16 v7, v17

    move/from16 v48, v18

    move/from16 v5, v19

    goto/16 :goto_8

    :pswitch_2f
    move/from16 v46, v6

    move/from16 v5, v19

    move/from16 v4, v20

    move/from16 v3, v21

    move/from16 v6, v22

    move/from16 v8, v23

    move/from16 v12, v24

    move/from16 v7, v25

    move-object/from16 v9, v26

    .line 1019
    invoke-virtual {v13, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move/from16 v19, v0

    :goto_5
    move-object/from16 v47, v14

    goto/16 :goto_9

    :pswitch_30
    move/from16 v46, v6

    move-object/from16 v47, v14

    move/from16 v14, v18

    move/from16 v5, v19

    move/from16 v4, v20

    move/from16 v3, v21

    move/from16 v6, v22

    move/from16 v8, v23

    move/from16 v12, v24

    move/from16 v7, v25

    move-object/from16 v9, v26

    .line 1135
    invoke-virtual {v13, v0, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move/from16 v18, v0

    goto/16 :goto_9

    :pswitch_31
    move/from16 v46, v6

    move-object/from16 v47, v14

    move/from16 v14, v18

    move/from16 v5, v19

    move/from16 v4, v20

    move/from16 v3, v21

    move/from16 v6, v22

    move/from16 v8, v23

    move/from16 v12, v24

    move/from16 v7, v25

    move-object/from16 v9, v26

    .line 1175
    invoke-virtual {v13, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move v10, v0

    goto/16 :goto_9

    :pswitch_32
    move/from16 v46, v6

    move-object/from16 v47, v14

    move/from16 v48, v18

    move/from16 v5, v19

    move/from16 v4, v20

    move/from16 v3, v21

    move/from16 v6, v22

    move/from16 v12, v24

    move/from16 v7, v25

    move-object/from16 v9, v26

    move v14, v8

    move/from16 v8, v23

    .line 1129
    invoke-virtual {v13, v0, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v14, 0x1

    .line 1130
    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    goto/16 :goto_6

    :pswitch_33
    move/from16 v46, v6

    move-object/from16 v47, v14

    move/from16 v48, v18

    move/from16 v5, v19

    move/from16 v4, v20

    move/from16 v3, v21

    move/from16 v6, v22

    move/from16 v8, v23

    move/from16 v12, v24

    move-object/from16 v9, v26

    move v14, v7

    move/from16 v7, v25

    .line 1107
    invoke-virtual {v13, v0, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMinEms(I)V

    goto/16 :goto_6

    :pswitch_34
    move/from16 v46, v6

    move-object/from16 v47, v14

    move/from16 v48, v18

    move/from16 v5, v19

    move/from16 v4, v20

    move/from16 v3, v21

    move/from16 v6, v22

    move/from16 v8, v23

    move/from16 v12, v24

    move-object/from16 v9, v26

    move v14, v7

    move/from16 v7, v25

    .line 1103
    invoke-virtual {v13, v0, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_6

    :pswitch_35
    move/from16 v46, v6

    move-object/from16 v47, v14

    move/from16 v48, v18

    move/from16 v5, v19

    move/from16 v4, v20

    move/from16 v3, v21

    move/from16 v6, v22

    move/from16 v8, v23

    move/from16 v12, v24

    move-object/from16 v9, v26

    move v14, v7

    move/from16 v7, v25

    .line 1099
    invoke-virtual {v13, v0, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEms(I)V

    goto/16 :goto_6

    :pswitch_36
    move/from16 v46, v6

    move-object/from16 v47, v14

    move/from16 v48, v18

    move/from16 v5, v19

    move/from16 v4, v20

    move/from16 v3, v21

    move/from16 v6, v22

    move/from16 v8, v23

    move/from16 v12, v24

    move-object/from16 v9, v26

    move v14, v7

    move/from16 v7, v25

    .line 1091
    invoke-virtual {v13, v0, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxEms(I)V

    goto/16 :goto_6

    :pswitch_37
    move/from16 v46, v6

    move-object/from16 v47, v14

    move/from16 v48, v18

    move/from16 v5, v19

    move/from16 v4, v20

    move/from16 v3, v21

    move/from16 v6, v22

    move/from16 v8, v23

    move/from16 v12, v24

    move-object/from16 v9, v26

    move v14, v7

    move/from16 v7, v25

    .line 1083
    invoke-virtual {v13, v0, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMinLines(I)V

    goto/16 :goto_6

    :pswitch_38
    move/from16 v46, v6

    move-object/from16 v47, v14

    move/from16 v48, v18

    move/from16 v5, v19

    move/from16 v4, v20

    move/from16 v3, v21

    move/from16 v6, v22

    move/from16 v8, v23

    move/from16 v12, v24

    move-object/from16 v9, v26

    move v14, v7

    move/from16 v7, v25

    .line 1079
    invoke-virtual {v13, v0, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHeight(I)V

    goto/16 :goto_6

    :pswitch_39
    move/from16 v46, v6

    move-object/from16 v47, v14

    move/from16 v48, v18

    move/from16 v5, v19

    move/from16 v4, v20

    move/from16 v3, v21

    move/from16 v6, v22

    move/from16 v8, v23

    move/from16 v12, v24

    move-object/from16 v9, v26

    move v14, v7

    move/from16 v7, v25

    .line 1075
    invoke-virtual {v13, v0, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLines(I)V

    goto/16 :goto_6

    :pswitch_3a
    move/from16 v46, v6

    move-object/from16 v47, v14

    move/from16 v48, v18

    move/from16 v5, v19

    move/from16 v4, v20

    move/from16 v3, v21

    move/from16 v6, v22

    move/from16 v8, v23

    move/from16 v12, v24

    move-object/from16 v9, v26

    move v14, v7

    move/from16 v7, v25

    .line 1067
    invoke-virtual {v13, v0, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_6

    :pswitch_3b
    move/from16 v46, v6

    move-object/from16 v47, v14

    move/from16 v48, v18

    move/from16 v5, v19

    move/from16 v4, v20

    move/from16 v3, v21

    move/from16 v6, v22

    move/from16 v8, v23

    move/from16 v12, v24

    move/from16 v7, v25

    move-object/from16 v9, v26

    const/4 v14, 0x1

    .line 1153
    invoke-virtual {v13, v0, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v14, 0x0

    .line 1154
    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setCursorVisible(Z)V

    goto :goto_6

    :pswitch_3c
    move/from16 v46, v6

    move-object/from16 v47, v14

    move/from16 v48, v18

    move/from16 v5, v19

    move/from16 v4, v20

    move/from16 v3, v21

    move/from16 v6, v22

    move/from16 v8, v23

    move/from16 v12, v24

    move/from16 v7, v25

    move-object/from16 v9, v26

    const/high16 v14, 0x3f800000    # 1.0f

    .line 1163
    invoke-virtual {v13, v0, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextScaleX(F)V

    :cond_5
    :goto_6
    move/from16 v49, v7

    move/from16 v50, v16

    move/from16 v7, v17

    goto/16 :goto_8

    :pswitch_3d
    move/from16 v46, v6

    move-object/from16 v47, v14

    move/from16 v48, v18

    move/from16 v5, v19

    move/from16 v4, v20

    move/from16 v3, v21

    move/from16 v6, v22

    move/from16 v8, v23

    move/from16 v12, v24

    move/from16 v7, v25

    move-object/from16 v9, v26

    const/high16 v14, 0x3f800000    # 1.0f

    .line 1119
    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    move-object/from16 v39, v0

    goto/16 :goto_9

    :pswitch_3e
    move/from16 v46, v6

    move-object/from16 v47, v14

    move/from16 v48, v18

    move/from16 v5, v19

    move/from16 v4, v20

    move/from16 v3, v21

    move/from16 v6, v22

    move/from16 v12, v24

    move/from16 v49, v25

    move-object/from16 v9, v26

    move v14, v8

    move/from16 v8, v23

    .line 1124
    invoke-virtual {v13, v0, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v1, Landroid/widget/TextView;->mTextId:I

    .line 1125
    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    move-object/from16 v37, v0

    const/16 v38, 0x1

    goto/16 :goto_9

    :pswitch_3f
    move/from16 v46, v6

    move-object/from16 v47, v14

    move/from16 v7, v17

    move/from16 v48, v18

    move/from16 v5, v19

    move/from16 v4, v20

    move/from16 v3, v21

    move/from16 v6, v22

    move/from16 v8, v23

    move/from16 v12, v24

    move/from16 v49, v25

    move-object/from16 v9, v26

    .line 1015
    invoke-virtual {v13, v0, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    move/from16 v17, v0

    goto/16 :goto_9

    :pswitch_40
    move/from16 v46, v6

    move-object/from16 v47, v14

    move/from16 v48, v18

    move/from16 v5, v19

    move/from16 v4, v20

    move/from16 v3, v21

    move/from16 v6, v22

    move/from16 v8, v23

    move/from16 v12, v24

    move/from16 v49, v25

    move-object/from16 v9, v26

    move v14, v7

    move/from16 v7, v17

    .line 1087
    invoke-virtual {v13, v0, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMinHeight(I)V

    goto/16 :goto_7

    :pswitch_41
    move/from16 v46, v6

    move-object/from16 v47, v14

    move/from16 v48, v18

    move/from16 v5, v19

    move/from16 v4, v20

    move/from16 v3, v21

    move/from16 v6, v22

    move/from16 v8, v23

    move/from16 v12, v24

    move/from16 v49, v25

    move-object/from16 v9, v26

    move v14, v7

    move/from16 v7, v17

    .line 1111
    invoke-virtual {v13, v0, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMinWidth(I)V

    goto/16 :goto_7

    :pswitch_42
    move/from16 v46, v6

    move-object/from16 v47, v14

    move/from16 v48, v18

    move/from16 v5, v19

    move/from16 v4, v20

    move/from16 v3, v21

    move/from16 v6, v22

    move/from16 v8, v23

    move/from16 v12, v24

    move/from16 v49, v25

    move-object/from16 v9, v26

    move v14, v7

    move/from16 v7, v17

    .line 1071
    invoke-virtual {v13, v0, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxHeight(I)V

    goto/16 :goto_7

    :pswitch_43
    move/from16 v46, v6

    move-object/from16 v47, v14

    move/from16 v48, v18

    move/from16 v5, v19

    move/from16 v4, v20

    move/from16 v3, v21

    move/from16 v6, v22

    move/from16 v8, v23

    move/from16 v12, v24

    move/from16 v49, v25

    move-object/from16 v9, v26

    move v14, v7

    move/from16 v7, v17

    .line 1095
    invoke-virtual {v13, v0, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_7

    :pswitch_44
    move/from16 v46, v6

    move-object/from16 v47, v14

    move/from16 v7, v17

    move/from16 v48, v18

    move/from16 v5, v19

    move/from16 v4, v20

    move/from16 v3, v21

    move/from16 v6, v22

    move/from16 v8, v23

    move/from16 v12, v24

    move/from16 v49, v25

    move-object/from16 v9, v26

    const/4 v14, 0x1

    .line 1027
    invoke-virtual {v13, v0, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLinksClickable:Z

    goto :goto_7

    :pswitch_45
    move/from16 v46, v6

    move-object/from16 v47, v14

    move/from16 v7, v17

    move/from16 v48, v18

    move/from16 v5, v19

    move/from16 v4, v20

    move/from16 v3, v21

    move/from16 v6, v22

    move/from16 v12, v24

    move/from16 v49, v25

    move-object/from16 v9, v26

    move v14, v8

    move/from16 v8, v23

    .line 1023
    invoke-virtual {v13, v0, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v1, Landroid/widget/TextView;->mAutoLinkMask:I

    goto :goto_7

    :pswitch_46
    move/from16 v46, v6

    move-object/from16 v47, v14

    move/from16 v48, v18

    move/from16 v5, v19

    move/from16 v4, v20

    move/from16 v3, v21

    move/from16 v6, v22

    move/from16 v8, v23

    move/from16 v12, v24

    move/from16 v49, v25

    move-object/from16 v9, v26

    move v14, v7

    move/from16 v7, v17

    .line 1115
    invoke-virtual {v13, v0, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    :goto_7
    move/from16 v50, v16

    goto/16 :goto_8

    :pswitch_47
    move/from16 v46, v6

    move-object/from16 v47, v14

    move/from16 v14, v16

    move/from16 v7, v17

    move/from16 v48, v18

    move/from16 v5, v19

    move/from16 v4, v20

    move/from16 v3, v21

    move/from16 v6, v22

    move/from16 v8, v23

    move/from16 v12, v24

    move/from16 v49, v25

    move-object/from16 v9, v26

    .line 1139
    invoke-virtual {v13, v0, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    goto/16 :goto_9

    :cond_6
    move/from16 v46, v6

    move-object/from16 v47, v14

    move/from16 v50, v16

    move/from16 v7, v17

    move/from16 v48, v18

    move/from16 v5, v19

    move/from16 v4, v20

    move/from16 v3, v21

    move/from16 v6, v22

    move/from16 v12, v24

    move/from16 v49, v25

    move-object/from16 v9, v26

    move v14, v8

    move/from16 v8, v23

    .line 1258
    invoke-virtual {v13, v0, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    goto :goto_8

    :cond_7
    move/from16 v46, v6

    move-object/from16 v47, v14

    move/from16 v50, v16

    move/from16 v7, v17

    move/from16 v48, v18

    move/from16 v5, v19

    move/from16 v4, v20

    move/from16 v3, v21

    move/from16 v6, v22

    move/from16 v8, v23

    move/from16 v12, v24

    move/from16 v49, v25

    move-object/from16 v9, v26

    .line 1171
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v14

    invoke-virtual {v13, v0, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_8
    move/from16 v21, v3

    move/from16 v20, v4

    move/from16 v19, v5

    move/from16 v22, v6

    move/from16 v17, v7

    move/from16 v23, v8

    move-object/from16 v26, v9

    move/from16 v24, v12

    move/from16 v18, v48

    move/from16 v25, v49

    move/from16 v16, v50

    :goto_9
    add-int/lit8 v11, v11, 0x1

    move/from16 v6, v46

    move-object/from16 v14, v47

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/high16 v12, -0x40800000    # -1.0f

    goto/16 :goto_1

    :cond_8
    move-object/from16 v47, v14

    move/from16 v50, v16

    move/from16 v7, v17

    move/from16 v48, v18

    move/from16 v5, v19

    move/from16 v4, v20

    move/from16 v3, v21

    move/from16 v6, v22

    move/from16 v8, v23

    move/from16 v12, v24

    move/from16 v49, v25

    move-object/from16 v9, v26

    .line 1315
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 1317
    sget-object v0, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    and-int/lit16 v11, v15, 0xfff

    const/16 v13, 0x81

    if-ne v11, v13, :cond_9

    const/4 v14, 0x1

    goto :goto_a

    :cond_9
    const/4 v14, 0x0

    :goto_a
    const/16 v13, 0xe1

    if-ne v11, v13, :cond_a

    move-object/from16 v51, v0

    const/4 v13, 0x1

    goto :goto_b

    :cond_a
    move-object/from16 v51, v0

    const/4 v13, 0x0

    :goto_b
    const/16 v0, 0x12

    if-ne v11, v0, :cond_b

    const/4 v11, 0x1

    goto :goto_c

    :cond_b
    const/4 v11, 0x0

    .line 1328
    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_c

    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    .line 1329
    :goto_d
    iput-boolean v2, v1, Landroid/widget/TextView;->mUseInternationalizedInput:Z

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 1330
    :goto_e
    iput-boolean v0, v1, Landroid/widget/TextView;->mUseFallbackLineSpacing:Z

    if-eqz v27, :cond_f

    .line 1336
    :try_start_1
    invoke-interface/range {v27 .. v27}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5

    .line 1342
    :try_start_2
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1343
    iget-object v2, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/method/KeyListener;

    iput-object v0, v2, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1350
    :try_start_3
    iget-object v0, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v15, :cond_e

    goto :goto_f

    .line 1352
    :cond_e
    iget-object v2, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    invoke-interface {v2}, Landroid/text/method/KeyListener;->getInputType()I

    move-result v15

    :goto_f
    iput v15, v0, Landroid/widget/Editor;->mInputType:I
    :try_end_3
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_17

    .line 1354
    :catch_2
    iget-object v0, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v2, 0x1

    iput v2, v0, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_17

    :catch_3
    move-exception v0

    .line 1347
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v0

    .line 1345
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_5
    move-exception v0

    .line 1338
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_f
    if-eqz v28, :cond_11

    .line 1357
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1358
    iget-object v0, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-interface/range {v28 .. v28}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    iput-object v2, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1362
    iget-object v0, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v15, :cond_10

    goto :goto_10

    :cond_10
    const/4 v15, 0x1

    .line 1363
    :goto_10
    iput v15, v0, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_17

    :cond_11
    if-eqz v15, :cond_12

    const/4 v2, 0x1

    .line 1365
    invoke-direct {v1, v15, v2}, Landroid/widget/TextView;->setInputType(IZ)V

    .line 1367
    invoke-static {v15}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v0

    xor-int/lit8 v18, v0, 0x1

    move/from16 v2, v18

    goto/16 :goto_18

    :cond_12
    if-eqz v3, :cond_13

    .line 1369
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1370
    iget-object v0, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v2

    iput-object v2, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1371
    iget-object v0, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v2, 0x3

    iput v2, v0, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_17

    :cond_13
    if-eqz v4, :cond_16

    .line 1373
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1374
    iget-object v0, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    and-int/lit8 v2, v4, 0x2

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    goto :goto_11

    :cond_14
    const/4 v2, 0x0

    :goto_11
    and-int/lit8 v3, v4, 0x4

    if-eqz v3, :cond_15

    const/4 v3, 0x1

    :goto_12
    const/4 v4, 0x0

    goto :goto_13

    :cond_15
    const/4 v3, 0x0

    goto :goto_12

    :goto_13
    invoke-static {v4, v2, v3}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/util/Locale;ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    iput-object v2, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1378
    iget-object v0, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    invoke-interface {v0}, Landroid/text/method/KeyListener;->getInputType()I

    move-result v0

    .line 1379
    iget-object v2, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput v0, v2, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_17

    :cond_16
    if-nez v8, :cond_1c

    const/4 v2, -0x1

    if-eq v6, v2, :cond_17

    goto :goto_15

    :cond_17
    if-eqz v12, :cond_18

    .line 1410
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1411
    iget-object v0, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v2

    iput-object v2, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1412
    iget-object v0, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v2, 0x1

    iput v2, v0, Landroid/widget/Editor;->mInputType:I

    goto :goto_17

    .line 1413
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1415
    iget-object v0, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_19

    .line 1416
    iget-object v0, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1417
    iget-object v0, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v2, 0x0

    iput v2, v0, Landroid/widget/Editor;->mInputType:I

    .line 1419
    :cond_19
    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 1421
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :goto_14
    move/from16 v2, v48

    goto :goto_19

    .line 1423
    :cond_1a
    iget-object v0, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1b

    iget-object v0, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    :cond_1b
    packed-switch v7, :pswitch_data_7

    goto :goto_17

    .line 1433
    :pswitch_48
    sget-object v0, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    goto :goto_14

    .line 1430
    :pswitch_49
    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    goto :goto_14

    .line 1427
    :pswitch_4a
    sget-object v0, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    goto :goto_14

    :cond_1c
    :goto_15
    packed-switch v6, :pswitch_data_8

    .line 1402
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    const/4 v2, 0x1

    goto :goto_16

    .line 1397
    :pswitch_4b
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    const/16 v2, 0x1001

    goto :goto_16

    .line 1392
    :pswitch_4c
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    const/16 v2, 0x2001

    goto :goto_16

    .line 1387
    :pswitch_4d
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    const/16 v2, 0x4001

    .line 1406
    :goto_16
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1407
    iget-object v3, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-static {v8, v0}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v0

    iput-object v0, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1408
    iget-object v0, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput v2, v0, Landroid/widget/Editor;->mInputType:I

    :goto_17
    move/from16 v2, v48

    :goto_18
    move-object/from16 v0, v51

    .line 1438
    :goto_19
    iget-object v3, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v3, :cond_1d

    .line 1439
    iget-object v3, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v3, v10, v14, v13, v11}, Landroid/widget/Editor;->adjustInputType(ZZZZ)V

    :cond_1d
    if-eqz v5, :cond_1e

    .line 1444
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1445
    iget-object v3, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    .line 1447
    sget-object v3, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    if-ne v0, v3, :cond_1e

    .line 1448
    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    :cond_1e
    move-object/from16 v3, v35

    if-nez v3, :cond_20

    if-eqz v9, :cond_1f

    goto :goto_1a

    :cond_1f
    move-object/from16 v3, v29

    move-object/from16 v4, v30

    move-object/from16 v6, v31

    move-object/from16 v7, v32

    move-object/from16 v5, p1

    goto :goto_1d

    .line 1455
    :cond_20
    :goto_1a
    iget-object v4, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-nez v4, :cond_21

    .line 1456
    new-instance v4, Landroid/widget/TextView$Drawables;

    move-object/from16 v5, p1

    invoke-direct {v4, v5}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    goto :goto_1b

    :cond_21
    move-object/from16 v5, p1

    :goto_1b
    if-eqz v3, :cond_22

    .line 1459
    iget-object v4, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-object v3, v4, Landroid/widget/TextView$Drawables;->mTintList:Landroid/content/res/ColorStateList;

    .line 1460
    iget-object v3, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/widget/TextView$Drawables;->mHasTint:Z

    goto :goto_1c

    :cond_22
    const/4 v4, 0x1

    :goto_1c
    if-eqz v9, :cond_23

    .line 1463
    iget-object v3, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-object v9, v3, Landroid/widget/TextView$Drawables;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1464
    iget-object v3, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-boolean v4, v3, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    :cond_23
    move-object/from16 v3, v29

    move-object/from16 v4, v30

    move-object/from16 v6, v31

    move-object/from16 v7, v32

    .line 1469
    :goto_1d
    invoke-virtual {v1, v3, v4, v6, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v3, v33

    move-object/from16 v4, v34

    .line 1471
    invoke-direct {v1, v3, v4}, Landroid/widget/TextView;->setRelativeDrawablesIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move/from16 v8, v49

    .line 1472
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1476
    invoke-direct {v1, v2}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    .line 1477
    invoke-direct {v1, v2, v2, v2}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    if-eqz v2, :cond_24

    .line 1479
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v2

    if-nez v2, :cond_24

    move/from16 v2, v50

    const/4 v3, -0x1

    if-ne v2, v3, :cond_25

    const/4 v2, 0x3

    goto :goto_1e

    :cond_24
    move/from16 v2, v50

    :cond_25
    :goto_1e
    packed-switch v2, :pswitch_data_9

    goto :goto_20

    .line 1494
    :pswitch_4e
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->isFadingMarqueeEnabled()Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v2, 0x1

    .line 1495
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    const/4 v3, 0x0

    .line 1496
    iput v3, v1, Landroid/widget/TextView;->mMarqueeFadeMode:I

    goto :goto_1f

    :cond_26
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1498
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 1499
    iput v2, v1, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 1501
    :goto_1f
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_20

    .line 1491
    :pswitch_4f
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_20

    .line 1488
    :pswitch_50
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_20

    .line 1485
    :pswitch_51
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_20
    if-nez v10, :cond_28

    if-nez v14, :cond_28

    if-nez v13, :cond_28

    if-eqz v11, :cond_27

    goto :goto_21

    :cond_27
    const/4 v2, 0x0

    goto :goto_22

    :cond_28
    :goto_21
    const/4 v2, 0x1

    :goto_22
    if-nez v2, :cond_2a

    .line 1507
    iget-object v3, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v3, :cond_29

    iget-object v3, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v3, v3, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v3, v3, 0xfff

    const/16 v4, 0x81

    if-ne v3, v4, :cond_29

    goto :goto_23

    :cond_29
    const/4 v3, 0x0

    goto :goto_24

    :cond_2a
    :goto_23
    const/4 v3, 0x1

    :goto_24
    if-eqz v3, :cond_2b

    move-object/from16 v3, v47

    const/4 v4, 0x3

    .line 1512
    iput v4, v3, Landroid/widget/TextView$TextAppearanceAttributes;->mTypefaceIndex:I

    goto :goto_25

    :cond_2b
    move-object/from16 v3, v47

    .line 1515
    :goto_25
    invoke-direct {v1, v3}, Landroid/widget/TextView;->applyTextAppearance(Landroid/widget/TextView$TextAppearanceAttributes;)V

    if-eqz v2, :cond_2c

    .line 1518
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_2c
    move/from16 v7, v36

    if-ltz v7, :cond_2d

    const/4 v2, 0x1

    .line 1522
    new-array v3, v2, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v4, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v6, 0x0

    aput-object v4, v3, v6

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    :goto_26
    move-object/from16 v15, v37

    goto :goto_27

    :cond_2d
    const/4 v2, 0x1

    .line 1524
    sget-object v3, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_26

    .line 1527
    :goto_27
    invoke-virtual {v1, v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    if-eqz v38, :cond_2e

    .line 1529
    iput-boolean v2, v1, Landroid/widget/TextView;->mTextSetFromXmlOrResourceId:Z

    :cond_2e
    move-object/from16 v2, v39

    if-eqz v2, :cond_2f

    .line 1532
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1540
    :cond_2f
    sget-object v0, Lcom/android/internal/R$styleable;->View:[I

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v5, v2, v0, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1542
    iget-object v2, v1, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v2, :cond_31

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v2

    if-eqz v2, :cond_30

    goto :goto_28

    :cond_30
    const/4 v2, 0x0

    goto :goto_29

    :cond_31
    :goto_28
    const/4 v2, 0x1

    :goto_29
    if-nez v2, :cond_33

    .line 1543
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_32

    goto :goto_2a

    :cond_32
    const/4 v3, 0x0

    goto :goto_2b

    :cond_33
    :goto_2a
    const/4 v3, 0x1

    :goto_2b
    if-nez v2, :cond_35

    .line 1544
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isLongClickable()Z

    move-result v2

    if-eqz v2, :cond_34

    goto :goto_2c

    :cond_34
    const/4 v2, 0x0

    goto :goto_2d

    :cond_35
    :goto_2c
    const/4 v2, 0x1

    .line 1545
    :goto_2d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getFocusable()I

    move-result v4

    .line 1547
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    move v6, v2

    const/4 v2, 0x0

    :goto_2e
    if-ge v2, v5, :cond_3a

    .line 1549
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v7

    const/16 v8, 0x13

    if-eq v7, v8, :cond_37

    packed-switch v7, :pswitch_data_a

    goto :goto_2f

    .line 1566
    :pswitch_52
    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    goto :goto_2f

    .line 1562
    :pswitch_53
    invoke-virtual {v0, v7, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    :cond_36
    :goto_2f
    const/16 v7, 0x12

    goto :goto_31

    .line 1553
    :cond_37
    new-instance v8, Landroid/util/TypedValue;

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    .line 1554
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v7

    if-eqz v7, :cond_36

    .line 1555
    iget v4, v8, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x12

    if-ne v4, v7, :cond_39

    .line 1556
    iget v4, v8, Landroid/util/TypedValue;->data:I

    if-nez v4, :cond_38

    const/4 v8, 0x0

    goto :goto_30

    :cond_38
    const/4 v8, 0x1

    goto :goto_30

    .line 1557
    :cond_39
    iget v8, v8, Landroid/util/TypedValue;->data:I

    :goto_30
    move v4, v8

    :goto_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 1570
    :cond_3a
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1576
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getFocusable()I

    move-result v0

    if-eq v4, v0, :cond_3b

    .line 1577
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setFocusable(I)V

    .line 1579
    :cond_3b
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1580
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 1582
    iget-object v0, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_3c

    iget-object v0, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 1585
    :cond_3c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_3d

    const/4 v2, 0x1

    .line 1586
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    goto :goto_32

    :cond_3d
    const/4 v2, 0x1

    .line 1589
    :goto_32
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->supportsAutoSizeText()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1590
    iget v0, v1, Landroid/widget/TextView;->mAutoSizeTextType:I

    if-ne v0, v2, :cond_42

    .line 1594
    iget-boolean v0, v1, Landroid/widget/TextView;->mHasPresetAutoSizeValues:Z

    if-nez v0, :cond_41

    .line 1595
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, v40, v2

    if-nez v3, :cond_3e

    const/high16 v3, 0x41400000    # 12.0f

    const/4 v4, 0x2

    .line 1598
    invoke-static {v4, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v40

    goto :goto_33

    :cond_3e
    const/4 v4, 0x2

    :goto_33
    move/from16 v3, v40

    cmpl-float v5, v43, v2

    if-nez v5, :cond_3f

    const/high16 v5, 0x42e00000    # 112.0f

    .line 1605
    invoke-static {v4, v5, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v43

    :cond_3f
    move/from16 v0, v43

    cmpl-float v2, v45, v2

    if-nez v2, :cond_40

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_34

    :cond_40
    move/from16 v2, v45

    .line 1616
    :goto_34
    invoke-direct {v1, v3, v0, v2}, Landroid/widget/TextView;->validateAndSetAutoSizeTextTypeUniformConfiguration(FFF)V

    .line 1621
    :cond_41
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->setupAutoSizeText()Z

    :cond_42
    :goto_35
    move/from16 v7, v41

    goto :goto_36

    :cond_43
    const/4 v2, 0x0

    .line 1624
    iput v2, v1, Landroid/widget/TextView;->mAutoSizeTextType:I

    goto :goto_35

    :goto_36
    if-ltz v7, :cond_44

    .line 1628
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setFirstBaselineToTopHeight(I)V

    :cond_44
    move/from16 v7, v42

    if-ltz v7, :cond_45

    .line 1631
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setLastBaselineToBottomHeight(I)V

    :cond_45
    move/from16 v7, v44

    if-ltz v7, :cond_46

    .line 1634
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setLineHeight(I)V

    :cond_46
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x28
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x46
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x49
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x4f
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x5b
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x5f
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_49
        :pswitch_48
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x1
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x1e
        :pswitch_53
        :pswitch_52
    .end packed-switch
.end method

.method static synthetic access$100(Landroid/widget/TextView;)Landroid/widget/Editor;
    .locals 0

    .line 326
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    return-object p0
.end method

.method static synthetic access$1000(Landroid/widget/TextView;)Landroid/text/Layout;
    .locals 0

    .line 326
    iget-object p0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    return-object p0
.end method

.method static synthetic access$1100(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 0

    .line 326
    iget-object p0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1200(Landroid/widget/TextView;)Ljava/lang/CharSequence;
    .locals 0

    .line 326
    iget-object p0, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$1300(Landroid/widget/TextView;Ljava/lang/CharSequence;III)V
    .locals 0

    .line 326
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method static synthetic access$1400(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 0

    .line 326
    iget-object p0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Landroid/widget/TextView;)V
    .locals 0

    .line 326
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextServicesLocaleLocked()V

    return-void
.end method

.method private applyCompoundDrawableTint()V
    .locals 10

    .line 3215
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-nez v0, :cond_0

    return-void

    .line 3219
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-boolean v0, v0, Landroid/widget/TextView$Drawables;->mHasTint:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-boolean v0, v0, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    if-eqz v0, :cond_7

    .line 3220
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mTintList:Landroid/content/res/ColorStateList;

    .line 3221
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 3222
    iget-object v2, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-boolean v2, v2, Landroid/widget/TextView$Drawables;->mHasTint:Z

    .line 3223
    iget-object v3, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-boolean v3, v3, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    .line 3224
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v4

    .line 3226
    iget-object v5, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v5, v5, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_7

    aget-object v8, v5, v7

    if-nez v8, :cond_2

    goto :goto_1

    .line 3231
    :cond_2
    iget-object v9, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v9, v9, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    if-ne v8, v9, :cond_3

    goto :goto_1

    .line 3238
    :cond_3
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    .line 3241
    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_4
    if-eqz v3, :cond_5

    .line 3245
    invoke-virtual {v8, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 3250
    :cond_5
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 3251
    invoke-virtual {v8, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_6
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method private applySingleLine(ZZZ)V
    .locals 0

    .line 9463
    iput-boolean p1, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 9465
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLines(I)V

    .line 9466
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    if-eqz p2, :cond_2

    .line 9468
    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const p1, 0x7fffffff

    .line 9472
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_1
    const/4 p1, 0x0

    .line 9474
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    if-eqz p2, :cond_2

    const/4 p1, 0x0

    .line 9476
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private applyTextAppearance(Landroid/widget/TextView$TextAppearanceAttributes;)V
    .locals 7

    .line 3634
    iget-object v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 3635
    iget-object v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 3638
    :cond_0
    iget-object v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColorHint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 3639
    iget-object v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColorHint:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 3642
    :cond_1
    iget-object v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColorLink:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    .line 3643
    iget-object v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColorLink:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 3646
    :cond_2
    iget v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColorHighlight:I

    if-eqz v0, :cond_3

    .line 3647
    iget v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColorHighlight:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 3650
    :cond_3
    iget v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mTextSize:I

    if-eqz v0, :cond_4

    .line 3651
    iget v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mTextSize:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/widget/TextView;->setRawTextSize(FZ)V

    .line 3654
    :cond_4
    iget v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mTypefaceIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    iget-boolean v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mFontFamilyExplicit:Z

    if-nez v0, :cond_5

    const/4 v0, 0x0

    .line 3655
    iput-object v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mFontFamily:Ljava/lang/String;

    .line 3657
    :cond_5
    iget-object v2, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mFontTypeface:Landroid/graphics/Typeface;

    iget-object v3, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mFontFamily:Ljava/lang/String;

    iget v4, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mTypefaceIndex:I

    iget v5, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mStyleIndex:I

    iget v6, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mFontWeight:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/widget/TextView;->setTypefaceFromAttrs(Landroid/graphics/Typeface;Ljava/lang/String;III)V

    .line 3660
    iget v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowColor:I

    if-eqz v0, :cond_6

    .line 3661
    iget v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowRadius:F

    iget v1, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowDx:F

    iget v2, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowDy:F

    iget v3, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowColor:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 3665
    :cond_6
    iget-boolean v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mAllCaps:Z

    if-eqz v0, :cond_7

    .line 3666
    new-instance v0, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 3669
    :cond_7
    iget-boolean v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mHasElegant:Z

    if-eqz v0, :cond_8

    .line 3670
    iget-boolean v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mElegant:Z

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    .line 3673
    :cond_8
    iget-boolean v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mHasFallbackLineSpacing:Z

    if-eqz v0, :cond_9

    .line 3674
    iget-boolean v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mFallbackLineSpacing:Z

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setFallbackLineSpacing(Z)V

    .line 3677
    :cond_9
    iget-boolean v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mHasLetterSpacing:Z

    if-eqz v0, :cond_a

    .line 3678
    iget v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mLetterSpacing:F

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 3681
    :cond_a
    iget-object v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mFontFeatureSettings:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 3682
    iget-object p1, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mFontFeatureSettings:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method private assumeLayout()V
    .locals 8

    .line 8109
    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v1, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    move v6, v0

    .line 8117
    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x100000

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v6

    .line 8121
    :goto_0
    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v5, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    const/4 v7, 0x0

    move-object v1, p0

    move v3, v6

    invoke-virtual/range {v1 .. v7}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    return-void
.end method

.method private autoSizeText()V
    .locals 9

    .line 8668
    invoke-direct {p0}, Landroid/widget/TextView;->isAutoSizeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 8672
    :cond_0
    iget-boolean v0, p0, Landroid/widget/TextView;->mNeedsAutoSizeText:Z

    if-eqz v0, :cond_7

    .line 8673
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    if-gtz v0, :cond_1

    goto/16 :goto_3

    .line 8677
    :cond_1
    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eqz v0, :cond_2

    const/high16 v0, 0x100000

    :goto_0
    move v2, v0

    goto :goto_1

    .line 8679
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 8680
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 8681
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v2, :cond_5

    if-gtz v0, :cond_3

    goto :goto_2

    .line 8687
    :cond_3
    sget-object v8, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    monitor-enter v8

    .line 8688
    :try_start_0
    sget-object v1, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->setEmpty()V

    .line 8689
    sget-object v1, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    int-to-float v3, v2

    iput v3, v1, Landroid/graphics/RectF;->right:F

    .line 8690
    sget-object v1, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    int-to-float v0, v0

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 8691
    sget-object v0, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Landroid/widget/TextView;->findLargestTextSizeWhichFits(Landroid/graphics/RectF;)I

    move-result v0

    int-to-float v0, v0

    .line 8693
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    .line 8694
    invoke-direct {p0, v1, v0, v1}, Landroid/widget/TextView;->setTextSizeInternal(IFZ)V

    const/4 v3, 0x0

    .line 8697
    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v5, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v1, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v1

    .line 8698
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int v6, v0, v1

    const/4 v7, 0x0

    move-object v1, p0

    .line 8697
    invoke-virtual/range {v1 .. v7}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 8701
    :cond_4
    monitor-exit v8

    goto :goto_4

    :catchall_0
    move-exception p0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    :goto_2
    return-void

    :cond_6
    :goto_3
    return-void

    :cond_7
    :goto_4
    const/4 v0, 0x1

    .line 8705
    iput-boolean v0, p0, Landroid/widget/TextView;->mNeedsAutoSizeText:Z

    return-void
.end method

.method private bringTextIntoView()Z
    .locals 12

    .line 8950
    invoke-direct {p0}, Landroid/widget/TextView;->isShowingHint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 8952
    :goto_0
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x50

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_1

    .line 8953
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    sub-int/2addr v1, v3

    goto :goto_1

    :cond_1
    move v1, v4

    .line 8956
    :goto_1
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v5

    .line 8957
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    .line 8958
    iget v7, p0, Landroid/widget/TextView;->mRight:I

    iget v8, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    .line 8959
    iget v8, p0, Landroid/widget/TextView;->mBottom:I

    iget v9, p0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    .line 8960
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v9

    .line 8965
    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v5, v10, :cond_3

    if-ne v6, v3, :cond_2

    .line 8967
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_2

    :cond_2
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_2

    .line 8968
    :cond_3
    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v5, v10, :cond_5

    if-ne v6, v3, :cond_4

    .line 8970
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_2

    :cond_4
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 8973
    :cond_5
    :goto_2
    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v5, v10, :cond_7

    .line 8979
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v5

    float-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v5, v10

    .line 8980
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    sub-int v1, v0, v5

    if-ge v1, v7, :cond_6

    add-int/2addr v0, v5

    .line 8983
    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v7, v7, 0x2

    sub-int v5, v0, v7

    goto :goto_3

    :cond_6
    if-gez v6, :cond_9

    sub-int v5, v0, v7

    goto :goto_3

    .line 8991
    :cond_7
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v5, v6, :cond_8

    .line 8992
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    sub-int v5, v0, v7

    goto :goto_3

    .line 8995
    :cond_8
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v5, v0

    :cond_9
    :goto_3
    if-ge v9, v8, :cond_b

    :cond_a
    move v0, v4

    goto :goto_4

    .line 9001
    :cond_b
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v0, v0, 0x70

    if-ne v0, v2, :cond_a

    sub-int v0, v9, v8

    .line 9008
    :goto_4
    iget v1, p0, Landroid/widget/TextView;->mScrollX:I

    if-ne v5, v1, :cond_d

    iget v1, p0, Landroid/widget/TextView;->mScrollY:I

    if-eq v0, v1, :cond_c

    goto :goto_5

    :cond_c
    return v4

    .line 9009
    :cond_d
    :goto_5
    invoke-virtual {p0, v5, v0}, Landroid/widget/TextView;->scrollTo(II)V

    return v3
.end method

.method private canMarquee()Z
    .locals 3

    .line 9596
    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v1, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 9597
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    int-to-float v0, v0

    cmpl-float v2, v2, v0

    if-gtz v2, :cond_0

    iget v2, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    if-eqz v2, :cond_1

    iget-object p0, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 9599
    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result p0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private changeListenerLocaleTo(Ljava/util/Locale;)V
    .locals 2

    .line 3706
    iget-boolean v0, p0, Landroid/widget/TextView;->mListenerChanged:Z

    if-eqz v0, :cond_0

    return-void

    .line 3713
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_6

    .line 3714
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 3715
    instance-of v1, v0, Landroid/text/method/DigitsKeyListener;

    if-eqz v1, :cond_1

    .line 3716
    check-cast v0, Landroid/text/method/DigitsKeyListener;

    invoke-static {p1, v0}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/util/Locale;Landroid/text/method/DigitsKeyListener;)Landroid/text/method/DigitsKeyListener;

    move-result-object p1

    goto :goto_0

    .line 3717
    :cond_1
    instance-of v1, v0, Landroid/text/method/DateKeyListener;

    if-eqz v1, :cond_2

    .line 3718
    invoke-static {p1}, Landroid/text/method/DateKeyListener;->getInstance(Ljava/util/Locale;)Landroid/text/method/DateKeyListener;

    move-result-object p1

    goto :goto_0

    .line 3719
    :cond_2
    instance-of v1, v0, Landroid/text/method/TimeKeyListener;

    if-eqz v1, :cond_3

    .line 3720
    invoke-static {p1}, Landroid/text/method/TimeKeyListener;->getInstance(Ljava/util/Locale;)Landroid/text/method/TimeKeyListener;

    move-result-object p1

    goto :goto_0

    .line 3721
    :cond_3
    instance-of v0, v0, Landroid/text/method/DateTimeKeyListener;

    if-eqz v0, :cond_5

    .line 3722
    invoke-static {p1}, Landroid/text/method/DateTimeKeyListener;->getInstance(Ljava/util/Locale;)Landroid/text/method/DateTimeKeyListener;

    move-result-object p1

    .line 3726
    :goto_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    invoke-static {v0}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v0

    .line 3727
    invoke-direct {p0, p1}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    .line 3728
    invoke-direct {p0}, Landroid/widget/TextView;->setInputTypeFromEditor()V

    if-eqz v0, :cond_6

    .line 3730
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget p1, p1, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 p1, p1, 0xf

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 3732
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget p1, p0, Landroid/widget/Editor;->mInputType:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Landroid/widget/Editor;->mInputType:I

    goto :goto_1

    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    .line 3734
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget p1, p0, Landroid/widget/Editor;->mInputType:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Landroid/widget/Editor;->mInputType:I

    goto :goto_1

    :cond_5
    return-void

    :cond_6
    :goto_1
    return-void
.end method

.method private checkForRelayout()V
    .locals 10

    .line 8879
    iget-object v0, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    iget v2, p0, Landroid/widget/TextView;->mMinWidthMode:I

    if-ne v0, v2, :cond_6

    iget v0, p0, Landroid/widget/TextView;->mMaxWidth:I

    iget v2, p0, Landroid/widget/TextView;->mMinWidth:I

    if-ne v0, v2, :cond_6

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v0, :cond_6

    :cond_1
    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v2, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v2

    .line 8882
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    if-lez v0, :cond_6

    .line 8885
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    .line 8886
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v4

    .line 8887
    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    :goto_0
    move v5, v2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    goto :goto_0

    .line 8894
    :goto_1
    sget-object v6, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v7, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    iget v2, p0, Landroid/widget/TextView;->mRight:I

    iget v3, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v2, v3

    .line 8895
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int v8, v2, v3

    const/4 v9, 0x0

    move-object v3, p0

    .line 8894
    invoke-virtual/range {v3 .. v9}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 8898
    iget-object v2, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v2, v3, :cond_5

    .line 8900
    iget-object v2, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, v1, :cond_3

    iget-object v1, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 8902
    invoke-direct {p0}, Landroid/widget/TextView;->autoSizeText()V

    .line 8903
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void

    .line 8909
    :cond_3
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    if-ne v1, v0, :cond_5

    iget-object v1, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 8910
    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    if-ne v1, v0, :cond_5

    .line 8911
    :cond_4
    invoke-direct {p0}, Landroid/widget/TextView;->autoSizeText()V

    .line 8912
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void

    .line 8919
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 8920
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_2

    .line 8924
    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 8925
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 8926
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :goto_2
    return-void
.end method

.method private checkForResize()V
    .locals 4

    .line 8840
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 8842
    iget-object v0, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v3, -0x2

    if-ne v0, v3, :cond_0

    .line 8844
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    move v2, v1

    .line 8848
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v0, v3, :cond_1

    .line 8849
    invoke-direct {p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v0

    .line 8851
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    if-eq v0, v3, :cond_2

    goto :goto_0

    .line 8854
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 8855
    iget v0, p0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    if-ltz v0, :cond_2

    .line 8856
    invoke-direct {p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v0

    .line 8858
    iget v3, p0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    if-eq v0, v3, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    if-eqz v1, :cond_3

    .line 8866
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    :cond_3
    return-void
.end method

.method private cleanupAutoSizePresetSizes([I)[I
    .locals 4

    .line 1927
    array-length p0, p1

    if-nez p0, :cond_0

    return-object p1

    .line 1931
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 1933
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_2

    .line 1935
    aget v2, p1, v1

    if-lez v2, :cond_1

    .line 1938
    invoke-virtual {v0, v2}, Landroid/util/IntArray;->binarySearch(I)I

    move-result v3

    if-gez v3, :cond_1

    .line 1939
    invoke-virtual {v0, v2}, Landroid/util/IntArray;->add(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1943
    :cond_2
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v1

    if-ne p0, v1, :cond_3

    goto :goto_1

    .line 1945
    :cond_3
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private clearAutoSizeConfiguration()V
    .locals 2

    const/4 v0, 0x0

    .line 1917
    iput v0, p0, Landroid/widget/TextView;->mAutoSizeTextType:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 1918
    iput v1, p0, Landroid/widget/TextView;->mAutoSizeMinTextSizeInPx:F

    .line 1919
    iput v1, p0, Landroid/widget/TextView;->mAutoSizeMaxTextSizeInPx:F

    .line 1920
    iput v1, p0, Landroid/widget/TextView;->mAutoSizeStepGranularityInPx:F

    .line 1921
    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    iput-object v1, p0, Landroid/widget/TextView;->mAutoSizeTextSizesInPx:[I

    .line 1922
    iput-boolean v0, p0, Landroid/widget/TextView;->mNeedsAutoSizeText:Z

    return-void
.end method

.method private compressText(F)Z
    .locals 5

    .line 8408
    invoke-virtual {p0}, Landroid/widget/TextView;->isHardwareAccelerated()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    cmpl-float v2, p1, v0

    if-lez v2, :cond_1

    .line 8411
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 8412
    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v4

    if-nez v2, :cond_1

    .line 8413
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    add-float/2addr v2, v4

    sub-float/2addr v2, p1

    div-float/2addr v2, p1

    cmpl-float p1, v2, v0

    if-lez p1, :cond_1

    const p1, 0x3d8f5c29    # 0.07f

    cmpg-float p1, v2, p1

    if-gtz p1, :cond_1

    .line 8416
    iget-object p1, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    sub-float/2addr v4, v2

    const v0, 0x3ba3d70a    # 0.005f

    sub-float/2addr v4, v0

    invoke-virtual {p1, v4}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 8417
    new-instance p1, Landroid/widget/TextView$2;

    invoke-direct {p1, p0}, Landroid/widget/TextView$2;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return v3

    :cond_1
    return v1
.end method

.method private convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V
    .locals 2

    .line 9304
    invoke-virtual {p0}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v0

    .line 9305
    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 9306
    iget v1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 9308
    invoke-virtual {p0}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result p0

    .line 9309
    iget v0, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 9310
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private createEditorIfNeeded()V
    .locals 1

    .line 12111
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    .line 12112
    new-instance v0, Landroid/widget/Editor;

    invoke-direct {v0, p0}, Landroid/widget/Editor;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    :cond_0
    return-void
.end method

.method private static desired(Landroid/text/Layout;)I
    .locals 6

    .line 8430
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    .line 8431
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_1

    .line 8438
    invoke-virtual {p0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 8444
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    float-to-double v0, v1

    .line 8447
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method private doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I
    .locals 5

    .line 7566
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 7575
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7576
    iput-boolean v1, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    :cond_1
    const/4 v0, 0x4

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq p1, v0, :cond_9

    const/16 v0, 0x17

    if-eq p1, v0, :cond_8

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_6

    const/16 v0, 0x42

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 7652
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x1020022

    .line 7653
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    if-eqz v0, :cond_a

    return v3

    .line 7644
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x1020021

    .line 7645
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    if-eqz v0, :cond_a

    return v3

    .line 7636
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x1020020

    .line 7637
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    if-eqz v0, :cond_a

    return v3

    .line 7581
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7586
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_3

    .line 7589
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 7590
    invoke-interface {v0, p0, v1, p2}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7592
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object p0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-boolean v2, p0, Landroid/widget/Editor$InputContentType;->enterDown:Z

    return v3

    .line 7601
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_4

    .line 7602
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7603
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result p0

    if-eqz p0, :cond_5

    return v1

    :cond_5
    return v3

    .line 7620
    :cond_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p2, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7621
    :cond_7
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnTab()Z

    move-result v0

    if-eqz v0, :cond_a

    return v1

    .line 7612
    :cond_8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7613
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v0

    if-eqz v0, :cond_a

    return v1

    .line 7629
    :cond_9
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getTextActionMode()Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 7630
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    return v3

    .line 7660
    :cond_a
    :goto_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_d

    if-eqz p3, :cond_c

    .line 7664
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 7665
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Editable;

    invoke-interface {v0, p0, v4, p3}, Landroid/text/method/KeyListener;->onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 7667
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_b

    .line 7676
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    return v3

    :cond_b
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    throw p1

    :catch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    :cond_c
    move v0, v2

    :goto_1
    if-eqz v0, :cond_d

    .line 7681
    invoke-virtual {p0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 7682
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Editable;

    invoke-interface {v0, p0, v4, p1, p2}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 7684
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 7685
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    if-eqz v0, :cond_d

    return v2

    .line 7693
    :cond_d
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_12

    if-eqz p3, :cond_f

    .line 7697
    :try_start_1
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v4, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-interface {v0, p0, v4, p3}, Landroid/text/method/MovementMethod;->onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z

    move-result p3
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p3, :cond_e

    return v3

    :cond_e
    move p3, v1

    goto :goto_2

    :catch_1
    :cond_f
    move p3, v2

    :goto_2
    if-eqz p3, :cond_11

    .line 7708
    iget-object p3, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v0, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-interface {p3, p0, v0, p1, p2}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result p3

    if-eqz p3, :cond_11

    .line 7709
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    if-nez p2, :cond_10

    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result p1

    if-nez p1, :cond_10

    .line 7710
    iput-boolean v2, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    :cond_10
    const/4 p0, 0x2

    return p0

    .line 7718
    :cond_11
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    move-result p2

    const/16 p3, 0x101

    if-ne p2, p3, :cond_12

    .line 7719
    invoke-direct {p0, p1}, Landroid/widget/TextView;->isDirectionalNavigationKey(I)Z

    move-result p2

    if-eqz p2, :cond_12

    return v3

    .line 7724
    :cond_12
    iget-boolean p0, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    if-eqz p0, :cond_13

    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result p0

    if-nez p0, :cond_13

    move v1, v3

    :cond_13
    return v1

    :pswitch_data_0
    .packed-switch 0x115
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private ensureIterableTextForAccessibilitySelectable()V
    .locals 2

    .line 12125
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_0

    .line 12126
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_0
    return-void
.end method

.method private findLargestTextSizeWhichFits(Landroid/graphics/RectF;)I
    .locals 5

    .line 8713
    iget-object v0, p0, Landroid/widget/TextView;->mAutoSizeTextSizesInPx:[I

    array-length v0, v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_0
    move v4, v2

    move v2, v1

    move v1, v4

    :goto_1
    if-gt v1, v0, :cond_1

    add-int v2, v1, v0

    .line 8723
    div-int/lit8 v2, v2, 0x2

    .line 8724
    iget-object v3, p0, Landroid/widget/TextView;->mAutoSizeTextSizesInPx:[I

    aget v3, v3, v2

    invoke-direct {p0, v3, p1}, Landroid/widget/TextView;->suggestedSizeFitsInSpace(ILandroid/graphics/RectF;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_1

    .line 8733
    :cond_1
    iget-object p0, p0, Landroid/widget/TextView;->mAutoSizeTextSizesInPx:[I

    aget p0, p0, v2

    return p0

    .line 8715
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No available text sizes to choose from."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private fixFocusableAndClickableSettings()V
    .locals 1

    .line 2402
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    .line 2407
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setFocusable(I)V

    const/4 v0, 0x0

    .line 2408
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 2409
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLongClickable(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2403
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setFocusable(I)V

    .line 2404
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 2405
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLongClickable(Z)V

    :goto_1
    return-void
.end method

.method private getBottomVerticalOffset(Z)I
    .locals 2

    .line 6606
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v0, v0, 0x70

    .line 6608
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez p1, :cond_0

    .line 6609
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz p1, :cond_0

    .line 6610
    iget-object v1, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    :cond_0
    const/16 p1, 0x50

    if-eq v0, p1, :cond_2

    .line 6614
    invoke-direct {p0, v1}, Landroid/widget/TextView;->getBoxHeight(Landroid/text/Layout;)I

    move-result p0

    .line 6615
    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result p1

    if-ge p1, p0, :cond_2

    const/16 v1, 0x30

    if-ne v0, v1, :cond_1

    sub-int/2addr p0, p1

    goto :goto_0

    :cond_1
    sub-int/2addr p0, p1

    shr-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getBoxHeight(Landroid/text/Layout;)I
    .locals 2

    .line 6573
    iget-object v0, p0, Landroid/widget/TextView;->mParent:Landroid/view/ViewParent;

    invoke-static {v0}, Landroid/widget/TextView;->isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 6574
    :goto_0
    iget-object v1, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-ne p1, v1, :cond_1

    .line 6575
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v1

    add-int/2addr p1, v1

    goto :goto_1

    .line 6576
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v1

    add-int/2addr p1, v1

    .line 6577
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p0

    sub-int/2addr p0, p1

    iget p1, v0, Landroid/graphics/Insets;->top:I

    add-int/2addr p0, p1

    iget p1, v0, Landroid/graphics/Insets;->bottom:I

    add-int/2addr p0, p1

    return p0
.end method

.method private getCustomLocaleForKeyListenerOrNull()Ljava/util/Locale;
    .locals 2

    .line 6091
    iget-boolean v0, p0, Landroid/widget/TextView;->mUseInternationalizedInput:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 6095
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getImeHintLocales()Landroid/os/LocaleList;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    const/4 v0, 0x0

    .line 6101
    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method private getDesiredHeight()I
    .locals 4

    .line 8778
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v1, 0x1

    .line 8779
    invoke-direct {p0, v0, v1}, Landroid/widget/TextView;->getDesiredHeight(Landroid/text/Layout;Z)I

    move-result v0

    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    iget-object v3, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 8780
    :goto_0
    invoke-direct {p0, v2, v1}, Landroid/widget/TextView;->getDesiredHeight(Landroid/text/Layout;Z)I

    move-result p0

    .line 8778
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private getDesiredHeight(Landroid/text/Layout;Z)I
    .locals 6

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 8792
    :cond_0
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getHeight(Z)I

    move-result v0

    .line 8794
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v1, :cond_1

    .line 8796
    iget v2, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 8797
    iget v2, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 8800
    :cond_1
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 8801
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 8804
    iget v4, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    .line 8805
    iget p1, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_5

    .line 8806
    iget p2, p0, Landroid/widget/TextView;->mMaximum:I

    if-le v2, p2, :cond_5

    instance-of p2, p1, Landroid/text/DynamicLayout;

    if-nez p2, :cond_3

    instance-of p2, p1, Landroid/text/BoringLayout;

    if-eqz p2, :cond_5

    .line 8808
    :cond_3
    iget p2, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineTop(I)I

    move-result p1

    if-eqz v1, :cond_4

    .line 8811
    iget p2, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 8812
    iget p2, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_4
    add-int v0, p1, v3

    .line 8816
    iget v2, p0, Landroid/widget/TextView;->mMaximum:I

    .line 8819
    :cond_5
    :goto_0
    iget p1, p0, Landroid/widget/TextView;->mMinMode:I

    if-ne p1, v5, :cond_6

    .line 8820
    iget p1, p0, Landroid/widget/TextView;->mMinimum:I

    if-ge v2, p1, :cond_7

    .line 8821
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result p1

    iget p2, p0, Landroid/widget/TextView;->mMinimum:I

    sub-int/2addr p2, v2

    mul-int/2addr p1, p2

    add-int/2addr v0, p1

    goto :goto_1

    .line 8824
    :cond_6
    iget p1, p0, Landroid/widget/TextView;->mMinimum:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 8828
    :cond_7
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getSuggestedMinimumHeight()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private getHorizontalFadingEdgeStrength(FF)F
    .locals 0

    .line 10271
    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sub-float/2addr p1, p2

    .line 10273
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    int-to-float p0, p0

    cmpl-float p2, p1, p0

    if-lez p2, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_1
    div-float/2addr p1, p0

    return p1
.end method

.method private getInterestingRect(Landroid/graphics/Rect;I)V
    .locals 2

    .line 9294
    invoke-direct {p0, p1}, Landroid/widget/TextView;->convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V

    if-nez p2, :cond_0

    .line 9299
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 9300
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_1

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result p0

    add-int/2addr p2, p0

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_1
    return-void
.end method

.method private getLayoutAlignment()Landroid/text/Layout$Alignment;
    .locals 2

    .line 8127
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextAlignment()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 8171
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 8164
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result p0

    if-ne p0, v1, :cond_0

    .line 8165
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 8160
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result p0

    if-ne p0, v1, :cond_1

    .line 8161
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_1
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 8157
    :pswitch_2
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 8154
    :pswitch_3
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 8151
    :pswitch_4
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 8129
    :pswitch_5
    iget p0, p0, Landroid/widget/TextView;->mGravity:I

    const v0, 0x800007

    and-int/2addr p0, v0

    if-eq p0, v1, :cond_6

    const/4 v0, 0x3

    if-eq p0, v0, :cond_5

    const/4 v0, 0x5

    if-eq p0, v0, :cond_4

    const v0, 0x800003

    if-eq p0, v0, :cond_3

    const v0, 0x800005

    if-eq p0, v0, :cond_2

    .line 8146
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 8134
    :cond_2
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 8131
    :cond_3
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 8140
    :cond_4
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 8137
    :cond_5
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 8143
    :cond_6
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getTextColor(Landroid/content/Context;Landroid/content/res/TypedArray;I)I
    .locals 0

    .line 10369
    invoke-static {p0, p1}, Landroid/widget/TextView;->getTextColors(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-nez p0, :cond_0

    return p2

    .line 10373
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    return p0
.end method

.method public static getTextColors(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;
    .locals 3

    if-eqz p1, :cond_1

    .line 10344
    sget-object p1, Landroid/R$styleable;->TextView:[I

    invoke-virtual {p0, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x5

    .line 10345
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 10347
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_0

    .line 10349
    sget-object v0, Landroid/R$styleable;->TextAppearance:[I

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 v0, 0x3

    .line 10351
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 10352
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 10355
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 10337
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method private getTextForAccessibility()Ljava/lang/CharSequence;
    .locals 1

    .line 11227
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11228
    iget-object p0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    return-object p0

    .line 11232
    :cond_0
    iget-object p0, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->trimToParcelableSize(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private getTextServicesLocale(Z)Ljava/util/Locale;
    .locals 1

    .line 10452
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextServicesLocaleAsync()V

    .line 10455
    iget-object v0, p0, Landroid/widget/TextView;->mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    goto :goto_0

    .line 10456
    :cond_0
    iget-object p0, p0, Landroid/widget/TextView;->mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

    :goto_0
    return-object p0
.end method

.method private getUpdatedHighlightPath()Landroid/graphics/Path;
    .locals 6

    .line 7048
    iget-object v0, p0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    .line 7050
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 7051
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 7052
    iget-object v3, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_0
    if-ltz v1, :cond_6

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    .line 7054
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->shouldRenderCursor()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 7055
    iget-boolean v2, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v2, :cond_2

    .line 7056
    iget-object v2, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    if-nez v2, :cond_1

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 7057
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 7058
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v4, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v1, v4, v5}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    .line 7059
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->updateCursorPosition()V

    .line 7060
    iput-boolean v3, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 7064
    :cond_2
    iget v1, p0, Landroid/widget/TextView;->mCurTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 7065
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7066
    iget-object p0, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    goto :goto_0

    .line 7069
    :cond_3
    iget-boolean v4, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v4, :cond_5

    .line 7070
    iget-object v4, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    if-nez v4, :cond_4

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 7071
    :cond_4
    iget-object v4, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 7072
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v5, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v4, v1, v2, v5}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 7073
    iput-boolean v3, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 7077
    :cond_5
    iget v1, p0, Landroid/widget/TextView;->mHighlightColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 7078
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7080
    iget-object p0, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    goto :goto_0

    :cond_6
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private hasSpannableText()Z
    .locals 1

    .line 11190
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of p0, p0, Landroid/text/Spannable;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private invalidateCursor(III)V
    .locals 1

    if-gez p1, :cond_0

    if-gez p2, :cond_0

    if-ltz p3, :cond_1

    .line 6677
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 6678
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 p2, 0x1

    .line 6679
    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/TextView;->invalidateRegion(IIZ)V

    :cond_1
    return-void
.end method

.method private isAutoSizeEnabled()Z
    .locals 1

    .line 10510
    invoke-virtual {p0}, Landroid/widget/TextView;->supportsAutoSizeText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Landroid/widget/TextView;->mAutoSizeTextType:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isAutofillable()Z
    .locals 0

    .line 9825
    invoke-virtual {p0}, Landroid/widget/TextView;->getAutofillType()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isDirectionalNavigationKey(I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isMarqueeFadeEnabled()Z
    .locals 3

    .line 10279
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget p0, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eq p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private static isMultilineInputType(I)Z
    .locals 1

    const v0, 0x2000f

    and-int/2addr p0, v0

    const v0, 0x20001

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isPasswordInputType(I)Z
    .locals 1

    and-int/lit16 p0, p0, 0xfff

    const/16 v0, 0x81

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe1

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isShowingHint()Z
    .locals 1

    .line 8943
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isVisiblePasswordInputType(I)Z
    .locals 1

    and-int/lit16 p0, p0, 0xfff

    const/16 v0, 0x91

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$handleClick$0(Landroid/widget/TextView;Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;
    .locals 0

    .line 11634
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/textclassifier/TextClassifier;->classifyText(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$handleClick$1(Landroid/view/textclassifier/TextClassification;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 11637
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11639
    :try_start_0
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/RemoteAction;

    invoke-virtual {p0}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "TextView"

    const-string v1, "Error sending PendingIntent"

    .line 11641
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string p0, "TextView"

    const-string v0, "No link action to perform"

    .line 11644
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p0, "TextView"

    const-string v0, "Timeout while classifying text"

    .line 11648
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private notifyAutoFillManagerAfterTextChangedIfNeeded()V
    .locals 3

    .line 9800
    invoke-direct {p0}, Landroid/widget/TextView;->isAutofillable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 9803
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-nez v0, :cond_1

    return-void

    .line 9808
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mLastValueSentToAutofillManager:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/TextView;->mLastValueSentToAutofillManager:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 9809
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 9816
    :cond_2
    sget-boolean p0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_5

    const-string p0, "TextView"

    const-string v0, "not notifying AFM on unchanged text"

    .line 9817
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 9810
    :cond_3
    :goto_0
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_4

    const-string v1, "TextView"

    const-string v2, "notifying AFM after text changed"

    .line 9811
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9813
    :cond_4
    invoke-virtual {v0, p0}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;)V

    .line 9814
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/widget/TextView;->mLastValueSentToAutofillManager:Ljava/lang/CharSequence;

    :cond_5
    :goto_1
    return-void
.end method

.method private onProvideAutoStructureForAssistOrAutofill(Landroid/view/ViewStructure;Z)V
    .locals 13

    .line 10607
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 10608
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    invoke-static {v0}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz p2, :cond_2

    .line 10610
    iget-boolean v3, p0, Landroid/widget/TextView;->mTextSetFromXmlOrResourceId:Z

    xor-int/2addr v3, v2

    invoke-virtual {p1, v3}, Landroid/view/ViewStructure;->setDataIsSensitive(Z)V

    .line 10611
    iget v3, p0, Landroid/widget/TextView;->mTextId:I

    if-eqz v3, :cond_2

    .line 10613
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Landroid/widget/TextView;->mTextId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/ViewStructure;->setTextIdEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 10615
    sget-boolean v4, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_2

    const-string v4, "TextView"

    .line 10616
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onProvideAutofillStructure(): cannot set name for text id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/widget/TextView;->mTextId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10617
    invoke-virtual {v3}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 10616
    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    if-eqz p2, :cond_19

    .line 10624
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v0, :cond_4

    .line 10625
    invoke-direct {p0}, Landroid/widget/TextView;->assumeLayout()V

    .line 10627
    :cond_4
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 10628
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    const/4 v4, 0x2

    if-gt v3, v2, :cond_6

    .line 10631
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz p2, :cond_5

    .line 10633
    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 10635
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    invoke-virtual {p1, v0, v3, v5}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;II)V

    goto/16 :goto_6

    .line 10640
    :cond_6
    new-array v5, v4, [I

    .line 10641
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 10642
    aget v5, v5, v2

    .line 10644
    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    move-object v7, p0

    .line 10645
    :goto_3
    instance-of v8, v6, Landroid/view/View;

    if-eqz v8, :cond_7

    .line 10646
    move-object v7, v6

    check-cast v7, Landroid/view/View;

    .line 10647
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    goto :goto_3

    .line 10649
    :cond_7
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v6

    if-ltz v5, :cond_8

    const/4 v5, 0x0

    .line 10654
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->getLineAtCoordinateUnclamped(F)I

    move-result v5

    sub-int/2addr v6, v2

    int-to-float v6, v6

    .line 10655
    invoke-virtual {p0, v6}, Landroid/widget/TextView;->getLineAtCoordinateUnclamped(F)I

    move-result v6

    goto :goto_4

    :cond_8
    neg-int v7, v5

    int-to-float v7, v7

    .line 10659
    invoke-virtual {p0, v7}, Landroid/widget/TextView;->getLineAtCoordinateUnclamped(F)I

    move-result v7

    sub-int/2addr v6, v2

    sub-int/2addr v6, v5

    int-to-float v5, v6

    .line 10660
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->getLineAtCoordinateUnclamped(F)I

    move-result v6

    move v5, v7

    :goto_4
    sub-int v7, v6, v5

    .line 10664
    div-int/lit8 v8, v7, 0x2

    sub-int v9, v5, v8

    if-gez v9, :cond_9

    move v9, v1

    :cond_9
    add-int/2addr v8, v6

    if-lt v8, v3, :cond_a

    add-int/lit8 v8, v3, -0x1

    .line 10674
    :cond_a
    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 10675
    invoke-virtual {v0, v8}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v8

    .line 10679
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v9

    .line 10680
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v10

    if-ge v9, v10, :cond_c

    if-ge v9, v3, :cond_b

    move v3, v9

    :cond_b
    if-le v10, v8, :cond_c

    move v8, v10

    .line 10691
    :cond_c
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    if-gtz v3, :cond_d

    .line 10692
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-ge v8, v12, :cond_e

    .line 10693
    :cond_d
    invoke-interface {v11, v3, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    :cond_e
    if-eqz p2, :cond_f

    .line 10697
    invoke-virtual {p1, v11}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_f
    sub-int/2addr v9, v3

    sub-int/2addr v10, v3

    .line 10699
    invoke-virtual {p1, v11, v9, v10}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;II)V

    add-int/2addr v7, v2

    .line 10701
    new-array v3, v7, [I

    .line 10702
    new-array v7, v7, [I

    .line 10703
    invoke-virtual {p0}, Landroid/widget/TextView;->getBaselineOffset()I

    move-result v8

    move v9, v5

    :goto_5
    if-gt v9, v6, :cond_10

    sub-int v10, v9, v5

    .line 10705
    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineStart(I)I

    move-result v11

    aput v11, v3, v10

    .line 10706
    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v11

    add-int/2addr v11, v8

    aput v11, v7, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 10708
    :cond_10
    invoke-virtual {p1, v3, v7}, Landroid/view/ViewStructure;->setTextLines([I[I)V

    :goto_6
    if-nez p2, :cond_16

    .line 10715
    invoke-virtual {p0}, Landroid/widget/TextView;->getTypefaceStyle()I

    move-result p2

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_11

    move v1, v2

    :cond_11
    and-int/2addr p2, v4

    if-eqz p2, :cond_12

    or-int/lit8 v1, v1, 0x2

    .line 10724
    :cond_12
    iget-object p2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p2}, Landroid/text/TextPaint;->getFlags()I

    move-result p2

    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_13

    or-int/lit8 v1, v1, 0x1

    :cond_13
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_14

    or-int/lit8 v1, v1, 0x4

    :cond_14
    and-int/lit8 p2, p2, 0x10

    if-eqz p2, :cond_15

    or-int/lit8 v1, v1, 0x8

    .line 10737
    :cond_15
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    invoke-virtual {p1, p2, v0, v2, v1}, Landroid/view/ViewStructure;->setTextStyle(FIII)V

    goto :goto_9

    .line 10740
    :cond_16
    invoke-virtual {p0}, Landroid/widget/TextView;->getMinEms()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewStructure;->setMinTextEms(I)V

    .line 10741
    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxEms()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewStructure;->setMaxTextEms(I)V

    const/4 p2, -0x1

    .line 10743
    invoke-virtual {p0}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    array-length v2, v0

    :goto_7
    if-ge v1, v2, :cond_18

    aget-object v3, v0, v1

    .line 10744
    instance-of v4, v3, Landroid/text/InputFilter$LengthFilter;

    if-eqz v4, :cond_17

    .line 10745
    check-cast v3, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual {v3}, Landroid/text/InputFilter$LengthFilter;->getMax()I

    move-result p2

    goto :goto_8

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 10749
    :cond_18
    :goto_8
    invoke-virtual {p1, p2}, Landroid/view/ViewStructure;->setMaxTextLength(I)V

    .line 10752
    :cond_19
    :goto_9
    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewStructure;->setHint(Ljava/lang/CharSequence;)V

    .line 10753
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/ViewStructure;->setInputType(I)V

    return-void
.end method

.method private parseDimensionArray(Landroid/content/res/TypedArray;)[I
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1975
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result p0

    new-array p0, p0, [I

    const/4 v0, 0x0

    move v1, v0

    .line 1976
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1977
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    aput v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private paste(IIZ)V
    .locals 7

    .line 11804
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 11805
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    move v2, v1

    .line 11808
    :goto_0
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-ge v1, v3, :cond_4

    if-eqz p3, :cond_0

    .line 11811
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ClipData$Item;->coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_1

    .line 11814
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 11815
    instance-of v4, v3, Landroid/text/Spanned;

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    :goto_1
    if-eqz v3, :cond_3

    if-nez v2, :cond_2

    .line 11819
    iget-object v2, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-static {v2, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 11820
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Editable;

    invoke-interface {v2, p1, p2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    const/4 v2, 0x1

    goto :goto_2

    .line 11823
    :cond_2
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Editable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    const-string v6, "\n"

    invoke-interface {v4, v5, v6}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 11824
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Editable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    invoke-interface {v4, v5, v3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const-wide/16 p0, 0x0

    .line 11828
    sput-wide p0, Landroid/widget/TextView;->sLastCutCopyOrTextChangedTime:J

    :cond_5
    return-void
.end method

.method private performAccessibilityActionClick(Landroid/os/Bundle;)Z
    .locals 3

    .line 11162
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 11166
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->isClickable()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->isLongClickable()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v0

    goto :goto_1

    .line 11168
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocusable()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result p1

    if-nez p1, :cond_3

    .line 11169
    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    .line 11172
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->performClick()Z

    const/4 p1, 0x1

    .line 11177
    :goto_1
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    invoke-direct {p0}, Landroid/widget/TextView;->hasSpannableText()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v1, :cond_6

    .line 11178
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 11179
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 11180
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    .line 11181
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v2, v2, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    .line 11182
    invoke-virtual {v1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result p0

    or-int/2addr p1, p0

    :cond_6
    return p1
.end method

.method public static preloadFontCache()V
    .locals 2

    .line 846
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    .line 847
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 852
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const-string v1, "H"

    .line 854
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    return-void
.end method

.method private prepareDrawableForDisplay(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 12041
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 12043
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12044
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 12045
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_1
    return-void
.end method

.method private readTextAppearance(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/widget/TextView$TextAppearanceAttributes;Z)V
    .locals 5

    .line 3541
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_5

    .line 3543
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    const/4 v2, -0x1

    if-eqz p4, :cond_0

    .line 3547
    sget-object v3, Landroid/widget/TextView;->sAppearanceValues:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    if-ne v3, v2, :cond_1

    goto/16 :goto_1

    :cond_0
    move v3, v1

    :cond_1
    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    .line 3594
    :pswitch_0
    iget v2, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mFontWeight:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mFontWeight:I

    goto/16 :goto_1

    .line 3616
    :pswitch_1
    iput-boolean v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mHasFallbackLineSpacing:Z

    .line 3617
    iget-boolean v2, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mFallbackLineSpacing:Z

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mFallbackLineSpacing:Z

    goto/16 :goto_1

    .line 3626
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mFontFeatureSettings:Ljava/lang/String;

    goto/16 :goto_1

    .line 3621
    :pswitch_3
    iput-boolean v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mHasLetterSpacing:Z

    .line 3622
    iget v2, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mLetterSpacing:F

    .line 3623
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mLetterSpacing:F

    goto/16 :goto_1

    .line 3612
    :pswitch_4
    iput-boolean v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mHasElegant:Z

    .line 3613
    iget-boolean v2, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mElegant:Z

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mElegant:Z

    goto/16 :goto_1

    .line 3578
    :pswitch_5
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->canLoadUnsafeResources()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3580
    :try_start_0
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getFont(I)Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mFontTypeface:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3585
    :catch_0
    :cond_2
    iget-object v2, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mFontTypeface:Landroid/graphics/Typeface;

    if-nez v2, :cond_3

    .line 3586
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mFontFamily:Ljava/lang/String;

    .line 3588
    :cond_3
    iput-boolean v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mFontFamilyExplicit:Z

    goto/16 :goto_1

    .line 3597
    :pswitch_6
    iget-boolean v2, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mAllCaps:Z

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mAllCaps:Z

    goto/16 :goto_1

    .line 3609
    :pswitch_7
    iget v2, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowRadius:F

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowRadius:F

    goto :goto_1

    .line 3606
    :pswitch_8
    iget v2, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowDy:F

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowDy:F

    goto :goto_1

    .line 3603
    :pswitch_9
    iget v2, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowDx:F

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowDx:F

    goto :goto_1

    .line 3600
    :pswitch_a
    iget v2, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowColor:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowColor:I

    goto :goto_1

    .line 3565
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColorLink:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 3562
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColorHint:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 3555
    :pswitch_d
    iget v2, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColorHighlight:I

    .line 3556
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColorHighlight:I

    goto :goto_1

    .line 3559
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 3591
    :pswitch_f
    iget v2, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mStyleIndex:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mStyleIndex:I

    goto :goto_1

    .line 3572
    :pswitch_10
    iget v3, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mTypefaceIndex:I

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mTypefaceIndex:I

    .line 3573
    iget v1, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mTypefaceIndex:I

    if-eq v1, v2, :cond_4

    iget-boolean v1, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mFontFamilyExplicit:Z

    if-nez v1, :cond_4

    const/4 v1, 0x0

    .line 3574
    iput-object v1, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mFontFamily:Ljava/lang/String;

    goto :goto_1

    .line 3568
    :pswitch_11
    iget v2, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mTextSize:I

    .line 3569
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mTextSize:I

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private registerForPreDraw()V
    .locals 1

    .line 6741
    iget-boolean v0, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    if-nez v0, :cond_0

    .line 6742
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x1

    .line 6743
    iput-boolean v0, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    :cond_0
    return-void
.end method

.method private removeIntersectingNonAdjacentSpans(IILjava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 9732
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_0

    return-void

    .line 9733
    :cond_0
    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast p0, Landroid/text/Editable;

    .line 9735
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p3

    .line 9736
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 9738
    aget-object v2, p3, v1

    invoke-interface {p0, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 9739
    aget-object v3, p3, v1

    invoke-interface {p0, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, p1, :cond_2

    if-ne v2, p2, :cond_1

    goto :goto_1

    .line 9741
    :cond_1
    aget-object v2, p3, v1

    invoke-interface {p0, v2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method static removeParcelableSpans(Landroid/text/Spannable;II)V
    .locals 1

    .line 7932
    const-class v0, Landroid/text/ParcelableSpan;

    invoke-interface {p0, p1, p2, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    .line 7933
    array-length p2, p1

    :goto_0
    if-lez p2, :cond_0

    add-int/lit8 p2, p2, -0x1

    .line 7936
    aget-object v0, p1, p2

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private requestAutofill()V
    .locals 2

    .line 10768
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_0

    .line 10770
    invoke-virtual {v0, p0}, Landroid/view/autofill/AutofillManager;->requestAutofill(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private resolveStyleAndSetTypeface(Landroid/graphics/Typeface;II)V
    .locals 1

    if-ltz p3, :cond_1

    const/16 v0, 0x3e8

    .line 2050
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 2052
    :goto_0
    invoke-static {p1, p3, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 2054
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :goto_1
    return-void
.end method

.method private restartMarqueeIfNeeded()V
    .locals 2

    .line 6506
    iget-boolean v0, p0, Landroid/widget/TextView;->mRestartMarquee:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 6507
    iput-boolean v0, p0, Landroid/widget/TextView;->mRestartMarquee:Z

    .line 6508
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    :cond_0
    return-void
.end method

.method private sendBeforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    .line 9717
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 9718
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 9719
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 9721
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextWatcher;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr p3, p2

    .line 9726
    const-class p1, Landroid/text/style/SpellCheckSpan;

    invoke-direct {p0, p2, p3, p1}, Landroid/widget/TextView;->removeIntersectingNonAdjacentSpans(IILjava/lang/Class;)V

    .line 9727
    const-class p1, Landroid/text/style/SuggestionSpan;

    invoke-direct {p0, p2, p3, p1}, Landroid/widget/TextView;->removeIntersectingNonAdjacentSpans(IILjava/lang/Class;)V

    return-void
.end method

.method private setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V
    .locals 6

    .line 6535
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_5

    .line 6536
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 6537
    :goto_0
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v3, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    instance-of v3, v3, Landroid/text/InputFilter;

    if-eqz v0, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    if-eqz v3, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    if-lez v4, :cond_5

    .line 6542
    array-length v5, p2

    add-int/2addr v5, v4

    new-array v4, v5, [Landroid/text/InputFilter;

    .line 6544
    array-length v5, p2

    invoke-static {p2, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v0, :cond_3

    .line 6547
    array-length v0, p2

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    aput-object v2, v4, v0

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    if-eqz v3, :cond_4

    .line 6551
    array-length p2, p2

    add-int/2addr p2, v1

    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object p0, p0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    check-cast p0, Landroid/text/InputFilter;

    aput-object p0, v4, p2

    .line 6554
    :cond_4
    invoke-interface {p1, v4}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    return-void

    .line 6558
    :cond_5
    invoke-interface {p1, p2}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method private setHintInternal(Ljava/lang/CharSequence;)V
    .locals 0

    .line 5898
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    .line 5900
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz p1, :cond_0

    .line 5901
    invoke-direct {p0}, Landroid/widget/TextView;->checkForRelayout()V

    .line 5904
    :cond_0
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_1

    .line 5905
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 5909
    :cond_1
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz p1, :cond_2

    .line 5910
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p0}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    :cond_2
    return-void
.end method

.method private setInputType(IZ)V
    .locals 6

    and-int/lit8 v0, p1, 0xf

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    const v0, 0x8000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    and-int/lit16 v0, p1, 0x1000

    if-eqz v0, :cond_1

    .line 6111
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    goto :goto_1

    :cond_1
    and-int/lit16 v0, p1, 0x2000

    if-eqz v0, :cond_2

    .line 6113
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    goto :goto_1

    :cond_2
    and-int/lit16 v0, p1, 0x4000

    if-eqz v0, :cond_3

    .line 6115
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    goto :goto_1

    .line 6117
    :cond_3
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    .line 6119
    :goto_1
    invoke-static {v2, v0}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v0

    goto/16 :goto_5

    :cond_4
    const/4 v3, 0x2

    if-ne v0, v3, :cond_9

    .line 6121
    invoke-direct {p0}, Landroid/widget/TextView;->getCustomLocaleForKeyListenerOrNull()Ljava/util/Locale;

    move-result-object v0

    and-int/lit16 v4, p1, 0x1000

    if-eqz v4, :cond_5

    move v4, v2

    goto :goto_2

    :cond_5
    move v4, v1

    :goto_2
    and-int/lit16 v5, p1, 0x2000

    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    move v2, v1

    .line 6122
    :goto_3
    invoke-static {v0, v4, v2}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/util/Locale;ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    if-eqz v0, :cond_8

    .line 6128
    invoke-interface {v2}, Landroid/text/method/KeyListener;->getInputType()I

    move-result v0

    and-int/lit8 v4, v0, 0xf

    if-eq v4, v3, :cond_8

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_7

    or-int/lit16 v0, v0, 0x80

    :cond_7
    move p1, v0

    :cond_8
    move-object v0, v2

    goto :goto_5

    :cond_9
    const/4 v2, 0x4

    if-ne v0, v2, :cond_c

    .line 6140
    invoke-direct {p0}, Landroid/widget/TextView;->getCustomLocaleForKeyListenerOrNull()Ljava/util/Locale;

    move-result-object v0

    and-int/lit16 v2, p1, 0xff0

    const/16 v3, 0x10

    if-eq v2, v3, :cond_b

    const/16 v3, 0x20

    if-eq v2, v3, :cond_a

    .line 6149
    invoke-static {v0}, Landroid/text/method/DateTimeKeyListener;->getInstance(Ljava/util/Locale;)Landroid/text/method/DateTimeKeyListener;

    move-result-object v0

    goto :goto_4

    .line 6146
    :cond_a
    invoke-static {v0}, Landroid/text/method/TimeKeyListener;->getInstance(Ljava/util/Locale;)Landroid/text/method/TimeKeyListener;

    move-result-object v0

    goto :goto_4

    .line 6143
    :cond_b
    invoke-static {v0}, Landroid/text/method/DateKeyListener;->getInstance(Ljava/util/Locale;)Landroid/text/method/DateKeyListener;

    move-result-object v0

    .line 6152
    :goto_4
    iget-boolean v2, p0, Landroid/widget/TextView;->mUseInternationalizedInput:Z

    if-eqz v2, :cond_e

    .line 6153
    invoke-interface {v0}, Landroid/text/method/KeyListener;->getInputType()I

    move-result p1

    goto :goto_5

    :cond_c
    const/4 v2, 0x3

    if-ne v0, v2, :cond_d

    .line 6156
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v0

    goto :goto_5

    .line 6158
    :cond_d
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v0

    .line 6160
    :cond_e
    :goto_5
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 6161
    iput-boolean v1, p0, Landroid/widget/TextView;->mListenerChanged:Z

    if-eqz p2, :cond_f

    .line 6163
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 6164
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object v0, p0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    goto :goto_6

    .line 6166
    :cond_f
    invoke-direct {p0, v0}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    :goto_6
    return-void
.end method

.method private setInputTypeFromEditor()V
    .locals 2

    .line 2340
    :try_start_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    invoke-interface {v1}, Landroid/text/method/KeyListener;->getInputType()I

    move-result v1

    iput v1, v0, Landroid/widget/Editor;->mInputType:I
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2342
    :catch_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/Editor;->mInputType:I

    .line 2346
    :goto_0
    iget-boolean v0, p0, Landroid/widget/TextView;->mSingleLine:Z

    invoke-direct {p0, v0}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    return-void
.end method

.method private setInputTypeSingleLine(Z)V
    .locals 2

    .line 9450
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    .line 9454
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget p1, p0, Landroid/widget/Editor;->mInputType:I

    const v0, -0x20001

    and-int/2addr p1, v0

    iput p1, p0, Landroid/widget/Editor;->mInputType:I

    goto :goto_0

    .line 9456
    :cond_0
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget p1, p0, Landroid/widget/Editor;->mInputType:I

    const/high16 v0, 0x20000

    or-int/2addr p1, v0

    iput p1, p0, Landroid/widget/Editor;->mInputType:I

    :cond_1
    :goto_0
    return-void
.end method

.method private setKeyListenerOnly(Landroid/text/method/KeyListener;)V
    .locals 1

    .line 2350
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    .line 2352
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 2353
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eq v0, p1, :cond_2

    .line 2354
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object p1, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz p1, :cond_1

    .line 2355
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of p1, p1, Landroid/text/Editable;

    if-nez p1, :cond_1

    .line 2356
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2359
    :cond_1
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast p1, Landroid/text/Editable;

    iget-object v0, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    invoke-direct {p0, p1, v0}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    :cond_2
    return-void
.end method

.method private setPrimaryClip(Landroid/content/ClipData;)Z
    .locals 1

    .line 11848
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ClipboardManager;

    .line 11850
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 11854
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p0

    sput-wide p0, Landroid/widget/TextView;->sLastCutCopyOrTextChangedTime:J

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private setRawTextSize(FZ)V
    .locals 1

    .line 3869
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 3870
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    if-eqz p2, :cond_0

    .line 3872
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3874
    iput-boolean p1, p0, Landroid/widget/TextView;->mNeedsAutoSizeText:Z

    .line 3875
    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 3876
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3877
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method private setRelativeDrawablesIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    :goto_1
    if-eqz v2, :cond_5

    .line 2061
    iget-object v2, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-nez v2, :cond_2

    .line 2063
    new-instance v2, Landroid/widget/TextView$Drawables;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2065
    :cond_2
    iget-object v3, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-boolean v0, v3, Landroid/widget/TextView$Drawables;->mOverride:Z

    .line 2066
    iget-object v0, v2, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 2067
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    if-eqz p1, :cond_3

    .line 2069
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {p1, v1, v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2070
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2071
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2072
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2074
    iput-object p1, v2, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 2075
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, v2, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    .line 2076
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, v2, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    goto :goto_2

    .line 2078
    :cond_3
    iput v1, v2, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v1, v2, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    :goto_2
    if-eqz p2, :cond_4

    .line 2081
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p2, v1, v1, p1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2082
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2083
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2084
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2086
    iput-object p2, v2, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 2087
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, v2, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    .line 2088
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, v2, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    goto :goto_3

    .line 2090
    :cond_4
    iput v1, v2, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v1, v2, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    .line 2092
    :goto_3
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 2093
    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    .line 2094
    invoke-direct {p0}, Landroid/widget/TextView;->applyCompoundDrawableTint()V

    :cond_5
    return-void
.end method

.method private setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V
    .locals 11

    const/4 v0, 0x0

    .line 5597
    iput-boolean v0, p0, Landroid/widget/TextView;->mTextSetFromXmlOrResourceId:Z

    if-nez p1, :cond_0

    const-string p1, ""

    .line 5603
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5604
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 5607
    :cond_1
    iget-boolean v1, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 5609
    :cond_2
    instance-of v1, p1, Landroid/text/Spanned;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Landroid/text/Spanned;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    .line 5610
    invoke-interface {v1, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_4

    .line 5611
    iget-object v1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->isFadingMarqueeEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5612
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 5613
    iput v0, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    goto :goto_0

    .line 5615
    :cond_3
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 5616
    iput v2, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 5618
    :goto_0
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 5621
    :cond_4
    iget-object v1, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    array-length v1, v1

    move-object v10, p1

    move p1, v0

    :goto_1
    if-ge p1, v1, :cond_6

    .line 5623
    iget-object v3, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    aget-object v3, v3, p1

    const/4 v5, 0x0

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v6

    sget-object v7, Landroid/widget/TextView;->EMPTY_SPANNED:Landroid/text/Spanned;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v10

    invoke-interface/range {v3 .. v9}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_5

    move-object v10, v3

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_6
    if-eqz p3, :cond_8

    .line 5630
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz p1, :cond_7

    .line 5631
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    .line 5632
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result p3

    invoke-direct {p0, p1, v0, p4, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_2

    :cond_7
    const-string p1, ""

    .line 5634
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result p3

    invoke-direct {p0, p1, v0, v0, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 5640
    :cond_8
    :goto_2
    iget-object p1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz p1, :cond_9

    iget-object p1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_3

    :cond_9
    move v2, v0

    .line 5645
    :goto_3
    instance-of p1, v10, Landroid/text/PrecomputedText;

    const/4 p3, 0x0

    if-eqz p1, :cond_a

    move-object p1, v10

    check-cast p1, Landroid/text/PrecomputedText;

    goto :goto_4

    :cond_a
    move-object p1, p3

    .line 5646
    :goto_4
    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    if-eq p2, v1, :cond_11

    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v1

    if-nez v1, :cond_11

    if-eqz v2, :cond_b

    goto :goto_6

    :cond_b
    if-eqz p1, :cond_e

    .line 5656
    iget-object v1, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    if-nez v1, :cond_c

    .line 5657
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 5659
    :cond_c
    invoke-virtual {p1}, Landroid/text/PrecomputedText;->getParams()Landroid/text/PrecomputedText$Params;

    move-result-object v1

    .line 5660
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget v5, p0, Landroid/widget/TextView;->mBreakStrategy:I

    iget v6, p0, Landroid/widget/TextView;->mHyphenationFrequency:I

    .line 5659
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/text/PrecomputedText$Params;->isSameTextMetricsInternal(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;II)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_7

    .line 5661
    :cond_d
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "PrecomputedText\'s Parameters don\'t match the parameters of this TextView.Consider using setTextMetricsParams(precomputedText.getParams()) to override the settings of this TextView: PrecomputedText: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5665
    invoke-virtual {p1}, Landroid/text/PrecomputedText;->getParams()Landroid/text/PrecomputedText$Params;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "TextView: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5666
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextMetricsParams()Landroid/text/PrecomputedText$Params;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 5668
    :cond_e
    sget-object p1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    if-eq p2, p1, :cond_10

    iget-object p1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz p1, :cond_f

    goto :goto_5

    .line 5670
    :cond_f
    instance-of p1, v10, Landroid/widget/TextView$CharWrapper;

    if-nez p1, :cond_12

    .line 5671
    invoke-static {v10}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    goto :goto_7

    .line 5669
    :cond_10
    :goto_5
    iget-object p1, p0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    invoke-virtual {p1, v10}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v10

    goto :goto_7

    .line 5648
    :cond_11
    :goto_6
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 5649
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p1}, Landroid/widget/Editor;->forgetUndoRedo()V

    .line 5650
    iget-object p1, p0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    invoke-virtual {p1, v10}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v10

    .line 5652
    iget-object p1, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    invoke-direct {p0, v10, p1}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    .line 5653
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 5654
    invoke-virtual {p1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 5674
    :cond_12
    :goto_7
    iget p1, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    if-eqz p1, :cond_16

    .line 5677
    sget-object p1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    if-eq p2, p1, :cond_14

    instance-of p1, v10, Landroid/text/Spannable;

    if-eqz p1, :cond_13

    goto :goto_8

    .line 5680
    :cond_13
    iget-object p1, p0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    invoke-virtual {p1, v10}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object p1

    goto :goto_9

    .line 5678
    :cond_14
    :goto_8
    move-object p1, v10

    check-cast p1, Landroid/text/Spannable;

    .line 5683
    :goto_9
    iget v1, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    invoke-static {p1, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 5685
    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    if-ne p2, v1, :cond_15

    sget-object p2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    goto :goto_a

    :cond_15
    sget-object p2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 5692
    :goto_a
    invoke-direct {p0, p1}, Landroid/widget/TextView;->setTextInternal(Ljava/lang/CharSequence;)V

    .line 5696
    iget-boolean v1, p0, Landroid/widget/TextView;->mLinksClickable:Z

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v1

    if-nez v1, :cond_17

    .line 5697
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_b

    :cond_16
    move-object p1, v10

    .line 5702
    :cond_17
    :goto_b
    iput-object p2, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    .line 5703
    invoke-direct {p0, p1}, Landroid/widget/TextView;->setTextInternal(Ljava/lang/CharSequence;)V

    .line 5705
    iget-object p2, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-nez p2, :cond_18

    .line 5706
    iput-object p1, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    goto :goto_c

    .line 5708
    :cond_18
    iget-object p2, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-interface {p2, p1, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    .line 5711
    :goto_c
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    .line 5713
    instance-of v1, p1, Landroid/text/Spannable;

    if-eqz v1, :cond_1d

    iget-boolean v1, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    if-nez v1, :cond_1d

    .line 5714
    move-object v1, p1

    check-cast v1, Landroid/text/Spannable;

    .line 5717
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v3

    const-class v4, Landroid/widget/TextView$ChangeWatcher;

    invoke-interface {v1, v0, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/widget/TextView$ChangeWatcher;

    .line 5718
    array-length v4, v3

    move v5, v0

    :goto_d
    if-ge v5, v4, :cond_19

    .line 5720
    aget-object v6, v3, v5

    invoke-interface {v1, v6}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 5723
    :cond_19
    iget-object v3, p0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    if-nez v3, :cond_1a

    new-instance v3, Landroid/widget/TextView$ChangeWatcher;

    invoke-direct {v3, p0, p3}, Landroid/widget/TextView$ChangeWatcher;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    iput-object v3, p0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    .line 5725
    :cond_1a
    iget-object p3, p0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    const v3, 0x640012

    invoke-interface {v1, p3, v0, p2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 5728
    iget-object p3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz p3, :cond_1b

    iget-object p3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p3, v1}, Landroid/widget/Editor;->addSpanWatchers(Landroid/text/Spannable;)V

    .line 5730
    :cond_1b
    iget-object p3, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz p3, :cond_1c

    .line 5731
    iget-object p3, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    const/16 v3, 0x12

    invoke-interface {v1, p3, v0, p2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 5734
    :cond_1c
    iget-object p3, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz p3, :cond_1d

    .line 5735
    iget-object p3, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    invoke-interface {p3, p0, v1}, Landroid/text/method/MovementMethod;->initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V

    .line 5742
    iget-object p3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz p3, :cond_1d

    iget-object p3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v0, p3, Landroid/widget/Editor;->mSelectionMoved:Z

    .line 5746
    :cond_1d
    iget-object p3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz p3, :cond_1e

    .line 5747
    invoke-direct {p0}, Landroid/widget/TextView;->checkForRelayout()V

    .line 5750
    :cond_1e
    invoke-virtual {p0, p1, v0, p4, p2}, Landroid/widget/TextView;->sendOnTextChanged(Ljava/lang/CharSequence;III)V

    .line 5751
    invoke-virtual {p0, p1, v0, p4, p2}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    const/4 p2, 0x2

    .line 5753
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    if-eqz v2, :cond_1f

    .line 5756
    check-cast p1, Landroid/text/Editable;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->sendAfterTextChanged(Landroid/text/Editable;)V

    goto :goto_e

    .line 5758
    :cond_1f
    invoke-direct {p0}, Landroid/widget/TextView;->notifyAutoFillManagerAfterTextChangedIfNeeded()V

    .line 5762
    :goto_e
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz p1, :cond_20

    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p0}, Landroid/widget/Editor;->prepareCursorControllers()V

    :cond_20
    return-void
.end method

.method private setTextInternal(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1640
    iput-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 1641
    instance-of v0, p1, Landroid/text/Spannable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/text/Spannable;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    .line 1642
    instance-of v0, p1, Landroid/text/PrecomputedText;

    if-eqz v0, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/text/PrecomputedText;

    :cond_1
    iput-object v1, p0, Landroid/widget/TextView;->mPrecomputed:Landroid/text/PrecomputedText;

    return-void
.end method

.method private setTextSizeInternal(IFZ)V
    .locals 1

    .line 3855
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3859
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0

    .line 3861
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3864
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-direct {p0, p1, p3}, Landroid/widget/TextView;->setRawTextSize(FZ)V

    return-void
.end method

.method private setTypefaceFromAttrs(Landroid/graphics/Typeface;Ljava/lang/String;III)V
    .locals 0

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 2024
    invoke-static {p2, p1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 2025
    invoke-direct {p0, p1, p4, p5}, Landroid/widget/TextView;->resolveStyleAndSetTypeface(Landroid/graphics/Typeface;II)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 2027
    invoke-direct {p0, p1, p4, p5}, Landroid/widget/TextView;->resolveStyleAndSetTypeface(Landroid/graphics/Typeface;II)V

    goto :goto_0

    :cond_1
    packed-switch p3, :pswitch_data_0

    const/4 p1, 0x0

    .line 2041
    invoke-direct {p0, p1, p4, p5}, Landroid/widget/TextView;->resolveStyleAndSetTypeface(Landroid/graphics/Typeface;II)V

    goto :goto_0

    .line 2037
    :pswitch_0
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-direct {p0, p1, p4, p5}, Landroid/widget/TextView;->resolveStyleAndSetTypeface(Landroid/graphics/Typeface;II)V

    goto :goto_0

    .line 2034
    :pswitch_1
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-direct {p0, p1, p4, p5}, Landroid/widget/TextView;->resolveStyleAndSetTypeface(Landroid/graphics/Typeface;II)V

    goto :goto_0

    .line 2031
    :pswitch_2
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-direct {p0, p1, p4, p5}, Landroid/widget/TextView;->resolveStyleAndSetTypeface(Landroid/graphics/Typeface;II)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setupAutoSizeText()Z
    .locals 7

    .line 1949
    invoke-virtual {p0}, Landroid/widget/TextView;->supportsAutoSizeText()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/widget/TextView;->mAutoSizeTextType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 1952
    iget-boolean v0, p0, Landroid/widget/TextView;->mHasPresetAutoSizeValues:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mAutoSizeTextSizesInPx:[I

    array-length v0, v0

    if-nez v0, :cond_2

    .line 1953
    :cond_0
    iget v0, p0, Landroid/widget/TextView;->mAutoSizeMaxTextSizeInPx:F

    iget v3, p0, Landroid/widget/TextView;->mAutoSizeMinTextSizeInPx:F

    sub-float/2addr v0, v3

    iget v3, p0, Landroid/widget/TextView;->mAutoSizeStepGranularityInPx:F

    div-float/2addr v0, v3

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v0, v3

    add-int/2addr v0, v2

    .line 1955
    new-array v3, v0, [I

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1957
    iget v4, p0, Landroid/widget/TextView;->mAutoSizeMinTextSizeInPx:F

    int-to-float v5, v1

    iget v6, p0, Landroid/widget/TextView;->mAutoSizeStepGranularityInPx:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1960
    :cond_1
    invoke-direct {p0, v3}, Landroid/widget/TextView;->cleanupAutoSizePresetSizes([I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mAutoSizeTextSizesInPx:[I

    .line 1963
    :cond_2
    iput-boolean v2, p0, Landroid/widget/TextView;->mNeedsAutoSizeText:Z

    goto :goto_1

    .line 1965
    :cond_3
    iput-boolean v1, p0, Landroid/widget/TextView;->mNeedsAutoSizeText:Z

    .line 1968
    :goto_1
    iget-boolean p0, p0, Landroid/widget/TextView;->mNeedsAutoSizeText:Z

    return p0
.end method

.method private setupAutoSizeUniformPresetSizes(Landroid/content/res/TypedArray;)V
    .locals 4

    .line 1860
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 1861
    new-array v1, v0, [I

    if-lez v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    const/4 v3, -0x1

    .line 1865
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1867
    :cond_0
    invoke-direct {p0, v1}, Landroid/widget/TextView;->cleanupAutoSizePresetSizes([I)[I

    move-result-object p1

    iput-object p1, p0, Landroid/widget/TextView;->mAutoSizeTextSizesInPx:[I

    .line 1868
    invoke-direct {p0}, Landroid/widget/TextView;->setupAutoSizeUniformPresetSizesConfiguration()Z

    :cond_1
    return-void
.end method

.method private setupAutoSizeUniformPresetSizesConfiguration()Z
    .locals 4

    .line 1873
    iget-object v0, p0, Landroid/widget/TextView;->mAutoSizeTextSizesInPx:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 1874
    :goto_0
    iput-boolean v3, p0, Landroid/widget/TextView;->mHasPresetAutoSizeValues:Z

    .line 1875
    iget-boolean v3, p0, Landroid/widget/TextView;->mHasPresetAutoSizeValues:Z

    if-eqz v3, :cond_1

    .line 1876
    iput v2, p0, Landroid/widget/TextView;->mAutoSizeTextType:I

    .line 1877
    iget-object v3, p0, Landroid/widget/TextView;->mAutoSizeTextSizesInPx:[I

    aget v1, v3, v1

    int-to-float v1, v1

    iput v1, p0, Landroid/widget/TextView;->mAutoSizeMinTextSizeInPx:F

    .line 1878
    iget-object v1, p0, Landroid/widget/TextView;->mAutoSizeTextSizesInPx:[I

    sub-int/2addr v0, v2

    aget v0, v1, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/TextView;->mAutoSizeMaxTextSizeInPx:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 1879
    iput v0, p0, Landroid/widget/TextView;->mAutoSizeStepGranularityInPx:F

    .line 1881
    :cond_1
    iget-boolean p0, p0, Landroid/widget/TextView;->mHasPresetAutoSizeValues:Z

    return p0
.end method

.method private shareSelectedText()V
    .locals 3

    .line 11833
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11834
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 11835
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "text/plain"

    .line 11836
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.TEXT"

    .line 11837
    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 11838
    invoke-static {v0}, Landroid/text/TextUtils;->trimToParcelableSize(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "android.intent.extra.TEXT"

    .line 11839
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11840
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 11841
    iget-object v0, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result p0

    invoke-static {v0, p0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_0
    return-void
.end method

.method private shouldAdvanceFocusOnEnter()Z
    .locals 3

    .line 7516
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 7520
    :cond_0
    iget-boolean v0, p0, Landroid/widget/TextView;->mSingleLine:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 7524
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    if-ne v0, v2, :cond_3

    .line 7527
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget p0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 p0, p0, 0xff0

    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x30

    if-ne p0, v0, :cond_3

    :cond_2
    return v2

    :cond_3
    return v1
.end method

.method private shouldAdvanceFocusOnTab()Z
    .locals 2

    .line 7542
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    if-ne v0, v1, :cond_1

    .line 7545
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget p0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 p0, p0, 0xff0

    const/high16 v0, 0x40000

    if-eq p0, v0, :cond_0

    const/high16 v0, 0x20000

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v1
.end method

.method private startMarquee()V
    .locals 3

    .line 9604
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 9606
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p0, v0}, Landroid/widget/TextView;->compressText(F)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 9610
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9611
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    invoke-direct {p0}, Landroid/widget/TextView;->canMarquee()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9613
    iget v0, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-ne v0, v1, :cond_4

    const/4 v0, 0x2

    .line 9614
    iput v0, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 9615
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 9616
    iget-object v2, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    iput-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 9617
    iput-object v0, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 9618
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 9619
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 9620
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 9623
    :cond_4
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-nez v0, :cond_5

    new-instance v0, Landroid/widget/TextView$Marquee;

    invoke-direct {v0, p0}, Landroid/widget/TextView$Marquee;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 9624
    :cond_5
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    iget p0, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    invoke-virtual {v0, p0}, Landroid/widget/TextView$Marquee;->start(I)V

    :cond_6
    return-void
.end method

.method private startStopMarquee(Z)V
    .locals 2

    .line 9645
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    .line 9647
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    goto :goto_0

    .line 9649
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->stopMarquee()V

    :cond_1
    :goto_0
    return-void
.end method

.method private stopMarquee()V
    .locals 2

    .line 9629
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9630
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->stop()V

    .line 9633
    :cond_0
    iget v0, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 9634
    iput v0, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 9635
    iget-object v0, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 9636
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iput-object v1, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 9637
    iput-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v0, 0x0

    .line 9638
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 9639
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 9640
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_1
    return-void
.end method

.method private suggestedSizeFitsInSpace(ILandroid/graphics/RectF;)Z
    .locals 5

    .line 8737
    iget-object v0, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 8738
    iget-object v0, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    goto :goto_0

    .line 8739
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 8740
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v1

    .line 8741
    iget-object v2, p0, Landroid/widget/TextView;->mTempTextPaint:Landroid/text/TextPaint;

    if-nez v2, :cond_1

    .line 8742
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    iput-object v2, p0, Landroid/widget/TextView;->mTempTextPaint:Landroid/text/TextPaint;

    goto :goto_1

    .line 8744
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mTempTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->reset()V

    .line 8746
    :goto_1
    iget-object v2, p0, Landroid/widget/TextView;->mTempTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 8747
    iget-object v2, p0, Landroid/widget/TextView;->mTempTextPaint:Landroid/text/TextPaint;

    int-to-float p1, p1

    invoke-virtual {v2, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 8750
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iget-object v2, p0, Landroid/widget/TextView;->mTempTextPaint:Landroid/text/TextPaint;

    iget v3, p2, Landroid/graphics/RectF;->right:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v4, 0x0

    .line 8749
    invoke-static {v0, v4, p1, v2, v3}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 8752
    invoke-direct {p0}, Landroid/widget/TextView;->getLayoutAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 8753
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 8754
    invoke-virtual {p0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/widget/TextView;->mUseFallbackLineSpacing:Z

    .line 8755
    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 8756
    invoke-virtual {p0}, Landroid/widget/TextView;->getBreakStrategy()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 8757
    invoke-virtual {p0}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 8758
    invoke-virtual {p0}, Landroid/widget/TextView;->getJustificationMode()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setJustificationMode(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 8759
    iget v2, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/widget/TextView;->mMaximum:I

    goto :goto_2

    :cond_2
    const v2, 0x7fffffff

    :goto_2
    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 8760
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    .line 8762
    invoke-virtual {p1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p0

    const/4 p1, -0x1

    if-eq v1, p1, :cond_3

    .line 8765
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p1

    if-le p1, v1, :cond_3

    return v4

    .line 8770
    :cond_3
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getHeight()I

    move-result p0

    int-to-float p0, p0

    iget p1, p2, Landroid/graphics/RectF;->bottom:F

    cmpl-float p0, p0, p1

    if-lez p0, :cond_4

    return v4

    :cond_4
    return v3
.end method

.method private unregisterForPreDraw()V
    .locals 1

    .line 6748
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    .line 6749
    iput-boolean v0, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    .line 6750
    iput-boolean v0, p0, Landroid/widget/TextView;->mPreDrawListenerDetached:Z

    return-void
.end method

.method private updateTextColors()V
    .locals 6

    .line 5269
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    .line 5270
    iget-object v1, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 5271
    iget v3, p0, Landroid/widget/TextView;->mCurTextColor:I

    const/4 v4, 0x1

    if-eq v1, v3, :cond_0

    .line 5272
    iput v1, p0, Landroid/widget/TextView;->mCurTextColor:I

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v2

    .line 5275
    :goto_0
    iget-object v3, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_1

    .line 5276
    iget-object v3, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    .line 5277
    iget-object v5, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v5, v5, Landroid/text/TextPaint;->linkColor:I

    if-eq v3, v5, :cond_1

    .line 5278
    iget-object v1, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iput v3, v1, Landroid/text/TextPaint;->linkColor:I

    move v1, v4

    .line 5282
    :cond_1
    iget-object v3, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_2

    .line 5283
    iget-object v3, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 5284
    iget v2, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    if-eq v0, v2, :cond_2

    .line 5285
    iput v0, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    .line 5286
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    move v1, v4

    :cond_2
    if-eqz v1, :cond_4

    .line 5293
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    .line 5294
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_4
    return-void
.end method

.method private updateTextServicesLocaleAsync()V
    .locals 1

    .line 10539
    new-instance v0, Landroid/widget/TextView$3;

    invoke-direct {v0, p0}, Landroid/widget/TextView$3;-><init>(Landroid/widget/TextView;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateTextServicesLocaleLocked()V
    .locals 2

    .line 10548
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "textservices"

    .line 10549
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/TextServicesManager;

    const/4 v1, 0x1

    .line 10550
    invoke-virtual {v0, v1}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10553
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSubtype;->getLocaleObject()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 10557
    :goto_0
    iput-object v0, p0, Landroid/widget/TextView;->mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

    return-void
.end method

.method private validateAndSetAutoSizeTextTypeUniformConfiguration(FFF)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-lez v1, :cond_2

    cmpg-float v1, p2, p1

    if-lez v1, :cond_1

    cmpg-float v0, p3, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 1909
    iput v0, p0, Landroid/widget/TextView;->mAutoSizeTextType:I

    .line 1910
    iput p1, p0, Landroid/widget/TextView;->mAutoSizeMinTextSizeInPx:F

    .line 1911
    iput p2, p0, Landroid/widget/TextView;->mAutoSizeMaxTextSizeInPx:F

    .line 1912
    iput p3, p0, Landroid/widget/TextView;->mAutoSizeStepGranularityInPx:F

    const/4 p1, 0x0

    .line 1913
    iput-boolean p1, p0, Landroid/widget/TextView;->mHasPresetAutoSizeValues:Z

    return-void

    .line 1904
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "The auto-size step granularity ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "px) is less or equal to (0px)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1898
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Maximum auto-size text size ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "px) is less or equal to minimum auto-size text size ("

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "px)"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1893
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Minimum auto-size text size ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "px) is less or equal to (0px)"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addExtraDataToAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9

    if-nez p3, :cond_0

    return-void

    :cond_0
    const-string v0, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY"

    .line 10912
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_START_INDEX"

    const/4 v1, -0x1

    .line 10913
    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_LENGTH"

    .line 10915
    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    if-lez p3, :cond_4

    if-ltz v0, :cond_4

    .line 10917
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 10918
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt v0, v1, :cond_1

    goto :goto_1

    .line 10922
    :cond_1
    new-array v1, p3, [Landroid/graphics/RectF;

    .line 10923
    new-instance v8, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-direct {v8}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    add-int v5, v0, p3

    .line 10926
    invoke-virtual {p0}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v2

    int-to-float v6, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v2

    int-to-float v7, v2

    move-object v2, p0

    move-object v3, v8

    move v4, v0

    .line 10924
    invoke-virtual/range {v2 .. v7}, Landroid/widget/TextView;->populateCharacterBounds(Landroid/view/inputmethod/CursorAnchorInfo$Builder;IIFF)V

    const/4 v2, 0x0

    .line 10927
    invoke-virtual {v8, v2}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setMatrix(Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->build()Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p3, :cond_3

    add-int v4, v0, v3

    .line 10929
    invoke-virtual {v2, v4}, Landroid/view/inputmethod/CursorAnchorInfo;->getCharacterBoundsFlags(I)I

    move-result v5

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_2

    .line 10932
    invoke-virtual {v2, v4}, Landroid/view/inputmethod/CursorAnchorInfo;->getCharacterBounds(I)Landroid/graphics/RectF;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 10934
    invoke-virtual {p0, v4, v6}, Landroid/widget/TextView;->mapRectFromViewToScreenCoords(Landroid/graphics/RectF;Z)V

    .line 10935
    aput-object v4, v1, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10939
    :cond_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, p2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_2

    :cond_4
    :goto_1
    const-string p0, "TextView"

    const-string p1, "Invalid arguments for accessibility character locations"

    .line 10919
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1

    .line 9694
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 9695
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 9698
    :cond_0
    iget-object p0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final append(Ljava/lang/CharSequence;)V
    .locals 2

    .line 5236
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method public append(Ljava/lang/CharSequence;II)V
    .locals 2

    .line 5251
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_0

    .line 5252
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 5255
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;II)Landroid/text/Editable;

    .line 5257
    iget p1, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    if-eqz p1, :cond_1

    .line 5258
    iget-object p1, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    iget p2, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    invoke-static {p1, p2}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5261
    iget-boolean p1, p0, Landroid/widget/TextView;->mLinksClickable:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result p1

    if-nez p1, :cond_1

    .line 5262
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_1
    return-void
.end method

.method public autofill(Landroid/view/autofill/AutofillValue;)V
    .locals 3

    .line 10776
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 10781
    :cond_0
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object p1

    .line 10784
    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    .line 10787
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    .line 10788
    instance-of p1, p0, Landroid/text/Spannable;

    if-eqz p1, :cond_1

    .line 10789
    move-object p1, p0

    check-cast p1, Landroid/text/Spannable;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    invoke-static {p1, p0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string v0, "TextView"

    .line 10777
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " could not be autofilled into "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public beginBatchEdit()V
    .locals 1

    .line 8049
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p0}, Landroid/widget/Editor;->beginBatchEdit()V

    :cond_0
    return-void
.end method

.method public bringPointIntoView(I)Z
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 9021
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isLayoutRequested()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 9022
    iput v1, v0, Landroid/widget/TextView;->mDeferScroll:I

    return v3

    .line 9027
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->isShowingHint()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto :goto_0

    :cond_1
    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    :goto_0
    if-nez v2, :cond_2

    return v3

    .line 9031
    :cond_2
    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 9035
    sget-object v5, Landroid/widget/TextView$4;->$SwitchMap$android$text$Layout$Alignment:[I

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v6

    invoke-virtual {v6}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    move v5, v3

    goto :goto_1

    .line 9046
    :pswitch_0
    invoke-virtual {v2, v4}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    neg-int v5, v5

    goto :goto_1

    .line 9043
    :pswitch_1
    invoke-virtual {v2, v4}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    goto :goto_1

    :pswitch_2
    const/4 v5, -0x1

    goto :goto_1

    :pswitch_3
    const/4 v5, 0x1

    :goto_1
    if-lez v5, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    move v7, v3

    .line 9066
    :goto_2
    invoke-virtual {v2, v1, v7}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v1

    float-to-int v1, v1

    .line 9067
    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    add-int/lit8 v8, v4, 0x1

    .line 9068
    invoke-virtual {v2, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    .line 9070
    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v9

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v9, v9

    .line 9071
    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineRight(I)F

    move-result v10

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    .line 9072
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    .line 9074
    iget v11, v0, Landroid/widget/TextView;->mRight:I

    iget v12, v0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v11, v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    .line 9075
    iget v12, v0, Landroid/widget/TextView;->mBottom:I

    iget v13, v0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v13

    sub-int/2addr v12, v13

    .line 9076
    iget-boolean v13, v0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-nez v13, :cond_4

    sub-int v13, v10, v9

    if-le v13, v11, :cond_4

    if-le v10, v1, :cond_4

    add-int v10, v9, v11

    .line 9078
    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    :cond_4
    sub-int v13, v8, v7

    .line 9081
    div-int/lit8 v13, v13, 0x2

    .line 9084
    div-int/lit8 v14, v12, 0x4

    if-le v13, v14, :cond_5

    goto :goto_3

    :cond_5
    move v14, v13

    .line 9087
    :goto_3
    div-int/lit8 v15, v11, 0x4

    if-le v13, v15, :cond_6

    goto :goto_4

    :cond_6
    move v15, v13

    .line 9091
    :goto_4
    iget v13, v0, Landroid/widget/TextView;->mScrollX:I

    .line 9092
    iget v6, v0, Landroid/widget/TextView;->mScrollY:I

    sub-int v3, v7, v6

    if-ge v3, v14, :cond_7

    sub-int v6, v7, v14

    :cond_7
    sub-int v3, v8, v6

    sub-int v14, v12, v14

    if-le v3, v14, :cond_8

    sub-int v6, v8, v14

    :cond_8
    sub-int v3, v2, v6

    if-ge v3, v12, :cond_9

    sub-int/2addr v2, v12

    move v3, v2

    goto :goto_5

    :cond_9
    move v3, v6

    :goto_5
    const/4 v2, 0x0

    rsub-int/lit8 v6, v3, 0x0

    if-lez v6, :cond_a

    move v3, v2

    :cond_a
    if-eqz v5, :cond_c

    sub-int v6, v1, v13

    if-ge v6, v15, :cond_b

    sub-int v13, v1, v15

    :cond_b
    sub-int v6, v1, v13

    sub-int v12, v11, v15

    if-le v6, v12, :cond_c

    sub-int v6, v1, v12

    move v13, v6

    :cond_c
    if-gez v5, :cond_e

    sub-int v5, v9, v13

    if-lez v5, :cond_d

    goto :goto_6

    :cond_d
    move v9, v13

    :goto_6
    sub-int v5, v10, v9

    if-ge v5, v11, :cond_18

    sub-int v9, v10, v11

    goto :goto_9

    :cond_e
    if-lez v5, :cond_11

    sub-int v5, v10, v13

    if-ge v5, v11, :cond_f

    sub-int/2addr v10, v11

    goto :goto_7

    :cond_f
    move v10, v13

    :goto_7
    sub-int v5, v9, v10

    if-lez v5, :cond_10

    goto :goto_9

    :cond_10
    move v9, v10

    goto :goto_9

    :cond_11
    sub-int v5, v10, v9

    if-gt v5, v11, :cond_12

    sub-int/2addr v11, v5

    .line 9135
    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v9, v11

    goto :goto_9

    :cond_12
    sub-int v5, v10, v15

    if-le v1, v5, :cond_13

    sub-int v9, v10, v11

    goto :goto_9

    :cond_13
    add-int v5, v9, v15

    if-ge v1, v5, :cond_14

    goto :goto_9

    :cond_14
    if-le v9, v13, :cond_15

    goto :goto_9

    :cond_15
    add-int v5, v13, v11

    if-ge v10, v5, :cond_16

    sub-int v9, v10, v11

    goto :goto_9

    :cond_16
    sub-int v5, v1, v13

    if-ge v5, v15, :cond_17

    sub-int v5, v1, v15

    move v9, v5

    goto :goto_8

    :cond_17
    move v9, v13

    :goto_8
    sub-int v5, v1, v9

    sub-int/2addr v11, v15

    if-le v5, v11, :cond_18

    sub-int v9, v1, v11

    .line 9171
    :cond_18
    :goto_9
    iget v5, v0, Landroid/widget/TextView;->mScrollX:I

    if-ne v9, v5, :cond_1a

    iget v5, v0, Landroid/widget/TextView;->mScrollY:I

    if-eq v3, v5, :cond_19

    goto :goto_a

    :cond_19
    move v6, v2

    goto :goto_d

    .line 9172
    :cond_1a
    :goto_a
    iget-object v2, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    if-nez v2, :cond_1b

    .line 9173
    invoke-virtual {v0, v9, v3}, Landroid/widget/TextView;->scrollTo(II)V

    goto :goto_c

    .line 9175
    :cond_1b
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iget-wide v10, v0, Landroid/widget/TextView;->mLastScroll:J

    sub-long/2addr v5, v10

    .line 9176
    iget v2, v0, Landroid/widget/TextView;->mScrollX:I

    sub-int/2addr v9, v2

    .line 9177
    iget v2, v0, Landroid/widget/TextView;->mScrollY:I

    sub-int/2addr v3, v2

    const-wide/16 v10, 0xfa

    cmp-long v2, v5, v10

    if-lez v2, :cond_1c

    .line 9180
    iget-object v2, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    iget v5, v0, Landroid/widget/TextView;->mScrollX:I

    iget v6, v0, Landroid/widget/TextView;->mScrollY:I

    invoke-virtual {v2, v5, v6, v9, v3}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 9181
    iget-object v2, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getDuration()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->awakenScrollBars(I)Z

    .line 9182
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_b

    .line 9184
    :cond_1c
    iget-object v2, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 9185
    iget-object v2, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 9188
    :cond_1d
    invoke-virtual {v0, v9, v3}, Landroid/widget/TextView;->scrollBy(II)V

    .line 9191
    :goto_b
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/widget/TextView;->mLastScroll:J

    :goto_c
    const/4 v6, 0x1

    .line 9197
    :goto_d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 9205
    iget-object v2, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    if-nez v2, :cond_1e

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    .line 9206
    :cond_1e
    iget-object v2, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    add-int/lit8 v3, v1, -0x2

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v2, v3, v7, v1, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 9207
    iget-object v1, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1, v4}, Landroid/widget/TextView;->getInterestingRect(Landroid/graphics/Rect;I)V

    .line 9208
    iget-object v1, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/widget/TextView;->mScrollX:I

    iget v3, v0, Landroid/widget/TextView;->mScrollY:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 9210
    iget-object v1, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/16 v16, 0x1

    goto :goto_e

    :cond_1f
    move/from16 v16, v6

    :goto_e
    return v16

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method canCopy()Z
    .locals 3

    .line 11704
    iget-boolean v0, p0, Landroid/widget/TextView;->mIsRestrictedAcrossUser:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 11705
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-eq v0, v2, :cond_0

    return v1

    .line 11710
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 11714
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method canCut()Z
    .locals 3

    .line 11685
    iget-boolean v0, p0, Landroid/widget/TextView;->mIsRestrictedAcrossUser:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 11686
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-eq v0, v2, :cond_0

    return v1

    .line 11691
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 11695
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object p0, p0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method canPaste()Z
    .locals 3

    .line 11739
    iget-boolean v0, p0, Landroid/widget/TextView;->mIsRestrictedAcrossUser:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 11740
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-eq v0, v2, :cond_0

    return v1

    .line 11745
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_1

    .line 11747
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    if-ltz v0, :cond_1

    .line 11748
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    if-ltz v0, :cond_1

    .line 11749
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ClipboardManager;

    .line 11750
    invoke-virtual {p0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method canPasteAsPlainText()Z
    .locals 3

    .line 11754
    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 11759
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ClipboardManager;

    .line 11760
    invoke-virtual {p0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object p0

    .line 11761
    invoke-virtual {p0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    const-string/jumbo v2, "text/plain"

    .line 11762
    invoke-virtual {v0, v2}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v2

    .line 11763
    invoke-virtual {p0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz v2, :cond_1

    .line 11764
    instance-of v1, p0, Landroid/text/Spanned;

    if-eqz v1, :cond_1

    .line 11765
    check-cast p0, Landroid/text/Spanned;

    .line 11766
    invoke-static {p0}, Landroid/text/TextUtils;->hasStyleSpan(Landroid/text/Spanned;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string/jumbo p0, "text/html"

    .line 11770
    invoke-virtual {v0, p0}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method canProcessText()Z
    .locals 2

    .line 11774
    invoke-virtual {p0}, Landroid/widget/TextView;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 11777
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->canShare()Z

    move-result p0

    return p0
.end method

.method canRedo()Z
    .locals 1

    .line 11681
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p0}, Landroid/widget/Editor;->canRedo()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method canRequestAutofill()Z
    .locals 2

    .line 10757
    invoke-direct {p0}, Landroid/widget/TextView;->isAutofillable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 10760
    :cond_0
    iget-object p0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const-class v0, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/autofill/AutofillManager;

    if-eqz p0, :cond_1

    .line 10762
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->isEnabled()Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method canSelectAllText()Z
    .locals 1

    .line 11781
    invoke-virtual {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    if-nez v0, :cond_1

    .line 11782
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-eq v0, p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method canSelectText()Z
    .locals 1

    .line 10432
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method canShare()Z
    .locals 1

    .line 11722
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->canStartActivityForResult()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 11725
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method canUndo()Z
    .locals 1

    .line 11677
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p0}, Landroid/widget/Editor;->canUndo()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public cancelLongPress()V
    .locals 1

    .line 10204
    invoke-super {p0}, Landroid/view/View;->cancelLongPress()V

    .line 10205
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    :cond_0
    return-void
.end method

.method public clearComposingText()V
    .locals 1

    .line 10049
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    .line 10050
    iget-object p0, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-static {p0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    :cond_0
    return-void
.end method

.method protected computeHorizontalScrollRange()I
    .locals 2

    .line 10285
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1

    .line 10286
    iget-boolean v0, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 10287
    iget-object p0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineWidth(I)F

    move-result p0

    float-to-int p0, p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {p0}, Landroid/text/Layout;->getWidth()I

    move-result p0

    :goto_0
    return p0

    .line 10290
    :cond_1
    invoke-super {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result p0

    return p0
.end method

.method public computeScroll()V
    .locals 1

    .line 9283
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    .line 9284
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9285
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView;->mScrollX:I

    .line 9286
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView;->mScrollY:I

    .line 9287
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidateParentCaches()V

    .line 9288
    invoke-virtual {p0}, Landroid/widget/TextView;->postInvalidate()V

    :cond_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 2

    .line 10303
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .line 10295
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 10296
    iget-object p0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {p0}, Landroid/text/Layout;->getHeight()I

    move-result p0

    return p0

    .line 10298
    :cond_0
    invoke-super {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result p0

    return p0
.end method

.method convertToLocalHorizontalCoordinate(F)F
    .locals 2

    .line 11875
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    const/4 v0, 0x0

    .line 11877
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 11878
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 11879
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p1, p0

    return p1
.end method

.method public debug(I)V
    .locals 1

    .line 9327
    invoke-super {p0, p1}, Landroid/view/View;->debug(I)V

    .line 9329
    invoke-static {p1}, Landroid/widget/TextView;->debugIndent(I)Ljava/lang/String;

    move-result-object p1

    .line 9330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "frame={"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Landroid/widget/TextView;->mLeft:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Landroid/widget/TextView;->mTop:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Landroid/widget/TextView;->mRight:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Landroid/widget/TextView;->mBottom:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "} scroll={"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Landroid/widget/TextView;->mScrollX:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Landroid/widget/TextView;->mScrollY:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "} "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9334
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 9336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "mText=\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\" "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9337
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1

    .line 9338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "mLayout width="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {p1}, Landroid/text/Layout;->getWidth()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " height="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 9339
    invoke-virtual {p0}, Landroid/text/Layout;->getHeight()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 9342
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "mText=NULL"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    const-string p0, "View"

    .line 9344
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected deleteText_internal(II)V
    .locals 0

    .line 12071
    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast p0, Landroid/text/Editable;

    invoke-interface {p0, p1, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    return-void
.end method

.method public didTouchFocusSelect()Z
    .locals 1

    .line 10199
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean p0, p0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public drawableHotspotChanged(FF)V
    .locals 3

    .line 5320
    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 5322
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_1

    .line 5323
    iget-object p0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object p0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    .line 5325
    invoke-virtual {v2, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 6

    .line 5300
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 5302
    iget-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    .line 5303
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    .line 5304
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5305
    :cond_2
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 5308
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_5

    .line 5309
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    .line 5310
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, v1, v3

    if-eqz v4, :cond_4

    .line 5311
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 5312
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 3

    .line 12208
    invoke-super {p0, p1}, Landroid/view/View;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 12210
    invoke-virtual {p0}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    const-string/jumbo v1, "text:ellipsize"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    .line 12211
    :cond_0
    invoke-virtual {v0}, Landroid/text/TextUtils$TruncateAt;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text:textSize"

    .line 12212
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    const-string/jumbo v0, "text:scaledTextSize"

    .line 12213
    invoke-virtual {p0}, Landroid/widget/TextView;->getScaledTextSize()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    const-string/jumbo v0, "text:typefaceStyle"

    .line 12214
    invoke-virtual {p0}, Landroid/widget/TextView;->getTypefaceStyle()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string/jumbo v0, "text:selectionStart"

    .line 12215
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string/jumbo v0, "text:selectionEnd"

    .line 12216
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string/jumbo v0, "text:curTextColor"

    .line 12217
    iget v1, p0, Landroid/widget/TextView;->mCurTextColor:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string/jumbo v0, "text:text"

    .line 12218
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p1, v0, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text:gravity"

    .line 12219
    iget p0, p0, Landroid/widget/TextView;->mGravity:I

    invoke-virtual {p1, v0, p0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    return-void
.end method

.method public endBatchEdit()V
    .locals 1

    .line 8053
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p0}, Landroid/widget/Editor;->endBatchEdit()V

    :cond_0
    return-void
.end method

.method public extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    .locals 0

    .line 7922
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 7923
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p0, p1, p2}, Landroid/widget/Editor;->extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z

    move-result p0

    return p0
.end method

.method public findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)V"
        }
    .end annotation

    .line 10308
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 10309
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 10310
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 10311
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 10312
    iget-object p3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    .line 10313
    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 10314
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    .line 10590
    const-class p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAccessibilitySelectionEnd()I
    .locals 0

    .line 12178
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result p0

    return p0
.end method

.method public getAccessibilitySelectionStart()I
    .locals 0

    .line 12163
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p0

    return p0
.end method

.method public final getAutoLinkMask()I
    .locals 0

    .line 3396
    iget p0, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    return p0
.end method

.method public getAutoSizeMaxTextSize()I
    .locals 0

    .line 1846
    iget p0, p0, Landroid/widget/TextView;->mAutoSizeMaxTextSizeInPx:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public getAutoSizeMinTextSize()I
    .locals 0

    .line 1833
    iget p0, p0, Landroid/widget/TextView;->mAutoSizeMinTextSizeInPx:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public getAutoSizeStepGranularity()I
    .locals 0

    .line 1820
    iget p0, p0, Landroid/widget/TextView;->mAutoSizeStepGranularityInPx:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public getAutoSizeTextAvailableSizes()[I
    .locals 0

    .line 1856
    iget-object p0, p0, Landroid/widget/TextView;->mAutoSizeTextSizesInPx:[I

    return-object p0
.end method

.method public getAutoSizeTextType()I
    .locals 0

    .line 1809
    iget p0, p0, Landroid/widget/TextView;->mAutoSizeTextType:I

    return p0
.end method

.method public getAutofillType()I
    .locals 0

    .line 10795
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result p0

    return p0
.end method

.method public getAutofillValue()Landroid/view/autofill/AutofillValue;
    .locals 1

    .line 10809
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10810
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->trimToParcelableSize(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 10811
    invoke-static {p0}, Landroid/view/autofill/AutofillValue;->forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBaseline()I
    .locals 2

    .line 7355
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v0, :cond_0

    .line 7356
    invoke-super {p0}, Landroid/view/View;->getBaseline()I

    move-result p0

    return p0

    .line 7359
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getBaselineOffset()I

    move-result v0

    iget-object p0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method getBaselineOffset()I
    .locals 2

    .line 7364
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v0, v0, 0x70

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 7365
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7368
    :goto_0
    iget-object v1, p0, Landroid/widget/TextView;->mParent:Landroid/view/ViewParent;

    invoke-static {v1}, Landroid/widget/TextView;->isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7369
    invoke-virtual {p0}, Landroid/widget/TextView;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Insets;->top:I

    sub-int/2addr v0, v1

    .line 7372
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method protected getBottomPaddingOffset()I
    .locals 1

    .line 6854
    iget v0, p0, Landroid/widget/TextView;->mShadowDy:F

    iget p0, p0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v0, p0

    const/4 p0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public getBreakStrategy()I
    .locals 0

    .line 4116
    iget p0, p0, Landroid/widget/TextView;->mBreakStrategy:I

    return p0
.end method

.method public getCompoundDrawablePadding()I
    .locals 0

    .line 3141
    iget-object p0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz p0, :cond_0

    .line 3142
    iget p0, p0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCompoundDrawableTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 3177
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object p0, p0, Landroid/widget/TextView$Drawables;->mTintList:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getCompoundDrawableTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 3211
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object p0, p0, Landroid/widget/TextView$Drawables;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getCompoundDrawables()[Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 3082
    iget-object p0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz p0, :cond_0

    .line 3084
    iget-object p0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, [Landroid/graphics/drawable/Drawable;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_0
    const/4 p0, 0x4

    .line 3086
    new-array p0, p0, [Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, p0, v0

    const/4 v0, 0x1

    aput-object v1, p0, v0

    const/4 v0, 0x2

    aput-object v1, p0, v0

    const/4 v0, 0x3

    aput-object v1, p0, v0

    return-object p0
.end method

.method public getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 3100
    iget-object p0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz p0, :cond_0

    .line 3102
    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    aput-object v5, v2, v1

    iget-object v1, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v4

    aput-object v1, v2, v4

    iget-object v1, p0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    aput-object v1, v2, v0

    iget-object p0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object p0, p0, v3

    aput-object p0, v2, v3

    return-object v2

    .line 3107
    :cond_0
    new-array p0, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object v2, p0, v1

    aput-object v2, p0, v4

    aput-object v2, p0, v0

    aput-object v2, p0, v3

    return-object p0
.end method

.method public getCompoundPaddingBottom()I
    .locals 3

    .line 2484
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_1

    .line 2485
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    .line 2488
    :cond_0
    iget p0, p0, Landroid/widget/TextView;->mPaddingBottom:I

    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    add-int/2addr p0, v0

    return p0

    .line 2486
    :cond_1
    :goto_0
    iget p0, p0, Landroid/widget/TextView;->mPaddingBottom:I

    return p0
.end method

.method public getCompoundPaddingEnd()I
    .locals 2

    .line 2538
    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    .line 2539
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2542
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result p0

    return p0

    .line 2544
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result p0

    return p0
.end method

.method public getCompoundPaddingLeft()I
    .locals 3

    .line 2497
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_1

    .line 2498
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    .line 2501
    :cond_0
    iget p0, p0, Landroid/widget/TextView;->mPaddingLeft:I

    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    add-int/2addr p0, v0

    return p0

    .line 2499
    :cond_1
    :goto_0
    iget p0, p0, Landroid/widget/TextView;->mPaddingLeft:I

    return p0
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .line 2510
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_1

    .line 2511
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    .line 2514
    :cond_0
    iget p0, p0, Landroid/widget/TextView;->mPaddingRight:I

    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    add-int/2addr p0, v0

    return p0

    .line 2512
    :cond_1
    :goto_0
    iget p0, p0, Landroid/widget/TextView;->mPaddingRight:I

    return p0
.end method

.method public getCompoundPaddingStart()I
    .locals 2

    .line 2523
    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    .line 2524
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2527
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result p0

    return p0

    .line 2529
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result p0

    return p0
.end method

.method public getCompoundPaddingTop()I
    .locals 3

    .line 2471
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_1

    .line 2472
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    .line 2475
    :cond_0
    iget p0, p0, Landroid/widget/TextView;->mPaddingTop:I

    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    add-int/2addr p0, v0

    return p0

    .line 2473
    :cond_1
    :goto_0
    iget p0, p0, Landroid/widget/TextView;->mPaddingTop:I

    return p0
.end method

.method public final getCurrentHintTextColor()I
    .locals 1

    .line 4593
    iget-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget p0, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    goto :goto_0

    :cond_0
    iget p0, p0, Landroid/widget/TextView;->mCurTextColor:I

    :goto_0
    return p0
.end method

.method public final getCurrentTextColor()I
    .locals 0

    .line 4352
    iget p0, p0, Landroid/widget/TextView;->mCurTextColor:I

    return p0
.end method

.method public getCustomInsertionActionModeCallback()Landroid/view/ActionMode$Callback;
    .locals 1

    .line 11519
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object p0, p0, Landroid/widget/Editor;->mCustomInsertionActionModeCallback:Landroid/view/ActionMode$Callback;

    :goto_0
    return-object p0
.end method

.method public getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;
    .locals 1

    .line 11482
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object p0, p0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    :goto_0
    return-object p0
.end method

.method protected getDefaultEditable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getDefaultMovementMethod()Landroid/text/method/MovementMethod;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEditableText()Landroid/text/Editable;
    .locals 1

    .line 2208
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast p0, Landroid/text/Editable;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getEditorForTesting()Landroid/widget/Editor;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2258
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    return-object p0
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 0
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 9541
    iget-object p0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-object p0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 1

    .line 6454
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object p0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    :goto_0
    return-object p0
.end method

.method public getExtendedPaddingBottom()I
    .locals 4

    .line 2591
    iget v0, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2592
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result p0

    return p0

    .line 2595
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v0, :cond_1

    .line 2596
    invoke-direct {p0}, Landroid/widget/TextView;->assumeLayout()V

    .line 2599
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mMaximum:I

    if-gt v0, v1, :cond_2

    .line 2600
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result p0

    return p0

    .line 2603
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    .line 2604
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v1

    .line 2605
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    .line 2606
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget v3, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    if-lt v0, v2, :cond_3

    return v1

    .line 2612
    :cond_3
    iget p0, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 p0, p0, 0x70

    const/16 v3, 0x30

    if-ne p0, v3, :cond_4

    add-int/2addr v1, v2

    sub-int/2addr v1, v0

    return v1

    :cond_4
    const/16 v3, 0x50

    if-ne p0, v3, :cond_5

    return v1

    :cond_5
    sub-int/2addr v2, v0

    .line 2618
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    return v1
.end method

.method public getExtendedPaddingTop()I
    .locals 4

    .line 2554
    iget v0, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2555
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result p0

    return p0

    .line 2558
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v0, :cond_1

    .line 2559
    invoke-direct {p0}, Landroid/widget/TextView;->assumeLayout()V

    .line 2562
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mMaximum:I

    if-gt v0, v1, :cond_2

    .line 2563
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result p0

    return p0

    .line 2566
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    .line 2567
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v1

    .line 2568
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    .line 2569
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget v3, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    if-lt v1, v2, :cond_3

    return v0

    .line 2575
    :cond_3
    iget p0, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 p0, p0, 0x70

    const/16 v3, 0x30

    if-ne p0, v3, :cond_4

    return v0

    :cond_4
    const/16 v3, 0x50

    if-ne p0, v3, :cond_5

    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    return v0

    :cond_5
    sub-int/2addr v2, v1

    .line 2581
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    return v0
.end method

.method protected getFadeHeight(Z)I
    .locals 0

    .line 7397
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {p0}, Landroid/text/Layout;->getHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected getFadeTop(Z)I
    .locals 3

    .line 7380
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 7383
    :cond_0
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v0, v0, 0x70

    const/16 v2, 0x30

    if-eq v0, v2, :cond_1

    const/4 v0, 0x1

    .line 7384
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v1

    :cond_1
    if-eqz p1, :cond_2

    .line 7387
    invoke-virtual {p0}, Landroid/widget/TextView;->getTopPaddingOffset()I

    move-result p1

    add-int/2addr v1, p1

    .line 7389
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public getFilters()[Landroid/text/InputFilter;
    .locals 0

    .line 6567
    iget-object p0, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    return-object p0
.end method

.method public getFirstBaselineToTopHeight()I
    .locals 1

    .line 3375
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 6

    .line 7262
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v0, :cond_0

    .line 7263
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    return-void

    .line 7267
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    if-gez v0, :cond_1

    .line 7269
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    return-void

    .line 7273
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_6

    if-lt v1, v0, :cond_2

    goto :goto_0

    .line 7281
    :cond_2
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 7282
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 7283
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    iput v5, p1, Landroid/graphics/Rect;->top:I

    .line 7284
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    iput v5, p1, Landroid/graphics/Rect;->bottom:I

    if-ne v3, v4, :cond_3

    .line 7286
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 7287
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 7291
    :cond_3
    iget-boolean v3, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v3, :cond_5

    .line 7292
    iget-object v3, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    if-nez v3, :cond_4

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 7293
    :cond_4
    iget-object v3, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 7294
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v4, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v3, v1, v0, v4}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 7295
    iput-boolean v2, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 7297
    :cond_5
    sget-object v1, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    monitor-enter v1

    .line 7298
    :try_start_0
    iget-object v0, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    sget-object v3, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 7299
    sget-object v0, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    sub-int/2addr v0, v4

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 7300
    sget-object v0, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    add-int/2addr v0, v4

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 7301
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 7275
    :cond_6
    :goto_0
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 7276
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 7277
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 7278
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, -0x2

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 7279
    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 7306
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    .line 7307
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    .line 7308
    iget v3, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v3, v3, 0x70

    const/16 v4, 0x30

    if-eq v3, v4, :cond_7

    .line 7309
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 7311
    :cond_7
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 7312
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result p0

    .line 7313
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public getFontFeatureSettings()Ljava/lang/String;
    .locals 0

    .line 4072
    iget-object p0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/text/TextPaint;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFontVariationSettings()Ljava/lang/String;
    .locals 0

    .line 4086
    iget-object p0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/text/TextPaint;->getFontVariationSettings()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFreezesText()Z
    .locals 0

    .line 5487
    iget-boolean p0, p0, Landroid/widget/TextView;->mFreezesText:Z

    return p0
.end method

.method public getGravity()I
    .locals 0

    .line 4684
    iget p0, p0, Landroid/widget/TextView;->mGravity:I

    return p0
.end method

.method public getHighlightColor()I
    .locals 0

    .line 4377
    iget p0, p0, Landroid/widget/TextView;->mHighlightColor:I

    return p0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 0
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 5933
    iget-object p0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    return-object p0
.end method

.method final getHintLayout()Landroid/text/Layout;
    .locals 0

    .line 2236
    iget-object p0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    return-object p0
.end method

.method public final getHintTextColors()Landroid/content/res/ColorStateList;
    .locals 0

    .line 4583
    iget-object p0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getHorizontalOffsetForDrawables()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getHorizontallyScrolling()Z
    .locals 0

    .line 4740
    iget-boolean p0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    return p0
.end method

.method public getHyphenationFrequency()I
    .locals 0

    .line 4148
    iget p0, p0, Landroid/widget/TextView;->mHyphenationFrequency:I

    return p0
.end method

.method public getImeActionId()I
    .locals 1

    .line 6240
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_0

    .line 6241
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object p0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget p0, p0, Landroid/widget/Editor$InputContentType;->imeActionId:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getImeActionLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 6229
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_0

    .line 6230
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object p0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object p0, p0, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getImeHintLocales()Landroid/os/LocaleList;
    .locals 2

    .line 6439
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 6442
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-nez v0, :cond_1

    return-object v1

    .line 6445
    :cond_1
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object p0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object p0, p0, Landroid/widget/Editor$InputContentType;->imeHintLocales:Landroid/os/LocaleList;

    return-object p0
.end method

.method public getImeOptions()I
    .locals 1

    .line 6201
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_0

    .line 6202
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object p0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget p0, p0, Landroid/widget/Editor$InputContentType;->imeOptions:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getIncludeFontPadding()Z
    .locals 0

    .line 8480
    iget-boolean p0, p0, Landroid/widget/TextView;->mIncludePad:Z

    return p0
.end method

.method public getInputExtras(Z)Landroid/os/Bundle;
    .locals 2

    .line 6396
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-object v1

    .line 6397
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 6398
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    return-object v1

    .line 6400
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 6402
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_4

    if-nez p1, :cond_3

    return-object v1

    .line 6404
    :cond_3
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object p1, p1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p1, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    .line 6406
    :cond_4
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object p0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object p0, p0, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    return-object p0
.end method

.method public getInputType()I
    .locals 1

    .line 6177
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget p0, p0, Landroid/widget/Editor;->mInputType:I

    :goto_0
    return p0
.end method

.method public getIterableTextForAccessibility()Ljava/lang/CharSequence;
    .locals 0

    .line 12121
    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getIteratorForGranularity(I)Landroid/view/AccessibilityIterators$TextSegmentIterator;
    .locals 2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 12146
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 12147
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 12149
    invoke-static {}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->getInstance()Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;

    move-result-object p1

    .line 12150
    invoke-virtual {p1, p0}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->initialize(Landroid/widget/TextView;)V

    return-object p1

    .line 12137
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 12138
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 12140
    invoke-static {}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->getInstance()Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;

    move-result-object p1

    .line 12141
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->initialize(Landroid/text/Spannable;Landroid/text/Layout;)V

    return-object p1

    .line 12155
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->getIteratorForGranularity(I)Landroid/view/AccessibilityIterators$TextSegmentIterator;

    move-result-object p0

    return-object p0
.end method

.method public getJustificationMode()I
    .locals 0

    .line 4204
    iget p0, p0, Landroid/widget/TextView;->mJustificationMode:I

    return p0
.end method

.method public final getKeyListener()Landroid/text/method/KeyListener;
    .locals 1

    .line 2297
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object p0, p0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    :goto_0
    return-object p0
.end method

.method public getLastBaselineToBottomHeight()I
    .locals 1

    .line 3385
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final getLayout()Landroid/text/Layout;
    .locals 0

    .line 2228
    iget-object p0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    return-object p0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 3

    .line 10230
    invoke-direct {p0}, Landroid/widget/TextView;->isMarqueeFadeEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10231
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 10232
    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->shouldDrawLeftFade()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10233
    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->getScroll()F

    move-result v0

    invoke-direct {p0, v0, v1}, Landroid/widget/TextView;->getHorizontalFadingEdgeStrength(FF)F

    move-result p0

    return p0

    :cond_0
    return v1

    .line 10237
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 10238
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v0

    .line 10239
    iget v2, p0, Landroid/widget/TextView;->mScrollX:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2

    return v1

    .line 10240
    :cond_2
    iget v1, p0, Landroid/widget/TextView;->mScrollX:I

    int-to-float v1, v1

    invoke-direct {p0, v1, v0}, Landroid/widget/TextView;->getHorizontalFadingEdgeStrength(FF)F

    move-result p0

    return p0

    .line 10242
    :cond_3
    invoke-super {p0}, Landroid/view/View;->getLeftFadingEdgeStrength()F

    move-result p0

    return p0
.end method

.method protected getLeftPaddingOffset()I
    .locals 2

    .line 6843
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/TextView;->mShadowDx:F

    iget p0, p0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v1, p0

    const/4 p0, 0x0

    .line 6844
    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    float-to-int p0, p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getLetterSpacing()F
    .locals 0

    .line 4033
    iget-object p0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result p0

    return p0
.end method

.method getLineAtCoordinate(F)I
    .locals 2

    .line 11884
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    const/4 v0, 0x0

    .line 11886
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 11887
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 11888
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 11889
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p0

    return p0
.end method

.method getLineAtCoordinateUnclamped(F)I
    .locals 1

    .line 11893
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 11894
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 11895
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p0

    return p0
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .locals 3

    .line 7334
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    if-eqz p2, :cond_0

    .line 7336
    invoke-virtual {p2, p0, p0, p0, p0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    return p0

    .line 7340
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0, p1, p2}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    move-result p1

    .line 7342
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v0

    .line 7343
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_2

    const/4 v1, 0x1

    .line 7344
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    if-eqz p2, :cond_3

    .line 7347
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result p0

    invoke-virtual {p2, p0, v0}, Landroid/graphics/Rect;->offset(II)V

    :cond_3
    add-int/2addr p1, v0

    return p1
.end method

.method public getLineCount()I
    .locals 1

    .line 7321
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getLineHeight()I
    .locals 2

    .line 2219
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/TextView;->mSpacingMult:F

    mul-float/2addr v0, v1

    iget p0, p0, Landroid/widget/TextView;->mSpacingAdd:F

    add-float/2addr v0, p0

    invoke-static {v0}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result p0

    return p0
.end method

.method public getLineSpacingExtra()F
    .locals 0

    .line 5203
    iget p0, p0, Landroid/widget/TextView;->mSpacingAdd:F

    return p0
.end method

.method public getLineSpacingMultiplier()F
    .locals 0

    .line 5189
    iget p0, p0, Landroid/widget/TextView;->mSpacingMult:F

    return p0
.end method

.method public final getLinkTextColors()Landroid/content/res/ColorStateList;
    .locals 0

    .line 4635
    iget-object p0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public final getLinksClickable()Z
    .locals 0

    .line 4523
    iget-boolean p0, p0, Landroid/widget/TextView;->mLinksClickable:Z

    return p0
.end method

.method public getMarqueeRepeatLimit()I
    .locals 0

    .line 9532
    iget p0, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    return p0
.end method

.method public getMaxEms()I
    .locals 2

    .line 5067
    iget v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p0, p0, Landroid/widget/TextView;->mMaxWidth:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getMaxHeight()I
    .locals 2

    .line 4901
    iget v0, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget p0, p0, Landroid/widget/TextView;->mMaximum:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getMaxLines()I
    .locals 2

    .line 4862
    iget v0, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p0, p0, Landroid/widget/TextView;->mMaximum:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getMaxWidth()I
    .locals 2

    .line 5106
    iget v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget p0, p0, Landroid/widget/TextView;->mMaxWidth:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getMinEms()I
    .locals 2

    .line 4985
    iget v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p0, p0, Landroid/widget/TextView;->mMinWidth:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getMinHeight()I
    .locals 2

    .line 4823
    iget v0, p0, Landroid/widget/TextView;->mMinMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget p0, p0, Landroid/widget/TextView;->mMinimum:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getMinLines()I
    .locals 2

    .line 4780
    iget v0, p0, Landroid/widget/TextView;->mMinMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p0, p0, Landroid/widget/TextView;->mMinimum:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getMinWidth()I
    .locals 2

    .line 5028
    iget v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget p0, p0, Landroid/widget/TextView;->mMinWidth:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final getMovementMethod()Landroid/text/method/MovementMethod;
    .locals 0

    .line 2371
    iget-object p0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    return-object p0
.end method

.method getOffsetAtCoordinate(IF)I
    .locals 0

    .line 11899
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result p2

    .line 11900
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p0

    return p0
.end method

.method public getOffsetForPosition(FF)I
    .locals 1

    .line 11868
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 11869
    :cond_0
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result p2

    .line 11870
    invoke-virtual {p0, p2, p1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result p0

    return p0
.end method

.method public getPaint()Landroid/text/TextPaint;
    .locals 0

    .line 4486
    iget-object p0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method public getPaintFlags()I
    .locals 0

    .line 4693
    iget-object p0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/text/TextPaint;->getFlags()I

    move-result p0

    return p0
.end method

.method public getPrivateImeOptions()Ljava/lang/String;
    .locals 1

    .line 6362
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_0

    .line 6363
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object p0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object p0, p0, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 3

    .line 10247
    invoke-direct {p0}, Landroid/widget/TextView;->isMarqueeFadeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10248
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 10249
    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->getMaxFadeScroll()F

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->getScroll()F

    move-result v0

    invoke-direct {p0, v1, v0}, Landroid/widget/TextView;->getHorizontalFadingEdgeStrength(FF)F

    move-result p0

    return p0

    .line 10250
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 10251
    iget v0, p0, Landroid/widget/TextView;->mScrollX:I

    .line 10252
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 10253
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineRight(I)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_1

    const/4 p0, 0x0

    return p0

    .line 10255
    :cond_1
    invoke-direct {p0, v0, v1}, Landroid/widget/TextView;->getHorizontalFadingEdgeStrength(FF)F

    move-result p0

    return p0

    .line 10257
    :cond_2
    invoke-super {p0}, Landroid/view/View;->getRightFadingEdgeStrength()F

    move-result p0

    return p0
.end method

.method protected getRightPaddingOffset()I
    .locals 2

    .line 6859
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mPaddingRight:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    iget v1, p0, Landroid/widget/TextView;->mShadowDx:F

    iget p0, p0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v1, p0

    const/4 p0, 0x0

    .line 6860
    invoke-static {p0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-int p0, p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getScaledTextSize()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    .line 3806
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    iget-object p0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget p0, p0, Landroid/text/TextPaint;->density:F

    div-float/2addr v0, p0

    return v0
.end method

.method getSelectedText()Ljava/lang/String;
    .locals 2

    .line 9374
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 9378
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 9379
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 9381
    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {p0, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 9380
    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSelectionEnd()I
    .locals 0
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    .line 9360
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result p0

    return p0
.end method

.method public getSelectionStart()I
    .locals 0
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    .line 9352
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p0

    return p0
.end method

.method public getShadowColor()I
    .locals 0

    .line 4477
    iget p0, p0, Landroid/widget/TextView;->mShadowColor:I

    return p0
.end method

.method public getShadowDx()F
    .locals 0

    .line 4452
    iget p0, p0, Landroid/widget/TextView;->mShadowDx:F

    return p0
.end method

.method public getShadowDy()F
    .locals 0

    .line 4464
    iget p0, p0, Landroid/widget/TextView;->mShadowDy:F

    return p0
.end method

.method public getShadowRadius()F
    .locals 0

    .line 4441
    iget p0, p0, Landroid/widget/TextView;->mShadowRadius:F

    return p0
.end method

.method public final getShowSoftInputOnFocus()Z
    .locals 1

    .line 4396
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean p0, p0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public getSpellCheckerLocale()Ljava/util/Locale;
    .locals 1

    const/4 v0, 0x1

    .line 10532
    invoke-direct {p0, v0}, Landroid/widget/TextView;->getTextServicesLocale(Z)Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 0
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 2190
    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method getTextClassificationSession()Landroid/view/textclassifier/TextClassifier;
    .locals 4

    .line 11553
    iget-object v0, p0, Landroid/widget/TextView;->mTextClassificationSession:Landroid/view/textclassifier/TextClassifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mTextClassificationSession:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0}, Landroid/view/textclassifier/TextClassifier;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11554
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/textclassifier/TextClassificationManager;

    .line 11555
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassificationManager;

    if-eqz v0, :cond_4

    .line 11558
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "edittext"

    goto :goto_0

    .line 11560
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "textview"

    goto :goto_0

    :cond_2
    const-string v1, "nosel-textview"

    .line 11565
    :goto_0
    new-instance v2, Landroid/view/textclassifier/TextClassificationContext$Builder;

    iget-object v3, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    .line 11567
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/view/textclassifier/TextClassificationContext$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 11568
    invoke-virtual {v2}, Landroid/view/textclassifier/TextClassificationContext$Builder;->build()Landroid/view/textclassifier/TextClassificationContext;

    move-result-object v1

    .line 11569
    iget-object v2, p0, Landroid/widget/TextView;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;

    if-eqz v2, :cond_3

    .line 11570
    iget-object v2, p0, Landroid/widget/TextView;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;

    invoke-virtual {v0, v1, v2}, Landroid/view/textclassifier/TextClassificationManager;->createTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassifier;)Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mTextClassificationSession:Landroid/view/textclassifier/TextClassifier;

    goto :goto_1

    .line 11573
    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextClassificationManager;->createTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;)Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mTextClassificationSession:Landroid/view/textclassifier/TextClassifier;

    goto :goto_1

    .line 11577
    :cond_4
    sget-object v0, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    iput-object v0, p0, Landroid/widget/TextView;->mTextClassificationSession:Landroid/view/textclassifier/TextClassifier;

    .line 11580
    :cond_5
    :goto_1
    iget-object p0, p0, Landroid/widget/TextView;->mTextClassificationSession:Landroid/view/textclassifier/TextClassifier;

    return-object p0
.end method

.method public getTextClassifier()Landroid/view/textclassifier/TextClassifier;
    .locals 1

    .line 11536
    iget-object v0, p0, Landroid/widget/TextView;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;

    if-nez v0, :cond_1

    .line 11537
    iget-object p0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const-class v0, Landroid/view/textclassifier/TextClassificationManager;

    .line 11538
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/textclassifier/TextClassificationManager;

    if-eqz p0, :cond_0

    .line 11540
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationManager;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object p0

    return-object p0

    .line 11542
    :cond_0
    sget-object p0, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    return-object p0

    .line 11544
    :cond_1
    iget-object p0, p0, Landroid/widget/TextView;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;

    return-object p0
.end method

.method public final getTextColors()Landroid/content/res/ColorStateList;
    .locals 0

    .line 4342
    iget-object p0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method protected getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;
    .locals 4

    .line 11960
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11962
    sget-object p0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    return-object p0

    .line 11965
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    .line 11971
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object p0

    .line 11972
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getDigitStrings()[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v1

    .line 11975
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result p0

    .line 11976
    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result p0

    if-eq p0, v2, :cond_2

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    goto :goto_0

    .line 11981
    :cond_1
    sget-object p0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    return-object p0

    .line 11979
    :cond_2
    :goto_0
    sget-object p0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    return-object p0

    .line 11986
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v0

    if-ne v0, v2, :cond_4

    move v1, v2

    .line 11989
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirection()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    if-eqz v1, :cond_5

    .line 11992
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_1

    .line 12005
    :pswitch_0
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    return-object p0

    .line 12003
    :pswitch_1
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    return-object p0

    .line 12001
    :pswitch_2
    sget-object p0, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    return-object p0

    .line 11999
    :pswitch_3
    sget-object p0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    return-object p0

    .line 11997
    :pswitch_4
    sget-object p0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    return-object p0

    .line 11995
    :pswitch_5
    sget-object p0, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    return-object p0

    .line 11993
    :cond_5
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTextLocale()Ljava/util/Locale;
    .locals 0

    .line 3693
    iget-object p0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public getTextLocales()Landroid/os/LocaleList;
    .locals 0

    .line 3702
    iget-object p0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/text/TextPaint;->getTextLocales()Landroid/os/LocaleList;

    move-result-object p0

    return-object p0
.end method

.method public getTextMetricsParams()Landroid/text/PrecomputedText$Params;
    .locals 4

    .line 4158
    new-instance v0, Landroid/text/PrecomputedText$Params;

    new-instance v1, Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v2

    iget v3, p0, Landroid/widget/TextView;->mBreakStrategy:I

    iget p0, p0, Landroid/widget/TextView;->mHyphenationFrequency:I

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/text/PrecomputedText$Params;-><init>(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;II)V

    return-object v0
.end method

.method public getTextScaleX()F
    .locals 0

    .line 3888
    iget-object p0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result p0

    return p0
.end method

.method public getTextServicesLocale()Ljava/util/Locale;
    .locals 1

    const/4 v0, 0x0

    .line 10493
    invoke-direct {p0, v0}, Landroid/widget/TextView;->getTextServicesLocale(Z)Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public getTextSize()F
    .locals 0
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    .line 3797
    iget-object p0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/text/TextPaint;->getTextSize()F

    move-result p0

    return p0
.end method

.method protected getTopPaddingOffset()I
    .locals 1

    .line 6849
    iget v0, p0, Landroid/widget/TextView;->mShadowDy:F

    iget p0, p0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v0, p0

    const/4 p0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public getTotalPaddingBottom()I
    .locals 2

    .line 2669
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getBottomVerticalOffset(Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getTotalPaddingEnd()I
    .locals 0

    .line 2651
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingEnd()I

    move-result p0

    return p0
.end method

.method public getTotalPaddingLeft()I
    .locals 0

    .line 2627
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result p0

    return p0
.end method

.method public getTotalPaddingRight()I
    .locals 0

    .line 2635
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result p0

    return p0
.end method

.method public getTotalPaddingStart()I
    .locals 0

    .line 2643
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingStart()I

    move-result p0

    return p0
.end method

.method public getTotalPaddingTop()I
    .locals 2

    .line 2660
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final getTransformationMethod()Landroid/text/method/TransformationMethod;
    .locals 0

    .line 2422
    iget-object p0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    return-object p0
.end method

.method getTransformedText(II)Ljava/lang/CharSequence;
    .locals 1

    .line 11363
    iget-object v0, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 0

    .line 3948
    iget-object p0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public getTypefaceStyle()I
    .locals 0
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NORMAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "BOLD"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "ITALIC"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "BOLD_ITALIC"
            .end subannotation
        }
    .end annotation

    .line 3817
    iget-object p0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3818
    invoke-virtual {p0}, Landroid/graphics/Typeface;->getStyle()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getUndoManager()Landroid/content/UndoManager;
    .locals 1

    .line 2249
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "not implemented"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getUrls()[Landroid/text/style/URLSpan;
    .locals 3

    .line 4534
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4535
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {v0, v1, p0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/style/URLSpan;

    return-object p0

    .line 4537
    :cond_0
    new-array p0, v1, [Landroid/text/style/URLSpan;

    return-object p0
.end method

.method getVerticalOffset(Z)I
    .locals 2

    .line 6582
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v0, v0, 0x70

    .line 6584
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez p1, :cond_0

    .line 6585
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz p1, :cond_0

    .line 6586
    iget-object v1, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    :cond_0
    const/16 p1, 0x30

    if-eq v0, p1, :cond_2

    .line 6590
    invoke-direct {p0, v1}, Landroid/widget/TextView;->getBoxHeight(Landroid/text/Layout;)I

    move-result p0

    .line 6591
    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result p1

    if-ge p1, p0, :cond_2

    const/16 v1, 0x50

    if-ne v0, v1, :cond_1

    sub-int/2addr p0, p1

    goto :goto_0

    :cond_1
    sub-int/2addr p0, p1

    shr-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getWordIterator()Landroid/text/method/WordIterator;
    .locals 1

    .line 10570
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    .line 10571
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p0}, Landroid/widget/Editor;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public handleBackInTextActionModeIfNeeded(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 7434
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getTextActionMode()Landroid/view/ActionMode;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 7438
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 7439
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7441
    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_1
    return v2

    .line 7444
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 7445
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 7447
    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 7449
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_4

    .line 7450
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    return v2

    :cond_4
    return v1

    :cond_5
    :goto_0
    return v1
.end method

.method public handleClick(Landroid/view/textclassifier/TextLinks$TextLinkSpan;)Z
    .locals 4

    .line 11623
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11624
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 11625
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    .line 11626
    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 11627
    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    if-ltz v1, :cond_0

    .line 11628
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p1, v0, :cond_0

    if-ge v1, p1, :cond_0

    .line 11629
    new-instance v0, Landroid/view/textclassifier/TextClassification$Request$Builder;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {v0, v2, v1, p1}, Landroid/view/textclassifier/TextClassification$Request$Builder;-><init>(Ljava/lang/CharSequence;II)V

    .line 11631
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextLocales()Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/textclassifier/TextClassification$Request$Builder;->setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextClassification$Request$Builder;

    move-result-object p1

    .line 11632
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification$Request$Builder;->build()Landroid/view/textclassifier/TextClassification$Request;

    move-result-object p1

    .line 11633
    new-instance v0, Landroid/widget/-$$Lambda$TextView$DJlzb7VS7J_1890Kto7GAApQDN0;

    invoke-direct {v0, p0, p1}, Landroid/widget/-$$Lambda$TextView$DJlzb7VS7J_1890Kto7GAApQDN0;-><init>(Landroid/widget/TextView;Landroid/view/textclassifier/TextClassification$Request;)V

    .line 11635
    sget-object p0, Landroid/widget/-$$Lambda$TextView$jQz3_DIfGrNeNdu_95_wi6UkW4E;->INSTANCE:Landroid/widget/-$$Lambda$TextView$jQz3_DIfGrNeNdu_95_wi6UkW4E;

    .line 11651
    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    const/4 v0, 0x0

    const-wide/16 v1, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 11652
    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/util/concurrent/CompletableFuture;->completeOnTimeout(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    .line 11653
    invoke-virtual {p1, p0}, Ljava/util/concurrent/CompletableFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method handleTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    const-wide/16 v0, 0x0

    .line 9850
    sput-wide v0, Landroid/widget/TextView;->sLastCutCopyOrTextChangedTime:J

    .line 9852
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    :goto_0
    if-eqz v0, :cond_1

    .line 9853
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v1, :cond_2

    .line 9854
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->updateAfterEdit()V

    :cond_2
    if-eqz v0, :cond_4

    const/4 v1, 0x1

    .line 9857
    iput-boolean v1, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 9858
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-gez v1, :cond_3

    .line 9859
    iput p2, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    add-int v1, p2, p3

    .line 9860
    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    goto :goto_1

    .line 9862
    :cond_3
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 9863
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    add-int v2, p2, p3

    iget v3, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 9865
    :goto_1
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    sub-int v2, p4, p3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    .line 9867
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->resetErrorChangedFlag()V

    .line 9868
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->sendOnTextChanged(Ljava/lang/CharSequence;III)V

    .line 9869
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 6951
    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    if-nez v0, :cond_2

    .line 6952
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->isHorizontalFadingEdgeEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method hasPasswordTransformationMethod()Z
    .locals 0

    .line 6047
    iget-object p0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    instance-of p0, p0, Landroid/text/method/PasswordTransformationMethod;

    return p0
.end method

.method public hasSelection()Z
    .locals 1

    .line 9367
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 9368
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result p0

    if-ltz v0, :cond_0

    if-lez p0, :cond_0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hideErrorIfUnchanged()V
    .locals 1

    .line 7747
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mErrorWasChanged:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 7748
    invoke-virtual {p0, v0, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public hideFloatingToolbar(I)V
    .locals 1

    .line 11671
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    .line 11672
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p0, p1}, Landroid/widget/Editor;->hideFloatingToolbar(I)V

    :cond_0
    return-void
.end method

.method invalidateCursor()V
    .locals 1

    .line 6670
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 6672
    invoke-direct {p0, v0, v0, v0}, Landroid/widget/TextView;->invalidateCursor(III)V

    return-void
.end method

.method invalidateCursorPath()V
    .locals 8

    .line 6629
    iget-boolean v0, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v0, :cond_0

    .line 6630
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidateCursor()V

    goto/16 :goto_0

    .line 6632
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    .line 6633
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 6635
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    .line 6636
    sget-object v2, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    monitor-enter v2

    .line 6646
    :try_start_0
    iget-object v3, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v5, v3, v4

    if-gez v5, :cond_1

    move v3, v4

    :cond_1
    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 6654
    iget-object v4, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    sget-object v5, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    int-to-float v0, v0

    .line 6656
    sget-object v4, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v0

    sub-float/2addr v4, v3

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    int-to-float v1, v1

    sget-object v5, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v1

    sub-float/2addr v5, v3

    float-to-double v5, v5

    .line 6657
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    sget-object v6, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v6

    add-float/2addr v0, v3

    float-to-double v6, v0

    .line 6658
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    sget-object v6, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v6

    add-float/2addr v1, v3

    float-to-double v6, v1

    .line 6659
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    .line 6656
    invoke-virtual {p0, v4, v5, v0, v1}, Landroid/widget/TextView;->invalidate(IIII)V

    .line 6660
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6662
    :cond_2
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 6663
    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v0

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v3, v4, v5, v0}, Landroid/widget/TextView;->invalidate(IIII)V

    :goto_0
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 10

    .line 6892
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 6893
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 6894
    iget v2, p0, Landroid/widget/TextView;->mScrollX:I

    .line 6895
    iget v3, p0, Landroid/widget/TextView;->mScrollY:I

    .line 6900
    iget-object v4, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    .line 6902
    iget-object v6, v4, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v1

    const/4 v7, 0x2

    if-ne p1, v6, :cond_0

    .line 6903
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v1

    .line 6904
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v6

    .line 6905
    iget v8, p0, Landroid/widget/TextView;->mBottom:I

    iget v9, p0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v8, v9

    sub-int/2addr v8, v6

    sub-int/2addr v8, v1

    .line 6907
    iget v6, p0, Landroid/widget/TextView;->mPaddingLeft:I

    add-int/2addr v2, v6

    .line 6908
    iget v4, v4, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    sub-int/2addr v8, v4

    div-int/2addr v8, v7

    add-int/2addr v1, v8

    add-int/2addr v3, v1

    :goto_0
    move v1, v5

    goto :goto_1

    .line 6910
    :cond_0
    iget-object v6, v4, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v7

    if-ne p1, v6, :cond_1

    .line 6911
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v1

    .line 6912
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v6

    .line 6913
    iget v8, p0, Landroid/widget/TextView;->mBottom:I

    iget v9, p0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v8, v9

    sub-int/2addr v8, v6

    sub-int/2addr v8, v1

    .line 6915
    iget v6, p0, Landroid/widget/TextView;->mRight:I

    iget v9, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v6, v9

    iget v9, p0, Landroid/widget/TextView;->mPaddingRight:I

    sub-int/2addr v6, v9

    iget v9, v4, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    sub-int/2addr v6, v9

    add-int/2addr v2, v6

    .line 6916
    iget v4, v4, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    sub-int/2addr v8, v4

    div-int/2addr v8, v7

    add-int/2addr v1, v8

    add-int/2addr v3, v1

    goto :goto_0

    .line 6918
    :cond_1
    iget-object v6, v4, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v5

    if-ne p1, v6, :cond_2

    .line 6919
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    .line 6920
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v6

    .line 6921
    iget v8, p0, Landroid/widget/TextView;->mRight:I

    iget v9, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v8, v9

    sub-int/2addr v8, v6

    sub-int/2addr v8, v1

    .line 6923
    iget v4, v4, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    sub-int/2addr v8, v4

    div-int/2addr v8, v7

    add-int/2addr v1, v8

    add-int/2addr v2, v1

    .line 6924
    iget v1, p0, Landroid/widget/TextView;->mPaddingTop:I

    add-int/2addr v3, v1

    goto :goto_0

    .line 6926
    :cond_2
    iget-object v6, v4, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x3

    aget-object v6, v6, v8

    if-ne p1, v6, :cond_3

    .line 6927
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    .line 6928
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v6

    .line 6929
    iget v8, p0, Landroid/widget/TextView;->mRight:I

    iget v9, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v8, v9

    sub-int/2addr v8, v6

    sub-int/2addr v8, v1

    .line 6931
    iget v6, v4, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    sub-int/2addr v8, v6

    div-int/2addr v8, v7

    add-int/2addr v1, v8

    add-int/2addr v2, v1

    .line 6932
    iget v1, p0, Landroid/widget/TextView;->mBottom:I

    iget v6, p0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v1, v6

    iget v6, p0, Landroid/widget/TextView;->mPaddingBottom:I

    sub-int/2addr v1, v6

    iget v4, v4, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    sub-int/2addr v1, v4

    add-int/2addr v3, v1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 6938
    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v3

    iget v6, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v3

    invoke-virtual {p0, v4, v5, v6, v0}, Landroid/widget/TextView;->invalidate(IIII)V

    :cond_4
    if-nez v1, :cond_5

    .line 6944
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    return-void
.end method

.method invalidateRegion(IIZ)V
    .locals 8

    .line 6687
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v0, :cond_0

    .line 6688
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto/16 :goto_2

    .line 6690
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 6691
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    if-lez v0, :cond_1

    .line 6700
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v2

    sub-int/2addr v1, v2

    :cond_1
    if-ne p1, p2, :cond_2

    move v2, v0

    goto :goto_0

    .line 6708
    :cond_2
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 6711
    :goto_0
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    if-eqz p3, :cond_3

    .line 6714
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 6715
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 6716
    iget v5, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 6717
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 6720
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    .line 6721
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v6

    add-int/2addr v5, v6

    if-ne v0, v2, :cond_4

    if-nez p3, :cond_4

    .line 6725
    iget-object p3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {p3, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result p1

    float-to-int p1, p1

    .line 6726
    iget-object p3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {p3, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result p2

    float-to-double p2, p2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr p2, v6

    double-to-int p2, p2

    add-int/2addr p1, v4

    add-int/2addr p2, v4

    goto :goto_1

    .line 6732
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result p2

    sub-int p2, p1, p2

    move p1, v4

    .line 6735
    :goto_1
    iget p3, p0, Landroid/widget/TextView;->mScrollX:I

    add-int/2addr p3, p1

    add-int/2addr v1, v5

    iget p1, p0, Landroid/widget/TextView;->mScrollX:I

    add-int/2addr p1, p2

    add-int/2addr v5, v3

    invoke-virtual {p0, p3, v1, p1, v5}, Landroid/widget/TextView;->invalidate(IIII)V

    :goto_2
    return-void
.end method

.method public isAccessibilitySelectionExtendable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isAllCaps()Z
    .locals 0

    .line 9423
    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 9424
    instance-of p0, p0, Landroid/text/method/AllCapsTransformationMethod;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCursorVisible()Z
    .locals 1

    .line 9592
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean p0, p0, Landroid/widget/Editor;->mCursorVisible:Z

    :goto_0
    return p0
.end method

.method isDeviceProvisioned()Z
    .locals 5

    .line 11729
    iget v0, p0, Landroid/widget/TextView;->mDeviceProvisionedState:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 11731
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "device_provisioned"

    .line 11730
    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 11733
    :goto_0
    iput v0, p0, Landroid/widget/TextView;->mDeviceProvisionedState:I

    .line 11735
    :cond_1
    iget p0, p0, Landroid/widget/TextView;->mDeviceProvisionedState:I

    if-ne p0, v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    return v1
.end method

.method public isElegantTextHeight()Z
    .locals 0

    .line 4021
    iget-object p0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/text/TextPaint;->isElegantTextHeight()Z

    move-result p0

    return p0
.end method

.method public isFallbackLineSpacing()Z
    .locals 0

    .line 4008
    iget-boolean p0, p0, Landroid/widget/TextView;->mUseFallbackLineSpacing:Z

    return p0
.end method

.method isInBatchEditMode()Z
    .locals 2

    .line 11932
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 11933
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-eqz v0, :cond_2

    .line 11935
    iget p0, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-lez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 11937
    :cond_2
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean p0, p0, Landroid/widget/Editor;->mInBatchEditControllers:Z

    return p0
.end method

.method public isInExtractedMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isInputMethodTarget()Z
    .locals 1

    .line 11252
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11253
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 2

    .line 6838
    iget v0, p0, Landroid/widget/TextView;->mShadowRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object p0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isPositionVisible(FF)Z
    .locals 5

    .line 11025
    sget-object v0, Landroid/widget/TextView;->TEMP_POSITION:[F

    monitor-enter v0

    .line 11026
    :try_start_0
    sget-object v1, Landroid/widget/TextView;->TEMP_POSITION:[F

    const/4 v2, 0x0

    .line 11027
    aput p1, v1, v2

    const/4 p1, 0x1

    .line 11028
    aput p2, v1, p1

    move-object p2, p0

    :goto_0
    if-eqz p2, :cond_5

    if-eq p2, p0, :cond_0

    .line 11034
    aget v3, v1, v2

    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    aput v3, v1, v2

    .line 11035
    aget v3, v1, p1

    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    aput v3, v1, p1

    .line 11038
    :cond_0
    aget v3, v1, v2

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_4

    aget v3, v1, p1

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_4

    aget v3, v1, v2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_4

    aget v3, v1, p1

    .line 11039
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    goto :goto_1

    .line 11043
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v3

    if-nez v3, :cond_2

    .line 11044
    invoke-virtual {p2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 11047
    :cond_2
    aget v3, v1, v2

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 11048
    aget v3, v1, p1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, v1, p1

    .line 11050
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .line 11051
    instance-of v3, p2, Landroid/view/View;

    if-eqz v3, :cond_3

    .line 11052
    check-cast p2, Landroid/view/View;

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    goto :goto_0

    .line 11040
    :cond_4
    :goto_1
    monitor-exit v0

    return v2

    .line 11058
    :cond_5
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method isSingleLine()Z
    .locals 0

    .line 5937
    iget-boolean p0, p0, Landroid/widget/TextView;->mSingleLine:Z

    return p0
.end method

.method public isSuggestionsEnabled()Z
    .locals 4

    .line 11431
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 11432
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    return v1

    .line 11435
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    const/high16 v3, 0x80000

    and-int/2addr v0, v3

    if-lez v0, :cond_2

    return v1

    .line 11437
    :cond_2
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget p0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 p0, p0, 0xff0

    if-eqz p0, :cond_3

    const/16 v0, 0x30

    if-eq p0, v0, :cond_3

    const/16 v0, 0x50

    if-eq p0, v0, :cond_3

    const/16 v0, 0x40

    if-eq p0, v0, :cond_3

    const/16 v0, 0xa0

    if-ne p0, v0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1
.end method

.method isTextEditable()Z
    .locals 1

    .line 10189
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTextSelectable()Z
    .locals 1

    .line 6968
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean p0, p0, Landroid/widget/Editor;->mTextIsSelectable:Z

    :goto_0
    return p0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 3

    .line 6878
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 6879
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_1

    .line 6880
    iget-object p0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object p0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    .line 6882
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public length()I
    .locals 0

    .line 2198
    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    return p0
.end method

.method public makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V
    .locals 28
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v8, p0

    move/from16 v15, p5

    .line 8187
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->stopMarquee()V

    .line 8190
    iget v0, v8, Landroid/widget/TextView;->mMaximum:I

    iput v0, v8, Landroid/widget/TextView;->mOldMaximum:I

    .line 8191
    iget v0, v8, Landroid/widget/TextView;->mMaxMode:I

    iput v0, v8, Landroid/widget/TextView;->mOldMaxMode:I

    const/4 v14, 0x1

    .line 8193
    iput-boolean v14, v8, Landroid/widget/TextView;->mHighlightPathBogus:Z

    const/4 v13, 0x0

    if-gez p1, :cond_0

    move v9, v13

    goto :goto_0

    :cond_0
    move/from16 v9, p1

    :goto_0
    if-gez p2, :cond_1

    move v10, v13

    goto :goto_1

    :cond_1
    move/from16 v10, p2

    .line 8202
    :goto_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getLayoutAlignment()Landroid/text/Layout$Alignment;

    move-result-object v12

    .line 8203
    iget-boolean v0, v8, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v0, :cond_3

    iget-object v0, v8, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_3

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-eq v12, v0, :cond_2

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v12, v0, :cond_3

    :cond_2
    move/from16 v25, v14

    goto :goto_2

    :cond_3
    move/from16 v25, v13

    :goto_2
    if-eqz v25, :cond_4

    .line 8207
    iget-object v0, v8, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    move v11, v0

    goto :goto_3

    :cond_4
    move v11, v13

    .line 8208
    :goto_3
    iget-object v0, v8, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    if-nez v0, :cond_5

    move/from16 v16, v14

    goto :goto_4

    :cond_5
    move/from16 v16, v13

    .line 8209
    :goto_4
    iget-object v0, v8, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_6

    iget v0, v8, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eqz v0, :cond_6

    move/from16 v17, v14

    goto :goto_5

    :cond_6
    move/from16 v17, v13

    .line 8211
    :goto_5
    iget-object v0, v8, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 8212
    iget-object v1, v8, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v1, v2, :cond_7

    iget v1, v8, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-ne v1, v14, :cond_7

    .line 8214
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    :cond_7
    move-object v7, v0

    .line 8217
    iget-object v0, v8, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    if-nez v0, :cond_8

    .line 8218
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v0

    iput-object v0, v8, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 8221
    :cond_8
    iget-object v0, v8, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-ne v7, v0, :cond_9

    move/from16 v18, v14

    goto :goto_6

    :cond_9
    move/from16 v18, v13

    :goto_6
    move-object/from16 v0, p0

    move v1, v9

    move-object/from16 v2, p3

    move/from16 v3, p5

    move-object v4, v12

    move/from16 v5, v16

    move-object v6, v7

    move-object v13, v7

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Landroid/widget/TextView;->makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, v8, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v17, :cond_c

    .line 8224
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v13, v0, :cond_a

    .line 8225
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    :goto_7
    move-object v6, v0

    goto :goto_8

    :cond_a
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    goto :goto_7

    .line 8226
    :goto_8
    iget-object v0, v8, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eq v13, v0, :cond_b

    move v7, v14

    goto :goto_9

    :cond_b
    const/4 v7, 0x0

    :goto_9
    move-object/from16 v0, p0

    move v1, v9

    move-object/from16 v2, p3

    move/from16 v3, p5

    move-object v4, v12

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v7}, Landroid/widget/TextView;->makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, v8, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 8230
    :cond_c
    iget-object v0, v8, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v0, :cond_d

    move/from16 v26, v14

    goto :goto_a

    :cond_d
    const/16 v26, 0x0

    :goto_a
    const/4 v0, 0x0

    .line 8231
    iput-object v0, v8, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 8233
    iget-object v0, v8, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_19

    if-eqz v26, :cond_e

    move v13, v9

    goto :goto_b

    :cond_e
    move v13, v10

    .line 8236
    :goto_b
    sget-object v0, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v1, p4

    if-ne v1, v0, :cond_10

    .line 8237
    iget-object v0, v8, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iget-object v1, v8, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v2, v8, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget-object v3, v8, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    invoke-static {v0, v1, v2, v3}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 8240
    iput-object v0, v8, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    :cond_f
    move-object v6, v0

    goto :goto_c

    :cond_10
    move-object v6, v1

    :goto_c
    if-eqz v6, :cond_15

    .line 8245
    iget v0, v6, Landroid/text/BoringLayout$Metrics;->width:I

    if-gt v0, v13, :cond_13

    if-eqz v26, :cond_11

    iget v0, v6, Landroid/text/BoringLayout$Metrics;->width:I

    if-gt v0, v15, :cond_13

    .line 8247
    :cond_11
    iget-object v0, v8, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-eqz v0, :cond_12

    .line 8248
    iget-object v0, v8, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    iget-object v1, v8, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iget-object v2, v8, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v3, v8, Landroid/widget/TextView;->mSpacingMult:F

    iget v4, v8, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v5, v8, Landroid/widget/TextView;->mIncludePad:Z

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move/from16 v19, v13

    move-object/from16 v20, v12

    move/from16 v21, v3

    move/from16 v22, v4

    move-object/from16 v23, v6

    move/from16 v24, v5

    invoke-virtual/range {v16 .. v24}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v0

    iput-object v0, v8, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto :goto_d

    .line 8252
    :cond_12
    iget-object v0, v8, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iget-object v1, v8, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v4, v8, Landroid/widget/TextView;->mSpacingMult:F

    iget v5, v8, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v7, v8, Landroid/widget/TextView;->mIncludePad:Z

    move v2, v13

    move-object v3, v12

    invoke-static/range {v0 .. v7}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v0

    iput-object v0, v8, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 8257
    :goto_d
    iget-object v0, v8, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    check-cast v0, Landroid/text/BoringLayout;

    iput-object v0, v8, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    goto/16 :goto_e

    :cond_13
    if-eqz v26, :cond_15

    .line 8258
    iget v0, v6, Landroid/text/BoringLayout$Metrics;->width:I

    if-gt v0, v13, :cond_15

    .line 8259
    iget-object v0, v8, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-eqz v0, :cond_14

    .line 8260
    iget-object v9, v8, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    iget-object v10, v8, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iget-object v0, v8, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v1, v8, Landroid/widget/TextView;->mSpacingMult:F

    iget v2, v8, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v3, v8, Landroid/widget/TextView;->mIncludePad:Z

    iget-object v4, v8, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move v5, v11

    move-object v11, v0

    move-object v0, v12

    move v12, v13

    move/from16 v27, v5

    move v7, v13

    const/4 v5, 0x0

    move-object v13, v0

    move v14, v1

    move v1, v15

    move v15, v2

    move-object/from16 v16, v6

    move/from16 v17, v3

    move-object/from16 v18, v4

    move/from16 v19, p5

    invoke-virtual/range {v9 .. v19}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    iput-object v2, v8, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto :goto_f

    :cond_14
    move/from16 v27, v11

    move-object v0, v12

    move v7, v13

    move v1, v15

    const/4 v5, 0x0

    .line 8265
    iget-object v9, v8, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iget-object v10, v8, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v13, v8, Landroid/widget/TextView;->mSpacingMult:F

    iget v14, v8, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v2, v8, Landroid/widget/TextView;->mIncludePad:Z

    iget-object v3, v8, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move v11, v7

    move-object v15, v6

    move/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v18, p5

    invoke-static/range {v9 .. v18}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    iput-object v2, v8, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto :goto_f

    :cond_15
    :goto_e
    move/from16 v27, v11

    move-object v0, v12

    move v7, v13

    move v1, v15

    const/4 v5, 0x0

    .line 8273
    :goto_f
    iget-object v2, v8, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v2, :cond_18

    .line 8274
    iget-object v2, v8, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iget-object v3, v8, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    .line 8275
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-object v4, v8, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 8274
    invoke-static {v2, v5, v3, v4, v7}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 8276
    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget-object v2, v8, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 8277
    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget v2, v8, Landroid/widget/TextView;->mSpacingAdd:F

    iget v3, v8, Landroid/widget/TextView;->mSpacingMult:F

    .line 8278
    invoke-virtual {v0, v2, v3}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget-boolean v2, v8, Landroid/widget/TextView;->mIncludePad:Z

    .line 8279
    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget-boolean v2, v8, Landroid/widget/TextView;->mUseFallbackLineSpacing:Z

    .line 8280
    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget v2, v8, Landroid/widget/TextView;->mBreakStrategy:I

    .line 8281
    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget v2, v8, Landroid/widget/TextView;->mHyphenationFrequency:I

    .line 8282
    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget v2, v8, Landroid/widget/TextView;->mJustificationMode:I

    .line 8283
    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setJustificationMode(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 8284
    iget v2, v8, Landroid/widget/TextView;->mMaxMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_16

    iget v2, v8, Landroid/widget/TextView;->mMaximum:I

    goto :goto_10

    :cond_16
    const v2, 0x7fffffff

    :goto_10
    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    if-eqz v26, :cond_17

    .line 8286
    iget-object v2, v8, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 8287
    invoke-virtual {v2, v1}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    .line 8289
    :cond_17
    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, v8, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto :goto_11

    :cond_18
    const/4 v3, 0x1

    goto :goto_11

    :cond_19
    move/from16 v27, v11

    move v3, v14

    move v1, v15

    const/4 v5, 0x0

    :goto_11
    if-nez p6, :cond_1a

    if-eqz v25, :cond_1b

    .line 8293
    iget-object v0, v8, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    move/from16 v13, v27

    if-eq v13, v0, :cond_1b

    .line 8294
    :cond_1a
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 8297
    :cond_1b
    iget-object v0, v8, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v2, :cond_1d

    int-to-float v0, v1

    .line 8298
    invoke-direct {v8, v0}, Landroid/widget/TextView;->compressText(F)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 8299
    iget-object v0, v8, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1c

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1c

    .line 8303
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->startMarquee()V

    goto :goto_12

    .line 8306
    :cond_1c
    iput-boolean v3, v8, Landroid/widget/TextView;->mRestartMarquee:Z

    .line 8312
    :cond_1d
    :goto_12
    iget-object v0, v8, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1e

    iget-object v0, v8, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    :cond_1e
    return-void
.end method

.method protected makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;
    .locals 15

    move-object v0, p0

    move/from16 v12, p1

    move/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v11, p6

    .line 8332
    invoke-virtual {p0}, Landroid/widget/TextView;->useDynamicLayout()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 8333
    iget-object v1, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    iget-object v3, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v1, v3, v12}, Landroid/text/DynamicLayout$Builder;->obtain(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Landroid/text/DynamicLayout$Builder;

    move-result-object v1

    iget-object v3, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    .line 8335
    invoke-virtual {v1, v3}, Landroid/text/DynamicLayout$Builder;->setDisplayText(Ljava/lang/CharSequence;)Landroid/text/DynamicLayout$Builder;

    move-result-object v1

    .line 8336
    invoke-virtual {v1, v14}, Landroid/text/DynamicLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/DynamicLayout$Builder;

    move-result-object v1

    iget-object v3, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 8337
    invoke-virtual {v1, v3}, Landroid/text/DynamicLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/DynamicLayout$Builder;

    move-result-object v1

    iget v3, v0, Landroid/widget/TextView;->mSpacingAdd:F

    iget v4, v0, Landroid/widget/TextView;->mSpacingMult:F

    .line 8338
    invoke-virtual {v1, v3, v4}, Landroid/text/DynamicLayout$Builder;->setLineSpacing(FF)Landroid/text/DynamicLayout$Builder;

    move-result-object v1

    iget-boolean v3, v0, Landroid/widget/TextView;->mIncludePad:Z

    .line 8339
    invoke-virtual {v1, v3}, Landroid/text/DynamicLayout$Builder;->setIncludePad(Z)Landroid/text/DynamicLayout$Builder;

    move-result-object v1

    iget-boolean v3, v0, Landroid/widget/TextView;->mUseFallbackLineSpacing:Z

    .line 8340
    invoke-virtual {v1, v3}, Landroid/text/DynamicLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/DynamicLayout$Builder;

    move-result-object v1

    iget v3, v0, Landroid/widget/TextView;->mBreakStrategy:I

    .line 8341
    invoke-virtual {v1, v3}, Landroid/text/DynamicLayout$Builder;->setBreakStrategy(I)Landroid/text/DynamicLayout$Builder;

    move-result-object v1

    iget v3, v0, Landroid/widget/TextView;->mHyphenationFrequency:I

    .line 8342
    invoke-virtual {v1, v3}, Landroid/text/DynamicLayout$Builder;->setHyphenationFrequency(I)Landroid/text/DynamicLayout$Builder;

    move-result-object v1

    iget v3, v0, Landroid/widget/TextView;->mJustificationMode:I

    .line 8343
    invoke-virtual {v1, v3}, Landroid/text/DynamicLayout$Builder;->setJustificationMode(I)Landroid/text/DynamicLayout$Builder;

    move-result-object v1

    .line 8344
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v2, v11

    :cond_0
    invoke-virtual {v1, v2}, Landroid/text/DynamicLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/DynamicLayout$Builder;

    move-result-object v1

    .line 8345
    invoke-virtual {v1, v13}, Landroid/text/DynamicLayout$Builder;->setEllipsizedWidth(I)Landroid/text/DynamicLayout$Builder;

    move-result-object v1

    .line 8346
    invoke-virtual {v1}, Landroid/text/DynamicLayout$Builder;->build()Landroid/text/DynamicLayout;

    move-result-object v2

    :cond_1
    :goto_0
    move-object v13, v11

    goto/16 :goto_3

    .line 8348
    :cond_2
    sget-object v1, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v3, p2

    if-ne v3, v1, :cond_4

    .line 8349
    iget-object v1, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v3, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v4, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget-object v5, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    invoke-static {v1, v3, v4, v5}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 8351
    iput-object v1, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    :cond_3
    move-object v8, v1

    goto :goto_1

    :cond_4
    move-object v8, v3

    :goto_1
    if-eqz v8, :cond_1

    .line 8356
    iget v1, v8, Landroid/text/BoringLayout$Metrics;->width:I

    if-gt v1, v12, :cond_7

    if-eqz v11, :cond_5

    iget v1, v8, Landroid/text/BoringLayout$Metrics;->width:I

    if-gt v1, v13, :cond_7

    :cond_5
    if-eqz p7, :cond_6

    .line 8358
    iget-object v1, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-eqz v1, :cond_6

    .line 8359
    iget-object v1, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    iget-object v2, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v3, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v6, v0, Landroid/widget/TextView;->mSpacingMult:F

    iget v7, v0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v9, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v4, p1

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v9}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v1

    goto :goto_2

    .line 8363
    :cond_6
    iget-object v1, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v5, v0, Landroid/widget/TextView;->mSpacingMult:F

    iget v6, v0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v9, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v3, p1

    move-object/from16 v4, p4

    move-object v7, v8

    move v8, v9

    invoke-static/range {v1 .. v8}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v1

    :goto_2
    move-object v2, v1

    if-eqz p7, :cond_1

    .line 8369
    move-object v1, v2

    check-cast v1, Landroid/text/BoringLayout;

    iput-object v1, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    goto :goto_0

    :cond_7
    if-eqz p5, :cond_1

    .line 8371
    iget v1, v8, Landroid/text/BoringLayout$Metrics;->width:I

    if-gt v1, v12, :cond_1

    if-eqz p7, :cond_8

    .line 8372
    iget-object v1, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-eqz v1, :cond_8

    .line 8373
    iget-object v1, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    iget-object v2, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v3, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v6, v0, Landroid/widget/TextView;->mSpacingMult:F

    iget v7, v0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v9, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v4, p1

    move-object/from16 v5, p4

    move-object/from16 v10, p6

    move-object v13, v11

    move/from16 v11, p3

    invoke-virtual/range {v1 .. v11}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    goto :goto_3

    :cond_8
    move-object v13, v11

    .line 8378
    iget-object v1, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v5, v0, Landroid/widget/TextView;->mSpacingMult:F

    iget v6, v0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v9, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v3, p1

    move-object/from16 v4, p4

    move-object v7, v8

    move v8, v9

    move-object/from16 v9, p6

    move/from16 v10, p3

    invoke-static/range {v1 .. v10}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    :goto_3
    if-nez v2, :cond_b

    .line 8387
    iget-object v1, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v3, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    .line 8388
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-object v4, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 8387
    invoke-static {v1, v2, v3, v4, v12}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    .line 8389
    invoke-virtual {v1, v14}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget-object v2, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 8390
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget v2, v0, Landroid/widget/TextView;->mSpacingAdd:F

    iget v3, v0, Landroid/widget/TextView;->mSpacingMult:F

    .line 8391
    invoke-virtual {v1, v2, v3}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget-boolean v2, v0, Landroid/widget/TextView;->mIncludePad:Z

    .line 8392
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget-boolean v2, v0, Landroid/widget/TextView;->mUseFallbackLineSpacing:Z

    .line 8393
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget v2, v0, Landroid/widget/TextView;->mBreakStrategy:I

    .line 8394
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget v2, v0, Landroid/widget/TextView;->mHyphenationFrequency:I

    .line 8395
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget v2, v0, Landroid/widget/TextView;->mJustificationMode:I

    .line 8396
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setJustificationMode(I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    .line 8397
    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    iget v0, v0, Landroid/widget/TextView;->mMaximum:I

    goto :goto_4

    :cond_9
    const v0, 0x7fffffff

    :goto_4
    invoke-virtual {v1, v0}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    if-eqz p5, :cond_a

    .line 8399
    invoke-virtual {v0, v13}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    move/from16 v2, p3

    .line 8400
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    .line 8402
    :cond_a
    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v2

    :cond_b
    return-object v2
.end method

.method public moveCursorToVisibleOffset()Z
    .locals 10

    .line 9227
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 9230
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 9231
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    .line 9238
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 9240
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    .line 9241
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    .line 9242
    iget v5, p0, Landroid/widget/TextView;->mBottom:I

    iget v6, p0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int v6, v4, v3

    .line 9243
    div-int/lit8 v7, v6, 0x2

    .line 9244
    div-int/lit8 v8, v5, 0x4

    if-le v7, v8, :cond_2

    move v7, v8

    .line 9247
    :cond_2
    iget v8, p0, Landroid/widget/TextView;->mScrollY:I

    add-int v9, v8, v7

    if-ge v3, v9, :cond_3

    .line 9250
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    add-int/2addr v9, v6

    invoke-virtual {v2, v9}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    goto :goto_0

    :cond_3
    add-int/2addr v5, v8

    sub-int/2addr v5, v7

    if-le v4, v5, :cond_4

    .line 9252
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    sub-int/2addr v5, v6

    invoke-virtual {v2, v5}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    .line 9257
    :cond_4
    :goto_0
    iget v3, p0, Landroid/widget/TextView;->mRight:I

    iget v4, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 9258
    iget v4, p0, Landroid/widget/TextView;->mScrollX:I

    .line 9259
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    int-to-float v6, v4

    invoke-virtual {v5, v2, v6}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v5

    .line 9260
    iget-object v6, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v6, v2, v3}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v2

    if-ge v5, v2, :cond_5

    move v3, v5

    goto :goto_1

    :cond_5
    move v3, v2

    :goto_1
    if-le v5, v2, :cond_6

    move v2, v5

    :cond_6
    if-ge v0, v3, :cond_7

    move v2, v3

    goto :goto_2

    :cond_7
    if-le v0, v2, :cond_8

    goto :goto_2

    :cond_8
    move v2, v0

    :goto_2
    if-eq v2, v0, :cond_9

    .line 9274
    iget-object p0, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-static {p0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    const/4 p0, 0x1

    return p0

    :cond_9
    return v1
.end method

.method public nullLayouts()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 8089
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    instance-of v0, v0, Landroid/text/BoringLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-nez v0, :cond_0

    .line 8090
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    check-cast v0, Landroid/text/BoringLayout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    .line 8092
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    instance-of v0, v0, Landroid/text/BoringLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-nez v0, :cond_1

    .line 8093
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    check-cast v0, Landroid/text/BoringLayout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    :cond_1
    const/4 v0, 0x0

    .line 8096
    iput-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    iput-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 8098
    iput-object v0, p0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    iput-object v0, p0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    .line 8101
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p0}, Landroid/widget/Editor;->prepareCursorControllers()V

    :cond_2
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    if-eqz p3, :cond_1

    const-string p1, "android.intent.extra.PROCESS_TEXT"

    .line 1989
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1991
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1992
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->replaceSelectionWithText(Ljava/lang/CharSequence;)V

    .line 1993
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz p1, :cond_2

    .line 1994
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p0}, Landroid/widget/Editor;->refreshTextActionMode()V

    goto :goto_0

    .line 1997
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_2

    .line 1998
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 1999
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2003
    :cond_1
    iget-object p1, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    if-eqz p1, :cond_2

    .line 2005
    iget-object p1, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result p0

    invoke-static {p1, p0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 6805
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 6807
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->onAttachedToWindow()V

    .line 6809
    :cond_0
    iget-boolean v0, p0, Landroid/widget/TextView;->mPreDrawListenerDetached:Z

    if-eqz v0, :cond_1

    .line 6810
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    .line 6811
    iput-boolean v0, p0, Landroid/widget/TextView;->mPreDrawListenerDetached:Z

    :cond_1
    return-void
.end method

.method public onBeginBatchEdit()V
    .locals 0

    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .line 7860
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget p0, p0, Landroid/widget/Editor;->mInputType:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0

    return-void
.end method

.method public onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 1

    .line 8045
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p0, p1}, Landroid/widget/Editor;->onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 3781
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3782
    iget-boolean p1, p0, Landroid/widget/TextView;->mLocalesChanged:Z

    if-nez p1, :cond_0

    .line 3783
    iget-object p1, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextLocales(Landroid/os/LocaleList;)V

    .line 3784
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz p1, :cond_0

    .line 3785
    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 3786
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3787
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 1

    .line 10163
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    .line 10164
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p0, p1}, Landroid/widget/Editor;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 4

    .line 7020
    iget-boolean v0, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v0, :cond_0

    .line 7021
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object p1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 7023
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 7024
    sget-object v0, Landroid/widget/TextView;->MULTILINE_STATE_SET:[I

    invoke-static {p1, v0}, Landroid/widget/TextView;->mergeDrawableStates([I[I)[I

    .line 7027
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 7032
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, p0, :cond_2

    .line 7034
    aget v2, p1, v1

    const v3, 0x10100a7

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, p0, -0x1

    .line 7035
    new-array v2, v2, [I

    .line 7036
    invoke-static {p1, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v1, 0x1

    sub-int/2addr p0, v1

    add-int/lit8 p0, p0, -0x1

    .line 7037
    invoke-static {p1, v0, v2, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 4

    .line 7865
    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7866
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputMethodStateIfNeeded()V

    .line 7867
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 7868
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_0

    .line 7869
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v0, v0, Landroid/widget/Editor$InputContentType;->imeOptions:I

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 7870
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 7871
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 7872
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v0, v0, Landroid/widget/Editor$InputContentType;->imeActionId:I

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    .line 7873
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 7874
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->imeHintLocales:Landroid/os/LocaleList;

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7876
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 7877
    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    :goto_0
    const/16 v0, 0x82

    .line 7879
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    const/high16 v2, 0x8000000

    if-eqz v0, :cond_1

    .line 7880
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v0, v2

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_1
    const/16 v0, 0x21

    .line 7882
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7883
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v3, 0x4000000

    or-int/2addr v0, v3

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 7885
    :cond_2
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v0, v0, 0xff

    const/high16 v3, 0x40000000    # 2.0f

    if-nez v0, :cond_4

    .line 7887
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    .line 7890
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v0, v0, 0x5

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_1

    .line 7894
    :cond_3
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v0, v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 7896
    :goto_1
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v0

    if-nez v0, :cond_4

    .line 7897
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v0, v3

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 7900
    :cond_4
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v0}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7902
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v0, v3

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 7904
    :cond_5
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 7905
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_6

    .line 7906
    new-instance v0, Lcom/android/internal/widget/EditableInputConnection;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/EditableInputConnection;-><init>(Landroid/widget/TextView;)V

    .line 7907
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 7908
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 7909
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result p0

    invoke-interface {v0, p0}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result p0

    iput p0, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    return-object v0

    :cond_6
    return-object v1
.end method

.method protected onDetachedFromWindowInternal()V
    .locals 1

    .line 6818
    iget-boolean v0, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    if-eqz v0, :cond_0

    .line 6819
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x1

    .line 6820
    iput-boolean v0, p0, Landroid/widget/TextView;->mPreDrawListenerDetached:Z

    .line 6823
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 6825
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->onDetachedFromWindow()V

    .line 6827
    :cond_1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindowInternal()V

    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 3

    .line 11905
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_0

    return v2

    .line 11921
    :pswitch_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p0, p1}, Landroid/widget/Editor;->onDrop(Landroid/view/DragEvent;)V

    :cond_0
    return v2

    .line 11914
    :pswitch_1
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_1

    .line 11915
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result p1

    .line 11916
    iget-object p0, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-static {p0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_1
    return v2

    .line 11907
    :pswitch_2
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 11910
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 7095
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->restartMarqueeIfNeeded()V

    .line 7098
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 7100
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    .line 7101
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v2

    .line 7102
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    .line 7103
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v4

    .line 7104
    iget v5, v0, Landroid/widget/TextView;->mScrollX:I

    .line 7105
    iget v6, v0, Landroid/widget/TextView;->mScrollY:I

    .line 7106
    iget v8, v0, Landroid/widget/TextView;->mRight:I

    .line 7107
    iget v9, v0, Landroid/widget/TextView;->mLeft:I

    .line 7108
    iget v10, v0, Landroid/widget/TextView;->mBottom:I

    .line 7109
    iget v11, v0, Landroid/widget/TextView;->mTop:I

    .line 7110
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isLayoutRtl()Z

    move-result v12

    .line 7111
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getHorizontalOffsetForDrawables()I

    move-result v13

    if-eqz v12, :cond_0

    const/4 v15, 0x0

    goto :goto_0

    :cond_0
    move v15, v13

    :goto_0
    if-eqz v12, :cond_1

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    .line 7115
    :goto_1
    iget-object v12, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v12, :cond_5

    sub-int v17, v10, v11

    sub-int v17, v17, v4

    sub-int v17, v17, v2

    sub-int v18, v8, v9

    sub-int v18, v18, v3

    sub-int v18, v18, v1

    .line 7127
    iget-object v3, v12, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/16 v16, 0x0

    aget-object v3, v3, v16

    const/16 v19, 0x2

    if-eqz v3, :cond_2

    .line 7128
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 7129
    iget v3, v0, Landroid/widget/TextView;->mPaddingLeft:I

    add-int/2addr v3, v5

    add-int/2addr v3, v15

    int-to-float v3, v3

    add-int v15, v6, v2

    iget v14, v12, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    sub-int v14, v17, v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v15, v14

    int-to-float v14, v15

    invoke-virtual {v7, v3, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7131
    iget-object v3, v12, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v14, 0x0

    aget-object v3, v3, v14

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 7132
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 7137
    :cond_2
    iget-object v3, v12, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v19

    if-eqz v3, :cond_3

    .line 7138
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    add-int v3, v5, v8

    sub-int/2addr v3, v9

    .line 7139
    iget v14, v0, Landroid/widget/TextView;->mPaddingRight:I

    sub-int/2addr v3, v14

    iget v14, v12, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    sub-int/2addr v3, v14

    sub-int/2addr v3, v13

    int-to-float v3, v3

    add-int v13, v6, v2

    iget v14, v12, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    sub-int v17, v17, v14

    div-int/lit8 v17, v17, 0x2

    add-int v13, v13, v17

    int-to-float v13, v13

    invoke-virtual {v7, v3, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7142
    iget-object v3, v12, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v19

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 7143
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 7148
    :cond_3
    iget-object v3, v12, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x1

    aget-object v3, v3, v13

    if-eqz v3, :cond_4

    .line 7149
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    add-int v3, v5, v1

    .line 7150
    iget v13, v12, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    sub-int v13, v18, v13

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v3, v13

    int-to-float v3, v3

    iget v13, v0, Landroid/widget/TextView;->mPaddingTop:I

    add-int/2addr v13, v6

    int-to-float v13, v13

    invoke-virtual {v7, v3, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7152
    iget-object v3, v12, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x1

    aget-object v3, v3, v13

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 7153
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 7158
    :cond_4
    iget-object v3, v12, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x3

    aget-object v3, v3, v13

    if-eqz v3, :cond_5

    .line 7159
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    add-int v3, v5, v1

    .line 7160
    iget v13, v12, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    sub-int v18, v18, v13

    div-int/lit8 v18, v18, 0x2

    add-int v3, v3, v18

    int-to-float v3, v3

    add-int v13, v6, v10

    sub-int/2addr v13, v11

    iget v14, v0, Landroid/widget/TextView;->mPaddingBottom:I

    sub-int/2addr v13, v14

    iget v14, v12, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    sub-int/2addr v13, v14

    int-to-float v13, v13

    invoke-virtual {v7, v3, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7163
    iget-object v3, v12, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x3

    aget-object v3, v3, v12

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 7164
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 7168
    :cond_5
    iget v3, v0, Landroid/widget/TextView;->mCurTextColor:I

    .line 7170
    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v12, :cond_6

    .line 7171
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->assumeLayout()V

    .line 7174
    :cond_6
    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 7176
    iget-object v13, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v13, :cond_8

    iget-object v13, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-nez v13, :cond_8

    .line 7177
    iget-object v12, v0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v12, :cond_7

    .line 7178
    iget v3, v0, Landroid/widget/TextView;->mCurHintTextColor:I

    .line 7181
    :cond_7
    iget-object v12, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 7184
    :cond_8
    iget-object v13, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v13, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 7185
    iget-object v3, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v13

    iput-object v13, v3, Landroid/text/TextPaint;->drawableState:[I

    .line 7187
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 7192
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v3

    .line 7193
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v14

    .line 7195
    iget v13, v0, Landroid/widget/TextView;->mBottom:I

    iget v15, v0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v13, v15

    sub-int/2addr v13, v4

    sub-int/2addr v13, v2

    .line 7196
    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    sub-int/2addr v2, v13

    add-int v4, v1, v5

    int-to-float v4, v4

    const/4 v13, 0x0

    if-nez v6, :cond_9

    move v15, v13

    goto :goto_2

    :cond_9
    add-int v15, v3, v6

    int-to-float v15, v15

    :goto_2
    sub-int/2addr v8, v9

    .line 7200
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    add-int/2addr v8, v5

    int-to-float v5, v8

    sub-int/2addr v10, v11

    add-int/2addr v10, v6

    if-ne v6, v2, :cond_a

    const/4 v14, 0x0

    :cond_a
    sub-int/2addr v10, v14

    int-to-float v2, v10

    .line 7204
    iget v6, v0, Landroid/widget/TextView;->mShadowRadius:F

    cmpl-float v6, v6, v13

    if-eqz v6, :cond_b

    .line 7205
    iget v6, v0, Landroid/widget/TextView;->mShadowDx:F

    iget v8, v0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v6, v8

    invoke-static {v13, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    add-float/2addr v4, v6

    .line 7206
    iget v6, v0, Landroid/widget/TextView;->mShadowDx:F

    iget v8, v0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v6, v8

    invoke-static {v13, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float/2addr v5, v6

    .line 7208
    iget v6, v0, Landroid/widget/TextView;->mShadowDy:F

    iget v8, v0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v6, v8

    invoke-static {v13, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    add-float/2addr v15, v6

    .line 7209
    iget v6, v0, Landroid/widget/TextView;->mShadowDy:F

    iget v8, v0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v6, v8

    invoke-static {v13, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float/2addr v2, v6

    .line 7212
    :cond_b
    invoke-virtual {v7, v4, v15, v5, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 7219
    iget v2, v0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v2, v2, 0x70

    const/16 v4, 0x30

    if-eq v2, v4, :cond_c

    const/4 v2, 0x0

    .line 7220
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v14

    const/4 v2, 0x1

    .line 7221
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v4

    goto :goto_3

    :cond_c
    const/4 v4, 0x0

    const/4 v14, 0x0

    :goto_3
    int-to-float v1, v1

    add-int/2addr v3, v14

    int-to-float v2, v3

    .line 7223
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7225
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    .line 7226
    iget v2, v0, Landroid/widget/TextView;->mGravity:I

    invoke-static {v2, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    .line 7227
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->isMarqueeFadeEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 7228
    iget-boolean v2, v0, Landroid/widget/TextView;->mSingleLine:Z

    if-nez v2, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->canMarquee()Z

    move-result v2

    if-eqz v2, :cond_d

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x3

    if-eq v1, v2, :cond_d

    .line 7230
    iget v1, v0, Landroid/widget/TextView;->mRight:I

    iget v2, v0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v1, v2

    .line 7231
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    .line 7232
    iget-object v3, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/text/Layout;->getLineRight(I)F

    move-result v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v3, v1

    .line 7233
    invoke-virtual {v12, v5}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-virtual {v7, v1, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7236
    :cond_d
    iget-object v1, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v1, :cond_e

    iget-object v1, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 7237
    iget-object v1, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->getScroll()F

    move-result v1

    neg-float v1, v1

    const/4 v2, 0x0

    .line 7238
    invoke-virtual {v12, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v3

    int-to-float v2, v3

    mul-float/2addr v2, v1

    invoke-virtual {v7, v2, v13}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_e
    sub-int v8, v4, v14

    .line 7244
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getUpdatedHighlightPath()Landroid/graphics/Path;

    move-result-object v9

    .line 7245
    iget-object v1, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_f

    .line 7246
    iget-object v1, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move-object v3, v12

    move-object v4, v9

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Editor;->onDraw(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    goto :goto_4

    .line 7248
    :cond_f
    iget-object v1, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v7, v9, v1, v8}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 7251
    :goto_4
    iget-object v1, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v1, :cond_10

    iget-object v1, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->shouldDrawGhost()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 7252
    iget-object v1, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->getGhostOffset()F

    move-result v1

    const/4 v2, 0x0

    .line 7253
    invoke-virtual {v12, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-virtual {v7, v2, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7254
    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v7, v9, v0, v8}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 7257
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onEditorAction(I)V
    .locals 14

    .line 6279
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    :goto_0
    if-eqz v0, :cond_9

    .line 6281
    iget-object v2, v0, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v2, :cond_1

    .line 6282
    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-interface {v0, p0, p1, v1}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    const/4 p1, 0x2

    .line 6294
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 6296
    invoke-virtual {p0, p1}, Landroid/view/View;->requestFocus(I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    .line 6297
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/4 v0, 0x7

    if-ne p1, v0, :cond_7

    const/4 p1, 0x1

    .line 6304
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 6306
    invoke-virtual {p0, p1}, Landroid/view/View;->requestFocus(I)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    .line 6307
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_2
    return-void

    :cond_7
    const/4 v0, 0x6

    if-ne p1, v0, :cond_9

    .line 6314
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 6315
    invoke-virtual {p1, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6316
    invoke-virtual {p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_8
    return-void

    .line 6322
    :cond_9
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 6324
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 6325
    new-instance p1, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/16 v6, 0x42

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/16 v11, 0x16

    move-object v0, p1

    move-wide v1, v12

    move-wide v3, v12

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    .line 6331
    new-instance p1, Landroid/view/KeyEvent;

    .line 6332
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v5, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 6331
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    :cond_a
    return-void
.end method

.method public onEndBatchEdit()V
    .locals 0

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 7

    .line 10002
    invoke-virtual {p0}, Landroid/widget/TextView;->isTemporarilyDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10004
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void

    .line 10008
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->onFocusChanged(ZI)V

    :cond_1
    if-eqz p1, :cond_2

    .line 10011
    iget-object v0, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    if-eqz v0, :cond_2

    .line 10012
    iget-object v0, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-static {v0}, Landroid/text/method/MetaKeyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 10016
    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/TextView;->startStopMarquee(Z)V

    .line 10018
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_3

    .line 10019
    iget-object v1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v2, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Landroid/text/method/TransformationMethod;->onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V

    .line 10022
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 10147
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 10149
    :try_start_0
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v1, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-interface {v0, p0, v1, p1}, Landroid/text/method/MovementMethod;->onGenericMotionEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 10158
    :catch_0
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 10819
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 10821
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    .line 10822
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 10824
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    .line 10825
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 10826
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 10827
    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5

    .line 10834
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 10836
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    .line 10837
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    .line 10838
    invoke-direct {p0}, Landroid/widget/TextView;->getTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 10839
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHintText(Ljava/lang/CharSequence;)V

    .line 10840
    invoke-direct {p0}, Landroid/widget/TextView;->isShowingHint()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setShowingHintText(Z)V

    .line 10842
    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 10843
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    .line 10844
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10845
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_TEXT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 10849
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    .line 10850
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setInputType(I)V

    .line 10852
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 10853
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentInvalid(Z)V

    .line 10854
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setError(Ljava/lang/CharSequence;)V

    .line 10858
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x100

    .line 10859
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v0, 0x200

    .line 10860
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v0, 0x1f

    .line 10861
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    const/high16 v0, 0x20000

    .line 10866
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const-string v0, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY"

    .line 10867
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 10868
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 10867
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAvailableExtraData(Ljava/util/List;)V

    .line 10871
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 10872
    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x4000

    .line 10873
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 10875
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x8000

    .line 10876
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 10878
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v0

    if-eqz v0, :cond_5

    const/high16 v0, 0x10000

    .line 10879
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 10881
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->canShare()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 10882
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/high16 v1, 0x10000000

    .line 10884
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10405d2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 10882
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 10886
    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->canProcessText()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 10887
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-virtual {v0, p1}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 10892
    :cond_7
    iget-object v0, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_9

    .line 10894
    iget-object v3, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    aget-object v3, v3, v1

    .line 10895
    instance-of v4, v3, Landroid/text/InputFilter$LengthFilter;

    if-eqz v4, :cond_8

    .line 10896
    check-cast v3, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual {v3}, Landroid/text/InputFilter$LengthFilter;->getMax()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMaxTextLength(I)V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10900
    :cond_9
    invoke-virtual {p0}, Landroid/widget/TextView;->isSingleLine()Z

    move-result p0

    if-nez p0, :cond_a

    .line 10901
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMultiLine(Z)V

    :cond_a
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 7459
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextView;->doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    move-result v0

    if-nez v0, :cond_0

    .line 7461
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v0, 0x0

    .line 7469
    invoke-static {p3, v0}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 7470
    invoke-direct {p0, p1, v0, p3}, Landroid/widget/TextView;->doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    move-result v1

    if-nez v1, :cond_0

    .line 7473
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    return v2

    :cond_1
    add-int/2addr p2, v3

    .line 7487
    invoke-static {p3, v2}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object p3

    if-ne v1, v2, :cond_3

    .line 7490
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Editable;

    invoke-interface {v1, p0, v4, p1, p3}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    :goto_0
    add-int/2addr p2, v3

    if-lez p2, :cond_2

    .line 7492
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Editable;

    invoke-interface {v1, p0, v4, p1, v0}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 7493
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Editable;

    invoke-interface {v1, p0, v4, p1, p3}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 7495
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    goto :goto_2

    :cond_3
    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    .line 7499
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v4, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-interface {v1, p0, v4, p1, p3}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    :goto_1
    add-int/2addr p2, v3

    if-lez p2, :cond_4

    .line 7501
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v4, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-interface {v1, p0, v4, p1, v0}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 7502
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v4, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-interface {v1, p0, v4, p1, p3}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    goto :goto_1

    :cond_4
    :goto_2
    return v2
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 7423
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->handleBackInTextActionModeIfNeeded(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 7426
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/16 v0, 0x1000

    .line 10379
    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    const/16 v1, 0x36

    const/16 v2, 0x32

    if-eqz v0, :cond_5

    const/16 v0, 0x1d

    if-eq p1, v0, :cond_4

    const/16 v0, 0x1f

    if-eq p1, v0, :cond_3

    if-eq p1, v2, :cond_2

    const/16 v0, 0x34

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 10388
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->canUndo()Z

    move-result v0

    if-eqz v0, :cond_8

    const p1, 0x1020032

    .line 10389
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result p0

    return p0

    .line 10393
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v0

    if-eqz v0, :cond_8

    const p1, 0x1020020

    .line 10394
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result p0

    return p0

    .line 10403
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    if-eqz v0, :cond_8

    const p1, 0x1020022

    .line 10404
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result p0

    return p0

    .line 10398
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v0

    if-eqz v0, :cond_8

    const p1, 0x1020021

    .line 10399
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result p0

    return p0

    .line 10383
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    if-eqz v0, :cond_8

    const p1, 0x102001f

    .line 10384
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result p0

    return p0

    :cond_5
    const/16 v0, 0x1001

    .line 10408
    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eq p1, v2, :cond_7

    if-eq p1, v1, :cond_6

    goto :goto_0

    .line 10412
    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->canRedo()Z

    move-result v0

    if-eqz v0, :cond_8

    const p1, 0x1020033

    .line 10413
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result p0

    return p0

    .line 10417
    :cond_7
    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    if-eqz v0, :cond_8

    const p1, 0x1020031

    .line 10418
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result p0

    return p0

    .line 10422
    :cond_8
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 7754
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7755
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 7758
    :cond_0
    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 7759
    iput-boolean v1, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    :cond_1
    const/16 v0, 0x17

    if-eq p1, v0, :cond_b

    const/16 v0, 0x42

    const/4 v2, 0x1

    if-eq p1, v0, :cond_2

    goto/16 :goto_0

    .line 7788
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 7789
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-boolean v0, v0, Landroid/widget/Editor$InputContentType;->enterDown:Z

    if-eqz v0, :cond_3

    .line 7792
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-boolean v1, v0, Landroid/widget/Editor$InputContentType;->enterDown:Z

    .line 7793
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-interface {v0, p0, v1, p2}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 7799
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_4

    .line 7800
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 7811
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x82

    .line 7812
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 7815
    invoke-virtual {v3, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7825
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    return v2

    .line 7816
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7827
    :cond_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7

    .line 7831
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 7832
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 7833
    invoke-virtual {p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 7838
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 7843
    :cond_8
    :goto_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_9

    .line 7844
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Editable;

    invoke-interface {v0, p0, v1, p1, p2}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v2

    .line 7849
    :cond_9
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_a

    .line 7850
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v1, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-interface {v0, p0, v1, p1, p2}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    return v2

    .line 7855
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 7764
    :cond_b
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 7774
    invoke-virtual {p0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result v0

    if-nez v0, :cond_c

    .line 7775
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_c

    .line 7776
    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 7777
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 7778
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    if-eqz v0, :cond_c

    .line 7779
    invoke-virtual {p0}, Landroid/widget/TextView;->getShowSoftInputOnFocus()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 7780
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 7785
    :cond_c
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 8932
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 8933
    iget p1, p0, Landroid/widget/TextView;->mDeferScroll:I

    if-ltz p1, :cond_0

    .line 8934
    iget p1, p0, Landroid/widget/TextView;->mDeferScroll:I

    const/4 p2, -0x1

    .line 8935
    iput p2, p0, Landroid/widget/TextView;->mDeferScroll:I

    .line 8936
    iget-object p2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    .line 8939
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->autoSizeText()V

    return-void
.end method

.method onLocaleChanged()V
    .locals 0

    .line 10561
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p0}, Landroid/widget/Editor;->onLocaleChanged()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 18

    move-object/from16 v7, p0

    .line 8489
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 8490
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 8491
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 8492
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 8497
    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 8498
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 8500
    iget-object v4, v7, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    if-nez v4, :cond_0

    .line 8501
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v4

    iput-object v4, v7, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    :cond_0
    const/high16 v10, -0x80000000

    if-ne v0, v10, :cond_1

    int-to-float v4, v1

    goto :goto_0

    :cond_1
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    :goto_0
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v14, 0x1

    if-ne v0, v6, :cond_2

    move v10, v1

    move-object v4, v3

    const/4 v0, -0x1

    const/4 v5, 0x0

    :goto_1
    move-object v3, v2

    goto/16 :goto_d

    .line 8513
    :cond_2
    iget-object v11, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v11, :cond_3

    iget-object v11, v7, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v11, :cond_3

    .line 8514
    iget-object v11, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-static {v11}, Landroid/widget/TextView;->desired(Landroid/text/Layout;)I

    move-result v11

    goto :goto_2

    :cond_3
    const/4 v11, -0x1

    :goto_2
    if-gez v11, :cond_5

    .line 8518
    iget-object v2, v7, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v12, v7, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v13, v7, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget-object v5, v7, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    invoke-static {v2, v12, v13, v5}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 8520
    iput-object v2, v7, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    :cond_4
    const/4 v5, 0x0

    goto :goto_3

    :cond_5
    move v5, v14

    :goto_3
    if-eqz v2, :cond_7

    .line 8526
    sget-object v12, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    if-ne v2, v12, :cond_6

    goto :goto_4

    .line 8533
    :cond_6
    iget v12, v2, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v17, v11

    move v10, v14

    const/4 v6, 0x0

    goto :goto_6

    :cond_7
    :goto_4
    if-gez v11, :cond_8

    .line 8528
    iget-object v11, v7, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    const/4 v12, 0x0

    iget-object v13, v7, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    .line 8529
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v13

    iget-object v6, v7, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v15, v7, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move v10, v14

    move-object v14, v6

    const/4 v6, 0x0

    move/from16 v16, v4

    .line 8528
    invoke-static/range {v11 .. v16}, Landroid/text/Layout;->getDesiredWidthWithLimit(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;F)F

    move-result v11

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v11, v11

    goto :goto_5

    :cond_8
    move v10, v14

    const/4 v6, 0x0

    :goto_5
    move v12, v11

    move/from16 v17, v12

    .line 8536
    :goto_6
    iget-object v11, v7, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v11, :cond_9

    .line 8538
    iget v13, v11, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 8539
    iget v11, v11, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v12

    :cond_9
    move v15, v12

    .line 8542
    iget-object v11, v7, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v11, :cond_f

    .line 8546
    iget-object v11, v7, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v11, :cond_a

    iget-object v11, v7, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v11, :cond_a

    .line 8547
    iget-object v11, v7, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-static {v11}, Landroid/widget/TextView;->desired(Landroid/text/Layout;)I

    move-result v11

    goto :goto_7

    :cond_a
    const/4 v11, -0x1

    :goto_7
    if-gez v11, :cond_b

    .line 8551
    iget-object v3, v7, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iget-object v12, v7, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v13, v7, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget-object v14, v7, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    invoke-static {v3, v12, v13, v14}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 8553
    iput-object v3, v7, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    :cond_b
    if-eqz v3, :cond_d

    .line 8557
    sget-object v12, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    if-ne v3, v12, :cond_c

    goto :goto_8

    .line 8564
    :cond_c
    iget v4, v3, Landroid/text/BoringLayout$Metrics;->width:I

    move v10, v15

    move v15, v4

    goto :goto_a

    :cond_d
    :goto_8
    if-gez v11, :cond_e

    .line 8559
    iget-object v11, v7, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    const/4 v12, 0x0

    iget-object v13, v7, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    .line 8560
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v13

    iget-object v14, v7, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v6, v7, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move v10, v15

    move-object v15, v6

    move/from16 v16, v4

    .line 8559
    invoke-static/range {v11 .. v16}, Landroid/text/Layout;->getDesiredWidthWithLimit(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;F)F

    move-result v4

    float-to-double v11, v4

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v11, v11

    goto :goto_9

    :cond_e
    move v10, v15

    :goto_9
    move v15, v11

    :goto_a
    if-le v15, v10, :cond_10

    :cond_f
    move v10, v15

    .line 8572
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v6

    add-int/2addr v4, v6

    add-int/2addr v10, v4

    .line 8574
    iget v4, v7, Landroid/widget/TextView;->mMaxWidthMode:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_11

    .line 8575
    iget v4, v7, Landroid/widget/TextView;->mMaxWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v11

    mul-int/2addr v4, v11

    invoke-static {v10, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_b

    .line 8577
    :cond_11
    iget v4, v7, Landroid/widget/TextView;->mMaxWidth:I

    invoke-static {v10, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 8580
    :goto_b
    iget v10, v7, Landroid/widget/TextView;->mMinWidthMode:I

    if-ne v10, v6, :cond_12

    .line 8581
    iget v6, v7, Landroid/widget/TextView;->mMinWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v10

    mul-int/2addr v6, v10

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_c

    .line 8583
    :cond_12
    iget v6, v7, Landroid/widget/TextView;->mMinWidth:I

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 8587
    :goto_c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSuggestedMinimumWidth()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/high16 v6, -0x80000000

    if-ne v0, v6, :cond_13

    .line 8590
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v10, v1

    move-object v4, v3

    move/from16 v0, v17

    goto/16 :goto_1

    :cond_13
    move v10, v4

    move/from16 v0, v17

    move-object v4, v3

    goto/16 :goto_1

    .line 8594
    :goto_d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    sub-int v1, v10, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    sub-int v11, v1, v2

    .line 8597
    iget-boolean v1, v7, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eqz v1, :cond_14

    const/high16 v1, 0x100000

    move v2, v1

    goto :goto_e

    :cond_14
    move v2, v11

    .line 8600
    :goto_e
    iget-object v1, v7, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v1, :cond_15

    move v1, v2

    goto :goto_f

    :cond_15
    iget-object v1, v7, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v1

    .line 8602
    :goto_f
    iget-object v6, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v6, :cond_16

    .line 8604
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    sub-int v0, v10, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int v5, v0, v1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v2

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/high16 v14, 0x40000000    # 2.0f

    .line 8603
    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    goto/16 :goto_15

    :cond_16
    const/4 v12, -0x1

    const/4 v13, 0x0

    const/high16 v14, 0x40000000    # 2.0f

    .line 8606
    iget-object v6, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v6}, Landroid/text/Layout;->getWidth()I

    move-result v6

    if-ne v6, v2, :cond_18

    if-ne v1, v2, :cond_18

    iget-object v1, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 8607
    invoke-virtual {v1}, Landroid/text/Layout;->getEllipsizedWidth()I

    move-result v1

    .line 8608
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v6

    sub-int v6, v10, v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v15

    sub-int/2addr v6, v15

    if-eq v1, v6, :cond_17

    goto :goto_10

    :cond_17
    move v1, v13

    goto :goto_11

    :cond_18
    :goto_10
    const/4 v1, 0x1

    .line 8610
    :goto_11
    iget-object v6, v7, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-nez v6, :cond_1a

    iget-object v6, v7, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v6, :cond_1a

    iget-object v6, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 8611
    invoke-virtual {v6}, Landroid/text/Layout;->getWidth()I

    move-result v6

    if-le v2, v6, :cond_1a

    iget-object v6, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    instance-of v6, v6, Landroid/text/BoringLayout;

    if-nez v6, :cond_19

    if-eqz v5, :cond_1a

    if-ltz v0, :cond_1a

    if-gt v0, v2, :cond_1a

    :cond_19
    const/4 v0, 0x1

    goto :goto_12

    :cond_1a
    move v0, v13

    .line 8615
    :goto_12
    iget v5, v7, Landroid/widget/TextView;->mMaxMode:I

    iget v6, v7, Landroid/widget/TextView;->mOldMaxMode:I

    if-ne v5, v6, :cond_1c

    iget v5, v7, Landroid/widget/TextView;->mMaximum:I

    iget v6, v7, Landroid/widget/TextView;->mOldMaximum:I

    if-eq v5, v6, :cond_1b

    goto :goto_13

    :cond_1b
    move v5, v13

    goto :goto_14

    :cond_1c
    :goto_13
    const/4 v5, 0x1

    :goto_14
    if-nez v1, :cond_1d

    if-eqz v5, :cond_1f

    :cond_1d
    if-nez v5, :cond_1e

    if-eqz v0, :cond_1e

    .line 8619
    iget-object v0, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0, v2}, Landroid/text/Layout;->increaseWidthTo(I)V

    goto :goto_15

    .line 8622
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    sub-int v0, v10, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int v5, v0, v1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v2

    .line 8621
    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    :cond_1f
    :goto_15
    if-ne v8, v14, :cond_20

    .line 8632
    iput v12, v7, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    goto :goto_16

    .line 8634
    :cond_20
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v0

    .line 8637
    iput v0, v7, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    const/high16 v1, -0x80000000

    if-ne v8, v1, :cond_21

    .line 8640
    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto :goto_16

    :cond_21
    move v9, v0

    .line 8644
    :goto_16
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    sub-int v0, v9, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 8645
    iget v1, v7, Landroid/widget/TextView;->mMaxMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_22

    iget-object v1, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    iget v2, v7, Landroid/widget/TextView;->mMaximum:I

    if-le v1, v2, :cond_22

    .line 8646
    iget-object v1, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget v2, v7, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 8653
    :cond_22
    iget-object v1, v7, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v1, :cond_24

    iget-object v1, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 8654
    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v1

    if-gt v1, v11, :cond_24

    iget-object v1, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 8655
    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    if-le v1, v0, :cond_23

    goto :goto_17

    .line 8658
    :cond_23
    invoke-virtual {v7, v13, v13}, Landroid/widget/TextView;->scrollTo(II)V

    goto :goto_18

    .line 8656
    :cond_24
    :goto_17
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 8661
    :goto_18
    invoke-virtual {v7, v10, v9}, Landroid/widget/TextView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 10580
    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 10582
    invoke-direct {p0}, Landroid/widget/TextView;->getTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object p0

    .line 10583
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10584
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onPreDraw()Z
    .locals 3

    .line 6758
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v0, :cond_0

    .line 6759
    invoke-direct {p0}, Landroid/widget/TextView;->assumeLayout()V

    .line 6762
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_3

    .line 6767
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 6769
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    .line 6770
    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->isSelectionStartDragged()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6771
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    :cond_1
    if-gez v0, :cond_2

    .line 6779
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x50

    if-ne v1, v2, :cond_2

    .line 6780
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :cond_2
    if-ltz v0, :cond_4

    .line 6784
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    goto :goto_0

    .line 6787
    :cond_3
    invoke-direct {p0}, Landroid/widget/TextView;->bringTextIntoView()Z

    .line 6793
    :cond_4
    :goto_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mCreatedWithASelection:Z

    if-eqz v0, :cond_5

    .line 6794
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->refreshTextActionMode()V

    .line 6795
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/Editor;->mCreatedWithASelection:Z

    .line 6798
    :cond_5
    invoke-direct {p0}, Landroid/widget/TextView;->unregisterForPreDraw()V

    const/4 p0, 0x1

    return p0
.end method

.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 0

    .line 10601
    invoke-super {p0, p1, p2}, Landroid/view/View;->onProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    const/4 p2, 0x1

    .line 10602
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;->onProvideAutoStructureForAssistOrAutofill(Landroid/view/ViewStructure;Z)V

    return-void
.end method

.method public onProvideStructure(Landroid/view/ViewStructure;)V
    .locals 1

    .line 10595
    invoke-super {p0, p1}, Landroid/view/View;->onProvideStructure(Landroid/view/ViewStructure;)V

    const/4 v0, 0x0

    .line 10596
    invoke-direct {p0, p1, v0}, Landroid/widget/TextView;->onProvideAutoStructureForAssistOrAutofill(Landroid/view/ViewStructure;Z)V

    return-void
.end method

.method public onResolveDrawables(I)V
    .locals 1

    .line 12015
    iget v0, p0, Landroid/widget/TextView;->mLastLayoutDirection:I

    if-ne v0, p1, :cond_0

    return-void

    .line 12018
    :cond_0
    iput p1, p0, Landroid/widget/TextView;->mLastLayoutDirection:I

    .line 12021
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_1

    .line 12022
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    invoke-virtual {v0, p1}, Landroid/widget/TextView$Drawables;->resolveWithLayoutDirection(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12023
    iget-object p1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object p1, p1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-direct {p0, p1}, Landroid/widget/TextView;->prepareDrawableForDisplay(Landroid/graphics/drawable/Drawable;)V

    .line 12024
    iget-object p1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object p1, p1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x2

    aget-object p1, p1, v0

    invoke-direct {p0, p1}, Landroid/widget/TextView;->prepareDrawableForDisplay(Landroid/graphics/drawable/Drawable;)V

    .line 12025
    invoke-direct {p0}, Landroid/widget/TextView;->applyCompoundDrawableTint()V

    :cond_1
    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 3

    .line 7402
    iget-object v0, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/TextView;->mLinksClickable:Z

    if-eqz v0, :cond_0

    .line 7403
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 7404
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 7405
    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 7406
    iget-object v1, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    const-class v2, Landroid/text/style/ClickableSpan;

    invoke-interface {v1, v0, v0, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ClickableSpan;

    .line 7408
    array-length v0, v0

    if-lez v0, :cond_0

    .line 7409
    iget-object p0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const/16 p1, 0x3ea

    invoke-static {p0, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p0

    return-object p0

    .line 7412
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 7415
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object p0

    return-object p0

    .line 7413
    :cond_2
    :goto_0
    iget-object p0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const/16 p1, 0x3f0

    invoke-static {p0, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p0

    return-object p0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .line 5403
    instance-of v0, p1, Landroid/widget/TextView$SavedState;

    if-nez v0, :cond_0

    .line 5404
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 5408
    :cond_0
    check-cast p1, Landroid/widget/TextView$SavedState;

    .line 5409
    invoke-virtual {p1}, Landroid/widget/TextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5412
    iget-object v0, p1, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 5413
    iget-object v0, p1, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5416
    :cond_1
    iget v0, p1, Landroid/widget/TextView$SavedState;->selStart:I

    if-ltz v0, :cond_5

    iget v0, p1, Landroid/widget/TextView$SavedState;->selEnd:I

    if-ltz v0, :cond_5

    .line 5417
    iget-object v0, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    if-eqz v0, :cond_5

    .line 5418
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 5420
    iget v1, p1, Landroid/widget/TextView$SavedState;->selStart:I

    if-gt v1, v0, :cond_3

    iget v1, p1, Landroid/widget/TextView$SavedState;->selEnd:I

    if-le v1, v0, :cond_2

    goto :goto_0

    .line 5430
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    iget v1, p1, Landroid/widget/TextView$SavedState;->selStart:I

    iget v2, p1, Landroid/widget/TextView$SavedState;->selEnd:I

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 5432
    iget-boolean v0, p1, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    if-eqz v0, :cond_5

    .line 5433
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 5434
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    goto :goto_1

    :cond_3
    :goto_0
    const-string v0, ""

    .line 5423
    iget-object v1, p1, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    const-string v0, "(restored) "

    :cond_4
    const-string v1, "TextView"

    .line 5427
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Saved cursor position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/widget/TextView$SavedState;->selStart:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/widget/TextView$SavedState;->selEnd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " out of range for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "text "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5440
    :cond_5
    :goto_1
    iget-object v0, p1, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    .line 5441
    iget-object v0, p1, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    .line 5443
    new-instance v1, Landroid/widget/TextView$1;

    invoke-direct {v1, p0, v0}, Landroid/widget/TextView$1;-><init>(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 5452
    :cond_6
    iget-object v0, p1, Landroid/widget/TextView$SavedState;->editorState:Landroid/os/ParcelableParcel;

    if-eqz v0, :cond_7

    .line 5453
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 5454
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object p1, p1, Landroid/widget/TextView$SavedState;->editorState:Landroid/os/ParcelableParcel;

    invoke-virtual {p0, p1}, Landroid/widget/Editor;->restoreInstanceState(Landroid/os/ParcelableParcel;)V

    :cond_7
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    .line 11942
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 11944
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object p1

    .line 11945
    iget-object v0, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    if-eq v0, p1, :cond_0

    .line 11946
    iput-object p1, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 11947
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz p1, :cond_0

    .line 11948
    invoke-direct {p0}, Landroid/widget/TextView;->checkForRelayout()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .line 5333
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 5336
    invoke-virtual {p0}, Landroid/widget/TextView;->getFreezesText()Z

    move-result v1

    .line 5341
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 5342
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 5343
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    if-gez v4, :cond_0

    if-ltz v2, :cond_2

    :cond_0
    move v5, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :cond_2
    :goto_0
    if-nez v1, :cond_4

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    return-object v0

    .line 5351
    :cond_4
    :goto_1
    new-instance v6, Landroid/widget/TextView$SavedState;

    invoke-direct {v6, v0}, Landroid/widget/TextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    if-eqz v1, :cond_7

    .line 5354
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_6

    .line 5355
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 5357
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_5

    .line 5358
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->removeMisspelledSpans(Landroid/text/Spannable;)V

    .line 5359
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 5362
    :cond_5
    iput-object v0, v6, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    goto :goto_2

    .line 5364
    :cond_6
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    :cond_7
    :goto_2
    if-eqz v5, :cond_8

    .line 5370
    iput v4, v6, Landroid/widget/TextView$SavedState;->selStart:I

    .line 5371
    iput v2, v6, Landroid/widget/TextView$SavedState;->selEnd:I

    .line 5374
    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_9

    if-ltz v4, :cond_9

    if-ltz v2, :cond_9

    .line 5375
    iput-boolean v3, v6, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    .line 5378
    :cond_9
    invoke-virtual {p0}, Landroid/widget/TextView;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v6, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    .line 5380
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_a

    .line 5381
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p0}, Landroid/widget/Editor;->saveInstanceState()Landroid/os/ParcelableParcel;

    move-result-object p0

    iput-object p0, v6, Landroid/widget/TextView$SavedState;->editorState:Landroid/os/ParcelableParcel;

    :cond_a
    return-object v6
.end method

.method public onScreenStateChanged(I)V
    .locals 1

    .line 6832
    invoke-super {p0, p1}, Landroid/view/View;->onScreenStateChanged(I)V

    .line 6833
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p0, p1}, Landroid/widget/Editor;->onScreenStateChanged(I)V

    :cond_0
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 11402
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 11403
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz p1, :cond_0

    .line 11404
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p0}, Landroid/widget/Editor;->onScrollChanged()V

    :cond_0
    return-void
.end method

.method protected onSelectionChanged(II)V
    .locals 0

    const/16 p1, 0x2000

    .line 9681
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 6

    .line 11277
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 11279
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 11280
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 11281
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 11283
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 11284
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const v1, 0x1020043

    const/4 v4, 0x1

    if-eq p1, v1, :cond_7

    const v1, 0x104020f

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    return v2

    .line 11351
    :pswitch_0
    invoke-direct {p0}, Landroid/widget/TextView;->shareSelectedText()V

    return v4

    .line 11345
    :pswitch_1
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz p1, :cond_1

    .line 11346
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p0}, Landroid/widget/Editor;->replace()V

    :cond_1
    return v4

    .line 11303
    :pswitch_2
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz p1, :cond_2

    .line 11304
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p0}, Landroid/widget/Editor;->redo()V

    :cond_2
    return v4

    .line 11297
    :pswitch_3
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz p1, :cond_3

    .line 11298
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p0}, Landroid/widget/Editor;->undo()V

    :cond_3
    return v4

    .line 11313
    :pswitch_4
    invoke-direct {p0, v3, v0, v2}, Landroid/widget/TextView;->paste(IIZ)V

    return v4

    .line 11309
    :pswitch_5
    invoke-direct {p0, v3, v0, v4}, Landroid/widget/TextView;->paste(IIZ)V

    return v4

    .line 11330
    :pswitch_6
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p1

    .line 11331
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 11332
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 11333
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 11334
    invoke-virtual {p0, v3, p1}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 11335
    invoke-direct {p0, p1}, Landroid/widget/TextView;->setPrimaryClip(Landroid/content/ClipData;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 11336
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    goto :goto_1

    .line 11338
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 11340
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_1
    return v4

    .line 11317
    :pswitch_7
    invoke-virtual {p0, v3, v0}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 11318
    invoke-direct {p0, p1}, Landroid/widget/TextView;->setPrimaryClip(Landroid/content/ClipData;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 11319
    invoke-virtual {p0, v3, v0}, Landroid/widget/TextView;->deleteText_internal(II)V

    goto :goto_2

    .line 11321
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 11323
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_2
    return v4

    .line 11289
    :pswitch_8
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result p1

    .line 11290
    invoke-virtual {p0}, Landroid/widget/TextView;->selectAllText()Z

    .line 11291
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    .line 11292
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p0}, Landroid/widget/Editor;->invalidateActionModeAsync()V

    :cond_6
    return v4

    .line 11355
    :cond_7
    invoke-direct {p0}, Landroid/widget/TextView;->requestAutofill()V

    .line 11356
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    return v4

    :pswitch_data_0
    .packed-switch 0x102001f
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1020031
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 10071
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 10072
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 10073
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1, p1}, Landroid/widget/Editor;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 10075
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    .line 10076
    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->isDragAcceleratorActive()Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 10081
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 10088
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v3, v3, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    if-eqz v3, :cond_2

    if-ne v0, v2, :cond_2

    .line 10089
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v4, p1, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    .line 10091
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean p1, p1, Landroid/widget/Editor;->mIsInsertionActionModeStartPending:Z

    if-eqz p1, :cond_1

    .line 10092
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p1}, Landroid/widget/Editor;->startInsertionActionMode()V

    .line 10093
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v4, p0, Landroid/widget/Editor;->mIsInsertionActionModeStartPending:Z

    :cond_1
    return v1

    :cond_2
    if-ne v0, v2, :cond_4

    .line 10098
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    if-nez v0, :cond_4

    .line 10099
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v4

    .line 10101
    :goto_0
    iget-object v3, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v3, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/Spannable;

    if-eqz v3, :cond_b

    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v3, :cond_b

    .line 10105
    iget-object v3, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v3, :cond_6

    .line 10106
    iget-object v3, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v5, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-interface {v3, p0, v5, p1}, Landroid/text/method/MovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v3

    or-int/2addr v3, v4

    goto :goto_1

    :cond_6
    move v3, v4

    .line 10109
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v5

    if-eqz v0, :cond_7

    .line 10110
    iget-boolean v6, p0, Landroid/widget/TextView;->mLinksClickable:Z

    if-eqz v6, :cond_7

    iget v6, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    if-eqz v6, :cond_7

    if-eqz v5, :cond_7

    .line 10114
    iget-object v6, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    .line 10115
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    const-class v9, Landroid/text/style/ClickableSpan;

    .line 10114
    invoke-interface {v6, v7, v8, v9}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/ClickableSpan;

    .line 10117
    array-length v7, v6

    if-lez v7, :cond_7

    .line 10118
    aget-object v3, v6, v4

    invoke-virtual {v3, p0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    move v3, v2

    :cond_7
    if-eqz v0, :cond_a

    .line 10123
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz v5, :cond_a

    .line 10125
    :cond_8
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 10126
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    .line 10127
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v3, v3, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-eqz v3, :cond_9

    if-eqz v0, :cond_9

    .line 10128
    invoke-virtual {v0, p0, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 10132
    :cond_9
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p0, p1}, Landroid/widget/Editor;->onTouchUpEvent(Landroid/view/MotionEvent;)V

    move v3, v2

    :cond_a
    if-eqz v3, :cond_b

    return v2

    :cond_b
    return v1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 10210
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 10211
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v1, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-interface {v0, p0, v1, p1}, Landroid/text/method/MovementMethod;->onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 10216
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 10036
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 10037
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 10038
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p1}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 10039
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 10027
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 10029
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onWindowFocusChanged(Z)V

    .line 10031
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/TextView;->startStopMarquee(Z)V

    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 5

    .line 11072
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    .line 11073
    invoke-virtual {v0, p1}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->performAccessibilityAction(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x10

    if-eq p1, v0, :cond_17

    const/16 v0, 0x100

    if-eq p1, v0, :cond_16

    const/16 v0, 0x200

    if-eq p1, v0, :cond_16

    const/16 v0, 0x4000

    const/4 v2, 0x0

    if-eq p1, v0, :cond_14

    const v0, 0x8000

    if-eq p1, v0, :cond_12

    const/high16 v0, 0x10000

    if-eq p1, v0, :cond_10

    const/high16 v0, 0x20000

    if-eq p1, v0, :cond_8

    const/high16 v0, 0x200000

    if-eq p1, v0, :cond_3

    const/high16 v0, 0x10000000

    if-eq p1, v0, :cond_1

    .line 11154
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    .line 11133
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->canShare()Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x1020035

    .line 11134
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    return v2

    .line 11140
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    sget-object v0, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    if-eq p1, v0, :cond_4

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    const-string p1, "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

    .line 11143
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    .line 11145
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11146
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz p1, :cond_6

    .line 11147
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_6

    .line 11149
    iget-object p0, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-static {p0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_6
    return v1

    :cond_7
    :goto_1
    return v2

    .line 11102
    :cond_8
    invoke-direct {p0}, Landroid/widget/TextView;->ensureIterableTextForAccessibilitySelectable()V

    .line 11103
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_9

    return v2

    :cond_9
    const/4 v0, -0x1

    if-eqz p2, :cond_a

    const-string v3, "ACTION_ARGUMENT_SELECTION_START_INT"

    .line 11107
    invoke-virtual {p2, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_2

    :cond_a
    move v3, v0

    :goto_2
    if-eqz p2, :cond_b

    const-string v4, "ACTION_ARGUMENT_SELECTION_END_INT"

    .line 11109
    invoke-virtual {p2, v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    goto :goto_3

    :cond_b
    move p2, v0

    .line 11111
    :goto_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    if-ne v4, v3, :cond_c

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    if-eq v4, p2, :cond_f

    :cond_c
    if-ne v3, p2, :cond_d

    if-ne p2, v0, :cond_d

    .line 11114
    check-cast p1, Landroid/text/Spannable;

    invoke-static {p1}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    return v1

    :cond_d
    if-ltz v3, :cond_f

    if-gt v3, p2, :cond_f

    .line 11117
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p2, v0, :cond_f

    .line 11118
    check-cast p1, Landroid/text/Spannable;

    invoke-static {p1, v3, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 11120
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz p1, :cond_e

    .line 11121
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p0, v2}, Landroid/widget/Editor;->startSelectionActionModeAsync(Z)V

    :cond_e
    return v1

    :cond_f
    return v2

    .line 11095
    :cond_10
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    move-result p1

    if-eqz p1, :cond_11

    const p1, 0x1020020

    .line 11096
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result p0

    if-eqz p0, :cond_11

    return v1

    :cond_11
    return v2

    .line 11088
    :cond_12
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result p1

    if-eqz p1, :cond_13

    const p1, 0x1020022

    .line 11089
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result p0

    if-eqz p0, :cond_13

    return v1

    :cond_13
    return v2

    .line 11081
    :cond_14
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_15

    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result p1

    if-eqz p1, :cond_15

    const p1, 0x1020021

    .line 11082
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result p0

    if-eqz p0, :cond_15

    return v1

    :cond_15
    return v2

    .line 11129
    :cond_16
    invoke-direct {p0}, Landroid/widget/TextView;->ensureIterableTextForAccessibilitySelectable()V

    .line 11130
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    .line 11078
    :cond_17
    invoke-direct {p0, p2}, Landroid/widget/TextView;->performAccessibilityActionClick(Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public performLongClick()Z
    .locals 5

    .line 11371
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 11372
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v1, v0, Landroid/widget/Editor;->mIsBeingLongClicked:Z

    .line 11375
    :cond_0
    invoke-super {p0}, Landroid/view/View;->performLongClick()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    move v3, v0

    .line 11380
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_2

    .line 11381
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v4, v0}, Landroid/widget/Editor;->performLongClick(Z)Z

    move-result v4

    or-int/2addr v0, v4

    .line 11382
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v2, v4, Landroid/widget/Editor;->mIsBeingLongClicked:Z

    :cond_2
    if-eqz v0, :cond_4

    if-nez v3, :cond_3

    .line 11387
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->performHapticFeedback(I)Z

    .line 11389
    :cond_3
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_5

    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v1, p0, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    goto :goto_1

    .line 11391
    :cond_4
    iget-object p0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const/16 v1, 0x275

    invoke-static {p0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    :cond_5
    :goto_1
    return v0
.end method

.method public populateCharacterBounds(Landroid/view/inputmethod/CursorAnchorInfo$Builder;IIFF)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    .line 10957
    iget-object v4, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 10958
    iget-object v5, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    :goto_0
    if-gt v4, v5, :cond_a

    .line 10960
    iget-object v6, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v6, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v6

    .line 10961
    iget-object v7, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v7

    .line 10962
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 10963
    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 10964
    iget-object v8, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 10965
    invoke-virtual {v8, v4}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v8

    const/4 v10, 0x1

    if-ne v8, v10, :cond_0

    move v8, v10

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :goto_1
    sub-int v11, v7, v6

    .line 10966
    new-array v11, v11, [F

    .line 10967
    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v12}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v12

    iget-object v13, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-virtual {v12, v13, v6, v7, v11}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/CharSequence;II[F)I

    .line 10968
    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v12, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v12

    int-to-float v12, v12

    .line 10969
    iget-object v13, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v13, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v13

    int-to-float v13, v13

    move v14, v6

    :goto_2
    if-ge v14, v7, :cond_9

    sub-int v15, v14, v6

    .line 10971
    aget v15, v11, v15

    .line 10972
    iget-object v9, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v9, v14}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v9

    .line 10973
    iget-object v10, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v14}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v10

    .line 10974
    iget-object v1, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1, v14}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v1

    if-eqz v8, :cond_2

    if-eqz v9, :cond_1

    sub-float v10, v1, v15

    goto :goto_4

    :cond_1
    add-float v1, v10, v15

    goto :goto_4

    :cond_2
    if-nez v9, :cond_3

    add-float v10, v1, v15

    :goto_3
    move/from16 v21, v10

    move v10, v1

    move/from16 v1, v21

    goto :goto_4

    :cond_3
    sub-float v1, v10, v15

    goto :goto_3

    :goto_4
    add-float v10, v10, p4

    add-float v1, v1, p4

    add-float v2, v12, p5

    add-float v3, v13, p5

    .line 11001
    invoke-virtual {v0, v10, v2}, Landroid/widget/TextView;->isPositionVisible(FF)Z

    move-result v15

    .line 11003
    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->isPositionVisible(FF)Z

    move-result v16

    if-nez v15, :cond_5

    if-eqz v16, :cond_4

    goto :goto_5

    :cond_4
    const/16 v17, 0x0

    goto :goto_6

    :cond_5
    :goto_5
    const/16 v17, 0x1

    :goto_6
    if-eqz v15, :cond_6

    if-nez v16, :cond_7

    :cond_6
    or-int/lit8 v17, v17, 0x2

    :cond_7
    if-eqz v9, :cond_8

    or-int/lit8 v9, v17, 0x4

    move/from16 v20, v9

    move v9, v14

    goto :goto_7

    :cond_8
    move v9, v14

    move/from16 v20, v17

    :goto_7
    move-object/from16 v14, p1

    move v15, v9

    move/from16 v16, v10

    move/from16 v17, v2

    move/from16 v18, v1

    move/from16 v19, v3

    .line 11015
    invoke-virtual/range {v14 .. v20}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->addCharacterBounds(IFFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    add-int/lit8 v14, v9, 0x1

    move/from16 v1, p2

    move/from16 v2, p3

    const/4 v10, 0x1

    goto :goto_2

    :cond_9
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, p2

    move/from16 v2, p3

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method removeAdjacentSuggestionSpans(I)V
    .locals 5

    .line 9746
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_0

    return-void

    .line 9747
    :cond_0
    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast p0, Landroid/text/Editable;

    .line 9749
    const-class v0, Landroid/text/style/SuggestionSpan;

    invoke-interface {p0, p1, p1, v0}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/SuggestionSpan;

    .line 9750
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 9752
    aget-object v3, v0, v2

    invoke-interface {p0, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 9753
    aget-object v4, v0, v2

    invoke-interface {p0, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, p1, :cond_1

    if-ne v3, p1, :cond_2

    .line 9755
    :cond_1
    invoke-static {p0, p1, p1, v3, v4}, Landroid/widget/SpellChecker;->haveWordBoundariesChanged(Landroid/text/Editable;IIII)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9756
    aget-object v3, v0, v2

    invoke-interface {p0, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method removeMisspelledSpans(Landroid/text/Spannable;)V
    .locals 3

    .line 5390
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result p0

    const-class v0, Landroid/text/style/SuggestionSpan;

    const/4 v1, 0x0

    invoke-interface {p1, v1, p0, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/style/SuggestionSpan;

    .line 5392
    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_1

    .line 5393
    aget-object v0, p0, v1

    invoke-virtual {v0}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v0

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 5396
    aget-object v0, p0, v1

    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    .line 5949
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_2

    .line 5951
    instance-of v0, p1, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    .line 5952
    move-object p0, p1

    check-cast p0, Landroid/text/Spannable;

    goto :goto_0

    .line 5954
    :cond_0
    iget-object p0, p0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    invoke-virtual {p0, p1}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object p0

    .line 5957
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v1, Landroid/text/style/SuggestionSpan;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/SuggestionSpan;

    .line 5958
    array-length v1, v0

    if-nez v1, :cond_1

    return-object p1

    .line 5964
    :cond_1
    :goto_1
    array-length p1, v0

    if-ge v2, p1, :cond_3

    .line 5965
    aget-object p1, v0, v2

    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object p0, p1

    :cond_3
    return-object p0
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1

    .line 9707
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 9708
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 9711
    iget-object p0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method replaceSelectionWithText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 11796
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result p0

    invoke-interface {v0, v1, p0, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void
.end method

.method protected replaceText_internal(IILjava/lang/CharSequence;)V
    .locals 0

    .line 12079
    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast p0, Landroid/text/Editable;

    invoke-interface {p0, p1, p2, p3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void
.end method

.method public requestActionMode(Landroid/view/textclassifier/TextLinks$TextLinkSpan;)Z
    .locals 3

    .line 11598
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11600
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 11604
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 11605
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spanned;

    invoke-interface {v2, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    if-ltz v0, :cond_2

    .line 11607
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt p1, v2, :cond_2

    if-lt v0, p1, :cond_1

    goto :goto_0

    .line 11611
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 11612
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p0, v0, p1}, Landroid/widget/Editor;->startLinkActionModeAsync(II)V

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public resetErrorChangedFlag()V
    .locals 1

    .line 7740
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mErrorWasChanged:Z

    :cond_0
    return-void
.end method

.method protected resetResolvedDrawables()V
    .locals 1

    .line 12053
    invoke-super {p0}, Landroid/view/View;->resetResolvedDrawables()V

    const/4 v0, -0x1

    .line 12054
    iput v0, p0, Landroid/widget/TextView;->mLastLayoutDirection:I

    return-void
.end method

.method selectAllText()Z
    .locals 2

    .line 11786
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    const/16 v0, 0x1f4

    .line 11788
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->hideFloatingToolbar(I)V

    .line 11790
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 11791
    iget-object p0, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public sendAccessibilityEventInternal(I)V
    .locals 1

    const v0, 0x8000

    if-ne p1, v0, :cond_0

    .line 11196
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    .line 11197
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-virtual {v0}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->initializeAccessibilityActions()V

    .line 11200
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEventInternal(I)V

    return-void
.end method

.method sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    const/16 v0, 0x10

    .line 11238
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 11239
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 11240
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 11241
    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 11242
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 11243
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 11208
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    return-void

    .line 11211
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method sendAfterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .line 9783
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 9784
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 9785
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 9787
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextWatcher;

    invoke-interface {v3, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9792
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->notifyAutoFillManagerAfterTextChangedIfNeeded()V

    .line 9794
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    return-void
.end method

.method sendOnTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    .line 9767
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 9768
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 9769
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 9771
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextWatcher;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9775
    :cond_0
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p0, p2, p3, p4}, Landroid/widget/Editor;->sendOnTextChanged(III)V

    :cond_1
    return-void
.end method

.method public setAccessibilitySelection(II)V
    .locals 3

    .line 12186
    invoke-virtual {p0}, Landroid/widget/TextView;->getAccessibilitySelectionStart()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 12187
    invoke-virtual {p0}, Landroid/widget/TextView;->getAccessibilitySelectionEnd()I

    move-result v0

    if-ne v0, p2, :cond_0

    return-void

    .line 12190
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v0

    .line 12191
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ltz v1, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 12192
    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0

    .line 12194
    :cond_1
    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 12199
    :goto_0
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz p1, :cond_2

    .line 12200
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p1}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 12201
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    :cond_2
    return-void
.end method

.method public setAllCaps(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 9408
    new-instance p1, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 9410
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :goto_0
    return-void
.end method

.method public final setAutoLinkMask(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 4498
    iput p1, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    return-void
.end method

.method public setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .locals 1

    .line 1721
    invoke-virtual {p0}, Landroid/widget/TextView;->supportsAutoSizeText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1722
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    int-to-float p1, p1

    .line 1723
    invoke-static {p4, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    int-to-float p2, p2

    .line 1725
    invoke-static {p4, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    int-to-float p3, p3

    .line 1727
    invoke-static {p4, p3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    .line 1730
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;->validateAndSetAutoSizeTextTypeUniformConfiguration(FFF)V

    .line 1734
    invoke-direct {p0}, Landroid/widget/TextView;->setupAutoSizeText()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1735
    invoke-direct {p0}, Landroid/widget/TextView;->autoSizeText()V

    .line 1736
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .locals 5

    .line 1762
    invoke-virtual {p0}, Landroid/widget/TextView;->supportsAutoSizeText()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1763
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_3

    .line 1765
    new-array v2, v0, [I

    if-nez p2, :cond_0

    .line 1768
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    goto :goto_1

    .line 1770
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1773
    aget v4, p1, v1

    int-to-float v4, v4

    invoke-static {p2, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1778
    :cond_1
    :goto_1
    invoke-direct {p0, v2}, Landroid/widget/TextView;->cleanupAutoSizePresetSizes([I)[I

    move-result-object p2

    iput-object p2, p0, Landroid/widget/TextView;->mAutoSizeTextSizesInPx:[I

    .line 1779
    invoke-direct {p0}, Landroid/widget/TextView;->setupAutoSizeUniformPresetSizesConfiguration()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    .line 1780
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "None of the preset sizes is valid: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1781
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1784
    :cond_3
    iput-boolean v1, p0, Landroid/widget/TextView;->mHasPresetAutoSizeValues:Z

    .line 1787
    :goto_2
    invoke-direct {p0}, Landroid/widget/TextView;->setupAutoSizeText()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1788
    invoke-direct {p0}, Landroid/widget/TextView;->autoSizeText()V

    .line 1789
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_4
    return-void
.end method

.method public setAutoSizeTextTypeWithDefaults(I)V
    .locals 3

    .line 1660
    invoke-virtual {p0}, Landroid/widget/TextView;->supportsAutoSizeText()Z

    move-result v0

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 1686
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown auto-size text type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1666
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v0, 0x41400000    # 12.0f

    const/4 v1, 0x2

    .line 1667
    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v2, 0x42e00000    # 112.0f

    .line 1671
    invoke-static {v1, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1676
    invoke-direct {p0, v0, p1, v1}, Landroid/widget/TextView;->validateAndSetAutoSizeTextTypeUniformConfiguration(FFF)V

    .line 1680
    invoke-direct {p0}, Landroid/widget/TextView;->setupAutoSizeText()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1681
    invoke-direct {p0}, Landroid/widget/TextView;->autoSizeText()V

    .line 1682
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_0

    .line 1663
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/TextView;->clearAutoSizeConfiguration()V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setBreakStrategy(I)V
    .locals 0

    .line 4099
    iput p1, p0, Landroid/widget/TextView;->mBreakStrategy:I

    .line 4100
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz p1, :cond_0

    .line 4101
    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 4102
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 4103
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCompoundDrawablePadding(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 3119
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-nez p1, :cond_0

    if-eqz v0, :cond_2

    .line 3122
    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 3126
    new-instance v0, Landroid/widget/TextView$Drawables;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 3128
    :cond_1
    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    .line 3131
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3132
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method

.method public setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 3162
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-nez v0, :cond_0

    .line 3163
    new-instance v0, Landroid/widget/TextView$Drawables;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 3165
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-object p1, v0, Landroid/widget/TextView$Drawables;->mTintList:Landroid/content/res/ColorStateList;

    .line 3166
    iget-object p1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/widget/TextView$Drawables;->mHasTint:Z

    .line 3168
    invoke-direct {p0}, Landroid/widget/TextView;->applyCompoundDrawableTint()V

    return-void
.end method

.method public setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 3192
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-nez v0, :cond_0

    .line 3193
    new-instance v0, Landroid/widget/TextView$Drawables;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 3195
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-object p1, v0, Landroid/widget/TextView$Drawables;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 3196
    iget-object p1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    .line 3198
    invoke-direct {p0}, Landroid/widget/TextView;->applyCompoundDrawableTint()V

    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 2688
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2692
    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2693
    :cond_0
    iput-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 2694
    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2695
    :cond_1
    iput-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 2696
    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    .line 2697
    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    :cond_2
    const/4 v3, 0x1

    if-nez p1, :cond_4

    if-nez p2, :cond_4

    if-nez p3, :cond_4

    if-eqz p4, :cond_3

    goto :goto_0

    :cond_3
    move v4, v2

    goto :goto_1

    :cond_4
    :goto_0
    move v4, v3

    :goto_1
    if-nez v4, :cond_8

    if-eqz v0, :cond_12

    .line 2704
    invoke-virtual {v0}, Landroid/widget/TextView$Drawables;->hasMetadata()Z

    move-result p2

    if-nez p2, :cond_5

    .line 2705
    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    goto/16 :goto_6

    .line 2709
    :cond_5
    iget-object p2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    array-length p2, p2

    sub-int/2addr p2, v3

    :goto_2
    if-ltz p2, :cond_7

    .line 2710
    iget-object p4, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object p4, p4, p2

    if-eqz p4, :cond_6

    .line 2711
    iget-object p4, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object p4, p4, p2

    invoke-virtual {p4, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2713
    :cond_6
    iget-object p4, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object v1, p4, p2

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    .line 2715
    :cond_7
    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 2716
    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 2717
    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 2718
    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto/16 :goto_6

    :cond_8
    if-nez v0, :cond_9

    .line 2723
    new-instance v0, Landroid/widget/TextView$Drawables;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2726
    :cond_9
    iget-object v4, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-boolean v2, v4, Landroid/widget/TextView$Drawables;->mOverride:Z

    .line 2728
    iget-object v4, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v2

    if-eq v4, p1, :cond_a

    iget-object v4, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v2

    if-eqz v4, :cond_a

    .line 2729
    iget-object v4, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v2

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2731
    :cond_a
    iget-object v4, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object p1, v4, v2

    .line 2733
    iget-object v4, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v3

    if-eq v4, p2, :cond_b

    iget-object v4, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v3

    if-eqz v4, :cond_b

    .line 2734
    iget-object v4, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v3

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2736
    :cond_b
    iget-object v4, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object p2, v4, v3

    .line 2738
    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    if-eq v3, p3, :cond_c

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v4

    if-eqz v3, :cond_c

    .line 2739
    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v4

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2741
    :cond_c
    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object p3, v3, v4

    .line 2743
    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    if-eq v3, p4, :cond_d

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v4

    if-eqz v3, :cond_d

    .line 2744
    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v4

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2746
    :cond_d
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object p4, v1, v4

    .line 2748
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 2751
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    if-eqz p1, :cond_e

    .line 2754
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2755
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2756
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2757
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 2758
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    goto :goto_3

    .line 2760
    :cond_e
    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    :goto_3
    if-eqz p3, :cond_f

    .line 2764
    invoke-virtual {p3, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2765
    invoke-virtual {p3, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2766
    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2767
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 2768
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    goto :goto_4

    .line 2770
    :cond_f
    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    :goto_4
    if-eqz p2, :cond_10

    .line 2774
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2775
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2776
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2777
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result p2

    iput p2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 2778
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result p2

    iput p2, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    goto :goto_5

    .line 2780
    :cond_10
    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    :goto_5
    if-eqz p4, :cond_11

    .line 2784
    invoke-virtual {p4, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2785
    invoke-virtual {p4, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2786
    invoke-virtual {p4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2787
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result p2

    iput p2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    .line 2788
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result p2

    iput p2, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    goto :goto_6

    .line 2790
    :cond_11
    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    :cond_12
    :goto_6
    if-eqz v0, :cond_13

    .line 2796
    iput-object p1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

    .line 2797
    iput-object p3, v0, Landroid/widget/TextView$Drawables;->mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

    .line 2800
    :cond_13
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 2801
    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    .line 2802
    invoke-direct {p0}, Landroid/widget/TextView;->applyCompoundDrawableTint()V

    .line 2803
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2804
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 2885
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2889
    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    .line 2890
    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2892
    :cond_0
    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iput-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

    aput-object v2, v3, v1

    .line 2893
    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    if-eqz v3, :cond_1

    .line 2894
    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v4

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2896
    :cond_1
    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iput-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

    aput-object v2, v3, v4

    .line 2897
    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 2898
    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    :cond_2
    const/4 v3, 0x1

    if-nez p1, :cond_4

    if-nez p2, :cond_4

    if-nez p3, :cond_4

    if-eqz p4, :cond_3

    goto :goto_0

    :cond_3
    move v4, v1

    goto :goto_1

    :cond_4
    :goto_0
    move v4, v3

    :goto_1
    const/4 v5, 0x3

    if-nez v4, :cond_a

    if-eqz v0, :cond_14

    .line 2907
    invoke-virtual {v0}, Landroid/widget/TextView$Drawables;->hasMetadata()Z

    move-result p1

    if-nez p1, :cond_5

    .line 2908
    iput-object v2, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    goto/16 :goto_5

    .line 2912
    :cond_5
    iget-object p1, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_6

    iget-object p1, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2913
    :cond_6
    iput-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 2914
    iget-object p1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, v3

    if-eqz p1, :cond_7

    .line 2915
    iget-object p1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, v3

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2917
    :cond_7
    iget-object p1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object v2, p1, v3

    .line 2918
    iget-object p1, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_8

    .line 2919
    iget-object p1, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2921
    :cond_8
    iput-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 2922
    iget-object p1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, v5

    if-eqz p1, :cond_9

    .line 2923
    iget-object p1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, v5

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2925
    :cond_9
    iget-object p1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object v2, p1, v5

    .line 2926
    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    .line 2927
    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    .line 2928
    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 2929
    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto/16 :goto_5

    :cond_a
    if-nez v0, :cond_b

    .line 2934
    new-instance v0, Landroid/widget/TextView$Drawables;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2937
    :cond_b
    iget-object v4, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-boolean v3, v4, Landroid/widget/TextView$Drawables;->mOverride:Z

    .line 2939
    iget-object v4, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eq v4, p1, :cond_c

    iget-object v4, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_c

    .line 2940
    iget-object v4, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2942
    :cond_c
    iput-object p1, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 2944
    iget-object v4, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v3

    if-eq v4, p2, :cond_d

    iget-object v4, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v3

    if-eqz v4, :cond_d

    .line 2945
    iget-object v4, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v3

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2947
    :cond_d
    iget-object v4, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object p2, v4, v3

    .line 2949
    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eq v3, p3, :cond_e

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_e

    .line 2950
    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2952
    :cond_e
    iput-object p3, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 2954
    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v5

    if-eq v3, p4, :cond_f

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v5

    if-eqz v3, :cond_f

    .line 2955
    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v5

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2957
    :cond_f
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object p4, v2, v5

    .line 2959
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 2962
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    if-eqz p1, :cond_10

    .line 2965
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2966
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2967
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2968
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    .line 2969
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    goto :goto_2

    .line 2971
    :cond_10
    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    :goto_2
    if-eqz p3, :cond_11

    .line 2975
    invoke-virtual {p3, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2976
    invoke-virtual {p3, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2977
    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2978
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    .line 2979
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    goto :goto_3

    .line 2981
    :cond_11
    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    :goto_3
    if-eqz p2, :cond_12

    .line 2985
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2986
    invoke-virtual {p2, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2987
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2988
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 2989
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    goto :goto_4

    .line 2991
    :cond_12
    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    :goto_4
    if-eqz p4, :cond_13

    .line 2995
    invoke-virtual {p4, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2996
    invoke-virtual {p4, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2997
    invoke-virtual {p4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2998
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    .line 2999
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    goto :goto_5

    .line 3001
    :cond_13
    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    .line 3005
    :cond_14
    :goto_5
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 3006
    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    .line 3007
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3008
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 3032
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 3034
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p2, :cond_1

    .line 3035
    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v1

    :goto_1
    if-eqz p3, :cond_2

    .line 3036
    invoke-virtual {v0, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_2

    :cond_2
    move-object p3, v1

    :goto_2
    if-eqz p4, :cond_3

    .line 3037
    invoke-virtual {v0, p4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3033
    :cond_3
    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3058
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    if-eqz p3, :cond_1

    .line 3061
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p3, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    if-eqz p2, :cond_2

    .line 3064
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p2, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    if-eqz p4, :cond_3

    .line 3067
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p4, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3069
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 2828
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2829
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p2, :cond_1

    .line 2830
    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v1

    :goto_1
    if-eqz p3, :cond_2

    .line 2831
    invoke-virtual {v0, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_2

    :cond_2
    move-object p3, v1

    :goto_2
    if-eqz p4, :cond_3

    .line 2832
    invoke-virtual {v0, p4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2829
    :cond_3
    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2854
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    if-eqz p3, :cond_1

    .line 2857
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p3, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    if-eqz p2, :cond_2

    .line 2860
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p2, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    if-eqz p4, :cond_3

    .line 2863
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p4, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2865
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected setCursorPosition_internal(II)V
    .locals 0

    .line 12095
    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast p0, Landroid/text/Editable;

    invoke-static {p0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    return-void
.end method

.method public setCursorVisible(Z)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    if-eqz p1, :cond_0

    .line 9570
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    return-void

    .line 9571
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 9572
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mCursorVisible:Z

    if-eq v0, p1, :cond_1

    .line 9573
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean p1, v0, Landroid/widget/Editor;->mCursorVisible:Z

    .line 9574
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 9576
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p1}, Landroid/widget/Editor;->makeBlink()V

    .line 9579
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p0}, Landroid/widget/Editor;->prepareCursorControllers()V

    :cond_1
    return-void
.end method

.method public setCustomInsertionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0

    .line 11509
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 11510
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object p1, p0, Landroid/widget/Editor;->mCustomInsertionActionModeCallback:Landroid/view/ActionMode$Callback;

    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0

    .line 11472
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 11473
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object p1, p0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    return-void
.end method

.method public final setEditableFactory(Landroid/text/Editable$Factory;)V
    .locals 0

    .line 5501
    iput-object p1, p0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    .line 5502
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setElegantTextHeight(Z)V
    .locals 1

    .line 3964
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->isElegantTextHeight()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 3965
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setElegantTextHeight(Z)V

    .line 3966
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz p1, :cond_0

    .line 3967
    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 3968
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3969
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 1

    .line 9497
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, p1, :cond_0

    .line 9498
    iput-object p1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 9500
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz p1, :cond_0

    .line 9501
    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 9502
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 9503
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setEms(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 5124
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    const/4 p1, 0x1

    .line 5125
    iput p1, p0, Landroid/widget/TextView;->mMinWidthMode:I

    iput p1, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 5127
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 5128
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 2101
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 2107
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2108
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2109
    invoke-virtual {p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2113
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_2

    .line 2117
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2118
    invoke-virtual {p1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 2122
    :cond_2
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz p1, :cond_3

    .line 2123
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p1}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    .line 2124
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p1}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 2127
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    :cond_3
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 6468
    invoke-virtual {p0, p1, p1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 6470
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x108050d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 6473
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6474
    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 6488
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 6489
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 6490
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    return-void
.end method

.method public setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    .locals 8

    .line 7945
    invoke-virtual {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v4

    .line 7946
    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    const/4 v6, 0x0

    if-eqz v0, :cond_5

    if-nez v4, :cond_0

    .line 7948
    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_1

    .line 7951
    :cond_0
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v0

    .line 7953
    iget v1, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    if-ltz v1, :cond_3

    .line 7954
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v0

    .line 7955
    iget v1, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    if-le v1, v0, :cond_1

    move v1, v0

    .line 7957
    :cond_1
    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    if-le v2, v0, :cond_2

    move v5, v1

    goto :goto_0

    :cond_2
    move v5, v1

    move v0, v2

    goto :goto_0

    :cond_3
    move v5, v6

    .line 7961
    :goto_0
    invoke-static {v4, v5, v0}, Landroid/widget/TextView;->removeParcelableSpans(Landroid/text/Spannable;II)V

    .line 7962
    invoke-interface {v4, v5, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7963
    iget-object v1, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spanned;

    if-eqz v1, :cond_5

    .line 7965
    iget-object v1, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    const/4 v2, 0x0

    sub-int v3, v0, v5

    const-class v7, Ljava/lang/Object;

    move-object v0, v1

    move v1, v2

    move v2, v3

    move-object v3, v7

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    goto :goto_1

    .line 7969
    :cond_4
    iget-object v1, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v4, v5, v0, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 7978
    :cond_5
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 7979
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v1

    .line 7980
    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    if-gez v2, :cond_6

    move v2, v6

    goto :goto_2

    :cond_6
    if-le v2, v1, :cond_7

    move v2, v1

    .line 7986
    :cond_7
    :goto_2
    iget v3, p1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    if-gez v3, :cond_8

    move v1, v6

    goto :goto_3

    :cond_8
    if-le v3, v1, :cond_9

    goto :goto_3

    :cond_9
    move v1, v3

    .line 7992
    :goto_3
    invoke-static {v0, v2, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 7995
    iget v1, p1, Landroid/view/inputmethod/ExtractedText;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_a

    .line 7996
    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->startSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    goto :goto_4

    .line 7998
    :cond_a
    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    .line 8001
    :goto_4
    iget-object p1, p1, Landroid/view/inputmethod/ExtractedText;->hint:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Landroid/widget/TextView;->setHintInternal(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setExtracting(Landroid/view/inputmethod/ExtractedTextRequest;)V
    .locals 1

    .line 8008
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-eqz v0, :cond_0

    .line 8009
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    iput-object p1, v0, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 8014
    :cond_0
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p1}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 8015
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    .line 8016
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object p1, p1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz p1, :cond_1

    .line 8017
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object p0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    :cond_1
    return-void
.end method

.method public setFallbackLineSpacing(Z)V
    .locals 1

    .line 3990
    iget-boolean v0, p0, Landroid/widget/TextView;->mUseFallbackLineSpacing:Z

    if-eq v0, p1, :cond_0

    .line 3991
    iput-boolean p1, p0, Landroid/widget/TextView;->mUseFallbackLineSpacing:Z

    .line 3992
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz p1, :cond_0

    .line 3993
    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 3994
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3995
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 6523
    iput-object p1, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    .line 6525
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_0

    .line 6526
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-direct {p0, v0, p1}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    :cond_0
    return-void

    .line 6520
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public setFirstBaselineToTopHeight(I)V
    .locals 3

    .line 3313
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 3315
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 3317
    invoke-virtual {p0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3318
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    goto :goto_0

    .line 3320
    :cond_0
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 3326
    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le p1, v1, :cond_1

    neg-int v0, v0

    sub-int/2addr p1, v0

    .line 3328
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method public setFontFeatureSettings(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 4222
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 4223
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 4225
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz p1, :cond_0

    .line 4226
    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 4227
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 4228
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setFontVariationSettings(Ljava/lang/String;)Z
    .locals 1

    .line 4278
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v0

    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_0

    .line 4281
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4284
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFontVariationSettings(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4286
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1

    .line 4287
    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 4288
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 4289
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method protected setFrame(IIII)Z
    .locals 0

    .line 6496
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result p1

    .line 6498
    iget-object p2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p2}, Landroid/widget/Editor;->setFrame()V

    .line 6500
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->restartMarqueeIfNeeded()V

    return p1
.end method

.method public setFreezesText(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 5475
    iput-boolean p1, p0, Landroid/widget/TextView;->mFreezesText:Z

    return-void
.end method

.method public setGravity(I)V
    .locals 10

    const v0, 0x800007

    and-int v1, p1, v0

    if-nez v1, :cond_0

    const v1, 0x800003

    or-int/2addr p1, v1

    :cond_0
    and-int/lit8 v1, p1, 0x70

    if-nez v1, :cond_1

    or-int/lit8 p1, p1, 0x30

    :cond_1
    and-int v1, p1, v0

    .line 4656
    iget v2, p0, Landroid/widget/TextView;->mGravity:I

    and-int/2addr v0, v2

    const/4 v2, 0x0

    if-eq v1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 4661
    :goto_0
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    if-eq p1, v1, :cond_3

    .line 4662
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 4665
    :cond_3
    iput p1, p0, Landroid/widget/TextView;->mGravity:I

    .line 4667
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    .line 4669
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {p1}, Landroid/text/Layout;->getWidth()I

    move-result v4

    .line 4670
    iget-object p1, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez p1, :cond_4

    :goto_1
    move v5, v2

    goto :goto_2

    :cond_4
    iget-object p1, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {p1}, Landroid/text/Layout;->getWidth()I

    move-result v2

    goto :goto_1

    .line 4672
    :goto_2
    sget-object v6, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v7, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    iget p1, p0, Landroid/widget/TextView;->mRight:I

    iget v0, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr p1, v0

    .line 4673
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    sub-int v8, p1, v0

    const/4 v9, 0x1

    move-object v3, p0

    .line 4672
    invoke-virtual/range {v3 .. v9}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    :cond_5
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 4942
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    const/4 p1, 0x2

    .line 4943
    iput p1, p0, Landroid/widget/TextView;->mMinMode:I

    iput p1, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 4945
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 4946
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setHighlightColor(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 4362
    iget v0, p0, Landroid/widget/TextView;->mHighlightColor:I

    if-eq v0, p1, :cond_0

    .line 4363
    iput p1, p0, Landroid/widget/TextView;->mHighlightColor:I

    .line 4364
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setHint(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 5922
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setHint(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 5890
    invoke-direct {p0, p1}, Landroid/widget/TextView;->setHintInternal(Ljava/lang/CharSequence;)V

    .line 5892
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->isInputMethodTarget()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5893
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p0}, Landroid/widget/Editor;->reportExtractedText()Z

    :cond_0
    return-void
.end method

.method public final setHintTextColor(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 4553
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    .line 4554
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    return-void
.end method

.method public final setHintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 4568
    iput-object p1, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    .line 4569
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    return-void
.end method

.method public setHorizontallyScrolling(Z)V
    .locals 1

    .line 4721
    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eq v0, p1, :cond_0

    .line 4722
    iput-boolean p1, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    .line 4724
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz p1, :cond_0

    .line 4725
    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 4726
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 4727
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setHyphenationFrequency(I)V
    .locals 0

    .line 4130
    iput p1, p0, Landroid/widget/TextView;->mHyphenationFrequency:I

    .line 4131
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz p1, :cond_0

    .line 4132
    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 4133
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 4134
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setImeActionLabel(Ljava/lang/CharSequence;I)V
    .locals 1

    .line 6216
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 6217
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 6218
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    .line 6219
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object p0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput p2, p0, Landroid/widget/Editor$InputContentType;->imeActionId:I

    return-void
.end method

.method public setImeHintLocales(Landroid/os/LocaleList;)V
    .locals 1

    .line 6424
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 6425
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 6426
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->imeHintLocales:Landroid/os/LocaleList;

    .line 6427
    iget-boolean v0, p0, Landroid/widget/TextView;->mUseInternationalizedInput:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6428
    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Landroid/widget/TextView;->changeListenerLocaleTo(Ljava/util/Locale;)V

    :cond_1
    return-void
.end method

.method public setImeOptions(I)V
    .locals 1

    .line 6189
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 6190
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 6191
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object p0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput p1, p0, Landroid/widget/Editor$InputContentType;->imeOptions:I

    return-void
.end method

.method public setIncludeFontPadding(Z)V
    .locals 1

    .line 8460
    iget-boolean v0, p0, Landroid/widget/TextView;->mIncludePad:Z

    if-eq v0, p1, :cond_0

    .line 8461
    iput-boolean p1, p0, Landroid/widget/TextView;->mIncludePad:Z

    .line 8463
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz p1, :cond_0

    .line 8464
    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 8465
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 8466
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setInputExtras(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 6378
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 6379
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 6380
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 6381
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    .line 6382
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object p0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object p0, p0, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p0}, Landroid/content/res/Resources;->parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V

    return-void
.end method

.method public setInputType(I)V
    .locals 9

    .line 5987
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    invoke-static {v0}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v0

    .line 5988
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    invoke-static {v1}, Landroid/widget/TextView;->isVisiblePasswordInputType(I)Z

    move-result v1

    const/4 v6, 0x0

    .line 5989
    invoke-direct {p0, p1, v6}, Landroid/widget/TextView;->setInputType(IZ)V

    .line 5990
    invoke-static {p1}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v7

    .line 5991
    invoke-static {p1}, Landroid/widget/TextView;->isVisiblePasswordInputType(I)Z

    move-result v2

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    .line 5994
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    .line 5995
    invoke-direct/range {v0 .. v5}, Landroid/widget/TextView;->setTypefaceFromAttrs(Landroid/graphics/Typeface;Ljava/lang/String;III)V

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_2

    .line 5998
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    if-ne v0, v1, :cond_1

    move v6, v8

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    .line 6001
    invoke-direct/range {v0 .. v5}, Landroid/widget/TextView;->setTypefaceFromAttrs(Landroid/graphics/Typeface;Ljava/lang/String;III)V

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    .line 6005
    invoke-direct/range {v0 .. v5}, Landroid/widget/TextView;->setTypefaceFromAttrs(Landroid/graphics/Typeface;Ljava/lang/String;III)V

    .line 6008
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    if-ne v0, v1, :cond_4

    move v6, v8

    .line 6013
    :cond_4
    :goto_0
    invoke-static {p1}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v0

    xor-int/2addr v0, v8

    .line 6017
    iget-boolean v1, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-ne v1, v0, :cond_5

    if-eqz v6, :cond_6

    :cond_5
    xor-int/lit8 v1, v7, 0x1

    .line 6020
    invoke-direct {p0, v0, v1, v8}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    .line 6023
    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 6024
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/TextView;->setTextInternal(Ljava/lang/CharSequence;)V

    .line 6027
    :cond_7
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 6028
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_8
    return-void
.end method

.method public setJustificationMode(I)V
    .locals 0

    .line 4190
    iput p1, p0, Landroid/widget/TextView;->mJustificationMode:I

    .line 4191
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz p1, :cond_0

    .line 4192
    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 4193
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 4194
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setKeyListener(Landroid/text/method/KeyListener;)V
    .locals 1

    const/4 v0, 0x1

    .line 2323
    iput-boolean v0, p0, Landroid/widget/TextView;->mListenerChanged:Z

    .line 2324
    invoke-direct {p0, p1}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    .line 2325
    invoke-direct {p0}, Landroid/widget/TextView;->fixFocusableAndClickableSettings()V

    if-eqz p1, :cond_0

    .line 2328
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 2329
    invoke-direct {p0}, Landroid/widget/TextView;->setInputTypeFromEditor()V

    goto :goto_0

    .line 2331
    :cond_0
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/Editor;->mInputType:I

    .line 2334
    :cond_1
    :goto_0
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2335
    invoke-virtual {p1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public setLastBaselineToBottomHeight(I)V
    .locals 3

    .line 3349
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 3351
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 3353
    invoke-virtual {p0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3354
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_0

    .line 3356
    :cond_0
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 3362
    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le p1, v1, :cond_1

    sub-int/2addr p1, v0

    .line 3364
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method public setLetterSpacing(F)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 4048
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 4049
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 4051
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz p1, :cond_0

    .line 4052
    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 4053
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 4054
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setLineHeight(I)V
    .locals 2

    .line 5218
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 5220
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    if-eq p1, v0, :cond_0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5224
    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    :cond_0
    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 1

    .line 5166
    iget v0, p0, Landroid/widget/TextView;->mSpacingAdd:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mSpacingMult:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 5167
    :cond_0
    iput p1, p0, Landroid/widget/TextView;->mSpacingAdd:F

    .line 5168
    iput p2, p0, Landroid/widget/TextView;->mSpacingMult:F

    .line 5170
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz p1, :cond_1

    .line 5171
    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 5172
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 5173
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_1
    return-void
.end method

.method public setLines(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 4920
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    const/4 p1, 0x1

    .line 4921
    iput p1, p0, Landroid/widget/TextView;->mMinMode:I

    iput p1, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 4923
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 4924
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public final setLinkTextColor(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 4606
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    .line 4607
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    return-void
.end method

.method public final setLinkTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 4621
    iput-object p1, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    .line 4622
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    return-void
.end method

.method public final setLinksClickable(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 4511
    iput-boolean p1, p0, Landroid/widget/TextView;->mLinksClickable:Z

    return-void
.end method

.method public setMarqueeRepeatLimit(I)V
    .locals 0

    .line 9517
    iput p1, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    return-void
.end method

.method public setMaxEms(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 5047
    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    const/4 p1, 0x1

    .line 5048
    iput p1, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 5050
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 5051
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 4881
    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    const/4 p1, 0x2

    .line 4882
    iput p1, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 4884
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 4885
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setMaxLines(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 4842
    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    const/4 p1, 0x1

    .line 4843
    iput p1, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 4845
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 4846
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 5086
    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    const/4 p1, 0x2

    .line 5087
    iput p1, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 5089
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 5090
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setMinEms(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 4965
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    const/4 p1, 0x1

    .line 4966
    iput p1, p0, Landroid/widget/TextView;->mMinWidthMode:I

    .line 4968
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 4969
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setMinHeight(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 4803
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    const/4 p1, 0x2

    .line 4804
    iput p1, p0, Landroid/widget/TextView;->mMinMode:I

    .line 4806
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 4807
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setMinLines(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 4760
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    const/4 p1, 0x1

    .line 4761
    iput p1, p0, Landroid/widget/TextView;->mMinMode:I

    .line 4763
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 4764
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setMinWidth(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 5008
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    const/4 p1, 0x2

    .line 5009
    iput p1, p0, Landroid/widget/TextView;->mMinWidthMode:I

    .line 5011
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 5012
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public final setMovementMethod(Landroid/text/method/MovementMethod;)V
    .locals 1

    .line 2386
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eq v0, p1, :cond_1

    .line 2387
    iput-object p1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz p1, :cond_0

    .line 2389
    iget-object p1, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    if-nez p1, :cond_0

    .line 2390
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2393
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->fixFocusableAndClickableSettings()V

    .line 2397
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p0}, Landroid/widget/Editor;->prepareCursorControllers()V

    :cond_1
    return-void
.end method

.method public setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 1

    .line 6253
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 6254
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 6255
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object p0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-object p1, p0, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    return-void
.end method

.method public setPadding(IIII)V
    .locals 1

    .line 3265
    iget v0, p0, Landroid/widget/TextView;->mPaddingLeft:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mPaddingRight:I

    if-ne p3, v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mPaddingTop:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mPaddingBottom:I

    if-eq p4, v0, :cond_1

    .line 3269
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 3273
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 3274
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 1

    .line 3285
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 3286
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v0

    if-ne p3, v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mPaddingTop:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mPaddingBottom:I

    if-eq p4, v0, :cond_1

    .line 3289
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 3293
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 3294
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setPaintFlags(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 4703
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 4704
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFlags(I)V

    .line 4706
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz p1, :cond_0

    .line 4707
    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 4708
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 4709
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setPrivateImeOptions(Ljava/lang/String;)V
    .locals 1

    .line 6350
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 6351
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 6352
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object p0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-object p1, p0, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    return-void
.end method

.method public setRawInputType(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 6076
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    return-void

    .line 6077
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 6078
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput p1, p0, Landroid/widget/Editor;->mInputType:I

    return-void
.end method

.method public final setRestrictedAcrossUser(Z)V
    .locals 0

    .line 10474
    iput-boolean p1, p0, Landroid/widget/TextView;->mIsRestrictedAcrossUser:Z

    return-void
.end method

.method public setScroller(Landroid/widget/Scroller;)V
    .locals 0

    .line 10225
    iput-object p1, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    return-void
.end method

.method public setSelectAllOnFocus(Z)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 9552
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 9553
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean p1, v0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz p1, :cond_0

    .line 9555
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of p1, p1, Landroid/text/Spannable;

    if-nez p1, :cond_0

    .line 9556
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 2

    .line 10056
    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    .line 10058
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    if-eq p1, v0, :cond_1

    .line 10060
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    .line 10062
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    goto :goto_0

    .line 10064
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->stopMarquee()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setShadowLayer(FFFI)V
    .locals 1

    .line 4416
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 4418
    iput p1, p0, Landroid/widget/TextView;->mShadowRadius:F

    .line 4419
    iput p2, p0, Landroid/widget/TextView;->mShadowDx:F

    .line 4420
    iput p3, p0, Landroid/widget/TextView;->mShadowDy:F

    .line 4421
    iput p4, p0, Landroid/widget/TextView;->mShadowColor:I

    .line 4424
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz p1, :cond_0

    .line 4425
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p1}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    .line 4426
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p1}, Landroid/widget/Editor;->invalidateHandlesAndActionMode()V

    .line 4428
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public final setShowSoftInputOnFocus(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 4386
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 4387
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean p1, p0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    return-void
.end method

.method public setSingleLine()V
    .locals 1

    const/4 v0, 0x1

    .line 9391
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    return-void
.end method

.method public setSingleLine(Z)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 9441
    invoke-direct {p0, p1}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    const/4 v0, 0x1

    .line 9442
    invoke-direct {p0, p1, v0, v0}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    return-void
.end method

.method protected setSpan_internal(Ljava/lang/Object;III)V
    .locals 0

    .line 12087
    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast p0, Landroid/text/Editable;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public final setSpannableFactory(Landroid/text/Spannable$Factory;)V
    .locals 0

    .line 5514
    iput-object p1, p0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    .line 5515
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setText(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 5848
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 5849
    iput-boolean v0, p0, Landroid/widget/TextView;->mTextSetFromXmlOrResourceId:Z

    .line 5850
    iput p1, p0, Landroid/widget/TextView;->mTextId:I

    return-void
.end method

.method public final setText(ILandroid/widget/TextView$BufferType;)V
    .locals 1

    .line 5876
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    const/4 p2, 0x1

    .line 5877
    iput-boolean p2, p0, Landroid/widget/TextView;->mTextSetFromXmlOrResourceId:Z

    .line 5878
    iput p1, p0, Landroid/widget/TextView;->mTextId:I

    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 5545
    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5588
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    .line 5590
    iget-object p1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    if-eqz p1, :cond_0

    .line 5591
    iget-object p0, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/widget/TextView$CharWrapper;->access$202(Landroid/widget/TextView$CharWrapper;[C)[C

    :cond_0
    return-void
.end method

.method public final setText([CII)V
    .locals 3

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    .line 5779
    array-length v1, p1

    if-gt v0, v1, :cond_2

    .line 5788
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5789
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 5790
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v1, v0, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 5792
    invoke-direct {p0, v0, v1, v1, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    move v0, v1

    .line 5795
    :goto_0
    iget-object v2, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    if-nez v2, :cond_1

    .line 5796
    new-instance v2, Landroid/widget/TextView$CharWrapper;

    invoke-direct {v2, p1, p2, p3}, Landroid/widget/TextView$CharWrapper;-><init>([CII)V

    iput-object v2, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    goto :goto_1

    .line 5798
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    invoke-virtual {v2, p1, p2, p3}, Landroid/widget/TextView$CharWrapper;->set([CII)V

    .line 5801
    :goto_1
    iget-object p1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    iget-object p2, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-direct {p0, p1, p2, v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    return-void

    .line 5780
    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTextAppearance(I)V
    .locals 1

    .line 3412
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3423
    sget-object v0, Landroid/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 3424
    new-instance v0, Landroid/widget/TextView$TextAppearanceAttributes;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/TextView$TextAppearanceAttributes;-><init>(Landroid/widget/TextView$1;)V

    const/4 v1, 0x0

    .line 3425
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/TextView;->readTextAppearance(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/widget/TextView$TextAppearanceAttributes;Z)V

    .line 3426
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 3427
    invoke-direct {p0, v0}, Landroid/widget/TextView;->applyTextAppearance(Landroid/widget/TextView$TextAppearanceAttributes;)V

    return-void
.end method

.method public setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V
    .locals 0

    .line 11526
    iput-object p1, p0, Landroid/widget/TextView;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;

    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 4309
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 4310
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    if-eqz p1, :cond_0

    .line 4329
    iput-object p1, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 4330
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    return-void

    .line 4326
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setTextIsSelectable(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 6996
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    return-void

    .line 6998
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 6999
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mTextIsSelectable:Z

    if-ne v0, p1, :cond_1

    return-void

    .line 7001
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean p1, v0, Landroid/widget/Editor;->mTextIsSelectable:Z

    .line 7002
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    const/16 v0, 0x10

    .line 7003
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setFocusable(I)V

    .line 7004
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 7005
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLongClickable(Z)V

    if-eqz p1, :cond_2

    .line 7009
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 7010
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz p1, :cond_3

    sget-object p1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    goto :goto_1

    :cond_3
    sget-object p1, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    :goto_1
    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 7013
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p0}, Landroid/widget/Editor;->prepareCursorControllers()V

    return-void
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 5564
    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 3

    .line 5822
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 5823
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 5824
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 5826
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    if-gez v0, :cond_0

    if-ltz v1, :cond_1

    .line 5829
    :cond_0
    iget-object p1, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    if-eqz p1, :cond_1

    .line 5830
    iget-object p0, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    .line 5831
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 5832
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 5830
    invoke-static {p0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_1
    return-void
.end method

.method public setTextLocale(Ljava/util/Locale;)V
    .locals 1

    const/4 v0, 0x1

    .line 3749
    iput-boolean v0, p0, Landroid/widget/TextView;->mLocalesChanged:Z

    .line 3750
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextLocale(Ljava/util/Locale;)V

    .line 3751
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz p1, :cond_0

    .line 3752
    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 3753
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3754
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTextLocales(Landroid/os/LocaleList;)V
    .locals 1

    const/4 v0, 0x1

    .line 3770
    iput-boolean v0, p0, Landroid/widget/TextView;->mLocalesChanged:Z

    .line 3771
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextLocales(Landroid/os/LocaleList;)V

    .line 3772
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz p1, :cond_0

    .line 3773
    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 3774
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3775
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTextMetricsParams(Landroid/text/PrecomputedText$Params;)V
    .locals 2

    .line 4169
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    const/4 v0, 0x1

    .line 4170
    iput-boolean v0, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    .line 4171
    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getTextDirection()Landroid/text/TextDirectionHeuristic;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 4172
    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getBreakStrategy()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView;->mBreakStrategy:I

    .line 4173
    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getHyphenationFrequency()I

    move-result p1

    iput p1, p0, Landroid/widget/TextView;->mHyphenationFrequency:I

    .line 4174
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz p1, :cond_0

    .line 4175
    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 4176
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 4177
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTextScaleX(F)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 3900
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3901
    iput-boolean v0, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    .line 3902
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 3904
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz p1, :cond_0

    .line 3905
    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 3906
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3907
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v0, 0x2

    .line 3834
    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    .line 3849
    invoke-direct {p0}, Landroid/widget/TextView;->isAutoSizeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3850
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextView;->setTextSizeInternal(IFZ)V

    :cond_0
    return-void
.end method

.method public final setTransformationMethod(Landroid/text/method/TransformationMethod;)V
    .locals 2

    .line 2433
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-ne p1, v0, :cond_0

    return-void

    .line 2438
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_1

    .line 2439
    iget-object v0, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    if-eqz v0, :cond_1

    .line 2440
    iget-object v0, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2444
    :cond_1
    iput-object p1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    .line 2446
    instance-of v0, p1, Landroid/text/method/TransformationMethod2;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2447
    check-cast p1, Landroid/text/method/TransformationMethod2;

    .line 2448
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    .line 2449
    iget-boolean v0, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    invoke-interface {p1, v0}, Landroid/text/method/TransformationMethod2;->setLengthChangesAllowed(Z)V

    goto :goto_1

    .line 2451
    :cond_3
    iput-boolean v1, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    .line 2454
    :goto_1
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2456
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2457
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 2463
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 3926
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 3927
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 3929
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz p1, :cond_0

    .line 3930
    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 3931
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3932
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-lez p2, :cond_4

    if-nez p1, :cond_0

    .line 2143
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    .line 2145
    :cond_0
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 2148
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    if-eqz p1, :cond_1

    .line 2150
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    not-int p1, p1

    and-int/2addr p1, p2

    .line 2152
    iget-object p2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 2153
    iget-object p0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    const/high16 v0, -0x41800000    # -0.25f

    :cond_3
    invoke-virtual {p0, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    goto :goto_2

    .line 2155
    :cond_4
    iget-object p2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 2156
    iget-object p2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 2157
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_2
    return-void
.end method

.method public final setUndoManager(Landroid/content/UndoManager;Ljava/lang/String;)V
    .locals 0

    .line 2281
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "not implemented"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setWidth(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 5146
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    const/4 p1, 0x2

    .line 5147
    iput p1, p0, Landroid/widget/TextView;->mMinWidthMode:I

    iput p1, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 5149
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 5150
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public showContextMenu()Z
    .locals 2

    .line 10170
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    .line 10171
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-virtual {v0, v1, v1}, Landroid/widget/Editor;->setContextMenuAnchor(FF)V

    .line 10173
    :cond_0
    invoke-super {p0}, Landroid/view/View;->showContextMenu()Z

    move-result p0

    return p0
.end method

.method public showContextMenu(FF)Z
    .locals 1

    .line 10178
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    .line 10179
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->setContextMenuAnchor(FF)V

    .line 10181
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->showContextMenu(FF)Z

    move-result p0

    return p0
.end method

.method spanChange(Landroid/text/Spanned;Ljava/lang/Object;IIII)V
    .locals 7

    .line 9883
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 9885
    :goto_0
    sget-object v1, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p2, v1, :cond_3

    if-gez p3, :cond_1

    if-ltz p4, :cond_2

    .line 9890
    :cond_1
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-direct {p0, v1, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    .line 9891
    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    .line 9892
    invoke-direct {p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 9893
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->makeBlink()V

    :cond_2
    move v5, p4

    move v1, v4

    goto :goto_1

    :cond_3
    move v5, v2

    move v1, v3

    .line 9897
    :goto_1
    sget-object v6, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    if-ne p2, v6, :cond_6

    if-gez p3, :cond_4

    if-ltz p4, :cond_5

    .line 9902
    :cond_4
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 9903
    invoke-direct {p0, v1, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    :cond_5
    move v2, p4

    move v1, v4

    :cond_6
    if-eqz v1, :cond_b

    .line 9908
    iput-boolean v4, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 9909
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v4, v1, Landroid/widget/Editor;->mSelectionMoved:Z

    .line 9911
    :cond_7
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_b

    if-gez v2, :cond_8

    .line 9913
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    :cond_8
    if-gez v5, :cond_9

    .line 9916
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v5

    .line 9919
    :cond_9
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_a

    .line 9920
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->refreshTextActionMode()V

    .line 9921
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 9922
    invoke-virtual {v1}, Landroid/widget/Editor;->getTextActionMode()Landroid/view/ActionMode;

    move-result-object v1

    if-nez v1, :cond_a

    invoke-virtual {p0}, Landroid/widget/TextView;->hasTransientState()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 9924
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setHasTransientState(Z)V

    .line 9927
    :cond_a
    invoke-virtual {p0, v2, v5}, Landroid/widget/TextView;->onSelectionChanged(II)V

    .line 9931
    :cond_b
    instance-of v1, p2, Landroid/text/style/UpdateAppearance;

    if-nez v1, :cond_c

    instance-of v1, p2, Landroid/text/style/ParagraphStyle;

    if-nez v1, :cond_c

    instance-of v1, p2, Landroid/text/style/CharacterStyle;

    if-eqz v1, :cond_11

    :cond_c
    if-eqz v0, :cond_e

    .line 9933
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v1, :cond_d

    goto :goto_2

    .line 9938
    :cond_d
    iput-boolean v4, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    goto :goto_3

    .line 9934
    :cond_e
    :goto_2
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 9935
    iput-boolean v4, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 9936
    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    .line 9940
    :goto_3
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_11

    if-ltz p3, :cond_f

    .line 9941
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1, v2, p3, p5}, Landroid/widget/Editor;->invalidateTextDisplayList(Landroid/text/Layout;II)V

    :cond_f
    if-ltz p4, :cond_10

    .line 9942
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1, v2, p4, p6}, Landroid/widget/Editor;->invalidateTextDisplayList(Landroid/text/Layout;II)V

    .line 9943
    :cond_10
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->invalidateHandlesAndActionMode()V

    .line 9947
    :cond_11
    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->isMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 9948
    iput-boolean v4, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v0, :cond_12

    .line 9949
    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->isSelectingMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 9950
    iput-boolean v4, v0, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    .line 9953
    :cond_12
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    if-ltz p1, :cond_15

    if-eqz v0, :cond_14

    .line 9954
    iget p1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez p1, :cond_13

    goto :goto_4

    .line 9957
    :cond_13
    iput-boolean v4, v0, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    goto :goto_5

    .line 9955
    :cond_14
    :goto_4
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidateCursor()V

    .line 9962
    :cond_15
    :goto_5
    instance-of p1, p2, Landroid/text/ParcelableSpan;

    if-eqz p1, :cond_1a

    if-eqz v0, :cond_1a

    .line 9965
    iget-object p1, v0, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    if-eqz p1, :cond_1a

    .line 9966
    iget p1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-eqz p1, :cond_19

    if-ltz p3, :cond_17

    .line 9968
    iget p1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-le p1, p3, :cond_16

    .line 9969
    iput p3, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 9971
    :cond_16
    iget p1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-le p1, p5, :cond_17

    .line 9972
    iput p5, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    :cond_17
    if-ltz p4, :cond_1a

    .line 9976
    iget p1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-le p1, p4, :cond_18

    .line 9977
    iput p4, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 9979
    :cond_18
    iget p1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-le p1, p6, :cond_1a

    .line 9980
    iput p6, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    goto :goto_6

    .line 9989
    :cond_19
    iput-boolean v4, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 9994
    :cond_1a
    :goto_6
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz p1, :cond_1b

    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object p1, p1, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz p1, :cond_1b

    if-gez p4, :cond_1b

    instance-of p1, p2, Landroid/text/style/SpellCheckSpan;

    if-eqz p1, :cond_1b

    .line 9996
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object p0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    check-cast p2, Landroid/text/style/SpellCheckSpan;

    invoke-virtual {p0, p2}, Landroid/widget/SpellChecker;->onSpellCheckSpanRemoved(Landroid/text/style/SpellCheckSpan;)V

    :cond_1b
    return-void
.end method

.method protected stopTextActionMode()V
    .locals 1

    .line 11664
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    .line 11665
    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    :cond_0
    return-void
.end method

.method protected supportsAutoSizeText()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method textCanBeSelected()Z
    .locals 2

    .line 10445
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    invoke-interface {v0}, Landroid/text/method/MovementMethod;->canSelectArbitrarily()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 10446
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10447
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v1
.end method

.method updateAfterEdit()V
    .locals 3

    .line 9829
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 9830
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    if-gez v0, :cond_0

    .line 9832
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x50

    if-ne v1, v2, :cond_1

    .line 9833
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 9836
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    if-ltz v0, :cond_3

    const/4 v1, 0x1

    .line 9839
    iput-boolean v1, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 9840
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->makeBlink()V

    .line 9841
    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    :cond_3
    return-void
.end method

.method public useDynamicLayout()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 8322
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/widget/TextView;->mPrecomputed:Landroid/text/PrecomputedText;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method usesNoOpTextClassifier()Z
    .locals 1

    .line 11587
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object p0

    sget-object v0, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 4

    .line 6865
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6866
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v1, :cond_1

    .line 6867
    iget-object p0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object p0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    if-ne p1, v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected viewClicked(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 12062
    invoke-virtual {p1, p0}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method viewportToContentHorizontalOffset()I
    .locals 1

    .line 9314
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget p0, p0, Landroid/widget/TextView;->mScrollX:I

    sub-int/2addr v0, p0

    return v0
.end method

.method viewportToContentVerticalOffset()I
    .locals 3

    .line 9318
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mScrollY:I

    sub-int/2addr v0, v1

    .line 9319
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    .line 9320
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result p0

    add-int/2addr v0, p0

    :cond_0
    return v0
.end method
