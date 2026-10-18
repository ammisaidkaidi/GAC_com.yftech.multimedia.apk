.class Lcom/yftech/libmedia/player/model/VideoModel$1;
.super Ljava/lang/Object;
.source "VideoModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmedia/player/model/VideoModel;->getVideo(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmedia/player/model/interfaces/IVideoModel$OnVideoLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmedia/player/model/VideoModel;

.field final synthetic val$index:I

.field final synthetic val$listener:Lcom/yftech/libmedia/player/model/interfaces/IVideoModel$OnVideoLoadListener;


# direct methods
.method constructor <init>(Lcom/yftech/libmedia/player/model/VideoModel;ILcom/yftech/libmedia/player/model/interfaces/IVideoModel$OnVideoLoadListener;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/yftech/libmedia/player/model/VideoModel$1;->this$0:Lcom/yftech/libmedia/player/model/VideoModel;

    iput p2, p0, Lcom/yftech/libmedia/player/model/VideoModel$1;->val$index:I

    iput-object p3, p0, Lcom/yftech/libmedia/player/model/VideoModel$1;->val$listener:Lcom/yftech/libmedia/player/model/interfaces/IVideoModel$OnVideoLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 50
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v0

    iget v1, p0, Lcom/yftech/libmedia/player/model/VideoModel$1;->val$index:I

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/data/CarMediaDataManager;->getFileVideo(I)Ljava/util/List;

    move-result-object v0

    .line 55
    new-instance v1, Ljava/util/TreeMap;

    new-instance v2, Lcom/yftech/libmedia/player/model/VideoModel$1$1;

    invoke-direct {v2, p0}, Lcom/yftech/libmedia/player/model/VideoModel$1$1;-><init>(Lcom/yftech/libmedia/player/model/VideoModel$1;)V

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    if-eqz v0, :cond_1

    .line 62
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 63
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/media/data/entity/MediaFile;

    .line 64
    invoke-virtual {v2}, Lcom/yftech/car/media/data/entity/MediaFile;->getCurrentTime()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 66
    new-instance v4, Lcom/media/common/entity/MediaFileInfo;

    invoke-direct {v4, v2}, Lcom/media/common/entity/MediaFileInfo;-><init>(Lcom/yftech/car/media/data/entity/MediaFile;)V

    .line 73
    invoke-virtual {v1, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_0

    .line 75
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 76
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {v1, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 79
    :cond_0
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 83
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    invoke-static {}, Lcom/yftech/libmedia/player/utils/MyVideoDataManager;->getInstance()Lcom/yftech/libmedia/player/utils/MyVideoDataManager;

    move-result-object v2

    iget v3, p0, Lcom/yftech/libmedia/player/model/VideoModel$1;->val$index:I

    invoke-virtual {v2, v3}, Lcom/yftech/libmedia/player/utils/MyVideoDataManager;->resetData(I)V

    .line 86
    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 89
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 90
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 92
    new-instance v5, Lcom/yftech/libmedia/player/bean/MediaFileForDateItem;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/media/common/entity/MediaFileInfo;

    invoke-virtual {v3}, Lcom/media/common/entity/MediaFileInfo;->getLastModified()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Lcom/yftech/libmedia/player/bean/MediaFileForDateItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    new-instance v5, Lcom/yftech/libmedia/player/model/VideoModel$1$2;

    invoke-direct {v5, p0}, Lcom/yftech/libmedia/player/model/VideoModel$1$2;-><init>(Lcom/yftech/libmedia/player/model/VideoModel$1;)V

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 105
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/media/common/entity/MediaFileInfo;

    .line 107
    new-instance v5, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;

    invoke-direct {v5, v3}, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;-><init>(Lcom/media/common/entity/MediaFileInfo;)V

    .line 109
    invoke-virtual {v5}, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5}, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->getFileName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    .line 110
    invoke-virtual {v5}, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->getFileName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->setFileName(Ljava/lang/String;)V

    .line 111
    :cond_4
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-static {}, Lcom/yftech/libmedia/player/utils/MyVideoDataManager;->getInstance()Lcom/yftech/libmedia/player/utils/MyVideoDataManager;

    move-result-object v5

    iget v6, p0, Lcom/yftech/libmedia/player/model/VideoModel$1;->val$index:I

    invoke-virtual {v5, v6, v3}, Lcom/yftech/libmedia/player/utils/MyVideoDataManager;->setNewData(ILcom/yftech/car/media/data/entity/MediaFile;)V

    goto :goto_1

    .line 118
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideo:index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/libmedia/player/model/VideoModel$1;->val$index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",DisplayFileVideoSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yftech/libmedia/player/utils/MyVideoDataManager;->getInstance()Lcom/yftech/libmedia/player/utils/MyVideoDataManager;

    move-result-object v2

    iget v3, p0, Lcom/yftech/libmedia/player/model/VideoModel$1;->val$index:I

    invoke-virtual {v2, v3}, Lcom/yftech/libmedia/player/utils/MyVideoDataManager;->getData(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 121
    iget-object p0, p0, Lcom/yftech/libmedia/player/model/VideoModel$1;->val$listener:Lcom/yftech/libmedia/player/model/interfaces/IVideoModel$OnVideoLoadListener;

    invoke-interface {p0, v0}, Lcom/yftech/libmedia/player/model/interfaces/IVideoModel$OnVideoLoadListener;->onComplete(Ljava/util/List;)V

    return-void
.end method
