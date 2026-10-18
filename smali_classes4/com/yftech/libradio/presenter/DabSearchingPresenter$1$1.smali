.class Lcom/yftech/libradio/presenter/DabSearchingPresenter$1$1;
.super Ljava/lang/Object;
.source "DabSearchingPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/presenter/DabSearchingPresenter$1;->onComplete(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/libradio/presenter/DabSearchingPresenter$1;

.field final synthetic val$isSuccessful:Z


# direct methods
.method constructor <init>(Lcom/yftech/libradio/presenter/DabSearchingPresenter$1;Z)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/yftech/libradio/presenter/DabSearchingPresenter$1$1;->this$1:Lcom/yftech/libradio/presenter/DabSearchingPresenter$1;

    iput-boolean p2, p0, Lcom/yftech/libradio/presenter/DabSearchingPresenter$1$1;->val$isSuccessful:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/yftech/libradio/presenter/DabSearchingPresenter$1$1;->this$1:Lcom/yftech/libradio/presenter/DabSearchingPresenter$1;

    iget-object v0, v0, Lcom/yftech/libradio/presenter/DabSearchingPresenter$1;->this$0:Lcom/yftech/libradio/presenter/DabSearchingPresenter;

    invoke-virtual {v0}, Lcom/yftech/libradio/presenter/DabSearchingPresenter;->isViewAttach()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/yftech/libradio/presenter/DabSearchingPresenter$1$1;->this$1:Lcom/yftech/libradio/presenter/DabSearchingPresenter$1;

    iget-object v0, v0, Lcom/yftech/libradio/presenter/DabSearchingPresenter$1;->this$0:Lcom/yftech/libradio/presenter/DabSearchingPresenter;

    invoke-virtual {v0}, Lcom/yftech/libradio/presenter/DabSearchingPresenter;->getView()Lcom/yftech/libmvpmodule/mvp/IMvpView;

    move-result-object v0

    check-cast v0, Lcom/yftech/libradio/view/IDabSearchingDialogView;

    iget-boolean p0, p0, Lcom/yftech/libradio/presenter/DabSearchingPresenter$1$1;->val$isSuccessful:Z

    invoke-interface {v0, p0}, Lcom/yftech/libradio/view/IDabSearchingDialogView;->displaySearchResult(Z)V

    :cond_0
    return-void
.end method
