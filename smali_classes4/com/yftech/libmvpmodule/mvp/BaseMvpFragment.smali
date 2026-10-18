.class public abstract Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseMvpFragment.java"

# interfaces
.implements Lcom/yftech/libmvpmodule/mvp/IMvpView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment$OnDestotyListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;",
        ">",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/yftech/libmvpmodule/mvp/IMvpView;"
    }
.end annotation


# instance fields
.field private final RC_POWER_OFF:I

.field private final RC_POWER_ON:I

.field private baseHandler:Landroid/os/Handler;

.field private carPowerListener:Lcom/yftech/vehicle/sdk/CarPowerManager$CarPowerListener;

.field protected index:I

.field protected isCreateView:Z

.field public isFullScreen:Z

.field public isSplitMode:Z

.field protected mActivity:Landroid/app/Activity;

.field protected mCurrentPresenter:Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mIsResumeByPowerOn:Z

.field private onDestotyListener:Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment$OnDestotyListener;

.field private powerMode:Ljava/lang/String;

.field private rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 66
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->isFullScreen:Z

    .line 41
    iput-boolean v0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->isSplitMode:Z

    const/16 v1, 0xa

    .line 49
    iput v1, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->RC_POWER_ON:I

    const/16 v1, 0x14

    .line 50
    iput v1, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->RC_POWER_OFF:I

    .line 52
    new-instance v1, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment$1;-><init>(Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->baseHandler:Landroid/os/Handler;

    .line 149
    new-instance v1, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment$2;

    invoke-direct {v1, p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment$2;-><init>(Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;)V

    iput-object v1, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->carPowerListener:Lcom/yftech/vehicle/sdk/CarPowerManager$CarPowerListener;

    .line 230
    iput-boolean v0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->mIsResumeByPowerOn:Z

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->powerMode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->powerMode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;)Landroid/os/Handler;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->baseHandler:Landroid/os/Handler;

    return-object p0
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

    .line 72
    iget-object p0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->mCurrentPresenter:Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    return-object p0
.end method

.method protected initListener()V
    .locals 0

    return-void
.end method

.method protected abstract initView(Landroid/view/View;)V
.end method

.method protected isResumeByPowerOn()Z
    .locals 0

    .line 232
    iget-boolean p0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->mIsResumeByPowerOn:Z

    return p0
.end method

.method protected isUserVisible()Z
    .locals 6

    const/4 v0, 0x0

    .line 189
    :try_start_0
    invoke-virtual {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->isVisible()Z

    move-result v1

    .line 190
    invoke-virtual {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->isResumed()Z

    move-result v2

    .line 192
    iget-object v3, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->rootView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 193
    iget-object v3, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v0

    .line 195
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isUserVisible:visible="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",isResume:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",rootViewShown:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    move v0, p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 201
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 77
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 78
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method protected abstract onBindView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 128
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 130
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarPowerManager;->get()Lcom/yftech/vehicle/sdk/CarPowerManager;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->carPowerListener:Lcom/yftech/vehicle/sdk/CarPowerManager$CarPowerListener;

    invoke-virtual {p1, p0}, Lcom/yftech/vehicle/sdk/CarPowerManager;->registerListener(Lcom/yftech/vehicle/sdk/CarPowerManager$CarPowerListener;)V

    return-void
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

    .line 84
    invoke-virtual {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->createPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->mCurrentPresenter:Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    .line 85
    iget-object v0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->mCurrentPresenter:Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->mCurrentPresenter:Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    invoke-virtual {v0, p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;->attachView(Lcom/yftech/libmvpmodule/mvp/IMvpView;)V

    .line 88
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onBindView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->rootView:Landroid/view/View;

    const/4 p1, 0x1

    .line 89
    iput-boolean p1, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->isCreateView:Z

    .line 90
    iget-object p1, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->rootView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->initView(Landroid/view/View;)V

    .line 94
    invoke-virtual {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->initListener()V

    .line 95
    iget-object p0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->rootView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    .line 135
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 136
    iget-object v0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onDestotyListener:Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment$OnDestotyListener;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onDestotyListener:Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment$OnDestotyListener;

    invoke-interface {v0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment$OnDestotyListener;->onDestoryCallback()V

    .line 139
    :cond_0
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarPowerManager;->get()Lcom/yftech/vehicle/sdk/CarPowerManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->carPowerListener:Lcom/yftech/vehicle/sdk/CarPowerManager$CarPowerListener;

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/sdk/CarPowerManager;->unregisterListener(Lcom/yftech/vehicle/sdk/CarPowerManager$CarPowerListener;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 209
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 210
    iget-object v0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->mCurrentPresenter:Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->mCurrentPresenter:Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    invoke-virtual {v0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;->detachView()V

    :cond_0
    const/4 v0, 0x0

    .line 213
    iput-boolean v0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->isCreateView:Z

    .line 214
    invoke-virtual {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onUnbindView()V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 122
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const-string v0, "TAG"

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRefreshData()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 108
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume:isFullScreen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->isFullScreen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isSplitMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->isSplitMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->isFullScreen:Z

    invoke-static {v0, v1}, Lcom/yftech/libmvpmodule/utils/SystemUtil;->setSysFullScreen(Landroid/app/Activity;Z)V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->rootView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->rootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-boolean p0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->isSplitMode:Z

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    :cond_1
    return-void
.end method

.method protected onUnbindView()V
    .locals 0

    return-void
.end method

.method protected setOnDestotyListener(Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment$OnDestotyListener;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onDestotyListener:Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment$OnDestotyListener;

    return-void
.end method

.method protected setResumeByPowerOn(Z)V
    .locals 3

    const-string v0, "BaseMvpFragment"

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setResumeByPowerOn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iput-boolean p1, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->mIsResumeByPowerOn:Z

    return-void
.end method
