.class public Lcom/yftech/libradio/presenter/RadioFavorPresenter;
.super Lcom/yftech/libmvpmodule/BasePresenter;
.source "RadioFavorPresenter.java"

# interfaces
.implements Lcom/yftech/libradio/presenter/interfaces/IRadioFavorPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/libmvpmodule/BasePresenter<",
        "Lcom/yftech/libradio/view/IRadioFavorDialogView;",
        ">;",
        "Lcom/yftech/libradio/presenter/interfaces/IRadioFavorPresenter;"
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

    iput-object p1, p0, Lcom/yftech/libradio/presenter/RadioFavorPresenter;->radioModel:Lcom/yftech/libradio/model/RadioModel;

    return-void
.end method


# virtual methods
.method public getFavors(I)V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/yftech/libradio/presenter/RadioFavorPresenter;->radioModel:Lcom/yftech/libradio/model/RadioModel;

    new-instance v1, Lcom/yftech/libradio/presenter/RadioFavorPresenter$1;

    invoke-direct {v1, p0}, Lcom/yftech/libradio/presenter/RadioFavorPresenter$1;-><init>(Lcom/yftech/libradio/presenter/RadioFavorPresenter;)V

    invoke-virtual {v0, p1, p0, v1}, Lcom/yftech/libradio/model/RadioModel;->getFavors(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libradio/model/interfaces/IRadioModel$OnRadioFavorListLoadListener;)V

    return-void
.end method
