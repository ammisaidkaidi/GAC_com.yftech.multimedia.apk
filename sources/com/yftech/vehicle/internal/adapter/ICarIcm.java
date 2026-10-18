package com.yftech.vehicle.internal.adapter;

/* loaded from: /home/user/work/dex/classes4.dex */
public interface ICarIcm extends IBaseApi {
    public static final int BACK_LIGHT_LEVEL = 114;
    public static final int BACK_LIGHT_LEVEL_SETTING = 219;
    public static final int FM_FREQ_SYMBOL_SETTING = 533;
    public static final int FUEL_ECONOMY_AND_DISTANCE_UNIT = 119;
    public static final int FUEL_ECONOMY_AND_DISTANCE_UNIT_SETTING = 51;
    public static final int KEEP_MUTE_WARNING = 120;
    public static final int KEYBOARD_BACKLIGHT = 226;
    public static final int LANGUAGE = 118;
    public static final int LANGUAGE_SETTING = 50;
    public static final int METER_VOLUME_MODE = 258;
    public static final int METER_VOLUME_MODE_SETTING = 259;
    public static final int PRESSURE_UNIT = 116;
    public static final int PRESSURE_UNIT_SETTING = 48;
    public static final int SPEED_WARNING = 117;
    public static final int SPEED_WARNING_SETTING = 49;
    public static final int TEMPERATURE_UNIT = 115;
    public static final int TEMPERATURE_UNIT_SETTING = 47;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum BackLightLevel {
        LEVEL_1(0, 1),
        LEVEL_2(1, 2),
        LEVEL_3(2, 3),
        LEVEL_4(3, 4),
        LEVEL_5(4, 5),
        LEVEL_6(5, 6),
        LEVEL_7(6, 7),
        LEVEL_8(7, 8),
        __UNKNOWN__(-1, -1);

        private final int rx;
        private final int tx;
        public final int value;

        BackLightLevel(int i, int i2) {
            this.rx = i;
            this.tx = i2;
            this.value = this.tx;
        }

        public static BackLightLevel valueOf(int i) {
            return i == LEVEL_1.rx ? LEVEL_1 : i == LEVEL_2.rx ? LEVEL_2 : i == LEVEL_3.rx ? LEVEL_3 : i == LEVEL_4.rx ? LEVEL_4 : i == LEVEL_5.rx ? LEVEL_5 : i == LEVEL_6.rx ? LEVEL_6 : i == LEVEL_7.rx ? LEVEL_7 : i == LEVEL_8.rx ? LEVEL_8 : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum TemperatureUnit {
        CELSIUS(0, 1),
        FAHRENHEIT(1, 2),
        __UNKNOWN__(-1, -1);

        private final int rx;
        private final int tx;
        public final int value;

        TemperatureUnit(int i, int i2) {
            this.rx = i;
            this.tx = i2;
            this.value = this.tx;
        }

        public static TemperatureUnit valueOf(int i) {
            return i == CELSIUS.rx ? CELSIUS : i == FAHRENHEIT.rx ? FAHRENHEIT : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum PressureUnit {
        K_PA(0, 1),
        BAR(1, 2),
        PSI(2, 3),
        __UNKNOWN__(-1, -1);

        private final int rx;
        private final int tx;
        public final int value;

        PressureUnit(int i, int i2) {
            this.rx = i;
            this.tx = i2;
            this.value = this.tx;
        }

        public static PressureUnit valueOf(int i) {
            return i == K_PA.rx ? K_PA : i == BAR.rx ? BAR : i == PSI.rx ? PSI : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum Language {
        CHINESE(1, 1),
        ENGLISH(2, 2),
        RUSSIAN(3, 3),
        ARABIC(4, 4),
        SPANISH(5, 5),
        PORTUGUESE(6, 6),
        INDONESIAN(7, 7),
        CHINESE_TRADITIONAL(8, 8),
        __UNKNOWN__(-1, -1);

        private final int rx;
        private final int tx;
        public final int value;

        Language(int i, int i2) {
            this.rx = i;
            this.tx = i2;
            this.value = this.tx;
        }

        public static Language valueOf(int i) {
            return i == CHINESE.rx ? CHINESE : i == ENGLISH.rx ? ENGLISH : i == RUSSIAN.rx ? RUSSIAN : i == ARABIC.rx ? ARABIC : i == SPANISH.rx ? SPANISH : i == PORTUGUESE.rx ? PORTUGUESE : i == INDONESIAN.rx ? INDONESIAN : i == CHINESE_TRADITIONAL.rx ? CHINESE_TRADITIONAL : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum FuelEconomyAndDistanceUnit {
        L_PER_100KM_AND_KM(0, 1),
        MPG_GB_AND_M(1, 2),
        MPG_US_AND_M(2, 3),
        KM_L_AND_KM(3, 4),
        __UNKNOWN__(-1, -1);

        private final int rx;
        private final int tx;
        public final int value;

        FuelEconomyAndDistanceUnit(int i, int i2) {
            this.rx = i;
            this.tx = i2;
            this.value = this.tx;
        }

        public static FuelEconomyAndDistanceUnit valueOf(int i) {
            return i == L_PER_100KM_AND_KM.rx ? L_PER_100KM_AND_KM : i == MPG_GB_AND_M.rx ? MPG_GB_AND_M : i == MPG_US_AND_M.rx ? MPG_US_AND_M : i == KM_L_AND_KM.rx ? KM_L_AND_KM : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum MeterVolumeMode {
        LOW(0, 1),
        MIDDLE(1, 2),
        HIGH(2, 3),
        __UNKNOWN__(-1, -1);

        private final int rx;
        private final int tx;
        public final int value;

        MeterVolumeMode(int i, int i2) {
            this.rx = i;
            this.tx = i2;
            this.value = this.tx;
        }

        public static MeterVolumeMode valueOf(int i) {
            return i == LOW.rx ? LOW : i == MIDDLE.rx ? MIDDLE : i == HIGH.rx ? HIGH : __UNKNOWN__;
        }
    }
}
