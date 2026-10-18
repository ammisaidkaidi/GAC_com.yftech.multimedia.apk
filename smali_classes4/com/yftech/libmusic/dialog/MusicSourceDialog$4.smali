.class Lcom/yftech/libmusic/dialog/MusicSourceDialog$4;
.super Ljava/lang/Object;
.source "MusicSourceDialog.java"

# interfaces
.implements Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback;


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

    .line 236
    iput-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$4;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionStatusChanged(Z)V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$4;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-static {v0}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->access$100(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    if-nez p1, :cond_1

    .line 246
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$4;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-static {p1}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->access$100(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->getTypeBySelection()Ljava/lang/String;

    move-result-object p1

    .line 247
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "MUSIC_SOURCE_OF_CARLIFE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 248
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$4;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-static {p1}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->access$100(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;

    move-result-object p1

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->setSelection(I)V

    .line 251
    :cond_1
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$4;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-static {p0}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->access$100(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;

    move-result-object p0

    const-string p1, "MUSIC_SOURCE_OF_CARLIFE"

    invoke-virtual {p0, p1, v0}, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->setEnable(Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public onMusicDurationChanged(I)V
    .locals 0

    return-void
.end method

.method public onMusicInformationChanged(Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;)V
    .locals 0

    return-void
.end method

.method public onMusicPlayStatusChanged(I)V
    .locals 0

    return-void
.end method

.method public onMusicProgressChanged(I)V
    .locals 0

    return-void
.end method
