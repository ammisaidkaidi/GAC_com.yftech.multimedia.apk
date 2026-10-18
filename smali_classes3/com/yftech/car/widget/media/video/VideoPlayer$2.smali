.class Lcom/yftech/car/widget/media/video/VideoPlayer$2;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/video/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/video/VideoPlayer;)V
    .locals 0

    .line 1269
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 5

    const-string v0, "VideoPlayer"

    .line 1285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioFocusChange: focusChange=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",isPlayError=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    .line 1286
    invoke-static {v2}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/VideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object v2

    iget-boolean v2, v2, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isPlayState=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    .line 1287
    invoke-static {v2}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/VideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object v2

    iget-boolean v2, v2, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isUserHandleError=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    iget-boolean v2, v2, Lcom/yftech/car/widget/media/video/VideoPlayer;->isUserHandleError:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mSurfaceHolder!=null "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    .line 1289
    invoke-static {v2}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$1600(Lcom/yftech/car/widget/media/video/VideoPlayer;)Landroid/view/SurfaceHolder;

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

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    .line 1290
    invoke-static {v2}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$1700(Lcom/yftech/car/widget/media/video/VideoPlayer;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/video/VideoPlayer;->hasWindowFocus()Z

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

    .line 1285
    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/VideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object v0

    iget-object v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onAudioFocusChange(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "VideoPlayer"

    const-string v1, "onAudioFocusChange: return app"

    .line 1293
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

    .line 1320
    :pswitch_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$000(Lcom/yftech/car/widget/media/video/VideoPlayer;)Landroid/os/Handler;

    move-result-object p1

    const/16 v2, 0x38

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1321
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$000(Lcom/yftech/car/widget/media/video/VideoPlayer;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1323
    :cond_4
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$000(Lcom/yftech/car/widget/media/video/VideoPlayer;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1324
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/VideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p1

    iput-boolean v4, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    .line 1325
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$000(Lcom/yftech/car/widget/media/video/VideoPlayer;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1327
    :cond_5
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/VideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p1

    iput-boolean v4, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isAudioFocus:Z

    .line 1328
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/VideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p1

    iput-boolean v4, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayBeforeLossFocus:Z

    .line 1329
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->updateSaveTime()V

    if-nez v0, :cond_c

    .line 1331
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/VideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/yftech/car/widget/media/video/PlayerManager;->pause(Z)V

    .line 1333
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->abandonAudioFocus()V

    goto/16 :goto_4

    .line 1338
    :pswitch_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/VideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p1

    iput-boolean v3, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayBeforeLossFocus:Z

    .line 1339
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/VideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p1

    iput-boolean v4, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isAudioFocus:Z

    .line 1340
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/VideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p1

    iget-boolean p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    if-eqz p1, :cond_6

    .line 1341
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$000(Lcom/yftech/car/widget/media/video/VideoPlayer;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    .line 1344
    :cond_6
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->updateSaveTime()V

    if-nez v0, :cond_c

    .line 1346
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/VideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/yftech/car/widget/media/video/PlayerManager;->pause(Z)V

    goto/16 :goto_4

    .line 1298
    :cond_7
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/VideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p1

    iput-boolean v3, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isAudioFocus:Z

    .line 1299
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/VideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p1

    iget-boolean p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    if-eqz p1, :cond_9

    .line 1300
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    iget-boolean p1, p1, Lcom/yftech/car/widget/media/video/VideoPlayer;->isUserHandleError:Z

    if-nez p1, :cond_8

    .line 1301
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$000(Lcom/yftech/car/widget/media/video/VideoPlayer;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_8
    return-void

    :cond_9
    if-nez v0, :cond_b

    .line 1307
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/VideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p1

    iget-boolean p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayState:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$1600(Lcom/yftech/car/widget/media/video/VideoPlayer;)Landroid/view/SurfaceHolder;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$1700(Lcom/yftech/car/widget/media/video/VideoPlayer;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->hasWindowFocus()Z

    move-result p1

    if-eqz p1, :cond_b

    :cond_a
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->isAvmShow()Z

    move-result p1

    if-nez p1, :cond_b

    .line 1308
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/VideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/yftech/car/widget/media/video/PlayerManager;->play(Z)V

    .line 1309
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1310
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/VideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/video/PlayerManager;->updatePlayback()V

    .line 1314
    :cond_b
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/VideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p1

    iget-boolean p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayBeforeLossFocus:Z

    if-eqz p1, :cond_c

    .line 1315
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$2;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p0, v3}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$1800(Lcom/yftech/car/widget/media/video/VideoPlayer;Z)Z

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
