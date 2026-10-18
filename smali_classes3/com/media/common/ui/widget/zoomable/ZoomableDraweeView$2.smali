.class Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView$2;
.super Ljava/lang/Object;
.source "ZoomableDraweeView.java"

# interfaces
.implements Lcom/media/common/ui/widget/zoomable/ZoomableController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;


# direct methods
.method constructor <init>(Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView$2;->this$0:Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransformBegin(Landroid/graphics/Matrix;)V
    .locals 0

    return-void
.end method

.method public onTransformChanged(Landroid/graphics/Matrix;)V
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView$2;->this$0:Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

    invoke-virtual {p0, p1}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->onTransformChanged(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public onTransformEnd(Landroid/graphics/Matrix;)V
    .locals 0

    return-void
.end method
