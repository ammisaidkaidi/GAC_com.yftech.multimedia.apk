.class Lcom/yftech/libradio/presenter/DabFavorPresenter$1;
.super Ljava/lang/Object;
.source "DabFavorPresenter.java"

# interfaces
.implements Lcom/yftech/libradio/model/interfaces/IDabModel$OnDabFavorListLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/presenter/DabFavorPresenter;->getFavors()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/presenter/DabFavorPresenter;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/presenter/DabFavorPresenter;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/yftech/libradio/presenter/DabFavorPresenter$1;->this$0:Lcom/yftech/libradio/presenter/DabFavorPresenter;

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
            "Lcom/yftech/libradio/bean/DabChannelInfo;",
            ">;)V"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/yftech/libradio/presenter/DabFavorPresenter$1;->this$0:Lcom/yftech/libradio/presenter/DabFavorPresenter;

    invoke-virtual {v0}, Lcom/yftech/libradio/presenter/DabFavorPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/yftech/libradio/presenter/DabFavorPresenter$1;->this$0:Lcom/yftech/libradio/presenter/DabFavorPresenter;

    invoke-virtual {v0}, Lcom/yftech/libradio/presenter/DabFavorPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/yftech/libradio/presenter/DabFavorPresenter$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/yftech/libradio/presenter/DabFavorPresenter$1$1;-><init>(Lcom/yftech/libradio/presenter/DabFavorPresenter$1;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
