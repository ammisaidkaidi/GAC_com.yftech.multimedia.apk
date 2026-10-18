.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;
.super Ljava/lang/Enum;
.source "ICarDrive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarDrive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EspState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;

.field public static final enum ESP_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;

.field public static final enum ESP_OFF:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;

.field public static final enum ESP_ON:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;

.field public static final enum TCS_OFF:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;

.field public static final enum TCS_OFF_VDC_OFF:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;


# instance fields
.field private final rx:I

.field private final tx:I

.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 144
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;

    const-string v1, "ESP_ON"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;->ESP_ON:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;

    .line 145
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;

    const-string v1, "TCS_OFF"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;->TCS_OFF:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;

    .line 146
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;

    const-string v1, "ESP_OFF"

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;->ESP_OFF:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;

    .line 147
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;

    const-string v1, "ESP_FAILURE"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v6, v5}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;->ESP_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;

    .line 148
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;

    const-string v1, "TCS_OFF_VDC_OFF"

    const/4 v7, 0x4

    const/4 v8, -0x2

    invoke-direct {v0, v1, v7, v8, v6}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;->TCS_OFF_VDC_OFF:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;

    .line 149
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;

    const-string v1, "__UNKNOWN__"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;

    const/4 v0, 0x6

    .line 143
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;->ESP_ON:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;->TCS_OFF:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;->ESP_OFF:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;->ESP_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;->TCS_OFF_VDC_OFF:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;

    aput-object v1, v0, v8

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 153
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 154
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;->rx:I

    .line 155
    iput p4, p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;->tx:I

    .line 156
    iget p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;->tx:I

    iput p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;
    .locals 1

    .line 160
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;->ESP_ON:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;->rx:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;->ESP_ON:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;

    return-object p0

    .line 161
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;->TCS_OFF:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;->rx:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;->TCS_OFF:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;

    return-object p0

    .line 162
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;->ESP_OFF:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;->rx:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;->ESP_OFF:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;

    return-object p0

    .line 163
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;->ESP_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;->rx:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;->ESP_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;

    return-object p0

    .line 164
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;->TCS_OFF_VDC_OFF:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;->rx:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;->TCS_OFF_VDC_OFF:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;

    return-object p0

    .line 165
    :cond_4
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;
    .locals 1

    .line 143
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;
    .locals 1

    .line 143
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;

    return-object v0
.end method
