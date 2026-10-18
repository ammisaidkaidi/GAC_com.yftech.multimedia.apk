.class public Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;
.super Ljava/lang/Object;
.source "BaseMvpPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method attachView(Lcom/yftech/libmvpmodule/mvp/IMvpView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 13
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;->mReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method detachView()V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;->mReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;->mReference:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public getView()Lcom/yftech/libmvpmodule/mvp/IMvpView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 17
    iget-object p0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/libmvpmodule/mvp/IMvpView;

    return-object p0
.end method

.method public isViewAttach()Z
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;->mReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
