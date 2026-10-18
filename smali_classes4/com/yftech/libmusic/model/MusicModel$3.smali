.class Lcom/yftech/libmusic/model/MusicModel$3;
.super Ljava/lang/Object;
.source "MusicModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmusic/model/MusicModel;->getLyricFromFile(Lcom/yftech/car/media/data/entity/MediaFile;Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicLyricLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/model/MusicModel;

.field final synthetic val$listener:Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicLyricLoadListener;

.field final synthetic val$musicFile:Lcom/yftech/car/media/data/entity/MediaFile;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/model/MusicModel;Lcom/yftech/car/media/data/entity/MediaFile;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicLyricLoadListener;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/yftech/libmusic/model/MusicModel$3;->this$0:Lcom/yftech/libmusic/model/MusicModel;

    iput-object p2, p0, Lcom/yftech/libmusic/model/MusicModel$3;->val$musicFile:Lcom/yftech/car/media/data/entity/MediaFile;

    iput-object p3, p0, Lcom/yftech/libmusic/model/MusicModel$3;->val$listener:Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicLyricLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 236
    iget-object v0, p0, Lcom/yftech/libmusic/model/MusicModel$3;->val$musicFile:Lcom/yftech/car/media/data/entity/MediaFile;

    if-eqz v0, :cond_3

    .line 239
    iget-object v0, p0, Lcom/yftech/libmusic/model/MusicModel$3;->val$musicFile:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "getLyricFromFile:path="

    .line 241
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/yftech/libmusic/model/MusicModel$3;->val$listener:Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicLyricLoadListener;

    if-eqz v0, :cond_3

    .line 244
    iget-object p0, p0, Lcom/yftech/libmusic/model/MusicModel$3;->val$listener:Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicLyricLoadListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v0}, Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicLyricLoadListener;->onComplete(Ljava/util/List;)V

    goto/16 :goto_1

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/yftech/libmusic/model/MusicModel$3;->val$musicFile:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libmusic/model/MusicModel$3;->val$musicFile:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 248
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/yftech/libmusic/model/MusicModel$3;->val$musicFile:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v3}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 251
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 253
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 257
    :goto_0
    iget-object v2, p0, Lcom/yftech/libmusic/model/MusicModel$3;->this$0:Lcom/yftech/libmusic/model/MusicModel;

    invoke-static {v2, v0, v1}, Lcom/yftech/libmusic/model/MusicModel;->access$000(Lcom/yftech/libmusic/model/MusicModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLyricFromFile:path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 261
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 262
    invoke-static {v0}, Lcom/yftech/libmusic/utils/MediaUtils;->read(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lcom/yftech/libmusic/model/MusicModel$3;->val$listener:Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicLyricLoadListener;

    if-eqz v1, :cond_3

    .line 265
    iget-object p0, p0, Lcom/yftech/libmusic/model/MusicModel$3;->val$listener:Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicLyricLoadListener;

    invoke-interface {p0, v0}, Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicLyricLoadListener;->onComplete(Ljava/util/List;)V

    goto :goto_1

    .line 268
    :cond_2
    iget-object v0, p0, Lcom/yftech/libmusic/model/MusicModel$3;->val$listener:Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicLyricLoadListener;

    if-eqz v0, :cond_3

    .line 269
    iget-object p0, p0, Lcom/yftech/libmusic/model/MusicModel$3;->val$listener:Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicLyricLoadListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v0}, Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicLyricLoadListener;->onComplete(Ljava/util/List;)V

    :cond_3
    :goto_1
    return-void
.end method
