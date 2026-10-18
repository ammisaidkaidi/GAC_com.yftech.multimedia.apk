.class Lcom/yftech/libgallery/ui/BrowseImageFragment$4;
.super Lcom/facebook/drawee/controller/BaseControllerListener;
.source "BrowseImageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libgallery/ui/BrowseImageFragment;->displayImage()V
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
.field final synthetic this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libgallery/ui/BrowseImageFragment;)V
    .locals 0

    .line 428
    iput-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$4;->this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;

    invoke-direct {p0}, Lcom/facebook/drawee/controller/BaseControllerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string p1, "play error!!!!!!!!!!!"

    .line 433
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 435
    iget-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$4;->this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->access$600(Lcom/yftech/libgallery/ui/BrowseImageFragment;)I

    move-result p1

    if-nez p1, :cond_1

    .line 436
    iget-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$4;->this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->access$300(Lcom/yftech/libgallery/ui/BrowseImageFragment;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 437
    iget-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$4;->this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->access$300(Lcom/yftech/libgallery/ui/BrowseImageFragment;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 440
    :cond_0
    iget-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$4;->this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->access$700(Lcom/yftech/libgallery/ui/BrowseImageFragment;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 441
    iget-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$4;->this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->access$800(Lcom/yftech/libgallery/ui/BrowseImageFragment;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 442
    iget-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$4;->this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->access$900(Lcom/yftech/libgallery/ui/BrowseImageFragment;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 443
    iget-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$4;->this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->access$1000(Lcom/yftech/libgallery/ui/BrowseImageFragment;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 444
    iget-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$4;->this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->access$800(Lcom/yftech/libgallery/ui/BrowseImageFragment;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 445
    iget-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$4;->this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->access$900(Lcom/yftech/libgallery/ui/BrowseImageFragment;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 446
    iget-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$4;->this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->access$1000(Lcom/yftech/libgallery/ui/BrowseImageFragment;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 448
    iget-object p0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$4;->this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;

    invoke-static {p0, p2}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->access$000(Lcom/yftech/libgallery/ui/BrowseImageFragment;I)V

    goto :goto_0

    .line 461
    :cond_1
    iget-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$4;->this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->access$600(Lcom/yftech/libgallery/ui/BrowseImageFragment;)I

    move-result p1

    if-lez p1, :cond_2

    .line 463
    iget-object p0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$4;->this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;

    invoke-static {p0}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->access$100(Lcom/yftech/libgallery/ui/BrowseImageFragment;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageView;->callOnClick()Z

    goto :goto_0

    .line 466
    :cond_2
    iget-object p0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$4;->this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;

    invoke-static {p0}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->access$200(Lcom/yftech/libgallery/ui/BrowseImageFragment;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageView;->callOnClick()Z

    :goto_0
    return-void
.end method

.method public onFinalImageSet(Ljava/lang/String;Lcom/facebook/imagepipeline/image/ImageInfo;Landroid/graphics/drawable/Animatable;)V
    .locals 0
    .param p2    # Lcom/facebook/imagepipeline/image/ImageInfo;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Animatable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 472
    iget-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$4;->this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->access$700(Lcom/yftech/libgallery/ui/BrowseImageFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 473
    iget-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$4;->this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->access$700(Lcom/yftech/libgallery/ui/BrowseImageFragment;)Landroid/widget/TextView;

    move-result-object p1

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 475
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "get the Enabled:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$4;->this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;

    invoke-static {p3}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->access$800(Lcom/yftech/libgallery/ui/BrowseImageFragment;)Landroid/widget/ImageView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/ImageView;->isEnabled()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 476
    iget-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$4;->this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->access$800(Lcom/yftech/libgallery/ui/BrowseImageFragment;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$4;->this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->access$800(Lcom/yftech/libgallery/ui/BrowseImageFragment;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$4;->this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->access$800(Lcom/yftech/libgallery/ui/BrowseImageFragment;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 477
    :cond_1
    iget-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$4;->this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->access$800(Lcom/yftech/libgallery/ui/BrowseImageFragment;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 478
    iget-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$4;->this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->access$900(Lcom/yftech/libgallery/ui/BrowseImageFragment;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 479
    iget-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$4;->this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->access$1000(Lcom/yftech/libgallery/ui/BrowseImageFragment;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 480
    iget-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$4;->this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->access$800(Lcom/yftech/libgallery/ui/BrowseImageFragment;)Landroid/widget/ImageView;

    move-result-object p1

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 481
    iget-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$4;->this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->access$900(Lcom/yftech/libgallery/ui/BrowseImageFragment;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 482
    iget-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$4;->this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->access$1000(Lcom/yftech/libgallery/ui/BrowseImageFragment;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_2
    if-eqz p2, :cond_5

    .line 487
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

    .line 489
    iget-object p0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$4;->this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;

    invoke-static {p0}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->access$400(Lcom/yftech/libgallery/ui/BrowseImageFragment;)Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object p0

    check-cast p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    .line 490
    invoke-interface {p2}, Lcom/facebook/imagepipeline/image/ImageInfo;->getWidth()I

    move-result p1

    sget p3, Lcom/yftech/libmvpmodule/utils/Constants;->displayWidth:I

    if-gt p1, p3, :cond_4

    invoke-interface {p2}, Lcom/facebook/imagepipeline/image/ImageInfo;->getHeight()I

    move-result p1

    sget p2, Lcom/yftech/libmvpmodule/utils/Constants;->displayHeight:I

    if-le p1, p2, :cond_3

    goto :goto_0

    .line 493
    :cond_3
    sget-object p1, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-virtual {p0, p1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->setActualImageScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V

    goto :goto_1

    .line 491
    :cond_4
    :goto_0
    sget-object p1, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_CENTER:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-virtual {p0, p1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->setActualImageScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V

    :cond_5
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

    .line 428
    check-cast p2, Lcom/facebook/imagepipeline/image/ImageInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yftech/libgallery/ui/BrowseImageFragment$4;->onFinalImageSet(Ljava/lang/String;Lcom/facebook/imagepipeline/image/ImageInfo;Landroid/graphics/drawable/Animatable;)V

    return-void
.end method
