.class Lcom/yftech/libgallery/ui/FullScreenImageActivity$4;
.super Ljava/lang/Object;
.source "FullScreenImageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libgallery/ui/FullScreenImageActivity;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;


# direct methods
.method constructor <init>(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$4;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "sys.atc.carplay.app.show_ui"

    const/4 v1, 0x0

    .line 223
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause:isCarPlayDisplaying="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    .line 230
    :cond_0
    invoke-static {}, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->getInstance()Lcom/yftech/libgallery/utils/MyPhotoDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$4;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    invoke-static {v1}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->access$900(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->setPhotoPlayingBeforeSwitchPage(Z)V

    .line 231
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$4;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    invoke-static {v0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->access$900(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$4;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    invoke-static {p0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->access$1000(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageView;->callOnClick()Z

    :cond_1
    return-void
.end method
