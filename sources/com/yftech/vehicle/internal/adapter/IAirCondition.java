package com.yftech.vehicle.internal.adapter;

/* loaded from: /home/user/work/dex/classes4.dex */
public interface IAirCondition extends IBaseApi {
    public static final int AC_BUTTON_SETTING = 6;
    public static final int AC_DISPLAY_POPUP_STATE = 401;
    public static final int AC_ENVIRONMENT_TEMPERATURE = 196;
    public static final int AC_OUT_AIRQUALITY_LEVEL = 195;
    public static final int AC_STATE = 78;
    public static final int AC_VR_ON_OFF_SETTING = 445;
    public static final int AC_WORKING_POWER = -1;
    public static final int AIR_CIRCULATION_MODE_OF_AUTO_MODE = 85;
    public static final int AIR_CIRCULATION_MODE_OF_AUTO_MODE_SETTING = 13;
    public static final int AIR_CIRCULATION_STATE = 82;
    public static final int AIR_SELF_DRYING = 263;
    public static final int AIR_SELF_DRYING_SETTING = 264;
    public static final int AIR_UNLOCK_VENTILATION = 265;
    public static final int AIR_UNLOCK_VENTILATION_SETTING = 266;
    public static final int AUTO_BUTTON_SETTING = 11;
    public static final int AUTO_DEFORST = -1;
    public static final int AUTO_DEFORST_BUTTON_SETTING = -1;
    public static final int AUTO_MODE = 83;
    public static final int BATTERY_COOL_STATE = 194;
    public static final int BATTERY_FH_STATE = 192;
    public static final int BATTERY_PTC_STATE = 193;
    public static final int BODYDISALARM_VENT_BUTTON_STATE = -1;
    public static final int BODYDISALARM_VENT_STATE = 191;
    public static final int CIRCULATION_BUTTON_SETTING = 10;
    public static final int COMFORT_CURVE_MODE = 86;
    public static final int COMFORT_CURVE_SETTING = 14;
    public static final int CUP_HOLDER_AUTO_MODE = 557;
    public static final int CUP_HOLDER_AUTO_MODE_SETTING = 558;
    public static final int CUP_HOLDER_HEAT_COOL_MODE = 555;
    public static final int CUP_HOLDER_HEAT_COOL_MODE_SETTING = 556;
    public static final int DRIVER_TEMPERATURE = 74;
    public static final int DRIVER_TEMPERATURE_SETTING = 0;
    public static final int DUAL_SYNC_BUTTON_SETTING = 8;
    public static final int DUAL_SYNC_STATE = 80;
    public static final int EcoMode_SETTING = -1;
    public static final int EcoMode_STATE = -1;
    public static final int FAN_SPEED_OF_AUTO_MODE = 84;
    public static final int FAN_SPEED_OF_AUTO_MODE_SETTING = 12;
    public static final int FRONT_DEFROST_BUTTON_SETTING = 5;
    public static final int FRONT_EFROST_STATE = 404;
    public static final int ION_BUTTON_SETTING = 9;
    public static final int ION_STATE = 81;
    public static final int OFF_BUTTON_SETTING = 3;
    public static final int ONE_BUTTON_VENTLAION_SETTING = 420;
    public static final int ONE_BUTTON_VENTLAION_STATE = 419;
    public static final int PASSENGER_TEMPERATURE = 75;
    public static final int PASSENGER_TEMPERATURE_SETTING = 1;
    public static final int POWER_BUTTON_STATE = -1;
    public static final int POWER_STATE = -1;
    public static final int REAR_AC_AUTO_MODE = 231;
    public static final int REAR_AC_AUTO_MODE_SETTING = 232;
    public static final int REAR_AC_OFF_BUTTON_SETTING = 235;
    public static final int REAR_AC_TEMPERATURE = 236;
    public static final int REAR_AC_TEMPERATURE_SETTING = 237;
    public static final int REAR_AC_WIND_MODE = 238;
    public static final int REAR_AC_WIND_MODE_SETTING = 239;
    public static final int REAR_AC_WIND_SPEED = 233;
    public static final int REAR_AC_WIND_SPEED_SETTING = 234;
    public static final int REAR_DEFROST_BUTTON_SETTING = 7;
    public static final int REAR_DEFROST_STATE = 79;
    public static final int TEMPERATURE_DEC_BUTTON_SETTING = 434;
    public static final int TEMPERATURE_DEC_VD_SETTING = 435;
    public static final int TEMPERATURE_FR_DEC_BUTTON_SETTING = 524;
    public static final int TEMPERATURE_FR_DEC_VD_SETTING = 525;
    public static final int TEMPERATURE_FR_INC_BUTTON_SETTING = 522;
    public static final int TEMPERATURE_FR_INC_VD_SETTING = 523;
    public static final int TEMPERATURE_INC_BUTTON_SETTING = 432;
    public static final int TEMPERATURE_INC_VD_SETTING = 433;
    public static final int WINDMODE_BUTTON_SETTING = 534;
    public static final int WINDSPEED_DEC_BUTTON_SETTING = 537;
    public static final int WINDSPEED_INC_BUTTON_SETTING = 536;
    public static final int WIND_MODE = 77;
    public static final int WIND_MODE_SETTING = 4;
    public static final int WIND_SPEED = 76;
    public static final int WIND_SPEED_SETTING = 2;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum WindSpeed {
        LEVEL_1(1),
        LEVEL_2(2),
        LEVEL_3(3),
        LEVEL_4(4),
        LEVEL_5(5),
        LEVEL_6(6),
        LEVEL_7(7),
        OFF(0),
        __UNKNOWN__(-1);

        public final int value;

        WindSpeed(int i) {
            this.value = i;
        }

        public static WindSpeed valueOf(int i) {
            return i == LEVEL_1.value ? LEVEL_1 : i == LEVEL_2.value ? LEVEL_2 : i == LEVEL_3.value ? LEVEL_3 : i == LEVEL_4.value ? LEVEL_4 : i == LEVEL_5.value ? LEVEL_5 : i == LEVEL_6.value ? LEVEL_6 : i == LEVEL_7.value ? LEVEL_7 : i == OFF.value ? OFF : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum WindMode {
        FACE(1),
        FACE_FOOT(2),
        FOOT(3),
        FOOT_DEFROST(4),
        DEFROST(5),
        INVALID(0),
        __UNKNOWN__(-1);

        public final int value;

        WindMode(int i) {
            this.value = i;
        }

        public static WindMode valueOf(int i) {
            return i == FACE.value ? FACE : i == FACE_FOOT.value ? FACE_FOOT : i == FOOT.value ? FOOT : i == FOOT_DEFROST.value ? FOOT_DEFROST : i == DEFROST.value ? DEFROST : i == INVALID.value ? INVALID : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum AirCirculationState {
        INNER_AIR_CIRCULATION(1),
        OUTSIDE_AIR_CIRCULATION(2),
        AUTO_INNER_AIR_CIRCULATION(3),
        INVALID(0),
        AUTO_OUT_AIR_CIRCULATION(4),
        __UNKNOWN__(-1);

        public final int value;

        AirCirculationState(int i) {
            this.value = i;
        }

        public static AirCirculationState valueOf(int i) {
            return i == INNER_AIR_CIRCULATION.value ? INNER_AIR_CIRCULATION : i == OUTSIDE_AIR_CIRCULATION.value ? OUTSIDE_AIR_CIRCULATION : i == AUTO_INNER_AIR_CIRCULATION.value ? AUTO_INNER_AIR_CIRCULATION : i == INVALID.value ? INVALID : i == AUTO_OUT_AIR_CIRCULATION.value ? AUTO_OUT_AIR_CIRCULATION : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum AutoMode {
        MANUAL_MODE(0),
        AUTO_MODE(1),
        __UNKNOWN__(-1);

        public final int value;

        AutoMode(int i) {
            this.value = i;
        }

        public static AutoMode valueOf(int i) {
            return i == MANUAL_MODE.value ? MANUAL_MODE : i == AUTO_MODE.value ? AUTO_MODE : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum FanSpeed {
        LOW(0, 1),
        NORMAL(1, 2),
        HIGH(2, 3),
        __UNKNOWN__(-1, -1);

        private final int rx;
        private final int tx;
        public final int value;

        FanSpeed(int i, int i2) {
            this.rx = i;
            this.tx = i2;
            this.value = this.tx;
        }

        public static FanSpeed valueOf(int i) {
            return i == LOW.rx ? LOW : i == NORMAL.rx ? NORMAL : i == HIGH.rx ? HIGH : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum AirCirculationMode {
        AUTO(0, 1),
        MANUAL(1, 2),
        __UNKNOWN__(-1, -1);

        private final int rx;
        private final int tx;
        public final int value;

        AirCirculationMode(int i, int i2) {
            this.rx = i;
            this.tx = i2;
            this.value = this.tx;
        }

        public static AirCirculationMode valueOf(int i) {
            return i == AUTO.rx ? AUTO : i == MANUAL.rx ? MANUAL : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum ComfortCurveMode {
        SOFT(0, 1),
        NORMAL(1, 2),
        FAST(2, 3),
        __UNKNOWN__(-1, -1);

        private final int rx;
        private final int tx;
        public final int value;

        ComfortCurveMode(int i, int i2) {
            this.rx = i;
            this.tx = i2;
            this.value = this.tx;
        }

        public static ComfortCurveMode valueOf(int i) {
            return i == SOFT.rx ? SOFT : i == NORMAL.rx ? NORMAL : i == FAST.rx ? FAST : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum EcoMode {
        COMFORT(0, 1),
        ECONOMY(1, 2),
        VENT(2, 3),
        INVALID(3, -1),
        __UNKNOWN__(-1, -1);

        private final int rx;
        private final int tx;
        public final int value;

        EcoMode(int i, int i2) {
            this.rx = i;
            this.tx = i2;
            this.value = this.tx;
        }

        public static EcoMode valueOf(int i) {
            return i == COMFORT.rx ? COMFORT : i == ECONOMY.rx ? ECONOMY : i == VENT.rx ? VENT : i == INVALID.rx ? INVALID : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum AcDisplayPopup {
        SYNC(13),
        ION(12),
        ACMAX(11),
        WIND_MODE_FRONT(10),
        RDEFROST(9),
        FDEFROST(8),
        CIRCULATION_MODE(7),
        ACST(6),
        AUTO_FRONT(5),
        WIND_FRONT(4),
        PASSENGER_TEMPERATURE(3),
        DRIVER_TEMPERATURE(2),
        ON_OFF(1),
        NOT_REQUEST(0),
        __UNKNOWN__(-1);

        public final int value;

        AcDisplayPopup(int i) {
            this.value = i;
        }

        public static AcDisplayPopup valueOf(int i) {
            return i == SYNC.value ? SYNC : i == ION.value ? ION : i == ACMAX.value ? ACMAX : i == WIND_MODE_FRONT.value ? WIND_MODE_FRONT : i == RDEFROST.value ? RDEFROST : i == FDEFROST.value ? FDEFROST : i == CIRCULATION_MODE.value ? CIRCULATION_MODE : i == ACST.value ? ACST : i == AUTO_FRONT.value ? AUTO_FRONT : i == WIND_FRONT.value ? WIND_FRONT : i == PASSENGER_TEMPERATURE.value ? PASSENGER_TEMPERATURE : i == DRIVER_TEMPERATURE.value ? DRIVER_TEMPERATURE : i == ON_OFF.value ? ON_OFF : i == NOT_REQUEST.value ? NOT_REQUEST : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum OnOffByVrState {
        ON(2),
        OFF(1),
        __UNKNOWN__(-1);

        public final int value;

        OnOffByVrState(int i) {
            this.value = i;
        }

        public static OnOffByVrState valueOf(int i) {
            return i == ON.value ? ON : i == OFF.value ? OFF : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum CupholderHeatCoolMode {
        OFF(0),
        HEAT_MODE(1),
        COOL_MODE(2),
        NO_COMMAND(3),
        __UNKNOWN__(-1);

        public final int value;

        CupholderHeatCoolMode(int i) {
            this.value = i;
        }

        public static CupholderHeatCoolMode valueOf(int i) {
            return i == OFF.value ? OFF : i == HEAT_MODE.value ? HEAT_MODE : i == COOL_MODE.value ? COOL_MODE : i == NO_COMMAND.value ? NO_COMMAND : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum CupholderAutoMode {
        AUTO_MODE_OFF(0),
        AUTO_MODE_ON(1),
        __UNKNOWN__(-1);

        public final int value;

        CupholderAutoMode(int i) {
            this.value = i;
        }

        public static CupholderAutoMode valueOf(int i) {
            return i == AUTO_MODE_OFF.value ? AUTO_MODE_OFF : i == AUTO_MODE_ON.value ? AUTO_MODE_ON : __UNKNOWN__;
        }
    }
}
