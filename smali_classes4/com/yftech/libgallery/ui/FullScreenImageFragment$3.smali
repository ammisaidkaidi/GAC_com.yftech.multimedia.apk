.class Lcom/yftech/libgallery/ui/FullScreenImageFragment$3;
.super Ljava/lang/Object;
.source "FullScreenImageFragment.java"

# interfaces
.implements Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libgallery/ui/FullScreenImageFragment;
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

    .line 240
    iput-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$3;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCarplayConnectChanged(I)V
    .locals 0

    return-void
.end method

.method public onCarplayMusicID3Changed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCarplayPlayingChanged(Z)V
    .locals 0

    return-void
.end method

.method public onCarplayProgressChanged(I)V
    .locals 0

    return-void
.end method

.method public onCarplayTotalDurationChanged(I)V
    .locals 0

    return-void
.end method

.method public onResourceStateChanged(Z)V
    .locals 3

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResourceStateChanged:isDisplaying="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$3;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-virtual {v0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$3;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-virtual {v0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResourceStateChanged:isPageDisplaying="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->isDisplaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 278
    iget-boolean v0, v0, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->isDisplaying:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 281
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$3;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->onResume()V

    goto :goto_0

    .line 283
    :cond_0
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$3;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->onStop()V

    :cond_1
    :goto_0
    return-void
.end method
