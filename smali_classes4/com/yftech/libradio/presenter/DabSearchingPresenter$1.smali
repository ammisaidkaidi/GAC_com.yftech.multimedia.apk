.class Lcom/yftech/libradio/presenter/DabSearchingPresenter$1;
.super Ljava/lang/Object;
.source "DabSearchingPresenter.java"

# interfaces
.implements Lcom/yftech/libradio/model/interfaces/IDabModel$OnDabChannelScanResultLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/presenter/DabSearchingPresenter;->startScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/presenter/DabSearchingPresenter;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/presenter/DabSearchingPresenter;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/yftech/libradio/presenter/DabSearchingPresenter$1;->this$0:Lcom/yftech/libradio/presenter/DabSearchingPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Z)V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/yftech/libradio/presenter/DabSearchingPresenter$1;->this$0:Lcom/yftech/libradio/presenter/DabSearchingPresenter;

    invoke-virtual {v0}, Lcom/yftech/libradio/presenter/DabSearchingPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/yftech/libradio/presenter/DabSearchingPresenter$1;->this$0:Lcom/yftech/libradio/presenter/DabSearchingPresenter;

    invoke-virtual {v0}, Lcom/yftech/libradio/presenter/DabSearchingPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/yftech/libradio/presenter/DabSearchingPresenter$1$1;

    invoke-direct {v1, p0, p1}, Lcom/yftech/libradio/presenter/DabSearchingPresenter$1$1;-><init>(Lcom/yftech/libradio/presenter/DabSearchingPresenter$1;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
