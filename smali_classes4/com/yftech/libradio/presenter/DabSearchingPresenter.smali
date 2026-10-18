.class public Lcom/yftech/libradio/presenter/DabSearchingPresenter;
.super Lcom/yftech/libmvpmodule/BasePresenter;
.source "DabSearchingPresenter.java"

# interfaces
.implements Lcom/yftech/libradio/presenter/interfaces/IDabSearchingPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/libmvpmodule/BasePresenter<",
        "Lcom/yftech/libradio/view/IDabSearchingDialogView;",
        ">;",
        "Lcom/yftech/libradio/presenter/interfaces/IDabSearchingPresenter;"
    }
.end annotation


# instance fields
.field private final dabModel:Lcom/yftech/libradio/model/DabModel;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/yftech/libmvpmodule/BasePresenter;-><init>(Landroid/app/Activity;)V

    .line 23
    new-instance p1, Lcom/yftech/libradio/model/DabModel;

    invoke-direct {p1}, Lcom/yftech/libradio/model/DabModel;-><init>()V

    iput-object p1, p0, Lcom/yftech/libradio/presenter/DabSearchingPresenter;->dabModel:Lcom/yftech/libradio/model/DabModel;

    return-void
.end method


# virtual methods
.method public startScan()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/yftech/libradio/presenter/DabSearchingPresenter;->dabModel:Lcom/yftech/libradio/model/DabModel;

    new-instance v1, Lcom/yftech/libradio/presenter/DabSearchingPresenter$1;

    invoke-direct {v1, p0}, Lcom/yftech/libradio/presenter/DabSearchingPresenter$1;-><init>(Lcom/yftech/libradio/presenter/DabSearchingPresenter;)V

    invoke-virtual {v0, p0, v1}, Lcom/yftech/libradio/model/DabModel;->startScan(Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libradio/model/interfaces/IDabModel$OnDabChannelScanResultLoadListener;)V

    return-void
.end method

.method public stopScan()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/yftech/libradio/presenter/DabSearchingPresenter;->dabModel:Lcom/yftech/libradio/model/DabModel;

    invoke-virtual {v0, p0}, Lcom/yftech/libradio/model/DabModel;->stopScan(Lcom/yftech/libmvpmodule/BasePresenter;)V

    return-void
.end method
