.class Lcom/yftech/multimedia/model/SubjectModel$1;
.super Ljava/lang/Object;
.source "SubjectModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/multimedia/model/SubjectModel;->getVideoFileExist(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnFileExistLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/multimedia/model/SubjectModel;

.field final synthetic val$listener:Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnFileExistLoadListener;


# direct methods
.method constructor <init>(Lcom/yftech/multimedia/model/SubjectModel;Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnFileExistLoadListener;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/yftech/multimedia/model/SubjectModel$1;->this$0:Lcom/yftech/multimedia/model/SubjectModel;

    iput-object p2, p0, Lcom/yftech/multimedia/model/SubjectModel$1;->val$listener:Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnFileExistLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 34
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/data/CarMediaDataManager;->getVideoFileExists()I

    move-result v0

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoFileExist="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 39
    iget-object p0, p0, Lcom/yftech/multimedia/model/SubjectModel$1;->val$listener:Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnFileExistLoadListener;

    invoke-interface {p0, v0}, Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnFileExistLoadListener;->onComplete(I)V

    return-void
.end method
