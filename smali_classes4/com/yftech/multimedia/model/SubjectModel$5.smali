.class Lcom/yftech/multimedia/model/SubjectModel$5;
.super Ljava/lang/Object;
.source "SubjectModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/multimedia/model/SubjectModel;->getVideoFileFrame(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnVideoFrameLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/multimedia/model/SubjectModel;

.field final synthetic val$index:I

.field final synthetic val$listener:Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnVideoFrameLoadListener;


# direct methods
.method constructor <init>(Lcom/yftech/multimedia/model/SubjectModel;ILcom/yftech/multimedia/model/interfaces/ISubjectModel$OnVideoFrameLoadListener;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/yftech/multimedia/model/SubjectModel$5;->this$0:Lcom/yftech/multimedia/model/SubjectModel;

    iput p2, p0, Lcom/yftech/multimedia/model/SubjectModel$5;->val$index:I

    iput-object p3, p0, Lcom/yftech/multimedia/model/SubjectModel$5;->val$listener:Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnVideoFrameLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 104
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v0

    iget v1, p0, Lcom/yftech/multimedia/model/SubjectModel$5;->val$index:I

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/data/CarMediaDataManager;->getFileVideo(I)Ljava/util/List;

    move-result-object v0

    .line 106
    new-instance v1, Lcom/yftech/multimedia/model/SubjectModel$5$1;

    invoke-direct {v1, p0}, Lcom/yftech/multimedia/model/SubjectModel$5$1;-><init>(Lcom/yftech/multimedia/model/SubjectModel$5;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 117
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/media/data/entity/MediaFile;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x1388

    const/16 v3, 0x152

    const/16 v4, 0xc8

    invoke-static {v0, v1, v2, v3, v4}, Lcom/yftech/car/media/video/util/VideoBitmapUtil;->loadVideo(Ljava/lang/String;JII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 123
    :cond_1
    iget-object p0, p0, Lcom/yftech/multimedia/model/SubjectModel$5;->val$listener:Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnVideoFrameLoadListener;

    invoke-interface {p0, v1}, Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnVideoFrameLoadListener;->onComplete(Landroid/graphics/Bitmap;)V

    return-void
.end method
