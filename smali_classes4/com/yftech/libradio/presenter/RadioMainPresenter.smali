.class public Lcom/yftech/libradio/presenter/RadioMainPresenter;
.super Lcom/yftech/libmvpmodule/BasePresenter;
.source "RadioMainPresenter.java"

# interfaces
.implements Lcom/yftech/libradio/presenter/interfaces/IRadioMainPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/libmvpmodule/BasePresenter<",
        "Lcom/yftech/libradio/view/IRadioMainActivityView;",
        ">;",
        "Lcom/yftech/libradio/presenter/interfaces/IRadioMainPresenter;"
    }
.end annotation


# instance fields
.field private radioModel:Lcom/yftech/libradio/model/RadioModel;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/yftech/libmvpmodule/BasePresenter;-><init>(Landroid/app/Activity;)V

    .line 15
    new-instance p1, Lcom/yftech/libradio/model/RadioModel;

    invoke-direct {p1}, Lcom/yftech/libradio/model/RadioModel;-><init>()V

    iput-object p1, p0, Lcom/yftech/libradio/presenter/RadioMainPresenter;->radioModel:Lcom/yftech/libradio/model/RadioModel;

    return-void
.end method


# virtual methods
.method public setFreqList(I)V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/yftech/libradio/presenter/RadioMainPresenter;->radioModel:Lcom/yftech/libradio/model/RadioModel;

    new-instance v1, Lcom/yftech/libradio/presenter/RadioMainPresenter$1;

    invoke-direct {v1, p0}, Lcom/yftech/libradio/presenter/RadioMainPresenter$1;-><init>(Lcom/yftech/libradio/presenter/RadioMainPresenter;)V

    invoke-virtual {v0, p1, p0, v1}, Lcom/yftech/libradio/model/RadioModel;->setFreqList(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libradio/model/interfaces/IRadioModel$OnFreqListLoadListener;)V

    return-void
.end method
