.class Lcom/yftech/car/widget/media/radio/view/RulerViewScroller$2;
.super Ljava/lang/Object;
.source "RulerViewScroller.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller$2;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller$2;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;

    invoke-static {v0}, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->access$100(Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 138
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller$2;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;

    invoke-static {v0}, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->access$100(Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 139
    iget-object v1, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller$2;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;

    invoke-static {v1}, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->access$000(Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;)I

    move-result v1

    sub-int/2addr v1, v0

    .line 140
    iget-object v2, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller$2;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;

    invoke-static {v2, v0}, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->access$002(Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;I)I

    if-eqz v1, :cond_0

    .line 142
    iget-object v2, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller$2;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;

    invoke-static {v2}, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->access$300(Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;)Lcom/yftech/car/widget/media/radio/view/RulerViewScroller$ScrollingListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller$ScrollingListener;->onScroll(I)V

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller$2;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;

    invoke-static {v1}, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->access$100(Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 146
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller$2;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;

    iget-object v2, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller$2;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;

    invoke-static {v2}, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->access$100(Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalX()I

    move-result v2

    invoke-static {v0, v2}, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->access$002(Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;I)I

    .line 147
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller$2;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;

    invoke-static {v0}, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->access$100(Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller$2;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;

    invoke-static {v0}, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->access$100(Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 150
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller$2;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;

    invoke-static {p0}, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->access$400(Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;)Landroid/os/Handler;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 151
    :cond_2
    iget p1, p1, Landroid/os/Message;->what:I

    if-nez p1, :cond_3

    .line 152
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller$2;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;

    invoke-static {p0}, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->access$500(Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;)V

    goto :goto_0

    .line 154
    :cond_3
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller$2;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->finishScrolling()V

    :goto_0
    return v1
.end method
