.class Lcom/yftech/libgallery/model/PictureModel$2;
.super Ljava/lang/Object;
.source "PictureModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libgallery/model/PictureModel;->deleteImages(Ljava/util/List;Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libgallery/model/interfaces/IPictureModel$OnImageDeleteLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libgallery/model/PictureModel;

.field final synthetic val$data:Ljava/util/List;

.field final synthetic val$listener:Lcom/yftech/libgallery/model/interfaces/IPictureModel$OnImageDeleteLoadListener;


# direct methods
.method constructor <init>(Lcom/yftech/libgallery/model/PictureModel;Ljava/util/List;Lcom/yftech/libgallery/model/interfaces/IPictureModel$OnImageDeleteLoadListener;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/yftech/libgallery/model/PictureModel$2;->this$0:Lcom/yftech/libgallery/model/PictureModel;

    iput-object p2, p0, Lcom/yftech/libgallery/model/PictureModel$2;->val$data:Ljava/util/List;

    iput-object p3, p0, Lcom/yftech/libgallery/model/PictureModel$2;->val$listener:Lcom/yftech/libgallery/model/interfaces/IPictureModel$OnImageDeleteLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    iget-object v1, p0, Lcom/yftech/libgallery/model/PictureModel$2;->val$data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/media/common/entity/QuickMultipleEntity;

    .line 155
    instance-of v3, v2, Lcom/yftech/libgallery/bean/MediaFileForDataItem;

    if-eqz v3, :cond_0

    .line 157
    check-cast v2, Lcom/yftech/libgallery/bean/MediaFileForDataItem;

    .line 158
    new-instance v3, Lcom/yftech/car/media/data/entity/MediaFile;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcom/yftech/car/media/data/entity/MediaFile;-><init>(I)V

    .line 159
    invoke-virtual {v2}, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/yftech/car/media/data/entity/MediaFile;->setData(Ljava/lang/String;)V

    .line 160
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "deleteMediaFileList"

    .line 165
    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yftech/car/media/data/CarMediaDataManager;->deleteMediaFileList(Ljava/util/List;)V

    .line 170
    :cond_2
    iget-object p0, p0, Lcom/yftech/libgallery/model/PictureModel$2;->val$listener:Lcom/yftech/libgallery/model/interfaces/IPictureModel$OnImageDeleteLoadListener;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/yftech/libgallery/model/interfaces/IPictureModel$OnImageDeleteLoadListener;->onComplete(Z)V

    return-void
.end method
