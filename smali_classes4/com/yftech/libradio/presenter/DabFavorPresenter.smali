.class public Lcom/yftech/libradio/presenter/DabFavorPresenter;
.super Lcom/yftech/libmvpmodule/BasePresenter;
.source "DabFavorPresenter.java"

# interfaces
.implements Lcom/yftech/libradio/presenter/interfaces/IDabFavorPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/libmvpmodule/BasePresenter<",
        "Lcom/yftech/libradio/view/IDabFavorView;",
        ">;",
        "Lcom/yftech/libradio/presenter/interfaces/IDabFavorPresenter;"
    }
.end annotation


# instance fields
.field private dabModel:Lcom/yftech/libradio/model/DabModel;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/yftech/libmvpmodule/BasePresenter;-><init>(Landroid/app/Activity;)V

    .line 23
    new-instance p1, Lcom/yftech/libradio/model/DabModel;

    invoke-direct {p1}, Lcom/yftech/libradio/model/DabModel;-><init>()V

    iput-object p1, p0, Lcom/yftech/libradio/presenter/DabFavorPresenter;->dabModel:Lcom/yftech/libradio/model/DabModel;

    return-void
.end method


# virtual methods
.method public getFavors()V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/yftech/libradio/presenter/DabFavorPresenter;->dabModel:Lcom/yftech/libradio/model/DabModel;

    new-instance v1, Lcom/yftech/libradio/presenter/DabFavorPresenter$1;

    invoke-direct {v1, p0}, Lcom/yftech/libradio/presenter/DabFavorPresenter$1;-><init>(Lcom/yftech/libradio/presenter/DabFavorPresenter;)V

    invoke-virtual {v0, p0, v1}, Lcom/yftech/libradio/model/DabModel;->getFavors(Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libradio/model/interfaces/IDabModel$OnDabFavorListLoadListener;)V

    return-void
.end method
