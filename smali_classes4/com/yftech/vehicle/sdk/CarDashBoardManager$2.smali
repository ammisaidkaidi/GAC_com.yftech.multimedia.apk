.class Lcom/yftech/vehicle/sdk/CarDashBoardManager$2;
.super Ljava/lang/Object;
.source "CarDashBoardManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/vehicle/sdk/CarDashBoardManager;->setSendBtInfoToDashBoardForTboxCall(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/vehicle/sdk/CarDashBoardManager;

.field final synthetic val$bt:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;


# direct methods
.method constructor <init>(Lcom/yftech/vehicle/sdk/CarDashBoardManager;Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/yftech/vehicle/sdk/CarDashBoardManager$2;->this$0:Lcom/yftech/vehicle/sdk/CarDashBoardManager;

    iput-object p2, p0, Lcom/yftech/vehicle/sdk/CarDashBoardManager$2;->val$bt:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-wide/16 v0, 0x1f4

    .line 240
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x3

    .line 243
    iget-object v1, p0, Lcom/yftech/vehicle/sdk/CarDashBoardManager$2;->val$bt:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;

    invoke-static {v0, v1}, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->getMediaInfo(BLcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;)[B

    move-result-object v0

    const-string v1, "CarDashBoardManager"

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MCU_IHU12 setSendDashBoardInfo->STATUS_ENDING_CALL= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/yftech/vehicle/sdk/CarDashBoardManager$2;->val$bt:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/yftech/vehicle/sdk/CarDashBoardManager$2;->val$bt:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;

    invoke-virtual {v3}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->getDashBoardSource()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/yftech/vehicle/internal/utils/StringFormart;->byte2hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object p0, p0, Lcom/yftech/vehicle/sdk/CarDashBoardManager$2;->this$0:Lcom/yftech/vehicle/sdk/CarDashBoardManager;

    const/16 v1, 0x26d3

    invoke-virtual {p0, v1, v0}, Lcom/yftech/vehicle/sdk/CarDashBoardManager;->setSignalValue(I[B)Z

    return-void
.end method
