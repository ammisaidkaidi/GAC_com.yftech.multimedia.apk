.class Lcom/yftech/libgallery/ui/FullScreenImageFragment$5;
.super Ljava/lang/Object;
.source "FullScreenImageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libgallery/ui/FullScreenImageFragment;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$5;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "sys.atc.carplay.app.show_ui"

    const/4 v1, 0x0

    .line 377
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 378
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause:isCarPlayDisplaying="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    .line 384
    :cond_0
    invoke-static {}, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->getInstance()Lcom/yftech/libgallery/utils/MyPhotoDataManager;

    move-result-object v0

    iget-object v2, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$5;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {v2}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$1200(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->setPhotoPlayingBeforeSwitchPage(Z)V

    .line 385
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$5;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {p0, v1}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$1300(Lcom/yftech/libgallery/ui/FullScreenImageFragment;Z)V

    return-void
.end method
