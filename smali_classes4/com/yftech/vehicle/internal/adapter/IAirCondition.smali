.class public interface abstract Lcom/yftech/vehicle/internal/adapter/IAirCondition;
.super Ljava/lang/Object;
.source "IAirCondition.java"

# interfaces
.implements Lcom/yftech/vehicle/internal/adapter/IBaseApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderAutoMode;,
        Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;,
        Lcom/yftech/vehicle/internal/adapter/IAirCondition$OnOffByVrState;,
        Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;,
        Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;,
        Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;,
        Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;,
        Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;,
        Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;,
        Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;,
        Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;,
        Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;
    }
.end annotation


# static fields
.field public static final AC_BUTTON_SETTING:I = 0x6

.field public static final AC_DISPLAY_POPUP_STATE:I = 0x191

.field public static final AC_ENVIRONMENT_TEMPERATURE:I = 0xc4

.field public static final AC_OUT_AIRQUALITY_LEVEL:I = 0xc3

.field public static final AC_STATE:I = 0x4e

.field public static final AC_VR_ON_OFF_SETTING:I = 0x1bd

.field public static final AC_WORKING_POWER:I = -0x1

.field public static final AIR_CIRCULATION_MODE_OF_AUTO_MODE:I = 0x55

.field public static final AIR_CIRCULATION_MODE_OF_AUTO_MODE_SETTING:I = 0xd

.field public static final AIR_CIRCULATION_STATE:I = 0x52

.field public static final AIR_SELF_DRYING:I = 0x107

.field public static final AIR_SELF_DRYING_SETTING:I = 0x108

.field public static final AIR_UNLOCK_VENTILATION:I = 0x109

.field public static final AIR_UNLOCK_VENTILATION_SETTING:I = 0x10a

.field public static final AUTO_BUTTON_SETTING:I = 0xb

.field public static final AUTO_DEFORST:I = -0x1

.field public static final AUTO_DEFORST_BUTTON_SETTING:I = -0x1

.field public static final AUTO_MODE:I = 0x53

.field public static final BATTERY_COOL_STATE:I = 0xc2

.field public static final BATTERY_FH_STATE:I = 0xc0

.field public static final BATTERY_PTC_STATE:I = 0xc1

.field public static final BODYDISALARM_VENT_BUTTON_STATE:I = -0x1

.field public static final BODYDISALARM_VENT_STATE:I = 0xbf

.field public static final CIRCULATION_BUTTON_SETTING:I = 0xa

.field public static final COMFORT_CURVE_MODE:I = 0x56

.field public static final COMFORT_CURVE_SETTING:I = 0xe

.field public static final CUP_HOLDER_AUTO_MODE:I = 0x22d

.field public static final CUP_HOLDER_AUTO_MODE_SETTING:I = 0x22e

.field public static final CUP_HOLDER_HEAT_COOL_MODE:I = 0x22b

.field public static final CUP_HOLDER_HEAT_COOL_MODE_SETTING:I = 0x22c

.field public static final DRIVER_TEMPERATURE:I = 0x4a

.field public static final DRIVER_TEMPERATURE_SETTING:I = 0x0

.field public static final DUAL_SYNC_BUTTON_SETTING:I = 0x8

.field public static final DUAL_SYNC_STATE:I = 0x50

.field public static final EcoMode_SETTING:I = -0x1

.field public static final EcoMode_STATE:I = -0x1

.field public static final FAN_SPEED_OF_AUTO_MODE:I = 0x54

.field public static final FAN_SPEED_OF_AUTO_MODE_SETTING:I = 0xc

.field public static final FRONT_DEFROST_BUTTON_SETTING:I = 0x5

.field public static final FRONT_EFROST_STATE:I = 0x194

.field public static final ION_BUTTON_SETTING:I = 0x9

.field public static final ION_STATE:I = 0x51

.field public static final OFF_BUTTON_SETTING:I = 0x3

.field public static final ONE_BUTTON_VENTLAION_SETTING:I = 0x1a4

.field public static final ONE_BUTTON_VENTLAION_STATE:I = 0x1a3

.field public static final PASSENGER_TEMPERATURE:I = 0x4b

.field public static final PASSENGER_TEMPERATURE_SETTING:I = 0x1

.field public static final POWER_BUTTON_STATE:I = -0x1

.field public static final POWER_STATE:I = -0x1

.field public static final REAR_AC_AUTO_MODE:I = 0xe7

.field public static final REAR_AC_AUTO_MODE_SETTING:I = 0xe8

.field public static final REAR_AC_OFF_BUTTON_SETTING:I = 0xeb

.field public static final REAR_AC_TEMPERATURE:I = 0xec

.field public static final REAR_AC_TEMPERATURE_SETTING:I = 0xed

.field public static final REAR_AC_WIND_MODE:I = 0xee

.field public static final REAR_AC_WIND_MODE_SETTING:I = 0xef

.field public static final REAR_AC_WIND_SPEED:I = 0xe9

.field public static final REAR_AC_WIND_SPEED_SETTING:I = 0xea

.field public static final REAR_DEFROST_BUTTON_SETTING:I = 0x7

.field public static final REAR_DEFROST_STATE:I = 0x4f

.field public static final TEMPERATURE_DEC_BUTTON_SETTING:I = 0x1b2

.field public static final TEMPERATURE_DEC_VD_SETTING:I = 0x1b3

.field public static final TEMPERATURE_FR_DEC_BUTTON_SETTING:I = 0x20c

.field public static final TEMPERATURE_FR_DEC_VD_SETTING:I = 0x20d

.field public static final TEMPERATURE_FR_INC_BUTTON_SETTING:I = 0x20a

.field public static final TEMPERATURE_FR_INC_VD_SETTING:I = 0x20b

.field public static final TEMPERATURE_INC_BUTTON_SETTING:I = 0x1b0

.field public static final TEMPERATURE_INC_VD_SETTING:I = 0x1b1

.field public static final WINDMODE_BUTTON_SETTING:I = 0x216

.field public static final WINDSPEED_DEC_BUTTON_SETTING:I = 0x219

.field public static final WINDSPEED_INC_BUTTON_SETTING:I = 0x218

.field public static final WIND_MODE:I = 0x4d

.field public static final WIND_MODE_SETTING:I = 0x4

.field public static final WIND_SPEED:I = 0x4c

.field public static final WIND_SPEED_SETTING:I = 0x2
