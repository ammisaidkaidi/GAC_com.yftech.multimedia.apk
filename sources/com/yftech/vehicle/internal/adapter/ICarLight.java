package com.yftech.vehicle.internal.adapter;

/* loaded from: /home/user/work/dex/classes4.dex */
public interface ICarLight extends IBaseApi {
    public static final int ADB_SATE = 553;
    public static final int ADB_SETTING = 554;
    public static final int ATMOSPHERE_LAMP_BRIGHTNESS = 275;
    public static final int ATMOSPHERE_LAMP_BRIGHTNESS_SETTING = 276;
    public static final int ATMOSPHERE_LAMP_COLOR = 277;
    public static final int ATMOSPHERE_LAMP_COLOR_SETTING = 278;
    public static final int ATMOSPHERE_LAMP_DRIVE_MODE_SETTING = 280;
    public static final int ATMOSPHERE_LAMP_MUSIC_MODE = 281;
    public static final int ATMOSPHERE_LAMP_MUSIC_MODE_SETTING = 282;
    public static final int ATMOSPHERE_LAMP_SETTING = 274;
    public static final int ATMOSPHERE_LAMP_WORK_MODE = 279;
    public static final int ATMOSPHERE_LAMP_WORK_MODE_SETTING = 351;
    public static final int AUTO_HOLD_LIGHT_ENABLE_SETTING = 496;
    public static final int AUTO_HOLD_LIGHT_ENABLE_STATE = 495;
    public static final int BRAKE_LAMP_STATE = 198;
    public static final int HEAD_LIGHT_DELAY_SETTING = 70;
    public static final int HEAD_LIGHT_DELAY_STATE = 178;
    public static final int IHBC_SETTING = 69;
    public static final int IHBC_STATE = 177;
    public static final int ILBC_SETTING = 200;
    public static final int ILBC_STATE = 199;
    public static final int LIGHT_SHOW_FUN_CMD_SETTING = 507;
    public static final int LIGHT_SHOW_MAIN_LAMP_SWITCH_STATE = 511;
    public static final int LIGHT_SHOW_MODE_SETTING = 509;
    public static final int LIGHT_SHOW_MODE_STATE = 508;
    public static final int LIGHT_SHOW_TIME_FLAG_SETTING = 510;
    public static final int LOW_LIGHT_STATE = 209;
    public static final int SMALL_LIGHT_STATE = 262;
    public static final int TOPLIGHT_SETTING = 221;
    public static final int TOPLIGHT_STATE = 220;
    public static final int WEL_LIGHT_ENABLE_SETTING = 498;
    public static final int WEL_LIGHT_ENABLE_STATE = 497;
    public static final int WEL_LIGHT_MODE = 499;
    public static final int WEL_LIGHT_MODE_SETTING = 500;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum AtmosphereLampWorkMode {
        OFF(0),
        COLOR_CHOOSE_MODE(1),
        DRIVER_MODE(2),
        COMBINED_COLOR_MODE1(3),
        COMBINED_COLOR_MODE2(4),
        COMBINED_COLOR_MODE3(5),
        __UNKNOWN__(-1);

        public final int value;

        AtmosphereLampWorkMode(int i) {
            this.value = i;
        }

        public static AtmosphereLampWorkMode valueOf(int i) {
            return i == OFF.value ? OFF : i == COLOR_CHOOSE_MODE.value ? COLOR_CHOOSE_MODE : i == DRIVER_MODE.value ? DRIVER_MODE : i == COMBINED_COLOR_MODE1.value ? COMBINED_COLOR_MODE1 : i == COMBINED_COLOR_MODE2.value ? COMBINED_COLOR_MODE2 : i == COMBINED_COLOR_MODE3.value ? COMBINED_COLOR_MODE3 : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum WelLightMode {
        DISABLE(0, 1),
        MODLE1(1, 2),
        MODEL2(2, 3),
        MODLE3(3, 4),
        __UNKNOWN__(-1, -1);

        private final int rx;
        private final int tx;
        public final int value;

        WelLightMode(int i, int i2) {
            this.rx = i;
            this.tx = i2;
            this.value = this.tx;
        }

        public static WelLightMode valueOf(int i) {
            return i == DISABLE.rx ? DISABLE : i == MODLE1.rx ? MODLE1 : i == MODEL2.rx ? MODEL2 : i == MODLE3.rx ? MODLE3 : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum LightShowFunCmd {
        PREPARE(1),
        START(2),
        END(3),
        __UNKNOWN__(-1);

        public final int value;

        LightShowFunCmd(int i) {
            this.value = i;
        }

        public static LightShowFunCmd valueOf(int i) {
            return i == PREPARE.value ? PREPARE : i == START.value ? START : i == END.value ? END : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum LightShowMode {
        OFF(0, 0),
        MODLE1(1, 1),
        MODEL2(2, 2),
        MODLE3(3, 3),
        __UNKNOWN__(-1, -1);

        private final int rx;
        private final int tx;
        public final int value;

        LightShowMode(int i, int i2) {
            this.rx = i;
            this.tx = i2;
            this.value = this.tx;
        }

        public static LightShowMode valueOf(int i) {
            return i == OFF.rx ? OFF : i == MODLE1.rx ? MODLE1 : i == MODEL2.rx ? MODEL2 : i == MODLE3.rx ? MODLE3 : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum MainLampSwitchSt {
        OFF(0),
        AUTO(1),
        PARKING_LAMP(2),
        LOW_BEAM(3),
        __UNKNOWN__(-1);

        public final int value;

        MainLampSwitchSt(int i) {
            this.value = i;
        }

        public static MainLampSwitchSt valueOf(int i) {
            return i == OFF.value ? OFF : i == AUTO.value ? AUTO : i == PARKING_LAMP.value ? PARKING_LAMP : i == LOW_BEAM.value ? LOW_BEAM : __UNKNOWN__;
        }
    }
}
