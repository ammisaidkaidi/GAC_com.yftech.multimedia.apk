package com.yftech.vehicle.sdk;

import android.util.Log;
import com.yftech.vehicle.internal.BaseApiManager;
import com.yftech.vehicle.internal.adapter.ICarConfig;
import com.yftech.vehicle.internal.adapter.ICarDashBoard;
import java.util.Arrays;

/* loaded from: /home/user/work/dex/classes4.dex */
public class CarConfig implements ICarConfig {
    private static final String TAG = "CarConfig";
    private static CarConfig sMe;
    private BaseApiManager mApi = new BaseApiManager() { // from class: com.yftech.vehicle.sdk.CarConfig.1
    };
    private byte[] mData;

    private CarConfig() {
    }

    private static synchronized CarConfig get() {
        CarConfig carConfig;
        synchronized (CarConfig.class) {
            if (sMe != null) {
                carConfig = sMe;
            } else {
                carConfig = new CarConfig();
                sMe = carConfig;
            }
        }
        return carConfig;
    }

    public static ICarConfig.VehicleType getVehicleType() {
        return ICarConfig.VehicleType.valueOf(getConfigValue(ICarConfig.Config.VEHICLE_TYPE));
    }

    public static ICarConfig.DriveType getDriveType() {
        return ICarConfig.DriveType.valueOf(getConfigValue(ICarConfig.Config.DRIVE_TYPE));
    }

    public static ICarConfig.GearboxType getGearboxType() {
        return ICarConfig.GearboxType.valueOf(getConfigValue(ICarConfig.Config.GEARBOX_TYPE));
    }

    public static ICarConfig.VehiclePlatform getVehiclePlatform() {
        return ICarConfig.VehiclePlatform.valueOf(getConfigValue(ICarConfig.Config.VEHICLE_PLATFORM));
    }

    public static boolean isACanPresent() {
        return getConfigValue(ICarConfig.Config.A_CAN) != 0;
    }

    public static boolean isBCanPresent() {
        return getConfigValue(ICarConfig.Config.B_CAN) != 0;
    }

    public static boolean isGpsPresent() {
        return getConfigValue(ICarConfig.Config.GPS) != 0;
    }

    public static boolean isAntennaPresent() {
        return getConfigValue(ICarConfig.Config.ANTENNA) != 0;
    }

    public static boolean isMicPresent() {
        return getConfigValue(ICarConfig.Config.MIC) != 0;
    }

    public static boolean isBcmPresent() {
        return getConfigValue(ICarConfig.Config.BCM) != 0;
    }

    public static boolean isHvacPresent() {
        return getConfigValue(ICarConfig.Config.HVAC) != 0;
    }

    public static boolean isIcmPresent() {
        return getConfigValue(ICarConfig.Config.ICM) != 0;
    }

    public static boolean isPasPresent() {
        return getConfigValue(ICarConfig.Config.PAS) != 0;
    }

    public static boolean isGwmPresent() {
        return getConfigValue(ICarConfig.Config.GWM) != 0;
    }

    public static boolean isFcpPresent() {
        return getConfigValue(ICarConfig.Config.FCP) != 0;
    }

    public static boolean isPcsPresent() {
        return getConfigValue(ICarConfig.Config.PCS) != 0;
    }

    public static boolean isTboxPresent() {
        return getConfigValue(ICarConfig.Config.TBOX) != 0;
    }

    public static boolean isVcuPresent() {
        return getConfigValue(ICarConfig.Config.VCU) != 0;
    }

    public static boolean isAvasPresent() {
        return getConfigValue(ICarConfig.Config.AVAS) != 0;
    }

    public static boolean isRvcPresent() {
        return getConfigValue(ICarConfig.Config.RVC) != 0;
    }

    public static boolean isSvmPresent() {
        return getConfigValue(ICarConfig.Config.SVM) != 0;
    }

    public static boolean isFlSpeakerPresent() {
        return getConfigValue(ICarConfig.Config.FL_SPEAKER) != 0;
    }

    public static boolean isFrSpeakerPresent() {
        return getConfigValue(ICarConfig.Config.FR_SPEAKER) != 0;
    }

    public static boolean isRlSpeakerPresent() {
        return getConfigValue(ICarConfig.Config.RL_SPEAKER) != 0;
    }

    public static boolean isRrSpeakerPresent() {
        return getConfigValue(ICarConfig.Config.RR_SPEAKER) != 0;
    }

    public static boolean isSteeringWheelKeyPresent() {
        return getConfigValue(ICarConfig.Config.STEERING_WHEEL_KEY) != 0;
    }

    public static boolean isFapaPresent() {
        return getConfigValue(ICarConfig.Config.FAPA) != 0;
    }

    public static boolean isHudSetPresent() {
        return getConfigValue(ICarConfig.Config.HUD_SET) != 0;
    }

    public static boolean isExternalSvmPresent() {
        return getConfigValue(ICarConfig.Config.EXTERNAL_SVM) != 0;
    }

    public static boolean isOmsPresent() {
        return getConfigValue(ICarConfig.Config.OMS) != 0;
    }

    public static ICarConfig.TboxConnectionMode getTboxConnectionMode() {
        return ICarConfig.TboxConnectionMode.valueOf(getConfigValue(ICarConfig.Config.TBOX_CONNECTION_MODE));
    }

    public static ICarConfig.DmsConnectionMode getDmsConnectionMode() {
        return ICarConfig.DmsConnectionMode.valueOf(getConfigValue(ICarConfig.Config.DMS_CONNECTION_MODE));
    }

    public static boolean isBCallSwitchPresent() {
        return getConfigValue(ICarConfig.Config.B_CALL_SWITCH) != 0;
    }

    public static boolean isECallSwitchPresent() {
        return getConfigValue(ICarConfig.Config.E_CALL_SWITCH) != 0;
    }

    public static boolean isCallBackPresent() {
        return getConfigValue(ICarConfig.Config.CALL_BACK) != 0;
    }

    public static boolean isRestartVehicleCommunicationModulePresent() {
        return getConfigValue(ICarConfig.Config.RESTART_VEHICLE_COMMUNICATION_MODULE) != 0;
    }

    public static ICarConfig.LoudspeakerNumber getLoudspeakerNumber() {
        return ICarConfig.LoudspeakerNumber.valueOf(getConfigValue(ICarConfig.Config.LOUDSPEAKER_NUMBER));
    }

    public static ICarConfig.LoudspeakerSupplier getLoudspeakerSupplier() {
        return ICarConfig.LoudspeakerSupplier.valueOf(getConfigValue(ICarConfig.Config.LOUDSPEAKER_SUPPLIER));
    }

    public static boolean isExtAmplifiersPresent() {
        return getConfigValue(ICarConfig.Config.EXT_AMPLIFIERS) != 0;
    }

    public static boolean isAvasSoundPresent() {
        return getConfigValue(ICarConfig.Config.AVAS_SOUND) != 0;
    }

    public static boolean isAvasSwitchPresent() {
        return getConfigValue(ICarConfig.Config.AVAS_SWITCH) != 0;
    }

    public static boolean isStorageBoxAutomaticallyFlipDownPresent() {
        return getConfigValue(ICarConfig.Config.STORAGE_BOX_AUTOMATICALLY_FLIP_DOWN) != 0;
    }

    public static boolean isHiddenDoorHandlePresent() {
        return getConfigValue(ICarConfig.Config.HIDDEN_DOOR_HANDLE) != 0;
    }

    public static boolean isWinterLongDistancePresent() {
        return getConfigValue(ICarConfig.Config.WINTER_LONG_DISTANCE) != 0;
    }

    public static boolean isChargingInsulationPresent() {
        return getConfigValue(ICarConfig.Config.CHARGING_INSULATION) != 0;
    }

    public static boolean isIntelligentInsulationNotificationPresent() {
        return getConfigValue(ICarConfig.Config.INTELLIGENT_INSULATION_NOTIFICATION) != 0;
    }

    public static boolean isEnergyRecoveryModePresent() {
        return getConfigValue(ICarConfig.Config.ENERGY_RECOVERY_MODE) != 0;
    }

    public static boolean isElectroDischargePresent() {
        return getConfigValue(ICarConfig.Config.ELECTRO_DISCHARGE) != 0;
    }

    public static boolean isEcoPlusModePresent() {
        return getConfigValue(ICarConfig.Config.ECO_PLUS_MODE) != 0;
    }

    public static boolean isEpedalModePresent() {
        return getConfigValue(ICarConfig.Config.EPEDAL_MODE) != 0;
    }

    public static boolean isCreepModePresent() {
        return getConfigValue(ICarConfig.Config.CREEP_MODE) != 0;
    }

    public static boolean isEnergyConsumptionPresent() {
        return getConfigValue(ICarConfig.Config.ENERGY_CONSUMPTION) != 0;
    }

    public static boolean isMonsterModeSwitchPresent() {
        return getConfigValue(ICarConfig.Config.MONSTER_MODE_SWITCH) != 0;
    }

    public static boolean isHealthChargeSettingPresent() {
        return getConfigValue(ICarConfig.Config.HEALTH_CHARGE_SETTING) != 0;
    }

    public static boolean isDrivingModePresent() {
        return getConfigValue(ICarConfig.Config.DRIVING_MODE) != 0;
    }

    public static boolean isAutoModeOfFrsAndRecControlPresent() {
        return getConfigValue(ICarConfig.Config.AUTO_MODE_OF_FRS_AND_REC_CONTROL) != 0;
    }

    public static boolean isComfortCurvePresent() {
        return getConfigValue(ICarConfig.Config.COMFORT_CURVE) != 0;
    }

    public static boolean isQualitySensorPresent() {
        return getConfigValue(ICarConfig.Config.QUALITY_SENSOR) != 0;
    }

    public static boolean isAutoDeforstPresent() {
        return getConfigValue(ICarConfig.Config.AUTO_DEFORST) != 0;
    }

    public static boolean isFanSpeedOfAutoModePresent() {
        return getConfigValue(ICarConfig.Config.FAN_SPEED_OF_AUTO_MODE) != 0;
    }

    public static boolean isSolarFeaturesPresent() {
        return getConfigValue(ICarConfig.Config.SOLAR_FEATURES) != 0;
    }

    public static boolean isFragrancePresent() {
        return getConfigValue(ICarConfig.Config.FRAGRANCE) != 0;
    }

    public static boolean isAnionPresent() {
        return getConfigValue(ICarConfig.Config.ANION) != 0;
    }

    public static boolean isHeatPumpAirConditioningPresent() {
        return getConfigValue(ICarConfig.Config.HEAT_PUMP_AIR_CONDITIONING) != 0;
    }

    public static ICarConfig.AirConditioningZones getAirConditioningZones() {
        return ICarConfig.AirConditioningZones.valueOf(getConfigValue(ICarConfig.Config.AIR_CONDITIONING_ZONES));
    }

    public static ICarConfig.RearDefrostAndRearviewMirrorHeating getRearDefrostAndRearviewMirrorHeating() {
        return ICarConfig.RearDefrostAndRearviewMirrorHeating.valueOf(getConfigValue(ICarConfig.Config.REAR_DEFROST_AND_REARVIEW_MIRROR_HEATING));
    }

    public static ICarConfig.ConfigPm25 getConfigPm25() {
        return ICarConfig.ConfigPm25.valueOf(getConfigValue(ICarConfig.Config.CONFIG_PM2_5));
    }

    public static ICarConfig.AirConditionType getAirConditionType() {
        return ICarConfig.AirConditionType.valueOf(getConfigValue(ICarConfig.Config.AIR_CONDITION_TYPE));
    }

    public static ICarConfig.CameraNumber getCameraNumber() {
        return ICarConfig.CameraNumber.valueOf(getConfigValue(ICarConfig.Config.CAMERA_NUMBER));
    }

    public static ICarConfig.RadarNumber getRadarNumber() {
        return ICarConfig.RadarNumber.valueOf(getConfigValue(ICarConfig.Config.RADAR_NUMBER));
    }

    public static ICarConfig.StandardAndHdCameraConfiguration getStandardAndHdCameraConfiguration() {
        return ICarConfig.StandardAndHdCameraConfiguration.valueOf(getConfigValue(ICarConfig.Config.STANDARD_AND_HD_CAMERA_CONFIGURATION));
    }

    public static boolean isFollowTrackingLinePresent() {
        return getConfigValue(ICarConfig.Config.FOLLOW_TRACKING_LINE) != 0;
    }

    public static boolean isLookAroundToDetectTheDoorPresent() {
        return getConfigValue(ICarConfig.Config.LOOK_AROUND_TO_DETECT_THE_DOOR) != 0;
    }

    public static boolean isRemoteFindingCarPresent() {
        return getConfigValue(ICarConfig.Config.REMOTE_FINDING_CAR) != 0;
    }

    public static boolean isBackRowDisplayPresent() {
        return getConfigValue(ICarConfig.Config.BACK_ROW_DISPLAY) != 0;
    }

    public static boolean isHeadAcousticsPresent() {
        return getConfigValue(ICarConfig.Config.HEAD_ACOUSTICS) != 0;
    }

    public static boolean isDvrPresent() {
        return getConfigValue(ICarConfig.Config.DVR) != 0;
    }

    public static boolean isArPresent() {
        return getConfigValue(ICarConfig.Config.AR) != 0;
    }

    public static ICarConfig.Tiktok getTiktok() {
        return ICarConfig.Tiktok.valueOf(getConfigValue(ICarConfig.Config.TIKTOK));
    }

    public static boolean isCeilingScreenPresent() {
        return getConfigValue(ICarConfig.Config.CEILING_SCREEN) != 0;
    }

    public static boolean isAdaptiveHighBeamPresent() {
        return getConfigValue(ICarConfig.Config.ADAPTIVE_HIGH_BEAM) != 0;
    }

    public static boolean isControlHighBeamAssistantPresent() {
        return getConfigValue(ICarConfig.Config.CONTROL_HIGH_BEAM_ASSISTANT) != 0;
    }

    public static boolean isCloseWindowWhileLockPresent() {
        return getConfigValue(ICarConfig.Config.CLOSE_WINDOW_WHILE_LOCK) != 0;
    }

    public static boolean isDomeLightInDoorGearPositionPresent() {
        return getConfigValue(ICarConfig.Config.DOME_LIGHT_IN_DOOR_GEAR_POSITION) != 0;
    }

    public static boolean isControlSmartWelcomeLightPresent() {
        return getConfigValue(ICarConfig.Config.CONTROL_SMART_WELCOME_LIGHT) != 0;
    }

    public static boolean isKeyIdentificationPresent() {
        return getConfigValue(ICarConfig.Config.KEY_IDENTIFICATION) != 0;
    }

    public static boolean isFollowMusicModePresent() {
        return getConfigValue(ICarConfig.Config.FOLLOW_MUSIC_MODE) != 0;
    }

    public static boolean isEasyOpenTailgatePresent() {
        return getConfigValue(ICarConfig.Config.EASY_OPEN_TAILGATE) != 0;
    }

    public static boolean isSmartTailgatePresent() {
        return getConfigValue(ICarConfig.Config.SMART_TAILGATE) != 0;
    }

    public static boolean isWirelessChargingPresent() {
        return getConfigValue(ICarConfig.Config.WIRELESS_CHARGING) != 0;
    }

    public static boolean isAccessorySmartScreenPresent() {
        return getConfigValue(ICarConfig.Config.ACCESSORY_SMART_SCREEN) != 0;
    }

    public static boolean isPlgmfunccfgPresent() {
        return getConfigValue(ICarConfig.Config.PLGMFUNCCFG) != 0;
    }

    public static boolean isNfcPresent() {
        return getConfigValue(ICarConfig.Config.NFC) != 0;
    }

    public static ICarConfig.WalAndApu getWalAndApu() {
        return ICarConfig.WalAndApu.valueOf(getConfigValue(ICarConfig.Config.WAL_AND_APU));
    }

    public static boolean isRemoteUnlockPresent() {
        return getConfigValue(ICarConfig.Config.REMOTE_UNLOCK) != 0;
    }

    public static boolean isSpeedLockPresent() {
        return getConfigValue(ICarConfig.Config.SPEED_LOCK) != 0;
    }

    public static boolean isAutoUnlockingPresent() {
        return getConfigValue(ICarConfig.Config.AUTO_UNLOCKING) != 0;
    }

    public static boolean isExteriorRearViewMirrorAutoFoldingAndUnfoldingPresent() {
        return getConfigValue(ICarConfig.Config.EXTERIOR_REAR_VIEW_MIRROR_AUTO_FOLDING_AND_UNFOLDING) != 0;
    }

    public static boolean isExteriorRearviewMirrorDipPresent() {
        return getConfigValue(ICarConfig.Config.EXTERIOR_REARVIEW_MIRROR_DIP) != 0;
    }

    public static boolean isRearviewMirrorAdjustmentPresent() {
        return getConfigValue(ICarConfig.Config.REARVIEW_MIRROR_ADJUSTMENT) != 0;
    }

    public static boolean isSteeringWheelSteeringHandForcePresent() {
        return getConfigValue(ICarConfig.Config.STEERING_WHEEL_STEERING_HAND_FORCE) != 0;
    }

    public static boolean isEtcSettingPresent() {
        return getConfigValue(ICarConfig.Config.ETC_SETTING) != 0;
    }

    public static boolean isWiperMaintanencePresent() {
        return getConfigValue(ICarConfig.Config.WIPER_MAINTANENCE) != 0;
    }

    public static boolean isAutoWiperPresent() {
        return getConfigValue(ICarConfig.Config.AUTO_WIPER) != 0;
    }

    public static boolean isLockAndUnlockWhistleNotePresent() {
        return getConfigValue(ICarConfig.Config.LOCK_AND_UNLOCK_WHISTLE_NOTE) != 0;
    }

    public static boolean isLightTurnedOffDelayPresent() {
        return getConfigValue(ICarConfig.Config.LIGHT_TURNED_OFF_DELAY) != 0;
    }

    public static boolean isAmbienceLightsControlPresent() {
        return getConfigValue(ICarConfig.Config.AMBIENCE_LIGHTS_CONTROL) != 0;
    }

    public static boolean isIalPresent() {
        return getConfigValue(ICarConfig.Config.IAL) != 0;
    }

    public static boolean isDriverEasyEntryAndExitFunctionPresent() {
        return getConfigValue(ICarConfig.Config.DRIVER_EASY_ENTRY_AND_EXIT_FUNCTION) != 0;
    }

    public static boolean isSeatControlPresent() {
        return getConfigValue(ICarConfig.Config.SEAT_CONTROL) != 0;
    }

    public static boolean isRoofControlPresent() {
        return getConfigValue(ICarConfig.Config.ROOF_CONTROL) != 0;
    }

    public static boolean isSteeringWheelControlPresent() {
        return getConfigValue(ICarConfig.Config.STEERING_WHEEL_CONTROL) != 0;
    }

    public static boolean isSlidingDoorControlPresent() {
        return getConfigValue(ICarConfig.Config.SLIDING_DOOR_CONTROL) != 0;
    }

    public static ICarConfig.WindowControl getWindowControl() {
        return ICarConfig.WindowControl.valueOf(getConfigValue(ICarConfig.Config.WINDOW_CONTROL));
    }

    public static boolean isSteeringWheelCustomButtonPresent() {
        return getConfigValue(ICarConfig.Config.STEERING_WHEEL_CUSTOM_BUTTON) != 0;
    }

    public static boolean isLockControlPresent() {
        return getConfigValue(ICarConfig.Config.LOCK_CONTROL) != 0;
    }

    public static boolean isSlidingDoorSpeedAdjustmentPresent() {
        return getConfigValue(ICarConfig.Config.SLIDING_DOOR_SPEED_ADJUSTMENT) != 0;
    }

    public static boolean isSlidingDoorControlManualAndAutomaticPresent() {
        return getConfigValue(ICarConfig.Config.SLIDING_DOOR_CONTROL_MANUAL_AND_AUTOMATIC) != 0;
    }

    public static ICarConfig.NapMode getNapMode() {
        return ICarConfig.NapMode.valueOf(getConfigValue(ICarConfig.Config.NAP_MODE));
    }

    public static boolean isRainstormModePresent() {
        return getConfigValue(ICarConfig.Config.RAINSTORM_MODE) != 0;
    }

    public static boolean isQishiModePresent() {
        return getConfigValue(ICarConfig.Config.QISHI_MODE) != 0;
    }

    public static boolean isPartyModePresent() {
        return getConfigValue(ICarConfig.Config.PARTY_MODE) != 0;
    }

    public static boolean isWakeUpModePresent() {
        return getConfigValue(ICarConfig.Config.WAKE_UP_MODE) != 0;
    }

    public static boolean isSteeringWheelHeatingPresent() {
        return getConfigValue(ICarConfig.Config.STEERING_WHEEL_HEATING) != 0;
    }

    public static boolean isLightShowPresent() {
        return getConfigValue(ICarConfig.Config.LIGHT_SHOW) != 0;
    }

    public static boolean isAmbienceLightsComninationPresent() {
        return getConfigValue(ICarConfig.Config.AMBIENCE_LIGHTS_COMNINATION) != 0;
    }

    public static ICarConfig.PromptType getPromptType() {
        return ICarConfig.PromptType.valueOf(getConfigValue(ICarConfig.Config.PROMPT_TYPE));
    }

    public static boolean isHighWayAssistPresent() {
        return getConfigValue(ICarConfig.Config.HIGH_WAY_ASSIST) != 0;
    }

    public static boolean isNavigationDrivingAssistPresent() {
        return getConfigValue(ICarConfig.Config.NAVIGATION_DRIVING_ASSIST) != 0;
    }

    public static boolean isClusterVolumeSettingPresent() {
        return getConfigValue(ICarConfig.Config.CLUSTER_VOLUME_SETTING) != 0;
    }

    public static boolean isClusterLanguageSettingPresent() {
        return getConfigValue(ICarConfig.Config.CLUSTER_LANGUAGE_SETTING) != 0;
    }

    public static boolean isClusterMileageResetPresent() {
        return getConfigValue(ICarConfig.Config.CLUSTER_MILEAGE_RESET) != 0;
    }

    public static boolean isClusterSpeedUnitPresent() {
        return getConfigValue(ICarConfig.Config.CLUSTER_SPEED_UNIT) != 0;
    }

    public static boolean isClusterTemperatureUnitPresent() {
        return getConfigValue(ICarConfig.Config.CLUSTER_TEMPERATURE_UNIT) != 0;
    }

    public static boolean isClusterPressureUnitPresent() {
        return getConfigValue(ICarConfig.Config.CLUSTER_PRESSURE_UNIT) != 0;
    }

    public static boolean isRearSeatBeltNotificationPresent() {
        return getConfigValue(ICarConfig.Config.REAR_SEAT_BELT_NOTIFICATION) != 0;
    }

    public static boolean isClusterDefaultSettingPresent() {
        return getConfigValue(ICarConfig.Config.CLUSTER_DEFAULT_SETTING) != 0;
    }

    public static boolean isClusterFuelConsumptionUnitPresent() {
        return getConfigValue(ICarConfig.Config.CLUSTER_FUEL_CONSUMPTION_UNIT) != 0;
    }

    public static boolean isClusterBackLightPresent() {
        return getConfigValue(ICarConfig.Config.CLUSTER_BACK_LIGHT) != 0;
    }

    public static boolean isTimeInClusterPresent() {
        return getConfigValue(ICarConfig.Config.TIME_IN_CLUSTER) != 0;
    }

    public static boolean isLaneAuxiliarySwitchPresent() {
        return getConfigValue(ICarConfig.Config.LANE_AUXILIARY_SWITCH) != 0;
    }

    public static boolean isLaneAssistPresent() {
        return getConfigValue(ICarConfig.Config.LANE_ASSIST) != 0;
    }

    public static boolean isAutoEmergencyBrakingBrakingPresent() {
        return getConfigValue(ICarConfig.Config.AUTO_EMERGENCY_BRAKING_BRAKING) != 0;
    }

    public static boolean isFrontCollisionWarningPresent() {
        return getConfigValue(ICarConfig.Config.FRONT_COLLISION_WARNING) != 0;
    }

    public static boolean isIfcCruisemodePresent() {
        return getConfigValue(ICarConfig.Config.IFC_CRUISEMODE) != 0;
    }

    public static boolean isBsdPresent() {
        return getConfigValue(ICarConfig.Config.BSD) != 0;
    }

    public static boolean isDoorOpenWarningPresent() {
        return getConfigValue(ICarConfig.Config.DOOR_OPEN_WARNING) != 0;
    }

    public static boolean isOverspeedWarningPresent() {
        return getConfigValue(ICarConfig.Config.OVERSPEED_WARNING) != 0;
    }

    public static boolean isSpeedLimtedSignRecognitionPresent() {
        return getConfigValue(ICarConfig.Config.SPEED_LIMTED_SIGN_RECOGNITION) != 0;
    }

    public static boolean isSteeringModePresent() {
        return getConfigValue(ICarConfig.Config.STEERING_MODE) != 0;
    }

    public static boolean isDrivingRecorderPresent() {
        return getConfigValue(ICarConfig.Config.DRIVING_RECORDER) != 0;
    }

    public static boolean isEventRecordFunctionSwitchPresent() {
        return getConfigValue(ICarConfig.Config.EVENT_RECORD_FUNCTION_SWITCH) != 0;
    }

    public static boolean isLcaCardPresent() {
        return getConfigValue(ICarConfig.Config.LCA_CARD) != 0;
    }

    public static ICarConfig.LaneChangeAssist getLaneChangeAssist() {
        return ICarConfig.LaneChangeAssist.valueOf(getConfigValue(ICarConfig.Config.LANE_CHANGE_ASSIST));
    }

    public static boolean isDriverStateOfAlertPresent() {
        return getConfigValue(ICarConfig.Config.DRIVER_STATE_OF_ALERT) != 0;
    }

    public static boolean isEmergencySteeringModePresent() {
        return getConfigValue(ICarConfig.Config.EMERGENCY_STEERING_MODE) != 0;
    }

    public static boolean isRaebPresent() {
        return getConfigValue(ICarConfig.Config.RAEB) != 0;
    }

    public static boolean isAlertModePresent() {
        return getConfigValue(ICarConfig.Config.ALERT_MODE) != 0;
    }

    public static boolean isEmergencyLaneKeepingAssistPresent() {
        return getConfigValue(ICarConfig.Config.EMERGENCY_LANE_KEEPING_ASSIST) != 0;
    }

    public static boolean isRearCrossTrafficAlertPresent() {
        return getConfigValue(ICarConfig.Config.REAR_CROSS_TRAFFIC_ALERT) != 0;
    }

    public static boolean isRearCrossTrafficAlertModePresent() {
        return getConfigValue(ICarConfig.Config.REAR_CROSS_TRAFFIC_ALERT_MODE) != 0;
    }

    public static boolean isRearApproachingWarningPresent() {
        return getConfigValue(ICarConfig.Config.REAR_APPROACHING_WARNING) != 0;
    }

    public static boolean isFrontCrossTrafficAlertPresent() {
        return getConfigValue(ICarConfig.Config.FRONT_CROSS_TRAFFIC_ALERT) != 0;
    }

    public static boolean isFrontCrossTrafficAlertModePresent() {
        return getConfigValue(ICarConfig.Config.FRONT_CROSS_TRAFFIC_ALERT_MODE) != 0;
    }

    public static boolean isApaVoicePromptButtonPresent() {
        return getConfigValue(ICarConfig.Config.APA_VOICE_PROMPT_BUTTON) != 0;
    }

    public static boolean isForwardCollisionWarningDistancePresent() {
        return getConfigValue(ICarConfig.Config.FORWARD_COLLISION_WARNING_DISTANCE) != 0;
    }

    public static boolean isIndicatedLaneChangePresent() {
        return getConfigValue(ICarConfig.Config.INDICATED_LANE_CHANGE) != 0;
    }

    public static boolean isOverspeedAlarmOfTsrPresent() {
        return getConfigValue(ICarConfig.Config.OVERSPEED_ALARM_OF_TSR) != 0;
    }

    public static boolean isIntelligentSpeedLimitControlPresent() {
        return getConfigValue(ICarConfig.Config.INTELLIGENT_SPEED_LIMIT_CONTROL) != 0;
    }

    public static boolean isDriverAssistanceWarningPresent() {
        return getConfigValue(ICarConfig.Config.DRIVER_ASSISTANCE_WARNING) != 0;
    }

    public static int getDistractedAlarmIntervalTime() {
        return getConfigValue(ICarConfig.Config.DISTRACTED_ALARM_INTERVAL_TIME);
    }

    public static int getTiredAlarmIntervalTime() {
        return getConfigValue(ICarConfig.Config.TIRED_ALARM_INTERVAL_TIME);
    }

    public static int getApaAlarmDelayedTime() {
        return getConfigValue(ICarConfig.Config.APA_ALARM_DELAYED_TIME);
    }

    public static boolean isEspOffSwitchPresent() {
        return getConfigValue(ICarConfig.Config.ESP_OFF_SWITCH) != 0;
    }

    public static boolean isHdcSwitchPresent() {
        return getConfigValue(ICarConfig.Config.HDC_SWITCH) != 0;
    }

    public static boolean isEboosterModePresent() {
        return getConfigValue(ICarConfig.Config.EBOOSTER_MODE) != 0;
    }

    public static boolean isDriverModePresent() {
        return getConfigValue(ICarConfig.Config.DRIVER_MODE) != 0;
    }

    public static boolean isDriveModeMemorySwitchPresent() {
        return getConfigValue(ICarConfig.Config.DRIVE_MODE_MEMORY_SWITCH) != 0;
    }

    public static boolean isEngineWaveSwitchPresent() {
        return getConfigValue(ICarConfig.Config.ENGINE_WAVE_SWITCH) != 0;
    }

    public static boolean isSuspensionDampingPresent() {
        return getConfigValue(ICarConfig.Config.SUSPENSION_DAMPING) != 0;
    }

    public static boolean isThrottleSensitivityPresent() {
        return getConfigValue(ICarConfig.Config.THROTTLE_SENSITIVITY) != 0;
    }

    public static ICarConfig.Avdc getAvdc() {
        return ICarConfig.Avdc.valueOf(getConfigValue(ICarConfig.Config.AVDC));
    }

    public static boolean isEnergyRecoveryPresent() {
        return getConfigValue(ICarConfig.Config.ENERGY_RECOVERY) != 0;
    }

    public static boolean isVrControlCruisePresent() {
        return getConfigValue(ICarConfig.Config.VR_CONTROL_CRUISE) != 0;
    }

    public static boolean isVrControlTurnlampPresent() {
        return getConfigValue(ICarConfig.Config.VR_CONTROL_TURNLAMP) != 0;
    }

    public static boolean isVrControlSunshadePresent() {
        return getConfigValue(ICarConfig.Config.VR_CONTROL_SUNSHADE) != 0;
    }

    public static ICarConfig.VrControlCarwindow getVrControlCarwindow() {
        return ICarConfig.VrControlCarwindow.valueOf(getConfigValue(ICarConfig.Config.VR_CONTROL_CARWINDOW));
    }

    public static ICarConfig.VrControlIal getVrControlIal() {
        return ICarConfig.VrControlIal.valueOf(getConfigValue(ICarConfig.Config.VR_CONTROL_IAL));
    }

    public static boolean isVrControlExtlightPresent() {
        return getConfigValue(ICarConfig.Config.VR_CONTROL_EXTLIGHT) != 0;
    }

    public static boolean isVrControlToplightPresent() {
        return getConfigValue(ICarConfig.Config.VR_CONTROL_TOPLIGHT) != 0;
    }

    public static ICarConfig.VrControlWiperAndCleaning getVrControlWiperAndCleaning() {
        return ICarConfig.VrControlWiperAndCleaning.valueOf(getConfigValue(ICarConfig.Config.VR_CONTROL_WIPER_AND_CLEANING));
    }

    public static boolean isVrControlChargingAndFuelTankCapPresent() {
        return getConfigValue(ICarConfig.Config.VR_CONTROL_CHARGING_AND_FUEL_TANK_CAP) != 0;
    }

    public static boolean isVrControlEngineAndMotorPresent() {
        return getConfigValue(ICarConfig.Config.VR_CONTROL_ENGINE_AND_MOTOR) != 0;
    }

    public static boolean isVrControlInstrumentBacklightPresent() {
        return getConfigValue(ICarConfig.Config.VR_CONTROL_INSTRUMENT_BACKLIGHT) != 0;
    }

    public static ICarConfig.VrControlHvac getVrControlHvac() {
        return ICarConfig.VrControlHvac.valueOf(getConfigValue(ICarConfig.Config.VR_CONTROL_HVAC));
    }

    public static boolean isSmartHvacPresent() {
        return getConfigValue(ICarConfig.Config.SMART_HVAC) != 0;
    }

    public static boolean isSportPlusPresent() {
        return getConfigValue(ICarConfig.Config.SPORT_PLUS) != 0;
    }

    public static boolean isVrControlSeatAdjustmentPresent() {
        return getConfigValue(ICarConfig.Config.VR_CONTROL_SEAT_ADJUSTMENT) != 0;
    }

    public static ICarConfig.VrControlRoof getVrControlRoof() {
        return ICarConfig.VrControlRoof.valueOf(getConfigValue(ICarConfig.Config.VR_CONTROL_ROOF));
    }

    public static boolean isVrControlPlgmPresent() {
        return getConfigValue(ICarConfig.Config.VR_CONTROL_PLGM) != 0;
    }

    public static boolean isVrControlDmsNotificationPresent() {
        return getConfigValue(ICarConfig.Config.VR_CONTROL_DMS_NOTIFICATION) != 0;
    }

    public static ICarConfig.VrControlWindowposition getVrControlWindowposition() {
        return ICarConfig.VrControlWindowposition.valueOf(getConfigValue(ICarConfig.Config.VR_CONTROL_WINDOWPOSITION));
    }

    public static ICarConfig.VrControlRoofposition getVrControlRoofposition() {
        return ICarConfig.VrControlRoofposition.valueOf(getConfigValue(ICarConfig.Config.VR_CONTROL_ROOFPOSITION));
    }

    public static ICarConfig.VrControl getVrControl() {
        return ICarConfig.VrControl.valueOf(getConfigValue(ICarConfig.Config.VR_CONTROL));
    }

    public static boolean isVrControlChargingInsulationNotificationPresent() {
        return getConfigValue(ICarConfig.Config.VR_CONTROL_CHARGING_INSULATION_NOTIFICATION) != 0;
    }

    public static boolean isVrControlChargingInsulationMenuSwitchPresent() {
        return getConfigValue(ICarConfig.Config.VR_CONTROL_CHARGING_INSULATION_MENU_SWITCH) != 0;
    }

    public static boolean isVrControlChargingBookingMenuSwitchPresent() {
        return getConfigValue(ICarConfig.Config.VR_CONTROL_CHARGING_BOOKING_MENU_SWITCH) != 0;
    }

    public static boolean isVrControlControlDriverModePresent() {
        return getConfigValue(ICarConfig.Config.VR_CONTROL_CONTROL_DRIVER_MODE) != 0;
    }

    public static boolean isVrControlEnergyRecoveryPresent() {
        return getConfigValue(ICarConfig.Config.VR_CONTROL_ENERGY_RECOVERY) != 0;
    }

    public static boolean isVrControlApaControlPresent() {
        return getConfigValue(ICarConfig.Config.VR_CONTROL_APA_CONTROL) != 0;
    }

    public static ICarConfig.VrControlParking getVrControlParking() {
        return ICarConfig.VrControlParking.valueOf(getConfigValue(ICarConfig.Config.VR_CONTROL_PARKING));
    }

    public static boolean isDriverDirectVoiceWakeUpPresent() {
        return getConfigValue(ICarConfig.Config.DRIVER_DIRECT_VOICE_WAKE_UP) != 0;
    }

    public static boolean isColdAndWarmCupHolderPresent() {
        return getConfigValue(ICarConfig.Config.COLD_AND_WARM_CUP_HOLDER) != 0;
    }

    public static boolean isAutoholdPresent() {
        return getConfigValue(ICarConfig.Config.AUTOHOLD) != 0;
    }

    public static boolean isTechnologySkylightPresent() {
        return getConfigValue(ICarConfig.Config.TECHNOLOGY_SKYLIGHT) != 0;
    }

    public static boolean isIccPresent() {
        return getConfigValue(ICarConfig.Config.ICC) != 0;
    }

    public static boolean isAncPresent() {
        return getConfigValue(ICarConfig.Config.ANC) != 0;
    }

    public static boolean isRearApproachingWarningModePresent() {
        return getConfigValue(ICarConfig.Config.REAR_APPROACHING_WARNING_MODE) != 0;
    }

    public static int getReserced() {
        return getConfigValue(ICarConfig.Config.RESERCED);
    }

    public static ICarConfig.HeatingAndVentilationFl getHeatingAndVentilationFl() {
        return ICarConfig.HeatingAndVentilationFl.valueOf(getConfigValue(ICarConfig.Config.HEATING_AND_VENTILATION_FL));
    }

    public static ICarConfig.HeatingAndVentilationFr getHeatingAndVentilationFr() {
        return ICarConfig.HeatingAndVentilationFr.valueOf(getConfigValue(ICarConfig.Config.HEATING_AND_VENTILATION_FR));
    }

    public static ICarConfig.HeatingAndVentilationRl getHeatingAndVentilationRl() {
        return ICarConfig.HeatingAndVentilationRl.valueOf(getConfigValue(ICarConfig.Config.HEATING_AND_VENTILATION_RL));
    }

    public static ICarConfig.HeatingAndVentilationRr getHeatingAndVentilationRr() {
        return ICarConfig.HeatingAndVentilationRr.valueOf(getConfigValue(ICarConfig.Config.HEATING_AND_VENTILATION_RR));
    }

    public static ICarConfig.SecondRowSeatsWelcome getSecondRowSeatsWelcome() {
        return ICarConfig.SecondRowSeatsWelcome.valueOf(getConfigValue(ICarConfig.Config.SECOND_ROW_SEATS_WELCOME));
    }

    public static ICarConfig.LimitSecondRowSeatsWelcomeFunction getLimitSecondRowSeatsWelcomeFunction() {
        return ICarConfig.LimitSecondRowSeatsWelcomeFunction.valueOf(getConfigValue(ICarConfig.Config.LIMIT_SECOND_ROW_SEATS_WELCOME_FUNCTION));
    }

    public static boolean isSecondRowSeatMassagePresent() {
        return getConfigValue(ICarConfig.Config.SECOND_ROW_SEAT_MASSAGE) != 0;
    }

    public static boolean isSecondRowSeatAdjustmentPresent() {
        return getConfigValue(ICarConfig.Config.SECOND_ROW_SEAT_ADJUSTMENT) != 0;
    }

    public static boolean isSecondRowChildLockPresent() {
        return getConfigValue(ICarConfig.Config.SECOND_ROW_CHILD_LOCK) != 0;
    }

    public static boolean isPassengerSeatAdjustmentPresent() {
        return getConfigValue(ICarConfig.Config.PASSENGER_SEAT_ADJUSTMENT) != 0;
    }

    public static boolean isDriverSeatControlPresent() {
        return getConfigValue(ICarConfig.Config.DRIVER_SEAT_CONTROL) != 0;
    }

    public static ICarConfig.DriverSeatControl getSeatAdjustmentPresentFunction() {
        return ICarConfig.DriverSeatControl.valueOf(getConfigValue(ICarConfig.Config.PASSENGER_SEAT_ADJUSTMENT));
    }

    public static ICarConfig.DriverSeatControl getDriverSeatControlPresentFunction() {
        return ICarConfig.DriverSeatControl.valueOf(getConfigValue(ICarConfig.Config.DRIVER_SEAT_CONTROL));
    }

    public static boolean isSecondRowSeatRestPresent() {
        return getConfigValue(ICarConfig.Config.SECOND_ROW_SEAT_REST) != 0;
    }

    public static boolean isSpaPresent() {
        return getConfigValue(ICarConfig.Config.SPA) != 0;
    }

    public static boolean isUltravioletRayPresent() {
        return getConfigValue(ICarConfig.Config.ULTRAVIOLET_RAY) != 0;
    }

    public static boolean isUnlockVentilationPresent() {
        return getConfigValue(ICarConfig.Config.UNLOCK_VENTILATION) != 0;
    }

    public static boolean isEvaporatorSelfDryingPresent() {
        return getConfigValue(ICarConfig.Config.EVAPORATOR_SELF_DRYING) != 0;
    }

    public static boolean isAirConditioningBlindExercisePresent() {
        return getConfigValue(ICarConfig.Config.AIR_CONDITIONING_BLIND_EXERCISE) != 0;
    }

    public static boolean isAirConditioningQuickStartPresent() {
        return getConfigValue(ICarConfig.Config.AIR_CONDITIONING_QUICK_START) != 0;
    }

    public static boolean isRapidVentilationPresent() {
        return getConfigValue(ICarConfig.Config.RAPID_VENTILATION) != 0;
    }

    public static boolean isHospitalityLampSignalsPresent() {
        return getConfigValue(ICarConfig.Config.HOSPITALITY_LAMP_SIGNALS) != 0;
    }

    public static boolean isTemporaryParkingLampSignalsPresent() {
        return getConfigValue(ICarConfig.Config.TEMPORARY_PARKING_LAMP_SIGNALS) != 0;
    }

    public static boolean isLaneChangeDriverConfirmationPresent() {
        return getConfigValue(ICarConfig.Config.LANE_CHANGE_DRIVER_CONFIRMATION) != 0;
    }

    public static boolean isLaneChangeStylePresent() {
        return getConfigValue(ICarConfig.Config.LANE_CHANGE_STYLE) != 0;
    }

    public static boolean isIndicatedLaneChangingPresent() {
        return getConfigValue(ICarConfig.Config.INDICATED_LANE_CHANGING) != 0;
    }

    public static boolean isFrontDistanceDisplayPresent() {
        return getConfigValue(ICarConfig.Config.FRONT_DISTANCE_DISPLAY) != 0;
    }

    public static boolean isIntelligentCollisionAvoidancePresent() {
        return getConfigValue(ICarConfig.Config.INTELLIGENT_COLLISION_AVOIDANCE) != 0;
    }

    public static ICarConfig.FeezeMode getFeezeMode() {
        return ICarConfig.FeezeMode.valueOf(getConfigValue(ICarConfig.Config.FEEZE_MODE));
    }

    public static boolean isClusterDistanceSettingPresent() {
        return getConfigValue(ICarConfig.Config.CLUSTER_DISTANCE_SETTING) != 0;
    }

    public static boolean isEnergyFlowModePresent() {
        return getConfigValue(ICarConfig.Config.ENERGY_FLOW_MODE) != 0;
    }

    public static boolean isEnergyFlowDisplayPresent() {
        return getConfigValue(ICarConfig.Config.ENERGY_FLOW_DISPLAY) != 0;
    }

    public static boolean isEvSwitchDisplayPresent() {
        return getConfigValue(ICarConfig.Config.EV_SWITCH_DISPLAY) != 0;
    }

    public static boolean isThe3DChimeBootSoundPresent() {
        return getConfigValue(ICarConfig.Config.THE_3D_CHIME_BOOT_SOUND) != 0;
    }

    public static boolean isThe3DChimeIndicatorPresent() {
        return getConfigValue(ICarConfig.Config.THE_3D_CHIME_INDICATOR) != 0;
    }

    public static boolean isThe3DChimeLaneChangeAssitAndRearApproachingWarningPresent() {
        return getConfigValue(ICarConfig.Config.THE_3D_CHIME_LANE_CHANGE_ASSIT_AND_REAR_APPROACHING_WARNING) != 0;
    }

    public static boolean isThe3DChimeFrontCollisionWarningSoundPresent() {
        return getConfigValue(ICarConfig.Config.THE_3D_CHIME_FRONT_COLLISION_WARNING_SOUND) != 0;
    }

    public static boolean isThe3DChimeReversingRadarSoundPresent() {
        return getConfigValue(ICarConfig.Config.THE_3D_CHIME_REVERSING_RADAR_SOUND) != 0;
    }

    public static boolean isThe3DChimeIalSoundPresent() {
        return getConfigValue(ICarConfig.Config.THE_3D_CHIME_IAL_SOUND) != 0;
    }

    public static boolean isThe3DChimeDriverModeSoundPresent() {
        return getConfigValue(ICarConfig.Config.THE_3D_CHIME_DRIVER_MODE_SOUND) != 0;
    }

    public static boolean isEnergyConsumptionAppPresent() {
        return getConfigValue(ICarConfig.Config.ENERGY_CONSUMPTION_APP) != 0;
    }

    public static boolean isSmartNaviDrivePresent() {
        return getConfigValue(ICarConfig.Config.SMART_NAVI_DRIVE) != 0;
    }

    public static boolean isSmartCommutDrivePresent() {
        return getConfigValue(ICarConfig.Config.SMART_COMMUT_DRIVE) != 0;
    }

    public static boolean isComfortableStopPresent() {
        return getConfigValue(ICarConfig.Config.COMFORTABLE_STOP) != 0;
    }

    public static ICarConfig.LeftRightHandDriveVehicles getLeftRightHandDriveVehicles() {
        return ICarConfig.LeftRightHandDriveVehicles.valueOf(getConfigValue(ICarConfig.Config.LEFT_RIGHT_HAND_DRIVE_VEHICLES));
    }

    private byte[] configData() {
        if (this.mData == null || this.mData.length < 1) {
            this.mData = this.mApi.getSignalDataValue(9995);
            StringBuilder sb = new StringBuilder();
            sb.append("configData() mData=");
            sb.append(this.mData != null ? Arrays.toString(this.mData) : "[]");
            Log.i(TAG, sb.toString());
        }
        return this.mData;
    }

    private int configValue(ICarConfig.Config config) {
        byte[] configData = configData();
        if (configData == null || config.byteIndex < 0 || config.byteIndex >= configData.length) {
            return -1;
        }
        return ((configData[config.byteIndex] & ICarDashBoard.BtInfo.STATUS_UNKNOW) & (((1 << config.bitSize) - 1) << config.startBit)) >> config.startBit;
    }

    private static int getConfigValue(ICarConfig.Config config) {
        return get().configValue(config);
    }

    private static byte[] getConfigData() {
        return get().configData();
    }

    private static boolean setConfigData(byte[] bArr) {
        return get().mApi.setSignalValue(9995, bArr);
    }
}
