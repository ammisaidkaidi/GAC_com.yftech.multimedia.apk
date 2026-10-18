.class Lcom/yftech/libradio/presenter/RadioMainPresenter$1;
.super Ljava/lang/Object;
.source "RadioMainPresenter.java"

# interfaces
.implements Lcom/yftech/libradio/model/interfaces/IRadioModel$OnFreqListLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/presenter/RadioMainPresenter;->setFreqList(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/presenter/RadioMainPresenter;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/presenter/RadioMainPresenter;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/yftech/libradio/presenter/RadioMainPresenter$1;->this$0:Lcom/yftech/libradio/presenter/RadioMainPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/yftech/libradio/presenter/RadioMainPresenter$1;->this$0:Lcom/yftech/libradio/presenter/RadioMainPresenter;

    invoke-virtual {v0}, Lcom/yftech/libradio/presenter/RadioMainPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/yftech/libradio/presenter/RadioMainPresenter$1;->this$0:Lcom/yftech/libradio/presenter/RadioMainPresenter;

    invoke-virtual {v0}, Lcom/yftech/libradio/presenter/RadioMainPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/yftech/libradio/presenter/RadioMainPresenter$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/yftech/libradio/presenter/RadioMainPresenter$1$1;-><init>(Lcom/yftech/libradio/presenter/RadioMainPresenter$1;Ljava/util/List;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
