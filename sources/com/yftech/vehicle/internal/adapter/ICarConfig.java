package com.yftech.vehicle.internal.adapter;

/* loaded from: /home/user/work/dex/classes4.dex */
public interface ICarConfig {
    public static final int CAR_CONFIG = 9995;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum Config {
        VEHICLE_TYPE(0, 0, 1),
        DRIVE_TYPE(0, 2, 3),
        GEARBOX_TYPE(0, 4, 6),
        VEHICLE_PLATFORM(1, 0, 7),
        A_CAN(2, 0),
        B_CAN(2, 1),
        GPS(2, 2),
        ANTENNA(2, 3),
        MIC(2, 4),
        BCM(2, 5),
        HVAC(2, 6),
        ICM(2, 7),
        PAS(3, 0),
        GWM(3, 1),
        FCP(3, 2),
        PCS(3, 3),
        TBOX(3, 4),
        VCU(3, 5),
        AVAS(3, 6),
        RVC(3, 7),
        SVM(4, 0),
        FL_SPEAKER(4, 1),
        FR_SPEAKER(4, 2),
        RL_SPEAKER(4, 3),
        RR_SPEAKER(4, 4),
        STEERING_WHEEL_KEY(4, 5),
        FAPA(4, 6),
        HUD_SET(4, 7),
        EXTERNAL_SVM(5, 0),
        OMS(5, 1),
        TBOX_CONNECTION_MODE(6, 0, 1),
        DMS_CONNECTION_MODE(6, 2, 3),
        B_CALL_SWITCH(6, 4),
        E_CALL_SWITCH(6, 5),
        CALL_BACK(6, 6),
        RESTART_VEHICLE_COMMUNICATION_MODULE(6, 7),
        LOUDSPEAKER_NUMBER(7, 0, 3),
        LOUDSPEAKER_SUPPLIER(7, 4, 6),
        EXT_AMPLIFIERS(7, 7),
        AVAS_SOUND(8, 0),
        AVAS_SWITCH(8, 1),
        STORAGE_BOX_AUTOMATICALLY_FLIP_DOWN(8, 2),
        HIDDEN_DOOR_HANDLE(8, 3),
        WINTER_LONG_DISTANCE(8, 4),
        CHARGING_INSULATION(8, 5),
        INTELLIGENT_INSULATION_NOTIFICATION(8, 6),
        ENERGY_RECOVERY_MODE(8, 7),
        ELECTRO_DISCHARGE(9, 0),
        ECO_PLUS_MODE(9, 1),
        EPEDAL_MODE(9, 2),
        CREEP_MODE(9, 3),
        ENERGY_CONSUMPTION(9, 4),
        MONSTER_MODE_SWITCH(9, 5),
        HEALTH_CHARGE_SETTING(9, 6),
        DRIVING_MODE(9, 7),
        AUTO_MODE_OF_FRS_AND_REC_CONTROL(10, 0),
        COMFORT_CURVE(10, 1),
        QUALITY_SENSOR(10, 2),
        AUTO_DEFORST(10, 3),
        FAN_SPEED_OF_AUTO_MODE(10, 4),
        SOLAR_FEATURES(10, 5),
        FRAGRANCE(10, 6),
        ANION(10, 7),
        HEAT_PUMP_AIR_CONDITIONING(11, 0),
        AIR_CONDITIONING_ZONES(11, 1, 2),
        REAR_DEFROST_AND_REARVIEW_MIRROR_HEATING(11, 3, 4),
        CONFIG_PM2_5(11, 5, 6),
        AIR_CONDITION_TYPE(11, 7),
        CAMERA_NUMBER(12, 0, 2),
        RADAR_NUMBER(12, 3, 5),
        STANDARD_AND_HD_CAMERA_CONFIGURATION(12, 6),
        FOLLOW_TRACKING_LINE(12, 7),
        LOOK_AROUND_TO_DETECT_THE_DOOR(13, 0),
        REMOTE_FINDING_CAR(13, 1),
        BACK_ROW_DISPLAY(13, 4),
        HEAD_ACOUSTICS(13, 5),
        DVR(13, 6),
        AR(13, 7),
        TIKTOK(14, 0, 1),
        CEILING_SCREEN(14, 2),
        ADAPTIVE_HIGH_BEAM(14, 3),
        CONTROL_HIGH_BEAM_ASSISTANT(14, 4),
        CLOSE_WINDOW_WHILE_LOCK(14, 5),
        DOME_LIGHT_IN_DOOR_GEAR_POSITION(14, 6),
        CONTROL_SMART_WELCOME_LIGHT(14, 7),
        KEY_IDENTIFICATION(15, 0),
        FOLLOW_MUSIC_MODE(15, 1),
        EASY_OPEN_TAILGATE(15, 2),
        SMART_TAILGATE(15, 3),
        WIRELESS_CHARGING(15, 4),
        ACCESSORY_SMART_SCREEN(15, 5),
        PLGMFUNCCFG(15, 6),
        NFC(15, 7),
        WAL_AND_APU(16, 0, 1),
        REMOTE_UNLOCK(16, 2),
        SPEED_LOCK(16, 3),
        AUTO_UNLOCKING(16, 4),
        EXTERIOR_REAR_VIEW_MIRROR_AUTO_FOLDING_AND_UNFOLDING(16, 5),
        EXTERIOR_REARVIEW_MIRROR_DIP(16, 6),
        REARVIEW_MIRROR_ADJUSTMENT(16, 7),
        STEERING_WHEEL_STEERING_HAND_FORCE(17, 0),
        ETC_SETTING(17, 1),
        WIPER_MAINTANENCE(17, 2),
        AUTO_WIPER(17, 3),
        LOCK_AND_UNLOCK_WHISTLE_NOTE(17, 4),
        LIGHT_TURNED_OFF_DELAY(17, 5),
        AMBIENCE_LIGHTS_CONTROL(17, 6),
        IAL(17, 7),
        DRIVER_EASY_ENTRY_AND_EXIT_FUNCTION(18, 0),
        SEAT_CONTROL(18, 1),
        ROOF_CONTROL(18, 2),
        STEERING_WHEEL_CONTROL(18, 3),
        SLIDING_DOOR_CONTROL(18, 4),
        WINDOW_CONTROL(18, 5, 6),
        STEERING_WHEEL_CUSTOM_BUTTON(18, 7),
        LOCK_CONTROL(19, 0),
        SLIDING_DOOR_SPEED_ADJUSTMENT(19, 1),
        SLIDING_DOOR_CONTROL_MANUAL_AND_AUTOMATIC(19, 2),
        NAP_MODE(19, 3, 4),
        RAINSTORM_MODE(19, 5),
        QISHI_MODE(19, 6),
        PARTY_MODE(19, 7),
        WAKE_UP_MODE(20, 0),
        STEERING_WHEEL_HEATING(20, 1),
        LIGHT_SHOW(20, 2),
        AMBIENCE_LIGHTS_COMNINATION(20, 3),
        PROMPT_TYPE(20, 4, 5),
        HIGH_WAY_ASSIST(20, 6),
        NAVIGATION_DRIVING_ASSIST(20, 7),
        CLUSTER_VOLUME_SETTING(21, 0),
        CLUSTER_LANGUAGE_SETTING(21, 1),
        CLUSTER_MILEAGE_RESET(21, 2),
        CLUSTER_SPEED_UNIT(21, 3),
        CLUSTER_TEMPERATURE_UNIT(21, 4),
        CLUSTER_PRESSURE_UNIT(21, 5),
        REAR_SEAT_BELT_NOTIFICATION(21, 6),
        CLUSTER_DEFAULT_SETTING(21, 7),
        CLUSTER_FUEL_CONSUMPTION_UNIT(22, 0),
        CLUSTER_BACK_LIGHT(22, 1),
        TIME_IN_CLUSTER(22, 2),
        LANE_AUXILIARY_SWITCH(23, 0),
        LANE_ASSIST(23, 1),
        AUTO_EMERGENCY_BRAKING_BRAKING(23, 2),
        FRONT_COLLISION_WARNING(23, 3),
        IFC_CRUISEMODE(23, 4),
        BSD(23, 5),
        DOOR_OPEN_WARNING(23, 7),
        OVERSPEED_WARNING(24, 0),
        SPEED_LIMTED_SIGN_RECOGNITION(24, 1),
        STEERING_MODE(24, 2),
        DRIVING_RECORDER(24, 3),
        EVENT_RECORD_FUNCTION_SWITCH(24, 4),
        LCA_CARD(24, 5),
        LANE_CHANGE_ASSIST(24, 6, 7),
        DRIVER_STATE_OF_ALERT(25, 0),
        EMERGENCY_STEERING_MODE(25, 1),
        RAEB(25, 2),
        ALERT_MODE(25, 3),
        EMERGENCY_LANE_KEEPING_ASSIST(25, 4),
        REAR_CROSS_TRAFFIC_ALERT(25, 5),
        REAR_CROSS_TRAFFIC_ALERT_MODE(25, 6),
        REAR_APPROACHING_WARNING(25, 7),
        FRONT_CROSS_TRAFFIC_ALERT(26, 0),
        FRONT_CROSS_TRAFFIC_ALERT_MODE(26, 1),
        APA_VOICE_PROMPT_BUTTON(26, 2),
        FORWARD_COLLISION_WARNING_DISTANCE(26, 3),
        INDICATED_LANE_CHANGE(26, 4),
        OVERSPEED_ALARM_OF_TSR(26, 5),
        INTELLIGENT_SPEED_LIMIT_CONTROL(26, 6),
        DRIVER_ASSISTANCE_WARNING(26, 7),
        DISTRACTED_ALARM_INTERVAL_TIME(27, 0, 2),
        TIRED_ALARM_INTERVAL_TIME(27, 3, 7),
        APA_ALARM_DELAYED_TIME(28, 0, 3),
        ESP_OFF_SWITCH(28, 4),
        HDC_SWITCH(28, 5),
        EBOOSTER_MODE(28, 6),
        DRIVER_MODE(28, 7),
        DRIVE_MODE_MEMORY_SWITCH(29, 0),
        ENGINE_WAVE_SWITCH(29, 1),
        SUSPENSION_DAMPING(29, 2),
        THROTTLE_SENSITIVITY(29, 3),
        AVDC(29, 4, 6),
        ENERGY_RECOVERY(29, 7),
        VR_CONTROL_CRUISE(30, 0),
        VR_CONTROL_TURNLAMP(30, 1),
        VR_CONTROL_SUNSHADE(30, 2),
        VR_CONTROL_CARWINDOW(30, 3, 4),
        VR_CONTROL_IAL(30, 5, 6),
        VR_CONTROL_EXTLIGHT(30, 7),
        VR_CONTROL_TOPLIGHT(31, 0),
        VR_CONTROL_WIPER_AND_CLEANING(31, 1, 2),
        VR_CONTROL_CHARGING_AND_FUEL_TANK_CAP(31, 3),
        VR_CONTROL_ENGINE_AND_MOTOR(31, 4),
        VR_CONTROL_INSTRUMENT_BACKLIGHT(31, 5),
        VR_CONTROL_HVAC(31, 6, 7),
        SMART_HVAC(32, 0),
        SPORT_PLUS(32, 1),
        VR_CONTROL_SEAT_ADJUSTMENT(32, 2, 3),
        VR_CONTROL_ROOF(32, 4, 5),
        VR_CONTROL_PLGM(32, 6),
        VR_CONTROL_DMS_NOTIFICATION(32, 7),
        VR_CONTROL_WINDOWPOSITION(33, 0, 1),
        VR_CONTROL_ROOFPOSITION(33, 2, 3),
        VR_CONTROL(33, 4, 5),
        VR_CONTROL_CHARGING_INSULATION_NOTIFICATION(33, 6),
        VR_CONTROL_CHARGING_INSULATION_MENU_SWITCH(33, 7),
        VR_CONTROL_CHARGING_BOOKING_MENU_SWITCH(34, 0),
        VR_CONTROL_CONTROL_DRIVER_MODE(34, 1),
        VR_CONTROL_ENERGY_RECOVERY(34, 2),
        VR_CONTROL_APA_CONTROL(34, 3),
        VR_CONTROL_PARKING(34, 4, 6),
        DRIVER_DIRECT_VOICE_WAKE_UP(34, 7),
        COLD_AND_WARM_CUP_HOLDER(35, 0),
        AUTOHOLD(35, 1),
        TECHNOLOGY_SKYLIGHT(35, 2),
        ICC(35, 3),
        ANC(35, 4),
        REAR_APPROACHING_WARNING_MODE(35, 5),
        LEFT_RIGHT_HAND_DRIVE_VEHICLES(35, 6),
        RESERCED(35, 7),
        HEATING_AND_VENTILATION_FL(36, 0, 1),
        HEATING_AND_VENTILATION_FR(36, 2, 3),
        HEATING_AND_VENTILATION_RL(36, 4, 5),
        HEATING_AND_VENTILATION_RR(36, 6, 7),
        SECOND_ROW_SEATS_WELCOME(37, 0, 1),
        LIMIT_SECOND_ROW_SEATS_WELCOME_FUNCTION(37, 2, 3),
        SECOND_ROW_SEAT_MASSAGE(37, 4),
        SECOND_ROW_SEAT_ADJUSTMENT(37, 5, 6),
        SECOND_ROW_CHILD_LOCK(37, 7),
        PASSENGER_SEAT_ADJUSTMENT(38, 0, 1),
        DRIVER_SEAT_CONTROL(38, 2, 3),
        SECOND_ROW_SEAT_REST(38, 4),
        SPA(38, 5),
        ULTRAVIOLET_RAY(39, 0),
        UNLOCK_VENTILATION(39, 1),
        EVAPORATOR_SELF_DRYING(39, 2),
        AIR_CONDITIONING_BLIND_EXERCISE(39, 3),
        AIR_CONDITIONING_QUICK_START(39, 4),
        RAPID_VENTILATION(39, 5),
        HOSPITALITY_LAMP_SIGNALS(39, 6),
        TEMPORARY_PARKING_LAMP_SIGNALS(39, 7),
        LANE_CHANGE_DRIVER_CONFIRMATION(40, 0),
        LANE_CHANGE_STYLE(40, 1),
        INDICATED_LANE_CHANGING(40, 2),
        FRONT_DISTANCE_DISPLAY(40, 3),
        INTELLIGENT_COLLISION_AVOIDANCE(40, 4),
        FEEZE_MODE(41, 0, 3),
        CLUSTER_DISTANCE_SETTING(41, 4),
        ENERGY_FLOW_MODE(41, 5),
        ENERGY_FLOW_DISPLAY(41, 6),
        EV_SWITCH_DISPLAY(41, 7),
        THE_3D_CHIME_BOOT_SOUND(42, 0),
        THE_3D_CHIME_INDICATOR(42, 1),
        THE_3D_CHIME_LANE_CHANGE_ASSIT_AND_REAR_APPROACHING_WARNING(42, 2),
        THE_3D_CHIME_FRONT_COLLISION_WARNING_SOUND(42, 3),
        THE_3D_CHIME_REVERSING_RADAR_SOUND(42, 4),
        THE_3D_CHIME_IAL_SOUND(42, 5),
        THE_3D_CHIME_DRIVER_MODE_SOUND(42, 6),
        ENERGY_CONSUMPTION_APP(43, 1),
        SMART_NAVI_DRIVE(43, 2),
        SMART_COMMUT_DRIVE(43, 3),
        COMFORTABLE_STOP(43, 4),
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
    public enum VehicleType {
        TRADITIONAL_CAR(0),
        EV(1),
        HEV(2),
        PHEV(3),
        __UNKNOWN__(-1);

        public final int value;

        VehicleType(int i) {
            this.value = i;
        }

        public static VehicleType valueOf(int i) {
            return i == TRADITIONAL_CAR.value ? TRADITIONAL_CAR : i == EV.value ? EV : i == HEV.value ? HEV : i == PHEV.value ? PHEV : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum DriveType {
        TWO_WHEEL_DRIVE(0),
        FOUR_WHEEL_DRIVE(1),
        __UNKNOWN__(-1);

        public final int value;

        DriveType(int i) {
            this.value = i;
        }

        public static DriveType valueOf(int i) {
            return i == TWO_WHEEL_DRIVE.value ? TWO_WHEEL_DRIVE : i == FOUR_WHEEL_DRIVE.value ? FOUR_WHEEL_DRIVE : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum GearboxType {
        MT(0),
        AT(1),
        WDCT(2),
        DDCT(3),
        THS(4),
        GMC(5),
        __UNKNOWN__(-1);

        public final int value;

        GearboxType(int i) {
            this.value = i;
        }

        public static GearboxType valueOf(int i) {
            return i == MT.value ? MT : i == AT.value ? AT : i == WDCT.value ? WDCT : i == DDCT.value ? DDCT : i == THS.value ? THS : i == GMC.value ? GMC : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum VehiclePlatform {
        A75_2_A77(17),
        A12(32),
        A12_HIGH(33),
        A18(34),
        A18_HIGH(35),
        A55(36),
        A60(50),
        A13(51),
        A18_Y(52),
        A60_1(64),
        A58(65),
        A88(66),
        A9E(67),
        A79(71),
        A8E(74),
        A13_Y(75),
        __UNKNOWN__(-1);

        public final int value;

        VehiclePlatform(int i) {
            this.value = i;
        }

        public static VehiclePlatform valueOf(int i) {
            return i == A75_2_A77.value ? A75_2_A77 : i == A12.value ? A12 : i == A12_HIGH.value ? A12_HIGH : i == A18.value ? A18 : i == A18_HIGH.value ? A18_HIGH : i == A55.value ? A55 : i == A60.value ? A60 : i == A13.value ? A13 : i == A18_Y.value ? A18_Y : i == A60_1.value ? A60_1 : i == A58.value ? A58 : i == A88.value ? A88 : i == A9E.value ? A9E : i == A79.value ? A79 : i == A8E.value ? A8E : i == A13_Y.value ? A13_Y : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum TboxConnectionMode {
        NO_CONNECTION(0),
        USB(1),
        ETH(2),
        __UNKNOWN__(-1);

        public final int value;

        TboxConnectionMode(int i) {
            this.value = i;
        }

        public static TboxConnectionMode valueOf(int i) {
            return i == NO_CONNECTION.value ? NO_CONNECTION : i == USB.value ? USB : i == ETH.value ? ETH : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum DmsConnectionMode {
        NO_CONNECTION(0),
        GWM_TO_DMS(1),
        ETH_TO_DMS(2),
        INTEGRATED_DMS(3),
        __UNKNOWN__(-1);

        public final int value;

        DmsConnectionMode(int i) {
            this.value = i;
        }

        public static DmsConnectionMode valueOf(int i) {
            return i == NO_CONNECTION.value ? NO_CONNECTION : i == GWM_TO_DMS.value ? GWM_TO_DMS : i == ETH_TO_DMS.value ? ETH_TO_DMS : i == INTEGRATED_DMS.value ? INTEGRATED_DMS : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum LoudspeakerNumber {
        FOUR(0),
        SIX(1),
        EIGHT(2),
        TEN(3),
        THIRTEEN(4),
        TWO(5),
        __UNKNOWN__(-1);

        public final int value;

        LoudspeakerNumber(int i) {
            this.value = i;
        }

        public static LoudspeakerNumber valueOf(int i) {
            return i == FOUR.value ? FOUR : i == SIX.value ? SIX : i == EIGHT.value ? EIGHT : i == TEN.value ? TEN : i == THIRTEEN.value ? THIRTEEN : i == TWO.value ? TWO : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum LoudspeakerSupplier {
        LONGDA(0),
        FOSTER(1),
        ALPINE(2),
        HARMAN(3),
        __UNKNOWN__(-1);

        public final int value;

        LoudspeakerSupplier(int i) {
            this.value = i;
        }

        public static LoudspeakerSupplier valueOf(int i) {
            return i == LONGDA.value ? LONGDA : i == FOSTER.value ? FOSTER : i == ALPINE.value ? ALPINE : i == HARMAN.value ? HARMAN : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum AirConditioningZones {
        SINGLE_ZONE(0),
        DUAL_ZONES(1),
        THREE_ZONES(2),
        __UNKNOWN__(-1);

        public final int value;

        AirConditioningZones(int i) {
            this.value = i;
        }

        public static AirConditioningZones valueOf(int i) {
            return i == SINGLE_ZONE.value ? SINGLE_ZONE : i == DUAL_ZONES.value ? DUAL_ZONES : i == THREE_ZONES.value ? THREE_ZONES : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum RearDefrostAndRearviewMirrorHeating {
        NOT_PRESENT(0),
        REAR_DEFROST_AND_REARVIEW_MIRROR_HEATING(1),
        REAR_DEFROS(2),
        REARVIEW_MIRROR_HEATING(3),
        __UNKNOWN__(-1);

        public final int value;

        RearDefrostAndRearviewMirrorHeating(int i) {
            this.value = i;
        }

        public static RearDefrostAndRearviewMirrorHeating valueOf(int i) {
            return i == NOT_PRESENT.value ? NOT_PRESENT : i == REAR_DEFROST_AND_REARVIEW_MIRROR_HEATING.value ? REAR_DEFROST_AND_REARVIEW_MIRROR_HEATING : i == REAR_DEFROS.value ? REAR_DEFROS : i == REARVIEW_MIRROR_HEATING.value ? REARVIEW_MIRROR_HEATING : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum ConfigPm25 {
        NOT_PRESENT(0),
        PRESENT_PM2_5_FILTER(1),
        PRESENT_PM2_5_FILTER_AND_SENSOR(2),
        __UNKNOWN__(-1);

        public final int value;

        ConfigPm25(int i) {
            this.value = i;
        }

        public static ConfigPm25 valueOf(int i) {
            return i == NOT_PRESENT.value ? NOT_PRESENT : i == PRESENT_PM2_5_FILTER.value ? PRESENT_PM2_5_FILTER : i == PRESENT_PM2_5_FILTER_AND_SENSOR.value ? PRESENT_PM2_5_FILTER_AND_SENSOR : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum AirConditionType {
        MANUAL(0),
        AUTO(1),
        __UNKNOWN__(-1);

        public final int value;

        AirConditionType(int i) {
            this.value = i;
        }

        public static AirConditionType valueOf(int i) {
            return i == MANUAL.value ? MANUAL : i == AUTO.value ? AUTO : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum CameraNumber {
        NONE(0),
        RVC(1),
        SVM(2),
        SVM_PLUSAPA(3),
        SVM_PLUSFAPA(4),
        SVM_PLUSAVP(5),
        EXTERNAL_AVM(6),
        __UNKNOWN__(-1);

        public final int value;

        CameraNumber(int i) {
            this.value = i;
        }

        public static CameraNumber valueOf(int i) {
            return i == NONE.value ? NONE : i == RVC.value ? RVC : i == SVM.value ? SVM : i == SVM_PLUSAPA.value ? SVM_PLUSAPA : i == SVM_PLUSFAPA.value ? SVM_PLUSFAPA : i == SVM_PLUSAVP.value ? SVM_PLUSAVP : i == EXTERNAL_AVM.value ? EXTERNAL_AVM : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum RadarNumber {
        NONE(0),
        FRONT_0_REAR_3(1),
        FRONT_0_REAR_4(2),
        FRONT_2_REAR_3(3),
        FRONT_2_REAR_4(4),
        FRONT_4_REAR_4(5),
        FRONT_4_MID_4_REAR_4(6),
        FRONT_6_REAR_6(7),
        __UNKNOWN__(-1);

        public final int value;

        RadarNumber(int i) {
            this.value = i;
        }

        public static RadarNumber valueOf(int i) {
            return i == NONE.value ? NONE : i == FRONT_0_REAR_3.value ? FRONT_0_REAR_3 : i == FRONT_0_REAR_4.value ? FRONT_0_REAR_4 : i == FRONT_2_REAR_3.value ? FRONT_2_REAR_3 : i == FRONT_2_REAR_4.value ? FRONT_2_REAR_4 : i == FRONT_4_REAR_4.value ? FRONT_4_REAR_4 : i == FRONT_4_MID_4_REAR_4.value ? FRONT_4_MID_4_REAR_4 : i == FRONT_6_REAR_6.value ? FRONT_6_REAR_6 : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum StandardAndHdCameraConfiguration {
        STANDARD_DEFINITION(0),
        HIGH_DEFINITION(1),
        __UNKNOWN__(-1);

        public final int value;

        StandardAndHdCameraConfiguration(int i) {
            this.value = i;
        }

        public static StandardAndHdCameraConfiguration valueOf(int i) {
            return i == STANDARD_DEFINITION.value ? STANDARD_DEFINITION : i == HIGH_DEFINITION.value ? HIGH_DEFINITION : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum Tiktok {
        NOT_PRESENT(0),
        NO_SHOOTING_FUNCTION(1),
        SHOOTING_FUNCTION_PLUSINDOOR_SHOOTING(2),
        SHOOTING_FUNCTION_PLUSOUTING_AND_INDOOR_SHOOTING(3),
        __UNKNOWN__(-1);

        public final int value;

        Tiktok(int i) {
            this.value = i;
        }

        public static Tiktok valueOf(int i) {
            return i == NOT_PRESENT.value ? NOT_PRESENT : i == NO_SHOOTING_FUNCTION.value ? NO_SHOOTING_FUNCTION : i == SHOOTING_FUNCTION_PLUSINDOOR_SHOOTING.value ? SHOOTING_FUNCTION_PLUSINDOOR_SHOOTING : i == SHOOTING_FUNCTION_PLUSOUTING_AND_INDOOR_SHOOTING.value ? SHOOTING_FUNCTION_PLUSOUTING_AND_INDOOR_SHOOTING : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum WalAndApu {
        NOT_PRESENT(0),
        WAL(1),
        APU(2),
        WAL_AND_APU(3),
        __UNKNOWN__(-1);

        public final int value;

        WalAndApu(int i) {
            this.value = i;
        }

        public static WalAndApu valueOf(int i) {
            return i == NOT_PRESENT.value ? NOT_PRESENT : i == WAL.value ? WAL : i == APU.value ? APU : i == WAL_AND_APU.value ? WAL_AND_APU : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum WindowControl {
        NOT_PRESENT(0),
        LEFT_FRONT_WINDOW(1),
        FOUR_DOOR_WINDOWS(2),
        LEFT_AND_RIGHT_FRONT_WINDOW(3),
        __UNKNOWN__(-1);

        public final int value;

        WindowControl(int i) {
            this.value = i;
        }

        public static WindowControl valueOf(int i) {
            return i == NOT_PRESENT.value ? NOT_PRESENT : i == LEFT_FRONT_WINDOW.value ? LEFT_FRONT_WINDOW : i == FOUR_DOOR_WINDOWS.value ? FOUR_DOOR_WINDOWS : i == LEFT_AND_RIGHT_FRONT_WINDOW.value ? LEFT_AND_RIGHT_FRONT_WINDOW : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum NapMode {
        NOT_PRESENT(0),
        DRIVER_AND_PASSENGER(1),
        DRIVER(2),
        PASSENGER(3),
        __UNKNOWN__(-1);

        public final int value;

        NapMode(int i) {
            this.value = i;
        }

        public static NapMode valueOf(int i) {
            return i == NOT_PRESENT.value ? NOT_PRESENT : i == DRIVER_AND_PASSENGER.value ? DRIVER_AND_PASSENGER : i == DRIVER.value ? DRIVER : i == PASSENGER.value ? PASSENGER : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum PromptType {
        NOT_PRESENT(0),
        SOUND_AND_VOICE(1),
        SOUND_AND_VOICE_AND_SEAT_VIBRATION(2),
        ALARM_AND_SEAT_VIBRATION_AND_ALARM_AND_SEAT_VIBRATION(3),
        __UNKNOWN__(-1);

        public final int value;

        PromptType(int i) {
            this.value = i;
        }

        public static PromptType valueOf(int i) {
            return i == NOT_PRESENT.value ? NOT_PRESENT : i == SOUND_AND_VOICE.value ? SOUND_AND_VOICE : i == SOUND_AND_VOICE_AND_SEAT_VIBRATION.value ? SOUND_AND_VOICE_AND_SEAT_VIBRATION : i == ALARM_AND_SEAT_VIBRATION_AND_ALARM_AND_SEAT_VIBRATION.value ? ALARM_AND_SEAT_VIBRATION_AND_ALARM_AND_SEAT_VIBRATION : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum LaneChangeAssist {
        NOT_PRESENT(0),
        LEFT(1),
        RIGHT(2),
        LEFT_AND_RIGHT(3),
        __UNKNOWN__(-1);

        public final int value;

        LaneChangeAssist(int i) {
            this.value = i;
        }

        public static LaneChangeAssist valueOf(int i) {
            return i == NOT_PRESENT.value ? NOT_PRESENT : i == LEFT.value ? LEFT : i == RIGHT.value ? RIGHT : i == LEFT_AND_RIGHT.value ? LEFT_AND_RIGHT : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum Avdc {
        NOT_PRESENT(0),
        ECO_PLUSCOMFORT_PLUSSPORT(1),
        __UNKNOWN__(-1);

        public final int value;

        Avdc(int i) {
            this.value = i;
        }

        public static Avdc valueOf(int i) {
            return i == NOT_PRESENT.value ? NOT_PRESENT : i == ECO_PLUSCOMFORT_PLUSSPORT.value ? ECO_PLUSCOMFORT_PLUSSPORT : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum VrControlCarwindow {
        NOT_PRESENT(0),
        LEFT_FRONT_WINDOW(1),
        FOUR_DOOR_WINDOWS(2),
        __UNKNOWN__(-1);

        public final int value;

        VrControlCarwindow(int i) {
            this.value = i;
        }

        public static VrControlCarwindow valueOf(int i) {
            return i == NOT_PRESENT.value ? NOT_PRESENT : i == LEFT_FRONT_WINDOW.value ? LEFT_FRONT_WINDOW : i == FOUR_DOOR_WINDOWS.value ? FOUR_DOOR_WINDOWS : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum VrControlIal {
        NOT_PRESENT(0),
        MONOCHROMATIC(1),
        INTELLIGENT(2),
        __UNKNOWN__(-1);

        public final int value;

        VrControlIal(int i) {
            this.value = i;
        }

        public static VrControlIal valueOf(int i) {
            return i == NOT_PRESENT.value ? NOT_PRESENT : i == MONOCHROMATIC.value ? MONOCHROMATIC : i == INTELLIGENT.value ? INTELLIGENT : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum VrControlWiperAndCleaning {
        NOT_PRESENT(0),
        FRONT_WIPER_CLEANING(1),
        FRONT_AND_REAR_WIPER_CLEANING(2),
        __UNKNOWN__(-1);

        public final int value;

        VrControlWiperAndCleaning(int i) {
            this.value = i;
        }

        public static VrControlWiperAndCleaning valueOf(int i) {
            return i == NOT_PRESENT.value ? NOT_PRESENT : i == FRONT_WIPER_CLEANING.value ? FRONT_WIPER_CLEANING : i == FRONT_AND_REAR_WIPER_CLEANING.value ? FRONT_AND_REAR_WIPER_CLEANING : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum VrControlHvac {
        NONE(0),
        NON_ANION_MODE(1),
        ANION_MODE(2),
        __UNKNOWN__(-1);

        public final int value;

        VrControlHvac(int i) {
            this.value = i;
        }

        public static VrControlHvac valueOf(int i) {
            return i == NONE.value ? NONE : i == NON_ANION_MODE.value ? NON_ANION_MODE : i == ANION_MODE.value ? ANION_MODE : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum VrControlRoof {
        NOT_PRESENT(0),
        PANORAMIC_SUNROOF(1),
        NORMAL_SUNROOF(2),
        __UNKNOWN__(-1);

        public final int value;

        VrControlRoof(int i) {
            this.value = i;
        }

        public static VrControlRoof valueOf(int i) {
            return i == NOT_PRESENT.value ? NOT_PRESENT : i == PANORAMIC_SUNROOF.value ? PANORAMIC_SUNROOF : i == NORMAL_SUNROOF.value ? NORMAL_SUNROOF : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum VrControlWindowposition {
        NOT_PRESENT(0),
        LEFT_FRONT_WINDOW(1),
        FOUR_DOOR_WINDOWS(2),
        __UNKNOWN__(-1);

        public final int value;

        VrControlWindowposition(int i) {
            this.value = i;
        }

        public static VrControlWindowposition valueOf(int i) {
            return i == NOT_PRESENT.value ? NOT_PRESENT : i == LEFT_FRONT_WINDOW.value ? LEFT_FRONT_WINDOW : i == FOUR_DOOR_WINDOWS.value ? FOUR_DOOR_WINDOWS : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum VrControlRoofposition {
        NOT_PRESENT(0),
        PANORAMIC_SUNROOF(1),
        NORMAL_SUNROOF(2),
        __UNKNOWN__(-1);

        public final int value;

        VrControlRoofposition(int i) {
            this.value = i;
        }

        public static VrControlRoofposition valueOf(int i) {
            return i == NOT_PRESENT.value ? NOT_PRESENT : i == PANORAMIC_SUNROOF.value ? PANORAMIC_SUNROOF : i == NORMAL_SUNROOF.value ? NORMAL_SUNROOF : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum VrControl {
        ONE_ZONE(1),
        TWO_ZONE(2),
        THREE_ZONE(3),
        __UNKNOWN__(-1);

        public final int value;

        VrControl(int i) {
            this.value = i;
        }

        public static VrControl valueOf(int i) {
            return i == ONE_ZONE.value ? ONE_ZONE : i == TWO_ZONE.value ? TWO_ZONE : i == THREE_ZONE.value ? THREE_ZONE : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum VrControlParking {
        NONE(0),
        SVM(1),
        APA(2),
        FAPA(3),
        AVP(4),
        __UNKNOWN__(-1);

        public final int value;

        VrControlParking(int i) {
            this.value = i;
        }

        public static VrControlParking valueOf(int i) {
            return i == NONE.value ? NONE : i == SVM.value ? SVM : i == APA.value ? APA : i == FAPA.value ? FAPA : i == AVP.value ? AVP : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum HeatingAndVentilationFl {
        NOT_PRESENT(0),
        VENTILATION_HEATING(1),
        VENTILATION(2),
        HEATING(3),
        __UNKNOWN__(-1);

        public final int value;

        HeatingAndVentilationFl(int i) {
            this.value = i;
        }

        public static HeatingAndVentilationFl valueOf(int i) {
            return i == NOT_PRESENT.value ? NOT_PRESENT : i == VENTILATION_HEATING.value ? VENTILATION_HEATING : i == VENTILATION.value ? VENTILATION : i == HEATING.value ? HEATING : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum HeatingAndVentilationFr {
        NOT_PRESENT(0),
        VENTILATION_HEATING(1),
        VENTILATION(2),
        HEATING(3),
        __UNKNOWN__(-1);

        public final int value;

        HeatingAndVentilationFr(int i) {
            this.value = i;
        }

        public static HeatingAndVentilationFr valueOf(int i) {
            return i == NOT_PRESENT.value ? NOT_PRESENT : i == VENTILATION_HEATING.value ? VENTILATION_HEATING : i == VENTILATION.value ? VENTILATION : i == HEATING.value ? HEATING : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum HeatingAndVentilationRl {
        NOT_PRESENT(0),
        VENTILATION_HEATING(1),
        VENTILATION(2),
        HEATING(3),
        __UNKNOWN__(-1);

        public final int value;

        HeatingAndVentilationRl(int i) {
            this.value = i;
        }

        public static HeatingAndVentilationRl valueOf(int i) {
            return i == NOT_PRESENT.value ? NOT_PRESENT : i == VENTILATION_HEATING.value ? VENTILATION_HEATING : i == VENTILATION.value ? VENTILATION : i == HEATING.value ? HEATING : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum HeatingAndVentilationRr {
        NOT_PRESENT(0),
        VENTILATION_HEATING(1),
        VENTILATION(2),
        HEATING(3),
        __UNKNOWN__(-1);

        public final int value;

        HeatingAndVentilationRr(int i) {
            this.value = i;
        }

        public static HeatingAndVentilationRr valueOf(int i) {
            return i == NOT_PRESENT.value ? NOT_PRESENT : i == VENTILATION_HEATING.value ? VENTILATION_HEATING : i == VENTILATION.value ? VENTILATION : i == HEATING.value ? HEATING : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum SecondRowSeatsWelcome {
        NONE(0),
        RL(1),
        RR(2),
        RL_PLUSRR(3),
        __UNKNOWN__(-1);

        public final int value;

        SecondRowSeatsWelcome(int i) {
            this.value = i;
        }

        public static SecondRowSeatsWelcome valueOf(int i) {
            return i == NONE.value ? NONE : i == RL.value ? RL : i == RR.value ? RR : i == RL_PLUSRR.value ? RL_PLUSRR : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum LimitSecondRowSeatsWelcomeFunction {
        NONE(0),
        RL(1),
        RR(2),
        RL_PLUSRR(3),
        __UNKNOWN__(-1);

        public final int value;

        LimitSecondRowSeatsWelcomeFunction(int i) {
            this.value = i;
        }

        public static LimitSecondRowSeatsWelcomeFunction valueOf(int i) {
            return i == NONE.value ? NONE : i == RL.value ? RL : i == RR.value ? RR : i == RL_PLUSRR.value ? RL_PLUSRR : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum FeezeMode {
        ONE_MIN(0),
        FIVE_MIN(1),
        TEN_MIN(2),
        FIFTEEN_MIN(3),
        TWENTY_MIN(4),
        TWENTY_FIVE_MIN(5),
        THIRTY_MIN(6),
        RESERVE(7),
        __UNKNOWN__(-1);

        public final int value;

        FeezeMode(int i) {
            this.value = i;
        }

        public static FeezeMode valueOf(int i) {
            return i == ONE_MIN.value ? ONE_MIN : i == FIVE_MIN.value ? FIVE_MIN : i == TEN_MIN.value ? TEN_MIN : i == FIFTEEN_MIN.value ? FIFTEEN_MIN : i == TWENTY_MIN.value ? TWENTY_MIN : i == TWENTY_FIVE_MIN.value ? TWENTY_FIVE_MIN : i == THIRTY_MIN.value ? THIRTY_MIN : i == RESERVE.value ? RESERVE : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum DriverSeatControl {
        NONE(0),
        EIGHT_CONTROL(1),
        SIX_CONTROL(2),
        __UNKNOWN__(-1);

        public final int value;

        DriverSeatControl(int i) {
            this.value = i;
        }

        public static DriverSeatControl valueOf(int i) {
            return i == NONE.value ? NONE : i == EIGHT_CONTROL.value ? EIGHT_CONTROL : i == SIX_CONTROL.value ? SIX_CONTROL : __UNKNOWN__;
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
