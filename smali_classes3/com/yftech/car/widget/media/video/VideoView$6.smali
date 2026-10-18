.class Lcom/yftech/car/widget/media/video/VideoView$6;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/video/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/video/VideoView;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/video/VideoView;)V
    .locals 0

    .line 580
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView$6;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    const-string p1, "VideoView"

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView$6;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/yftech/car/widget/media/video/VideoView;->access$302(Lcom/yftech/car/widget/media/video/VideoView;I)I

    .line 584
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView$6;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {p1, v0}, Lcom/yftech/car/widget/media/video/VideoView;->access$1302(Lcom/yftech/car/widget/media/video/VideoView;I)I

    .line 585
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView$6;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoView;->access$900(Lcom/yftech/car/widget/media/video/VideoView;)Landroid/widget/MediaController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 586
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView$6;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoView;->access$900(Lcom/yftech/car/widget/media/video/VideoView;)Landroid/widget/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/MediaController;->hide()V

    .line 590
    :cond_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView$6;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoView;->access$1800(Lcom/yftech/car/widget/media/video/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 591
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView$6;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoView;->access$1800(Lcom/yftech/car/widget/media/video/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object p1

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoView$6;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {v1}, Lcom/yftech/car/widget/media/video/VideoView;->access$800(Lcom/yftech/car/widget/media/video/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {p1, v1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 601
    :cond_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView$6;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/video/VideoView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 602
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView$6;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/video/VideoView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    const/16 p1, 0xc8

    if-ne p2, p1, :cond_2

    const p1, 0x1040015

    goto :goto_0

    :cond_2
    const p1, 0x1040011

    .line 611
    :goto_0
    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object p3, p0, Lcom/yftech/car/widget/media/video/VideoView$6;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-virtual {p3}, Lcom/yftech/car/widget/media/video/VideoView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 612
    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x1040010

    new-instance p3, Lcom/yftech/car/widget/media/video/VideoView$6$1;

    invoke-direct {p3, p0}, Lcom/yftech/car/widget/media/video/VideoView$6$1;-><init>(Lcom/yftech/car/widget/media/video/VideoView$6;)V

    .line 613
    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const/4 p1, 0x0

    .line 624
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 625
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_3
    return v0
.end method
