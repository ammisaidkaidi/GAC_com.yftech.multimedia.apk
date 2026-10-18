.class public Landroid/widget/PopupWindow;
.super Ljava/lang/Object;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/PopupWindow$PopupBackgroundView;,
        Landroid/widget/PopupWindow$PopupDecorView;,
        Landroid/widget/PopupWindow$OnDismissListener;
    }
.end annotation


# static fields
.field private static final ABOVE_ANCHOR_STATE_SET:[I

.field private static final ANIMATION_STYLE_DEFAULT:I = -0x1

.field private static final DEFAULT_ANCHORED_GRAVITY:I = 0x800033

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2


# instance fields
.field private mAboveAnchor:Z

.field private mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mAllowScrollingAnchorParent:Z

.field private mAnchor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnchorRoot:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnchorXoff:I

.field private mAnchorYoff:I

.field private mAnchoredGravity:I

.field private mAnimationStyle:I

.field private mAttachedInDecor:Z

.field private mAttachedInDecorSet:Z

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundView:Landroid/view/View;

.field private mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mClipToScreen:Z

.field private mClippingEnabled:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

.field private mElevation:F

.field private mEnterTransition:Landroid/transition/Transition;

.field private mEpicenterBounds:Landroid/graphics/Rect;

.field private mExitTransition:Landroid/transition/Transition;

.field private mFocusable:Z

.field private mGravity:I

.field private mHeight:I

.field private mHeightMode:I

.field private mIgnoreCheekPress:Z

.field private mInputMethodMode:I

.field private mIsAnchorRootAttached:Z

.field private mIsDropdown:Z

.field private mIsShowing:Z

.field private mIsTransitioningToDismiss:Z

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLayoutInScreen:Z

.field private mLayoutInsetDecor:Z

.field private mNotTouchModal:Z

.field private final mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

.field private final mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private final mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mOutsideTouchable:Z

.field private mOverlapAnchor:Z

.field private mParentRootView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupViewInitialLayoutDirectionInherited:Z

.field private mSoftInputMode:I

.field private mSplitTouchEnabled:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTmpAppLocation:[I

.field private final mTmpDrawingLocation:[I

.field private final mTmpScreenLocation:[I

.field private mTouchInterceptor:Landroid/view/View$OnTouchListener;

.field private mTouchable:Z

.field private mWidth:I

.field private mWidthMode:I

.field private mWindowLayoutType:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 211
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100aa

    aput v2, v0, v1

    sput-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 337
    invoke-direct {p0, v1, v0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 364
    invoke-direct {p0, v0, p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 263
    invoke-direct {p0, p1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010076

    .line 272
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 281
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 139
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    .line 140
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/PopupWindow;->mTmpScreenLocation:[I

    .line 141
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/PopupWindow;->mTmpAppLocation:[I

    .line 142
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    .line 167
    iput v1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v2, 0x1

    .line 168
    iput v2, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 170
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 171
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 172
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    const/4 v3, -0x1

    .line 173
    iput v3, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 176
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 177
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 179
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    .line 180
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    const/4 v4, -0x2

    .line 185
    iput v4, p0, Landroid/widget/PopupWindow;->mWidth:I

    .line 188
    iput v4, p0, Landroid/widget/PopupWindow;->mHeight:I

    const/16 v4, 0x3e8

    .line 202
    iput v4, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 205
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 207
    iput v3, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 209
    iput v1, p0, Landroid/widget/PopupWindow;->mGravity:I

    .line 215
    new-instance v4, Landroid/widget/PopupWindow$1;

    invoke-direct {v4, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v4, p0, Landroid/widget/PopupWindow;->mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 230
    new-instance v4, Landroid/widget/PopupWindow$2;

    invoke-direct {v4, p0}, Landroid/widget/PopupWindow$2;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v4, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 245
    new-instance v4, Landroid/widget/-$$Lambda$PopupWindow$nV1HS3Nc6Ck5JRIbIHe3mkyHWzc;

    invoke-direct {v4, p0}, Landroid/widget/-$$Lambda$PopupWindow$nV1HS3Nc6Ck5JRIbIHe3mkyHWzc;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v4, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 247
    new-instance v4, Landroid/widget/-$$Lambda$PopupWindow$8Gc2stI5cSJZbuKX7X4Qr_vU2nI;

    invoke-direct {v4, p0}, Landroid/widget/-$$Lambda$PopupWindow$8Gc2stI5cSJZbuKX7X4Qr_vU2nI;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v4, p0, Landroid/widget/PopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 290
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    .line 291
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    iput-object v4, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 293
    sget-object v4, Lcom/android/internal/R$styleable;->PopupWindow:[I

    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 295
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 p3, 0x3

    const/4 p4, 0x0

    .line 296
    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Landroid/widget/PopupWindow;->mElevation:F

    .line 297
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    .line 302
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 303
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    const p4, 0x10302fc

    if-ne p3, p4, :cond_0

    .line 305
    iput v3, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    goto :goto_0

    .line 307
    :cond_0
    iput p3, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    goto :goto_0

    .line 310
    :cond_1
    iput v3, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    :goto_0
    const/4 p3, 0x4

    .line 313
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-direct {p0, p3}, Landroid/widget/PopupWindow;->getTransition(I)Landroid/transition/Transition;

    move-result-object p3

    const/4 p4, 0x5

    .line 316
    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 317
    invoke-virtual {p1, p4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    invoke-direct {p0, p4}, Landroid/widget/PopupWindow;->getTransition(I)Landroid/transition/Transition;

    move-result-object p4

    goto :goto_1

    :cond_2
    if-nez p3, :cond_3

    const/4 p4, 0x0

    goto :goto_1

    .line 320
    :cond_3
    invoke-virtual {p3}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object p4

    .line 323
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 325
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    .line 326
    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    .line 327
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 350
    invoke-direct {p0, p1, v0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1

    const/4 v0, 0x0

    .line 380
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 3

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 139
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    .line 140
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/PopupWindow;->mTmpScreenLocation:[I

    .line 141
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/PopupWindow;->mTmpAppLocation:[I

    .line 142
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 167
    iput v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v1, 0x1

    .line 168
    iput v1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 170
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 171
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 172
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    const/4 v2, -0x1

    .line 173
    iput v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 176
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 177
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 179
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    .line 180
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    const/4 v1, -0x2

    .line 185
    iput v1, p0, Landroid/widget/PopupWindow;->mWidth:I

    .line 188
    iput v1, p0, Landroid/widget/PopupWindow;->mHeight:I

    const/16 v1, 0x3e8

    .line 202
    iput v1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 205
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 207
    iput v2, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 209
    iput v0, p0, Landroid/widget/PopupWindow;->mGravity:I

    .line 215
    new-instance v0, Landroid/widget/PopupWindow$1;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 230
    new-instance v0, Landroid/widget/PopupWindow$2;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow$2;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 245
    new-instance v0, Landroid/widget/-$$Lambda$PopupWindow$nV1HS3Nc6Ck5JRIbIHe3mkyHWzc;

    invoke-direct {v0, p0}, Landroid/widget/-$$Lambda$PopupWindow$nV1HS3Nc6Ck5JRIbIHe3mkyHWzc;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 247
    new-instance v0, Landroid/widget/-$$Lambda$PopupWindow$8Gc2stI5cSJZbuKX7X4Qr_vU2nI;

    invoke-direct {v0, p0}, Landroid/widget/-$$Lambda$PopupWindow$8Gc2stI5cSJZbuKX7X4Qr_vU2nI;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz p1, :cond_0

    .line 397
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 398
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 401
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 402
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 403
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 404
    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    return-void
.end method

.method static synthetic access$000(Landroid/widget/PopupWindow;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Landroid/widget/PopupWindow;->alignToAnchor()V

    return-void
.end method

.method static synthetic access$102(Landroid/widget/PopupWindow;Z)Z
    .locals 0

    .line 106
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    return p1
.end method

.method static synthetic access$200(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/PopupWindow;)Landroid/view/View$OnTouchListener;
    .locals 0

    .line 106
    iget-object p0, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method static synthetic access$600(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 106
    iget-object p0, p0, Landroid/widget/PopupWindow;->mParentRootView:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$700(Landroid/widget/PopupWindow;)Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return p0
.end method

.method static synthetic access$800()[I
    .locals 1

    .line 106
    sget-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-object v0
.end method

.method private alignToAnchor()V
    .locals 10

    .line 2349
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    if-eqz v2, :cond_1

    .line 2350
    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hasDecorView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2351
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2353
    iget v4, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    iget v5, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v8, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    const/4 v9, 0x0

    move-object v1, p0

    move-object v3, v0

    invoke-virtual/range {v1 .. v9}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 2355
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    :cond_1
    return-void
.end method

.method private computeAnimationResource()I
    .locals 2

    .line 1556
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1557
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-eqz v0, :cond_1

    .line 1558
    iget-boolean p0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz p0, :cond_0

    const p0, 0x10302f0

    goto :goto_0

    :cond_0
    const p0, 0x10302ef

    :goto_0
    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    .line 1564
    :cond_2
    iget p0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    return p0
.end method

.method private computeFlags(I)I
    .locals 3

    const v0, -0x868219

    and-int/2addr p1, v0

    .line 1517
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    if-eqz v0, :cond_0

    const v0, 0x8000

    or-int/2addr p1, v0

    .line 1520
    :cond_0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    const/high16 v1, 0x20000

    if-nez v0, :cond_1

    or-int/lit8 p1, p1, 0x8

    .line 1522
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    or-int/2addr p1, v1

    goto :goto_0

    .line 1525
    :cond_1
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    or-int/2addr p1, v1

    .line 1528
    :cond_2
    :goto_0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    if-nez v0, :cond_3

    or-int/lit8 p1, p1, 0x10

    .line 1531
    :cond_3
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    if-eqz v0, :cond_4

    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    .line 1534
    :cond_4
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    if-eqz v0, :cond_6

    :cond_5
    or-int/lit16 p1, p1, 0x200

    .line 1537
    :cond_6
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isSplitTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    const/high16 v0, 0x800000

    or-int/2addr p1, v0

    .line 1540
    :cond_7
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    if-eqz v0, :cond_8

    or-int/lit16 p1, p1, 0x100

    .line 1543
    :cond_8
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    if-eqz v0, :cond_9

    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    .line 1546
    :cond_9
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    if-eqz v0, :cond_a

    or-int/lit8 p1, p1, 0x20

    .line 1549
    :cond_a
    iget-boolean p0, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    if-eqz p0, :cond_b

    const/high16 p0, 0x40000000    # 2.0f

    or-int/2addr p1, p0

    :cond_b
    return p1
.end method

.method private computeGravity()I
    .locals 2

    .line 1451
    iget v0, p0, Landroid/widget/PopupWindow;->mGravity:I

    if-nez v0, :cond_0

    const v0, 0x800033

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/widget/PopupWindow;->mGravity:I

    .line 1452
    :goto_0
    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    if-nez v1, :cond_1

    iget-boolean p0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    if-eqz p0, :cond_2

    :cond_1
    const/high16 p0, 0x10000000

    or-int/2addr v0, p0

    :cond_2
    return v0
.end method

.method private createBackgroundView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupBackgroundView;
    .locals 4

    .line 1377
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    if-eqz v0, :cond_0

    .line 1379
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1385
    :goto_0
    new-instance v0, Landroid/widget/PopupWindow$PopupBackgroundView;

    iget-object v3, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v3}, Landroid/widget/PopupWindow$PopupBackgroundView;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    .line 1386
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1388
    invoke-virtual {v0, p1, p0}, Landroid/widget/PopupWindow$PopupBackgroundView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private createDecorView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupDecorView;
    .locals 4

    .line 1400
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    if-eqz v0, :cond_0

    .line 1402
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1408
    :goto_0
    new-instance v0, Landroid/widget/PopupWindow$PopupDecorView;

    iget-object v3, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v3}, Landroid/widget/PopupWindow$PopupDecorView;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    .line 1409
    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/PopupWindow$PopupDecorView;->addView(Landroid/view/View;II)V

    const/4 p0, 0x0

    .line 1410
    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow$PopupDecorView;->setClipChildren(Z)V

    .line 1411
    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow$PopupDecorView;->setClipToPadding(Z)V

    return-object v0
.end method

.method private dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    .line 1986
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1987
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 1991
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    const/4 p1, 0x0

    .line 1996
    iput-object p1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 1997
    iput-object p1, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    const/4 p1, 0x0

    .line 1998
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    return-void
.end method

.method private getAppRootView(Landroid/view/View;)Landroid/view/View;
    .locals 1

    .line 2360
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object p0

    .line 2361
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 2360
    invoke-virtual {p0, v0}, Landroid/view/WindowManagerGlobal;->getWindowView(Landroid/os/IBinder;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 2365
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private getTransition(I)Landroid/transition/Transition;
    .locals 1

    if-eqz p1, :cond_1

    const/high16 v0, 0x10f0000

    if-eq p1, v0, :cond_1

    .line 475
    iget-object p0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object p0

    .line 476
    invoke-virtual {p0, p1}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 478
    instance-of p1, p0, Landroid/transition/TransitionSet;

    if-eqz p1, :cond_0

    move-object p1, p0

    check-cast p1, Landroid/transition/TransitionSet;

    .line 479
    invoke-virtual {p1}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    .line 1425
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1426
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1429
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 1430
    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->setFitsSystemWindows(Z)V

    .line 1432
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 1434
    iget-object v1, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1436
    iget-object p1, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    if-eqz p1, :cond_1

    .line 1437
    iget-object p0, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow$PopupDecorView;->requestEnterTransition(Landroid/transition/Transition;)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$nV1HS3Nc6Ck5JRIbIHe3mkyHWzc(Landroid/widget/PopupWindow;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/PopupWindow;->alignToAnchor()V

    return-void
.end method

.method public static synthetic lambda$new$0(Landroid/widget/PopupWindow;Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 248
    invoke-direct {p0}, Landroid/widget/PopupWindow;->alignToAnchor()V

    return-void
.end method

.method private positionInDisplayHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z
    .locals 0

    sub-int/2addr p4, p3

    .line 1758
    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr p0, p4

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1760
    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr p0, p2

    if-le p0, p6, :cond_0

    .line 1763
    iget p3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr p0, p6

    sub-int/2addr p3, p0

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1766
    :cond_0
    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ge p0, p5, :cond_2

    .line 1769
    iput p5, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr p6, p5

    if-eqz p7, :cond_1

    if-le p2, p6, :cond_1

    .line 1773
    iput p6, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 1779
    :goto_1
    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr p2, p4

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    return p0
.end method

.method private positionInDisplayVertical(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z
    .locals 0

    sub-int/2addr p4, p3

    .line 1706
    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr p0, p4

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1707
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1709
    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr p0, p2

    if-le p0, p6, :cond_0

    .line 1712
    iget p3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr p0, p6

    sub-int/2addr p3, p0

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1715
    :cond_0
    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ge p0, p5, :cond_2

    .line 1718
    iput p5, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr p6, p5

    if-eqz p7, :cond_1

    if-le p2, p6, :cond_1

    .line 1722
    iput p6, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 1728
    :goto_1
    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr p2, p4

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    return p0
.end method

.method private preparePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 3

    .line 1332
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_4

    .line 1337
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 1338
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const v1, 0x104054c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 1343
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    if-eqz v0, :cond_1

    .line 1344
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->cancelTransitions()V

    .line 1349
    :cond_1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 1350
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->createBackgroundView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupBackgroundView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    .line 1351
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1353
    :cond_2
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    .line 1356
    :goto_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->createDecorView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupDecorView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 1357
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->setIsRootNamespace(Z)V

    .line 1360
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget v2, p0, Landroid/widget/PopupWindow;->mElevation:F

    invoke-virtual {v0, v2}, Landroid/view/View;->setElevation(F)V

    .line 1364
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    invoke-virtual {p1, v0, v1, v1}, Landroid/view/WindowManager$LayoutParams;->setSurfaceInsets(Landroid/view/View;ZZ)V

    .line 1366
    iget-object p1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 1367
    invoke-virtual {p1}, Landroid/view/View;->getRawLayoutDirection()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    return-void

    .line 1333
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private setLayoutDirectionFromAnchor()V
    .locals 2

    .line 1442
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 1443
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1444
    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    if-eqz v1, :cond_0

    .line 1445
    iget-object p0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow$PopupDecorView;->setLayoutDirection(I)V

    :cond_0
    return-void
.end method

.method private tryFitHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z
    .locals 9

    sub-int v0, p6, p5

    move-object v1, p1

    .line 1737
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v2, v0

    sub-int v0, p8, v2

    const/4 v8, 0x1

    if-ltz v2, :cond_0

    move v2, p3

    if-gt v2, v0, :cond_1

    return v8

    :cond_0
    move v2, p3

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    .line 1743
    invoke-direct/range {v0 .. v7}, Landroid/widget/PopupWindow;->positionInDisplayHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v0

    if-eqz v0, :cond_2

    return v8

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private tryFitVertical(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z
    .locals 9

    move-object v1, p1

    move v2, p3

    sub-int v5, p6, p5

    .line 1675
    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v6, v5

    sub-int v5, p8, v6

    const/4 v8, 0x1

    if-ltz v6, :cond_0

    if-gt v2, v5, :cond_0

    return v8

    :cond_0
    sub-int/2addr v6, p4

    sub-int v6, v6, p7

    if-gt v2, v6, :cond_2

    move-object v6, p0

    .line 1684
    iget-boolean v4, v6, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    if-eqz v4, :cond_1

    add-int v0, p2, p4

    goto :goto_0

    :cond_1
    move v0, p2

    :goto_0
    sub-int v2, p5, v2

    add-int/2addr v2, v0

    .line 1687
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    return v8

    :cond_2
    move-object v6, p0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    .line 1692
    invoke-direct/range {v0 .. v7}, Landroid/widget/PopupWindow;->positionInDisplayVertical(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v0

    if-eqz v0, :cond_3

    return v8

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private update(Landroid/view/View;ZIIII)V
    .locals 20

    move-object/from16 v9, p0

    move-object/from16 v1, p1

    move/from16 v0, p3

    move/from16 v2, p4

    .line 2241
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_9

    .line 2245
    :cond_0
    iget-object v3, v9, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 2246
    iget v7, v9, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    if-eqz p2, :cond_2

    .line 2248
    iget v4, v9, Landroid/widget/PopupWindow;->mAnchorXoff:I

    if-ne v4, v0, :cond_1

    iget v4, v9, Landroid/widget/PopupWindow;->mAnchorYoff:I

    if-eq v4, v2, :cond_2

    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-eqz v3, :cond_4

    .line 2249
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_4

    if-eqz v4, :cond_3

    iget-boolean v3, v9, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_5

    .line 2253
    iput v0, v9, Landroid/widget/PopupWindow;->mAnchorXoff:I

    .line 2254
    iput v2, v9, Landroid/widget/PopupWindow;->mAnchorYoff:I

    goto :goto_2

    .line 2250
    :cond_4
    :goto_1
    invoke-virtual {v9, v1, v0, v2, v7}, Landroid/widget/PopupWindow;->attachToAnchor(Landroid/view/View;III)V

    .line 2257
    :cond_5
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    .line 2258
    iget v13, v12, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2259
    iget v14, v12, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2260
    iget v15, v12, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2261
    iget v8, v12, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2262
    iget v6, v12, Landroid/view/WindowManager$LayoutParams;->y:I

    if-gez p5, :cond_6

    .line 2267
    iget v0, v9, Landroid/widget/PopupWindow;->mWidth:I

    move/from16 v16, v0

    goto :goto_3

    :cond_6
    move/from16 v16, p5

    :goto_3
    if-gez p6, :cond_7

    .line 2270
    iget v0, v9, Landroid/widget/PopupWindow;->mHeight:I

    move/from16 v17, v0

    goto :goto_4

    :cond_7
    move/from16 v17, p6

    .line 2273
    :goto_4
    iget v3, v9, Landroid/widget/PopupWindow;->mAnchorXoff:I

    iget v4, v9, Landroid/widget/PopupWindow;->mAnchorYoff:I

    iget-boolean v5, v9, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move/from16 v18, v5

    move/from16 v5, v16

    move v10, v6

    move/from16 v6, v17

    move v11, v8

    move/from16 v8, v18

    invoke-virtual/range {v0 .. v8}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v0

    .line 2275
    invoke-virtual {v9, v0}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 2277
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-ne v13, v0, :cond_9

    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v11, v0, :cond_9

    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ne v10, v0, :cond_9

    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v14, v0, :cond_9

    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v15, v0, :cond_8

    goto :goto_5

    :cond_8
    const/16 v19, 0x0

    goto :goto_6

    :cond_9
    :goto_5
    const/16 v19, 0x1

    :goto_6
    if-gez v16, :cond_a

    goto :goto_7

    .line 2284
    :cond_a
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v16, v0

    :goto_7
    if-gez v17, :cond_b

    move/from16 v0, v17

    goto :goto_8

    .line 2285
    :cond_b
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2286
    :goto_8
    iget v1, v12, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v12, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 p1, v1

    move/from16 p2, v2

    move/from16 p3, v16

    move/from16 p4, v0

    move/from16 p5, v19

    invoke-virtual/range {p0 .. p5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    return-void

    :cond_c
    :goto_9
    return-void
.end method


# virtual methods
.method protected attachToAnchor(Landroid/view/View;III)V
    .locals 2

    .line 2321
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    .line 2323
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2325
    iget-object v1, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 2327
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2329
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 2330
    iget-object v1, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2331
    iget-object v1, p0, Landroid/widget/PopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2333
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 2334
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    .line 2335
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    .line 2336
    iget-object p1, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Landroid/widget/PopupWindow;->mParentRootView:Ljava/lang/ref/WeakReference;

    .line 2338
    iput p2, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    .line 2339
    iput p3, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    .line 2340
    iput p4, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    return-void
.end method

.method protected final createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 2

    .line 1468
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1474
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeGravity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1475
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1476
    iget v1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1477
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1478
    iget p1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1479
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1481
    iget-object p1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 1482
    iget-object p1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x3

    .line 1484
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1487
    :goto_0
    iget p1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez p1, :cond_1

    .line 1488
    iget p1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    iput p1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1

    .line 1490
    :cond_1
    iget p1, p0, Landroid/widget/PopupWindow;->mHeight:I

    iput p1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1493
    :goto_1
    iget p1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez p1, :cond_2

    .line 1494
    iget p1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    iput p1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_2

    .line 1496
    :cond_2
    iget p1, p0, Landroid/widget/PopupWindow;->mWidth:I

    iput p1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_2
    const p1, 0x18000

    .line 1499
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1503
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PopupWindow:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method protected detachFromAnchor()V
    .locals 3

    .line 2301
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getAnchor()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2303
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 2304
    iget-object v2, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 2305
    iget-object v1, p0, Landroid/widget/PopupWindow;->mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2308
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 2310
    iget-object v2, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2311
    iget-object v2, p0, Landroid/widget/PopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2314
    :cond_2
    iput-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 2315
    iput-object v1, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    .line 2316
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    return-void
.end method

.method public dismiss()V
    .locals 8

    .line 1880
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isTransitioningToDismiss()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 1884
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 1885
    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 1888
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 1889
    instance-of v3, v2, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 1890
    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    move-object v2, v4

    .line 1896
    :goto_0
    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->cancelTransitions()V

    const/4 v3, 0x0

    .line 1898
    iput-boolean v3, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    const/4 v3, 0x1

    .line 1899
    iput-boolean v3, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    .line 1906
    iget-object v3, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    if-eqz v3, :cond_4

    .line 1907
    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->isLaidOut()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    if-nez v5, :cond_4

    .line 1910
    :cond_2
    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager$LayoutParams;

    .line 1911
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1912
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v6, v6, 0x8

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1913
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v7, -0x20001

    and-int/2addr v6, v7

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1914
    iget-object v6, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v6, v0, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1916
    iget-object v5, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_3

    iget-object v4, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1917
    :cond_3
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getTransitionEpicenter()Landroid/graphics/Rect;

    move-result-object v5

    .line 1922
    new-instance v6, Landroid/widget/PopupWindow$3;

    invoke-direct {v6, p0, v0, v2, v1}, Landroid/widget/PopupWindow$3;-><init>(Landroid/widget/PopupWindow;Landroid/widget/PopupWindow$PopupDecorView;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/PopupWindow$PopupDecorView;->startExitTransition(Landroid/transition/Transition;Landroid/view/View;Landroid/graphics/Rect;Landroid/transition/Transition$TransitionListener;)V

    goto :goto_1

    .line 1930
    :cond_4
    invoke-direct {p0, v0, v2, v1}, Landroid/widget/PopupWindow;->dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 1934
    :goto_1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    .line 1936
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_5

    .line 1937
    iget-object p0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {p0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_5
    return-void

    :cond_6
    :goto_2
    return-void
.end method

.method protected findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z
    .locals 27

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    .line 1588
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v13

    .line 1589
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v14

    .line 1590
    iget-boolean v0, v10, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    if-eqz v0, :cond_0

    sub-int v0, p4, v13

    move v15, v0

    goto :goto_0

    :cond_0
    move/from16 v15, p4

    .line 1595
    :goto_0
    iget-object v9, v10, Landroid/widget/PopupWindow;->mTmpAppLocation:[I

    .line 1596
    invoke-direct/range {p0 .. p1}, Landroid/widget/PopupWindow;->getAppRootView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 1597
    invoke-virtual {v0, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1599
    iget-object v8, v10, Landroid/widget/PopupWindow;->mTmpScreenLocation:[I

    .line 1600
    invoke-virtual {v11, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1602
    iget-object v7, v10, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    const/16 v16, 0x0

    .line 1603
    aget v1, v8, v16

    aget v2, v9, v16

    sub-int/2addr v1, v2

    aput v1, v7, v16

    const/4 v6, 0x1

    .line 1604
    aget v1, v8, v6

    aget v2, v9, v6

    sub-int/2addr v1, v2

    aput v1, v7, v6

    .line 1605
    aget v1, v7, v16

    add-int v1, v1, p3

    iput v1, v12, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1606
    aget v1, v7, v6

    add-int/2addr v1, v13

    add-int/2addr v1, v15

    iput v1, v12, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1608
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 1609
    invoke-virtual {v0, v5}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const/4 v0, -0x1

    move/from16 v1, p5

    if-ne v1, v0, :cond_1

    .line 1611
    iget v1, v5, Landroid/graphics/Rect;->right:I

    iget v2, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    :cond_1
    move v4, v1

    move/from16 v1, p6

    if-ne v1, v0, :cond_2

    .line 1614
    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    iget v1, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    move v3, v0

    goto :goto_1

    :cond_2
    move v3, v1

    .line 1618
    :goto_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/PopupWindow;->computeGravity()I

    move-result v0

    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1619
    iput v4, v12, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1620
    iput v3, v12, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1624
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    move/from16 v1, p7

    invoke-static {v1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    and-int/lit8 v2, v0, 0x7

    const/4 v1, 0x5

    if-ne v2, v1, :cond_3

    .line 1627
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v17, v4, v14

    sub-int v0, v0, v17

    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1631
    :cond_3
    aget v17, v7, v6

    aget v18, v8, v6

    iget v0, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v19, v8

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    const/16 v20, 0x0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v22, v2

    move v2, v15

    move/from16 v23, v3

    move/from16 v24, v4

    move v4, v13

    move-object/from16 v25, v5

    move/from16 v5, v17

    move/from16 v6, v18

    move-object/from16 v17, v7

    move/from16 v7, v21

    move-object/from16 v10, v19

    move-object/from16 v18, v9

    move/from16 v9, v20

    invoke-direct/range {v0 .. v9}, Landroid/widget/PopupWindow;->tryFitVertical(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    move-result v19

    .line 1636
    aget v5, v17, v16

    aget v6, v10, v16

    move-object/from16 v9, v25

    iget v7, v9, Landroid/graphics/Rect;->left:I

    iget v8, v9, Landroid/graphics/Rect;->right:I

    move/from16 v2, p3

    move/from16 v3, v24

    move v4, v14

    move-object/from16 v26, v9

    move/from16 v9, v20

    invoke-direct/range {v0 .. v9}, Landroid/widget/PopupWindow;->tryFitHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    move-result v0

    if-eqz v19, :cond_5

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v13, 0x1

    goto/16 :goto_4

    .line 1642
    :cond_5
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v0

    .line 1643
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v1

    .line 1644
    new-instance v2, Landroid/graphics/Rect;

    add-int v4, v0, v24

    add-int v4, v4, p3

    add-int v3, v1, v23

    add-int/2addr v3, v13

    add-int/2addr v3, v15

    invoke-direct {v2, v0, v1, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p8, :cond_6

    const/4 v9, 0x1

    .line 1646
    invoke-virtual {v11, v2, v9}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1648
    invoke-virtual {v11, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1649
    aget v0, v10, v16

    aget v1, v18, v16

    sub-int/2addr v0, v1

    aput v0, v17, v16

    .line 1650
    aget v0, v10, v9

    aget v1, v18, v9

    sub-int/2addr v0, v1

    aput v0, v17, v9

    .line 1651
    aget v0, v17, v16

    add-int v0, v0, p3

    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1652
    aget v0, v17, v9

    add-int/2addr v0, v13

    add-int/2addr v0, v15

    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v0, v22

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    .line 1656
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v4, v24, v14

    sub-int/2addr v0, v4

    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_3

    :cond_6
    const/4 v9, 0x1

    .line 1661
    :cond_7
    :goto_3
    aget v5, v17, v9

    aget v6, v10, v9

    move-object/from16 v11, v26

    iget v7, v11, Landroid/graphics/Rect;->top:I

    iget v8, v11, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v18, v10

    move-object/from16 v10, p0

    iget-boolean v4, v10, Landroid/widget/PopupWindow;->mClipToScreen:Z

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v15

    move/from16 v3, v23

    move v15, v4

    move v4, v13

    move v13, v9

    move v9, v15

    invoke-direct/range {v0 .. v9}, Landroid/widget/PopupWindow;->tryFitVertical(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    .line 1663
    aget v5, v17, v16

    aget v6, v18, v16

    iget v7, v11, Landroid/graphics/Rect;->left:I

    iget v8, v11, Landroid/graphics/Rect;->right:I

    iget-boolean v9, v10, Landroid/widget/PopupWindow;->mClipToScreen:Z

    move/from16 v2, p3

    move/from16 v3, v24

    move v4, v14

    invoke-direct/range {v0 .. v9}, Landroid/widget/PopupWindow;->tryFitHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    .line 1668
    :goto_4
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->y:I

    aget v1, v17, v13

    if-ge v0, v1, :cond_8

    goto :goto_5

    :cond_8
    move/from16 v13, v16

    :goto_5
    return v13
.end method

.method protected final getAllowScrollingAnchorParent()Z
    .locals 0

    .line 864
    iget-boolean p0, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    return p0
.end method

.method protected getAnchor()Landroid/view/View;
    .locals 1

    .line 2345
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getAnimationStyle()I
    .locals 0

    .line 574
    iget p0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    return p0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 496
    iget-object p0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getContentView()Landroid/view/View;
    .locals 0

    .line 617
    iget-object p0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method protected getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 2201
    iget-object p0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method public getElevation()F
    .locals 0

    .line 554
    iget p0, p0, Landroid/widget/PopupWindow;->mElevation:F

    return p0
.end method

.method public getEnterTransition()Landroid/transition/Transition;
    .locals 0

    .line 427
    iget-object p0, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    return-object p0
.end method

.method public getExitTransition()Landroid/transition/Transition;
    .locals 0

    .line 451
    iget-object p0, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    .line 1044
    iget p0, p0, Landroid/widget/PopupWindow;->mHeight:I

    return p0
.end method

.method public getInputMethodMode()I
    .locals 0

    .line 705
    iget p0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    return p0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;)I
    .locals 1

    const/4 v0, 0x0

    .line 1795
    invoke-virtual {p0, p1, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result p0

    return p0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;I)I
    .locals 1

    const/4 v0, 0x0

    .line 1810
    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result p0

    return p0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 4

    .line 1831
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1833
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->getAppRootView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 1834
    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    if-eqz p3, :cond_0

    .line 1840
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 1841
    invoke-virtual {p1, p3}, Landroid/view/View;->getWindowDisplayFrame(Landroid/graphics/Rect;)V

    .line 1842
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p3, Landroid/graphics/Rect;->top:I

    .line 1843
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p3, Landroid/graphics/Rect;->right:I

    .line 1844
    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p3, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    move-object p3, v0

    .line 1849
    :goto_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    .line 1850
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1852
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    .line 1855
    iget-boolean v2, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 1856
    aget p1, v0, v3

    sub-int/2addr v1, p1

    sub-int/2addr v1, p2

    goto :goto_1

    .line 1858
    :cond_1
    aget v2, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v2, p1

    sub-int/2addr v1, v2

    sub-int/2addr v1, p2

    .line 1860
    :goto_1
    aget p1, v0, v3

    iget p3, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p3

    add-int/2addr p1, p2

    .line 1863
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1864
    iget-object p2, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_2

    .line 1865
    iget-object p2, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1866
    iget-object p2, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    iget-object p0, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, p0

    sub-int/2addr p1, p2

    :cond_2
    return p1
.end method

.method protected final getOnDismissListener()Landroid/widget/PopupWindow$OnDismissListener;
    .locals 0

    .line 2012
    iget-object p0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-object p0
.end method

.method public getOverlapAnchor()Z
    .locals 0

    .line 1122
    iget-boolean p0, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    return p0
.end method

.method public getSoftInputMode()I
    .locals 0

    .line 747
    iget p0, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    return p0
.end method

.method protected final getTransitionEpicenter()Landroid/graphics/Rect;
    .locals 6

    .line 1954
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1955
    :goto_0
    iget-object v2, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    if-eqz v0, :cond_3

    if-nez v2, :cond_1

    goto :goto_1

    .line 1960
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v1

    .line 1961
    iget-object v2, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v2}, Landroid/widget/PopupWindow$PopupDecorView;->getLocationOnScreen()[I

    move-result-object v2

    .line 1964
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v5, 0x0

    invoke-direct {v3, v5, v5, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1965
    aget v0, v1, v5

    aget v4, v2, v5

    sub-int/2addr v0, v4

    const/4 v4, 0x1

    aget v1, v1, v4

    aget v2, v2, v4

    sub-int/2addr v1, v2

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1968
    iget-object v0, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    .line 1969
    iget v0, v3, Landroid/graphics/Rect;->left:I

    .line 1970
    iget v1, v3, Landroid/graphics/Rect;->top:I

    .line 1971
    iget-object p0, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1972
    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    :cond_2
    return-object v3

    :cond_3
    :goto_1
    return-object v1
.end method

.method public getWidth()I
    .locals 0

    .line 1076
    iget p0, p0, Landroid/widget/PopupWindow;->mWidth:I

    return p0
.end method

.method public getWindowLayoutType()I
    .locals 0

    .line 991
    iget p0, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    return p0
.end method

.method protected hasContentView()Z
    .locals 0

    .line 2191
    iget-object p0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected hasDecorView()Z
    .locals 0

    .line 2196
    iget-object p0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAboveAnchor()Z
    .locals 0

    .line 1321
    iget-boolean p0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return p0
.end method

.method public isAttachedInDecor()Z
    .locals 0

    .line 931
    iget-boolean p0, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    return p0
.end method

.method public isClippingEnabled()Z
    .locals 0

    .line 821
    iget-boolean p0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    return p0
.end method

.method public isFocusable()Z
    .locals 0

    .line 676
    iget-boolean p0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    return p0
.end method

.method public isLayoutInScreenEnabled()Z
    .locals 0

    .line 906
    iget-boolean p0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    return p0
.end method

.method protected final isLayoutInsetDecor()Z
    .locals 0

    .line 969
    iget-boolean p0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    return p0
.end method

.method public isOutsideTouchable()Z
    .locals 0

    .line 789
    iget-boolean p0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    return p0
.end method

.method public isShowing()Z
    .locals 0

    .line 1131
    iget-boolean p0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    return p0
.end method

.method public isSplitTouchEnabled()Z
    .locals 3

    .line 875
    iget v0, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 876
    iget-object p0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0xb

    if-lt p0, v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 878
    :cond_1
    iget p0, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    if-ne p0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public isTouchable()Z
    .locals 0

    .line 758
    iget-boolean p0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    return p0
.end method

.method protected final isTransitioningToDismiss()Z
    .locals 0

    .line 1151
    iget-boolean p0, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    return p0
.end method

.method setAllowScrollingAnchorParent(Z)V
    .locals 0

    .line 859
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 0

    .line 606
    iput p1, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    return-void
.end method

.method public setAttachedInDecor(Z)V
    .locals 0

    .line 947
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    const/4 p1, 0x1

    .line 948
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 508
    iput-object p1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 519
    iget-object p1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of p1, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz p1, :cond_3

    .line 520
    iget-object p1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    check-cast p1, Landroid/graphics/drawable/StateListDrawable;

    .line 523
    sget-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v0

    .line 527
    invoke-virtual {p1}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v1, :cond_1

    if-eq v2, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_1
    if-eq v0, v3, :cond_2

    if-eq v2, v3, :cond_2

    .line 539
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 540
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 542
    iput-object p1, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 543
    iput-object p1, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    :cond_3
    :goto_2
    return-void
.end method

.method public setClipToScreenEnabled(Z)V
    .locals 0

    .line 849
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    return-void
.end method

.method public setClippingEnabled(Z)V
    .locals 0

    .line 839
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 632
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 636
    :cond_0
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 638
    iget-object p1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-nez p1, :cond_1

    iget-object p1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 639
    iget-object p1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 642
    :cond_1
    iget-object p1, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez p1, :cond_2

    iget-object p1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 643
    iget-object p1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 650
    :cond_2
    iget-object p1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    if-nez p1, :cond_4

    .line 654
    iget-object p1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x16

    if-lt p1, v0, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setAttachedInDecor(Z)V

    :cond_4
    return-void
.end method

.method protected final setDropDown(Z)V
    .locals 0

    .line 1141
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    return-void
.end method

.method public setElevation(F)V
    .locals 0

    .line 565
    iput p1, p0, Landroid/widget/PopupWindow;->mElevation:F

    return-void
.end method

.method public setEnterTransition(Landroid/transition/Transition;)V
    .locals 0

    .line 415
    iput-object p1, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    return-void
.end method

.method public setEpicenterBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 470
    iput-object p1, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public setExitTransition(Landroid/transition/Transition;)V
    .locals 0

    .line 438
    iput-object p1, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    return-void
.end method

.method public setFocusable(Z)V
    .locals 0

    .line 696
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 1062
    iput p1, p0, Landroid/widget/PopupWindow;->mHeight:I

    return-void
.end method

.method public setIgnoreCheekPress()V
    .locals 1

    const/4 v0, 0x1

    .line 589
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 0

    .line 722
    iput p1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    return-void
.end method

.method public setLayoutInScreenEnabled(Z)V
    .locals 0

    .line 918
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    return-void
.end method

.method public setLayoutInsetDecor(Z)V
    .locals 0

    .line 964
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 2007
    iput-object p1, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public setOutsideTouchable(Z)V
    .locals 0

    .line 810
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    return-void
.end method

.method public setOverlapAnchor(Z)V
    .locals 0

    .line 1110
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    return-void
.end method

.method protected final setShowing(Z)V
    .locals 0

    .line 1136
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 0

    .line 736
    iput p1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    return-void
.end method

.method public setSplitTouchEnabled(Z)V
    .locals 0

    .line 895
    iput p1, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    return-void
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 665
    iput-object p1, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setTouchModal(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 1000
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    return-void
.end method

.method public setTouchable(Z)V
    .locals 0

    .line 777
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    return-void
.end method

.method protected final setTransitioningToDismiss(Z)V
    .locals 0

    .line 1146
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 1094
    iput p1, p0, Landroid/widget/PopupWindow;->mWidth:I

    return-void
.end method

.method public setWindowLayoutMode(II)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1029
    iput p1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    .line 1030
    iput p2, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    return-void
.end method

.method public setWindowLayoutType(I)V
    .locals 0

    .line 982
    iput p1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 1219
    invoke-virtual {p0, p1, v0, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 1

    const v0, 0x800033

    .line 1240
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 10

    .line 1264
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1268
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-static {v0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 1270
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->attachToAnchor(Landroid/view/View;III)V

    const/4 v0, 0x1

    .line 1272
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 1273
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 1276
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1277
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 1279
    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-boolean v9, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move v4, p2

    move v5, p3

    move v8, p4

    invoke-virtual/range {v1 .. v9}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result p2

    .line 1281
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    if-eqz p1, :cond_1

    .line 1282
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result p1

    int-to-long p1, p1

    goto :goto_0

    :cond_1
    const-wide/16 p1, -0x1

    :goto_0
    iput-wide p1, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 1284
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public showAtLocation(Landroid/os/IBinder;III)V
    .locals 1

    .line 1185
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1189
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-static {v0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 1191
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    const/4 v0, 0x1

    .line 1193
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    const/4 v0, 0x0

    .line 1194
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 1195
    iput p2, p0, Landroid/widget/PopupWindow;->mGravity:I

    .line 1197
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 1198
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 1200
    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1201
    iput p4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1203
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 2

    .line 1169
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mParentRootView:Ljava/lang/ref/WeakReference;

    .line 1170
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    return-void
.end method

.method public update()V
    .locals 5

    .line 2030
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2034
    :cond_0
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    .line 2038
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v2

    .line 2039
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    .line 2040
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    move v1, v4

    .line 2044
    :cond_1
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v2

    .line 2045
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v2, v3, :cond_2

    .line 2046
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move v1, v4

    .line 2050
    :cond_2
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeGravity()I

    move-result v2

    .line 2051
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v2, v3, :cond_3

    .line 2052
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move v1, v4

    :cond_3
    if-eqz v1, :cond_5

    .line 2057
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/widget/PopupWindow;->update(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    :cond_5
    return-void

    :cond_6
    :goto_1
    return-void
.end method

.method public update(II)V
    .locals 7

    .line 2077
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2078
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v6, 0x0

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    return-void
.end method

.method public update(IIII)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 2094
    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    return-void
.end method

.method public update(IIIIZ)V
    .locals 4

    if-ltz p3, :cond_0

    .line 2114
    iput p3, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    .line 2115
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setWidth(I)V

    :cond_0
    if-ltz p4, :cond_1

    .line 2119
    iput p4, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    .line 2120
    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 2123
    :cond_1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_2

    .line 2127
    :cond_2
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2131
    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v1, :cond_3

    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    goto :goto_0

    :cond_3
    iget v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    :goto_0
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq p3, v2, :cond_4

    .line 2132
    iget p3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq p3, v1, :cond_4

    .line 2133
    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move p5, v3

    .line 2137
    :cond_4
    iget p3, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez p3, :cond_5

    iget p3, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    goto :goto_1

    :cond_5
    iget p3, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    :goto_1
    if-eq p4, v2, :cond_6

    .line 2138
    iget p4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq p4, p3, :cond_6

    .line 2139
    iput p3, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move p5, v3

    .line 2143
    :cond_6
    iget p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq p3, p1, :cond_7

    .line 2144
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move p5, v3

    .line 2148
    :cond_7
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq p1, p2, :cond_8

    .line 2149
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move p5, v3

    .line 2153
    :cond_8
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result p1

    .line 2154
    iget p2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq p1, p2, :cond_9

    .line 2155
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    move p5, v3

    .line 2159
    :cond_9
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result p1

    .line 2160
    iget p2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq p1, p2, :cond_a

    .line 2161
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move p5, v3

    .line 2165
    :cond_a
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeGravity()I

    move-result p1

    .line 2166
    iget p2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq p1, p2, :cond_b

    .line 2167
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move p5, v3

    :cond_b
    const/4 p1, 0x0

    .line 2174
    iget-object p2, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_c

    iget-object p2, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 2175
    iget-object p1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 2176
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v2

    :cond_c
    int-to-long p2, v2

    .line 2179
    iget-wide v1, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    cmp-long p4, p2, v1

    if-eqz p4, :cond_d

    .line 2180
    iput-wide p2, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    move p5, v3

    :cond_d
    if-eqz p5, :cond_e

    .line 2185
    invoke-virtual {p0, p1, v0}, Landroid/widget/PopupWindow;->update(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    :cond_e
    return-void

    :cond_f
    :goto_2
    return-void
.end method

.method public update(Landroid/view/View;II)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move v6, p3

    .line 2215
    invoke-direct/range {v0 .. v6}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIII)V

    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .locals 7

    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 2235
    invoke-direct/range {v0 .. v6}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIII)V

    return-void
.end method

.method protected update(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    .line 2063
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 2064
    iget-object p1, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-interface {p1, p0, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected final updateAboveAnchor(Z)V
    .locals 1

    .line 1289
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eq p1, v0, :cond_2

    .line 1290
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    .line 1292
    iget-object p1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 1296
    iget-object p1, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 1297
    iget-boolean p1, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz p1, :cond_0

    .line 1298
    iget-object p1, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget-object p0, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1300
    :cond_0
    iget-object p1, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget-object p0, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1303
    :cond_1
    iget-object p0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    :cond_2
    :goto_0
    return-void
.end method
