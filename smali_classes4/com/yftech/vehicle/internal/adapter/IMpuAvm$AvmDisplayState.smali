.class public final enum Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;
.super Ljava/lang/Enum;
.source "IMpuAvm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/IMpuAvm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AvmDisplayState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;

.field public static final enum FULL_SCREEN:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;

.field public static final enum OFF:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 15
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;->OFF:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;

    .line 16
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;

    const-string v1, "FULL_SCREEN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;->FULL_SCREEN:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;

    .line 17
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;

    const-string v1, "__UNKNOWN__"

    const/4 v4, 0x2

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;

    const/4 v0, 0x3

    .line 14
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;->OFF:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;->FULL_SCREEN:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;
    .locals 1

    .line 25
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;->OFF:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;->OFF:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;

    return-object p0

    .line 26
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;->FULL_SCREEN:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;->FULL_SCREEN:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;

    return-object p0

    .line 27
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;
    .locals 1

    .line 14
    const-class v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;
    .locals 1

    .line 14
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;

    return-object v0
.end method
