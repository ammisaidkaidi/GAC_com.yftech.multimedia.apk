.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;
.super Ljava/lang/Enum;
.source "ICarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WCMCtlFailureState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

.field public static final enum INTERNAL_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

.field public static final enum NFC_CARD_DETECTED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

.field public static final enum NO_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

.field public static final enum OFOD:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

.field public static final enum OVER_POWER_PROTECTED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

.field public static final enum OVER_TEMPERATURE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

.field public static final enum RFOD:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

.field public static final enum SMARTPHONE_NO_RESPONSE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

.field public static final enum VOLTAGE_PROTECTED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 906
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    const-string v1, "NO_FAILURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->NO_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    .line 907
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    const-string v1, "OVER_TEMPERATURE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->OVER_TEMPERATURE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    .line 908
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    const-string v1, "RFOD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->RFOD:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    .line 909
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    const-string v1, "VOLTAGE_PROTECTED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->VOLTAGE_PROTECTED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    .line 910
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    const-string v1, "OVER_POWER_PROTECTED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->OVER_POWER_PROTECTED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    .line 911
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    const-string v1, "INTERNAL_FAILURE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->INTERNAL_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    .line 912
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    const-string v1, "SMARTPHONE_NO_RESPONSE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->SMARTPHONE_NO_RESPONSE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    .line 913
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    const-string v1, "OFOD"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->OFOD:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    .line 914
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    const-string v1, "NFC_CARD_DETECTED"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->NFC_CARD_DETECTED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    .line 915
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    const-string v1, "__UNKNOWN__"

    const/16 v11, 0x9

    const/4 v12, -0x1

    invoke-direct {v0, v1, v11, v12}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    const/16 v0, 0xa

    .line 905
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->NO_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->OVER_TEMPERATURE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->RFOD:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->VOLTAGE_PROTECTED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->OVER_POWER_PROTECTED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->INTERNAL_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->SMARTPHONE_NO_RESPONSE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->OFOD:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    aput-object v1, v0, v9

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->NFC_CARD_DETECTED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    aput-object v1, v0, v10

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    aput-object v1, v0, v11

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 918
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 919
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;
    .locals 1

    .line 923
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->NO_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->NO_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    return-object p0

    .line 924
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->OVER_TEMPERATURE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->OVER_TEMPERATURE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    return-object p0

    .line 925
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->RFOD:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->RFOD:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    return-object p0

    .line 926
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->VOLTAGE_PROTECTED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->VOLTAGE_PROTECTED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    return-object p0

    .line 927
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->OVER_POWER_PROTECTED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->OVER_POWER_PROTECTED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    return-object p0

    .line 928
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->INTERNAL_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->INTERNAL_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    return-object p0

    .line 929
    :cond_5
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->SMARTPHONE_NO_RESPONSE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->value:I

    if-ne p0, v0, :cond_6

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->SMARTPHONE_NO_RESPONSE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    return-object p0

    .line 930
    :cond_6
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->OFOD:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->value:I

    if-ne p0, v0, :cond_7

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->OFOD:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    return-object p0

    .line 931
    :cond_7
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->NFC_CARD_DETECTED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->value:I

    if-ne p0, v0, :cond_8

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->NFC_CARD_DETECTED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    return-object p0

    .line 932
    :cond_8
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;
    .locals 1

    .line 905
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;
    .locals 1

    .line 905
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;

    return-object v0
.end method
