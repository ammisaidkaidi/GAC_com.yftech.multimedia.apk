.class Landroid/widget/AbsListView$PositionScroller;
.super Landroid/widget/AbsListView$AbsPositionScroller;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PositionScroller"
.end annotation


# static fields
.field private static final MOVE_DOWN_BOUND:I = 0x3

.field private static final MOVE_DOWN_POS:I = 0x1

.field private static final MOVE_OFFSET:I = 0x5

.field private static final MOVE_UP_BOUND:I = 0x4

.field private static final MOVE_UP_POS:I = 0x2

.field private static final SCROLL_DURATION:I = 0xc8


# instance fields
.field private mBoundPos:I

.field private final mExtraScroll:I

.field private mLastSeenPos:I

.field private mMode:I

.field private mOffsetFromTop:I

.field private mScrollDuration:I

.field private mTargetPos:I

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0

    .line 7255
    iput-object p1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Landroid/widget/AbsListView$AbsPositionScroller;-><init>()V

    .line 7256
    invoke-static {p1}, Landroid/widget/AbsListView;->access$4700(Landroid/widget/AbsListView;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result p1

    iput p1, p0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    return-void
.end method

.method private scrollToVisible(III)V
    .locals 7

    .line 7449
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 7450
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 7452
    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v2, v2, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 7453
    iget-object v3, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v4, v4, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    if-lt p1, v0, :cond_0

    if-le p1, v1, :cond_1

    :cond_0
    const-string v4, "AbsListView"

    .line 7456
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "scrollToVisible called with targetPos "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " not visible ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-lt p2, v0, :cond_2

    if-le p2, v1, :cond_3

    :cond_2
    const/4 p2, -0x1

    .line 7464
    :cond_3
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 7465
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 7466
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    const/4 v4, 0x0

    if-le p1, v3, :cond_4

    sub-int/2addr p1, v3

    goto :goto_0

    :cond_4
    move p1, v4

    :goto_0
    if-ge v1, v2, :cond_5

    sub-int p1, v1, v2

    :cond_5
    if-nez p1, :cond_6

    return-void

    :cond_6
    if-ltz p2, :cond_8

    .line 7481
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int/2addr p2, v0

    invoke-virtual {v1, p2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 7482
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 7483
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    .line 7484
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gez p1, :cond_7

    add-int v5, p2, v1

    if-le v5, v3, :cond_7

    sub-int/2addr p2, v3

    .line 7488
    invoke-static {v4, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_1

    :cond_7
    if-lez p1, :cond_8

    sub-int p2, v0, v1

    if-ge p2, v2, :cond_8

    sub-int/2addr v0, v2

    .line 7491
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 7495
    :cond_8
    :goto_1
    iget-object p0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {p0, p1, p3}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 7505
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v0

    .line 7506
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v1, v1, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 7508
    iget v2, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_6

    .line 7640
    :pswitch_0
    iget v0, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    if-ne v0, v1, :cond_0

    .line 7642
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    .line 7646
    :cond_0
    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 7648
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 7649
    iget v2, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    add-int v5, v1, v0

    sub-int/2addr v5, v4

    .line 7654
    iget-object v6, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v6, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 7655
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 7656
    iget-object v8, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    add-int/lit8 v9, v0, -0x1

    invoke-virtual {v8, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 7657
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v10, v7

    const/4 v11, 0x0

    cmpl-float v12, v10, v11

    const/high16 v13, 0x3f800000    # 1.0f

    if-nez v12, :cond_1

    move v6, v13

    goto :goto_0

    .line 7659
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    add-int/2addr v7, v6

    int-to-float v6, v7

    div-float/2addr v6, v10

    :goto_0
    int-to-float v7, v9

    cmpl-float v10, v7, v11

    if-nez v10, :cond_2

    move v7, v13

    goto :goto_1

    .line 7662
    :cond_2
    iget-object v10, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 7661
    invoke-virtual {v10}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    sub-int/2addr v9, v8

    int-to-float v8, v9

    div-float v7, v8, v7

    :goto_1
    if-ge v2, v1, :cond_3

    sub-int v7, v1, v2

    int-to-float v7, v7

    sub-float v6, v13, v6

    add-float/2addr v7, v6

    add-float v11, v7, v13

    goto :goto_2

    :cond_3
    if-le v2, v5, :cond_4

    sub-int v6, v2, v5

    int-to-float v6, v6

    sub-float v7, v13, v7

    add-float v11, v6, v7

    :cond_4
    :goto_2
    int-to-float v0, v0

    div-float/2addr v11, v0

    .line 7674
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v0, v13}, Ljava/lang/Math;->min(FF)F

    move-result v0

    if-ge v2, v1, :cond_5

    .line 7676
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 7677
    iget v2, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    .line 7678
    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2, v1, v0, v4, v4}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 7679
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_6

    :cond_5
    if-le v2, v5, :cond_6

    .line 7681
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 7682
    iget v2, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    .line 7683
    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2, v1, v0, v4, v4}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 7684
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_6

    .line 7687
    :cond_6
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 7688
    iget v1, p0, Landroid/widget/AbsListView$PositionScroller;->mOffsetFromTop:I

    sub-int/2addr v0, v1

    .line 7689
    iget v1, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    int-to-float v1, v1

    .line 7690
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v2, v5

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 7691
    iget-object p0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {p0, v0, v1, v4, v3}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    goto/16 :goto_6

    .line 7605
    :pswitch_1
    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-gez v2, :cond_7

    return-void

    :cond_7
    add-int/2addr v1, v2

    .line 7611
    iget v5, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    if-ne v1, v5, :cond_8

    .line 7613
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    .line 7617
    :cond_8
    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7618
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 7619
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v6, v0, v2

    .line 7621
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v7, v7, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v8, p0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 7622
    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 7623
    iget v8, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    if-le v1, v8, :cond_9

    .line 7624
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int/2addr v6, v7

    neg-int v1, v6

    iget v2, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 7626
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_6

    :cond_9
    sub-int/2addr v0, v7

    add-int/2addr v2, v5

    if-le v0, v2, :cond_a

    .line 7631
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int/2addr v0, v2

    neg-int v0, v0

    iget p0, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    invoke-virtual {v1, v0, p0, v4, v3}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    goto/16 :goto_6

    .line 7633
    :cond_a
    iget-object p0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_6

    .line 7542
    :pswitch_2
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 7544
    iget v2, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    if-eq v1, v2, :cond_f

    if-le v0, v4, :cond_f

    add-int/2addr v0, v1

    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mItemCount:I

    if-lt v0, v2, :cond_b

    goto :goto_3

    :cond_b
    add-int/2addr v1, v4

    .line 7551
    iget v0, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    if-ne v1, v0, :cond_c

    .line 7553
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    .line 7557
    :cond_c
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7558
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 7559
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 7560
    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v5, v5, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 7561
    iget v6, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    if-ge v1, v6, :cond_d

    .line 7562
    iget-object v6, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    add-int/2addr v2, v0

    sub-int/2addr v2, v5

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    invoke-virtual {v6, v0, v2, v4, v4}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 7565
    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 7567
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_6

    :cond_d
    if-le v0, v5, :cond_e

    .line 7570
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int/2addr v0, v5

    iget p0, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    invoke-virtual {v1, v0, p0, v4, v3}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    goto/16 :goto_6

    .line 7572
    :cond_e
    iget-object p0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_6

    .line 7546
    :cond_f
    :goto_3
    iget-object p0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    return-void

    .line 7579
    :pswitch_3
    iget v0, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    if-ne v1, v0, :cond_10

    .line 7581
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    .line 7585
    :cond_10
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_11

    return-void

    .line 7589
    :cond_11
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-lez v1, :cond_12

    .line 7591
    iget v2, p0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v5, v5, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_4

    :cond_12
    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v2, v2, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 7593
    :goto_4
    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int/2addr v0, v2

    iget v2, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    iget v6, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-le v1, v6, :cond_13

    move v3, v4

    :cond_13
    invoke-virtual {v5, v0, v2, v4, v3}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 7596
    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 7598
    iget v0, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-le v1, v0, :cond_18

    .line 7599
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_6

    .line 7510
    :pswitch_4
    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v4

    add-int/2addr v1, v2

    if-gez v2, :cond_14

    return-void

    .line 7517
    :cond_14
    iget v5, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    if-ne v1, v5, :cond_15

    .line 7519
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    .line 7523
    :cond_15
    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7524
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 7525
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    .line 7527
    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mItemCount:I

    sub-int/2addr v2, v4

    if-ge v1, v2, :cond_16

    .line 7528
    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v2, v2, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_5

    :cond_16
    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v2, v2, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    :goto_5
    sub-int/2addr v5, v0

    add-int/2addr v5, v2

    .line 7531
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v2, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    iget v6, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-ge v1, v6, :cond_17

    move v3, v4

    :cond_17
    invoke-virtual {v0, v5, v2, v4, v3}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 7533
    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 7534
    iget v0, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-ge v1, v0, :cond_18

    .line 7535
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_18
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public start(I)V
    .locals 5

    .line 7261
    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 7263
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v0, :cond_0

    .line 7265
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    new-instance v1, Landroid/widget/AbsListView$PositionScroller$1;

    invoke-direct {v1, p0, p1}, Landroid/widget/AbsListView$PositionScroller$1;-><init>(Landroid/widget/AbsListView$PositionScroller;I)V

    iput-object v1, v0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    return-void

    .line 7273
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 7279
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v1, v1, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v0, v1

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    const/4 v3, 0x0

    .line 7283
    iget-object v4, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getCount()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v3, 0xc8

    const/4 v4, -0x1

    if-ge p1, v1, :cond_2

    sub-int/2addr v1, p1

    add-int/2addr v1, v2

    const/4 v0, 0x2

    .line 7286
    iput v0, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_0

    :cond_2
    if-le p1, v0, :cond_4

    sub-int v0, p1, v0

    add-int/lit8 v1, v0, 0x1

    .line 7289
    iput v2, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    :goto_0
    if-lez v1, :cond_3

    .line 7296
    div-int/2addr v3, v1

    iput v3, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_1

    .line 7298
    :cond_3
    iput v3, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 7300
    :goto_1
    iput p1, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 7301
    iput v4, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    .line 7302
    iput v4, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 7304
    iget-object p1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    .line 7291
    :cond_4
    invoke-direct {p0, p1, v4, v3}, Landroid/widget/AbsListView$PositionScroller;->scrollToVisible(III)V

    return-void
.end method

.method public start(II)V
    .locals 6

    .line 7309
    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 7312
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView$PositionScroller;->start(I)V

    return-void

    .line 7316
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-boolean v1, v1, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v1, :cond_1

    .line 7318
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    new-instance v1, Landroid/widget/AbsListView$PositionScroller$2;

    invoke-direct {v1, p0, p1, p2}, Landroid/widget/AbsListView$PositionScroller$2;-><init>(Landroid/widget/AbsListView$PositionScroller;II)V

    iput-object v1, v0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    return-void

    .line 7326
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 7332
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v1, v2

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    const/4 v4, 0x0

    .line 7336
    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getCount()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v4, 0xc8

    if-ge p1, v2, :cond_5

    sub-int/2addr v1, p2

    if-ge v1, v3, :cond_3

    return-void

    :cond_3
    sub-int/2addr v2, p1

    add-int/2addr v2, v3

    sub-int/2addr v1, v3

    if-ge v1, v2, :cond_4

    const/4 v2, 0x4

    .line 7348
    iput v2, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_1

    :cond_4
    const/4 v1, 0x2

    .line 7351
    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_5
    if-le p1, v1, :cond_9

    sub-int v2, p2, v2

    if-ge v2, v3, :cond_6

    return-void

    :cond_6
    sub-int v1, p1, v1

    add-int/2addr v1, v3

    sub-int/2addr v2, v3

    if-ge v2, v1, :cond_7

    const/4 v1, 0x3

    .line 7364
    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_0

    .line 7367
    :cond_7
    iput v3, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    :goto_1
    if-lez v1, :cond_8

    .line 7375
    div-int/2addr v4, v1

    iput v4, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_2

    .line 7377
    :cond_8
    iput v4, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 7379
    :goto_2
    iput p1, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 7380
    iput p2, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    .line 7381
    iput v0, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 7383
    iget-object p1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    .line 7370
    :cond_9
    invoke-direct {p0, p1, p2, v4}, Landroid/widget/AbsListView$PositionScroller;->scrollToVisible(III)V

    return-void
.end method

.method public startWithOffset(II)V
    .locals 1

    const/16 v0, 0xc8

    .line 7388
    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/AbsListView$PositionScroller;->startWithOffset(III)V

    return-void
.end method

.method public startWithOffset(III)V
    .locals 6

    .line 7393
    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 7395
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v0, :cond_0

    .line 7398
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    new-instance v1, Landroid/widget/AbsListView$PositionScroller$3;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/widget/AbsListView$PositionScroller$3;-><init>(Landroid/widget/AbsListView$PositionScroller;III)V

    iput-object v1, v0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    return-void

    .line 7406
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 7412
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v1

    add-int/2addr p2, v1

    .line 7414
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 7415
    iput p2, p0, Landroid/widget/AbsListView$PositionScroller;->mOffsetFromTop:I

    const/4 p1, -0x1

    .line 7416
    iput p1, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    .line 7417
    iput p1, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    const/4 v3, 0x5

    .line 7418
    iput v3, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    .line 7420
    iget-object v3, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int v4, v3, v0

    sub-int/2addr v4, v2

    .line 7424
    iget v5, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-ge v5, v3, :cond_2

    .line 7425
    iget p2, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    sub-int/2addr v3, p2

    goto :goto_0

    .line 7426
    :cond_2
    iget v5, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-le v5, v4, :cond_4

    .line 7427
    iget p2, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    sub-int v3, p2, v4

    :goto_0
    int-to-float p2, v3

    int-to-float v0, v0

    div-float/2addr p2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_3

    goto :goto_1

    :cond_3
    int-to-float p3, p3

    div-float/2addr p3, p2

    float-to-int p3, p3

    .line 7438
    :goto_1
    iput p3, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 7439
    iput p1, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 7441
    iget-object p1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    .line 7430
    :cond_4
    iget-object p1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v0, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    .line 7431
    iget-object p0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1, p3, v2, v1}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 7500
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
