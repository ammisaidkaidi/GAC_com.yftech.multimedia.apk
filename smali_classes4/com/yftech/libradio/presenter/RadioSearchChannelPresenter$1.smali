.class Lcom/yftech/libradio/presenter/RadioSearchChannelPresenter$1;
.super Ljava/lang/Object;
.source "RadioSearchChannelPresenter.java"

# interfaces
.implements Lcom/yftech/libradio/model/interfaces/IRadioModel$OnRadioChannelSearchListLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/presenter/RadioSearchChannelPresenter;->getSearchList(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/presenter/RadioSearchChannelPresenter;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/presenter/RadioSearchChannelPresenter;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/yftech/libradio/presenter/RadioSearchChannelPresenter$1;->this$0:Lcom/yftech/libradio/presenter/RadioSearchChannelPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/radio/entity/DataOfRadio;",
            ">;)V"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/yftech/libradio/presenter/RadioSearchChannelPresenter$1;->this$0:Lcom/yftech/libradio/presenter/RadioSearchChannelPresenter;

    invoke-virtual {v0}, Lcom/yftech/libradio/presenter/RadioSearchChannelPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/yftech/libradio/presenter/RadioSearchChannelPresenter$1;->this$0:Lcom/yftech/libradio/presenter/RadioSearchChannelPresenter;

    invoke-virtual {v0}, Lcom/yftech/libradio/presenter/RadioSearchChannelPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/yftech/libradio/presenter/RadioSearchChannelPresenter$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/yftech/libradio/presenter/RadioSearchChannelPresenter$1$1;-><init>(Lcom/yftech/libradio/presenter/RadioSearchChannelPresenter$1;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
