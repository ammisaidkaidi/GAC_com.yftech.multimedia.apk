.class Lcom/yftech/libmusic/dialog/MusicSourceDialog$5;
.super Ljava/lang/Object;
.source "MusicSourceDialog.java"

# interfaces
.implements Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmusic/dialog/MusicSourceDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$5;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCarplayConnectChanged(I)V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$5;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-static {v0}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->access$100(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    packed-switch p1, :pswitch_data_0

    move v1, v0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x1

    :goto_0
    if-eq p1, v0, :cond_0

    .line 299
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$5;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-static {p1}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->access$100(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->getTypeBySelection()Ljava/lang/String;

    move-result-object p1

    .line 300
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MUSIC_SOURCE_OF_CARPLAY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 301
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$5;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-static {p1}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->access$100(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->setSelection(I)V

    .line 304
    :cond_0
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$5;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-static {p0}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->access$100(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;

    move-result-object p0

    const-string p1, "MUSIC_SOURCE_OF_CARPLAY"

    invoke-virtual {p0, p1, v1}, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->setEnable(Ljava/lang/String;I)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    return-void
.end method
