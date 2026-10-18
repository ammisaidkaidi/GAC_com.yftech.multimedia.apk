.class public Lcom/yftech/libgallery/presenter/WallPaperSettingPresenter;
.super Lcom/yftech/libmvpmodule/BasePresenter;
.source "WallPaperSettingPresenter.java"

# interfaces
.implements Lcom/yftech/libgallery/presenter/interfaces/IWallPaperSettingPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/libmvpmodule/BasePresenter<",
        "Lcom/yftech/libgallery/view/IWallPaperSettingFragmentView;",
        ">;",
        "Lcom/yftech/libgallery/presenter/interfaces/IWallPaperSettingPresenter;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/yftech/libmvpmodule/BasePresenter;-><init>(Landroid/app/Activity;)V

    return-void
.end method
