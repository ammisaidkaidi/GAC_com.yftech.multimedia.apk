package com.yftech.vehicle.internal.adapter;

/* loaded from: /home/user/work/dex/classes4.dex */
public interface ICarParking extends IBaseApi {
    public static final int PARKING_RADAR_ALARM = 254;
    public static final int PARKING_RADAR_ALARM_SETTING = 255;
    public static final int PARKING_VOICE_SWITCH = 256;
    public static final int PARKING_VOICE_SWITCH_SETTING = 257;
    public static final int PAS_DISTANCE_FL = 136;
    public static final int PAS_DISTANCE_FLSide = 140;
    public static final int PAS_DISTANCE_FL_MIDDLE = 131;
    public static final int PAS_DISTANCE_FR = 135;
    public static final int PAS_DISTANCE_FRSide = 139;
    public static final int PAS_DISTANCE_FR_MIDDLE = 132;
    public static final int PAS_DISTANCE_RL = 134;
    public static final int PAS_DISTANCE_RLSide = 138;
    public static final int PAS_DISTANCE_RL_MIDDLE = 129;
    public static final int PAS_DISTANCE_RR = 133;
    public static final int PAS_DISTANCE_RRSide = 137;
    public static final int PAS_DISTANCE_RR_MIDDLE = 130;
    public static final int PAS_ERROR_FLAG_OF_EEPROM = 145;
    public static final int PAS_ERROR_FLAG_OF_IGN_VOLTAGE = 146;
    public static final int PAS_ERROR_FLAG_RL = 144;
    public static final int PAS_ERROR_FLAG_RL_MIDDLE = 142;
    public static final int PAS_ERROR_FLAG_RR = 143;
    public static final int PAS_ERROR_FLAG_RR_MIDDLE = 141;
    public static final int PAS_SYSTEM_FAILURE_FLAG = 127;
    public static final int PAS_SYSTEM_TYPE = 126;
    public static final int PAS_WARN_TONE = 128;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum PASSystemType {
        RPA(0),
        APA(1),
        __UNKNOWN__(-1);

        public final int value;

        PASSystemType(int i) {
            this.value = i;
        }

        public static PASSystemType valueOf(int i) {
            return i == RPA.value ? RPA : i == APA.value ? APA : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum PASSystemFailureFlag {
        NOT_FAILURE(0),
        FRONT_FAILURE(1),
        REAR_FAILURE(2),
        SYSTEM_FAILURE(3),
        __UNKNOWN__(-1);

        public final int value;

        PASSystemFailureFlag(int i) {
            this.value = i;
        }

        public static PASSystemFailureFlag valueOf(int i) {
            return i == NOT_FAILURE.value ? NOT_FAILURE : i == FRONT_FAILURE.value ? FRONT_FAILURE : i == REAR_FAILURE.value ? REAR_FAILURE : i == SYSTEM_FAILURE.value ? SYSTEM_FAILURE : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum PASWarnTone {
        NOT_ACTIVE(0),
        CONTINUOUS_TONE(1),
        FAST_INTERMITTENT_TONE(2),
        MEDIUM_SPEED_INTERMITTENT_TONE(3),
        SLOW_INTERMITTENT_TONE(4),
        MUTE(5),
        __UNKNOWN__(-1);

        public final int value;

        PASWarnTone(int i) {
            this.value = i;
        }

        public static PASWarnTone valueOf(int i) {
            return i == NOT_ACTIVE.value ? NOT_ACTIVE : i == CONTINUOUS_TONE.value ? CONTINUOUS_TONE : i == FAST_INTERMITTENT_TONE.value ? FAST_INTERMITTENT_TONE : i == MEDIUM_SPEED_INTERMITTENT_TONE.value ? MEDIUM_SPEED_INTERMITTENT_TONE : i == SLOW_INTERMITTENT_TONE.value ? SLOW_INTERMITTENT_TONE : i == MUTE.value ? MUTE : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum PASErrorFlag {
        NOT_FAULT(0),
        FAULT(1),
        __UNKNOWN__(-1);

        public final int value;

        PASErrorFlag(int i) {
            this.value = i;
        }

        public static PASErrorFlag valueOf(int i) {
            return i == NOT_FAULT.value ? NOT_FAULT : i == FAULT.value ? FAULT : __UNKNOWN__;
        }
    }
}
