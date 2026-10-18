.class Lcom/yftech/libmedia/player/PlayActivity$9;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmedia/player/PlayActivity;->initW()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmedia/player/PlayActivity;


# direct methods
.method constructor <init>(Lcom/yftech/libmedia/player/PlayActivity;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$9;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 512
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$9;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p1}, Lcom/yftech/libmedia/player/PlayActivity;->access$1000(Lcom/yftech/libmedia/player/PlayActivity;)Z

    move-result p1

    const/16 v0, 0xa

    if-nez p1, :cond_1

    .line 514
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$9;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/yftech/libmedia/player/PlayActivity;->access$000(Lcom/yftech/libmedia/player/PlayActivity;I)V

    .line 516
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$9;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p1}, Lcom/yftech/libmedia/player/PlayActivity;->access$900(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 517
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$9;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p1}, Lcom/yftech/libmedia/player/PlayActivity;->access$900(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 520
    :cond_0
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity$9;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p0}, Lcom/yftech/libmedia/player/PlayActivity;->access$900(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 523
    :cond_1
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$9;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    const/16 v1, 0x8

    invoke-static {p1, v1}, Lcom/yftech/libmedia/player/PlayActivity;->access$000(Lcom/yftech/libmedia/player/PlayActivity;I)V

    .line 525
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$9;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p1}, Lcom/yftech/libmedia/player/PlayActivity;->access$900(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 526
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity$9;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p0}, Lcom/yftech/libmedia/player/PlayActivity;->access$900(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    :goto_0
    return-void
.end method
