.class public interface abstract Lcom/yftech/vehicle/internal/adapter/ICarSettings;
.super Ljava/lang/Object;
.source "ICarSettings.java"

# interfaces
.implements Lcom/yftech/vehicle/internal/adapter/IBaseApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;,
        Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;,
        Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;,
        Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;,
        Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlChargingState;,
        Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;,
        Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudOffState;,
        Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwCtl;,
        Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwState;,
        Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;,
        Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaCtl;,
        Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;,
        Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMDowCtl;,
        Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMDowState;,
        Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaCtl;,
        Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaState;,
        Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkModeCtl;,
        Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkMode;,
        Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtl;,
        Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;,
        Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleSaveCmd;,
        Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;,
        Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;,
        Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;,
        Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;,
        Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;,
        Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;,
        Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;,
        Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;,
        Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorSettingCmd;,
        Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmdForReverse;,
        Lcom/yftech/vehicle/internal/adapter/ICarSettings$CruiseAssistMode;,
        Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;,
        Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;,
        Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;,
        Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;,
        Lcom/yftech/vehicle/internal/adapter/ICarSettings$RainstormMode;,
        Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;,
        Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;,
        Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;,
        Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;
    }
.end annotation


# static fields
.field public static final AC_SMART_SETTING:I = 0x1a1

.field public static final AC_SMART_STATE:I = 0x1a0

.field public static final ADASELK_SETTING:I = 0x20f

.field public static final ADASELK_STATE:I = 0x20e

.field public static final ADAS_WARN_TYPE:I = 0x6c

.field public static final ADAS_WARN_TYPE_SETTING:I = 0x29

.field public static final AEB_OFF_SETTING:I = 0x24

.field public static final AEB_OFF_STATE:I = 0x67

.field public static final AUTO_WIPER_SETTING:I = 0x2d

.field public static final AUTO_WIPER_STATE:I = 0x70

.field public static final AVAS_SETTING:I = 0x2a

.field public static final AVAS_STATE:I = 0x6d

.field public static final BSDMDOWCTL_SETTING:I = 0x1c7

.field public static final BSDMDOWSTATE_STATE:I = 0x1c6

.field public static final BSDMLCACTL_SETTING:I = 0x1c5

.field public static final BSDMLCA_STATE:I = 0x1c4

.field public static final BSDMRCTA_ASSIST_TYPE_SETTING:I = 0x1cb

.field public static final BSDMRCTA_ASSIST_TYPE_STATE:I = 0x1ca

.field public static final BSDMRCTA_CTL_SETTING:I = 0x1c9

.field public static final BSDMRCTA_STATE:I = 0x1c8

.field public static final BSDMRCWCTL_SETTING:I = 0x1cd

.field public static final BSDMRCWSTATE_STATE:I = 0x1cc

.field public static final COMFORT_PARK_SETTING:I = 0x1a2

.field public static final COMFORT_PARK_STATE:I = 0x19e

.field public static final CRUISE_ASSIST_MODE:I = 0x10f

.field public static final CRUISE_ASSIST_MODE_SETTING:I = 0x110

.field public static final DOOR_HANDLE_ELECTRIC_HIDE_SETTING:I = 0x1a8

.field public static final DOOR_HANDLE_ELECTRIC_HIDE_STATE:I = 0x1a7

.field public static final DRAG_MODE_SETTING:I = 0x14d

.field public static final DRAG_MODE_STATE:I = 0x14c

.field public static final DRIVER_EASY_ENTRY_EXIT_SETTING:I = 0x1bf

.field public static final DRIVER_EASY_ENTRY_EXIT_STATE:I = 0x1be

.field public static final ENG_WAVE_SWITCH_SETTING:I = 0x211

.field public static final ENG_WAVE_SWITCH_STATE:I = 0x210

.field public static final EPB_SYSTEM_MSG_STATE:I = 0x14e

.field public static final EPB_SYSTEM_SET_STATE_SETTING:I = 0x14b

.field public static final EPB_SYSTEM_STATE:I = 0x14a

.field public static final ETC_SETTING:I = 0x2b

.field public static final ETC_STATE:I = 0x6e

.field public static final FCW_OFF_SETTING:I = 0x22

.field public static final FCW_OFF_STATE:I = 0x65

.field public static final FCW_WARNING_DISTANCE:I = 0x66

.field public static final FCW_WARNING_DISTANCE_SETTING:I = 0x23

.field public static final FRONT_CAR_DISTANCE_DISPLAY:I = 0x10b

.field public static final FRONT_CAR_DISTANCE_DISPLAY_SETTING:I = 0x10c

.field public static final FRONT_WIPER_SERVICE_POSITION_SETTING:I = 0x2c

.field public static final FRONT_WIPER_SERVICE_POSITION_STATE:I = 0x6f

.field public static final HUDBRIGHTNESSST_SETTING:I = 0x1d1

.field public static final HUDBRIGHTNESSST_STATE:I = 0x1d0

.field public static final HUDHEIGHTST_SETTING:I = 0x1d3

.field public static final HUDHEIGHTST_STATE:I = 0x1d2

.field public static final HUDOFF_SETTING:I = 0x1cf

.field public static final HUDOFF_STATE:I = 0x1ce

.field public static final HUD_ANGLEST_SETTING:I = 0x1d5

.field public static final HUD_ANGLEST_STATE:I = 0x1d4

.field public static final HUD_MODE_SETTING:I = 0x1d7

.field public static final HUD_MODE_STATE:I = 0x1d6

.field public static final IACC_SETTING:I = 0x27

.field public static final IACC_STATE:I = 0x6a

.field public static final INTELLIGENT_AVOID:I = 0x10d

.field public static final INTELLIGENT_AVOID_SETTING:I = 0x10e

.field public static final KEY_NOT_FORGET_WARNING:I = 0x16a

.field public static final KEY_NOT_FORGET_WARNING_SETTING:I = 0x16b

.field public static final LDW_LKA_SETTING:I = 0x20

.field public static final LKS_MODE:I = 0x64

.field public static final LKS_MODE_SETTING:I = 0x21

.field public static final LKS_STATE:I = 0x63

.field public static final OSRMR_ANGLE_HORIZONTAL_FL:I = 0x1ad

.field public static final OSRMR_ANGLE_HORIZONTAL_FR:I = 0x1af

.field public static final OSRMR_ANGLE_VERTICAL_FL:I = 0x1ac

.field public static final OSRMR_ANGLE_VERTICAL_FR:I = 0x1ae

.field public static final OSRM_ANGLE_CMD_SETTING:I = 0x1aa

.field public static final OSRM_ANGLE_CMD_STATE:I = 0x1a9

.field public static final OSRM_ANGLE_SAVE_CMD_SETTING:I = 0x1ab

.field public static final OSRM_AUTO_FOLD_SETTING:I = 0x28

.field public static final OSRM_AUTO_FOLD_STATE:I = 0x6b

.field public static final PARK_AUTO_UNLOCK_SETTING:I = 0x151

.field public static final PARK_AUTO_UNLOCK_STATE:I = 0x150

.field public static final POWER_KEEP_REMIND_CONF:I = 0x177

.field public static final POWER_KEEP_REMIND_CONF_SETTING:I = 0x178

.field public static final POWER_KEEP_REMIND_STATE:I = 0x176

.field public static final POWER_KEEP_REQVD_SETTING:I = 0x175

.field public static final POWER_KEEP_REQVD_STATE:I = 0x174

.field public static final POWER_KEEP_SETTING:I = 0x173

.field public static final POWER_KEEP_STATE:I = 0x172

.field public static final POWER_OFF_REQ_SETTING:I = 0x17b

.field public static final POWER_OFF_REQ_VD_SETTING:I = 0x17a

.field public static final POWER_OFF_REQ_VD_STATE:I = 0x179

.field public static final RAINSTORM_MODE:I = 0x71

.field public static final RAINSTORM_MODE_SETTING:I = 0x2e

.field public static final REARVIEW_MIRROR_CMD:I = 0xfb

.field public static final REARVIEW_MIRROR_CMD_REVERSE_SETTING:I = 0x137

.field public static final REARVIEW_MIRROR_CMD_REVERSE_STATE:I = 0x136

.field public static final REARVIEW_MIRROR_CMD_VD:I = 0x135

.field public static final REARVIEW_MIRROR_SETTING_CMD_SETTING:I = 0x138

.field public static final REARVIEW_MIRROR_STATE_L:I = 0xfc

.field public static final REARVIEW_MIRROR_STATE_R:I = 0xfd

.field public static final RLSEATWELCOME:I = 0x21c

.field public static final RLSEATWELCOME_SETTING:I = 0x21d

.field public static final RL_SPA_BUTTON_STATE:I = 0x22f

.field public static final RRSEATWELCOME:I = 0x21a

.field public static final RRSEATWELCOME_SETTING:I = 0x21b

.field public static final RR_SPA_BUTTON_STATE:I = 0x230

.field public static final SCM_NAP_SETTING:I = 0x231

.field public static final SCM_NAP_SETTING_SAVE:I = 0x232

.field public static final SCM_NAP_SETTING_SAVE_STATE:I = 0x233

.field public static final STP_ONBRK_TO_REL_PARKBRK_INDON_STATE:I = 0x14f

.field public static final TSR_AUDIO_WARNING_SETTING:I = 0x26

.field public static final TSR_AUDIO_WARNING_STATE:I = 0x69

.field public static final TSR_SETTING:I = 0x25

.field public static final TSR_STATE:I = 0x68

.field public static final WCLCM_WORK_MODE_CTL_SETTING:I = 0x1c3

.field public static final WCLCM_WORK_MODE_STATE:I = 0x1c2

.field public static final WCM_CTL_CHARGING_STATE_STATE:I = 0x203

.field public static final WCM_CTL_ERROR_STATE:I = 0x208

.field public static final WCM_CTL_FAILURE_STATE_STATE:I = 0x204

.field public static final WCM_CTL_PROMPT_STATE:I = 0x207

.field public static final WCM_CTL_RESULT_STATE:I = 0x1c0

.field public static final WCM_CTL_SETTING:I = 0x1c1
