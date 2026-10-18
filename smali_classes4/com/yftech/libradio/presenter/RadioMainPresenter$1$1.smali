.class Lcom/yftech/libradio/presenter/RadioMainPresenter$1$1;
.super Ljava/lang/Object;
.source "RadioMainPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/presenter/RadioMainPresenter$1;->onComplete(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/libradio/presenter/RadioMainPresenter$1;

.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/yftech/libradio/presenter/RadioMainPresenter$1;Ljava/util/List;I)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/yftech/libradio/presenter/RadioMainPresenter$1$1;->this$1:Lcom/yftech/libradio/presenter/RadioMainPresenter$1;

    iput-object p2, p0, Lcom/yftech/libradio/presenter/RadioMainPresenter$1$1;->val$list:Ljava/util/List;

    iput p3, p0, Lcom/yftech/libradio/presenter/RadioMainPresenter$1$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/yftech/libradio/presenter/RadioMainPresenter$1$1;->this$1:Lcom/yftech/libradio/presenter/RadioMainPresenter$1;

    iget-object v0, v0, Lcom/yftech/libradio/presenter/RadioMainPresenter$1;->this$0:Lcom/yftech/libradio/presenter/RadioMainPresenter;

    invoke-virtual {v0}, Lcom/yftech/libradio/presenter/RadioMainPresenter;->isViewAttach()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/yftech/libradio/presenter/RadioMainPresenter$1$1;->this$1:Lcom/yftech/libradio/presenter/RadioMainPresenter$1;

    iget-object v0, v0, Lcom/yftech/libradio/presenter/RadioMainPresenter$1;->this$0:Lcom/yftech/libradio/presenter/RadioMainPresenter;

    invoke-virtual {v0}, Lcom/yftech/libradio/presenter/RadioMainPresenter;->getView()Lcom/yftech/libmvpmodule/mvp/IMvpView;

    move-result-object v0

    check-cast v0, Lcom/yftech/libradio/view/IRadioMainActivityView;

    iget-object v1, p0, Lcom/yftech/libradio/presenter/RadioMainPresenter$1$1;->val$list:Ljava/util/List;

    iget p0, p0, Lcom/yftech/libradio/presenter/RadioMainPresenter$1$1;->val$position:I

    invoke-interface {v0, v1, p0}, Lcom/yftech/libradio/view/IRadioMainActivityView;->displayFreqList(Ljava/util/List;I)V

    :cond_0
    return-void
.end method
