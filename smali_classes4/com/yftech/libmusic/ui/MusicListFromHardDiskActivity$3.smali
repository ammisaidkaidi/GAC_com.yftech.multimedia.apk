.class Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity$3;
.super Lcom/yftech/car/media/music/CarMusicManager$CarMusicControlCallback;
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

    .line 210
    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity$3;->this$0:Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;

    invoke-direct {p0}, Lcom/yftech/car/media/music/CarMusicManager$CarMusicControlCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangePlayMusic(Lcom/yftech/car/media/data/entity/MediaFile;)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity$3;->this$0:Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->access$000(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;)Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity$3;->this$0:Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->access$200(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity$3;->this$0:Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;

    invoke-static {p0}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->access$000(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;)Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->setPlaying(Ljava/lang/String;Z)V

    goto :goto_0

    .line 216
    :cond_0
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity$3;->this$0:Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->access$202(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;Z)Z

    :goto_0
    return-void
.end method

.method public onChangePlaying(Z)V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity$3;->this$0:Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->access$000(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;)Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity$3;->this$0:Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->access$000(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;)Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->setPlayStatus(Z)V

    .line 225
    :cond_0
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity$3;->this$0:Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;

    invoke-static {p0}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->access$300(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method
