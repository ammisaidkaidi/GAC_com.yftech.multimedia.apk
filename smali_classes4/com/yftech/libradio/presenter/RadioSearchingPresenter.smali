.class public Lcom/yftech/libradio/presenter/RadioSearchingPresenter;
.super Lcom/yftech/libmvpmodule/BasePresenter;
.source "RadioSearchingPresenter.java"

# interfaces
.implements Lcom/yftech/libradio/presenter/interfaces/IRadioSearchingPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/libmvpmodule/BasePresenter<",
        "Lcom/yftech/libradio/view/IRadioSearchingDialogView;",
        ">;",
        "Lcom/yftech/libradio/presenter/interfaces/IRadioSearchingPresenter;"
    }
.end annotation


# instance fields
.field private final radioModel:Lcom/yftech/libradio/model/RadioModel;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/yftech/libmvpmodule/BasePresenter;-><init>(Landroid/app/Activity;)V

    .line 19
    new-instance p1, Lcom/yftech/libradio/model/RadioModel;

    invoke-direct {p1}, Lcom/yftech/libradio/model/RadioModel;-><init>()V

    iput-object p1, p0, Lcom/yftech/libradio/presenter/RadioSearchingPresenter;->radioModel:Lcom/yftech/libradio/model/RadioModel;

    return-void
.end method


# virtual methods
.method public scanSave(I)V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/yftech/libradio/presenter/RadioSearchingPresenter;->radioModel:Lcom/yftech/libradio/model/RadioModel;

    new-instance v1, Lcom/yftech/libradio/presenter/RadioSearchingPresenter$1;

    invoke-direct {v1, p0}, Lcom/yftech/libradio/presenter/RadioSearchingPresenter$1;-><init>(Lcom/yftech/libradio/presenter/RadioSearchingPresenter;)V

    invoke-virtual {v0, p1, p0, v1}, Lcom/yftech/libradio/model/RadioModel;->scanSave(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libradio/model/interfaces/IRadioModel$OnRadioChannelScanResultLoadListener;)V

    return-void
.end method
