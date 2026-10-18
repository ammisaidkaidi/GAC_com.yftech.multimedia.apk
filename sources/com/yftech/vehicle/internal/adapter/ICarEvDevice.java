package com.yftech.vehicle.internal.adapter;

/* loaded from: /home/user/work/dex/classes4.dex */
public interface ICarEvDevice extends IBaseApi {
    public static final int BATTERY_QUANTITY_PERCENT = 314;
    public static final int BOOK_CHRG_START_DAY = 385;
    public static final int BOOK_CHRG_START_HOUR = 386;
    public static final int BOOK_CHRG_START_MIN = 387;
    public static final int BOOK_CHRG_START_MON = 384;
    public static final int BOOK_CHRG_START_REMAINING_DAY = 380;
    public static final int BOOK_CHRG_START_REMAINING_HOUR = 381;
    public static final int BOOK_CHRG_START_REMAINING_MIN = 382;
    public static final int BOOK_CHRG_START_YEAR = 383;
    public static final int BOOK_CHRG_STOP_DAY = 390;
    public static final int BOOK_CHRG_STOP_HOUR = 391;
    public static final int BOOK_CHRG_STOP_MIN = 392;
    public static final int BOOK_CHRG_STOP_MON = 389;
    public static final int BOOK_CHRG_STOP_YEAR = 388;
    public static final int CHARGE_FULL_NOTICE_LEVEL = 324;
    public static final int CHARGE_MODE_STATE = 393;
    public static final int CHARGE_SOC_PERCENT_SETTING = 319;
    public static final int CHARGE_SOC_PERCENT_STATE = 318;
    public static final int CHARGE_SOC_PERCENT_VALID_STATE = 320;
    public static final int CHARGE_WARM_TIME_SETTING = 322;
    public static final int CHARGE_WARM_TIME_STATE = 321;
    public static final int CHARGE_WARM_TIME_VALID_STATE = 323;
    public static final int CHARG_CURRENT_SETTING = 493;
    public static final int CHARG_CURRENT_STATE = 492;
    public static final int CHG_ACTIVE_STATE = 490;
    public static final int CHG_END_REQ_SETTING = 491;
    public static final int DISCHG_ACTIVE_SETTING = 483;
    public static final int DISCHG_ACTIVE_STATE = 482;
    public static final int DISCHG_END_VEHRNG_STATE = 484;
    public static final int DISCHG_ENG_START_CFG_SETTING = 479;
    public static final int DISCHG_ENG_START_CFG_STATE = 478;
    public static final int DISCHG_SET_INFO = 494;
    public static final int DISCHG_SOC_CFG_SETTING = 481;
    public static final int DISCHG_SOC_CFG_STATE = 480;
    public static final int DISCHG_TIME_CFG_SETTING = 486;
    public static final int DISCHG_TIME_CFG_STATE = 485;
    public static final int DRIVE_MODE_EV = 355;
    public static final int DRIVE_MODE_EV_SETTING = 356;
    public static final int DRV_TARGET_SOE_SETTING = 477;
    public static final int DRV_TARGET_SOE_STATE = 476;
    public static final int DSP_CHG_STATE = 489;
    public static final int ECO_MODE_VALID_STATE = 359;
    public static final int ECO_NORMAL_SPORT_MODE_VALID_STATE = 361;
    public static final int ECO_PLUS_MODE = 357;
    public static final int ECO_PLUS_MODE_VALID_STATE = 358;
    public static final int ENERGY_MODEL = 474;
    public static final int ENERGY_MODEL_SETTING = 475;
    public static final int ENG_SELF_MAINT_DISP_STATE = 473;
    public static final int HEAL_CHECK_NOTICE_STATE = 325;
    public static final int IPEDAL_CREEP_SETTING = 316;
    public static final int IPEDAL_CREEP_STATE = 315;
    public static final int IPEDAL_CREEP_VALID_STATE = 317;
    public static final int IPEDAL_MODE_VALID_STATE = 360;
    public static final int OBC_CONN_STATE = 513;
    public static final int PLUG_AUTO_UNLOCK_CFG = 487;
    public static final int PLUG_AUTO_UNLOCK_CFG_SETTING = 488;
    public static final int POWER_FLOW_MODE = 313;
    public static final int RECUPERATION_LEVEL = 352;
    public static final int RECUPERATION_LEVEL_A9E = 412;
    public static final int RECUPERATION_LEVEL_A9E_SETTING = 413;
    public static final int RECUPERATION_LEVEL_SETTING = 353;
    public static final int RECUPERATION_LEVEL_VALID_STATE = 354;
    public static final int REPEAT_BOOK_CHRG_DAY1 = 394;
    public static final int REPEAT_BOOK_CHRG_DAY2 = 395;
    public static final int REPEAT_BOOK_CHRG_DAY3 = 396;
    public static final int REPEAT_BOOK_CHRG_DAY4 = 397;
    public static final int REPEAT_BOOK_CHRG_DAY5 = 398;
    public static final int REPEAT_BOOK_CHRG_DAY6 = 399;
    public static final int REPEAT_BOOK_CHRG_DAY7 = 400;
    public static final int VEH_RDY_STATE = 472;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum PowerFlowMode {
        VEHICLE_INITIAL(0),
        VEHICLE_STANDBY(1),
        IDLE_CHARGE(2),
        EV(3),
        RANGE_EXTEND_MODE1(4),
        RANGE_EXTEND_MODE2(5),
        ENGINE_MODE(6),
        HEV_MODE(7),
        REGENERATION_MODE(8),
        RANGE_EXTEND_MODE3(9),
        HEV_MODE2(10),
        __UNKNOWN__(-1);

        public final int value;

        PowerFlowMode(int i) {
            this.value = i;
        }

        public static PowerFlowMode valueOf(int i) {
            return i == VEHICLE_INITIAL.value ? VEHICLE_INITIAL : i == VEHICLE_STANDBY.value ? VEHICLE_STANDBY : i == IDLE_CHARGE.value ? IDLE_CHARGE : i == EV.value ? EV : i == RANGE_EXTEND_MODE1.value ? RANGE_EXTEND_MODE1 : i == RANGE_EXTEND_MODE2.value ? RANGE_EXTEND_MODE2 : i == ENGINE_MODE.value ? ENGINE_MODE : i == HEV_MODE.value ? HEV_MODE : i == REGENERATION_MODE.value ? REGENERATION_MODE : i == RANGE_EXTEND_MODE3.value ? RANGE_EXTEND_MODE3 : i == HEV_MODE2.value ? HEV_MODE2 : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum ChargeSocPercent {
        NO_COMMAND(0),
        PERC_50(1),
        PERC_55(2),
        PERC_60(3),
        PERC_65(4),
        PERC_70(5),
        PERC_75(6),
        PERC_80(7),
        PERC_85(8),
        PERC_90(9),
        PERC_95(10),
        PERC_100(11),
        __UNKNOWN__(-1);

        public final int value;

        ChargeSocPercent(int i) {
            this.value = i;
        }

        public static ChargeSocPercent valueOf(int i) {
            return i == NO_COMMAND.value ? NO_COMMAND : i == PERC_50.value ? PERC_50 : i == PERC_55.value ? PERC_55 : i == PERC_60.value ? PERC_60 : i == PERC_65.value ? PERC_65 : i == PERC_70.value ? PERC_70 : i == PERC_75.value ? PERC_75 : i == PERC_80.value ? PERC_80 : i == PERC_85.value ? PERC_85 : i == PERC_90.value ? PERC_90 : i == PERC_95.value ? PERC_95 : i == PERC_100.value ? PERC_100 : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum ChargeWarmTime {
        HOUR_1(1),
        HOUR_2(2),
        HOUR_3(3),
        HOUR_4(4),
        HOUR_5(5),
        HOUR_6(6),
        HOUR_7(7),
        HOUR_8(8),
        HOUR_9(9),
        HOUR_10(10),
        HOUR_11(11),
        ON(12),
        OFF(15),
        __UNKNOWN__(-1);

        public final int value;

        ChargeWarmTime(int i) {
            this.value = i;
        }

        public static ChargeWarmTime valueOf(int i) {
            return i == HOUR_1.value ? HOUR_1 : i == HOUR_2.value ? HOUR_2 : i == HOUR_3.value ? HOUR_3 : i == HOUR_4.value ? HOUR_4 : i == HOUR_5.value ? HOUR_5 : i == HOUR_6.value ? HOUR_6 : i == HOUR_7.value ? HOUR_7 : i == HOUR_8.value ? HOUR_8 : i == HOUR_9.value ? HOUR_9 : i == HOUR_10.value ? HOUR_10 : i == HOUR_11.value ? HOUR_11 : i == ON.value ? ON : i == OFF.value ? OFF : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum ChargeFullNoticeLevel {
        NO_NOTICE(0),
        LEVEL_2(1),
        LEVEL_3(2),
        __UNKNOWN__(-1);

        public final int value;

        ChargeFullNoticeLevel(int i) {
            this.value = i;
        }

        public static ChargeFullNoticeLevel valueOf(int i) {
            return i == NO_NOTICE.value ? NO_NOTICE : i == LEVEL_2.value ? LEVEL_2 : i == LEVEL_3.value ? LEVEL_3 : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum HealCheckNotice {
        NO_NOTICE(0),
        NOTICE(1),
        __UNKNOWN__(-1);

        public final int value;

        HealCheckNotice(int i) {
            this.value = i;
        }

        public static HealCheckNotice valueOf(int i) {
            return i == NO_NOTICE.value ? NO_NOTICE : i == NOTICE.value ? NOTICE : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum RecuperationLevel {
        NOT_VALID(0),
        LEVEL_0_OFF(1),
        LEVEL_1_LOW(2),
        LEVEL_2_MIDDLE(3),
        LEVEL_3_HIGH(4),
        __UNKNOWN__(-1);

        public final int value;

        RecuperationLevel(int i) {
            this.value = i;
        }

        public static RecuperationLevel valueOf(int i) {
            return i == NOT_VALID.value ? NOT_VALID : i == LEVEL_0_OFF.value ? LEVEL_0_OFF : i == LEVEL_1_LOW.value ? LEVEL_1_LOW : i == LEVEL_2_MIDDLE.value ? LEVEL_2_MIDDLE : i == LEVEL_3_HIGH.value ? LEVEL_3_HIGH : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum RecuperationLevelA9E {
        NOT_VALID(0),
        LEVEL_1_OFF(1),
        LEVEL_2_LOW(2),
        LEVEL_3_MIDDLE(3),
        LEVEL_4_HIGH(4),
        __UNKNOWN__(-1);

        public final int value;

        RecuperationLevelA9E(int i) {
            this.value = i;
        }

        public static RecuperationLevelA9E valueOf(int i) {
            return i == NOT_VALID.value ? NOT_VALID : i == LEVEL_1_OFF.value ? LEVEL_1_OFF : i == LEVEL_2_LOW.value ? LEVEL_2_LOW : i == LEVEL_3_MIDDLE.value ? LEVEL_3_MIDDLE : i == LEVEL_4_HIGH.value ? LEVEL_4_HIGH : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum RecpLevelAvail {
        L0_L3(0),
        L0_L1_AND_L2(1),
        L0(2),
        ALL_AVAILABLE(3),
        __UNKNOWN__(-1);

        public final int value;

        RecpLevelAvail(int i) {
            this.value = i;
        }

        public static RecpLevelAvail valueOf(int i) {
            return i == L0_L3.value ? L0_L3 : i == L0_L1_AND_L2.value ? L0_L1_AND_L2 : i == L0.value ? L0 : i == ALL_AVAILABLE.value ? ALL_AVAILABLE : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum DriveModeEv {
        INVALID(0),
        ECO_PLUS_MODE(1),
        ECO_MODE(2),
        NORMAL_MODE(3),
        DRIVING_MODE(4),
        SPORT_MODE(5),
        IPEDAL_ON(6),
        IPEDAL_OFF(7),
        __UNKNOWN__(-1);

        public final int value;

        DriveModeEv(int i) {
            this.value = i;
        }

        public static DriveModeEv valueOf(int i) {
            return i == INVALID.value ? INVALID : i == ECO_PLUS_MODE.value ? ECO_PLUS_MODE : i == ECO_MODE.value ? ECO_MODE : i == NORMAL_MODE.value ? NORMAL_MODE : i == DRIVING_MODE.value ? DRIVING_MODE : i == SPORT_MODE.value ? SPORT_MODE : i == IPEDAL_ON.value ? IPEDAL_ON : i == IPEDAL_OFF.value ? IPEDAL_OFF : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum EcoPlusMode {
        ON(1),
        OFF(2),
        __UNKNOWN__(-1);

        public final int value;

        EcoPlusMode(int i) {
            this.value = i;
        }

        public static EcoPlusMode valueOf(int i) {
            return i == ON.value ? ON : i == OFF.value ? OFF : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum ChargeMode {
        IMMEDIATELY(0),
        BOOKING(1),
        __UNKNOWN__(-1);

        public final int value;

        ChargeMode(int i) {
            this.value = i;
        }

        public static ChargeMode valueOf(int i) {
            return i == IMMEDIATELY.value ? IMMEDIATELY : i == BOOKING.value ? BOOKING : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum RepeatBookMode {
        NOT_REPEAT(0),
        BOOKING(1),
        __UNKNOWN__(-1);

        public final int value;

        RepeatBookMode(int i) {
            this.value = i;
        }

        public static RepeatBookMode valueOf(int i) {
            return i == NOT_REPEAT.value ? NOT_REPEAT : i == BOOKING.value ? BOOKING : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum EnergyModel {
        NORMAL(0),
        INTELLIGENT_HYBRID(1),
        ELECTICITY_DRIVE_FIRST(2),
        ELECTICITY_CONSERVATION(3),
        __UNKNOWN__(-1);

        public final int value;

        EnergyModel(int i) {
            this.value = i;
        }

        public static EnergyModel valueOf(int i) {
            return i == NORMAL.value ? NORMAL : i == INTELLIGENT_HYBRID.value ? INTELLIGENT_HYBRID : i == ELECTICITY_DRIVE_FIRST.value ? ELECTICITY_DRIVE_FIRST : i == ELECTICITY_CONSERVATION.value ? ELECTICITY_CONSERVATION : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum EngStartCfg {
        NO_REQUEST(0),
        ENGINE_START_ENABLE(1),
        ENGINE_START_DISABLE(2),
        __UNKNOWN__(-1);

        public final int value;

        EngStartCfg(int i) {
            this.value = i;
        }

        public static EngStartCfg valueOf(int i) {
            return i == NO_REQUEST.value ? NO_REQUEST : i == ENGINE_START_ENABLE.value ? ENGINE_START_ENABLE : i == ENGINE_START_DISABLE.value ? ENGINE_START_DISABLE : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum PlugAutoUnlockCfg {
        NOT_AUTO_UNLOCK(0),
        AUTO_UNLOCK(1),
        __UNKNOWN__(-1);

        public final int value;

        PlugAutoUnlockCfg(int i) {
            this.value = i;
        }

        public static PlugAutoUnlockCfg valueOf(int i) {
            return i == NOT_AUTO_UNLOCK.value ? NOT_AUTO_UNLOCK : i == AUTO_UNLOCK.value ? AUTO_UNLOCK : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum ChargState {
        CHARGE_CURRENT_VOLTAGE_INTERFACE(0),
        BLANK_MODULE_INTERFACE(1),
        __UNKNOWN__(-1);

        public final int value;

        ChargState(int i) {
            this.value = i;
        }

        public static ChargState valueOf(int i) {
            return i == CHARGE_CURRENT_VOLTAGE_INTERFACE.value ? CHARGE_CURRENT_VOLTAGE_INTERFACE : i == BLANK_MODULE_INTERFACE.value ? BLANK_MODULE_INTERFACE : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum ChargActive {
        NOT_CHARGING(0),
        CHARGING(1),
        __UNKNOWN__(-1);

        public final int value;

        ChargActive(int i) {
            this.value = i;
        }

        public static ChargActive valueOf(int i) {
            return i == NOT_CHARGING.value ? NOT_CHARGING : i == CHARGING.value ? CHARGING : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum ChargEnd {
        NO_COMMAND(0),
        END_CHARGE(1),
        __UNKNOWN__(-1);

        public final int value;

        ChargEnd(int i) {
            this.value = i;
        }

        public static ChargEnd valueOf(int i) {
            return i == NO_COMMAND.value ? NO_COMMAND : i == END_CHARGE.value ? END_CHARGE : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum DischgSetInfo {
        NO_INFORMATION(0),
        SET_SUCCEED_DISCHARGE_ALLOW(1),
        LOWER_THAN_SET_DISCHARGE_NOT_ALLOW(2),
        LOWER_OIL_SET_ENGINE_NOT_ALLOW(3),
        __UNKNOWN__(-1);

        public final int value;

        DischgSetInfo(int i) {
            this.value = i;
        }

        public static DischgSetInfo valueOf(int i) {
            return i == NO_INFORMATION.value ? NO_INFORMATION : i == SET_SUCCEED_DISCHARGE_ALLOW.value ? SET_SUCCEED_DISCHARGE_ALLOW : i == LOWER_THAN_SET_DISCHARGE_NOT_ALLOW.value ? LOWER_THAN_SET_DISCHARGE_NOT_ALLOW : i == LOWER_OIL_SET_ENGINE_NOT_ALLOW.value ? LOWER_OIL_SET_ENGINE_NOT_ALLOW : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum ObcConnState {
        DISCONNECTED(0),
        HALF_CONNECTED_CHARGING_V2V_V2L(1),
        CONNECTED_CHARGING_V2V(2),
        CONNECTED_V2L(4),
        __UNKNOWN__(-1);

        public final int value;

        ObcConnState(int i) {
            this.value = i;
        }

        public static ObcConnState valueOf(int i) {
            return i == DISCONNECTED.value ? DISCONNECTED : i == HALF_CONNECTED_CHARGING_V2V_V2L.value ? HALF_CONNECTED_CHARGING_V2V_V2L : i == CONNECTED_CHARGING_V2V.value ? CONNECTED_CHARGING_V2V : i == CONNECTED_V2L.value ? CONNECTED_V2L : __UNKNOWN__;
        }
    }
}
