.class Lcom/yftech/libgallery/ui/WallPaperSettingFragment$2;
.super Lcom/facebook/drawee/controller/BaseControllerListener;
.source "WallPaperSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libgallery/ui/WallPaperSettingFragment;
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
.field final synthetic this$0:Lcom/yftech/libgallery/ui/WallPaperSettingFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$2;->this$0:Lcom/yftech/libgallery/ui/WallPaperSettingFragment;

    invoke-direct {p0}, Lcom/facebook/drawee/controller/BaseControllerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$2;->this$0:Lcom/yftech/libgallery/ui/WallPaperSettingFragment;

    invoke-static {p0}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->access$200(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;)Landroid/widget/TextView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public onFinalImageSet(Ljava/lang/String;Lcom/facebook/imagepipeline/image/ImageInfo;Landroid/graphics/drawable/Animatable;)V
    .locals 0
    .param p2    # Lcom/facebook/imagepipeline/image/ImageInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Animatable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 173
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/drawee/controller/BaseControllerListener;->onFinalImageSet(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V

    if-eqz p2, :cond_0

    .line 175
    iget-object p0, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$2;->this$0:Lcom/yftech/libgallery/ui/WallPaperSettingFragment;

    invoke-static {p0}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->access$200(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;)Landroid/widget/TextView;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onFinalImageSet(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Animatable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 165
    check-cast p2, Lcom/facebook/imagepipeline/image/ImageInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$2;->onFinalImageSet(Ljava/lang/String;Lcom/facebook/imagepipeline/image/ImageInfo;Landroid/graphics/drawable/Animatable;)V

    return-void
.end method

.method public onSubmit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 181
    invoke-super {p0, p1, p2}, Lcom/facebook/drawee/controller/BaseControllerListener;->onSubmit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 182
    iget-object p0, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$2;->this$0:Lcom/yftech/libgallery/ui/WallPaperSettingFragment;

    invoke-static {p0}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->access$200(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;)Landroid/widget/TextView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method
