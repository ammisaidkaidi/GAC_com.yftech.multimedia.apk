.class Lcom/yftech/car/widget/media/video/TextureVideoPlayer$6;
.super Ljava/lang/Object;
.source "TextureVideoPlayer.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/video/TextureVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isCancel:Z

.field final synthetic this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)V
    .locals 0

    .line 2130
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$6;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2132
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$6;->isCancel:Z

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    if-eqz p3, :cond_3

    .line 2137
    iget-boolean p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$6;->isCancel:Z

    if-eqz p1, :cond_0

    return-void

    .line 2140
    :cond_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$6;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$1100(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2141
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$6;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    int-to-long v0, p2

    invoke-static {p1, v0, v1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$1302(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;J)J

    .line 2143
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$6;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$1500(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2144
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$6;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    const/4 p3, 0x1

    invoke-static {p1, p3}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$1502(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;Z)Z

    .line 2145
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$6;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p1, v0, v1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$1400(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;J)V

    .line 2148
    :cond_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$6;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$2700(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2149
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$6;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->setPlayProgress(I)V

    .line 2151
    :cond_2
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$6;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p1

    iget-object p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$6;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p1

    iget-boolean p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    if-nez p1, :cond_3

    .line 2152
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$6;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p0

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    invoke-virtual {p0, p2}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onProgress(I)V

    :cond_3
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .line 2159
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$6;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isSeekBar:Z

    .line 2160
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$6;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$2800(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$6;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$2800(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->isAnimationLoading()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$6;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isOnTouchClick()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2161
    :cond_1
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$6;->isCancel:Z

    return-void

    .line 2164
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$6;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$2900(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2165
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$6;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/yftech/car/widget/media/video/PlayerManager;->pause(Z)V

    .line 2167
    :cond_3
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$6;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object v0

    iget-object v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$6;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    if-nez v0, :cond_4

    .line 2168
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$6;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p0

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onStartTrackingTouch(IZ)V

    :cond_4
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .line 2174
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$6;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isSeekBar:Z

    .line 2175
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$6;->isCancel:Z

    if-eqz v0, :cond_0

    .line 2176
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$6;->isCancel:Z

    return-void

    .line 2180
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$6;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->setPlayProgress(I)V

    .line 2182
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$6;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$3000(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2183
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$6;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/video/PlayerManager;->play(Z)V

    .line 2186
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$6;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object v0

    iget-object v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$6;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    if-nez v0, :cond_2

    .line 2187
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$6;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p0

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onStartTrackingTouch(IZ)V

    :cond_2
    return-void
.end method
