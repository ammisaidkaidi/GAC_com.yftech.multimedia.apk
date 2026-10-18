.class Lcom/yftech/multimedia/presenter/SubjectPresenter$2$1;
.super Ljava/lang/Object;
.source "SubjectPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/multimedia/presenter/SubjectPresenter$2;->onComplete(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/multimedia/presenter/SubjectPresenter$2;

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/yftech/multimedia/presenter/SubjectPresenter$2;I)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/yftech/multimedia/presenter/SubjectPresenter$2$1;->this$1:Lcom/yftech/multimedia/presenter/SubjectPresenter$2;

    iput p2, p0, Lcom/yftech/multimedia/presenter/SubjectPresenter$2$1;->val$result:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/yftech/multimedia/presenter/SubjectPresenter$2$1;->this$1:Lcom/yftech/multimedia/presenter/SubjectPresenter$2;

    iget-object v0, v0, Lcom/yftech/multimedia/presenter/SubjectPresenter$2;->this$0:Lcom/yftech/multimedia/presenter/SubjectPresenter;

    invoke-virtual {v0}, Lcom/yftech/multimedia/presenter/SubjectPresenter;->isViewAttach()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/yftech/multimedia/presenter/SubjectPresenter$2$1;->this$1:Lcom/yftech/multimedia/presenter/SubjectPresenter$2;

    iget-object v0, v0, Lcom/yftech/multimedia/presenter/SubjectPresenter$2;->this$0:Lcom/yftech/multimedia/presenter/SubjectPresenter;

    invoke-virtual {v0}, Lcom/yftech/multimedia/presenter/SubjectPresenter;->getView()Lcom/yftech/libmvpmodule/mvp/IMvpView;

    move-result-object v0

    check-cast v0, Lcom/yftech/multimedia/view/ISubjectFragmentView;

    iget p0, p0, Lcom/yftech/multimedia/presenter/SubjectPresenter$2$1;->val$result:I

    invoke-interface {v0, p0}, Lcom/yftech/multimedia/view/ISubjectFragmentView;->displayPhotoFileExist(I)V

    :cond_0
    return-void
.end method
