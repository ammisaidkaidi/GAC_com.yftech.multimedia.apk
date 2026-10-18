.class Lcom/yftech/car/widget/media/music/button/MusicButton$4;
.super Ljava/lang/Object;
.source "MusicButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/music/button/MusicButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/music/button/MusicButton;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/music/button/MusicButton;)V
    .locals 0

    .line 560
    iput-object p1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton$4;->this$0:Lcom/yftech/car/widget/media/music/button/MusicButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 563
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton$4;->this$0:Lcom/yftech/car/widget/media/music/button/MusicButton;

    const/4 v0, 0x7

    invoke-static {p0, v0}, Lcom/yftech/car/widget/media/music/button/MusicButton;->access$1002(Lcom/yftech/car/widget/media/music/button/MusicButton;I)I

    .line 564
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/manager/MusicManager;->fastForward(I)Z

    return-void
.end method
