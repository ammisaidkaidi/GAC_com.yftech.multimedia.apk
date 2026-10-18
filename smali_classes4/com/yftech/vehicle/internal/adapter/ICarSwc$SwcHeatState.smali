.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;
.super Ljava/lang/Enum;
.source "ICarSwc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarSwc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SwcHeatState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;

.field public static final enum HEATING:Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;

.field public static final enum OFF:Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;

.field public static final enum PRESERVATION:Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 14
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;

    .line 15
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;

    const-string v1, "HEATING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;->HEATING:Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;

    .line 16
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;

    const-string v1, "PRESERVATION"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;->PRESERVATION:Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;

    .line 17
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;

    const-string v1, "__UNKNOWN__"

    const/4 v5, 0x3

    const/4 v6, -0x1

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;

    const/4 v0, 0x4

    .line 13
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;->HEATING:Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;->PRESERVATION:Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;

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
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;
    .locals 1

    .line 25
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;

    return-object p0

    .line 26
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;->HEATING:Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;->HEATING:Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;

    return-object p0

    .line 27
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;->PRESERVATION:Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;->PRESERVATION:Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;

    return-object p0

    .line 28
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;
    .locals 1

    .line 13
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;
    .locals 1

    .line 13
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarSwc$SwcHeatState;

    return-object v0
.end method
