.class public interface abstract Lcom/yftech/vehicle/internal/adapter/ICarDoor;
.super Ljava/lang/Object;
.source "ICarDoor.java"

# interfaces
.implements Lcom/yftech/vehicle/internal/adapter/IBaseApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockState;,
        Lcom/yftech/vehicle/internal/adapter/ICarDoor$EngineHoodState;,
        Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;,
        Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorOperation;,
        Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;,
        Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;,
        Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;,
        Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;,
        Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;,
        Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMFunction;,
        Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMMaxLevel;,
        Lcom/yftech/vehicle/internal/adapter/ICarDoor$PLGMControl;,
        Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;,
        Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;,
        Lcom/yftech/vehicle/internal/adapter/ICarDoor$RemoteUnlockMode;
    }
.end annotation


# static fields
.field public static final AUTO_UNLOCK_SETTING:I = 0x35

.field public static final AUTO_UNLOCK_STATE:I = 0x94

.field public static final DRIVER_DOOR_LOCK_STATE:I = 0x192

.field public static final DRIVER_DOOR_STATE:I = 0xbc

.field public static final ENGINE_HOOD_STATE:I = 0x11b

.field public static final HOOD_DOOR_STATE:I = 0xd2

.field public static final LOCK_UNLOCK_SOUND_SETTING:I = 0x37

.field public static final LOCK_UNLOCK_SOUND_STATE:I = 0x96

.field public static final PASSENGER_DOOR_LOCK_STATE:I = 0x193

.field public static final PASSENGER_DOOR_STATE:I = 0xd3

.field public static final PEPS_AUTO_TRUNK_OPEN_SETTING:I = 0x3a

.field public static final PEPS_AUTO_TRUNK_OPEN_STATE:I = 0x99

.field public static final PEPS_UNLOCK_SETTING:I = 0x38

.field public static final PEPS_UNLOCK_STATE:I = 0x97

.field public static final PEPS_WALK_AWAY_LOCK_SETTING:I = 0x39

.field public static final PEPS_WALK_AWAY_LOCK_STATE:I = 0x98

.field public static final PLGM_CONTROL:I = -0x1

.field public static final PLGM_FUNCTION_SETTING:I = 0x3d

.field public static final PLGM_MAX_LEVEL_SETTING:I = 0x3c

.field public static final PSD_DOOR_SPEED_L:I = 0x9e

.field public static final PSD_DOOR_SPEED_L_SETTING:I = 0xe5

.field public static final PSD_DOOR_SPEED_R:I = 0x9f

.field public static final PSD_DOOR_SPEED_R_SETTING:I = 0xe6

.field public static final REAR_LEFT_DOOR_STATE:I = 0xd4

.field public static final REAR_RIGHT_DOOR_STATE:I = 0xd5

.field public static final REMOTE_UNLOCK_SETTING:I = 0x34

.field public static final REMOTE_UNLOCK_STATE:I = 0x93

.field public static final SLIDING_DOOR_CMD_L_SETTING:I = 0xf1

.field public static final SLIDING_DOOR_CMD_R_SETTING:I = 0xf0

.field public static final SLIDING_DOOR_MODE:I = 0xe3

.field public static final SLIDING_DOOR_MODE_SETTING:I = 0xe4

.field public static final SLIDING_DOOR_OPERATION_L:I = 0xf3

.field public static final SLIDING_DOOR_OPERATION_R:I = 0xf5

.field public static final SLIDING_DOOR_STATE_L:I = 0xf2

.field public static final SLIDING_DOOR_STATE_R:I = 0xf4

.field public static final SPEED_AUTO_LOCK_SETTING:I = 0x36

.field public static final SPEED_AUTO_LOCK_STATE:I = 0x95

.field public static final TAIL_DOOR_CMD_SETTING:I = 0x3b

.field public static final TAIL_DOOR_MAX_POSITION_MEMORY_SETTING:I = 0x121

.field public static final TAIL_DOOR_MODE:I = 0x9d

.field public static final TAIL_DOOR_PERCENT:I = 0x9a

.field public static final TAIL_DOOR_POSITION_MEMORY_CLEAR_SETTING:I = 0x11e

.field public static final TAIL_DOOR_STATE:I = 0x9c

.field public static final TAIL_DOOR_TRAVEL_PERCENT:I = 0x9b

.field public static final TRUNK_DOOR_STATE:I = 0xd6
