.class public interface abstract Lcom/yftech/libradio/model/interfaces/IRadioModel;
.super Ljava/lang/Object;
.source "IRadioModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/libradio/model/interfaces/IRadioModel$OnFreqListLoadListener;,
        Lcom/yftech/libradio/model/interfaces/IRadioModel$OnRadioFavorListLoadListener;,
        Lcom/yftech/libradio/model/interfaces/IRadioModel$OnRadioChannelScanResultLoadListener;,
        Lcom/yftech/libradio/model/interfaces/IRadioModel$OnRadioChannelSearchListLoadListener;
    }
.end annotation


# virtual methods
.method public abstract getFavors(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libradio/model/interfaces/IRadioModel$OnRadioFavorListLoadListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/libradio/model/interfaces/IRadioModel$OnRadioFavorListLoadListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getSearchList(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libradio/model/interfaces/IRadioModel$OnRadioChannelSearchListLoadListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/libradio/model/interfaces/IRadioModel$OnRadioChannelSearchListLoadListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract scanSave(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libradio/model/interfaces/IRadioModel$OnRadioChannelScanResultLoadListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/libradio/model/interfaces/IRadioModel$OnRadioChannelScanResultLoadListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setFreqList(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libradio/model/interfaces/IRadioModel$OnFreqListLoadListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/libradio/model/interfaces/IRadioModel$OnFreqListLoadListener;",
            ")V"
        }
    .end annotation
.end method
