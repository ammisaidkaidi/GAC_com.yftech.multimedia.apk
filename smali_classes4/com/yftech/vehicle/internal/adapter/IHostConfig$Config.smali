.class public final enum Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;
.super Ljava/lang/Enum;
.source "IHostConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/IHostConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Config"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

.field public static final enum AUTO_PARKING_BACKGROUND_PUSH:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

.field public static final enum AUX:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

.field public static final enum BT:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

.field public static final enum CARLIFE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

.field public static final enum CARPLAY:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

.field public static final enum CAR_MODE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

.field public static final enum CELLULAR_NETWORK:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

.field public static final enum EASY_CONNECT:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

.field public static final enum ENGINEERING_MODE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

.field public static final enum ETHERNET_NET:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

.field public static final enum EXPRESS_MESSAGE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

.field public static final enum FACE_ID:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

.field public static final enum HICAR:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

.field public static final enum HVAC_DISPLAY_TIME:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

.field public static final enum INTERFACE_SOUND:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

.field public static final enum IPHONE_DEFAULT_CONNECTING:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

.field public static final enum IPOD:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

.field public static final enum KEYTONE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

.field public static final enum LANGUAGE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

.field public static final enum LEFT_RIGHT_HAND_DRIVE_VEHICLES:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

.field public static final enum MAP_PREFERENCES:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

.field public static final enum MEDIA_VOLUME_DELAY:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

.field public static final enum MESSAGE_NOTIFICATION:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

.field public static final enum NAVIGATION_SIGNAL_MODE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

.field public static final enum NUMBER_OF_SCREEN:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

.field public static final enum RADAR_SWITCH:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

.field public static final enum RADAR_VOLUME_ADJUSTMENT:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

.field public static final enum RADIO_CONFIGURATION:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

.field public static final enum RADIO_DAB:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

.field public static final enum RADIO_DAB_RDS_CONFIGURATION:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

.field public static final enum RADIO_FREQUENCY:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

.field public static final enum RADIO_RDS:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

.field public static final enum REMINDING_MAINTENANCE_CYCLE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

.field public static final enum REMINDING_RESET_CYCLE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

.field public static final enum REPEAT_SETTING:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

.field public static final enum SCENE_SWITCH:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

.field public static final enum SCREENSAVER:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

.field public static final enum SCREEN_SWITCH_DELAY:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

.field public static final enum SDVC_CURVE_CONFIGURATION:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

.field public static final enum SHIFT_SOUND:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

.field public static final enum TRAFFIC_DISPLAY:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

.field public static final enum USB:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

.field public static final enum USER_MANUAL:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

.field public static final enum WALLPAPER:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

.field public static final enum WIFI:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;


# instance fields
.field public final bitSize:B

.field public final byteIndex:B

.field public final startBit:B


# direct methods
.method static constructor <clinit>()V
    .locals 27

    .line 15
    new-instance v6, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const-string v1, "LANGUAGE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->LANGUAGE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    .line 17
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const-string v8, "NUMBER_OF_SCREEN"

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x5

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->NUMBER_OF_SCREEN:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    .line 19
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const-string v2, "CAR_MODE"

    const/4 v3, 0x2

    const/4 v5, 0x6

    const/4 v6, 0x7

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->CAR_MODE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    .line 21
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const-string v1, "CARPLAY"

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->CARPLAY:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    .line 23
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const-string v1, "CARLIFE"

    const/4 v5, 0x4

    invoke-direct {v0, v1, v5, v4, v4}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->CARLIFE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    .line 25
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const-string v1, "HICAR"

    const/4 v6, 0x5

    const/4 v7, 0x2

    invoke-direct {v0, v1, v6, v4, v7}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->HICAR:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    .line 27
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const-string v1, "IPHONE_DEFAULT_CONNECTING"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v4, v3}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->IPHONE_DEFAULT_CONNECTING:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    .line 29
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const-string v1, "EASY_CONNECT"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v4, v5}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->EASY_CONNECT:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    .line 31
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const-string v11, "WIFI"

    const/16 v12, 0x8

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->WIFI:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    .line 33
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const-string v1, "BT"

    const/16 v10, 0x9

    invoke-direct {v0, v1, v10, v7, v7}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->BT:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    .line 35
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const-string v1, "CELLULAR_NETWORK"

    const/16 v11, 0xa

    invoke-direct {v0, v1, v11, v7, v3}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->CELLULAR_NETWORK:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    .line 37
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const-string v1, "AUX"

    const/16 v12, 0xb

    invoke-direct {v0, v1, v12, v7, v5}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->AUX:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    .line 39
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const-string v1, "IPOD"

    const/16 v13, 0xc

    invoke-direct {v0, v1, v13, v7, v6}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->IPOD:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    .line 41
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const-string v15, "USB"

    const/16 v16, 0xd

    const/16 v17, 0x2

    const/16 v18, 0x6

    const/16 v19, 0x7

    move-object v14, v0

    invoke-direct/range {v14 .. v19}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->USB:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    .line 43
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const-string v1, "ETHERNET_NET"

    const/16 v14, 0xe

    invoke-direct {v0, v1, v14, v3, v2}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->ETHERNET_NET:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    .line 45
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const-string v16, "RADIO_CONFIGURATION"

    const/16 v17, 0xf

    const/16 v18, 0x3

    const/16 v19, 0x2

    const/16 v20, 0x3

    move-object v15, v0

    invoke-direct/range {v15 .. v20}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->RADIO_CONFIGURATION:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    .line 47
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const-string v1, "RADIO_DAB"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15, v3, v5}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->RADIO_DAB:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    .line 49
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const-string v1, "RADIO_RDS"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15, v3, v6}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->RADIO_RDS:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    .line 51
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const-string v22, "RADIO_DAB_RDS_CONFIGURATION"

    const/16 v23, 0x12

    const/16 v24, 0x3

    const/16 v25, 0x4

    const/16 v26, 0x5

    move-object/from16 v21, v0

    invoke-direct/range {v21 .. v26}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->RADIO_DAB_RDS_CONFIGURATION:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    .line 53
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const-string v16, "RADAR_VOLUME_ADJUSTMENT"

    const/16 v17, 0x13

    const/16 v19, 0x6

    const/16 v20, 0x7

    move-object v15, v0

    invoke-direct/range {v15 .. v20}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->RADAR_VOLUME_ADJUSTMENT:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    .line 55
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const-string v1, "SDVC_CURVE_CONFIGURATION"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15, v5, v2}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->SDVC_CURVE_CONFIGURATION:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    .line 57
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const-string v22, "HVAC_DISPLAY_TIME"

    const/16 v23, 0x15

    const/16 v24, 0x4

    const/16 v25, 0x1

    const/16 v26, 0x3

    move-object/from16 v21, v0

    invoke-direct/range {v21 .. v26}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->HVAC_DISPLAY_TIME:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    .line 59
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const-string v16, "RADIO_FREQUENCY"

    const/16 v17, 0x16

    const/16 v18, 0x4

    const/16 v19, 0x4

    move-object v15, v0

    invoke-direct/range {v15 .. v20}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->RADIO_FREQUENCY:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    .line 61
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const-string v22, "MEDIA_VOLUME_DELAY"

    const/16 v23, 0x17

    const/16 v24, 0x5

    const/16 v25, 0x0

    const/16 v26, 0x2

    move-object/from16 v21, v0

    invoke-direct/range {v21 .. v26}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->MEDIA_VOLUME_DELAY:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    .line 63
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const-string v16, "SCREEN_SWITCH_DELAY"

    const/16 v17, 0x18

    const/16 v18, 0x5

    const/16 v19, 0x3

    const/16 v20, 0x5

    move-object v15, v0

    invoke-direct/range {v15 .. v20}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->SCREEN_SWITCH_DELAY:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    .line 65
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const-string v1, "RADAR_SWITCH"

    const/16 v15, 0x19

    invoke-direct {v0, v1, v15, v6, v8}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->RADAR_SWITCH:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    .line 67
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const-string v1, "WALLPAPER"

    const/16 v15, 0x1a

    invoke-direct {v0, v1, v15, v8, v2}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->WALLPAPER:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    .line 69
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const-string v1, "AUTO_PARKING_BACKGROUND_PUSH"

    const/16 v15, 0x1b

    invoke-direct {v0, v1, v15, v8, v4}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->AUTO_PARKING_BACKGROUND_PUSH:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    .line 71
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const-string v22, "MESSAGE_NOTIFICATION"

    const/16 v23, 0x1c

    const/16 v24, 0x6

    const/16 v25, 0x2

    const/16 v26, 0x3

    move-object/from16 v21, v0

    invoke-direct/range {v21 .. v26}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->MESSAGE_NOTIFICATION:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    .line 73
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const-string v16, "EXPRESS_MESSAGE"

    const/16 v17, 0x1d

    const/16 v18, 0x6

    const/16 v19, 0x4

    move-object v15, v0

    invoke-direct/range {v15 .. v20}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->EXPRESS_MESSAGE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    .line 75
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const-string v22, "MAP_PREFERENCES"

    const/16 v23, 0x1e

    const/16 v25, 0x6

    const/16 v26, 0x7

    move-object/from16 v21, v0

    invoke-direct/range {v21 .. v26}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->MAP_PREFERENCES:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    .line 77
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const-string v16, "NAVIGATION_SIGNAL_MODE"

    const/16 v17, 0x1f

    const/16 v18, 0x7

    const/16 v19, 0x0

    const/16 v20, 0x3

    move-object v15, v0

    invoke-direct/range {v15 .. v20}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->NAVIGATION_SIGNAL_MODE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    .line 79
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const-string v22, "KEYTONE"

    const/16 v23, 0x20

    const/16 v24, 0x7

    const/16 v25, 0x4

    const/16 v26, 0x5

    move-object/from16 v21, v0

    invoke-direct/range {v21 .. v26}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->KEYTONE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    .line 81
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const-string v16, "INTERFACE_SOUND"

    const/16 v17, 0x21

    const/16 v19, 0x6

    const/16 v20, 0x7

    move-object v15, v0

    invoke-direct/range {v15 .. v20}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->INTERFACE_SOUND:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    .line 83
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const-string v1, "FACE_ID"

    const/16 v15, 0x8

    const/16 v14, 0x22

    invoke-direct {v0, v1, v14, v15, v2}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->FACE_ID:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    .line 85
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const-string v1, "SHIFT_SOUND"

    const/16 v14, 0x23

    invoke-direct {v0, v1, v14, v15, v4}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->SHIFT_SOUND:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    .line 87
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const-string v1, "SCENE_SWITCH"

    const/16 v14, 0x24

    invoke-direct {v0, v1, v14, v15, v7}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->SCENE_SWITCH:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    .line 89
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const-string v1, "TRAFFIC_DISPLAY"

    const/16 v14, 0x25

    invoke-direct {v0, v1, v14, v15, v3}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->TRAFFIC_DISPLAY:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    .line 91
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const-string v1, "SCREENSAVER"

    const/16 v14, 0x26

    invoke-direct {v0, v1, v14, v15, v8}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->SCREENSAVER:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    .line 93
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const-string v1, "USER_MANUAL"

    const/16 v14, 0x27

    invoke-direct {v0, v1, v14, v15, v9}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->USER_MANUAL:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    .line 95
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const-string v1, "ENGINEERING_MODE"

    const/16 v14, 0x28

    invoke-direct {v0, v1, v14, v10, v2}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->ENGINEERING_MODE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    .line 97
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const-string v1, "REMINDING_MAINTENANCE_CYCLE"

    const/16 v14, 0x29

    invoke-direct {v0, v1, v14, v10, v4}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->REMINDING_MAINTENANCE_CYCLE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    .line 99
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const-string v1, "REMINDING_RESET_CYCLE"

    const/16 v14, 0x2a

    invoke-direct {v0, v1, v14, v10, v7}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->REMINDING_RESET_CYCLE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    .line 101
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const-string v1, "REPEAT_SETTING"

    const/16 v14, 0x2b

    invoke-direct {v0, v1, v14, v10, v3}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->REPEAT_SETTING:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    .line 103
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const-string v1, "LEFT_RIGHT_HAND_DRIVE_VEHICLES"

    const/16 v14, 0x2c

    invoke-direct {v0, v1, v14, v10, v5}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->LEFT_RIGHT_HAND_DRIVE_VEHICLES:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    .line 104
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const-string v1, "__UNKNOWN__"

    const/16 v14, 0x2d

    const/4 v13, -0x1

    const/4 v12, -0x1

    invoke-direct {v0, v1, v14, v13, v12}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const/16 v0, 0x2e

    .line 13
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->LANGUAGE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->NUMBER_OF_SCREEN:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->CAR_MODE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->CARPLAY:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->CARLIFE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->HICAR:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->IPHONE_DEFAULT_CONNECTING:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->EASY_CONNECT:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    aput-object v1, v0, v9

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->WIFI:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    aput-object v1, v0, v15

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->BT:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    aput-object v1, v0, v10

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->CELLULAR_NETWORK:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    aput-object v1, v0, v11

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->AUX:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->IPOD:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->USB:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->ETHERNET_NET:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->RADIO_CONFIGURATION:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->RADIO_DAB:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->RADIO_RDS:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->RADIO_DAB_RDS_CONFIGURATION:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->RADAR_VOLUME_ADJUSTMENT:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->SDVC_CURVE_CONFIGURATION:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->HVAC_DISPLAY_TIME:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->RADIO_FREQUENCY:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->MEDIA_VOLUME_DELAY:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->SCREEN_SWITCH_DELAY:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->RADAR_SWITCH:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->WALLPAPER:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->AUTO_PARKING_BACKGROUND_PUSH:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->MESSAGE_NOTIFICATION:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->EXPRESS_MESSAGE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->MAP_PREFERENCES:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->NAVIGATION_SIGNAL_MODE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->KEYTONE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->INTERFACE_SOUND:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->FACE_ID:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->SHIFT_SOUND:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->SCENE_SWITCH:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->TRAFFIC_DISPLAY:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->SCREENSAVER:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->USER_MANUAL:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->ENGINEERING_MODE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->REMINDING_MAINTENANCE_CYCLE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->REMINDING_RESET_CYCLE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->REPEAT_SETTING:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->LEFT_RIGHT_HAND_DRIVE_VEHICLES:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    int-to-byte p1, p3

    .line 116
    iput-byte p1, p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->byteIndex:B

    int-to-byte p1, p4

    .line 117
    iput-byte p1, p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->startBit:B

    const/4 p1, 0x1

    .line 118
    iput-byte p1, p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->bitSize:B

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    int-to-byte p1, p3

    .line 110
    iput-byte p1, p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->byteIndex:B

    int-to-byte p1, p4

    .line 111
    iput-byte p1, p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->startBit:B

    sub-int/2addr p5, p4

    add-int/lit8 p5, p5, 0x1

    int-to-byte p1, p5

    .line 112
    iput-byte p1, p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->bitSize:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;
    .locals 1

    .line 13
    const-class v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;
    .locals 1

    .line 13
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/IHostConfig$Config;

    return-object v0
.end method
