package com.yftech.vehicle.internal.adapter;

/* loaded from: /home/user/work/dex/classes4.dex */
public interface ICarInfo extends IBaseApi {
    public static final int BATTERY_VOLTAGE = 124;
    public static final int DAY_NIGHT_MODE = 187;
    public static final int ENGINE_CRANK_STATE = 407;
    public static final int ENGINE_IGN_ANGLE_STATE = 443;
    public static final int ENGINE_SPEED = 121;
    public static final int GEAR_POSITION = 185;
    public static final int GEAR_POSITION_A9E = 415;
    public static final int LOW_BATTERY_WARNING_LEVEL = 125;
    public static final int PARKING_BRAKE_STATE = 201;
    public static final int POWER_MODE = 182;
    public static final int PRESSURE_ATMOSPHERIC_STATE = 437;
    public static final int PRESSURE_OIL_STATE = 438;
    public static final int PRESSURE_TURBINE_STATE = 436;
    public static final int REAR_GEAR_STATE = 184;
    public static final int SLEEP_WAKEUP_COMMAND = -1;
    public static final int TEMP_ENGINE_WATER_STATE = 439;
    public static final int TEMP_EXHAUST_STATE = 440;
    public static final int TEMP_INTAKE_AIR_STATE = 441;
    public static final int TEMP_TRANSMISSION_OIL_STATE = 442;
    public static final int TOTAL_ODOMETER = 123;
    public static final int TRANSPORTATION_MODE = 369;
    public static final int VEHICLE_MODE_BROADCAST = 368;
    public static final int VEHICLE_SPEED = 122;
    public static final int VEHICLE_STATE = 186;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum PowerMode {
        ACC(1),
        ON(2),
        CRANK(3),
        OFF(0),
        __UNKNOWN__(-1);

        public final int value;

        PowerMode(int i) {
            this.value = i;
        }

        public static PowerMode valueOf(int i) {
            return i == ACC.value ? ACC : i == ON.value ? ON : i == CRANK.value ? CRANK : i == OFF.value ? OFF : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum LowBatteryWarningLevel {
        LEVEL_1(1),
        LEVEL_2(2),
        LEVEL_3(3),
        LEVEL_4(4),
        LEVEL_5(5),
        OFF(0),
        __UNKNOWN__(-1);

        public final int value;

        LowBatteryWarningLevel(int i) {
            this.value = i;
        }

        public static LowBatteryWarningLevel valueOf(int i) {
            return i == LEVEL_1.value ? LEVEL_1 : i == LEVEL_2.value ? LEVEL_2 : i == LEVEL_3.value ? LEVEL_3 : i == LEVEL_4.value ? LEVEL_4 : i == LEVEL_5.value ? LEVEL_5 : i == OFF.value ? OFF : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum RearGearState {
        NOT_ENGAGED(1),
        ENGAGED(2),
        __UNKNOWN__(-1);

        public final int value;

        RearGearState(int i) {
            this.value = i;
        }

        public static RearGearState valueOf(int i) {
            return i == NOT_ENGAGED.value ? NOT_ENGAGED : i == ENGAGED.value ? ENGAGED : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum GearPosition {
        GEAR_FIRST(1),
        GEAR_TOW(2),
        GEAR_THIRD(3),
        GEAR_FOUR(4),
        GEAR_FIVE(5),
        GEAR_SIX(6),
        GEAR_SEVEN(7),
        GEAR_EIGHT(8),
        GEAR_NINE(9),
        SPORT(11),
        PARKING(12),
        REVERSE(13),
        NEUTRAL(14),
        DRIVE(15),
        MANUAL_MODE(16),
        L(17),
        DS(18),
        CONFIRMED(19),
        BRAKE(20),
        NOT_AVAILABLE(21),
        __UNKNOWN__(-1);

        public final int value;

        GearPosition(int i) {
            this.value = i;
        }

        public static GearPosition valueOf(int i) {
            return i == GEAR_FIRST.value ? GEAR_FIRST : i == GEAR_TOW.value ? GEAR_TOW : i == GEAR_THIRD.value ? GEAR_THIRD : i == GEAR_FOUR.value ? GEAR_FOUR : i == GEAR_FIVE.value ? GEAR_FIVE : i == GEAR_SIX.value ? GEAR_SIX : i == GEAR_SEVEN.value ? GEAR_SEVEN : i == GEAR_EIGHT.value ? GEAR_EIGHT : i == GEAR_NINE.value ? GEAR_NINE : i == SPORT.value ? SPORT : i == PARKING.value ? PARKING : i == REVERSE.value ? REVERSE : i == NEUTRAL.value ? NEUTRAL : i == DRIVE.value ? DRIVE : i == MANUAL_MODE.value ? MANUAL_MODE : i == L.value ? L : i == DS.value ? DS : i == CONFIRMED.value ? CONFIRMED : i == BRAKE.value ? BRAKE : i == NOT_AVAILABLE.value ? NOT_AVAILABLE : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum GearPositionA9E {
        INVALID(0),
        DRIVE(1),
        NEUTRAL(2),
        REVERSE(3),
        PARKING(4),
        __UNKNOWN__(-1);

        public final int value;

        GearPositionA9E(int i) {
            this.value = i;
        }

        public static GearPositionA9E valueOf(int i) {
            return i == INVALID.value ? INVALID : i == DRIVE.value ? DRIVE : i == NEUTRAL.value ? NEUTRAL : i == REVERSE.value ? REVERSE : i == PARKING.value ? PARKING : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum ParkingBrakeState {
        PARKING_BRAKE_NOT_APPLIED(1),
        PARKING_BRAKE_APPLIED(2),
        UNAVAILABLE(3),
        __UNKNOWN__(-1);

        public final int value;

        ParkingBrakeState(int i) {
            this.value = i;
        }

        public static ParkingBrakeState valueOf(int i) {
            return i == PARKING_BRAKE_NOT_APPLIED.value ? PARKING_BRAKE_NOT_APPLIED : i == PARKING_BRAKE_APPLIED.value ? PARKING_BRAKE_APPLIED : i == UNAVAILABLE.value ? UNAVAILABLE : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum VehicleState {
        SLEEPING(0),
        CUTOFF_PENDING(2),
        AUTO_ACC(3),
        IGNITION_LEVEL(5),
        STARTING_IN_PROGRESS(6),
        POWER_TRAIN_RUNNING(7),
        AUTO_START(8),
        ENGINE_SYSTEM_STOP(9),
        UNAVAILABLE(15),
        __UNKNOWN__(-1);

        public final int value;

        VehicleState(int i) {
            this.value = i;
        }

        public static VehicleState valueOf(int i) {
            return i == SLEEPING.value ? SLEEPING : i == CUTOFF_PENDING.value ? CUTOFF_PENDING : i == AUTO_ACC.value ? AUTO_ACC : i == IGNITION_LEVEL.value ? IGNITION_LEVEL : i == STARTING_IN_PROGRESS.value ? STARTING_IN_PROGRESS : i == POWER_TRAIN_RUNNING.value ? POWER_TRAIN_RUNNING : i == AUTO_START.value ? AUTO_START : i == ENGINE_SYSTEM_STOP.value ? ENGINE_SYSTEM_STOP : i == UNAVAILABLE.value ? UNAVAILABLE : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum SleepWakeUpCommand {
        GO_TO_SLEEP(0),
        WAKEUP(3),
        __UNKNOWN__(-1);

        public final int value;

        SleepWakeUpCommand(int i) {
            this.value = i;
        }

        public static SleepWakeUpCommand valueOf(int i) {
            return i == GO_TO_SLEEP.value ? GO_TO_SLEEP : i == WAKEUP.value ? WAKEUP : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum DayNightMode {
        DAY(0),
        TWILIGHT(1),
        NIGHT(2),
        __UNKNOWN__(-1);

        public final int value;

        DayNightMode(int i) {
            this.value = i;
        }

        public static DayNightMode valueOf(int i) {
            return i == DAY.value ? DAY : i == TWILIGHT.value ? TWILIGHT : i == NIGHT.value ? NIGHT : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum VehicleModeBroadcast {
        NORMAL(0),
        OTA(1),
        __UNKNOWN__(-1);

        public final int value;

        VehicleModeBroadcast(int i) {
            this.value = i;
        }

        public static VehicleModeBroadcast valueOf(int i) {
            return i == NORMAL.value ? NORMAL : i == OTA.value ? OTA : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum EngineCrankState {
        NOT_ON_CRANK(0),
        CRANK(1),
        __UNKNOWN__(-1);

        public final int value;

        EngineCrankState(int i) {
            this.value = i;
        }

        public static EngineCrankState valueOf(int i) {
            return i == NOT_ON_CRANK.value ? NOT_ON_CRANK : i == CRANK.value ? CRANK : __UNKNOWN__;
        }
    }
}
