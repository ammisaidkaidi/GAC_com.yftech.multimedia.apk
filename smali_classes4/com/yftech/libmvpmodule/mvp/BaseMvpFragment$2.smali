.class Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment$2;
.super Lcom/yftech/vehicle/sdk/CarPowerManager$CarPowerListener;
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
.method constructor <init>(Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment$2;->this$0:Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;

    invoke-direct {p0}, Lcom/yftech/vehicle/sdk/CarPowerManager$CarPowerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPowerModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;)V
    .locals 4

    const-string v0, "BaseMvpFragment"

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPowerModeChanged:mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", powerMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment$2;->this$0:Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;

    invoke-static {v2}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->access$000(Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment$2;->this$0:Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;

    invoke-virtual {v0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment$2;->this$0:Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;

    invoke-virtual {v0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;

    const-string v1, "BaseMvpFragment"

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume:isDisplaying="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->isDisplaying:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-boolean v0, v0, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->isDisplaying:Z

    if-nez v0, :cond_0

    return-void

    .line 166
    :cond_0
    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment$2;->this$0:Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;

    invoke-static {v1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->access$000(Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment$2;->this$0:Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->access$002(Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;->value:I

    invoke-static {p1}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$PowerMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarInfo$PowerMode;

    move-result-object p1

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$PowerMode;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarInfo$PowerMode;

    if-ne p1, v0, :cond_2

    const-string p1, "BaseMvpFragment"

    const-string v0, "onStop"

    .line 173
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object p0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment$2;->this$0:Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;

    invoke-static {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->access$100(Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x14

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 177
    :cond_2
    iget-object p1, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment$2;->this$0:Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;

    invoke-virtual {p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->isVisible()Z

    move-result p1

    .line 178
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume:visible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment$2;->this$0:Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;

    invoke-virtual {v2}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->isUserVisible()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    .line 181
    iget-object p0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment$2;->this$0:Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;

    invoke-static {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->access$100(Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    :goto_0
    return-void
.end method
