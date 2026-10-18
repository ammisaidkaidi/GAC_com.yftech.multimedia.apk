.class public Lcom/yftech/libmvpmodule/mvp/BaseDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "BaseDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/libmvpmodule/mvp/BaseDialogFragment$OnDestotyListener;
    }
.end annotation


# instance fields
.field private onDestotyListener:Lcom/yftech/libmvpmodule/mvp/BaseDialogFragment$OnDestotyListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/yftech/libmvpmodule/mvp/BaseDialogFragment;->onDestotyListener:Lcom/yftech/libmvpmodule/mvp/BaseDialogFragment$OnDestotyListener;

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/yftech/libmvpmodule/mvp/BaseDialogFragment;->onDestotyListener:Lcom/yftech/libmvpmodule/mvp/BaseDialogFragment$OnDestotyListener;

    invoke-interface {v0}, Lcom/yftech/libmvpmodule/mvp/BaseDialogFragment$OnDestotyListener;->onDestoryCallback()V

    .line 12
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroy()V

    return-void
.end method

.method protected setOnDestotyListener(Lcom/yftech/libmvpmodule/mvp/BaseDialogFragment$OnDestotyListener;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/yftech/libmvpmodule/mvp/BaseDialogFragment;->onDestotyListener:Lcom/yftech/libmvpmodule/mvp/BaseDialogFragment$OnDestotyListener;

    return-void
.end method
