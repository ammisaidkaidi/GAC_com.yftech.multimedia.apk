.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;
.super Ljava/lang/Enum;
.source "ICarLight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AtmosphereLampWorkMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

.field public static final enum COLOR_CHOOSE_MODE:Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

.field public static final enum COMBINED_COLOR_MODE1:Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

.field public static final enum COMBINED_COLOR_MODE2:Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

.field public static final enum COMBINED_COLOR_MODE3:Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

.field public static final enum DRIVER_MODE:Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

.field public static final enum OFF:Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 14
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    .line 15
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    const-string v1, "COLOR_CHOOSE_MODE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;->COLOR_CHOOSE_MODE:Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    .line 16
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    const-string v1, "DRIVER_MODE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;->DRIVER_MODE:Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    .line 17
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    const-string v1, "COMBINED_COLOR_MODE1"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;->COMBINED_COLOR_MODE1:Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    .line 18
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    const-string v1, "COMBINED_COLOR_MODE2"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;->COMBINED_COLOR_MODE2:Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    .line 19
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    const-string v1, "COMBINED_COLOR_MODE3"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;->COMBINED_COLOR_MODE3:Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    .line 20
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    const-string v1, "__UNKNOWN__"

    const/4 v8, 0x6

    const/4 v9, -0x1

    invoke-direct {v0, v1, v8, v9}, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    const/4 v0, 0x7

    .line 13
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;->COLOR_CHOOSE_MODE:Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;->DRIVER_MODE:Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;->COMBINED_COLOR_MODE1:Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;->COMBINED_COLOR_MODE2:Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;->COMBINED_COLOR_MODE3:Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    aput-object v1, v0, v8

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;
    .locals 1

    .line 28
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    return-object p0

    .line 29
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;->COLOR_CHOOSE_MODE:Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;->COLOR_CHOOSE_MODE:Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    return-object p0

    .line 30
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;->DRIVER_MODE:Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;->DRIVER_MODE:Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    return-object p0

    .line 31
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;->COMBINED_COLOR_MODE1:Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;->COMBINED_COLOR_MODE1:Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    return-object p0

    .line 32
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;->COMBINED_COLOR_MODE2:Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;->COMBINED_COLOR_MODE2:Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    return-object p0

    .line 33
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;->COMBINED_COLOR_MODE3:Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;->COMBINED_COLOR_MODE3:Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    return-object p0

    .line 34
    :cond_5
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;
    .locals 1

    .line 13
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;
    .locals 1

    .line 13
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    return-object v0
.end method
