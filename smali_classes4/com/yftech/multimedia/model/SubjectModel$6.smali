.class Lcom/yftech/multimedia/model/SubjectModel$6;
.super Ljava/lang/Object;
.source "SubjectModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/multimedia/model/SubjectModel;->getPhotoFileFrame(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnPhotoFrameLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/multimedia/model/SubjectModel;

.field final synthetic val$index:I

.field final synthetic val$listener:Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnPhotoFrameLoadListener;


# direct methods
.method constructor <init>(Lcom/yftech/multimedia/model/SubjectModel;ILcom/yftech/multimedia/model/interfaces/ISubjectModel$OnPhotoFrameLoadListener;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/yftech/multimedia/model/SubjectModel$6;->this$0:Lcom/yftech/multimedia/model/SubjectModel;

    iput p2, p0, Lcom/yftech/multimedia/model/SubjectModel$6;->val$index:I

    iput-object p3, p0, Lcom/yftech/multimedia/model/SubjectModel$6;->val$listener:Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnPhotoFrameLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 136
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v0

    iget v1, p0, Lcom/yftech/multimedia/model/SubjectModel$6;->val$index:I

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/data/CarMediaDataManager;->getFilePhoto(I)Ljava/util/List;

    move-result-object v0

    .line 138
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    new-instance v1, Lcom/yftech/multimedia/model/SubjectModel$6$1;

    invoke-direct {v1, p0}, Lcom/yftech/multimedia/model/SubjectModel$6$1;-><init>(Lcom/yftech/multimedia/model/SubjectModel$6;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 149
    :cond_0
    invoke-static {}, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->getInstance()Lcom/yftech/libgallery/utils/MyPhotoDataManager;

    move-result-object v1

    iget v2, p0, Lcom/yftech/multimedia/model/SubjectModel$6;->val$index:I

    invoke-virtual {v1, v2, v0}, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->setNewData(ILjava/util/List;)V

    .line 152
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/media/data/entity/MediaFile;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 154
    :goto_0
    iget-object p0, p0, Lcom/yftech/multimedia/model/SubjectModel$6;->val$listener:Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnPhotoFrameLoadListener;

    invoke-interface {p0, v0}, Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnPhotoFrameLoadListener;->onComplete(Lcom/yftech/car/media/data/entity/MediaFile;)V

    return-void
.end method
