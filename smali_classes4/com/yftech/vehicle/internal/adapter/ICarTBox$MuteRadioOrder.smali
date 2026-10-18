.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;
.super Ljava/lang/Enum;
.source "ICarTBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarTBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MuteRadioOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;

.field public static final enum MUTE_RADIO_ORDER:Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;

.field public static final enum NO_MUTE_RADIO_ORDER:Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 14
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;

    const-string v1, "NO_MUTE_RADIO_ORDER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;->NO_MUTE_RADIO_ORDER:Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;

    .line 15
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;

    const-string v1, "MUTE_RADIO_ORDER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;->MUTE_RADIO_ORDER:Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;

    .line 16
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;

    const-string v1, "__UNKNOWN__"

    const/4 v4, 0x2

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;

    const/4 v0, 0x3

    .line 13
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;->NO_MUTE_RADIO_ORDER:Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;->MUTE_RADIO_ORDER:Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;
    .locals 1

    .line 24
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;->NO_MUTE_RADIO_ORDER:Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;->NO_MUTE_RADIO_ORDER:Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;

    return-object p0

    .line 25
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;->MUTE_RADIO_ORDER:Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;->MUTE_RADIO_ORDER:Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;

    return-object p0

    .line 26
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;
    .locals 1

    .line 13
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;
    .locals 1

    .line 13
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarTBox$MuteRadioOrder;

    return-object v0
.end method
