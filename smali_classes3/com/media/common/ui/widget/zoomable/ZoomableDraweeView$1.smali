.class Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView$1;
.super Lcom/facebook/drawee/controller/BaseControllerListener;
.source "ZoomableDraweeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/drawee/controller/BaseControllerListener<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;


# direct methods
.method constructor <init>(Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView$1;->this$0:Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

    invoke-direct {p0}, Lcom/facebook/drawee/controller/BaseControllerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinalImageSet(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Animatable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 62
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView$1;->this$0:Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

    invoke-static {p0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->access$000(Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;)V

    return-void
.end method

.method public onRelease(Ljava/lang/String;)V
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView$1;->this$0:Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

    invoke-static {p0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->access$100(Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;)V

    return-void
.end method
