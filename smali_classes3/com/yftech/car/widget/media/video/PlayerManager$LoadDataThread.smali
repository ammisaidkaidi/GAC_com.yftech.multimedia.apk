.class Lcom/yftech/car/widget/media/video/PlayerManager$LoadDataThread;
.super Ljava/lang/Thread;
.source "PlayerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/video/PlayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadDataThread"
.end annotation


# instance fields
.field private isDataSource:Z

.field private isLoad:Z

.field final synthetic this$0:Lcom/yftech/car/widget/media/video/PlayerManager;


# direct methods
.method private constructor <init>(Lcom/yftech/car/widget/media/video/PlayerManager;)V
    .locals 0

    .line 1130
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager$LoadDataThread;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    .line 1131
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager$LoadDataThread;->isLoad:Z

    const/4 p1, 0x0

    .line 1132
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager$LoadDataThread;->isDataSource:Z

    return-void
.end method

.method static synthetic access$400(Lcom/yftech/car/widget/media/video/PlayerManager$LoadDataThread;)Z
    .locals 0

    .line 1130
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager$LoadDataThread;->isDataSource:Z

    return p0
.end method

.method public static synthetic lambda$run$0(Lcom/yftech/car/widget/media/video/PlayerManager$LoadDataThread;)V
    .locals 4

    .line 1145
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager$LoadDataThread;->isLoad:Z

    if-eqz v0, :cond_2

    .line 1146
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager$LoadDataThread;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->access$000(Lcom/yftech/car/widget/media/video/PlayerManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x38

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1147
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager$LoadDataThread;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->access$000(Lcom/yftech/car/widget/media/video/PlayerManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1148
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager$LoadDataThread;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->access$000(Lcom/yftech/car/widget/media/video/PlayerManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x34

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1149
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager$LoadDataThread;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayState:Z

    .line 1150
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager$LoadDataThread;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->isRelease()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 1151
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager$LoadDataThread;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v3, p0, Lcom/yftech/car/widget/media/video/PlayerManager$LoadDataThread;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean v3, v3, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    xor-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lcom/yftech/car/widget/media/video/PlayerManager;->release(Z)V

    .line 1153
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager$LoadDataThread;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput-boolean v1, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPreparation:Z

    .line 1154
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager$LoadDataThread;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput-boolean v2, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    .line 1155
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager$LoadDataThread;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput-boolean v2, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPrepared:Z

    .line 1156
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager$LoadDataThread;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onPlayException(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1157
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager$LoadDataThread;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/PlayerManager;->access$100(Lcom/yftech/car/widget/media/video/PlayerManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object p0

    iput-boolean v2, p0, Lcom/yftech/car/widget/media/video/BaseVideo;->isUserHandleError:Z

    return-void

    .line 1161
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager$LoadDataThread;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->access$100(Lcom/yftech/car/widget/media/video/PlayerManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object v0

    iput-boolean v1, v0, Lcom/yftech/car/widget/media/video/BaseVideo;->isUserHandleError:Z

    .line 1163
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager$LoadDataThread;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p0, v3}, Lcom/yftech/car/widget/media/video/PlayerManager;->setPlayErrorException(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "PlayerManager"

    .line 1136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start: setDataSource path=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/PlayerManager$LoadDataThread;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v2, v2, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v2}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1137
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager$LoadDataThread;->isDataSource:Z

    const/4 v0, 0x0

    .line 1139
    :try_start_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/PlayerManager$LoadDataThread;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-static {v1}, Lcom/yftech/car/widget/media/video/PlayerManager;->access$500(Lcom/yftech/car/widget/media/video/PlayerManager;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/PlayerManager$LoadDataThread;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v2, v2, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v2}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1170
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager$LoadDataThread;->isDataSource:Z

    const-string v1, "PlayerManager"

    .line 1171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start: prepareAsync isCreatedPlayer=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/yftech/car/widget/media/video/PlayerManager$LoadDataThread;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean v3, v3, Lcom/yftech/car/widget/media/video/PlayerManager;->isCreatedPlayer:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    iget-boolean v1, p0, Lcom/yftech/car/widget/media/video/PlayerManager$LoadDataThread;->isLoad:Z

    if-eqz v1, :cond_3

    .line 1173
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/PlayerManager$LoadDataThread;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean v1, v1, Lcom/yftech/car/widget/media/video/PlayerManager;->isCreatedPlayer:Z

    if-eqz v1, :cond_0

    .line 1174
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager$LoadDataThread;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/PlayerManager;->prepareAsync()V

    goto :goto_0

    .line 1176
    :cond_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/PlayerManager$LoadDataThread;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-static {v1}, Lcom/yftech/car/widget/media/video/PlayerManager;->access$100(Lcom/yftech/car/widget/media/video/PlayerManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/video/BaseVideo;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 1178
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/PlayerManager$LoadDataThread;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-static {v1}, Lcom/yftech/car/widget/media/video/PlayerManager;->access$100(Lcom/yftech/car/widget/media/video/PlayerManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/video/BaseVideo;->isSurfaceVisibility(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1179
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager$LoadDataThread;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->access$100(Lcom/yftech/car/widget/media/video/PlayerManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/video/BaseVideo;->setSurfaceVisibility(I)V

    .line 1180
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager$LoadDataThread;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->access$000(Lcom/yftech/car/widget/media/video/PlayerManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x34

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1181
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager$LoadDataThread;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/PlayerManager;->access$000(Lcom/yftech/car/widget/media/video/PlayerManager;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    const-string v1, "PlayerManager"

    const-string/jumbo v2, "start: mSurfaceView no show"

    .line 1183
    invoke-static {v1, v2}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager$LoadDataThread;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/PlayerManager;->access$100(Lcom/yftech/car/widget/media/video/PlayerManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/video/BaseVideo;->setSurfaceVisibility(I)V

    goto :goto_0

    :cond_2
    const-string v0, "PlayerManager"

    const-string/jumbo v1, "start: current VideoPlayer no show"

    .line 1187
    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager$LoadDataThread;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/PlayerManager;->prepareAsync()V

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .line 1141
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1142
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager$LoadDataThread;->isDataSource:Z

    .line 1143
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager$LoadDataThread;->isLoad:Z

    if-eqz v0, :cond_4

    .line 1144
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager$LoadDataThread;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->access$000(Lcom/yftech/car/widget/media/video/PlayerManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/yftech/car/widget/media/video/-$$Lambda$PlayerManager$LoadDataThread$PannSR6bGXfnCmwIgtbHaGATx_w;

    invoke-direct {v1, p0}, Lcom/yftech/car/widget/media/video/-$$Lambda$PlayerManager$LoadDataThread$PannSR6bGXfnCmwIgtbHaGATx_w;-><init>(Lcom/yftech/car/widget/media/video/PlayerManager$LoadDataThread;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method
