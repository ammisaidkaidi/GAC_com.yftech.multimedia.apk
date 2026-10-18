.class Lcom/yftech/libmusic/ui/MusicSearchResultFragment$4;
.super Lcom/yftech/car/media/music/CarMusicManager$CarMusicControlCallback;
.source "MusicSearchResultFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmusic/ui/MusicSearchResultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/ui/MusicSearchResultFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/ui/MusicSearchResultFragment;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment$4;->this$0:Lcom/yftech/libmusic/ui/MusicSearchResultFragment;

    invoke-direct {p0}, Lcom/yftech/car/media/music/CarMusicManager$CarMusicControlCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangePlayMusic(Lcom/yftech/car/media/data/entity/MediaFile;)V
    .locals 2

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChangePlayMusic:musicFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment$4;->this$0:Lcom/yftech/libmusic/ui/MusicSearchResultFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->access$000(Lcom/yftech/libmusic/ui/MusicSearchResultFragment;)Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment$4;->this$0:Lcom/yftech/libmusic/ui/MusicSearchResultFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->access$100(Lcom/yftech/libmusic/ui/MusicSearchResultFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment$4;->this$0:Lcom/yftech/libmusic/ui/MusicSearchResultFragment;

    invoke-static {p0}, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->access$000(Lcom/yftech/libmusic/ui/MusicSearchResultFragment;)Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->setPlaying(Ljava/lang/String;Z)V

    goto :goto_0

    .line 178
    :cond_0
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment$4;->this$0:Lcom/yftech/libmusic/ui/MusicSearchResultFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->access$102(Lcom/yftech/libmusic/ui/MusicSearchResultFragment;Z)Z

    :goto_0
    return-void
.end method

.method public onChangePlaying(Z)V
    .locals 2

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChangePlaying:isPlaying="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 187
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment$4;->this$0:Lcom/yftech/libmusic/ui/MusicSearchResultFragment;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->access$000(Lcom/yftech/libmusic/ui/MusicSearchResultFragment;)Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 189
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment$4;->this$0:Lcom/yftech/libmusic/ui/MusicSearchResultFragment;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->access$000(Lcom/yftech/libmusic/ui/MusicSearchResultFragment;)Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment$4;->this$0:Lcom/yftech/libmusic/ui/MusicSearchResultFragment;

    invoke-static {p0}, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->access$000(Lcom/yftech/libmusic/ui/MusicSearchResultFragment;)Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->getPlayingPath()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->setPlaying(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
