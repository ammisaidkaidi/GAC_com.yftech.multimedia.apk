.class public interface abstract Lcom/yftech/vehicle/internal/adapter/ICarEvDevice;
.super Ljava/lang/Object;
.source "ICarEvDevice.java"

# interfaces
.implements Lcom/yftech/vehicle/internal/adapter/IBaseApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;,
        Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;,
        Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;,
        Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargActive;,
        Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;,
        Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;,
        Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;,
        Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;,
        Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;,
        Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeMode;,
        Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EcoPlusMode;,
        Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;,
        Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecpLevelAvail;,
        Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;,
        Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;,
        Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;,
        Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;,
        Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeWarmTime;,
        Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeSocPercent;,
        Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;
    }
.end annotation


# static fields
.field public static final BATTERY_QUANTITY_PERCENT:I = 0x13a

.field public static final BOOK_CHRG_START_DAY:I = 0x181

.field public static final BOOK_CHRG_START_HOUR:I = 0x182

.field public static final BOOK_CHRG_START_MIN:I = 0x183

.field public static final BOOK_CHRG_START_MON:I = 0x180

.field public static final BOOK_CHRG_START_REMAINING_DAY:I = 0x17c

.field public static final BOOK_CHRG_START_REMAINING_HOUR:I = 0x17d

.field public static final BOOK_CHRG_START_REMAINING_MIN:I = 0x17e

.field public static final BOOK_CHRG_START_YEAR:I = 0x17f

.field public static final BOOK_CHRG_STOP_DAY:I = 0x186

.field public static final BOOK_CHRG_STOP_HOUR:I = 0x187

.field public static final BOOK_CHRG_STOP_MIN:I = 0x188

.field public static final BOOK_CHRG_STOP_MON:I = 0x185

.field public static final BOOK_CHRG_STOP_YEAR:I = 0x184

.field public static final CHARGE_FULL_NOTICE_LEVEL:I = 0x144

.field public static final CHARGE_MODE_STATE:I = 0x189

.field public static final CHARGE_SOC_PERCENT_SETTING:I = 0x13f

.field public static final CHARGE_SOC_PERCENT_STATE:I = 0x13e

.field public static final CHARGE_SOC_PERCENT_VALID_STATE:I = 0x140

.field public static final CHARGE_WARM_TIME_SETTING:I = 0x142

.field public static final CHARGE_WARM_TIME_STATE:I = 0x141

.field public static final CHARGE_WARM_TIME_VALID_STATE:I = 0x143

.field public static final CHARG_CURRENT_SETTING:I = 0x1ed

.field public static final CHARG_CURRENT_STATE:I = 0x1ec

.field public static final CHG_ACTIVE_STATE:I = 0x1ea

.field public static final CHG_END_REQ_SETTING:I = 0x1eb

.field public static final DISCHG_ACTIVE_SETTING:I = 0x1e3

.field public static final DISCHG_ACTIVE_STATE:I = 0x1e2

.field public static final DISCHG_END_VEHRNG_STATE:I = 0x1e4

.field public static final DISCHG_ENG_START_CFG_SETTING:I = 0x1df

.field public static final DISCHG_ENG_START_CFG_STATE:I = 0x1de

.field public static final DISCHG_SET_INFO:I = 0x1ee

.field public static final DISCHG_SOC_CFG_SETTING:I = 0x1e1

.field public static final DISCHG_SOC_CFG_STATE:I = 0x1e0

.field public static final DISCHG_TIME_CFG_SETTING:I = 0x1e6

.field public static final DISCHG_TIME_CFG_STATE:I = 0x1e5

.field public static final DRIVE_MODE_EV:I = 0x163

.field public static final DRIVE_MODE_EV_SETTING:I = 0x164

.field public static final DRV_TARGET_SOE_SETTING:I = 0x1dd

.field public static final DRV_TARGET_SOE_STATE:I = 0x1dc

.field public static final DSP_CHG_STATE:I = 0x1e9

.field public static final ECO_MODE_VALID_STATE:I = 0x167

.field public static final ECO_NORMAL_SPORT_MODE_VALID_STATE:I = 0x169

.field public static final ECO_PLUS_MODE:I = 0x165

.field public static final ECO_PLUS_MODE_VALID_STATE:I = 0x166

.field public static final ENERGY_MODEL:I = 0x1da

.field public static final ENERGY_MODEL_SETTING:I = 0x1db

.field public static final ENG_SELF_MAINT_DISP_STATE:I = 0x1d9

.field public static final HEAL_CHECK_NOTICE_STATE:I = 0x145

.field public static final IPEDAL_CREEP_SETTING:I = 0x13c

.field public static final IPEDAL_CREEP_STATE:I = 0x13b

.field public static final IPEDAL_CREEP_VALID_STATE:I = 0x13d

.field public static final IPEDAL_MODE_VALID_STATE:I = 0x168

.field public static final OBC_CONN_STATE:I = 0x201

.field public static final PLUG_AUTO_UNLOCK_CFG:I = 0x1e7

.field public static final PLUG_AUTO_UNLOCK_CFG_SETTING:I = 0x1e8

.field public static final POWER_FLOW_MODE:I = 0x139

.field public static final RECUPERATION_LEVEL:I = 0x160

.field public static final RECUPERATION_LEVEL_A9E:I = 0x19c

.field public static final RECUPERATION_LEVEL_A9E_SETTING:I = 0x19d

.field public static final RECUPERATION_LEVEL_SETTING:I = 0x161

.field public static final RECUPERATION_LEVEL_VALID_STATE:I = 0x162

.field public static final REPEAT_BOOK_CHRG_DAY1:I = 0x18a

.field public static final REPEAT_BOOK_CHRG_DAY2:I = 0x18b

.field public static final REPEAT_BOOK_CHRG_DAY3:I = 0x18c

.field public static final REPEAT_BOOK_CHRG_DAY4:I = 0x18d

.field public static final REPEAT_BOOK_CHRG_DAY5:I = 0x18e

.field public static final REPEAT_BOOK_CHRG_DAY6:I = 0x18f

.field public static final REPEAT_BOOK_CHRG_DAY7:I = 0x190

.field public static final VEH_RDY_STATE:I = 0x1d8
