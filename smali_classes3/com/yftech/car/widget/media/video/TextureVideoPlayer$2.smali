.class Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;
.super Ljava/lang/Object;
.source "TextureVideoPlayer.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/video/TextureVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onSurfaceTextureDestroyed$0(Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;)V
    .locals 2

    .line 388
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$000(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x34

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 389
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->setSurfaceVisibility(I)V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    const-string v0, "TextureVideoPlayer"

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onSurfaceTextureAvailable: width=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",height=="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    new-instance p3, Landroid/view/Surface;

    invoke-direct {p3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {p2, p3}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$1602(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;Landroid/view/Surface;)Landroid/view/Surface;

    .line 340
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p1

    iget-object p2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p2}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$1600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Landroid/view/Surface;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/video/PlayerManager;->setDisplay(Landroid/view/Surface;)V

    .line 341
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$1700(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 342
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p0, p2}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$1702(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;Z)Z

    return-void

    .line 345
    :cond_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p1

    iget-boolean p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isCreatedPlayer:Z

    const/4 p3, 0x1

    if-nez p1, :cond_1

    .line 346
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p1

    iput-boolean p3, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isCreatedPlayer:Z

    .line 347
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/PlayerManager;->prepareAsync()V

    goto/16 :goto_0

    .line 349
    :cond_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/video/PlayerManager;->isRelease()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 350
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p1

    iget-object p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p1

    iget-boolean p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    if-nez p1, :cond_2

    .line 351
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p1, p3}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$1802(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;Z)Z

    .line 352
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    iget-object p2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p2}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p2

    iget-boolean p2, p2, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayState:Z

    invoke-static {p1, p2}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$1902(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;Z)Z

    .line 353
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p0

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-static {p1, p0, p3}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$2000(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;Lcom/yftech/car/media/data/entity/MediaFile;Z)V

    goto :goto_0

    :cond_2
    const-string p1, "TextureVideoPlayer"

    .line 355
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " onSurfaceTextureAvailable: mPlayerManager.isPlayError=="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p3}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p3

    iget-boolean p3, p3, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ",mPlayerManager.mCurrentPlay=="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p0

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 358
    :cond_3
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    iget-object p3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-virtual {p3}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->getProgressPosition()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->setPlayProgress(I)V

    .line 359
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p1

    iget-boolean p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isPrepared:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p1

    iget-boolean p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayState:Z

    if-eqz p1, :cond_4

    .line 360
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/yftech/car/widget/media/video/PlayerManager;->play(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    const-string p1, "TextureVideoPlayer"

    const-string v0, " onSurfaceTextureDestroyed: "

    .line 380
    invoke-static {p1, v0}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$1600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 382
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$1600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 383
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$1602(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;Landroid/view/Surface;)Landroid/view/Surface;

    .line 385
    :cond_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p1

    iget-boolean p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isCreatedPlayer:Z

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 387
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$000(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lcom/yftech/car/widget/media/video/-$$Lambda$TextureVideoPlayer$2$8_KkDjAh1DkEqOvHZ8hLp9yFsYY;

    invoke-direct {v1, p0}, Lcom/yftech/car/widget/media/video/-$$Lambda$TextureVideoPlayer$2$8_KkDjAh1DkEqOvHZ8hLp9yFsYY;-><init>(Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 393
    :cond_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/yftech/car/widget/media/video/PlayerManager;->pause(Z)V

    .line 394
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$2300(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 395
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p1

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {v1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$1600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/yftech/car/widget/media/video/PlayerManager;->setDisplay(Landroid/view/Surface;)V

    .line 396
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->updateSaveTime()V

    .line 397
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p0

    iget-boolean p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    xor-int/2addr p0, v0

    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/video/PlayerManager;->release(Z)V

    :cond_2
    :goto_0
    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    const-string v0, "TextureVideoPlayer"

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onSurfaceTextureSizeChanged: width=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",height=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {v0, p2}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$2102(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;I)I

    .line 371
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p2, p3}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$2202(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;I)I

    .line 372
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p2}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p2}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$1600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Landroid/view/Surface;

    move-result-object p2

    if-nez p2, :cond_0

    .line 373
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    new-instance p3, Landroid/view/Surface;

    invoke-direct {p3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {p2, p3}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$1602(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;Landroid/view/Surface;)Landroid/view/Surface;

    .line 374
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$1600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Landroid/view/Surface;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/video/PlayerManager;->setDisplay(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
