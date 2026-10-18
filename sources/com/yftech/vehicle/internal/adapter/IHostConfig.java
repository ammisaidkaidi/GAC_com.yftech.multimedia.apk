package com.yftech.vehicle.internal.adapter;

/* loaded from: /home/user/work/dex/classes4.dex */
public interface IHostConfig {
    public static final int HOST_CONFIG = 9943;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum Config {
        LANGUAGE(0, 0, 3),
        NUMBER_OF_SCREEN(0, 4, 5),
        CAR_MODE(0, 6, 7),
        CARPLAY(1, 0),
        CARLIFE(1, 1),
        HICAR(1, 2),
        IPHONE_DEFAULT_CONNECTING(1, 3),
        EASY_CONNECT(1, 4),
        WIFI(2, 0, 1),
        BT(2, 2),
        CELLULAR_NETWORK(2, 3),
        AUX(2, 4),
        IPOD(2, 5),
        USB(2, 6, 7),
        ETHERNET_NET(3, 0),
        RADIO_CONFIGURATION(3, 2, 3),
        RADIO_DAB(3, 4),
        RADIO_RDS(3, 5),
        RADIO_DAB_RDS_CONFIGURATION(3, 4, 5),
        RADAR_VOLUME_ADJUSTMENT(3, 6, 7),
        SDVC_CURVE_CONFIGURATION(4, 0),
        HVAC_DISPLAY_TIME(4, 1, 3),
        RADIO_FREQUENCY(4, 4, 7),
        MEDIA_VOLUME_DELAY(5, 0, 2),
        SCREEN_SWITCH_DELAY(5, 3, 5),
        RADAR_SWITCH(5, 6),
        WALLPAPER(6, 0),
        AUTO_PARKING_BACKGROUND_PUSH(6, 1),
        MESSAGE_NOTIFICATION(6, 2, 3),
        EXPRESS_MESSAGE(6, 4, 5),
        MAP_PREFERENCES(6, 6, 7),
        NAVIGATION_SIGNAL_MODE(7, 0, 3),
        KEYTONE(7, 4, 5),
        INTERFACE_SOUND(7, 6, 7),
        FACE_ID(8, 0),
        SHIFT_SOUND(8, 1),
        SCENE_SWITCH(8, 2),
        TRAFFIC_DISPLAY(8, 3),
        SCREENSAVER(8, 6),
        USER_MANUAL(8, 7),
        ENGINEERING_MODE(9, 0),
        REMINDING_MAINTENANCE_CYCLE(9, 1),
        REMINDING_RESET_CYCLE(9, 2),
        REPEAT_SETTING(9, 3),
        LEFT_RIGHT_HAND_DRIVE_VEHICLES(9, 4),
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
        CHINESE_PLUSENGLISH(4),
        SPANISH(5),
        INDONESIAN(6),
        __UNKNOWN__(-1);

        public final int value;

        Language(int i) {
            this.value = i;
        }

        public static Language valueOf(int i) {
            return i == CHINESE.value ? CHINESE : i == ENGLISH.value ? ENGLISH : i == ARABIC_RESERVED.value ? ARABIC_RESERVED : i == RUSSIAN_RESERVED.value ? RUSSIAN_RESERVED : i == CHINESE_PLUSENGLISH.value ? CHINESE_PLUSENGLISH : i == SPANISH.value ? SPANISH : i == INDONESIAN.value ? INDONESIAN : __UNKNOWN__;
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
    public enum CarMode {
        CAR_MODE1(0),
        CAR_MODE2(1),
        CAR_MODE3(2),
        CAR_MODE4(3),
        __UNKNOWN__(-1);

        public final int value;

        CarMode(int i) {
            this.value = i;
        }

        public static CarMode valueOf(int i) {
            return i == CAR_MODE1.value ? CAR_MODE1 : i == CAR_MODE2.value ? CAR_MODE2 : i == CAR_MODE3.value ? CAR_MODE3 : i == CAR_MODE4.value ? CAR_MODE4 : __UNKNOWN__;
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
    public enum RadioDABAndRDSConfig {
        RDS(0),
        DAB_RDS(1),
        DAB(2),
        NOT_PRESENT(3),
        __UNKNOWN__(-1);

        public final int value;

        RadioDABAndRDSConfig(int i) {
            this.value = i;
        }

        public static RadioDABAndRDSConfig valueOf(int i) {
            return i == NOT_PRESENT.value ? NOT_PRESENT : i == DAB_RDS.value ? DAB_RDS : i == DAB.value ? DAB : __UNKNOWN__;
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
        FIVES_SEC(1),
        TEN_SEC(2),
        FIFTEEN_SEC(3),
        THIRTY_SEC(4),
        __UNKNOWN__(-1);

        public final int value;

        HvacDisplayTime(int i) {
            this.value = i;
        }

        public static HvacDisplayTime valueOf(int i) {
            return i == NOT_PRESENT.value ? NOT_PRESENT : i == FIVES_SEC.value ? FIVES_SEC : i == TEN_SEC.value ? TEN_SEC : i == FIFTEEN_SEC.value ? FIFTEEN_SEC : i == THIRTY_SEC.value ? THIRTY_SEC : __UNKNOWN__;
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
        AFRICA_2(10),
        __UNKNOWN__(-1);

        public final int value;

        RadioFrequency(int i) {
            this.value = i;
        }

        public static RadioFrequency valueOf(int i) {
            return i == CHINA_MIDDLEEAST_AFRICA.value ? CHINA_MIDDLEEAST_AFRICA : i == EUROPE1.value ? EUROPE1 : i == EUROPE2.value ? EUROPE2 : i == EASTERN_EUROPE1.value ? EASTERN_EUROPE1 : i == EASTERN_EUROPE2.value ? EASTERN_EUROPE2 : i == AUSTRALIA.value ? AUSTRALIA : i == USA.value ? USA : i == LATIN_AMERICA.value ? LATIN_AMERICA : i == SOUTHEAST_ASIA.value ? SOUTHEAST_ASIA : i == JAPAN.value ? JAPAN : i == AFRICA_2.value ? AFRICA_2 : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum MediaVolumeDelay {
        THE_0MS(0),
        TWO_HUNDRED_MS(1),
        THREE_HUNDRED_MS(2),
        FOUR_HUNDRED_MS(3),
        FIVE_HUNDRED_MS(4),
        SIX_HUNDRED_MS(5),
        SEVEN_HUNDRED_MS(6),
        EIGHT_HUNDRED_MS(7),
        __UNKNOWN__(-1);

        public final int value;

        MediaVolumeDelay(int i) {
            this.value = i;
        }

        public static MediaVolumeDelay valueOf(int i) {
            return i == THE_0MS.value ? THE_0MS : i == TWO_HUNDRED_MS.value ? TWO_HUNDRED_MS : i == THREE_HUNDRED_MS.value ? THREE_HUNDRED_MS : i == FOUR_HUNDRED_MS.value ? FOUR_HUNDRED_MS : i == FIVE_HUNDRED_MS.value ? FIVE_HUNDRED_MS : i == SIX_HUNDRED_MS.value ? SIX_HUNDRED_MS : i == SEVEN_HUNDRED_MS.value ? SEVEN_HUNDRED_MS : i == EIGHT_HUNDRED_MS.value ? EIGHT_HUNDRED_MS : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum ScreenSwitchDelay {
        THE_0MS(0),
        TWO_HUNDRED_MS(1),
        THREE_HUNDRED_MS(2),
        FOUR_HUNDRED_MS(3),
        FIVE_HUNDRED_MS(4),
        SIX_HUNDRED_MS(5),
        SEVEN_HUNDRED_MS(6),
        EIGHT_HUNDRED_MS(7),
        __UNKNOWN__(-1);

        public final int value;

        ScreenSwitchDelay(int i) {
            this.value = i;
        }

        public static ScreenSwitchDelay valueOf(int i) {
            return i == THE_0MS.value ? THE_0MS : i == TWO_HUNDRED_MS.value ? TWO_HUNDRED_MS : i == THREE_HUNDRED_MS.value ? THREE_HUNDRED_MS : i == FOUR_HUNDRED_MS.value ? FOUR_HUNDRED_MS : i == FIVE_HUNDRED_MS.value ? FIVE_HUNDRED_MS : i == SIX_HUNDRED_MS.value ? SIX_HUNDRED_MS : i == SEVEN_HUNDRED_MS.value ? SEVEN_HUNDRED_MS : i == EIGHT_HUNDRED_MS.value ? EIGHT_HUNDRED_MS : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum MessageNotification {
        NOT_PRESENT(0),
        ON(1),
        OFF(2),
        __UNKNOWN__(-1);

        public final int value;

        MessageNotification(int i) {
            this.value = i;
        }

        public static MessageNotification valueOf(int i) {
            return i == NOT_PRESENT.value ? NOT_PRESENT : i == ON.value ? ON : i == OFF.value ? OFF : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum ExpressMessage {
        NOT_PRESENT(0),
        ON(1),
        OFF(2),
        __UNKNOWN__(-1);

        public final int value;

        ExpressMessage(int i) {
            this.value = i;
        }

        public static ExpressMessage valueOf(int i) {
            return i == NOT_PRESENT.value ? NOT_PRESENT : i == ON.value ? ON : i == OFF.value ? OFF : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum MapPreferences {
        NOT_PRESENT(0),
        GAODE(1),
        TENCENT(2),
        __UNKNOWN__(-1);

        public final int value;

        MapPreferences(int i) {
            this.value = i;
        }

        public static MapPreferences valueOf(int i) {
            return i == NOT_PRESENT.value ? NOT_PRESENT : i == GAODE.value ? GAODE : i == TENCENT.value ? TENCENT : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum NavigationSignalMode {
        NOT_PRESENT(0),
        GPS(1),
        BEIDOU(2),
        GPS_BEIDOU(3),
        __UNKNOWN__(-1);

        public final int value;

        NavigationSignalMode(int i) {
            this.value = i;
        }

        public static NavigationSignalMode valueOf(int i) {
            return i == NOT_PRESENT.value ? NOT_PRESENT : i == GPS.value ? GPS : i == BEIDOU.value ? BEIDOU : i == GPS_BEIDOU.value ? GPS_BEIDOU : __UNKNOWN__;
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

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum LeftRightHandDriveVehicles {
        LEFT(0),
        RIGHT(1),
        __UNKNOWN__(-1);

        public final int value;

        LeftRightHandDriveVehicles(int i) {
            this.value = i;
        }

        public static LeftRightHandDriveVehicles valueOf(int i) {
            return i == LEFT.value ? LEFT : i == RIGHT.value ? RIGHT : __UNKNOWN__;
        }
    }
}
