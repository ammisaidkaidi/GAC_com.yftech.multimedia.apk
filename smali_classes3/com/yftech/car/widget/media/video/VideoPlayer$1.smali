.class Lcom/yftech/car/widget/media/video/VideoPlayer$1;
.super Landroid/os/Handler;
.source "VideoPlayer.java"


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
.method constructor <init>(Lcom/yftech/car/widget/media/video/VideoPlayer;Landroid/os/Looper;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$1;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 298
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 299
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 314
    :pswitch_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$1;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$508(Lcom/yftech/car/widget/media/video/VideoPlayer;)I

    .line 315
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$1;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo p1, "\u64ad\u653e\u8d85\u65f6\uff01"

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 336
    :pswitch_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$1;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$1100(Lcom/yftech/car/widget/media/video/VideoPlayer;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 337
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 339
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$1;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$1100(Lcom/yftech/car/widget/media/video/VideoPlayer;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 341
    :cond_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$1;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$1200(Lcom/yftech/car/widget/media/video/VideoPlayer;)J

    move-result-wide v0

    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$1;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$1300(Lcom/yftech/car/widget/media/video/VideoPlayer;)J

    move-result-wide v3

    cmp-long p1, v0, v3

    if-eqz p1, :cond_1

    .line 342
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$1;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$1;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$1300(Lcom/yftech/car/widget/media/video/VideoPlayer;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$1400(Lcom/yftech/car/widget/media/video/VideoPlayer;J)V

    goto/16 :goto_1

    .line 344
    :cond_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$1;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p0, v2}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$1502(Lcom/yftech/car/widget/media/video/VideoPlayer;Z)Z

    goto/16 :goto_1

    .line 332
    :pswitch_3
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$1;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setPlayProgress(I)V

    .line 333
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$1;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/VideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p0

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onProgress(I)V

    goto/16 :goto_1

    .line 327
    :pswitch_4
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$1;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/VideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPrepared:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$1;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/VideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    if-nez v0, :cond_3

    .line 328
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$1;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$1;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {v1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$800(Lcom/yftech/car/widget/media/video/VideoPlayer;)I

    move-result v1

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$1;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$900(Lcom/yftech/car/widget/media/video/VideoPlayer;)I

    move-result p0

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, p0, v2, p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$1000(Lcom/yftech/car/widget/media/video/VideoPlayer;IIII)V

    goto/16 :goto_1

    .line 322
    :pswitch_5
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$1;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/VideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p1

    iput-boolean v1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isCreatedPlayer:Z

    .line 323
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$1;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$700(Lcom/yftech/car/widget/media/video/VideoPlayer;)Landroid/view/SurfaceView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 324
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$1;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/VideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/PlayerManager;->prepareAsync()V

    goto :goto_1

    .line 318
    :pswitch_6
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$1;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/VideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p1

    iget-object p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    invoke-virtual {p1, v2}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onDoubleClick(Z)V

    .line 319
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$1;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-virtual {p0, v2}, Lcom/yftech/car/widget/media/video/VideoPlayer;->playSoundEffect(I)V

    goto :goto_1

    .line 305
    :pswitch_7
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$1;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$208(Lcom/yftech/car/widget/media/video/VideoPlayer;)I

    .line 306
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$1;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$200(Lcom/yftech/car/widget/media/video/VideoPlayer;)I

    move-result p1

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$1;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$300(Lcom/yftech/car/widget/media/video/VideoPlayer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 307
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$1;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->stopPlayer()V

    goto :goto_0

    .line 309
    :cond_2
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$1;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p1, v1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$400(Lcom/yftech/car/widget/media/video/VideoPlayer;Z)V

    .line 311
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setPlayErrorException: playErrorCount=="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$1;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$200(Lcom/yftech/car/widget/media/video/VideoPlayer;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", list.size()=="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$1;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$300(Lcom/yftech/car/widget/media/video/VideoPlayer;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 301
    :pswitch_8
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$1;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$000(Lcom/yftech/car/widget/media/video/VideoPlayer;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x30

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 302
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$1;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$100(Lcom/yftech/car/widget/media/video/VideoPlayer;)V

    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
