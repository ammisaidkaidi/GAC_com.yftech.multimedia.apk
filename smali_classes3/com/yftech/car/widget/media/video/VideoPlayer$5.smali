.class Lcom/yftech/car/widget/media/video/VideoPlayer$5;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/video/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isCancel:Z

.field final synthetic this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/video/VideoPlayer;)V
    .locals 0

    .line 2197
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$5;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2199
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$5;->isCancel:Z

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    if-eqz p3, :cond_3

    .line 2204
    iget-boolean p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$5;->isCancel:Z

    if-eqz p1, :cond_0

    return-void

    .line 2207
    :cond_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$5;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$1100(Lcom/yftech/car/widget/media/video/VideoPlayer;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2208
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$5;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    int-to-long v0, p2

    invoke-static {p1, v0, v1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$1302(Lcom/yftech/car/widget/media/video/VideoPlayer;J)J

    .line 2210
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$5;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$1500(Lcom/yftech/car/widget/media/video/VideoPlayer;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2211
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$5;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    const/4 p3, 0x1

    invoke-static {p1, p3}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$1502(Lcom/yftech/car/widget/media/video/VideoPlayer;Z)Z

    .line 2212
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$5;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p1, v0, v1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$1400(Lcom/yftech/car/widget/media/video/VideoPlayer;J)V

    .line 2215
    :cond_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$5;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$2000(Lcom/yftech/car/widget/media/video/VideoPlayer;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2216
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$5;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setPlayProgress(I)V

    .line 2218
    :cond_2
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$5;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/VideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p1

    iget-object p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$5;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/VideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p1

    iget-boolean p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    if-nez p1, :cond_3

    .line 2219
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$5;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/VideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p0

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    invoke-virtual {p0, p2}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onProgress(I)V

    :cond_3
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .line 2226
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$5;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/VideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isSeekBar:Z

    .line 2227
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$5;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$2100(Lcom/yftech/car/widget/media/video/VideoPlayer;)Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$5;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$2100(Lcom/yftech/car/widget/media/video/VideoPlayer;)Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->isAnimationLoading()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$5;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->isOnTouchClick()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2228
    :cond_1
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$5;->isCancel:Z

    return-void

    .line 2231
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$5;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$2200(Lcom/yftech/car/widget/media/video/VideoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2232
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$5;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/VideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/yftech/car/widget/media/video/PlayerManager;->pause(Z)V

    .line 2234
    :cond_3
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$5;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/VideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object v0

    iget-object v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$5;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/VideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    if-nez v0, :cond_4

    .line 2235
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$5;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/VideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

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

    .line 2241
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$5;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/VideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isSeekBar:Z

    .line 2242
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$5;->isCancel:Z

    if-eqz v0, :cond_0

    .line 2243
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$5;->isCancel:Z

    return-void

    .line 2247
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$5;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setPlayProgress(I)V

    .line 2249
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$5;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$2300(Lcom/yftech/car/widget/media/video/VideoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2250
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$5;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/VideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/video/PlayerManager;->play(Z)V

    .line 2253
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$5;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/VideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object v0

    iget-object v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$5;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/VideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    if-nez v0, :cond_2

    .line 2254
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$5;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/VideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object p0

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onStartTrackingTouch(IZ)V

    :cond_2
    return-void
.end method
