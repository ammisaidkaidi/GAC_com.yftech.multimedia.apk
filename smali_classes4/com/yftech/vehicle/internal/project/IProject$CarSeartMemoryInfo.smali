.class public Lcom/yftech/vehicle/internal/project/IProject$CarSeartMemoryInfo;
.super Ljava/lang/Object;
.source "IProject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/project/IProject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CarSeartMemoryInfo"
.end annotation


# instance fields
.field public accountCfg:Lcom/yftech/vehicle/internal/project/IProject$AccountCfg;

.field public cmd:Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;

.field public puid:B


# direct methods
.method public constructor <init>(Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;Lcom/yftech/vehicle/internal/project/IProject$AccountCfg;)V
    .locals 1

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    sget-object v0, Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;->__UNKNOWN__:Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;

    iput-object v0, p0, Lcom/yftech/vehicle/internal/project/IProject$CarSeartMemoryInfo;->cmd:Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;

    .line 161
    sget-object v0, Lcom/yftech/vehicle/internal/project/IProject$AccountCfg;->__UNKNOWN__:Lcom/yftech/vehicle/internal/project/IProject$AccountCfg;

    iput-object v0, p0, Lcom/yftech/vehicle/internal/project/IProject$CarSeartMemoryInfo;->accountCfg:Lcom/yftech/vehicle/internal/project/IProject$AccountCfg;

    .line 165
    iput-object p1, p0, Lcom/yftech/vehicle/internal/project/IProject$CarSeartMemoryInfo;->cmd:Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;

    .line 166
    iput-object p2, p0, Lcom/yftech/vehicle/internal/project/IProject$CarSeartMemoryInfo;->accountCfg:Lcom/yftech/vehicle/internal/project/IProject$AccountCfg;

    .line 167
    iget-byte p1, p0, Lcom/yftech/vehicle/internal/project/IProject$CarSeartMemoryInfo;->puid:B

    iput-byte p1, p0, Lcom/yftech/vehicle/internal/project/IProject$CarSeartMemoryInfo;->puid:B

    return-void
.end method

.method public constructor <init>(Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;Lcom/yftech/vehicle/internal/project/IProject$AccountCfg;B)V
    .locals 1

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    sget-object v0, Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;->__UNKNOWN__:Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;

    iput-object v0, p0, Lcom/yftech/vehicle/internal/project/IProject$CarSeartMemoryInfo;->cmd:Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;

    .line 161
    sget-object v0, Lcom/yftech/vehicle/internal/project/IProject$AccountCfg;->__UNKNOWN__:Lcom/yftech/vehicle/internal/project/IProject$AccountCfg;

    iput-object v0, p0, Lcom/yftech/vehicle/internal/project/IProject$CarSeartMemoryInfo;->accountCfg:Lcom/yftech/vehicle/internal/project/IProject$AccountCfg;

    .line 170
    iput-object p1, p0, Lcom/yftech/vehicle/internal/project/IProject$CarSeartMemoryInfo;->cmd:Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;

    .line 171
    iput-object p2, p0, Lcom/yftech/vehicle/internal/project/IProject$CarSeartMemoryInfo;->accountCfg:Lcom/yftech/vehicle/internal/project/IProject$AccountCfg;

    .line 172
    iput-byte p3, p0, Lcom/yftech/vehicle/internal/project/IProject$CarSeartMemoryInfo;->puid:B

    return-void
.end method


# virtual methods
.method public parseByte(Lcom/yftech/vehicle/internal/project/IProject$CarSeartMemoryInfo;)[B
    .locals 4

    const/4 p0, 0x6

    .line 176
    new-array p0, p0, [B

    const/4 v0, 0x0

    const/16 v1, -0x7a

    aput-byte v1, p0, v0

    const/4 v1, 0x1

    const/16 v2, 0x19

    aput-byte v2, p0, v1

    const/4 v2, 0x2

    aput-byte v1, p0, v2

    .line 180
    iget-object v1, p1, Lcom/yftech/vehicle/internal/project/IProject$CarSeartMemoryInfo;->cmd:Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;

    sget-object v2, Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;->__UNKNOWN__:Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;

    const/4 v3, 0x3

    if-ne v1, v2, :cond_0

    aput-byte v0, p0, v3

    goto :goto_0

    .line 183
    :cond_0
    iget-object v1, p1, Lcom/yftech/vehicle/internal/project/IProject$CarSeartMemoryInfo;->cmd:Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;

    iget v1, v1, Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;->value:I

    int-to-byte v1, v1

    aput-byte v1, p0, v3

    :goto_0
    const/4 v1, 0x4

    .line 186
    iget-object p1, p1, Lcom/yftech/vehicle/internal/project/IProject$CarSeartMemoryInfo;->accountCfg:Lcom/yftech/vehicle/internal/project/IProject$AccountCfg;

    iget p1, p1, Lcom/yftech/vehicle/internal/project/IProject$AccountCfg;->value:I

    int-to-byte p1, p1

    aput-byte p1, p0, v1

    const/4 p1, 0x5

    aput-byte v0, p0, p1

    return-object p0
.end method
