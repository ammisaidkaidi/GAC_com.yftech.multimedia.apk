.class Lcom/yftech/multimedia/presenter/SubjectPresenter$6$1;
.super Ljava/lang/Object;
.source "SubjectPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/multimedia/presenter/SubjectPresenter$6;->onComplete(Lcom/yftech/car/media/data/entity/MediaFile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/multimedia/presenter/SubjectPresenter$6;

.field final synthetic val$frame:Lcom/yftech/car/media/data/entity/MediaFile;


# direct methods
.method constructor <init>(Lcom/yftech/multimedia/presenter/SubjectPresenter$6;Lcom/yftech/car/media/data/entity/MediaFile;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/yftech/multimedia/presenter/SubjectPresenter$6$1;->this$1:Lcom/yftech/multimedia/presenter/SubjectPresenter$6;

    iput-object p2, p0, Lcom/yftech/multimedia/presenter/SubjectPresenter$6$1;->val$frame:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/yftech/multimedia/presenter/SubjectPresenter$6$1;->this$1:Lcom/yftech/multimedia/presenter/SubjectPresenter$6;

    iget-object v0, v0, Lcom/yftech/multimedia/presenter/SubjectPresenter$6;->this$0:Lcom/yftech/multimedia/presenter/SubjectPresenter;

    invoke-virtual {v0}, Lcom/yftech/multimedia/presenter/SubjectPresenter;->isViewAttach()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/yftech/multimedia/presenter/SubjectPresenter$6$1;->this$1:Lcom/yftech/multimedia/presenter/SubjectPresenter$6;

    iget-object v0, v0, Lcom/yftech/multimedia/presenter/SubjectPresenter$6;->this$0:Lcom/yftech/multimedia/presenter/SubjectPresenter;

    invoke-virtual {v0}, Lcom/yftech/multimedia/presenter/SubjectPresenter;->getView()Lcom/yftech/libmvpmodule/mvp/IMvpView;

    move-result-object v0

    check-cast v0, Lcom/yftech/multimedia/view/ISubjectFragmentView;

    iget-object p0, p0, Lcom/yftech/multimedia/presenter/SubjectPresenter$6$1;->val$frame:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-interface {v0, p0}, Lcom/yftech/multimedia/view/ISubjectFragmentView;->displayPhotoFileFrame(Lcom/yftech/car/media/data/entity/MediaFile;)V

    :cond_0
    return-void
.end method
