.class Lcom/yftech/car/widget/media/radio/view/RulerViewScroller$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "RulerViewScroller.java"


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

    .line 53
    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller$1;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    .line 59
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller$1;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->access$002(Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;I)I

    .line 60
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller$1;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;

    invoke-static {p1}, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->access$100(Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;)Landroid/widget/Scroller;

    move-result-object v0

    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller$1;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;

    invoke-static {p1}, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->access$000(Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;)I

    move-result v2

    neg-float p1, p3

    float-to-int v3, p1

    const/4 v1, 0x0

    const/4 v4, 0x0

    const v5, -0x7fffffff

    const v6, 0x7fffffff

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 61
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller$1;->this$0:Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;

    invoke-static {p0, p2}, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->access$200(Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
