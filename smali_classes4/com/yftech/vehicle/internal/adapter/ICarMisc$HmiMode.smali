.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;
.super Ljava/lang/Enum;
.source "ICarMisc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarMisc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HmiMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

.field public static final enum ALL_OFF:Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

.field public static final enum CARLIFE:Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

.field public static final enum CARPLAY:Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

.field public static final enum DRIVING_RECORDER:Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

.field public static final enum NAVI:Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

.field public static final enum PHONE:Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

.field public static final enum SYSTEM_SETTING:Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

.field public static final enum VEHICLE_SETTING:Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

.field public static final enum VR:Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 121
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    const-string v1, "ALL_OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->ALL_OFF:Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    .line 122
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    const-string v1, "VR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->VR:Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    .line 123
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    const-string v1, "PHONE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->PHONE:Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    .line 124
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    const-string v1, "NAVI"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->NAVI:Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    .line 125
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    const-string v1, "VEHICLE_SETTING"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->VEHICLE_SETTING:Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    .line 126
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    const-string v1, "SYSTEM_SETTING"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->SYSTEM_SETTING:Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    .line 127
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    const-string v1, "DRIVING_RECORDER"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->DRIVING_RECORDER:Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    .line 128
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    const-string v1, "CARPLAY"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->CARPLAY:Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    .line 129
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    const-string v1, "CARLIFE"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->CARLIFE:Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    .line 130
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    const-string v1, "__UNKNOWN__"

    const/16 v11, 0x9

    const/4 v12, -0x1

    invoke-direct {v0, v1, v11, v12}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    const/16 v0, 0xa

    .line 120
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->ALL_OFF:Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->VR:Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->PHONE:Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->NAVI:Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->VEHICLE_SETTING:Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->SYSTEM_SETTING:Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->DRIVING_RECORDER:Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->CARPLAY:Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    aput-object v1, v0, v9

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->CARLIFE:Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    aput-object v1, v0, v10

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    aput-object v1, v0, v11

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 134
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;
    .locals 1

    .line 138
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->ALL_OFF:Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->ALL_OFF:Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    return-object p0

    .line 139
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->VR:Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->VR:Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    return-object p0

    .line 140
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->PHONE:Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->PHONE:Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    return-object p0

    .line 141
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->NAVI:Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->NAVI:Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    return-object p0

    .line 142
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->VEHICLE_SETTING:Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->VEHICLE_SETTING:Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    return-object p0

    .line 143
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->SYSTEM_SETTING:Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->SYSTEM_SETTING:Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    return-object p0

    .line 144
    :cond_5
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->DRIVING_RECORDER:Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->value:I

    if-ne p0, v0, :cond_6

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->DRIVING_RECORDER:Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    return-object p0

    .line 145
    :cond_6
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->CARPLAY:Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->value:I

    if-ne p0, v0, :cond_7

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->CARPLAY:Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    return-object p0

    .line 146
    :cond_7
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->CARLIFE:Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->value:I

    if-ne p0, v0, :cond_8

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->CARLIFE:Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    return-object p0

    .line 147
    :cond_8
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;
    .locals 1

    .line 120
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;
    .locals 1

    .line 120
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;

    return-object v0
.end method
