.class public final enum Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;
.super Ljava/lang/Enum;
.source "IMpuAvm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/IMpuAvm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AvmFullScreenSwtich"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;

.field public static final enum DISABLE:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;

.field public static final enum ENABLE:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 111
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;

    const-string v1, "DISABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;->DISABLE:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;

    .line 112
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;

    const-string v1, "ENABLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;->ENABLE:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;

    .line 113
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;

    const-string v1, "__UNKNOWN__"

    const/4 v4, 0x2

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;

    const/4 v0, 0x3

    .line 110
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;->DISABLE:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;->ENABLE:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 117
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;
    .locals 1

    .line 120
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;->DISABLE:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;->DISABLE:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;

    return-object p0

    .line 121
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;->ENABLE:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;->ENABLE:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;

    return-object p0

    .line 122
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;
    .locals 1

    .line 110
    const-class v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;
    .locals 1

    .line 110
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmFullScreenSwtich;

    return-object v0
.end method
