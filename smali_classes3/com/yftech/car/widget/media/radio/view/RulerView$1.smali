.class Lcom/yftech/car/widget/media/radio/view/RulerView$1;
.super Ljava/lang/Object;
.source "RulerView.java"

# interfaces
.implements Lcom/yftech/car/widget/media/radio/view/RulerViewScroller$ScrollingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/radio/view/RulerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/radio/view/RulerView;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/radio/view/RulerView;)V
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView$1;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 4

    .line 557
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView$1;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerView;

    invoke-static {v0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->access$300(Lcom/yftech/car/widget/media/radio/view/RulerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView$1;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerView;

    invoke-static {v0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->access$000(Lcom/yftech/car/widget/media/radio/view/RulerView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 562
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView$1;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerView;

    invoke-static {v0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->access$100(Lcom/yftech/car/widget/media/radio/view/RulerView;)Lcom/yftech/car/widget/media/radio/view/RulerView$OnRulerViewScrollListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 563
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView$1;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerView;

    iget v0, v0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMinValue:I

    iget-object v2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView$1;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerView;

    iget v2, v2, Lcom/yftech/car/widget/media/radio/view/RulerView;->mCurrentValue:I

    iget-object v3, p0, Lcom/yftech/car/widget/media/radio/view/RulerView$1;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerView;

    iget v3, v3, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleBase:I

    mul-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView$1;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerView;

    iget v2, v2, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMaxValue:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 564
    iget-object v2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView$1;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerView;

    invoke-static {v2}, Lcom/yftech/car/widget/media/radio/view/RulerView;->access$100(Lcom/yftech/car/widget/media/radio/view/RulerView;)Lcom/yftech/car/widget/media/radio/view/RulerView$OnRulerViewScrollListener;

    move-result-object v2

    iget-object v3, p0, Lcom/yftech/car/widget/media/radio/view/RulerView$1;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerView;

    invoke-interface {v2, v3, v0}, Lcom/yftech/car/widget/media/radio/view/RulerView$OnRulerViewScrollListener;->onScrollingFinished(Lcom/yftech/car/widget/media/radio/view/RulerView;I)V

    .line 566
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView$1;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerView;

    invoke-static {v0, v1}, Lcom/yftech/car/widget/media/radio/view/RulerView;->access$002(Lcom/yftech/car/widget/media/radio/view/RulerView;Z)Z

    .line 568
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView$1;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerView;

    invoke-static {v0, v1}, Lcom/yftech/car/widget/media/radio/view/RulerView;->access$402(Lcom/yftech/car/widget/media/radio/view/RulerView;I)I

    .line 569
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView$1;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerView;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->invalidate()V

    return-void
.end method

.method public onJustify()V
    .locals 3

    .line 577
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView$1;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerView;

    invoke-static {v0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->access$300(Lcom/yftech/car/widget/media/radio/view/RulerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView$1;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerView;

    invoke-static {v0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->access$400(Lcom/yftech/car/widget/media/radio/view/RulerView;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 581
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView$1;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerView;

    invoke-static {v0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->access$400(Lcom/yftech/car/widget/media/radio/view/RulerView;)I

    move-result v0

    iget-object v1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView$1;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerView;

    invoke-static {v1}, Lcom/yftech/car/widget/media/radio/view/RulerView;->access$500(Lcom/yftech/car/widget/media/radio/view/RulerView;)I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 582
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView$1;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerView;

    invoke-static {v0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->access$600(Lcom/yftech/car/widget/media/radio/view/RulerView;)Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView$1;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerView;

    invoke-static {v1}, Lcom/yftech/car/widget/media/radio/view/RulerView;->access$500(Lcom/yftech/car/widget/media/radio/view/RulerView;)I

    move-result v1

    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView$1;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerView;

    invoke-static {p0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->access$400(Lcom/yftech/car/widget/media/radio/view/RulerView;)I

    move-result p0

    add-int/2addr v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->scroll(II)V

    goto :goto_0

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView$1;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerView;

    invoke-static {v0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->access$400(Lcom/yftech/car/widget/media/radio/view/RulerView;)I

    move-result v0

    iget-object v1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView$1;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerView;

    invoke-static {v1}, Lcom/yftech/car/widget/media/radio/view/RulerView;->access$500(Lcom/yftech/car/widget/media/radio/view/RulerView;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_2

    .line 584
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView$1;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerView;

    invoke-static {v0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->access$600(Lcom/yftech/car/widget/media/radio/view/RulerView;)Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView$1;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerView;

    invoke-static {v1}, Lcom/yftech/car/widget/media/radio/view/RulerView;->access$400(Lcom/yftech/car/widget/media/radio/view/RulerView;)I

    move-result v1

    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView$1;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerView;

    invoke-static {p0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->access$500(Lcom/yftech/car/widget/media/radio/view/RulerView;)I

    move-result p0

    sub-int/2addr v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->scroll(II)V

    goto :goto_0

    .line 586
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView$1;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerView;

    invoke-static {v0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->access$600(Lcom/yftech/car/widget/media/radio/view/RulerView;)Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView$1;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerView;

    invoke-static {p0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->access$400(Lcom/yftech/car/widget/media/radio/view/RulerView;)I

    move-result p0

    invoke-virtual {v0, p0, v2}, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->scroll(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onScroll(I)V
    .locals 0

    .line 549
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView$1;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerView;

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/radio/view/RulerView;->access$200(Lcom/yftech/car/widget/media/radio/view/RulerView;I)V

    return-void
.end method

.method public onStarted()V
    .locals 2

    .line 536
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView$1;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yftech/car/widget/media/radio/view/RulerView;->access$002(Lcom/yftech/car/widget/media/radio/view/RulerView;Z)Z

    .line 538
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView$1;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerView;

    invoke-static {v0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->access$100(Lcom/yftech/car/widget/media/radio/view/RulerView;)Lcom/yftech/car/widget/media/radio/view/RulerView$OnRulerViewScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView$1;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerView;

    invoke-static {v0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->access$100(Lcom/yftech/car/widget/media/radio/view/RulerView;)Lcom/yftech/car/widget/media/radio/view/RulerView$OnRulerViewScrollListener;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView$1;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerView;

    invoke-interface {v0, p0}, Lcom/yftech/car/widget/media/radio/view/RulerView$OnRulerViewScrollListener;->onScrollingStarted(Lcom/yftech/car/widget/media/radio/view/RulerView;)V

    :cond_0
    return-void
.end method
