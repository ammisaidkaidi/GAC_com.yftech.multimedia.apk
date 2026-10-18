.class public interface abstract Lcom/yftech/libradio/model/interfaces/IDabModel;
.super Ljava/lang/Object;
.source "IDabModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/libradio/model/interfaces/IDabModel$OnDabFavorListLoadListener;,
        Lcom/yftech/libradio/model/interfaces/IDabModel$OnDabChannelScanResultLoadListener;
    }
.end annotation


# virtual methods
.method public abstract getFavors(Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libradio/model/interfaces/IDabModel$OnDabFavorListLoadListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/libradio/model/interfaces/IDabModel$OnDabFavorListLoadListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract startScan(Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libradio/model/interfaces/IDabModel$OnDabChannelScanResultLoadListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/libradio/model/interfaces/IDabModel$OnDabChannelScanResultLoadListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract stopScan(Lcom/yftech/libmvpmodule/BasePresenter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;)V"
        }
    .end annotation
.end method
