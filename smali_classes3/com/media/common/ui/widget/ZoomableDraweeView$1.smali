.class Lcom/media/common/ui/widget/ZoomableDraweeView$1;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
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

    .line 49
    iput-object p1, p0, Lcom/media/common/ui/widget/ZoomableDraweeView$1;->this$0:Lcom/media/common/ui/widget/ZoomableDraweeView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4

    .line 53
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    .line 55
    iget-object v0, p0, Lcom/media/common/ui/widget/ZoomableDraweeView$1;->this$0:Lcom/media/common/ui/widget/ZoomableDraweeView;

    iget-object v1, p0, Lcom/media/common/ui/widget/ZoomableDraweeView$1;->this$0:Lcom/media/common/ui/widget/ZoomableDraweeView;

    invoke-static {v1}, Lcom/media/common/ui/widget/ZoomableDraweeView;->access$000(Lcom/media/common/ui/widget/ZoomableDraweeView;)F

    move-result v1

    mul-float/2addr v1, p1

    invoke-static {v0, v1}, Lcom/media/common/ui/widget/ZoomableDraweeView;->access$002(Lcom/media/common/ui/widget/ZoomableDraweeView;F)F

    .line 56
    iget-object v0, p0, Lcom/media/common/ui/widget/ZoomableDraweeView$1;->this$0:Lcom/media/common/ui/widget/ZoomableDraweeView;

    invoke-static {v0}, Lcom/media/common/ui/widget/ZoomableDraweeView;->access$100(Lcom/media/common/ui/widget/ZoomableDraweeView;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/media/common/ui/widget/ZoomableDraweeView$1;->this$0:Lcom/media/common/ui/widget/ZoomableDraweeView;

    iget-object v3, p0, Lcom/media/common/ui/widget/ZoomableDraweeView$1;->this$0:Lcom/media/common/ui/widget/ZoomableDraweeView;

    invoke-virtual {v3}, Lcom/media/common/ui/widget/ZoomableDraweeView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-static {v0, v3}, Lcom/media/common/ui/widget/ZoomableDraweeView;->access$102(Lcom/media/common/ui/widget/ZoomableDraweeView;F)F

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/media/common/ui/widget/ZoomableDraweeView$1;->this$0:Lcom/media/common/ui/widget/ZoomableDraweeView;

    invoke-static {v0}, Lcom/media/common/ui/widget/ZoomableDraweeView;->access$200(Lcom/media/common/ui/widget/ZoomableDraweeView;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/media/common/ui/widget/ZoomableDraweeView$1;->this$0:Lcom/media/common/ui/widget/ZoomableDraweeView;

    iget-object v1, p0, Lcom/media/common/ui/widget/ZoomableDraweeView$1;->this$0:Lcom/media/common/ui/widget/ZoomableDraweeView;

    invoke-virtual {v1}, Lcom/media/common/ui/widget/ZoomableDraweeView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/media/common/ui/widget/ZoomableDraweeView;->access$202(Lcom/media/common/ui/widget/ZoomableDraweeView;F)F

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/media/common/ui/widget/ZoomableDraweeView$1;->this$0:Lcom/media/common/ui/widget/ZoomableDraweeView;

    invoke-static {v0}, Lcom/media/common/ui/widget/ZoomableDraweeView;->access$300(Lcom/media/common/ui/widget/ZoomableDraweeView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/media/common/ui/widget/ZoomableDraweeView$1;->this$0:Lcom/media/common/ui/widget/ZoomableDraweeView;

    invoke-static {v1}, Lcom/media/common/ui/widget/ZoomableDraweeView;->access$100(Lcom/media/common/ui/widget/ZoomableDraweeView;)F

    move-result v1

    iget-object v2, p0, Lcom/media/common/ui/widget/ZoomableDraweeView$1;->this$0:Lcom/media/common/ui/widget/ZoomableDraweeView;

    invoke-static {v2}, Lcom/media/common/ui/widget/ZoomableDraweeView;->access$200(Lcom/media/common/ui/widget/ZoomableDraweeView;)F

    move-result v2

    invoke-virtual {v0, p1, p1, v1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 63
    iget-object p0, p0, Lcom/media/common/ui/widget/ZoomableDraweeView$1;->this$0:Lcom/media/common/ui/widget/ZoomableDraweeView;

    invoke-virtual {p0}, Lcom/media/common/ui/widget/ZoomableDraweeView;->invalidate()V

    const/4 p0, 0x1

    return p0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    .line 70
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 72
    iget-object p1, p0, Lcom/media/common/ui/widget/ZoomableDraweeView$1;->this$0:Lcom/media/common/ui/widget/ZoomableDraweeView;

    invoke-static {p1}, Lcom/media/common/ui/widget/ZoomableDraweeView;->access$000(Lcom/media/common/ui/widget/ZoomableDraweeView;)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/media/common/ui/widget/ZoomableDraweeView$1;->this$0:Lcom/media/common/ui/widget/ZoomableDraweeView;

    invoke-static {p1}, Lcom/media/common/ui/widget/ZoomableDraweeView;->access$400(Lcom/media/common/ui/widget/ZoomableDraweeView;)V

    .line 75
    :cond_0
    iget-object p0, p0, Lcom/media/common/ui/widget/ZoomableDraweeView$1;->this$0:Lcom/media/common/ui/widget/ZoomableDraweeView;

    invoke-static {p0}, Lcom/media/common/ui/widget/ZoomableDraweeView;->access$500(Lcom/media/common/ui/widget/ZoomableDraweeView;)V

    return-void
.end method
