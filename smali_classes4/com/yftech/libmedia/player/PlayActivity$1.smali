.class Lcom/yftech/libmedia/player/PlayActivity$1;
.super Landroid/os/Handler;
.source "PlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmedia/player/PlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmedia/player/PlayActivity;


# direct methods
.method constructor <init>(Lcom/yftech/libmedia/player/PlayActivity;Landroid/os/Looper;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$1;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 117
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 119
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity$1;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    const/16 p1, 0x8

    invoke-static {p0, p1}, Lcom/yftech/libmedia/player/PlayActivity;->access$000(Lcom/yftech/libmedia/player/PlayActivity;I)V

    goto/16 :goto_0

    .line 120
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    .line 122
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    .line 124
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity$1;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-virtual {v0}, Lcom/yftech/libmedia/player/PlayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load([B)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity$1;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p0}, Lcom/yftech/libmedia/player/PlayActivity;->access$100(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto/16 :goto_0

    .line 125
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_6

    .line 127
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 130
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity$1;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {v0}, Lcom/yftech/libmedia/player/PlayActivity;->access$200(Lcom/yftech/libmedia/player/PlayActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-lt p1, v0, :cond_4

    .line 133
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$1;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-virtual {p1}, Lcom/yftech/libmedia/player/PlayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object p1

    const-string v0, "TAG_VIDEO_VECHICLE_OVERFLOW_HOLDING"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/media/common/util/SharedPrefsUtil;->save(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$1;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p1}, Lcom/yftech/libmedia/player/PlayActivity;->access$300(Lcom/yftech/libmedia/player/PlayActivity;)Lcom/yftech/car/media/video/VideoPlayer;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 137
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$1;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p1}, Lcom/yftech/libmedia/player/PlayActivity;->access$300(Lcom/yftech/libmedia/player/PlayActivity;)Lcom/yftech/car/media/video/VideoPlayer;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/yftech/car/media/video/VideoPlayer;->setPlayState(I)Z

    .line 139
    :cond_2
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$1;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p1}, Lcom/yftech/libmedia/player/PlayActivity;->access$400(Lcom/yftech/libmedia/player/PlayActivity;)Lcom/media/common/ui/widget/TipsDialog;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$1;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p1}, Lcom/yftech/libmedia/player/PlayActivity;->access$400(Lcom/yftech/libmedia/player/PlayActivity;)Lcom/media/common/ui/widget/TipsDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/media/common/ui/widget/TipsDialog;->isVisible()Z

    move-result p1

    if-nez p1, :cond_6

    .line 140
    :cond_3
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$1;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    sget v0, Lcom/yftech/libmedia/R$string;->video_play_speed_overflow_tips:I

    invoke-virtual {p1, v0}, Lcom/yftech/libmedia/player/PlayActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 141
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity$1;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p1}, Lcom/media/common/ui/widget/TipsDialog;->newInstance(Ljava/lang/String;)Lcom/media/common/ui/widget/TipsDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/libmedia/player/PlayActivity;->access$402(Lcom/yftech/libmedia/player/PlayActivity;Lcom/media/common/ui/widget/TipsDialog;)Lcom/media/common/ui/widget/TipsDialog;

    .line 142
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity$1;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {v0}, Lcom/yftech/libmedia/player/PlayActivity;->access$400(Lcom/yftech/libmedia/player/PlayActivity;)Lcom/media/common/ui/widget/TipsDialog;

    move-result-object v0

    new-instance v1, Lcom/yftech/libmedia/player/PlayActivity$1$1;

    invoke-direct {v1, p0}, Lcom/yftech/libmedia/player/PlayActivity$1$1;-><init>(Lcom/yftech/libmedia/player/PlayActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/media/common/ui/widget/TipsDialog;->setOnConfirmClickListener(Lcom/media/common/ui/widget/TipsDialog$OnConfirmClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity$1;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {v0}, Lcom/yftech/libmedia/player/PlayActivity;->access$400(Lcom/yftech/libmedia/player/PlayActivity;)Lcom/media/common/ui/widget/TipsDialog;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity$1;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-virtual {p0}, Lcom/yftech/libmedia/player/PlayActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/media/common/ui/widget/TipsDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_4
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity$1;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {v0}, Lcom/yftech/libmedia/player/PlayActivity;->access$500(Lcom/yftech/libmedia/player/PlayActivity;)I

    move-result v0

    if-ne p1, v0, :cond_6

    .line 156
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$1;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p1}, Lcom/yftech/libmedia/player/PlayActivity;->access$400(Lcom/yftech/libmedia/player/PlayActivity;)Lcom/media/common/ui/widget/TipsDialog;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$1;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p1}, Lcom/yftech/libmedia/player/PlayActivity;->access$400(Lcom/yftech/libmedia/player/PlayActivity;)Lcom/media/common/ui/widget/TipsDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/media/common/ui/widget/TipsDialog;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 157
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$1;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p1}, Lcom/yftech/libmedia/player/PlayActivity;->access$400(Lcom/yftech/libmedia/player/PlayActivity;)Lcom/media/common/ui/widget/TipsDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/media/common/ui/widget/TipsDialog;->dismiss()V

    .line 161
    :cond_5
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$1;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p1}, Lcom/yftech/libmedia/player/PlayActivity;->access$300(Lcom/yftech/libmedia/player/PlayActivity;)Lcom/yftech/car/media/video/VideoPlayer;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 162
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity$1;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p0}, Lcom/yftech/libmedia/player/PlayActivity;->access$300(Lcom/yftech/libmedia/player/PlayActivity;)Lcom/yftech/car/media/video/VideoPlayer;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/yftech/car/media/video/VideoPlayer;->setPlayState(I)Z

    :cond_6
    :goto_0
    return-void
.end method
