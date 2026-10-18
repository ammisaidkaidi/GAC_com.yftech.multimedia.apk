.class Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;
.super Landroid/os/Handler;
.source "VideoPlayerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Landroid/os/Looper;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 167
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 169
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    const/16 p1, 0x8

    invoke-static {p0, p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$000(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;I)V

    goto/16 :goto_3

    .line 170
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    goto/16 :goto_3

    .line 175
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1e

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_8

    .line 177
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handler->RC_SPEED_OVERFLOW,speed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/yftech/car/widget/media/video/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/yftech/car/widget/media/video/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->updateSpeed(I)V

    :cond_2
    if-lt p1, v4, :cond_4

    .line 186
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    iput-boolean v3, p1, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isFullScreen:Z

    .line 196
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$200(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/media/common/ui/widget/TipsDialog;

    move-result-object p1

    if-nez p1, :cond_1e

    const-string p1, "Handler->RC_SPEED_OVERFLOW->show dialog"

    .line 197
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 198
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-virtual {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    sget v0, Lcom/yftech/libmedia/R$string;->video_play_speed_overflow_tips_extra:I

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 199
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/media/common/ui/widget/TipsDialog;->newInstance(Ljava/lang/String;)Lcom/media/common/ui/widget/TipsDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$202(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Lcom/media/common/ui/widget/TipsDialog;)Lcom/media/common/ui/widget/TipsDialog;

    .line 200
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$200(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/media/common/ui/widget/TipsDialog;

    move-result-object v0

    new-instance v1, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1$1;

    invoke-direct {v1, p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1$1;-><init>(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/media/common/ui/widget/TipsDialog;->setOnConfirmClickListener(Lcom/media/common/ui/widget/TipsDialog$OnConfirmClickListener;)V

    .line 209
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$200(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/media/common/ui/widget/TipsDialog;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$200(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/media/common/ui/widget/TipsDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/media/common/ui/widget/TipsDialog;->isVisible()Z

    move-result v0

    if-nez v0, :cond_3

    .line 210
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$200(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/media/common/ui/widget/TipsDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-virtual {v1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/media/common/ui/widget/TipsDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 212
    :cond_3
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p0, v4}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$302(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Z)Z

    goto/16 :goto_3

    :cond_4
    if-nez p1, :cond_1e

    .line 218
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$200(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/media/common/ui/widget/TipsDialog;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$200(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/media/common/ui/widget/TipsDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/media/common/ui/widget/TipsDialog;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 219
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$200(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/media/common/ui/widget/TipsDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/media/common/ui/widget/TipsDialog;->dismissAllowingStateLoss()V

    .line 220
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1, v2}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$202(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Lcom/media/common/ui/widget/TipsDialog;)Lcom/media/common/ui/widget/TipsDialog;

    goto :goto_0

    .line 221
    :cond_5
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$200(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/media/common/ui/widget/TipsDialog;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$300(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 223
    :try_start_0
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$200(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/media/common/ui/widget/TipsDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/media/common/ui/widget/TipsDialog;->dismissAllowingStateLoss()V

    .line 224
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1, v2}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$202(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Lcom/media/common/ui/widget/TipsDialog;)Lcom/media/common/ui/widget/TipsDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 226
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 234
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$400(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$300(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$500(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 235
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1, v3}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$402(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Z)Z

    .line 236
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/yftech/car/widget/media/video/VideoPlayer;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setPlayState(I)Z

    .line 239
    :cond_7
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p0, v3}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$302(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Z)Z

    goto/16 :goto_3

    .line 241
    :cond_8
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x28

    const/4 v5, 0x4

    if-ne v0, v1, :cond_9

    .line 244
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/yftech/car/widget/media/video/VideoPlayer;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 245
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/yftech/car/widget/media/video/VideoPlayer;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setPlayState(I)Z

    goto/16 :goto_3

    .line 246
    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x32

    const/4 v6, 0x2

    if-ne v0, v1, :cond_14

    .line 248
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 249
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Handler->RC_CARPLAY->isDisplaying="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isPagePlaying="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v5}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$600(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", speed="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", isSpeedOverFlow="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v5}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$300(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-nez v0, :cond_12

    .line 256
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$300(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-lt p1, v4, :cond_a

    return-void

    .line 261
    :cond_a
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$300(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-nez p1, :cond_c

    .line 264
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$200(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/media/common/ui/widget/TipsDialog;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$200(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/media/common/ui/widget/TipsDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/media/common/ui/widget/TipsDialog;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 265
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$200(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/media/common/ui/widget/TipsDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/media/common/ui/widget/TipsDialog;->dismissAllowingStateLoss()V

    .line 266
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0, v2}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$202(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Lcom/media/common/ui/widget/TipsDialog;)Lcom/media/common/ui/widget/TipsDialog;

    .line 269
    :cond_b
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0, v3}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$302(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Z)Z

    goto :goto_1

    .line 272
    :cond_c
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$300(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result v0

    if-nez v0, :cond_f

    if-lt p1, v4, :cond_f

    .line 275
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$200(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/media/common/ui/widget/TipsDialog;

    move-result-object p1

    if-nez p1, :cond_e

    .line 276
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-virtual {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    sget v0, Lcom/yftech/libmedia/R$string;->video_play_speed_overflow_tips_extra:I

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 278
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/media/common/ui/widget/TipsDialog;->newInstance(Ljava/lang/String;)Lcom/media/common/ui/widget/TipsDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$202(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Lcom/media/common/ui/widget/TipsDialog;)Lcom/media/common/ui/widget/TipsDialog;

    .line 279
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$200(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/media/common/ui/widget/TipsDialog;

    move-result-object v0

    new-instance v1, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1$2;

    invoke-direct {v1, p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1$2;-><init>(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/media/common/ui/widget/TipsDialog;->setOnConfirmClickListener(Lcom/media/common/ui/widget/TipsDialog$OnConfirmClickListener;)V

    .line 288
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$200(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/media/common/ui/widget/TipsDialog;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$200(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/media/common/ui/widget/TipsDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/media/common/ui/widget/TipsDialog;->isVisible()Z

    move-result v0

    if-nez v0, :cond_d

    .line 289
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$200(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/media/common/ui/widget/TipsDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-virtual {v1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/media/common/ui/widget/TipsDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 291
    :cond_d
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p0, v4}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$302(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Z)Z

    :cond_e
    return-void

    .line 297
    :cond_f
    :goto_1
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/yftech/car/widget/media/video/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 300
    :try_start_1
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-virtual {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;

    if-eqz v0, :cond_10

    .line 302
    iget-boolean v3, v0, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->isDisplaying:Z

    .line 304
    :cond_10
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/yftech/car/widget/media/video/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_11

    if-eqz v3, :cond_11

    .line 305
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/yftech/car/widget/media/video/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->updateSpeed(I)V

    .line 307
    :cond_11
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$500(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 308
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/yftech/car/widget/media/video/VideoPlayer;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setPlayState(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception p0

    .line 311
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 317
    :cond_12
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1, v3}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$702(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Z)Z

    .line 320
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/yftech/car/widget/media/video/VideoPlayer;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 323
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$800(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result p1

    if-nez p1, :cond_13

    .line 324
    invoke-static {}, Landroid/security/KeyStore;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object p1

    const-string v0, "TAG_VIDEO_ON_BACK_PRESS_BY_USER_BEFORE_SWITCH_PAGE"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/media/common/util/SharedPrefsUtil;->save(Ljava/lang/String;Ljava/lang/Object;)V

    .line 326
    :cond_13
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1, v4}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$402(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Z)Z

    .line 327
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/yftech/car/widget/media/video/VideoPlayer;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setPlayState(I)Z

    goto/16 :goto_3

    .line 331
    :cond_14
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_18

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RC_INPUT->isError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$900(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",  isScreenSaver:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    .line 333
    invoke-static {v1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1000(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",  isOpen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    .line 334
    invoke-static {v1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",  isBackCarToPause:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    .line 335
    invoke-static {v1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1200(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 332
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$900(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1000(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1200(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_2

    .line 343
    :cond_15
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v4, :cond_16

    .line 346
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/yftech/car/widget/media/video/VideoPlayer;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setPlayState(I)Z

    goto/16 :goto_3

    :cond_16
    if-ne p1, v6, :cond_1e

    .line 348
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1, v4}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1302(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Z)Z

    .line 349
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/yftech/car/widget/media/video/VideoPlayer;

    move-result-object p0

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setPlayState(I)Z

    goto/16 :goto_3

    :cond_17
    :goto_2
    return-void

    .line 351
    :cond_18
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x46

    if-ne v0, v1, :cond_1a

    .line 353
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v4, :cond_19

    move v3, v4

    .line 354
    :cond_19
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$900(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result p1

    if-nez p1, :cond_1e

    .line 355
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1400(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 357
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p0, v4}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1502(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Z)Z

    goto/16 :goto_3

    .line 359
    :cond_1a
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x50

    if-ne v0, v1, :cond_1c

    .line 361
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handler->RC_HICar->isPauseByHiCar:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1600(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_1e

    .line 373
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1, v3}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$702(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Z)Z

    .line 376
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/yftech/car/widget/media/video/VideoPlayer;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 379
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$800(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result p1

    if-nez p1, :cond_1b

    .line 380
    invoke-static {}, Landroid/security/KeyStore;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object p1

    const-string v0, "TAG_VIDEO_ON_BACK_PRESS_BY_USER_BEFORE_SWITCH_PAGE"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/media/common/util/SharedPrefsUtil;->save(Ljava/lang/String;Ljava/lang/Object;)V

    .line 383
    :cond_1b
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$600(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 384
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/yftech/car/widget/media/video/VideoPlayer;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setPlayState(I)Z

    .line 385
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p0, v4}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1602(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Z)Z

    goto :goto_3

    .line 390
    :cond_1c
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_1d

    .line 393
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/yftech/car/widget/media/video/VideoPlayer;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 394
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/yftech/car/widget/media/video/VideoPlayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->updateSaveTime()V

    goto :goto_3

    .line 396
    :cond_1d
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xb

    if-ne p1, v0, :cond_1e

    .line 397
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p0, v4}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1702(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;I)I

    :cond_1e
    :goto_3
    return-void
.end method
