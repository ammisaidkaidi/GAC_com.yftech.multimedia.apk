.class Lcom/yftech/libmusic/model/MusicModel$1;
.super Ljava/lang/Object;
.source "MusicModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmusic/model/MusicModel;->getMusicFiles(Ljava/lang/String;Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicFilesLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/model/MusicModel;

.field final synthetic val$listener:Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicFilesLoadListener;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/model/MusicModel;Ljava/lang/String;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicFilesLoadListener;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/yftech/libmusic/model/MusicModel$1;->this$0:Lcom/yftech/libmusic/model/MusicModel;

    iput-object p2, p0, Lcom/yftech/libmusic/model/MusicModel$1;->val$type:Ljava/lang/String;

    iput-object p3, p0, Lcom/yftech/libmusic/model/MusicModel$1;->val$listener:Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicFilesLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/yftech/libmusic/model/MusicModel$1;->val$type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yftech/libmusic/model/MusicModel$1;->val$type:Ljava/lang/String;

    const-string v1, "MUSIC_SOURCE_OF_USB1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/yftech/libmusic/model/MusicModel$1;->val$type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yftech/libmusic/model/MusicModel$1;->val$type:Ljava/lang/String;

    const-string v1, "MUSIC_SOURCE_OF_USB2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    if-lez v0, :cond_2

    .line 66
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yftech/car/media/data/CarMediaDataManager;->getFileMusic(I)Ljava/util/List;

    move-result-object v0

    .line 68
    iget-object p0, p0, Lcom/yftech/libmusic/model/MusicModel$1;->val$listener:Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicFilesLoadListener;

    invoke-interface {p0, v0}, Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicFilesLoadListener;->onComplete(Ljava/util/List;)V

    goto :goto_1

    .line 71
    :cond_2
    iget-object p0, p0, Lcom/yftech/libmusic/model/MusicModel$1;->val$listener:Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicFilesLoadListener;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicFilesLoadListener;->onComplete(Ljava/util/List;)V

    :goto_1
    return-void
.end method
