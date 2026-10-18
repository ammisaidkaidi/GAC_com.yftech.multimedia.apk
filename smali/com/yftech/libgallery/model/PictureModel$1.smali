.class Lcom/yftech/libgallery/model/PictureModel$1;
.super Ljava/lang/Object;
.source "PictureModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libgallery/model/PictureModel;->getGallery(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libgallery/model/interfaces/IPictureModel$OnGalleryLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libgallery/model/PictureModel;

.field final synthetic val$index:I

.field final synthetic val$listener:Lcom/yftech/libgallery/model/interfaces/IPictureModel$OnGalleryLoadListener;


# direct methods
.method constructor <init>(Lcom/yftech/libgallery/model/PictureModel;ILcom/yftech/libgallery/model/interfaces/IPictureModel$OnGalleryLoadListener;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/yftech/libgallery/model/PictureModel$1;->this$0:Lcom/yftech/libgallery/model/PictureModel;

    iput p2, p0, Lcom/yftech/libgallery/model/PictureModel$1;->val$index:I

    iput-object p3, p0, Lcom/yftech/libgallery/model/PictureModel$1;->val$listener:Lcom/yftech/libgallery/model/interfaces/IPictureModel$OnGalleryLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 50
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v0

    iget v1, p0, Lcom/yftech/libgallery/model/PictureModel$1;->val$index:I

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/data/CarMediaDataManager;->getFilePhoto(I)Ljava/util/List;

    move-result-object v0

    .line 55
    new-instance v1, Ljava/util/TreeMap;

    new-instance v2, Lcom/yftech/libgallery/model/PictureModel$1$1;

    invoke-direct {v2, p0}, Lcom/yftech/libgallery/model/PictureModel$1$1;-><init>(Lcom/yftech/libgallery/model/PictureModel$1;)V

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

    .line 65
    invoke-virtual {v2}, Lcom/yftech/car/media/data/entity/MediaFile;->getCurrentTime()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 67
    new-instance v4, Lcom/yftech/libgallery/bean/MediaFileItem;

    invoke-direct {v4, v2}, Lcom/yftech/libgallery/bean/MediaFileItem;-><init>(Lcom/yftech/car/media/data/entity/MediaFile;)V

    .line 68
    invoke-virtual {v1, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_0

    .line 70
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 71
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-virtual {v1, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 74
    :cond_0
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    invoke-static {}, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->getInstance()Lcom/yftech/libgallery/utils/MyPhotoDataManager;

    move-result-object v2

    iget v3, p0, Lcom/yftech/libgallery/model/PictureModel$1;->val$index:I

    invoke-virtual {v2, v3}, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->resetData(I)V

    .line 81
    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 84
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_3

    .line 85
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 87
    new-instance v4, Lcom/yftech/libgallery/bean/MediaFileForDateItem;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/libgallery/bean/MediaFileItem;

    invoke-virtual {v3}, Lcom/yftech/libgallery/bean/MediaFileItem;->getLastModified()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/yftech/libgallery/bean/MediaFileForDateItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    new-instance v4, Lcom/yftech/libgallery/model/PictureModel$1$2;

    invoke-direct {v4, p0}, Lcom/yftech/libgallery/model/PictureModel$1$2;-><init>(Lcom/yftech/libgallery/model/PictureModel$1;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 101
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

    check-cast v3, Lcom/yftech/libgallery/bean/MediaFileItem;

    .line 102
    new-instance v4, Lcom/yftech/libgallery/bean/MediaFileForDataItem;

    invoke-direct {v4, v3}, Lcom/yftech/libgallery/bean/MediaFileForDataItem;-><init>(Lcom/yftech/car/media/data/entity/MediaFile;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-static {}, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->getInstance()Lcom/yftech/libgallery/utils/MyPhotoDataManager;

    move-result-object v4

    iget v5, p0, Lcom/yftech/libgallery/model/PictureModel$1;->val$index:I

    invoke-virtual {v4, v5, v3}, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->setNewData(ILcom/yftech/car/media/data/entity/MediaFile;)V

    goto :goto_1

    .line 109
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGallery:index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/libgallery/model/PictureModel$1;->val$index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",DisplayFilePhotoSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->getInstance()Lcom/yftech/libgallery/utils/MyPhotoDataManager;

    move-result-object v2

    iget v3, p0, Lcom/yftech/libgallery/model/PictureModel$1;->val$index:I

    invoke-virtual {v2, v3}, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->getData(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 112
    iget-object p0, p0, Lcom/yftech/libgallery/model/PictureModel$1;->val$listener:Lcom/yftech/libgallery/model/interfaces/IPictureModel$OnGalleryLoadListener;

    invoke-interface {p0, v0}, Lcom/yftech/libgallery/model/interfaces/IPictureModel$OnGalleryLoadListener;->onComplete(Ljava/util/List;)V

    return-void
.end method
