.class public interface abstract Lcom/yftech/vehicle/internal/adapter/ICarParking;
.super Ljava/lang/Object;
.source "ICarParking.java"

# interfaces
.implements Lcom/yftech/vehicle/internal/adapter/IBaseApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/vehicle/internal/adapter/ICarParking$PASErrorFlag;,
        Lcom/yftech/vehicle/internal/adapter/ICarParking$PASWarnTone;,
        Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemFailureFlag;,
        Lcom/yftech/vehicle/internal/adapter/ICarParking$PASSystemType;
    }
.end annotation


# static fields
.field public static final PARKING_RADAR_ALARM:I = 0xfe

.field public static final PARKING_RADAR_ALARM_SETTING:I = 0xff

.field public static final PARKING_VOICE_SWITCH:I = 0x100

.field public static final PARKING_VOICE_SWITCH_SETTING:I = 0x101

.field public static final PAS_DISTANCE_FL:I = 0x88

.field public static final PAS_DISTANCE_FLSide:I = 0x8c

.field public static final PAS_DISTANCE_FL_MIDDLE:I = 0x83

.field public static final PAS_DISTANCE_FR:I = 0x87

.field public static final PAS_DISTANCE_FRSide:I = 0x8b

.field public static final PAS_DISTANCE_FR_MIDDLE:I = 0x84

.field public static final PAS_DISTANCE_RL:I = 0x86

.field public static final PAS_DISTANCE_RLSide:I = 0x8a

.field public static final PAS_DISTANCE_RL_MIDDLE:I = 0x81

.field public static final PAS_DISTANCE_RR:I = 0x85

.field public static final PAS_DISTANCE_RRSide:I = 0x89

.field public static final PAS_DISTANCE_RR_MIDDLE:I = 0x82

.field public static final PAS_ERROR_FLAG_OF_EEPROM:I = 0x91

.field public static final PAS_ERROR_FLAG_OF_IGN_VOLTAGE:I = 0x92

.field public static final PAS_ERROR_FLAG_RL:I = 0x90

.field public static final PAS_ERROR_FLAG_RL_MIDDLE:I = 0x8e

.field public static final PAS_ERROR_FLAG_RR:I = 0x8f

.field public static final PAS_ERROR_FLAG_RR_MIDDLE:I = 0x8d

.field public static final PAS_SYSTEM_FAILURE_FLAG:I = 0x7f

.field public static final PAS_SYSTEM_TYPE:I = 0x7e

.field public static final PAS_WARN_TONE:I = 0x80
