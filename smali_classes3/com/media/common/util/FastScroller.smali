.class public Lcom/media/common/util/FastScroller;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "FastScroller.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/media/common/util/FastScroller$AnimatorUpdater;,
        Lcom/media/common/util/FastScroller$AnimatorListener;,
        Lcom/media/common/util/FastScroller$AnimationState;,
        Lcom/media/common/util/FastScroller$DragState;,
        Lcom/media/common/util/FastScroller$State;
    }
.end annotation


# static fields
.field private static final ANIMATION_STATE_FADING_IN:I = 0x1

.field private static final ANIMATION_STATE_FADING_OUT:I = 0x3

.field private static final ANIMATION_STATE_IN:I = 0x2

.field private static final ANIMATION_STATE_OUT:I = 0x0

.field private static final DRAG_NONE:I = 0x0

.field private static final DRAG_X:I = 0x1

.field private static final DRAG_Y:I = 0x2

.field private static final EMPTY_STATE_SET:[I

.field private static final HIDE_DELAY_AFTER_DRAGGING_MS:I = 0xfa0

.field private static final HIDE_DELAY_AFTER_VISIBLE_MS:I = 0xfa0

.field private static final HIDE_DURATION_MS:I = 0x1f4

.field private static final PRESSED_STATE_SET:[I

.field private static final SCROLLBAR_FULL_OPAQUE:I = 0xff

.field private static final SHOW_DURATION_MS:I = 0x1f4

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_HIDDEN:I = 0x0

.field private static final STATE_VISIBLE:I = 0x1


# instance fields
.field mAnimationState:I

.field private mDragState:I

.field private final mHideRunnable:Ljava/lang/Runnable;

.field mHorizontalDragX:F
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mHorizontalRange:[I

.field mHorizontalThumbCenterX:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private final mHorizontalThumbHeight:I

.field mHorizontalThumbWidth:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final mHorizontalTrackHeight:I

.field private final mMargin:I

.field private mNeedHorizontalScrollbar:Z

.field private mNeedVerticalScrollbar:Z

.field private final mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRecyclerViewHeight:I

.field private mRecyclerViewWidth:I

.field private final mScrollbarMinimumRange:I

.field final mShowHideAnimator:Landroid/animation/ValueAnimator;

.field private mState:I

.field mVerticalDragY:F
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mVerticalRange:[I

.field mVerticalThumbCenterY:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

.field mVerticalThumbHeight:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mVerticalThumbWidth:I

.field final mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final mVerticalTrackWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 62
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a7

    aput v2, v0, v1

    sput-object v0, Lcom/media/common/util/FastScroller;->PRESSED_STATE_SET:[I

    .line 63
    new-array v0, v1, [I

    sput-object v0, Lcom/media/common/util/FastScroller;->EMPTY_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V
    .locals 3

    .line 138
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x0

    .line 98
    iput v0, p0, Lcom/media/common/util/FastScroller;->mRecyclerViewWidth:I

    .line 99
    iput v0, p0, Lcom/media/common/util/FastScroller;->mRecyclerViewHeight:I

    .line 106
    iput-boolean v0, p0, Lcom/media/common/util/FastScroller;->mNeedVerticalScrollbar:Z

    .line 107
    iput-boolean v0, p0, Lcom/media/common/util/FastScroller;->mNeedHorizontalScrollbar:Z

    .line 108
    iput v0, p0, Lcom/media/common/util/FastScroller;->mState:I

    .line 110
    iput v0, p0, Lcom/media/common/util/FastScroller;->mDragState:I

    const/4 v1, 0x2

    .line 113
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/media/common/util/FastScroller;->mVerticalRange:[I

    .line 114
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/media/common/util/FastScroller;->mHorizontalRange:[I

    .line 115
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    .line 116
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/media/common/util/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    .line 117
    iput v0, p0, Lcom/media/common/util/FastScroller;->mAnimationState:I

    .line 120
    new-instance v0, Lcom/media/common/util/FastScroller$1;

    invoke-direct {v0, p0}, Lcom/media/common/util/FastScroller$1;-><init>(Lcom/media/common/util/FastScroller;)V

    iput-object v0, p0, Lcom/media/common/util/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    .line 126
    new-instance v0, Lcom/media/common/util/FastScroller$2;

    invoke-direct {v0, p0}, Lcom/media/common/util/FastScroller$2;-><init>(Lcom/media/common/util/FastScroller;)V

    iput-object v0, p0, Lcom/media/common/util/FastScroller;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 139
    iput-object p2, p0, Lcom/media/common/util/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 140
    iput-object p3, p0, Lcom/media/common/util/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 141
    iput-object p4, p0, Lcom/media/common/util/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 142
    iput-object p5, p0, Lcom/media/common/util/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 143
    invoke-virtual {p2}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result p2

    invoke-static {p6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/media/common/util/FastScroller;->mVerticalThumbWidth:I

    .line 144
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    invoke-static {p6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/media/common/util/FastScroller;->mVerticalTrackWidth:I

    .line 146
    invoke-virtual {p4}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result p2

    invoke-static {p6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/media/common/util/FastScroller;->mHorizontalThumbHeight:I

    .line 148
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    invoke-static {p6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/media/common/util/FastScroller;->mHorizontalTrackHeight:I

    .line 149
    iput p7, p0, Lcom/media/common/util/FastScroller;->mScrollbarMinimumRange:I

    .line 150
    iput p8, p0, Lcom/media/common/util/FastScroller;->mMargin:I

    .line 151
    iget-object p2, p0, Lcom/media/common/util/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/16 p3, 0xff

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    .line 152
    iget-object p2, p0, Lcom/media/common/util/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 154
    iget-object p2, p0, Lcom/media/common/util/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/media/common/util/FastScroller$AnimatorListener;

    invoke-direct {p3, p0}, Lcom/media/common/util/FastScroller$AnimatorListener;-><init>(Lcom/media/common/util/FastScroller;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 155
    iget-object p2, p0, Lcom/media/common/util/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/media/common/util/FastScroller$AnimatorUpdater;

    invoke-direct {p3, p0}, Lcom/media/common/util/FastScroller$AnimatorUpdater;-><init>(Lcom/media/common/util/FastScroller;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 157
    invoke-virtual {p0, p1}, Lcom/media/common/util/FastScroller;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private cancelHide()V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/media/common/util/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/media/common/util/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private destroyCallbacks()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/media/common/util/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 181
    iget-object v0, p0, Lcom/media/common/util/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 182
    iget-object v0, p0, Lcom/media/common/util/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/media/common/util/FastScroller;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 183
    invoke-direct {p0}, Lcom/media/common/util/FastScroller;->cancelHide()V

    return-void
.end method

.method private drawHorizontalScrollbar(Landroid/graphics/Canvas;)V
    .locals 6

    .line 314
    iget v0, p0, Lcom/media/common/util/FastScroller;->mRecyclerViewHeight:I

    .line 316
    iget v1, p0, Lcom/media/common/util/FastScroller;->mHorizontalThumbHeight:I

    sub-int/2addr v0, v1

    .line 317
    iget v1, p0, Lcom/media/common/util/FastScroller;->mHorizontalThumbCenterX:I

    iget v2, p0, Lcom/media/common/util/FastScroller;->mHorizontalThumbWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 318
    iget-object v2, p0, Lcom/media/common/util/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    iget v3, p0, Lcom/media/common/util/FastScroller;->mHorizontalThumbWidth:I

    iget v4, p0, Lcom/media/common/util/FastScroller;->mHorizontalThumbHeight:I

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 319
    iget-object v2, p0, Lcom/media/common/util/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/media/common/util/FastScroller;->mRecyclerViewWidth:I

    iget v4, p0, Lcom/media/common/util/FastScroller;->mHorizontalTrackHeight:I

    .line 320
    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    int-to-float v2, v0

    const/4 v3, 0x0

    .line 322
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 323
    iget-object v2, p0, Lcom/media/common/util/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v2, v1

    .line 324
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 325
    iget-object p0, p0, Lcom/media/common/util/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    neg-int p0, v1

    int-to-float p0, p0

    neg-int v0, v0

    int-to-float v0, v0

    .line 326
    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method private drawVerticalScrollbar(Landroid/graphics/Canvas;)V
    .locals 6

    .line 289
    iget v0, p0, Lcom/media/common/util/FastScroller;->mRecyclerViewWidth:I

    .line 291
    iget v1, p0, Lcom/media/common/util/FastScroller;->mVerticalThumbWidth:I

    sub-int/2addr v0, v1

    .line 292
    iget v1, p0, Lcom/media/common/util/FastScroller;->mVerticalThumbCenterY:I

    iget v2, p0, Lcom/media/common/util/FastScroller;->mVerticalThumbHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 293
    iget-object v2, p0, Lcom/media/common/util/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    iget v3, p0, Lcom/media/common/util/FastScroller;->mVerticalThumbWidth:I

    iget v4, p0, Lcom/media/common/util/FastScroller;->mVerticalThumbHeight:I

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 294
    iget-object v2, p0, Lcom/media/common/util/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/media/common/util/FastScroller;->mVerticalTrackWidth:I

    iget v4, p0, Lcom/media/common/util/FastScroller;->mRecyclerViewHeight:I

    .line 295
    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 297
    invoke-direct {p0}, Lcom/media/common/util/FastScroller;->isLayoutRTL()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 298
    iget-object v0, p0, Lcom/media/common/util/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 299
    iget v0, p0, Lcom/media/common/util/FastScroller;->mVerticalThumbWidth:I

    int-to-float v0, v0

    int-to-float v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    .line 300
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 301
    iget-object v3, p0, Lcom/media/common/util/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 302
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 303
    iget p0, p0, Lcom/media/common/util/FastScroller;->mVerticalThumbWidth:I

    neg-int p0, p0

    int-to-float p0, p0

    neg-int v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_0
    int-to-float v2, v0

    const/4 v3, 0x0

    .line 305
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 306
    iget-object v2, p0, Lcom/media/common/util/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v2, v1

    .line 307
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 308
    iget-object p0, p0, Lcom/media/common/util/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    neg-int p0, v0

    int-to-float p0, p0

    neg-int v0, v1

    int-to-float v0, v0

    .line 309
    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_0
    return-void
.end method

.method private getHorizontalRange()[I
    .locals 3

    .line 543
    iget-object v0, p0, Lcom/media/common/util/FastScroller;->mHorizontalRange:[I

    iget v1, p0, Lcom/media/common/util/FastScroller;->mMargin:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 544
    iget-object v0, p0, Lcom/media/common/util/FastScroller;->mHorizontalRange:[I

    iget v1, p0, Lcom/media/common/util/FastScroller;->mRecyclerViewWidth:I

    iget v2, p0, Lcom/media/common/util/FastScroller;->mMargin:I

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 545
    iget-object p0, p0, Lcom/media/common/util/FastScroller;->mHorizontalRange:[I

    return-object p0
.end method

.method private getVerticalRange()[I
    .locals 3

    .line 534
    iget-object v0, p0, Lcom/media/common/util/FastScroller;->mVerticalRange:[I

    iget v1, p0, Lcom/media/common/util/FastScroller;->mMargin:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 535
    iget-object v0, p0, Lcom/media/common/util/FastScroller;->mVerticalRange:[I

    iget v1, p0, Lcom/media/common/util/FastScroller;->mRecyclerViewHeight:I

    iget v2, p0, Lcom/media/common/util/FastScroller;->mMargin:I

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 536
    iget-object p0, p0, Lcom/media/common/util/FastScroller;->mVerticalRange:[I

    return-object p0
.end method

.method private horizontalScrollTo(F)V
    .locals 8

    .line 462
    invoke-direct {p0}, Lcom/media/common/util/FastScroller;->getHorizontalRange()[I

    move-result-object v3

    const/4 v7, 0x0

    .line 463
    aget v0, v3, v7

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, v3, v1

    int-to-float v1, v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 464
    iget v0, p0, Lcom/media/common/util/FastScroller;->mHorizontalThumbCenterX:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return-void

    .line 468
    :cond_0
    iget v1, p0, Lcom/media/common/util/FastScroller;->mHorizontalDragX:F

    iget-object v0, p0, Lcom/media/common/util/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 469
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v4

    iget-object v0, p0, Lcom/media/common/util/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 470
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v5

    iget v6, p0, Lcom/media/common/util/FastScroller;->mRecyclerViewWidth:I

    move-object v0, p0

    move v2, p1

    .line 468
    invoke-direct/range {v0 .. v6}, Lcom/media/common/util/FastScroller;->scrollTo(FF[IIII)I

    move-result v0

    if-eqz v0, :cond_1

    .line 472
    iget-object v1, p0, Lcom/media/common/util/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 475
    :cond_1
    iput p1, p0, Lcom/media/common/util/FastScroller;->mHorizontalDragX:F

    return-void
.end method

.method private isLayoutRTL()Z
    .locals 1

    .line 213
    iget-object p0, p0, Lcom/media/common/util/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private resetHideDelay(I)V
    .locals 3

    .line 260
    invoke-direct {p0}, Lcom/media/common/util/FastScroller;->cancelHide()V

    .line 261
    iget-object v0, p0, Lcom/media/common/util/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/media/common/util/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private scrollTo(FF[IIII)I
    .locals 1

    const/4 p0, 0x1

    .line 480
    aget p0, p3, p0

    const/4 v0, 0x0

    aget p3, p3, v0

    sub-int/2addr p0, p3

    if-nez p0, :cond_0

    return v0

    :cond_0
    sub-float/2addr p2, p1

    int-to-float p0, p0

    div-float/2addr p2, p0

    sub-int/2addr p4, p6

    int-to-float p0, p4

    mul-float/2addr p2, p0

    float-to-int p0, p2

    add-int/2addr p5, p0

    if-ge p5, p4, :cond_1

    if-ltz p5, :cond_1

    return p0

    :cond_1
    return v0
.end method

.method private setupCallbacks()V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/media/common/util/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 175
    iget-object v0, p0, Lcom/media/common/util/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 176
    iget-object v0, p0, Lcom/media/common/util/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/media/common/util/FastScroller;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method private verticalScrollTo(F)V
    .locals 8

    .line 447
    invoke-direct {p0}, Lcom/media/common/util/FastScroller;->getVerticalRange()[I

    move-result-object v3

    const/4 v7, 0x0

    .line 448
    aget v0, v3, v7

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, v3, v1

    int-to-float v1, v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 449
    iget v0, p0, Lcom/media/common/util/FastScroller;->mVerticalThumbCenterY:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return-void

    .line 452
    :cond_0
    iget v1, p0, Lcom/media/common/util/FastScroller;->mVerticalDragY:F

    iget-object v0, p0, Lcom/media/common/util/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 453
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v4

    iget-object v0, p0, Lcom/media/common/util/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 454
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v5

    iget v6, p0, Lcom/media/common/util/FastScroller;->mRecyclerViewHeight:I

    move-object v0, p0

    move v2, p1

    .line 452
    invoke-direct/range {v0 .. v6}, Lcom/media/common/util/FastScroller;->scrollTo(FF[IIII)I

    move-result v0

    if-eqz v0, :cond_1

    .line 456
    iget-object v1, p0, Lcom/media/common/util/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v7, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 458
    :cond_1
    iput p1, p0, Lcom/media/common/util/FastScroller;->mVerticalDragY:F

    return-void
.end method


# virtual methods
.method public attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 161
    iget-object v0, p0, Lcom/media/common/util/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v0, p1, :cond_0

    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/media/common/util/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 165
    invoke-direct {p0}, Lcom/media/common/util/FastScroller;->destroyCallbacks()V

    .line 167
    :cond_1
    iput-object p1, p0, Lcom/media/common/util/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 168
    iget-object p1, p0, Lcom/media/common/util/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_2

    .line 169
    invoke-direct {p0}, Lcom/media/common/util/FastScroller;->setupCallbacks()V

    :cond_2
    return-void
.end method

.method getHorizontalThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 517
    iget-object p0, p0, Lcom/media/common/util/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    return-object p0
.end method

.method getHorizontalTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 512
    iget-object p0, p0, Lcom/media/common/util/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method getVerticalThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 527
    iget-object p0, p0, Lcom/media/common/util/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    return-object p0
.end method

.method getVerticalTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 522
    iget-object p0, p0, Lcom/media/common/util/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method hide(I)V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 242
    iget v0, p0, Lcom/media/common/util/FastScroller;->mAnimationState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 244
    :pswitch_0
    iget-object v0, p0, Lcom/media/common/util/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :pswitch_1
    const/4 v0, 0x3

    .line 247
    iput v0, p0, Lcom/media/common/util/FastScroller;->mAnimationState:I

    .line 248
    iget-object v0, p0, Lcom/media/common/util/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/media/common/util/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 249
    iget-object v0, p0, Lcom/media/common/util/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 250
    iget-object p0, p0, Lcom/media/common/util/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isDragging()Z
    .locals 1

    .line 217
    iget p0, p0, Lcom/media/common/util/FastScroller;->mState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isPointInsideHorizontalThumb(FF)Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 505
    iget v0, p0, Lcom/media/common/util/FastScroller;->mRecyclerViewHeight:I

    iget v1, p0, Lcom/media/common/util/FastScroller;->mHorizontalThumbHeight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_0

    iget p2, p0, Lcom/media/common/util/FastScroller;->mHorizontalThumbCenterX:I

    iget v0, p0, Lcom/media/common/util/FastScroller;->mHorizontalThumbWidth:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    int-to-float p2, p2

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_0

    iget p2, p0, Lcom/media/common/util/FastScroller;->mHorizontalThumbCenterX:I

    iget p0, p0, Lcom/media/common/util/FastScroller;->mHorizontalThumbWidth:I

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p2, p0

    int-to-float p0, p2

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isPointInsideVerticalThumb(FF)Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 497
    invoke-direct {p0}, Lcom/media/common/util/FastScroller;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/media/common/util/FastScroller;->mVerticalThumbWidth:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/media/common/util/FastScroller;->mRecyclerViewWidth:I

    iget v1, p0, Lcom/media/common/util/FastScroller;->mVerticalThumbWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_1

    :goto_0
    iget p1, p0, Lcom/media/common/util/FastScroller;->mVerticalThumbCenterY:I

    iget v0, p0, Lcom/media/common/util/FastScroller;->mVerticalThumbHeight:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_1

    iget p1, p0, Lcom/media/common/util/FastScroller;->mVerticalThumbCenterY:I

    iget p0, p0, Lcom/media/common/util/FastScroller;->mVerticalThumbHeight:I

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p1, p0

    int-to-float p0, p1

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method isVisible()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 222
    iget p0, p0, Lcom/media/common/util/FastScroller;->mState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 266
    iget p2, p0, Lcom/media/common/util/FastScroller;->mRecyclerViewWidth:I

    iget-object p3, p0, Lcom/media/common/util/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result p3

    if-ne p2, p3, :cond_3

    iget p2, p0, Lcom/media/common/util/FastScroller;->mRecyclerViewHeight:I

    iget-object p3, p0, Lcom/media/common/util/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 267
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result p3

    if-eq p2, p3, :cond_0

    goto :goto_0

    .line 278
    :cond_0
    iget p2, p0, Lcom/media/common/util/FastScroller;->mAnimationState:I

    if-eqz p2, :cond_2

    .line 279
    iget-boolean p2, p0, Lcom/media/common/util/FastScroller;->mNeedVerticalScrollbar:Z

    if-eqz p2, :cond_1

    .line 280
    invoke-direct {p0, p1}, Lcom/media/common/util/FastScroller;->drawVerticalScrollbar(Landroid/graphics/Canvas;)V

    .line 282
    :cond_1
    iget-boolean p2, p0, Lcom/media/common/util/FastScroller;->mNeedHorizontalScrollbar:Z

    if-eqz p2, :cond_2

    .line 283
    invoke-direct {p0, p1}, Lcom/media/common/util/FastScroller;->drawHorizontalScrollbar(Landroid/graphics/Canvas;)V

    :cond_2
    return-void

    .line 268
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/media/common/util/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/media/common/util/FastScroller;->mRecyclerViewWidth:I

    .line 269
    iget-object p1, p0, Lcom/media/common/util/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/media/common/util/FastScroller;->mRecyclerViewHeight:I

    const/4 p1, 0x0

    .line 274
    invoke-virtual {p0, p1}, Lcom/media/common/util/FastScroller;->setState(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 381
    iget p1, p0, Lcom/media/common/util/FastScroller;->mState:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    .line 382
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/media/common/util/FastScroller;->isPointInsideVerticalThumb(FF)Z

    move-result p1

    .line 383
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/media/common/util/FastScroller;->isPointInsideHorizontalThumb(FF)Z

    move-result v3

    .line 384
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_4

    if-nez p1, :cond_0

    if-eqz v3, :cond_4

    :cond_0
    if-eqz v3, :cond_1

    .line 387
    iput v2, p0, Lcom/media/common/util/FastScroller;->mDragState:I

    .line 388
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/media/common/util/FastScroller;->mHorizontalDragX:F

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 390
    iput v1, p0, Lcom/media/common/util/FastScroller;->mDragState:I

    .line 391
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/media/common/util/FastScroller;->mVerticalDragY:F

    .line 394
    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Lcom/media/common/util/FastScroller;->setState(I)V

    goto :goto_1

    .line 399
    :cond_3
    iget p0, p0, Lcom/media/common/util/FastScroller;->mState:I

    if-ne p0, v1, :cond_4

    :goto_1
    move v0, v2

    :cond_4
    return v0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 409
    iget p1, p0, Lcom/media/common/util/FastScroller;->mState:I

    if-nez p1, :cond_0

    return-void

    .line 413
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-nez p1, :cond_4

    .line 414
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/media/common/util/FastScroller;->isPointInsideVerticalThumb(FF)Z

    move-result p1

    .line 415
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/media/common/util/FastScroller;->isPointInsideHorizontalThumb(FF)Z

    move-result v2

    if-nez p1, :cond_1

    if-eqz v2, :cond_7

    :cond_1
    if-eqz v2, :cond_2

    .line 418
    iput v0, p0, Lcom/media/common/util/FastScroller;->mDragState:I

    .line 419
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/media/common/util/FastScroller;->mHorizontalDragX:F

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 421
    iput v1, p0, Lcom/media/common/util/FastScroller;->mDragState:I

    .line 422
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/media/common/util/FastScroller;->mVerticalDragY:F

    .line 424
    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Lcom/media/common/util/FastScroller;->setState(I)V

    goto :goto_1

    .line 426
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_5

    iget p1, p0, Lcom/media/common/util/FastScroller;->mState:I

    if-ne p1, v1, :cond_5

    const/4 p1, 0x0

    .line 427
    iput p1, p0, Lcom/media/common/util/FastScroller;->mVerticalDragY:F

    .line 428
    iput p1, p0, Lcom/media/common/util/FastScroller;->mHorizontalDragX:F

    .line 429
    invoke-virtual {p0, v0}, Lcom/media/common/util/FastScroller;->setState(I)V

    const/4 p1, 0x0

    .line 430
    iput p1, p0, Lcom/media/common/util/FastScroller;->mDragState:I

    goto :goto_1

    .line 431
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_7

    iget p1, p0, Lcom/media/common/util/FastScroller;->mState:I

    if-ne p1, v1, :cond_7

    .line 432
    invoke-virtual {p0}, Lcom/media/common/util/FastScroller;->show()V

    .line 433
    iget p1, p0, Lcom/media/common/util/FastScroller;->mDragState:I

    if-ne p1, v0, :cond_6

    .line 434
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/media/common/util/FastScroller;->horizontalScrollTo(F)V

    .line 436
    :cond_6
    iget p1, p0, Lcom/media/common/util/FastScroller;->mDragState:I

    if-ne p1, v1, :cond_7

    .line 437
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/media/common/util/FastScroller;->verticalScrollTo(F)V

    :cond_7
    :goto_1
    return-void
.end method

.method requestRedraw()V
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/media/common/util/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    return-void
.end method

.method setState(I)V
    .locals 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 192
    iget v1, p0, Lcom/media/common/util/FastScroller;->mState:I

    if-eq v1, v0, :cond_0

    .line 193
    iget-object v1, p0, Lcom/media/common/util/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    sget-object v2, Lcom/media/common/util/FastScroller;->PRESSED_STATE_SET:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 194
    invoke-direct {p0}, Lcom/media/common/util/FastScroller;->cancelHide()V

    :cond_0
    if-nez p1, :cond_1

    .line 198
    invoke-virtual {p0}, Lcom/media/common/util/FastScroller;->requestRedraw()V

    goto :goto_0

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcom/media/common/util/FastScroller;->show()V

    .line 203
    :goto_0
    iget v1, p0, Lcom/media/common/util/FastScroller;->mState:I

    const/16 v2, 0xfa0

    if-ne v1, v0, :cond_2

    if-eq p1, v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/media/common/util/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Lcom/media/common/util/FastScroller;->EMPTY_STATE_SET:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 205
    invoke-direct {p0, v2}, Lcom/media/common/util/FastScroller;->resetHideDelay(I)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 207
    invoke-direct {p0, v2}, Lcom/media/common/util/FastScroller;->resetHideDelay(I)V

    .line 209
    :cond_3
    :goto_1
    iput p1, p0, Lcom/media/common/util/FastScroller;->mState:I

    return-void
.end method

.method public show()V
    .locals 5

    .line 226
    iget v0, p0, Lcom/media/common/util/FastScroller;->mAnimationState:I

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/media/common/util/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x1

    .line 231
    iput v0, p0, Lcom/media/common/util/FastScroller;->mAnimationState:I

    .line 232
    iget-object v1, p0, Lcom/media/common/util/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/media/common/util/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 233
    iget-object v0, p0, Lcom/media/common/util/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 234
    iget-object v0, p0, Lcom/media/common/util/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 235
    iget-object p0, p0, Lcom/media/common/util/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void
.end method

.method updateScrollPosition(II)V
    .locals 8

    .line 337
    iget-object v0, p0, Lcom/media/common/util/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v0

    .line 338
    iget v1, p0, Lcom/media/common/util/FastScroller;->mRecyclerViewHeight:I

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v0, :cond_0

    .line 339
    iget v4, p0, Lcom/media/common/util/FastScroller;->mRecyclerViewHeight:I

    iget v5, p0, Lcom/media/common/util/FastScroller;->mScrollbarMinimumRange:I

    if-lt v4, v5, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    iput-boolean v4, p0, Lcom/media/common/util/FastScroller;->mNeedVerticalScrollbar:Z

    .line 342
    iget-object v4, p0, Lcom/media/common/util/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v4

    .line 343
    iget v5, p0, Lcom/media/common/util/FastScroller;->mRecyclerViewWidth:I

    sub-int v6, v4, v5

    if-lez v6, :cond_1

    .line 344
    iget v6, p0, Lcom/media/common/util/FastScroller;->mRecyclerViewWidth:I

    iget v7, p0, Lcom/media/common/util/FastScroller;->mScrollbarMinimumRange:I

    if-lt v6, v7, :cond_1

    move v6, v3

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    iput-boolean v6, p0, Lcom/media/common/util/FastScroller;->mNeedHorizontalScrollbar:Z

    .line 347
    iget-boolean v6, p0, Lcom/media/common/util/FastScroller;->mNeedVerticalScrollbar:Z

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lcom/media/common/util/FastScroller;->mNeedHorizontalScrollbar:Z

    if-nez v6, :cond_3

    .line 348
    iget p1, p0, Lcom/media/common/util/FastScroller;->mState:I

    if-eqz p1, :cond_2

    .line 349
    invoke-virtual {p0, v2}, Lcom/media/common/util/FastScroller;->setState(I)V

    :cond_2
    return-void

    .line 354
    :cond_3
    iget-boolean v2, p0, Lcom/media/common/util/FastScroller;->mNeedVerticalScrollbar:Z

    if-eqz v2, :cond_4

    const/16 v2, 0x50

    .line 360
    iput v2, p0, Lcom/media/common/util/FastScroller;->mVerticalThumbHeight:I

    .line 361
    iget v2, p0, Lcom/media/common/util/FastScroller;->mVerticalThumbHeight:I

    div-int/lit8 v2, v2, 0x2

    iget v6, p0, Lcom/media/common/util/FastScroller;->mVerticalThumbHeight:I

    sub-int/2addr v1, v6

    mul-int/2addr v1, p2

    div-int/2addr v1, v0

    add-int/2addr v2, v1

    iput v2, p0, Lcom/media/common/util/FastScroller;->mVerticalThumbCenterY:I

    .line 364
    :cond_4
    iget-boolean p2, p0, Lcom/media/common/util/FastScroller;->mNeedHorizontalScrollbar:Z

    if-eqz p2, :cond_5

    int-to-float p1, p1

    int-to-float p2, v5

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p2, v0

    add-float/2addr p1, v0

    mul-float/2addr p2, p1

    int-to-float p1, v4

    div-float/2addr p2, p1

    float-to-int p1, p2

    .line 366
    iput p1, p0, Lcom/media/common/util/FastScroller;->mHorizontalThumbCenterX:I

    mul-int p1, v5, v5

    .line 368
    div-int/2addr p1, v4

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/media/common/util/FastScroller;->mHorizontalThumbWidth:I

    .line 372
    :cond_5
    iget p1, p0, Lcom/media/common/util/FastScroller;->mState:I

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/media/common/util/FastScroller;->mState:I

    if-ne p1, v3, :cond_7

    .line 373
    :cond_6
    invoke-virtual {p0, v3}, Lcom/media/common/util/FastScroller;->setState(I)V

    :cond_7
    return-void
.end method
