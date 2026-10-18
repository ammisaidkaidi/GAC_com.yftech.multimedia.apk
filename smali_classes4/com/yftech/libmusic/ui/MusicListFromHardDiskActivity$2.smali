.class Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "MusicListFromHardDiskActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity$2;->this$0:Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 110
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "test"

    .line 111
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "value"

    const/4 v0, 0x0

    .line 113
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 114
    iget-object p2, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity$2;->this$0:Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;

    invoke-static {p2}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->access$100(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;)Landroid/os/Handler;

    move-result-object p2

    const/16 v0, 0x14

    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 115
    iput p1, p2, Landroid/os/Message;->arg1:I

    .line 116
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity$2;->this$0:Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;

    invoke-static {p0}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->access$100(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
