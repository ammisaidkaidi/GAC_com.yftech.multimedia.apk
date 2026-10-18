.class public Landroid/widget/Gallery;
.super Landroid/widget/AbsSpinner;
.source "Gallery.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Gallery$LayoutParams;,
        Landroid/widget/Gallery$FlingRunnable;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final SCROLL_TO_FLING_UNCERTAINTY_TIMEOUT:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "Gallery"

.field private static final localLOGV:Z = false


# instance fields
.field private mAnimationDuration:I

.field private mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

.field private mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

.field private mDownTouchPosition:I

.field private mDownTouchView:Landroid/view/View;

.field private mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGravity:I

.field private mIsFirstScroll:Z

.field private mIsRtl:Z

.field private mLeftMost:I

.field private mReceivedInvokeKeyDown:Z

.field private mRightMost:I

.field private mSelectedCenterOffset:I

.field private mSelectedChild:Landroid/view/View;

.field private mShouldCallbackDuringFling:Z

.field private mShouldCallbackOnUnselectedItemClick:Z

.field private mShouldStopFling:Z

.field private mSpacing:I

.field private mSuppressSelectionChanged:Z

.field private mUnselectedAlpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 192
    invoke-direct {p0, p1, v0}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010070

    .line 196
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 200
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 204
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Landroid/widget/Gallery;->mSpacing:I

    const/16 v1, 0x190

    .line 84
    iput v1, p0, Landroid/widget/Gallery;->mAnimationDuration:I

    .line 121
    new-instance v1, Landroid/widget/Gallery$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/Gallery$FlingRunnable;-><init>(Landroid/widget/Gallery;)V

    iput-object v1, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    .line 127
    new-instance v1, Landroid/widget/Gallery$1;

    invoke-direct {v1, p0}, Landroid/widget/Gallery$1;-><init>(Landroid/widget/Gallery;)V

    iput-object v1, p0, Landroid/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x1

    .line 152
    iput-boolean v1, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    .line 157
    iput-boolean v1, p0, Landroid/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 183
    iput-boolean v1, p0, Landroid/widget/Gallery;->mIsRtl:Z

    .line 206
    sget-object v2, Lcom/android/internal/R$styleable;->Gallery:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, -0x1

    .line 209
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    if-ltz p3, :cond_0

    .line 211
    invoke-virtual {p0, p3}, Landroid/widget/Gallery;->setGravity(I)V

    .line 215
    :cond_0
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-lez p2, :cond_1

    .line 217
    invoke-virtual {p0, p2}, Landroid/widget/Gallery;->setAnimationDuration(I)V

    :cond_1
    const/4 p2, 0x2

    .line 221
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    .line 222
    invoke-virtual {p0, p2}, Landroid/widget/Gallery;->setSpacing(I)V

    const/4 p2, 0x3

    const/high16 p3, 0x3f000000    # 0.5f

    .line 224
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    .line 226
    invoke-virtual {p0, p2}, Landroid/widget/Gallery;->setUnselectedAlpha(F)V

    .line 228
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 232
    iget p1, p0, Landroid/widget/Gallery;->mGroupFlags:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Landroid/widget/Gallery;->mGroupFlags:I

    .line 234
    iget p1, p0, Landroid/widget/Gallery;->mGroupFlags:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Landroid/widget/Gallery;->mGroupFlags:I

    return-void
.end method

.method static synthetic access$002(Landroid/widget/Gallery;Z)Z
    .locals 0

    .line 63
    iput-boolean p1, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    return p1
.end method

.method static synthetic access$1000(Landroid/widget/Gallery;)I
    .locals 0

    .line 63
    iget p0, p0, Landroid/widget/Gallery;->mPaddingRight:I

    return p0
.end method

.method static synthetic access$1100(Landroid/widget/Gallery;)I
    .locals 0

    .line 63
    iget p0, p0, Landroid/widget/Gallery;->mPaddingRight:I

    return p0
.end method

.method static synthetic access$1200(Landroid/widget/Gallery;)I
    .locals 0

    .line 63
    iget p0, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    return p0
.end method

.method static synthetic access$300(Landroid/widget/Gallery;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Landroid/widget/Gallery;->dispatchUnpress()V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/Gallery;)I
    .locals 0

    .line 63
    iget p0, p0, Landroid/widget/Gallery;->mAnimationDuration:I

    return p0
.end method

.method static synthetic access$500(Landroid/widget/Gallery;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Landroid/widget/Gallery;->scrollIntoSlots()V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/Gallery;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    return p0
.end method

.method static synthetic access$602(Landroid/widget/Gallery;Z)Z
    .locals 0

    .line 63
    iput-boolean p1, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$702(Landroid/widget/Gallery;I)I
    .locals 0

    .line 63
    iput p1, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    return p1
.end method

.method static synthetic access$800(Landroid/widget/Gallery;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    return p0
.end method

.method static synthetic access$900(Landroid/widget/Gallery;)I
    .locals 0

    .line 63
    iget p0, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    return p0
.end method

.method private calculateTop(Landroid/view/View;Z)I
    .locals 3

    if-eqz p2, :cond_0

    .line 944
    invoke-virtual {p0}, Landroid/widget/Gallery;->getMeasuredHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Gallery;->getHeight()I

    move-result v0

    :goto_0
    if-eqz p2, :cond_1

    .line 945
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    :goto_1
    const/4 p2, 0x0

    .line 949
    iget v1, p0, Landroid/widget/Gallery;->mGravity:I

    const/16 v2, 0x10

    if-eq v1, v2, :cond_4

    const/16 v2, 0x30

    if-eq v1, v2, :cond_3

    const/16 v2, 0x50

    if-eq v1, v2, :cond_2

    goto :goto_2

    .line 959
    :cond_2
    iget-object p0, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p0

    sub-int p2, v0, p1

    goto :goto_2

    .line 951
    :cond_3
    iget-object p0, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget p2, p0, Landroid/graphics/Rect;->top:I

    goto :goto_2

    .line 954
    :cond_4
    iget-object p2, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p2

    iget-object p2, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    sub-int/2addr v0, p1

    .line 956
    iget-object p0, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    div-int/lit8 v0, v0, 0x2

    add-int p2, p0, v0

    :goto_2
    return p2
.end method

.method private detachOffScreenChildren(Z)V
    .locals 10

    .line 493
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v0

    .line 494
    iget v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 499
    iget v3, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    move v4, v2

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v4, v0, :cond_2

    .line 501
    iget-boolean v7, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v7, :cond_0

    add-int/lit8 v7, v0, -0x1

    sub-int/2addr v7, v4

    goto :goto_1

    :cond_0
    move v7, v4

    .line 502
    :goto_1
    invoke-virtual {p0, v7}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 503
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v9

    if-lt v9, v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 508
    iget-object v5, p0, Landroid/widget/Gallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    add-int v9, v1, v7

    invoke-virtual {v5, v9, v8}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_0

    .line 511
    :cond_2
    :goto_2
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-nez v0, :cond_7

    goto :goto_6

    .line 515
    :cond_3
    invoke-virtual {p0}, Landroid/widget/Gallery;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/widget/Gallery;->mPaddingRight:I

    sub-int/2addr v3, v4

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    move v5, v2

    move v6, v5

    :goto_3
    if-ltz v4, :cond_6

    .line 517
    iget-boolean v7, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v7, :cond_4

    sub-int v7, v0, v4

    goto :goto_4

    :cond_4
    move v7, v4

    .line 518
    :goto_4
    invoke-virtual {p0, v7}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 519
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    if-gt v9, v3, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 524
    iget-object v5, p0, Landroid/widget/Gallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    add-int v9, v1, v7

    invoke-virtual {v5, v9, v8}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    add-int/lit8 v4, v4, -0x1

    move v5, v7

    goto :goto_3

    .line 527
    :cond_6
    :goto_5
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v0, :cond_7

    goto :goto_6

    :cond_7
    move v2, v5

    .line 532
    :goto_6
    invoke-virtual {p0, v2, v6}, Landroid/widget/Gallery;->detachViewsFromParent(II)V

    .line 534
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eq p1, v0, :cond_8

    .line 535
    iget p1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    add-int/2addr p1, v6

    iput p1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    :cond_8
    return-void
.end method

.method private dispatchLongPress(Landroid/view/View;IJFFZ)Z
    .locals 8

    .line 1209
    iget-object v0, p0, Landroid/widget/Gallery;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1210
    iget-object v2, p0, Landroid/widget/Gallery;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    iget-object v4, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v5, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    move-object v3, p0

    move-wide v6, p3

    invoke-interface/range {v2 .. v7}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    .line 1215
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Landroid/widget/Gallery;->mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz p7, :cond_1

    .line 1218
    invoke-super {p0, p1, p5, p6}, Landroid/widget/AbsSpinner;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result v0

    goto :goto_1

    .line 1220
    :cond_1
    invoke-super {p0, p0}, Landroid/widget/AbsSpinner;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 1225
    invoke-virtual {p0, v1}, Landroid/widget/Gallery;->performHapticFeedback(I)Z

    :cond_3
    return v0
.end method

.method private dispatchPress(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1123
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1126
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->setPressed(Z)V

    return-void
.end method

.method private dispatchUnpress()V
    .locals 3

    .line 1131
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 1132
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1135
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/Gallery;->setPressed(Z)V

    return-void
.end method

.method private fillToGalleryLeft()V
    .locals 1

    .line 700
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v0, :cond_0

    .line 701
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeftRtl()V

    goto :goto_0

    .line 703
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeftLtr()V

    :goto_0
    return-void
.end method

.method private fillToGalleryLeftLtr()V
    .locals 6

    .line 739
    iget v0, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 740
    iget v1, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    const/4 v2, 0x0

    .line 743
    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 748
    iget v5, p0, Landroid/widget/Gallery;->mFirstPosition:I

    add-int/lit8 v4, v5, -0x1

    .line 749
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v3, v0

    goto :goto_0

    .line 753
    :cond_0
    iget v3, p0, Landroid/widget/Gallery;->mRight:I

    iget v5, p0, Landroid/widget/Gallery;->mLeft:I

    sub-int/2addr v3, v5

    iget v5, p0, Landroid/widget/Gallery;->mPaddingRight:I

    sub-int/2addr v3, v5

    .line 754
    iput-boolean v4, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    move v4, v2

    :goto_0
    if-le v3, v1, :cond_1

    if-ltz v4, :cond_1

    .line 758
    iget v5, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    sub-int v5, v4, v5

    invoke-direct {p0, v4, v5, v3, v2}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v3

    .line 762
    iput v4, p0, Landroid/widget/Gallery;->mFirstPosition:I

    .line 765
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v3, v0

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private fillToGalleryLeftRtl()V
    .locals 6

    .line 708
    iget v0, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 709
    iget v1, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    .line 710
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v2

    .line 711
    iget v3, p0, Landroid/widget/Gallery;->mItemCount:I

    add-int/lit8 v3, v2, -0x1

    .line 714
    invoke-virtual {p0, v3}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 719
    iget v4, p0, Landroid/widget/Gallery;->mFirstPosition:I

    add-int/2addr v4, v2

    .line 720
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    goto :goto_0

    .line 723
    :cond_0
    iget v2, p0, Landroid/widget/Gallery;->mItemCount:I

    const/4 v3, 0x1

    add-int/lit8 v4, v2, -0x1

    iput v4, p0, Landroid/widget/Gallery;->mFirstPosition:I

    .line 724
    iget v2, p0, Landroid/widget/Gallery;->mRight:I

    iget v5, p0, Landroid/widget/Gallery;->mLeft:I

    sub-int/2addr v2, v5

    iget v5, p0, Landroid/widget/Gallery;->mPaddingRight:I

    sub-int/2addr v2, v5

    .line 725
    iput-boolean v3, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    :goto_0
    if-le v2, v1, :cond_1

    .line 728
    iget v3, p0, Landroid/widget/Gallery;->mItemCount:I

    if-ge v4, v3, :cond_1

    .line 729
    iget v3, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    sub-int v3, v4, v3

    const/4 v5, 0x0

    invoke-direct {p0, v4, v3, v2, v5}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v2

    .line 733
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private fillToGalleryRight()V
    .locals 1

    .line 771
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v0, :cond_0

    .line 772
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRightRtl()V

    goto :goto_0

    .line 774
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRightLtr()V

    :goto_0
    return-void
.end method

.method private fillToGalleryRightLtr()V
    .locals 7

    .line 810
    iget v0, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 811
    iget v1, p0, Landroid/widget/Gallery;->mRight:I

    iget v2, p0, Landroid/widget/Gallery;->mLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/Gallery;->mPaddingRight:I

    sub-int/2addr v1, v2

    .line 812
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v2

    .line 813
    iget v3, p0, Landroid/widget/Gallery;->mItemCount:I

    add-int/lit8 v4, v2, -0x1

    .line 816
    invoke-virtual {p0, v4}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 821
    iget v6, p0, Landroid/widget/Gallery;->mFirstPosition:I

    add-int/2addr v6, v2

    .line 822
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    goto :goto_0

    .line 824
    :cond_0
    iget v2, p0, Landroid/widget/Gallery;->mItemCount:I

    add-int/lit8 v6, v2, -0x1

    iput v6, p0, Landroid/widget/Gallery;->mFirstPosition:I

    .line 825
    iget v2, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    .line 826
    iput-boolean v5, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    :goto_0
    if-ge v2, v1, :cond_1

    if-ge v6, v3, :cond_1

    .line 830
    iget v4, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    sub-int v4, v6, v4

    invoke-direct {p0, v6, v4, v2, v5}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v2

    .line 834
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private fillToGalleryRightRtl()V
    .locals 6

    .line 779
    iget v0, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 780
    iget v1, p0, Landroid/widget/Gallery;->mRight:I

    iget v2, p0, Landroid/widget/Gallery;->mLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/Gallery;->mPaddingRight:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    .line 783
    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 788
    iget v2, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v2, v4

    .line 789
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v3, v0

    goto :goto_0

    .line 792
    :cond_0
    iget v3, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    .line 793
    iput-boolean v4, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    :goto_0
    if-ge v3, v1, :cond_1

    if-ltz v2, :cond_1

    .line 797
    iget v5, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    sub-int v5, v2, v5

    invoke-direct {p0, v2, v5, v3, v4}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v3

    .line 801
    iput v2, p0, Landroid/widget/Gallery;->mFirstPosition:I

    .line 804
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getCenterOfGallery()I
    .locals 2

    .line 476
    invoke-virtual {p0}, Landroid/widget/Gallery;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/Gallery;->mPaddingRight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget p0, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    add-int/2addr v0, p0

    return v0
.end method

.method private static getCenterOfView(Landroid/view/View;)I
    .locals 1

    .line 483
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    return v0
.end method

.method private makeAndAddView(IIIZ)Landroid/view/View;
    .locals 3

    .line 857
    iget-boolean v0, p0, Landroid/widget/Gallery;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 858
    iget-object v0, p0, Landroid/widget/Gallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 861
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p1

    .line 864
    iget v1, p0, Landroid/widget/Gallery;->mRightMost:I

    .line 865
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, p1

    .line 864
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/widget/Gallery;->mRightMost:I

    .line 866
    iget v1, p0, Landroid/widget/Gallery;->mLeftMost:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/widget/Gallery;->mLeftMost:I

    .line 869
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/widget/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    return-object v0

    .line 876
    :cond_0
    iget-object v0, p0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 879
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    return-object p1
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 2

    .line 467
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 468
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onFinishedMovement()V
    .locals 2

    .line 559
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 560
    iput-boolean v1, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 563
    invoke-super {p0}, Landroid/widget/AbsSpinner;->selectionChanged()V

    .line 565
    :cond_0
    iput v1, p0, Landroid/widget/Gallery;->mSelectedCenterOffset:I

    .line 566
    invoke-virtual {p0}, Landroid/widget/Gallery;->invalidate()V

    return-void
.end method

.method private scrollIntoSlots()V
    .locals 2

    .line 545
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_1

    .line 547
    :cond_0
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-static {v0}, Landroid/widget/Gallery;->getCenterOfView(Landroid/view/View;)I

    move-result v0

    .line 548
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    move-result v1

    sub-int/2addr v1, v0

    if-eqz v1, :cond_1

    .line 552
    iget-object p0, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    invoke-virtual {p0, v1}, Landroid/widget/Gallery$FlingRunnable;->startUsingDistance(I)V

    goto :goto_0

    .line 554
    :cond_1
    invoke-direct {p0}, Landroid/widget/Gallery;->onFinishedMovement()V

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method private scrollToChild(I)Z
    .locals 1

    .line 1305
    invoke-virtual {p0, p1}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1308
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    move-result v0

    invoke-static {p1}, Landroid/widget/Gallery;->getCenterOfView(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v0, p1

    .line 1309
    iget-object p0, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    invoke-virtual {p0, v0}, Landroid/widget/Gallery$FlingRunnable;->startUsingDistance(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private setSelectionToCenterChild()V
    .locals 6

    .line 582
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 583
    iget-object v1, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-nez v1, :cond_0

    return-void

    .line 585
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    move-result v1

    .line 588
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    if-gt v2, v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    const v0, 0x7fffffff

    const/4 v2, 0x0

    .line 595
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_4

    .line 597
    invoke-virtual {p0, v3}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 599
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    if-gt v5, v1, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    if-lt v5, v1, :cond_2

    move v2, v3

    goto :goto_1

    .line 605
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 606
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 605
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v4, v0, :cond_3

    move v2, v3

    move v0, v4

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 613
    :cond_4
    :goto_1
    iget v0, p0, Landroid/widget/Gallery;->mFirstPosition:I

    add-int/2addr v0, v2

    .line 615
    iget v1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    if-eq v0, v1, :cond_5

    .line 616
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->setSelectedPositionInt(I)V

    .line 617
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->setNextSelectedPositionInt(I)V

    .line 618
    invoke-virtual {p0}, Landroid/widget/Gallery;->checkSelectionChanged()V

    :cond_5
    return-void
.end method

.method private setUpChild(Landroid/view/View;IIZ)V
    .locals 6

    .line 900
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery$LayoutParams;

    if-nez v0, :cond_0

    .line 902
    invoke-virtual {p0}, Landroid/widget/Gallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery$LayoutParams;

    .line 905
    :cond_0
    iget-boolean v1, p0, Landroid/widget/Gallery;->mIsRtl:Z

    const/4 v2, 0x0

    if-eq p4, v1, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v1, v0, v3}, Landroid/widget/Gallery;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    if-nez p2, :cond_2

    move v2, v3

    .line 907
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 910
    iget p2, p0, Landroid/widget/Gallery;->mHeightMeasureSpec:I

    iget-object v1, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/Gallery$LayoutParams;->height:I

    invoke-static {p2, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    .line 912
    iget v1, p0, Landroid/widget/Gallery;->mWidthMeasureSpec:I

    iget-object v2, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v4

    iget v0, v0, Landroid/widget/Gallery$LayoutParams;->width:I

    invoke-static {v1, v2, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 916
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->measure(II)V

    .line 922
    invoke-direct {p0, p1, v3}, Landroid/widget/Gallery;->calculateTop(Landroid/view/View;Z)I

    move-result p0

    .line 923
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p2, p0

    .line 925
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-eqz p4, :cond_3

    add-int p4, p3, v0

    goto :goto_1

    :cond_3
    sub-int p4, p3, v0

    move v5, p4

    move p4, p3

    move p3, v5

    .line 934
    :goto_1
    invoke-virtual {p1, p3, p0, p4, p2}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private showContextMenuForChildInternal(Landroid/view/View;FFZ)Z
    .locals 8

    .line 1176
    invoke-virtual {p0, p1}, Landroid/widget/Gallery;->getPositionForView(Landroid/view/View;)I

    move-result v2

    if-gez v2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1181
    :cond_0
    iget-object v0, p0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, v2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v3

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move v6, p3

    move v7, p4

    .line 1182
    invoke-direct/range {v0 .. v7}, Landroid/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJFFZ)Z

    move-result p0

    return p0
.end method

.method private showContextMenuInternal(FFZ)Z
    .locals 9

    .line 1196
    invoke-virtual {p0}, Landroid/widget/Gallery;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 1197
    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v0, v1

    .line 1198
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1199
    iget v3, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget-wide v4, p0, Landroid/widget/Gallery;->mSelectedRowId:J

    move-object v1, p0

    move v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v1 .. v8}, Landroid/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJFFZ)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private updateSelectedItemMetadata()V
    .locals 3

    .line 1326
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 1328
    iget v1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 1333
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1334
    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 1336
    invoke-virtual {p0}, Landroid/widget/Gallery;->hasFocus()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1337
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_1
    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_2

    const/4 p0, 0x0

    .line 1345
    invoke-virtual {v0, p0}, Landroid/view/View;->setSelected(Z)V

    .line 1349
    invoke-virtual {v0, p0}, Landroid/view/View;->setFocusable(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 337
    instance-of p0, p1, Landroid/widget/Gallery$LayoutParams;

    return p0
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 0

    .line 326
    iget p0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    return p0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 0

    .line 332
    iget p0, p0, Landroid/widget/Gallery;->mItemCount:I

    return p0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1234
    invoke-virtual {p1, p0, v0, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 1

    .line 1151
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1152
    iget-object p0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 0

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 355
    new-instance p0, Landroid/widget/Gallery$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 347
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/Gallery;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/widget/Gallery$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 342
    new-instance p0, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {p0, p1}, Landroid/widget/Gallery$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    .line 1405
    const-class p0, Landroid/widget/Gallery;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1

    .line 1370
    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget p0, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v0, p0

    if-gez v0, :cond_0

    return p2

    :cond_0
    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_1

    return v0

    :cond_1
    if-lt p2, v0, :cond_2

    add-int/lit8 p2, p2, 0x1

    return p2

    :cond_2
    return p2
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 0

    .line 374
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    return p0
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1

    .line 311
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 312
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget p0, p0, Landroid/widget/Gallery;->mUnselectedAlpha:F

    :goto_0
    invoke-virtual {p2, p0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    const/4 p0, 0x1

    return p0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 0

    .line 1158
    iget-object p0, p0, Landroid/widget/Gallery;->mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    return-object p0
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .locals 3

    .line 429
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    iget v0, p0, Landroid/widget/Gallery;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 430
    :goto_0
    iget v2, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return p2

    .line 436
    :cond_1
    invoke-static {v0}, Landroid/widget/Gallery;->getCenterOfView(Landroid/view/View;)I

    move-result v0

    .line 437
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    move-result p0

    if-eqz p1, :cond_2

    if-gt v0, p0, :cond_3

    return v1

    :cond_2
    if-lt v0, p0, :cond_3

    return v1

    :cond_3
    sub-int/2addr p0, v0

    if-eqz p1, :cond_4

    .line 456
    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_1

    .line 457
    :cond_4
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    :goto_1
    return p0
.end method

.method layout(IZ)V
    .locals 3

    .line 635
    invoke-virtual {p0}, Landroid/widget/Gallery;->isLayoutRtl()Z

    move-result p1

    iput-boolean p1, p0, Landroid/widget/Gallery;->mIsRtl:Z

    .line 637
    iget-object p1, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 638
    iget p2, p0, Landroid/widget/Gallery;->mRight:I

    iget v0, p0, Landroid/widget/Gallery;->mLeft:I

    sub-int/2addr p2, v0

    iget-object v0, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, v0

    iget-object v0, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, v0

    .line 640
    iget-boolean v0, p0, Landroid/widget/Gallery;->mDataChanged:Z

    if-eqz v0, :cond_0

    .line 641
    invoke-virtual {p0}, Landroid/widget/Gallery;->handleDataChanged()V

    .line 645
    :cond_0
    iget v0, p0, Landroid/widget/Gallery;->mItemCount:I

    if-nez v0, :cond_1

    .line 646
    invoke-virtual {p0}, Landroid/widget/Gallery;->resetList()V

    return-void

    .line 651
    :cond_1
    iget v0, p0, Landroid/widget/Gallery;->mNextSelectedPosition:I

    if-ltz v0, :cond_2

    .line 652
    iget v0, p0, Landroid/widget/Gallery;->mNextSelectedPosition:I

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->setSelectedPositionInt(I)V

    .line 656
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Gallery;->recycleAllViews()V

    .line 660
    invoke-virtual {p0}, Landroid/widget/Gallery;->detachAllViewsFromParent()V

    const/4 v0, 0x0

    .line 666
    iput v0, p0, Landroid/widget/Gallery;->mRightMost:I

    .line 667
    iput v0, p0, Landroid/widget/Gallery;->mLeftMost:I

    .line 675
    iget v1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iput v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    .line 676
    iget v1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v0, v2}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v1

    .line 679
    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    iget p2, p0, Landroid/widget/Gallery;->mSelectedCenterOffset:I

    add-int/2addr p1, p2

    .line 681
    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 683
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRight()V

    .line 684
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeft()V

    .line 687
    iget-object p1, p0, Landroid/widget/Gallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {p1}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    .line 689
    invoke-virtual {p0}, Landroid/widget/Gallery;->invalidate()V

    .line 690
    invoke-virtual {p0}, Landroid/widget/Gallery;->checkSelectionChanged()V

    .line 692
    iput-boolean v0, p0, Landroid/widget/Gallery;->mDataChanged:Z

    .line 693
    iput-boolean v0, p0, Landroid/widget/Gallery;->mNeedSync:Z

    .line 694
    iget p1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    invoke-virtual {p0, p1}, Landroid/widget/Gallery;->setNextSelectedPositionInt(I)V

    .line 696
    invoke-direct {p0}, Landroid/widget/Gallery;->updateSelectedItemMetadata()V

    return-void
.end method

.method moveDirection(I)Z
    .locals 1

    .line 1293
    invoke-virtual {p0}, Landroid/widget/Gallery;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    neg-int p1, p1

    .line 1294
    :cond_0
    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    add-int/2addr v0, p1

    .line 1296
    iget p1, p0, Landroid/widget/Gallery;->mItemCount:I

    if-lez p1, :cond_1

    if-ltz v0, :cond_1

    iget p1, p0, Landroid/widget/Gallery;->mItemCount:I

    if-ge v0, p1, :cond_1

    .line 1297
    iget p1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v0, p1

    invoke-direct {p0, v0}, Landroid/widget/Gallery;->scrollToChild(I)Z

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 239
    invoke-super {p0}, Landroid/widget/AbsSpinner;->onAttachedToWindow()V

    .line 241
    iget-object v0, p0, Landroid/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/Gallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Landroid/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    .line 243
    iget-object p0, p0, Landroid/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    :cond_0
    return-void
.end method

.method onCancel()V
    .locals 0

    .line 1097
    invoke-virtual {p0}, Landroid/widget/Gallery;->onUp()V

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1064
    iget-object v0, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Gallery$FlingRunnable;->stop(Z)V

    .line 1067
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/widget/Gallery;->pointToPosition(II)I

    move-result p1

    iput p1, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    .line 1069
    iget p1, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    .line 1070
    iget p1, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    iget v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    .line 1071
    iget-object p1, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1075
    :cond_0
    iput-boolean v0, p0, Landroid/widget/Gallery;->mIsFirstScroll:Z

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1005
    iget-boolean p1, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 1009
    iget-object p1, p0, Landroid/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/Gallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1012
    iget-boolean p1, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez p1, :cond_0

    iput-boolean p2, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 1016
    :cond_0
    iget-object p0, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    neg-float p1, p3

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/Gallery$FlingRunnable;->startUsingVelocity(I)V

    return p2
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 1389
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsSpinner;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_0

    .line 1396
    iget-object p1, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 1397
    iget-object p1, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 1398
    iget-object p0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 1411
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1412
    iget v0, p0, Landroid/widget/Gallery;->mItemCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1413
    invoke-virtual {p0}, Landroid/widget/Gallery;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1414
    iget v0, p0, Landroid/widget/Gallery;->mItemCount:I

    if-lez v0, :cond_1

    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/Gallery;->mItemCount:I

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_1

    const/16 v0, 0x1000

    .line 1415
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1417
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Gallery;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/widget/Gallery;->mItemCount:I

    if-lez v0, :cond_2

    iget p0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    if-lez p0, :cond_2

    const/16 p0, 0x2000

    .line 1418
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x42

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1252
    :pswitch_0
    invoke-virtual {p0, v1}, Landroid/widget/Gallery;->moveDirection(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x3

    .line 1253
    invoke-virtual {p0, p1}, Landroid/widget/Gallery;->playSoundEffect(I)V

    return v1

    :pswitch_1
    const/4 v0, -0x1

    .line 1246
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->moveDirection(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1247
    invoke-virtual {p0, v1}, Landroid/widget/Gallery;->playSoundEffect(I)V

    return v1

    .line 1259
    :cond_0
    :pswitch_2
    iput-boolean v1, p0, Landroid/widget/Gallery;->mReceivedInvokeKeyDown:Z

    .line 1263
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1268
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1269
    iget-boolean p1, p0, Landroid/widget/Gallery;->mReceivedInvokeKeyDown:Z

    if-eqz p1, :cond_0

    .line 1270
    iget p1, p0, Landroid/widget/Gallery;->mItemCount:I

    if-lez p1, :cond_0

    .line 1271
    iget-object p1, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-direct {p0, p1}, Landroid/widget/Gallery;->dispatchPress(Landroid/view/View;)V

    .line 1272
    new-instance p1, Landroid/widget/Gallery$2;

    invoke-direct {p1, p0}, Landroid/widget/Gallery$2;-><init>(Landroid/widget/Gallery;)V

    .line 1277
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result p2

    int-to-long v0, p2

    .line 1272
    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/Gallery;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1279
    iget p1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget p2, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr p1, p2

    .line 1280
    invoke-virtual {p0, p1}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget p2, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget-object v0, p0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    .line 1281
    invoke-interface {v0, v1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    .line 1280
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/widget/Gallery;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    const/4 p1, 0x0

    .line 1286
    iput-boolean p1, p0, Landroid/widget/Gallery;->mReceivedInvokeKeyDown:Z

    const/4 p0, 0x1

    return p0

    .line 1289
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 361
    invoke-super/range {p0 .. p5}, Landroid/widget/AbsSpinner;->onLayout(ZIIII)V

    const/4 p1, 0x1

    .line 367
    iput-boolean p1, p0, Landroid/widget/Gallery;->mInLayout:Z

    const/4 p1, 0x0

    .line 368
    invoke-virtual {p0, p1, p1}, Landroid/widget/Gallery;->layout(IZ)V

    .line 369
    iput-boolean p1, p0, Landroid/widget/Gallery;->mInLayout:Z

    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 9

    .line 1102
    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1106
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->performHapticFeedback(I)Z

    .line 1108
    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getItemIdAtPosition(I)J

    move-result-wide v4

    .line 1109
    iget-object v2, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    const/4 v8, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Landroid/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJFFZ)Z

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 1035
    iget-object p1, p0, Landroid/widget/Gallery;->mParent:Landroid/view/ViewParent;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1039
    iget-boolean p1, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    const/4 p4, 0x0

    if-nez p1, :cond_1

    .line 1040
    iget-boolean p1, p0, Landroid/widget/Gallery;->mIsFirstScroll:Z

    if-eqz p1, :cond_2

    .line 1046
    iget-boolean p1, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez p1, :cond_0

    iput-boolean p2, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 1047
    :cond_0
    iget-object p1, p0, Landroid/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xfa

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/Gallery;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1050
    :cond_1
    iget-boolean p1, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-eqz p1, :cond_2

    iput-boolean p4, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    :cond_2
    :goto_0
    float-to-int p1, p3

    mul-int/lit8 p1, p1, -0x1

    .line 1054
    invoke-virtual {p0, p1}, Landroid/widget/Gallery;->trackMotionScroll(I)V

    .line 1056
    iput-boolean p4, p0, Landroid/widget/Gallery;->mIsFirstScroll:Z

    return p2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 985
    iget p1, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    if-ltz p1, :cond_2

    .line 988
    iget p1, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    iget v0, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1}, Landroid/widget/Gallery;->scrollToChild(I)Z

    .line 991
    iget-boolean p1, p0, Landroid/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    if-nez p1, :cond_0

    iget p1, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    .line 992
    :cond_0
    iget-object p1, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    iget-object v1, p0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v2, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    .line 993
    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v1

    .line 992
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/widget/Gallery;->performItemClick(Landroid/view/View;IJ)Z

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 969
    iget-object v0, p0, Landroid/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 971
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 974
    invoke-virtual {p0}, Landroid/widget/Gallery;->onUp()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 976
    invoke-virtual {p0}, Landroid/widget/Gallery;->onCancel()V

    :cond_1
    :goto_0
    return v0
.end method

.method onUp()V
    .locals 1

    .line 1086
    iget-object v0, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    invoke-static {v0}, Landroid/widget/Gallery$FlingRunnable;->access$200(Landroid/widget/Gallery$FlingRunnable;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1087
    invoke-direct {p0}, Landroid/widget/Gallery;->scrollIntoSlots()V

    .line 1090
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery;->dispatchUnpress()V

    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 2

    .line 1426
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    const/16 p2, 0x1000

    const/4 v1, 0x0

    if-eq p1, p2, :cond_3

    const/16 p2, 0x2000

    if-eq p1, p2, :cond_1

    return v1

    .line 1437
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Gallery;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Landroid/widget/Gallery;->mItemCount:I

    if-lez p1, :cond_2

    iget p1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    if-lez p1, :cond_2

    .line 1438
    iget p1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget p2, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr p1, p2

    sub-int/2addr p1, v0

    .line 1439
    invoke-direct {p0, p1}, Landroid/widget/Gallery;->scrollToChild(I)Z

    move-result p0

    return p0

    :cond_2
    return v1

    .line 1431
    :cond_3
    invoke-virtual {p0}, Landroid/widget/Gallery;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    iget p1, p0, Landroid/widget/Gallery;->mItemCount:I

    if-lez p1, :cond_4

    iget p1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget p2, p0, Landroid/widget/Gallery;->mItemCount:I

    sub-int/2addr p2, v0

    if-ge p1, p2, :cond_4

    .line 1432
    iget p1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget p2, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr p1, p2

    add-int/2addr p1, v0

    .line 1433
    invoke-direct {p0, p1}, Landroid/widget/Gallery;->scrollToChild(I)Z

    move-result p0

    return p0

    :cond_4
    return v1
.end method

.method selectionChanged()V
    .locals 1

    .line 571
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    .line 572
    invoke-super {p0}, Landroid/widget/AbsSpinner;->selectionChanged()V

    :cond_0
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0

    .line 283
    iput p1, p0, Landroid/widget/Gallery;->mAnimationDuration:I

    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .locals 0

    .line 257
    iput-boolean p1, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .locals 0

    .line 270
    iput-boolean p1, p0, Landroid/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 1362
    iget v0, p0, Landroid/widget/Gallery;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 1363
    iput p1, p0, Landroid/widget/Gallery;->mGravity:I

    .line 1364
    invoke-virtual {p0}, Landroid/widget/Gallery;->requestLayout()V

    :cond_0
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 0

    .line 1318
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->setSelectedPositionInt(I)V

    .line 1321
    invoke-direct {p0}, Landroid/widget/Gallery;->updateSelectedItemMetadata()V

    return-void
.end method

.method public setSpacing(I)V
    .locals 0

    .line 294
    iput p1, p0, Landroid/widget/Gallery;->mSpacing:I

    return-void
.end method

.method public setUnselectedAlpha(F)V
    .locals 0

    .line 305
    iput p1, p0, Landroid/widget/Gallery;->mUnselectedAlpha:F

    return-void
.end method

.method public showContextMenu()Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1187
    invoke-direct {p0, v0, v0, v1}, Landroid/widget/Gallery;->showContextMenuInternal(FFZ)Z

    move-result p0

    return p0
.end method

.method public showContextMenu(FF)Z
    .locals 1

    const/4 v0, 0x1

    .line 1192
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Gallery;->showContextMenuInternal(FFZ)Z

    move-result p0

    return p0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 2

    .line 1163
    invoke-virtual {p0}, Landroid/widget/Gallery;->isShowingContextMenuWithCoords()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 1166
    invoke-direct {p0, p1, v0, v0, v1}, Landroid/widget/Gallery;->showContextMenuForChildInternal(Landroid/view/View;FFZ)Z

    move-result p0

    return p0
.end method

.method public showContextMenuForChild(Landroid/view/View;FF)Z
    .locals 1

    const/4 v0, 0x1

    .line 1171
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Gallery;->showContextMenuForChildInternal(Landroid/view/View;FFZ)Z

    move-result p0

    return p0
.end method

.method trackMotionScroll(I)V
    .locals 3

    .line 385
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-gez p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 391
    :goto_0
    invoke-virtual {p0, v1, p1}, Landroid/widget/Gallery;->getLimitedMotionScrollAmount(ZI)I

    move-result v2

    if-eq v2, p1, :cond_2

    .line 394
    iget-object p1, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    invoke-static {p1, v0}, Landroid/widget/Gallery$FlingRunnable;->access$100(Landroid/widget/Gallery$FlingRunnable;Z)V

    .line 395
    invoke-direct {p0}, Landroid/widget/Gallery;->onFinishedMovement()V

    .line 398
    :cond_2
    invoke-direct {p0, v2}, Landroid/widget/Gallery;->offsetChildrenLeftAndRight(I)V

    .line 400
    invoke-direct {p0, v1}, Landroid/widget/Gallery;->detachOffScreenChildren(Z)V

    if-eqz v1, :cond_3

    .line 404
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRight()V

    goto :goto_1

    .line 407
    :cond_3
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeft()V

    .line 411
    :goto_1
    iget-object p1, p0, Landroid/widget/Gallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {p1}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    .line 413
    invoke-direct {p0}, Landroid/widget/Gallery;->setSelectionToCenterChild()V

    .line 415
    iget-object p1, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 417
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 418
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    .line 419
    invoke-virtual {p0}, Landroid/widget/Gallery;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, p1

    sub-int/2addr v1, v2

    .line 420
    iput v1, p0, Landroid/widget/Gallery;->mSelectedCenterOffset:I

    .line 423
    :cond_4
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/Gallery;->onScrollChanged(IIII)V

    .line 425
    invoke-virtual {p0}, Landroid/widget/Gallery;->invalidate()V

    return-void
.end method
