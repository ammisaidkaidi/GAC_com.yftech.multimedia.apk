.class Lcom/yftech/libmusic/ui/MusicMainFragment$2;
.super Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;
.source "MusicMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmusic/ui/MusicMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/ui/MusicMainFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/ui/MusicMainFragment;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicMainFragment$2;->this$0:Lcom/yftech/libmusic/ui/MusicMainFragment;

    invoke-direct {p0}, Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangedMediaSource(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 206
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicMainFragment$2;->this$0:Lcom/yftech/libmusic/ui/MusicMainFragment;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicMainFragment;->access$100(Lcom/yftech/libmusic/ui/MusicMainFragment;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 207
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicMainFragment$2;->this$0:Lcom/yftech/libmusic/ui/MusicMainFragment;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicMainFragment;->access$100(Lcom/yftech/libmusic/ui/MusicMainFragment;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 210
    :cond_0
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicMainFragment$2;->this$0:Lcom/yftech/libmusic/ui/MusicMainFragment;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicMainFragment;->access$100(Lcom/yftech/libmusic/ui/MusicMainFragment;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 211
    iput-object p3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 214
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicMainFragment$2;->this$0:Lcom/yftech/libmusic/ui/MusicMainFragment;

    invoke-static {p0}, Lcom/yftech/libmusic/ui/MusicMainFragment;->access$100(Lcom/yftech/libmusic/ui/MusicMainFragment;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 p2, 0x12c

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
