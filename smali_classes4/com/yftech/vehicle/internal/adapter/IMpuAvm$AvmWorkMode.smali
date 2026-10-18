.class public final enum Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;
.super Ljava/lang/Enum;
.source "IMpuAvm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/IMpuAvm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AvmWorkMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;

.field public static final enum DEBUG:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;

.field public static final enum INVALID:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;

.field public static final enum NORMAL:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;

.field public static final enum UPGRADING:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 36
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;->INVALID:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;

    .line 37
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;

    const-string v1, "UPGRADING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;->UPGRADING:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;

    .line 38
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;

    const-string v1, "DEBUG"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;->DEBUG:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;

    .line 39
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;

    const-string v1, "NORMAL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v3}, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;->NORMAL:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;

    .line 40
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;

    const-string v1, "__UNKNOWN__"

    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;

    const/4 v0, 0x5

    .line 35
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;->INVALID:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;->UPGRADING:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;->DEBUG:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;->NORMAL:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;
    .locals 1

    .line 48
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;->INVALID:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;->INVALID:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;

    return-object p0

    .line 49
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;->UPGRADING:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;->UPGRADING:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;

    return-object p0

    .line 50
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;->DEBUG:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;->DEBUG:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;

    return-object p0

    .line 51
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;->NORMAL:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;->NORMAL:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;

    return-object p0

    .line 52
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;
    .locals 1

    .line 35
    const-class v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;
    .locals 1

    .line 35
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmWorkMode;

    return-object v0
.end method
