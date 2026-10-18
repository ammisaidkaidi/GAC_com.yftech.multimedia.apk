.class public final enum Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;
.super Ljava/lang/Enum;
.source "IAirCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/IAirCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WindSpeed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

.field public static final enum LEVEL_1:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

.field public static final enum LEVEL_2:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

.field public static final enum LEVEL_3:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

.field public static final enum LEVEL_4:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

.field public static final enum LEVEL_5:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

.field public static final enum LEVEL_6:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

.field public static final enum LEVEL_7:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

.field public static final enum OFF:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 15
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    const-string v1, "LEVEL_1"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->LEVEL_1:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    .line 16
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    const-string v1, "LEVEL_2"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v2, v4}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->LEVEL_2:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    .line 17
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    const-string v1, "LEVEL_3"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->LEVEL_3:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    .line 19
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    const-string v1, "LEVEL_4"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->LEVEL_4:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    .line 20
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    const-string v1, "LEVEL_5"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->LEVEL_5:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    .line 21
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    const-string v1, "LEVEL_6"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v7, v8}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->LEVEL_6:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    .line 23
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    const-string v1, "LEVEL_7"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v8, v9}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->LEVEL_7:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    .line 24
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v9, v3}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->OFF:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    .line 25
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    const-string v1, "__UNKNOWN__"

    const/16 v10, 0x8

    const/4 v11, -0x1

    invoke-direct {v0, v1, v10, v11}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    const/16 v0, 0x9

    .line 13
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->LEVEL_1:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->LEVEL_2:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->LEVEL_3:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->LEVEL_4:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->LEVEL_5:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->LEVEL_6:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->LEVEL_7:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->OFF:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    aput-object v1, v0, v9

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    aput-object v1, v0, v10

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;
    .locals 1

    .line 33
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->LEVEL_1:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->LEVEL_1:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    return-object p0

    .line 34
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->LEVEL_2:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->LEVEL_2:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    return-object p0

    .line 35
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->LEVEL_3:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->LEVEL_3:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    return-object p0

    .line 36
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->LEVEL_4:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->LEVEL_4:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    return-object p0

    .line 37
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->LEVEL_5:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->LEVEL_5:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    return-object p0

    .line 38
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->LEVEL_6:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->LEVEL_6:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    return-object p0

    .line 39
    :cond_5
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->LEVEL_7:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->value:I

    if-ne p0, v0, :cond_6

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->LEVEL_7:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    return-object p0

    .line 40
    :cond_6
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->OFF:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->value:I

    if-ne p0, v0, :cond_7

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->OFF:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    return-object p0

    .line 41
    :cond_7
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;
    .locals 1

    .line 13
    const-class v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;
    .locals 1

    .line 13
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    return-object v0
.end method
