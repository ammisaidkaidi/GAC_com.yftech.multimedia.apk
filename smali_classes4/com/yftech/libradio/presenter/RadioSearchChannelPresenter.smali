.class public Lcom/yftech/libradio/presenter/RadioSearchChannelPresenter;
.super Lcom/yftech/libmvpmodule/BasePresenter;
.source "RadioSearchChannelPresenter.java"

# interfaces
.implements Lcom/yftech/libradio/presenter/interfaces/IRadioSearchChannelPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/libmvpmodule/BasePresenter<",
        "Lcom/yftech/libradio/view/IRadioSearchChannelDialogView;",
        ">;",
        "Lcom/yftech/libradio/presenter/interfaces/IRadioSearchChannelPresenter;"
    }
.end annotation


# instance fields
.field private radioModel:Lcom/yftech/libradio/model/RadioModel;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/yftech/libmvpmodule/BasePresenter;-><init>(Landroid/app/Activity;)V

    .line 22
    new-instance p1, Lcom/yftech/libradio/model/RadioModel;

    invoke-direct {p1}, Lcom/yftech/libradio/model/RadioModel;-><init>()V

    iput-object p1, p0, Lcom/yftech/libradio/presenter/RadioSearchChannelPresenter;->radioModel:Lcom/yftech/libradio/model/RadioModel;

    return-void
.end method


# virtual methods
.method public getSearchList(I)V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/yftech/libradio/presenter/RadioSearchChannelPresenter;->radioModel:Lcom/yftech/libradio/model/RadioModel;

    new-instance v1, Lcom/yftech/libradio/presenter/RadioSearchChannelPresenter$1;

    invoke-direct {v1, p0}, Lcom/yftech/libradio/presenter/RadioSearchChannelPresenter$1;-><init>(Lcom/yftech/libradio/presenter/RadioSearchChannelPresenter;)V

    invoke-virtual {v0, p1, p0, v1}, Lcom/yftech/libradio/model/RadioModel;->getSearchList(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libradio/model/interfaces/IRadioModel$OnRadioChannelSearchListLoadListener;)V

    return-void
.end method
