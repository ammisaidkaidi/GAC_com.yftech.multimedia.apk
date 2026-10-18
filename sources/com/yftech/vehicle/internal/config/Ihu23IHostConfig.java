package com.yftech.vehicle.internal.config;

/* loaded from: /home/user/work/dex/classes4.dex */
public interface Ihu23IHostConfig {
    public static final int HOST_CONFIG = 9943;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum Config {
        LANGUAGE(0, 0, 3),
        NUMBER_OF_SCREEN(0, 4, 5),
        CARPLAY(1, 0),
        CARLIFE(1, 1),
        IPHONE_DEFAULT_CONNECTING(1, 3),
        WIFI(2, 0, 1),
        BT(2, 2),
        CELLULAR_NETWORK(2, 3),
        AUX(2, 4),
        IPOD(2, 5),
        USB(2, 6, 7),
        ETHERNET_NET(3, 0),
        RADIO_CONFIGURATION(3, 2, 3),
        RADAR_VOLUME_ADJUSTMENT(3, 6, 7),
        SDVC_CURVE_CONFIGURATION(4, 0),
        HVAC_DISPLAY_TIME(4, 1, 3),
        RADIO_FREQUENCY(4, 4, 7),
        MEDIA_VOLUME_DELAY(5, 0, 2),
        SCREEN_SWITCH_DELAY(5, 3, 5),
        RADAR_SWITCH(5, 6),
        KEYTONE(7, 4, 5),
        INTERFACE_SOUND(7, 6, 7),
        FACE_ID(8, 0),
        SCREENSAVER(8, 6),
        USER_MANUAL(8, 7),
        ENGINEERING_MODE(9, 0),
        REMINDING_MAINTENANCE_CYCLE(9, 1),
        REMINDING_RESET_CYCLE(9, 2),
        REPEAT_SETTING(9, 3),
        __UNKNOWN__(-1, -1);

        public final byte bitSize;
        public final byte byteIndex;
        public final byte startBit;

        Config(int i, int i2, int i3) {
            this.byteIndex = (byte) i;
            this.startBit = (byte) i2;
            this.bitSize = (byte) ((i3 - i2) + 1);
        }

        Config(int i, int i2) {
            this.byteIndex = (byte) i;
            this.startBit = (byte) i2;
            this.bitSize = (byte) 1;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum Language {
        CHINESE(0),
        ENGLISH(1),
        ARABIC_RESERVED(2),
        RUSSIAN_RESERVED(3),
        __UNKNOWN__(-1);

        public final int value;

        Language(int i) {
            this.value = i;
        }

        public static Language valueOf(int i) {
            return i == CHINESE.value ? CHINESE : i == ENGLISH.value ? ENGLISH : i == ARABIC_RESERVED.value ? ARABIC_RESERVED : i == RUSSIAN_RESERVED.value ? RUSSIAN_RESERVED : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum NumberOfScreen {
        TOW(0),
        THREE(1),
        ONE(2),
        __UNKNOWN__(-1);

        public final int value;

        NumberOfScreen(int i) {
            this.value = i;
        }

        public static NumberOfScreen valueOf(int i) {
            return i == TOW.value ? TOW : i == THREE.value ? THREE : i == ONE.value ? ONE : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum Wifi {
        NOT_PRESENT(0),
        AP_STA_RESPECTIVELY(1),
        AP_STA_SIMULTANEOUSLY(2),
        __UNKNOWN__(-1);

        public final int value;

        Wifi(int i) {
            this.value = i;
        }

        public static Wifi valueOf(int i) {
            return i == NOT_PRESENT.value ? NOT_PRESENT : i == AP_STA_RESPECTIVELY.value ? AP_STA_RESPECTIVELY : i == AP_STA_SIMULTANEOUSLY.value ? AP_STA_SIMULTANEOUSLY : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum Usb {
        NOT_PRESENT(0),
        ONE(1),
        TWO(2),
        __UNKNOWN__(-1);

        public final int value;

        Usb(int i) {
            this.value = i;
        }

        public static Usb valueOf(int i) {
            return i == NOT_PRESENT.value ? NOT_PRESENT : i == ONE.value ? ONE : i == TWO.value ? TWO : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum RadioConfiguration {
        NOT_PRESENT(0),
        FM(1),
        AM(2),
        FM_PLUSAM(3),
        __UNKNOWN__(-1);

        public final int value;

        RadioConfiguration(int i) {
            this.value = i;
        }

        public static RadioConfiguration valueOf(int i) {
            return i == NOT_PRESENT.value ? NOT_PRESENT : i == FM.value ? FM : i == AM.value ? AM : i == FM_PLUSAM.value ? FM_PLUSAM : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum RadarVolumeAdjustment {
        NOT_PRESENT(0),
        LOW(1),
        MIDDLE(2),
        HIGH(3),
        __UNKNOWN__(-1);

        public final int value;

        RadarVolumeAdjustment(int i) {
            this.value = i;
        }

        public static RadarVolumeAdjustment valueOf(int i) {
            return i == NOT_PRESENT.value ? NOT_PRESENT : i == LOW.value ? LOW : i == MIDDLE.value ? MIDDLE : i == HIGH.value ? HIGH : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum SdvcCurveConfiguration {
        SVC1(0),
        SVC2(1),
        __UNKNOWN__(-1);

        public final int value;

        SdvcCurveConfiguration(int i) {
            this.value = i;
        }

        public static SdvcCurveConfiguration valueOf(int i) {
            return i == SVC1.value ? SVC1 : i == SVC2.value ? SVC2 : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum HvacDisplayTime {
        NOT_PRESENT(0),
        FIVE_SECOND(1),
        TEN_SECOND(2),
        FIFTEEN_SECOND(3),
        THIRTY_SECOND(4),
        __UNKNOWN__(-1);

        public final int value;

        HvacDisplayTime(int i) {
            this.value = i;
        }

        public static HvacDisplayTime valueOf(int i) {
            return i == NOT_PRESENT.value ? NOT_PRESENT : i == FIVE_SECOND.value ? FIVE_SECOND : i == TEN_SECOND.value ? TEN_SECOND : i == FIFTEEN_SECOND.value ? FIFTEEN_SECOND : i == THIRTY_SECOND.value ? THIRTY_SECOND : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum RadioFrequency {
        CHINA_MIDDLEEAST_AFRICA(0),
        EUROPE1(1),
        EUROPE2(2),
        EASTERN_EUROPE1(3),
        EASTERN_EUROPE2(4),
        AUSTRALIA(5),
        USA(6),
        LATIN_AMERICA(7),
        SOUTHEAST_ASIA(8),
        JAPAN(9),
        __UNKNOWN__(-1);

        public final int value;

        RadioFrequency(int i) {
            this.value = i;
        }

        public static RadioFrequency valueOf(int i) {
            return i == CHINA_MIDDLEEAST_AFRICA.value ? CHINA_MIDDLEEAST_AFRICA : i == EUROPE1.value ? EUROPE1 : i == EUROPE2.value ? EUROPE2 : i == EASTERN_EUROPE1.value ? EASTERN_EUROPE1 : i == EASTERN_EUROPE2.value ? EASTERN_EUROPE2 : i == AUSTRALIA.value ? AUSTRALIA : i == USA.value ? USA : i == LATIN_AMERICA.value ? LATIN_AMERICA : i == SOUTHEAST_ASIA.value ? SOUTHEAST_ASIA : i == JAPAN.value ? JAPAN : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum Keytone {
        NOT_PRESENT(0),
        MODERN(1),
        VINTAGE(2),
        NO_KEYTONE(3),
        __UNKNOWN__(-1);

        public final int value;

        Keytone(int i) {
            this.value = i;
        }

        public static Keytone valueOf(int i) {
            return i == NOT_PRESENT.value ? NOT_PRESENT : i == MODERN.value ? MODERN : i == VINTAGE.value ? VINTAGE : i == NO_KEYTONE.value ? NO_KEYTONE : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum InterfaceSound {
        NOT_PRESENT(0),
        ON(1),
        OFF(2),
        __UNKNOWN__(-1);

        public final int value;

        InterfaceSound(int i) {
            this.value = i;
        }

        public static InterfaceSound valueOf(int i) {
            return i == NOT_PRESENT.value ? NOT_PRESENT : i == ON.value ? ON : i == OFF.value ? OFF : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum EngineeringMode {
        CLOSE(0),
        OPEN(1),
        __UNKNOWN__(-1);

        public final int value;

        EngineeringMode(int i) {
            this.value = i;
        }

        public static EngineeringMode valueOf(int i) {
            return i == CLOSE.value ? CLOSE : i == OPEN.value ? OPEN : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum RemindingMaintenanceCycle {
        CLOSE(0),
        OPEN(1),
        __UNKNOWN__(-1);

        public final int value;

        RemindingMaintenanceCycle(int i) {
            this.value = i;
        }

        public static RemindingMaintenanceCycle valueOf(int i) {
            return i == CLOSE.value ? CLOSE : i == OPEN.value ? OPEN : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum RemindingResetCycle {
        CLOSE(0),
        OPEN(1),
        __UNKNOWN__(-1);

        public final int value;

        RemindingResetCycle(int i) {
            this.value = i;
        }

        public static RemindingResetCycle valueOf(int i) {
            return i == CLOSE.value ? CLOSE : i == OPEN.value ? OPEN : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum RepeatSetting {
        CLOSE(0),
        OPEN(1),
        __UNKNOWN__(-1);

        public final int value;

        RepeatSetting(int i) {
            this.value = i;
        }

        public static RepeatSetting valueOf(int i) {
            return i == CLOSE.value ? CLOSE : i == OPEN.value ? OPEN : __UNKNOWN__;
        }
    }
}
