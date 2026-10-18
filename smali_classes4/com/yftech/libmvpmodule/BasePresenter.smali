.class public Lcom/yftech/libmvpmodule/BasePresenter;
.super Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;
.source "BasePresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
        ">",
        "Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yftech/libmvpmodule/BasePresenter;->mActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/yftech/libmvpmodule/BasePresenter;->mActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 32
    iget-object p0, p0, Lcom/yftech/libmvpmodule/BasePresenter;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
