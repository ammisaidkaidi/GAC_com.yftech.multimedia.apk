.class Lcom/yftech/libmusic/ui/MusicPlayerFragment$1;
.super Landroid/os/Handler;
.source "MusicPlayerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmusic/ui/MusicPlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/ui/MusicPlayerFragment;Landroid/os/Looper;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$1;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 146
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    .line 148
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$1;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p1, v1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$002(Lcom/yftech/libmusic/ui/MusicPlayerFragment;Z)Z

    .line 149
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$1;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$100(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 150
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$1;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$100(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 152
    :cond_0
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$1;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$200(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 153
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$1;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$200(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    :cond_1
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$1;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$300(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 156
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$1;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$300(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 158
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x14

    if-ne v0, v2, :cond_3

    .line 161
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$1;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$400(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/ImageView;

    move-result-object p1

    sget v0, Lcom/yftech/libmusic/R$drawable;->music_main_icon_playing:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 162
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$1;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$400(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 163
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$1;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$500(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/SeekBar;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 164
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$1;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$200(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$1;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$300(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 166
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x1e

    if-ne v0, v2, :cond_4

    .line 168
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$1;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$600(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->setVisibility(I)V

    goto :goto_0

    .line 169
    :cond_4
    iget p0, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x50

    if-ne p0, v0, :cond_5

    .line 171
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 173
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RC_HICar->isShow="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method
