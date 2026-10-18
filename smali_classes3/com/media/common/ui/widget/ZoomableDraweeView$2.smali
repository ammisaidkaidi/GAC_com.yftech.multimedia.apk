.class Lcom/media/common/ui/widget/ZoomableDraweeView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ZoomableDraweeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/media/common/ui/widget/ZoomableDraweeView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/media/common/ui/widget/ZoomableDraweeView;


# direct methods
.method constructor <init>(Lcom/media/common/ui/widget/ZoomableDraweeView;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/media/common/ui/widget/ZoomableDraweeView$2;->this$0:Lcom/media/common/ui/widget/ZoomableDraweeView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 91
    iget-object p1, p0, Lcom/media/common/ui/widget/ZoomableDraweeView$2;->this$0:Lcom/media/common/ui/widget/ZoomableDraweeView;

    invoke-static {p1}, Lcom/media/common/ui/widget/ZoomableDraweeView;->access$000(Lcom/media/common/ui/widget/ZoomableDraweeView;)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    .line 92
    iget-object p1, p0, Lcom/media/common/ui/widget/ZoomableDraweeView$2;->this$0:Lcom/media/common/ui/widget/ZoomableDraweeView;

    invoke-static {p1}, Lcom/media/common/ui/widget/ZoomableDraweeView;->access$300(Lcom/media/common/ui/widget/ZoomableDraweeView;)Landroid/graphics/Matrix;

    move-result-object p1

    neg-float p2, p3

    neg-float p3, p4

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 93
    iget-object p1, p0, Lcom/media/common/ui/widget/ZoomableDraweeView$2;->this$0:Lcom/media/common/ui/widget/ZoomableDraweeView;

    invoke-virtual {p1}, Lcom/media/common/ui/widget/ZoomableDraweeView;->invalidate()V

    .line 94
    iget-object p0, p0, Lcom/media/common/ui/widget/ZoomableDraweeView$2;->this$0:Lcom/media/common/ui/widget/ZoomableDraweeView;

    invoke-static {p0}, Lcom/media/common/ui/widget/ZoomableDraweeView;->access$500(Lcom/media/common/ui/widget/ZoomableDraweeView;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 83
    iget-object p1, p0, Lcom/media/common/ui/widget/ZoomableDraweeView$2;->this$0:Lcom/media/common/ui/widget/ZoomableDraweeView;

    invoke-static {p1}, Lcom/media/common/ui/widget/ZoomableDraweeView;->access$600(Lcom/media/common/ui/widget/ZoomableDraweeView;)Lcom/media/common/ui/widget/ZoomableDraweeView$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 84
    iget-object p0, p0, Lcom/media/common/ui/widget/ZoomableDraweeView$2;->this$0:Lcom/media/common/ui/widget/ZoomableDraweeView;

    invoke-static {p0}, Lcom/media/common/ui/widget/ZoomableDraweeView;->access$600(Lcom/media/common/ui/widget/ZoomableDraweeView;)Lcom/media/common/ui/widget/ZoomableDraweeView$OnClickListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/media/common/ui/widget/ZoomableDraweeView$OnClickListener;->onClick()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
