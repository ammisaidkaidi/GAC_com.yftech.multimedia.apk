.class public Lcom/yftech/vehicle/internal/project/IProject$PersonalMemoryInfo;
.super Ljava/lang/Object;
.source "IProject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/project/IProject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PersonalMemoryInfo"
.end annotation


# instance fields
.field public accountCfg:Lcom/yftech/vehicle/internal/project/IProject$AccountCfg;

.field public currentPuid:B

.field public opObj:Lcom/yftech/vehicle/internal/project/IProject$OpertionObject;

.field public opType:Lcom/yftech/vehicle/internal/project/IProject$OpertionType;

.field public puid:B


# direct methods
.method public constructor <init>(Lcom/yftech/vehicle/internal/project/IProject$OpertionType;Lcom/yftech/vehicle/internal/project/IProject$AccountCfg;)V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    sget-object v0, Lcom/yftech/vehicle/internal/project/IProject$OpertionObject;->SEAT_POSITION:Lcom/yftech/vehicle/internal/project/IProject$OpertionObject;

    iput-object v0, p0, Lcom/yftech/vehicle/internal/project/IProject$PersonalMemoryInfo;->opObj:Lcom/yftech/vehicle/internal/project/IProject$OpertionObject;

    .line 107
    sget-object v0, Lcom/yftech/vehicle/internal/project/IProject$OpertionType;->__UNKNOWN__:Lcom/yftech/vehicle/internal/project/IProject$OpertionType;

    iput-object v0, p0, Lcom/yftech/vehicle/internal/project/IProject$PersonalMemoryInfo;->opType:Lcom/yftech/vehicle/internal/project/IProject$OpertionType;

    .line 109
    sget-object v0, Lcom/yftech/vehicle/internal/project/IProject$AccountCfg;->__UNKNOWN__:Lcom/yftech/vehicle/internal/project/IProject$AccountCfg;

    iput-object v0, p0, Lcom/yftech/vehicle/internal/project/IProject$PersonalMemoryInfo;->accountCfg:Lcom/yftech/vehicle/internal/project/IProject$AccountCfg;

    const/4 v0, 0x0

    .line 111
    iput-byte v0, p0, Lcom/yftech/vehicle/internal/project/IProject$PersonalMemoryInfo;->puid:B

    .line 112
    iput-byte v0, p0, Lcom/yftech/vehicle/internal/project/IProject$PersonalMemoryInfo;->currentPuid:B

    .line 114
    iput-object p1, p0, Lcom/yftech/vehicle/internal/project/IProject$PersonalMemoryInfo;->opType:Lcom/yftech/vehicle/internal/project/IProject$OpertionType;

    .line 115
    iput-object p2, p0, Lcom/yftech/vehicle/internal/project/IProject$PersonalMemoryInfo;->accountCfg:Lcom/yftech/vehicle/internal/project/IProject$AccountCfg;

    .line 116
    iget-byte p1, p0, Lcom/yftech/vehicle/internal/project/IProject$PersonalMemoryInfo;->puid:B

    iput-byte p1, p0, Lcom/yftech/vehicle/internal/project/IProject$PersonalMemoryInfo;->puid:B

    return-void
.end method

.method public constructor <init>(Lcom/yftech/vehicle/internal/project/IProject$OpertionType;Lcom/yftech/vehicle/internal/project/IProject$AccountCfg;B)V
    .locals 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    sget-object v0, Lcom/yftech/vehicle/internal/project/IProject$OpertionObject;->SEAT_POSITION:Lcom/yftech/vehicle/internal/project/IProject$OpertionObject;

    iput-object v0, p0, Lcom/yftech/vehicle/internal/project/IProject$PersonalMemoryInfo;->opObj:Lcom/yftech/vehicle/internal/project/IProject$OpertionObject;

    .line 107
    sget-object v0, Lcom/yftech/vehicle/internal/project/IProject$OpertionType;->__UNKNOWN__:Lcom/yftech/vehicle/internal/project/IProject$OpertionType;

    iput-object v0, p0, Lcom/yftech/vehicle/internal/project/IProject$PersonalMemoryInfo;->opType:Lcom/yftech/vehicle/internal/project/IProject$OpertionType;

    .line 109
    sget-object v0, Lcom/yftech/vehicle/internal/project/IProject$AccountCfg;->__UNKNOWN__:Lcom/yftech/vehicle/internal/project/IProject$AccountCfg;

    iput-object v0, p0, Lcom/yftech/vehicle/internal/project/IProject$PersonalMemoryInfo;->accountCfg:Lcom/yftech/vehicle/internal/project/IProject$AccountCfg;

    const/4 v0, 0x0

    .line 111
    iput-byte v0, p0, Lcom/yftech/vehicle/internal/project/IProject$PersonalMemoryInfo;->puid:B

    .line 112
    iput-byte v0, p0, Lcom/yftech/vehicle/internal/project/IProject$PersonalMemoryInfo;->currentPuid:B

    .line 119
    iput-object p1, p0, Lcom/yftech/vehicle/internal/project/IProject$PersonalMemoryInfo;->opType:Lcom/yftech/vehicle/internal/project/IProject$OpertionType;

    .line 120
    iput-object p2, p0, Lcom/yftech/vehicle/internal/project/IProject$PersonalMemoryInfo;->accountCfg:Lcom/yftech/vehicle/internal/project/IProject$AccountCfg;

    .line 121
    iput-byte p3, p0, Lcom/yftech/vehicle/internal/project/IProject$PersonalMemoryInfo;->puid:B

    return-void
.end method

.method public constructor <init>(Lcom/yftech/vehicle/internal/project/IProject$OpertionType;Lcom/yftech/vehicle/internal/project/IProject$AccountCfg;BB)V
    .locals 1

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    sget-object v0, Lcom/yftech/vehicle/internal/project/IProject$OpertionObject;->SEAT_POSITION:Lcom/yftech/vehicle/internal/project/IProject$OpertionObject;

    iput-object v0, p0, Lcom/yftech/vehicle/internal/project/IProject$PersonalMemoryInfo;->opObj:Lcom/yftech/vehicle/internal/project/IProject$OpertionObject;

    .line 107
    sget-object v0, Lcom/yftech/vehicle/internal/project/IProject$OpertionType;->__UNKNOWN__:Lcom/yftech/vehicle/internal/project/IProject$OpertionType;

    iput-object v0, p0, Lcom/yftech/vehicle/internal/project/IProject$PersonalMemoryInfo;->opType:Lcom/yftech/vehicle/internal/project/IProject$OpertionType;

    .line 109
    sget-object v0, Lcom/yftech/vehicle/internal/project/IProject$AccountCfg;->__UNKNOWN__:Lcom/yftech/vehicle/internal/project/IProject$AccountCfg;

    iput-object v0, p0, Lcom/yftech/vehicle/internal/project/IProject$PersonalMemoryInfo;->accountCfg:Lcom/yftech/vehicle/internal/project/IProject$AccountCfg;

    const/4 v0, 0x0

    .line 111
    iput-byte v0, p0, Lcom/yftech/vehicle/internal/project/IProject$PersonalMemoryInfo;->puid:B

    .line 112
    iput-byte v0, p0, Lcom/yftech/vehicle/internal/project/IProject$PersonalMemoryInfo;->currentPuid:B

    .line 125
    iput-object p1, p0, Lcom/yftech/vehicle/internal/project/IProject$PersonalMemoryInfo;->opType:Lcom/yftech/vehicle/internal/project/IProject$OpertionType;

    .line 126
    iput-object p2, p0, Lcom/yftech/vehicle/internal/project/IProject$PersonalMemoryInfo;->accountCfg:Lcom/yftech/vehicle/internal/project/IProject$AccountCfg;

    .line 127
    iput-byte p3, p0, Lcom/yftech/vehicle/internal/project/IProject$PersonalMemoryInfo;->puid:B

    .line 128
    iput-byte p4, p0, Lcom/yftech/vehicle/internal/project/IProject$PersonalMemoryInfo;->currentPuid:B

    return-void
.end method

.method public static valueOf([B)Lcom/yftech/vehicle/internal/project/IProject$PersonalMemoryInfo;
    .locals 4

    const/4 v0, 0x0

    .line 132
    aget-byte v0, p0, v0

    const/4 v0, 0x1

    .line 133
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x2

    .line 134
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x3

    .line 135
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x4

    .line 136
    aget-byte p0, p0, v3

    and-int/lit16 p0, p0, 0xff

    .line 137
    new-instance v3, Lcom/yftech/vehicle/internal/project/IProject$PersonalMemoryInfo;

    invoke-static {v0}, Lcom/yftech/vehicle/internal/project/IProject$OpertionType;->valueOf(I)Lcom/yftech/vehicle/internal/project/IProject$OpertionType;

    move-result-object v0

    invoke-static {v1}, Lcom/yftech/vehicle/internal/project/IProject$AccountCfg;->valueOf(I)Lcom/yftech/vehicle/internal/project/IProject$AccountCfg;

    move-result-object v1

    int-to-byte v2, v2

    int-to-byte p0, p0

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/yftech/vehicle/internal/project/IProject$PersonalMemoryInfo;-><init>(Lcom/yftech/vehicle/internal/project/IProject$OpertionType;Lcom/yftech/vehicle/internal/project/IProject$AccountCfg;BB)V

    return-object v3
.end method


# virtual methods
.method public parseByte(Lcom/yftech/vehicle/internal/project/IProject$PersonalMemoryInfo;)[B
    .locals 2

    const/4 p0, 0x5

    .line 141
    new-array p0, p0, [B

    const/4 v0, 0x0

    const/16 v1, -0x7a

    aput-byte v1, p0, v0

    const/4 v0, 0x1

    const/16 v1, 0x18

    aput-byte v1, p0, v0

    .line 144
    iget-object v0, p1, Lcom/yftech/vehicle/internal/project/IProject$PersonalMemoryInfo;->opObj:Lcom/yftech/vehicle/internal/project/IProject$OpertionObject;

    iget v0, v0, Lcom/yftech/vehicle/internal/project/IProject$OpertionObject;->value:I

    int-to-byte v0, v0

    const/4 v1, 0x2

    aput-byte v0, p0, v1

    .line 145
    iget-object v0, p1, Lcom/yftech/vehicle/internal/project/IProject$PersonalMemoryInfo;->opType:Lcom/yftech/vehicle/internal/project/IProject$OpertionType;

    iget v0, v0, Lcom/yftech/vehicle/internal/project/IProject$OpertionType;->value:I

    int-to-byte v0, v0

    const/4 v1, 0x3

    aput-byte v0, p0, v1

    .line 146
    iget-object p1, p1, Lcom/yftech/vehicle/internal/project/IProject$PersonalMemoryInfo;->accountCfg:Lcom/yftech/vehicle/internal/project/IProject$AccountCfg;

    iget p1, p1, Lcom/yftech/vehicle/internal/project/IProject$AccountCfg;->value:I

    int-to-byte p1, p1

    const/4 v0, 0x4

    aput-byte p1, p0, v0

    return-object p0
.end method
