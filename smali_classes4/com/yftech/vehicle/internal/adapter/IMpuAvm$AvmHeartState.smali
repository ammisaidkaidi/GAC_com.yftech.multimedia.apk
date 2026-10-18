.class public final enum Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;
.super Ljava/lang/Enum;
.source "IMpuAvm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/IMpuAvm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AvmHeartState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;

.field public static final enum FAULT:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;

.field public static final enum NORMAL:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 91
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;

    const-string v1, "FAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;->FAULT:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;

    .line 92
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;

    const-string v1, "NORMAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;->NORMAL:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;

    .line 93
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;

    const-string v1, "__UNKNOWN__"

    const/4 v4, 0x2

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;

    const/4 v0, 0x3

    .line 90
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;->FAULT:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;->NORMAL:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 97
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;
    .locals 1

    .line 101
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;->FAULT:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;->FAULT:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;

    return-object p0

    .line 102
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;->NORMAL:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;->NORMAL:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;

    return-object p0

    .line 103
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;
    .locals 1

    .line 90
    const-class v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;
    .locals 1

    .line 90
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmHeartState;

    return-object v0
.end method
