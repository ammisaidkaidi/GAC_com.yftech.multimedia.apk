.class Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment$1;
.super Landroid/os/Handler;
.source "BaseMvpFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;Landroid/os/Looper;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment$1;->this$0:Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 56
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 57
    iget-object p1, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment$1;->this$0:Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->setResumeByPowerOn(Z)V

    .line 58
    iget-object p1, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment$1;->this$0:Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;

    invoke-virtual {p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onResume()V

    .line 59
    iget-object p0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment$1;->this$0:Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->setResumeByPowerOn(Z)V

    goto :goto_0

    .line 60
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x14

    if-ne p1, v0, :cond_1

    .line 61
    iget-object p0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment$1;->this$0:Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;

    invoke-virtual {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onStop()V

    :cond_1
    :goto_0
    return-void
.end method
