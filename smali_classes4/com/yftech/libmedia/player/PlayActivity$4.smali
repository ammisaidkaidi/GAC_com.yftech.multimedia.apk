.class Lcom/yftech/libmedia/player/PlayActivity$4;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmedia/player/PlayActivity;->onResume()V
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

    .line 333
    iput-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$4;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 336
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity$4;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p0}, Lcom/yftech/libmedia/player/PlayActivity;->access$300(Lcom/yftech/libmedia/player/PlayActivity;)Lcom/yftech/car/media/video/VideoPlayer;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yftech/car/media/video/VideoPlayer;->setPlayState(I)Z

    return-void
.end method
