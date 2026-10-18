.class Lcom/yftech/libgallery/ui/FullScreenImageFragment$10;
.super Lcom/facebook/drawee/controller/BaseControllerListener;
.source "FullScreenImageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libgallery/ui/FullScreenImageFragment;->displayImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/drawee/controller/BaseControllerListener<",
        "Lcom/facebook/imagepipeline/image/ImageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)V
    .locals 0

    .line 629
    iput-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$10;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-direct {p0}, Lcom/facebook/drawee/controller/BaseControllerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string p1, "play error!!!!!!!!!!!"

    .line 633
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 636
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$10;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$1502(Lcom/yftech/libgallery/ui/FullScreenImageFragment;I)I

    .line 638
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$10;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$300(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)I

    move-result p1

    if-lez p1, :cond_0

    .line 639
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$10;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    iget-object p2, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$10;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {p2}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$400(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$10;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {v0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$100(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p2, v0

    invoke-static {p1, p2}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$402(Lcom/yftech/libgallery/ui/FullScreenImageFragment;I)I

    goto :goto_0

    .line 640
    :cond_0
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$10;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$300(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)I

    move-result p1

    if-gez p1, :cond_2

    .line 642
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$10;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$400(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)I

    move-result p1

    if-lez p1, :cond_1

    .line 643
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$10;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$410(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)I

    goto :goto_0

    .line 645
    :cond_1
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$10;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    iget-object p2, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$10;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {p2}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$400(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)I

    move-result p2

    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$10;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {v0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$100(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    add-int/2addr p2, v0

    invoke-static {p1, p2}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$402(Lcom/yftech/libgallery/ui/FullScreenImageFragment;I)I

    .line 648
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$10;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$500(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)V

    return-void
.end method

.method public onFinalImageSet(Ljava/lang/String;Lcom/facebook/imagepipeline/image/ImageInfo;Landroid/graphics/drawable/Animatable;)V
    .locals 2
    .param p2    # Lcom/facebook/imagepipeline/image/ImageInfo;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Animatable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 660
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onFinalImageSet:isPlaying="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$10;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {p3}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$1200(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 662
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$10;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$1200(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 663
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$10;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$600(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)Landroid/os/Handler;

    move-result-object p1

    const/16 p3, 0x63

    invoke-virtual {p1, p3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 664
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$10;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$600(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 666
    :cond_0
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$10;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$600(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    if-eqz p2, :cond_4

    .line 671
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onFinalImageSet:width="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/facebook/imagepipeline/image/ImageInfo;->getWidth()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", height="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/facebook/imagepipeline/image/ImageInfo;->getHeight()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 673
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$10;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$1600(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object p0

    check-cast p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    .line 674
    invoke-interface {p2}, Lcom/facebook/imagepipeline/image/ImageInfo;->getWidth()I

    move-result p1

    sget p3, Lcom/yftech/libmvpmodule/utils/Constants;->displayWidth:I

    if-gt p1, p3, :cond_3

    invoke-interface {p2}, Lcom/facebook/imagepipeline/image/ImageInfo;->getHeight()I

    move-result p1

    sget p2, Lcom/yftech/libmvpmodule/utils/Constants;->displayHeight:I

    if-le p1, p2, :cond_2

    goto :goto_0

    .line 677
    :cond_2
    sget-object p1, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-virtual {p0, p1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->setActualImageScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V

    goto :goto_1

    .line 675
    :cond_3
    :goto_0
    sget-object p1, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_CENTER:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-virtual {p0, p1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->setActualImageScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public bridge synthetic onFinalImageSet(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Animatable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 629
    check-cast p2, Lcom/facebook/imagepipeline/image/ImageInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yftech/libgallery/ui/FullScreenImageFragment$10;->onFinalImageSet(Ljava/lang/String;Lcom/facebook/imagepipeline/image/ImageInfo;Landroid/graphics/drawable/Animatable;)V

    return-void
.end method

.method public onSubmit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    const-string p0, "onSubmit"

    .line 654
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method
