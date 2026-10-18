package com.yftech.vehicle.internal.adapter;

/* loaded from: /home/user/work/dex/classes4.dex */
public interface ICarSeat extends IBaseApi {
    public static final int ACCOUNT_DELETE1_SETTING = 503;
    public static final int CHILD_LOCK_RL = 347;
    public static final int CHILD_LOCK_RL_SETTING = 348;
    public static final int CHILD_LOCK_RR = 349;
    public static final int CHILD_LOCK_RR_SETTING = 350;
    public static final int CURR_ACCOUNT_CFG_SETTING = 502;
    public static final int CURR_PEPS_PUID_STATE = 501;
    public static final int DRIVER_SAVE_RECAL_COMD_SETTING = 504;
    public static final int HEAT_LEVEL_FL = 87;
    public static final int HEAT_LEVEL_FL_SETTING = 15;
    public static final int HEAT_LEVEL_FR = 88;
    public static final int HEAT_LEVEL_FR_SETTING = 16;
    public static final int HEAT_LEVEL_RL = 89;
    public static final int HEAT_LEVEL_RL_SETTING = 17;
    public static final int HEAT_LEVEL_RR = 90;
    public static final int HEAT_LEVEL_RR_SETTING = 18;
    public static final int HEAT_VENT_AUTO_MODE_FL = 95;
    public static final int HEAT_VENT_AUTO_MODE_FL_SETTING = 27;
    public static final int HEAT_VENT_AUTO_MODE_FR = 96;
    public static final int HEAT_VENT_AUTO_MODE_FR_SETTING = 28;
    public static final int HEAT_VENT_AUTO_MODE_RL = 97;
    public static final int HEAT_VENT_AUTO_MODE_RL_SETTING = 29;
    public static final int HEAT_VENT_AUTO_MODE_RR = 98;
    public static final int HEAT_VENT_AUTO_MODE_RR_SETTING = 30;
    public static final int HEAT_VENT_MODE_FL_SETTING = 23;
    public static final int HEAT_VENT_MODE_FR_SETTING = 24;
    public static final int HEAT_VENT_MODE_RL_SETTING = 25;
    public static final int HEAT_VENT_MODE_RR_SETTING = 26;
    public static final int MEMSYS_OPERATION_REQ_STATE = 506;
    public static final int SEAT_MASSAGE_LEVEL_RL = 296;
    public static final int SEAT_MASSAGE_LEVEL_RL_SETTING = 297;
    public static final int SEAT_MASSAGE_LEVEL_RR = 302;
    public static final int SEAT_MASSAGE_LEVEL_RR_SETTING = 303;
    public static final int SEAT_MASSAGE_MODE_RL = 294;
    public static final int SEAT_MASSAGE_MODE_RL_SETTING = 295;
    public static final int SEAT_MASSAGE_MODE_RR = 300;
    public static final int SEAT_MASSAGE_MODE_RR_SETTING = 301;
    public static final int SEAT_MASSAGE_ONOFF_RL = 292;
    public static final int SEAT_MASSAGE_ONOFF_RL_SETTING = 293;
    public static final int SEAT_MASSAGE_ONOFF_RR = 298;
    public static final int SEAT_MASSAGE_ONOFF_RR_SETTING = 299;
    public static final int SEAT_OPERATION_STATE = 505;
    public static final int SEAT_STEERING_WHEEL_SETTING = 31;
    public static final int VENT_LEVEL_FL = 91;
    public static final int VENT_LEVEL_FL_SETTING = 19;
    public static final int VENT_LEVEL_FR = 92;
    public static final int VENT_LEVEL_FR_SETTING = 20;
    public static final int VENT_LEVEL_RL = 93;
    public static final int VENT_LEVEL_RL_SETTING = 21;
    public static final int VENT_LEVEL_RR = 94;
    public static final int VENT_LEVEL_RR_SETTING = 22;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum HeatLevel {
        LEVEL_1(1),
        LEVEL_2(2),
        LEVEL_3(3),
        ERROR(7),
        OFF(0),
        __UNKNOWN__(-1);

        public final int value;

        HeatLevel(int i) {
            this.value = i;
        }

        public static HeatLevel valueOf(int i) {
            return i == LEVEL_1.value ? LEVEL_1 : i == LEVEL_2.value ? LEVEL_2 : i == LEVEL_3.value ? LEVEL_3 : i == ERROR.value ? ERROR : i == OFF.value ? OFF : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum VentLevel {
        LEVEL_1(1),
        LEVEL_2(2),
        LEVEL_3(3),
        ERROR(7),
        OFF(0),
        __UNKNOWN__(-1);

        public final int value;

        VentLevel(int i) {
            this.value = i;
        }

        public static VentLevel valueOf(int i) {
            return i == LEVEL_1.value ? LEVEL_1 : i == LEVEL_2.value ? LEVEL_2 : i == LEVEL_3.value ? LEVEL_3 : i == ERROR.value ? ERROR : i == OFF.value ? OFF : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum HeatVentMode {
        VENT_MODE(1),
        HEAT_MODE(2),
        OFF(0),
        __UNKNOWN__(-1);

        public final int value;

        HeatVentMode(int i) {
            this.value = i;
        }

        public static HeatVentMode valueOf(int i) {
            return i == VENT_MODE.value ? VENT_MODE : i == HEAT_MODE.value ? HEAT_MODE : i == OFF.value ? OFF : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum SSWOperation {
        SLIDE_FORWARD(1),
        SLIDE_BACKWARD(2),
        CUSHION_RISE(3),
        CUSHION_DOWN(4),
        BACKREST_FORWARD(5),
        BACKREST_BACKWARD(6),
        TILT_RISE(7),
        TILT_DOWN(8),
        STEERING_WHEEL_UP(9),
        STEERING_WHEEL_DOWN(10),
        STEERING_WHEEL_OUT(11),
        STEERING_WHEEL_IN(12),
        CUSHION_FORWARD(13),
        CUSHION_BACKWARD(14),
        __UNKNOWN__(-1);

        public final int value;

        SSWOperation(int i) {
            this.value = i;
        }

        public static SSWOperation valueOf(int i) {
            return i == SLIDE_FORWARD.value ? SLIDE_FORWARD : i == SLIDE_BACKWARD.value ? SLIDE_BACKWARD : i == CUSHION_RISE.value ? CUSHION_RISE : i == CUSHION_DOWN.value ? CUSHION_DOWN : i == BACKREST_FORWARD.value ? BACKREST_FORWARD : i == BACKREST_BACKWARD.value ? BACKREST_BACKWARD : i == TILT_RISE.value ? TILT_RISE : i == TILT_DOWN.value ? TILT_DOWN : i == STEERING_WHEEL_UP.value ? STEERING_WHEEL_UP : i == STEERING_WHEEL_DOWN.value ? STEERING_WHEEL_DOWN : i == STEERING_WHEEL_OUT.value ? STEERING_WHEEL_OUT : i == STEERING_WHEEL_IN.value ? STEERING_WHEEL_IN : i == CUSHION_FORWARD.value ? CUSHION_FORWARD : i == CUSHION_BACKWARD.value ? CUSHION_BACKWARD : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum SeatMassageMode {
        OFF(0),
        MODE_ONE(1),
        MODE_TW0(2),
        MODE_THIRD(3),
        MODE_FOUR(4),
        MODE_FIVE(5),
        MODE_SIX(6),
        __UNKNOWN__(-1);

        public final int value;

        SeatMassageMode(int i) {
            this.value = i;
        }

        public static SeatMassageMode valueOf(int i) {
            return i == OFF.value ? OFF : i == MODE_ONE.value ? MODE_ONE : i == MODE_TW0.value ? MODE_TW0 : i == MODE_THIRD.value ? MODE_THIRD : i == MODE_FOUR.value ? MODE_FOUR : i == MODE_FIVE.value ? MODE_FIVE : i == MODE_SIX.value ? MODE_SIX : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum SeatMassageLevel {
        OFF(0),
        LEVEL_ONE(1),
        LEVEL_TW0(2),
        LEVEL_THIRD(3),
        __UNKNOWN__(-1);

        public final int value;

        SeatMassageLevel(int i) {
            this.value = i;
        }

        public static SeatMassageLevel valueOf(int i) {
            return i == OFF.value ? OFF : i == LEVEL_ONE.value ? LEVEL_ONE : i == LEVEL_TW0.value ? LEVEL_TW0 : i == LEVEL_THIRD.value ? LEVEL_THIRD : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum SteeringWheelHeatState {
        OFF(0),
        HEATING(1),
        PRESERVATION(2),
        __UNKNOWN__(-1);

        public final int value;

        SteeringWheelHeatState(int i) {
            this.value = i;
        }

        public static SteeringWheelHeatState valueOf(int i) {
            return i == OFF.value ? OFF : i == HEATING.value ? HEATING : i == PRESERVATION.value ? PRESERVATION : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum CurrPepsPuid {
        DEFAULT(0),
        FOB_ID1(1),
        FOB_ID2(2),
        FOB_ID3(3),
        NFC_ID1(4),
        NFC_ID2(5),
        NFC_ID3(6),
        NFC_ID4(7),
        FINGER_PRINT1(8),
        FINGER_PRINT2(9),
        FINGER_PRINT3(10),
        FINGER_PRINT4(11),
        FINGER_PRINT5(12),
        __UNKNOWN__(-1);

        public final int value;

        CurrPepsPuid(int i) {
            this.value = i;
        }

        public static CurrPepsPuid valueOf(int i) {
            return i == DEFAULT.value ? DEFAULT : i == FOB_ID1.value ? FOB_ID1 : i == FOB_ID2.value ? FOB_ID2 : i == FOB_ID3.value ? FOB_ID3 : i == NFC_ID1.value ? NFC_ID1 : i == NFC_ID2.value ? NFC_ID2 : i == NFC_ID3.value ? NFC_ID3 : i == NFC_ID4.value ? NFC_ID4 : i == FINGER_PRINT1.value ? FINGER_PRINT1 : i == FINGER_PRINT2.value ? FINGER_PRINT2 : i == FINGER_PRINT3.value ? FINGER_PRINT3 : i == FINGER_PRINT4.value ? FINGER_PRINT4 : i == FINGER_PRINT5.value ? FINGER_PRINT5 : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum CurrAccountCfg {
        DEFAULT(0),
        ACCOUNT_1(1),
        ACCOUNT_2(2),
        ACCOUNT_3(3),
        ACCOUNT_4(4),
        ACCOUNT_5(5),
        ACCOUNT_6(6),
        ACCOUNT_7(7),
        ACCOUNT_8(8),
        __UNKNOWN__(-1);

        public final int value;

        CurrAccountCfg(int i) {
            this.value = i;
        }

        public static CurrAccountCfg valueOf(int i) {
            return i == DEFAULT.value ? DEFAULT : i == ACCOUNT_1.value ? ACCOUNT_1 : i == ACCOUNT_2.value ? ACCOUNT_2 : i == ACCOUNT_3.value ? ACCOUNT_3 : i == ACCOUNT_4.value ? ACCOUNT_4 : i == ACCOUNT_5.value ? ACCOUNT_5 : i == ACCOUNT_6.value ? ACCOUNT_6 : i == ACCOUNT_7.value ? ACCOUNT_7 : i == ACCOUNT_8.value ? ACCOUNT_8 : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum AccountDelete {
        ACCOUNT_1(1),
        ACCOUNT_2(2),
        ACCOUNT_3(4),
        ACCOUNT_4(8),
        ACCOUNT_5(10),
        ACCOUNT_6(32),
        ACCOUNT_7(64),
        ACCOUNT_8(80),
        __UNKNOWN__(-1);

        public final int value;

        AccountDelete(int i) {
            this.value = i;
        }

        public static AccountDelete valueOf(int i) {
            return i == ACCOUNT_1.value ? ACCOUNT_1 : i == ACCOUNT_2.value ? ACCOUNT_2 : i == ACCOUNT_3.value ? ACCOUNT_3 : i == ACCOUNT_4.value ? ACCOUNT_4 : i == ACCOUNT_5.value ? ACCOUNT_5 : i == ACCOUNT_6.value ? ACCOUNT_6 : i == ACCOUNT_7.value ? ACCOUNT_7 : i == ACCOUNT_8.value ? ACCOUNT_8 : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum DriverSeatPostionCmd {
        SAVE(1),
        RECALL(2),
        __UNKNOWN__(-1);

        public final int value;

        DriverSeatPostionCmd(int i) {
            this.value = i;
        }

        public static DriverSeatPostionCmd valueOf(int i) {
            return i == SAVE.value ? SAVE : i == RECALL.value ? RECALL : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum SeatOperationState {
        NO_OPERATION(0),
        MANUAL_OPERATING(1),
        SAVE_COMPLETED(2),
        SAVE_FAILED(3),
        RECALLING(4),
        RECALL_INTERRUPTED(5),
        RECALL_COMPLETED(6),
        INITIALIZATION_COMPLETED(7),
        RECALL_STUDYING(8),
        STUDY_COMPLETED(9),
        STUDY_FAILED(10),
        __UNKNOWN__(-1);

        public final int value;

        SeatOperationState(int i) {
            this.value = i;
        }

        public static SeatOperationState valueOf(int i) {
            return i == NO_OPERATION.value ? NO_OPERATION : i == MANUAL_OPERATING.value ? MANUAL_OPERATING : i == SAVE_COMPLETED.value ? SAVE_COMPLETED : i == SAVE_FAILED.value ? SAVE_FAILED : i == RECALLING.value ? RECALLING : i == RECALL_INTERRUPTED.value ? RECALL_INTERRUPTED : i == RECALL_COMPLETED.value ? RECALL_COMPLETED : i == INITIALIZATION_COMPLETED.value ? INITIALIZATION_COMPLETED : i == RECALL_STUDYING.value ? RECALL_STUDYING : i == STUDY_COMPLETED.value ? STUDY_COMPLETED : i == STUDY_FAILED.value ? STUDY_FAILED : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum MemSysOperationReqCmd {
        NO_COMMAND(0),
        ACTIVE_POP_UP_WINDOW(1),
        __UNKNOWN__(-1);

        public final int value;

        MemSysOperationReqCmd(int i) {
            this.value = i;
        }

        public static MemSysOperationReqCmd valueOf(int i) {
            return i == NO_COMMAND.value ? NO_COMMAND : i == ACTIVE_POP_UP_WINDOW.value ? ACTIVE_POP_UP_WINDOW : __UNKNOWN__;
        }
    }
}
