.class public Lcom/yftech/vehicle/internal/adapter/ICarMisc$DeviceNode;
.super Ljava/lang/Object;
.source "ICarMisc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarMisc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceNode"
.end annotation


# instance fields
.field public apaConn:Z

.field public avmConn:Z

.field public hvAcConn:Z


# direct methods
.method private constructor <init>(ZZZ)V
    .locals 0

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    iput-boolean p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$DeviceNode;->hvAcConn:Z

    .line 349
    iput-boolean p2, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$DeviceNode;->avmConn:Z

    .line 350
    iput-boolean p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$DeviceNode;->apaConn:Z

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarMisc$DeviceNode;
    .locals 4

    and-int/lit8 v0, p0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    and-int/lit8 v3, p0, 0x2

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    and-int/lit8 p0, p0, 0x4

    if-nez p0, :cond_2

    move v1, v2

    .line 356
    :cond_2
    new-instance p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$DeviceNode;

    invoke-direct {p0, v0, v3, v1}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$DeviceNode;-><init>(ZZZ)V

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceNode{hvAcConn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$DeviceNode;->hvAcConn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "avmConn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$DeviceNode;->avmConn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "apaConn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$DeviceNode;->apaConn:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
