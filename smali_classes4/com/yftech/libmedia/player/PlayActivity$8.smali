.class Lcom/yftech/libmedia/player/PlayActivity$8;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;


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
.method constructor <init>(Lcom/yftech/libmedia/player/PlayActivity;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$8;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCarplayConnectChanged(I)V
    .locals 0

    return-void
.end method

.method public onCarplayMusicID3Changed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCarplayPlayingChanged(Z)V
    .locals 0

    return-void
.end method

.method public onCarplayProgressChanged(I)V
    .locals 0

    return-void
.end method

.method public onCarplayTotalDurationChanged(I)V
    .locals 0

    return-void
.end method

.method public onResourceStateChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 465
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity$8;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-virtual {p0}, Lcom/yftech/libmedia/player/PlayActivity;->onResume()V

    goto :goto_0

    .line 468
    :cond_0
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity$8;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-virtual {p0}, Lcom/yftech/libmedia/player/PlayActivity;->onPause()V

    :goto_0
    return-void
.end method
