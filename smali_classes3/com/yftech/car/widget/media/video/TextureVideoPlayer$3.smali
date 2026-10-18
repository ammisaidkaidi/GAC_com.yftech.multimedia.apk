.class Lcom/yftech/car/widget/media/video/TextureVideoPlayer$3;
.super Ljava/lang/Object;
.source "TextureVideoPlayer.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


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

    .line 1284
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$3;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 5

    const-string v0, "TextureVideoPlayer"

    .line 1300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onAudioFocusChange: focusChange=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",isPlayError=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$3;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    .line 1301
    invoke-static {v2}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object v2

    iget-boolean v2, v2, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isPlayState=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$3;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    .line 1302
    invoke-static {v2}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object v2

    iget-boolean v2, v2, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isUserHandleError=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$3;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    iget-boolean v2, v2, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isUserHandleError:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mSurfaceHolder!=null "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$3;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    .line 1304
    invoke-static {v2}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$1600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Landroid/view/Surface;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",(!hasWindowFocusPlay || hasWindowFocus())=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$3;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    .line 1305
    invoke-static {v2}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$2400(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$3;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v4

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1300
    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$3;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object v0

    iget-object v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onAudioFocusChange(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "TextureVideoPlayer"

    const-string v1, " onAudioFocusChange: return app"

    .line 1308
    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    goto :goto_3

    :cond_3
    move v0, v4

    :goto_3
    const/16 v1, 0x32

    if-eq p1, v3, :cond_7

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_4

    .line 1335
    :pswitch_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$3;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$000(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Landroid/os/Handler;

    move-result-object p1

    const/16 v2, 0x38

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1336
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$3;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$000(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1338
    :cond_4
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$3;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$000(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1339
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$3;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p1

    iput-boolean v4, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    .line 1340
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$3;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$000(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1342
    :cond_5
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$3;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p1

    iput-boolean v4, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isAudioFocus:Z

    .line 1343
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$3;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p1

    iput-boolean v4, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayBeforeLossFocus:Z

    .line 1344
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$3;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->updateSaveTime()V

    if-nez v0, :cond_c

    .line 1346
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$3;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/yftech/car/widget/media/video/PlayerManager;->pause(Z)V

    .line 1348
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$3;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->abandonAudioFocus()V

    goto/16 :goto_4

    .line 1353
    :pswitch_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$3;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p1

    iput-boolean v3, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayBeforeLossFocus:Z

    .line 1354
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$3;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p1

    iput-boolean v4, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isAudioFocus:Z

    .line 1355
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$3;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p1

    iget-boolean p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    if-eqz p1, :cond_6

    .line 1356
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$3;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$000(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    .line 1359
    :cond_6
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$3;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->updateSaveTime()V

    if-nez v0, :cond_c

    .line 1361
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$3;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/yftech/car/widget/media/video/PlayerManager;->pause(Z)V

    goto/16 :goto_4

    .line 1313
    :cond_7
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$3;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p1

    iput-boolean v3, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isAudioFocus:Z

    .line 1314
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$3;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p1

    iget-boolean p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    if-eqz p1, :cond_9

    .line 1315
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$3;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    iget-boolean p1, p1, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isUserHandleError:Z

    if-nez p1, :cond_8

    .line 1316
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$3;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$000(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_8
    return-void

    :cond_9
    if-nez v0, :cond_b

    .line 1322
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$3;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p1

    iget-boolean p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayState:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$3;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$1600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$3;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$2400(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$3;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->hasWindowFocus()Z

    move-result p1

    if-eqz p1, :cond_b

    :cond_a
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$3;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isAvmShow()Z

    move-result p1

    if-nez p1, :cond_b

    .line 1323
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$3;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/yftech/car/widget/media/video/PlayerManager;->play(Z)V

    .line 1324
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$3;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1325
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$3;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/video/PlayerManager;->updatePlayback()V

    .line 1329
    :cond_b
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$3;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p1

    iget-boolean p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayBeforeLossFocus:Z

    if-eqz p1, :cond_c

    .line 1330
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$3;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p0, v3}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$2500(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;Z)Z

    :cond_c
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
