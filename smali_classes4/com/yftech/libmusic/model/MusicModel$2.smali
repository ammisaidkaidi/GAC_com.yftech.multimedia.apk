.class Lcom/yftech/libmusic/model/MusicModel$2;
.super Ljava/lang/Object;
.source "MusicModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmusic/model/MusicModel;->searchMusic(Ljava/lang/String;ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicSearchResultLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/model/MusicModel;

.field final synthetic val$index:I

.field final synthetic val$keyWord:Ljava/lang/String;

.field final synthetic val$listener:Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicSearchResultLoadListener;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/model/MusicModel;Ljava/lang/String;ILcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicSearchResultLoadListener;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/yftech/libmusic/model/MusicModel$2;->this$0:Lcom/yftech/libmusic/model/MusicModel;

    iput-object p2, p0, Lcom/yftech/libmusic/model/MusicModel$2;->val$keyWord:Ljava/lang/String;

    iput p3, p0, Lcom/yftech/libmusic/model/MusicModel$2;->val$index:I

    iput-object p4, p0, Lcom/yftech/libmusic/model/MusicModel$2;->val$listener:Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicSearchResultLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 196
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libmusic/model/MusicModel$2;->val$keyWord:Ljava/lang/String;

    iget v2, p0, Lcom/yftech/libmusic/model/MusicModel$2;->val$index:I

    const/16 v3, 0x231

    invoke-virtual {v0, v1, v3, v2}, Lcom/yftech/car/media/data/CarMediaDataManager;->findSearchFile(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 201
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 202
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/media/data/entity/MediaFile;

    .line 204
    new-instance v3, Lcom/yftech/libmusic/bean/MediaFileItem;

    invoke-direct {v3, v2}, Lcom/yftech/libmusic/bean/MediaFileItem;-><init>(Lcom/yftech/car/media/data/entity/MediaFile;)V

    const/4 v2, 0x0

    .line 206
    invoke-virtual {v3, v2}, Lcom/yftech/libmusic/bean/MediaFileItem;->setDir(Z)V

    .line 208
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 212
    :cond_0
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/music/CarMusicManager;->getPlayMusic()Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object v0

    .line 214
    iget-object v2, p0, Lcom/yftech/libmusic/model/MusicModel$2;->val$listener:Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicSearchResultLoadListener;

    if-eqz v2, :cond_1

    .line 215
    iget-object p0, p0, Lcom/yftech/libmusic/model/MusicModel$2;->val$listener:Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicSearchResultLoadListener;

    invoke-interface {p0, v0, v1}, Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicSearchResultLoadListener;->onComplete(Lcom/yftech/car/media/data/entity/MediaFile;Ljava/util/List;)V

    :cond_1
    return-void
.end method
