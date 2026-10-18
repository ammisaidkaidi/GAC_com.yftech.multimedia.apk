package com.yftech.vehicle.internal.adapter;

/* loaded from: /home/user/work/dex/classes4.dex */
public interface ICarDrive extends IBaseApi {
    public static final int ASSIST_PARA_SWITCH_REQ_STATE = 444;
    public static final int AUTO_HOLD_SETTING = 288;
    public static final int AUTO_HOLD_STATE = 287;
    public static final int AVDC_MODE = 222;
    public static final int AVDC_MODE_SETTING = 223;
    public static final int BCS_VDC_OFF_STATE = 405;
    public static final int DRIVE_MODE = 179;
    public static final int DRIVE_MODE_HEV = 406;
    public static final int DRIVE_MODE_SETTING = 71;
    public static final int DRIVE_SYSTEM_MODE = 261;
    public static final int EMS_ENGINE_WAVE_SETTING = 73;
    public static final int EMS_ENGINE_WAVE_STATE = 181;
    public static final int EPS_MODE_STATE = 291;
    public static final int EPS_STYLE = 180;
    public static final int EPS_STYLE_SETTING = 72;
    public static final int ESP_STATE = 215;
    public static final int ESP_STATE_SETTING = 216;
    public static final int ESP_STYLE = 290;
    public static final int GAS_PEDAL_LEVEL = 224;
    public static final int GAS_PEDAL_LEVEL_SETTING = 225;
    public static final int HDC_STATE = 217;
    public static final int HDC_STATE_SETTING = 218;
    public static final int MEMORY_DRIVE_MODE = 207;
    public static final int MEMORY_DRIVE_MODE_A9E = 422;
    public static final int MEMORY_DRIVE_MODE_SETTING = 208;
    public static final int MRR_ACC_MODE = 421;
    public static final int TCU_DRIVE_MODE = 260;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum DriveModeHev {
        NORMAL_MODE(0),
        ECO_MODE(1),
        SPORT_MODE(2),
        __UNKNOWN__(-1);

        public final int value;

        DriveModeHev(int i) {
            this.value = i;
        }

        public static DriveModeHev valueOf(int i) {
            return i == NORMAL_MODE.value ? NORMAL_MODE : i == ECO_MODE.value ? ECO_MODE : i == SPORT_MODE.value ? SPORT_MODE : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum DriveMode {
        NOT_VALID(0),
        ECO_PRO_MODE(1),
        COMFORT_MODE(2),
        SPORT_MODE(3),
        INDIVIDUAL_MODE(4),
        SPORT_PLUS_MODE(5),
        AI_MODE(6),
        OFFROAD_MODE(7),
        ATS_SAND(8),
        ATS_MUD(9),
        ATS_SNOW(10),
        __UNKNOWN__(-1);

        public final int value;

        DriveMode(int i) {
            this.value = i;
        }

        public static DriveMode valueOf(int i) {
            return i == NOT_VALID.value ? NOT_VALID : i == ECO_PRO_MODE.value ? ECO_PRO_MODE : i == COMFORT_MODE.value ? COMFORT_MODE : i == SPORT_MODE.value ? SPORT_MODE : i == INDIVIDUAL_MODE.value ? INDIVIDUAL_MODE : i == SPORT_PLUS_MODE.value ? SPORT_PLUS_MODE : i == AI_MODE.value ? AI_MODE : i == OFFROAD_MODE.value ? OFFROAD_MODE : i == ATS_SAND.value ? ATS_SAND : i == ATS_MUD.value ? ATS_MUD : i == ATS_SNOW.value ? ATS_SNOW : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum EPSStyle {
        COMFORT(1),
        LIGHT(2),
        SPORT(3),
        __UNKNOWN__(-1);

        public final int value;

        EPSStyle(int i) {
            this.value = i;
        }

        public static EPSStyle valueOf(int i) {
            return i == COMFORT.value ? COMFORT : i == LIGHT.value ? LIGHT : i == SPORT.value ? SPORT : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum MemoryDriveMode {
        NOT_MEMORY(1, 0),
        MEMORY(2, 1),
        NOT_USED(3, -1),
        __UNKNOWN__(-1, -1);

        private final int rx;
        private final int tx;
        public final int value;

        MemoryDriveMode(int i, int i2) {
            this.rx = i;
            this.tx = i2;
            this.value = this.tx;
        }

        public static MemoryDriveMode valueOf(int i) {
            return i == NOT_MEMORY.rx ? NOT_MEMORY : i == MEMORY.rx ? MEMORY : i == NOT_USED.rx ? NOT_USED : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum MemoryDriveMode_A9E {
        MEMORY(2, 2),
        NOT_MEMORY(1, 1),
        __UNKNOWN__(-1, -1);

        private final int rx;
        private final int tx;
        public final int value;

        MemoryDriveMode_A9E(int i, int i2) {
            this.rx = i;
            this.tx = i2;
            this.value = this.tx;
        }

        public static MemoryDriveMode_A9E valueOf(int i) {
            return i == MEMORY.rx ? MEMORY : i == NOT_MEMORY.rx ? NOT_MEMORY : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum EspState {
        ESP_ON(0, 1),
        TCS_OFF(1, 2),
        ESP_OFF(2, -1),
        ESP_FAILURE(3, -1),
        TCS_OFF_VDC_OFF(-2, 3),
        __UNKNOWN__(-1, -1);

        private final int rx;
        private final int tx;
        public final int value;

        EspState(int i, int i2) {
            this.rx = i;
            this.tx = i2;
            this.value = this.tx;
        }

        public static EspState valueOf(int i) {
            return i == ESP_ON.rx ? ESP_ON : i == TCS_OFF.rx ? TCS_OFF : i == ESP_OFF.rx ? ESP_OFF : i == ESP_FAILURE.rx ? ESP_FAILURE : i == TCS_OFF_VDC_OFF.rx ? TCS_OFF_VDC_OFF : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum HdcState {
        HDC_OFF(0, 1),
        HDC_ON(1, 2),
        HDC_FAILURE(2, -1),
        __UNKNOWN__(-1, -1);

        private final int rx;
        private final int tx;
        public final int value;

        HdcState(int i, int i2) {
            this.rx = i;
            this.tx = i2;
            this.value = this.tx;
        }

        public static HdcState valueOf(int i) {
            return i == HDC_OFF.rx ? HDC_OFF : i == HDC_ON.rx ? HDC_ON : i == HDC_FAILURE.rx ? HDC_FAILURE : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum AvdcMode {
        INVALID(0),
        MODEST_MODEL(1),
        RADICAL_MODEL(2),
        ON_LOW_ADHESION_ROAD(3),
        ADAPTIVE_MODEL(4),
        OFF(5),
        __UNKNOWN__(-1);

        public final int value;

        AvdcMode(int i) {
            this.value = i;
        }

        public static AvdcMode valueOf(int i) {
            return i == INVALID.value ? INVALID : i == MODEST_MODEL.value ? MODEST_MODEL : i == RADICAL_MODEL.value ? RADICAL_MODEL : i == ON_LOW_ADHESION_ROAD.value ? ON_LOW_ADHESION_ROAD : i == ADAPTIVE_MODEL.value ? ADAPTIVE_MODEL : i == OFF.value ? OFF : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum GasPedalLevel {
        INVALID(0),
        LEVEL_1(1),
        LEVEL_2(2),
        LEVEL_3(3),
        LEVEL_4(4),
        LEVEL_5(5),
        __UNKNOWN__(-1);

        public final int value;

        GasPedalLevel(int i) {
            this.value = i;
        }

        public static GasPedalLevel valueOf(int i) {
            return i == INVALID.value ? INVALID : i == LEVEL_1.value ? LEVEL_1 : i == LEVEL_2.value ? LEVEL_2 : i == LEVEL_3.value ? LEVEL_3 : i == LEVEL_4.value ? LEVEL_4 : i == LEVEL_5.value ? LEVEL_5 : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum TcuDriveMode {
        NORMAL(0),
        SPORT(1),
        WINTER(2),
        UPSLOPE_ONE(3),
        HOT_ONE(4),
        UPSLOPE_TWO(5),
        HOT_TWO(6),
        WUSP(7),
        CRUISE(8),
        TIPTRONIC(9),
        ECO(10),
        HIGH_ALTITUDE(11),
        SPORT_PLUS(12),
        OFF_ROAD(13),
        __UNKNOWN__(-1);

        public final int value;

        TcuDriveMode(int i) {
            this.value = i;
        }

        public static TcuDriveMode valueOf(int i) {
            return i == NORMAL.value ? NORMAL : i == SPORT.value ? SPORT : i == WINTER.value ? WINTER : i == UPSLOPE_ONE.value ? UPSLOPE_ONE : i == HOT_ONE.value ? HOT_ONE : i == UPSLOPE_TWO.value ? UPSLOPE_TWO : i == HOT_TWO.value ? HOT_TWO : i == WUSP.value ? WUSP : i == CRUISE.value ? CRUISE : i == TIPTRONIC.value ? TIPTRONIC : i == ECO.value ? ECO : i == HIGH_ALTITUDE.value ? HIGH_ALTITUDE : i == SPORT_PLUS.value ? SPORT_PLUS : i == OFF_ROAD.value ? OFF_ROAD : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum DriveSystemMode {
        NORMAL(0),
        ECO(1),
        SPORT(2),
        WINTER(3),
        MANUAL(4),
        SPORT_PLUS(5),
        __UNKNOWN__(-1);

        public final int value;

        DriveSystemMode(int i) {
            this.value = i;
        }

        public static DriveSystemMode valueOf(int i) {
            return i == NORMAL.value ? NORMAL : i == ECO.value ? ECO : i == SPORT.value ? SPORT : i == WINTER.value ? WINTER : i == MANUAL.value ? MANUAL : i == SPORT_PLUS.value ? SPORT_PLUS : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum AutoHoldState {
        OFF(0),
        ON(1),
        STANDBY(2),
        FAILURE(3),
        __UNKNOWN__(-1);

        public final int value;

        AutoHoldState(int i) {
            this.value = i;
        }

        public static AutoHoldState valueOf(int i) {
            return i == OFF.value ? OFF : i == ON.value ? ON : i == STANDBY.value ? STANDBY : i == FAILURE.value ? FAILURE : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum EspStyle {
        NORMAL(0),
        SNOW(1),
        MUD(2),
        SAND(3),
        SPORT(4),
        __UNKNOWN__(-1);

        public final int value;

        EspStyle(int i) {
            this.value = i;
        }

        public static EspStyle valueOf(int i) {
            return i == NORMAL.value ? NORMAL : i == SNOW.value ? SNOW : i == MUD.value ? MUD : i == SAND.value ? SAND : i == SPORT.value ? SPORT : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum EpsModeState {
        NOT_READY(0),
        READY(1),
        IN_TRANSITION(2),
        FAULT(3),
        __UNKNOWN__(-1);

        public final int value;

        EpsModeState(int i) {
            this.value = i;
        }

        public static EpsModeState valueOf(int i) {
            return i == NOT_READY.value ? NOT_READY : i == READY.value ? READY : i == IN_TRANSITION.value ? IN_TRANSITION : i == FAULT.value ? FAULT : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum VdcOffState {
        OFF(1),
        ON(0),
        __UNKNOWN__(-1);

        public final int value;

        VdcOffState(int i) {
            this.value = i;
        }

        public static VdcOffState valueOf(int i) {
            return i == OFF.value ? OFF : i == ON.value ? ON : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum MrrAccMode {
        OFF(0),
        PASSIVE(1),
        STANDBY(2),
        ACTIVE_CONTROL(3),
        BRAKE_ONLY(4),
        OVER_RIDE(5),
        STAND_WAIT(6),
        FAILURE(7),
        __UNKNOWN__(-1);

        public final int value;

        MrrAccMode(int i) {
            this.value = i;
        }

        public static MrrAccMode valueOf(int i) {
            return i == OFF.value ? OFF : i == PASSIVE.value ? PASSIVE : i == STANDBY.value ? STANDBY : i == ACTIVE_CONTROL.value ? ACTIVE_CONTROL : i == BRAKE_ONLY.value ? BRAKE_ONLY : i == OVER_RIDE.value ? OVER_RIDE : i == STAND_WAIT.value ? STAND_WAIT : i == FAILURE.value ? FAILURE : __UNKNOWN__;
        }
    }
}
