.class public abstract Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;
.super Lcom/yftech/libmvpmodule/mvp/BaseDialogFragment;
.source "BaseMvpDialogFragment.java"

# interfaces
.implements Lcom/yftech/libmvpmodule/mvp/IMvpView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;",
        ">",
        "Lcom/yftech/libmvpmodule/mvp/BaseDialogFragment;",
        "Lcom/yftech/libmvpmodule/mvp/IMvpView;"
    }
.end annotation


# instance fields
.field protected isCreateView:Z

.field protected mActivity:Landroid/app/Activity;

.field protected mCurrentPresenter:Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/yftech/libmvpmodule/mvp/BaseDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract createPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 32
    iget-object p0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->mCurrentPresenter:Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    return-object p0
.end method

.method protected abstract initView(Landroid/view/View;)V
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseDialogFragment;->onAttach(Landroid/content/Context;)V

    .line 38
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method protected abstract onBindView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 44
    invoke-virtual {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->createPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->mCurrentPresenter:Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    .line 45
    iget-object v0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->mCurrentPresenter:Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->mCurrentPresenter:Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    invoke-virtual {v0, p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;->attachView(Lcom/yftech/libmvpmodule/mvp/IMvpView;)V

    .line 48
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->onBindView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    .line 49
    iput-boolean p2, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->isCreateView:Z

    .line 50
    invoke-virtual {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 61
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseDialogFragment;->onDestroyView()V

    .line 62
    iget-object v0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->mCurrentPresenter:Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->mCurrentPresenter:Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    invoke-virtual {v0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;->detachView()V

    :cond_0
    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->isCreateView:Z

    .line 66
    invoke-virtual {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->onUnbindView()V

    return-void
.end method

.method protected onUnbindView()V
    .locals 0

    return-void
.end method
