.class public abstract Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseMvpActivity.java"

# interfaces
.implements Lcom/yftech/libmvpmodule/mvp/IMvpView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;",
        ">",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lcom/yftech/libmvpmodule/mvp/IMvpView;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field public isDisplaying:Z

.field protected mCurrentPresenter:Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public main:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 21
    const-class v0, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->isDisplaying:Z

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

    .line 28
    iget-object p0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->mCurrentPresenter:Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 37
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->createPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->mCurrentPresenter:Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    .line 40
    iget-object p1, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->mCurrentPresenter:Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    if-eqz p1, :cond_0

    .line 41
    iget-object p1, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->mCurrentPresenter:Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    invoke-virtual {p1, p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;->attachView(Lcom/yftech/libmvpmodule/mvp/IMvpView;)V

    .line 44
    :cond_0
    sget p1, Lcom/yftech/libmvpmodule/utils/Constants;->displayHeight:I

    if-eqz p1, :cond_1

    sget p1, Lcom/yftech/libmvpmodule/utils/Constants;->displayWidth:I

    if-nez p1, :cond_2

    .line 46
    :cond_1
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 47
    invoke-virtual {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 48
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/yftech/libmvpmodule/utils/Constants;->displayWidth:I

    .line 49
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    sput p1, Lcom/yftech/libmvpmodule/utils/Constants;->displayHeight:I

    :cond_2
    const p1, 0x1020002

    .line 52
    invoke-virtual {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->main:Landroid/view/View;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 73
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 74
    iget-object v0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->mCurrentPresenter:Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    if-eqz v0, :cond_0

    .line 75
    iget-object p0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->mCurrentPresenter:Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    invoke-virtual {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;->detachView()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 57
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 59
    iget-object v0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->isDisplaying:Z

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 65
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 67
    iget-object v0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->isDisplaying:Z

    return-void
.end method
