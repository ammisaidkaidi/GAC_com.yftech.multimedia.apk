.class Lcom/yftech/multimedia/model/SubjectModel$3;
.super Ljava/lang/Object;
.source "SubjectModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/multimedia/model/SubjectModel;->getVideoFileSize(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnFileSizeLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/multimedia/model/SubjectModel;

.field final synthetic val$index:I

.field final synthetic val$listener:Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnFileSizeLoadListener;


# direct methods
.method constructor <init>(Lcom/yftech/multimedia/model/SubjectModel;ILcom/yftech/multimedia/model/interfaces/ISubjectModel$OnFileSizeLoadListener;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/yftech/multimedia/model/SubjectModel$3;->this$0:Lcom/yftech/multimedia/model/SubjectModel;

    iput p2, p0, Lcom/yftech/multimedia/model/SubjectModel$3;->val$index:I

    iput-object p3, p0, Lcom/yftech/multimedia/model/SubjectModel$3;->val$listener:Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnFileSizeLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 68
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v0

    iget v1, p0, Lcom/yftech/multimedia/model/SubjectModel$3;->val$index:I

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/data/CarMediaDataManager;->getVideoFileSize(I)I

    move-result v0

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoFileSize:videoFileSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 73
    iget-object p0, p0, Lcom/yftech/multimedia/model/SubjectModel$3;->val$listener:Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnFileSizeLoadListener;

    invoke-interface {p0, v0}, Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnFileSizeLoadListener;->onComplete(I)V

    return-void
.end method
