.class Lcom/yftech/libradio/presenter/RadioSearchingPresenter$1$1;
.super Ljava/lang/Object;
.source "RadioSearchingPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/presenter/RadioSearchingPresenter$1;->onComplete(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/libradio/presenter/RadioSearchingPresenter$1;

.field final synthetic val$isSuccessful:Z


# direct methods
.method constructor <init>(Lcom/yftech/libradio/presenter/RadioSearchingPresenter$1;Z)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/yftech/libradio/presenter/RadioSearchingPresenter$1$1;->this$1:Lcom/yftech/libradio/presenter/RadioSearchingPresenter$1;

    iput-boolean p2, p0, Lcom/yftech/libradio/presenter/RadioSearchingPresenter$1$1;->val$isSuccessful:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/yftech/libradio/presenter/RadioSearchingPresenter$1$1;->this$1:Lcom/yftech/libradio/presenter/RadioSearchingPresenter$1;

    iget-object v0, v0, Lcom/yftech/libradio/presenter/RadioSearchingPresenter$1;->this$0:Lcom/yftech/libradio/presenter/RadioSearchingPresenter;

    invoke-virtual {v0}, Lcom/yftech/libradio/presenter/RadioSearchingPresenter;->isViewAttach()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/yftech/libradio/presenter/RadioSearchingPresenter$1$1;->this$1:Lcom/yftech/libradio/presenter/RadioSearchingPresenter$1;

    iget-object v0, v0, Lcom/yftech/libradio/presenter/RadioSearchingPresenter$1;->this$0:Lcom/yftech/libradio/presenter/RadioSearchingPresenter;

    invoke-virtual {v0}, Lcom/yftech/libradio/presenter/RadioSearchingPresenter;->getView()Lcom/yftech/libmvpmodule/mvp/IMvpView;

    move-result-object v0

    check-cast v0, Lcom/yftech/libradio/view/IRadioSearchingDialogView;

    iget-boolean p0, p0, Lcom/yftech/libradio/presenter/RadioSearchingPresenter$1$1;->val$isSuccessful:Z

    invoke-interface {v0, p0}, Lcom/yftech/libradio/view/IRadioSearchingDialogView;->displaySearchResult(Z)V

    :cond_0
    return-void
.end method
