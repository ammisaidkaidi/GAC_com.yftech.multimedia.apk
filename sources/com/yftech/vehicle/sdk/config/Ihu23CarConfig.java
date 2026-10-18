package com.yftech.vehicle.sdk.config;

import android.util.Log;
import com.yftech.vehicle.internal.BaseApiManager;
import com.yftech.vehicle.internal.adapter.ICarDashBoard;
import com.yftech.vehicle.internal.config.Ihu23ICarConfig;
import java.util.Arrays;

/* loaded from: /home/user/work/dex/classes4.dex */
public class Ihu23CarConfig implements Ihu23ICarConfig {
    private static final String TAG = "CarConfig";
    private static Ihu23CarConfig sMe;
    private BaseApiManager mApi = new BaseApiManager() { // from class: com.yftech.vehicle.sdk.config.Ihu23CarConfig.1
    };
    private byte[] mData;

    private Ihu23CarConfig() {
    }

    private static synchronized Ihu23CarConfig get() {
        Ihu23CarConfig ihu23CarConfig;
        synchronized (Ihu23CarConfig.class) {
            if (sMe != null) {
                ihu23CarConfig = sMe;
            } else {
                ihu23CarConfig = new Ihu23CarConfig();
                sMe = ihu23CarConfig;
            }
        }
        return ihu23CarConfig;
    }

    public static Ihu23ICarConfig.VehicleType getVehicleType() {
        return Ihu23ICarConfig.VehicleType.valueOf(getConfigValue(Ihu23ICarConfig.Config.VEHICLE_TYPE));
    }

    public static Ihu23ICarConfig.DriveType getDriveType() {
        return Ihu23ICarConfig.DriveType.valueOf(getConfigValue(Ihu23ICarConfig.Config.DRIVE_TYPE));
    }

    public static Ihu23ICarConfig.VehiclePlatform getVehiclePlatform() {
        return Ihu23ICarConfig.VehiclePlatform.valueOf(getConfigValue(Ihu23ICarConfig.Config.VEHICLE_PLATFORM));
    }

    public static boolean isACanPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.A_CAN) != 0;
    }

    public static boolean isBCanPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.B_CAN) != 0;
    }

    public static boolean isGpsPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.GPS) != 0;
    }

    public static boolean isAntennaPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.ANTENNA) != 0;
    }

    public static boolean isMicPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.MIC) != 0;
    }

    public static boolean isBcmPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.BCM) != 0;
    }

    public static boolean isHvacPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.HVAC) != 0;
    }

    public static boolean isIcmPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.ICM) != 0;
    }

    public static boolean isPasPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.PAS) != 0;
    }

    public static boolean isGwmPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.GWM) != 0;
    }

    public static boolean isFcpPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.FCP) != 0;
    }

    public static boolean isPcsPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.PCS) != 0;
    }

    public static boolean isTboxPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.TBOX) != 0;
    }

    public static boolean isVcuPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.VCU) != 0;
    }

    public static boolean isIbcmPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.IBCM) != 0;
    }

    public static boolean isFlSpeakerPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.FL_SPEAKER) != 0;
    }

    public static boolean isFrSpeakerPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.FR_SPEAKER) != 0;
    }

    public static boolean isRlSpeakerPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.RL_SPEAKER) != 0;
    }

    public static boolean isRrSpeakerPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.RR_SPEAKER) != 0;
    }

    public static boolean isSteeringWheelKeyPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.STEERING_WHEEL_KEY) != 0;
    }

    public static Ihu23ICarConfig.TboxConnectionMode getTboxConnectionMode() {
        return Ihu23ICarConfig.TboxConnectionMode.valueOf(getConfigValue(Ihu23ICarConfig.Config.TBOX_CONNECTION_MODE));
    }

    public static boolean isBCallSwitchPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.B_CALL_SWITCH) != 0;
    }

    public static boolean isECallSwitchPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.E_CALL_SWITCH) != 0;
    }

    public static boolean isCallBackPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.CALL_BACK) != 0;
    }

    public static boolean isRestartVehicleCommunicationModulePresent() {
        return getConfigValue(Ihu23ICarConfig.Config.RESTART_VEHICLE_COMMUNICATION_MODULE) != 0;
    }

    public static Ihu23ICarConfig.LoudspeakerNumber getLoudspeakerNumber() {
        return Ihu23ICarConfig.LoudspeakerNumber.valueOf(getConfigValue(Ihu23ICarConfig.Config.LOUDSPEAKER_NUMBER));
    }

    public static Ihu23ICarConfig.LoudspeakerSupplier getLoudspeakerSupplier() {
        return Ihu23ICarConfig.LoudspeakerSupplier.valueOf(getConfigValue(Ihu23ICarConfig.Config.LOUDSPEAKER_SUPPLIER));
    }

    public static boolean isExtAmplifiersPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.EXT_AMPLIFIERS) != 0;
    }

    public static boolean isAvasPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.AVAS) != 0;
    }

    public static boolean isAvasSwitchPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.AVAS_SWITCH) != 0;
    }

    public static boolean isStorageBoxAutomaticallyFlipDownPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.STORAGE_BOX_AUTOMATICALLY_FLIP_DOWN) != 0;
    }

    public static boolean isHiddenDoorHandlePresent() {
        return getConfigValue(Ihu23ICarConfig.Config.HIDDEN_DOOR_HANDLE) != 0;
    }

    public static boolean isWinterLongDistancePresent() {
        return getConfigValue(Ihu23ICarConfig.Config.WINTER_LONG_DISTANCE) != 0;
    }

    public static boolean isChargingInsulationPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.CHARGING_INSULATION) != 0;
    }

    public static boolean isIntelligentInsulationNotificationPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.INTELLIGENT_INSULATION_NOTIFICATION) != 0;
    }

    public static boolean isEnergyRecoveryModePresent() {
        return getConfigValue(Ihu23ICarConfig.Config.ENERGY_RECOVERY_MODE) != 0;
    }

    public static boolean isElectroDischargePresent() {
        return getConfigValue(Ihu23ICarConfig.Config.ELECTRO_DISCHARGE) != 0;
    }

    public static boolean isEcoPlusModePresent() {
        return getConfigValue(Ihu23ICarConfig.Config.ECO_PLUS_MODE) != 0;
    }

    public static boolean isEpedalModePresent() {
        return getConfigValue(Ihu23ICarConfig.Config.EPEDAL_MODE) != 0;
    }

    public static boolean isCreepModePresent() {
        return getConfigValue(Ihu23ICarConfig.Config.CREEP_MODE) != 0;
    }

    public static boolean isEnergyConsumptionPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.ENERGY_CONSUMPTION) != 0;
    }

    public static boolean isMonsterModeSwitchPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.MONSTER_MODE_SWITCH) != 0;
    }

    public static boolean isHealthChargeSettingPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.HEALTH_CHARGE_SETTING) != 0;
    }

    public static boolean isDrivingModePresent() {
        return getConfigValue(Ihu23ICarConfig.Config.DRIVING_MODE) != 0;
    }

    public static boolean isAutoModeOfFrsAndRecControlPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.AUTO_MODE_OF_FRS_AND_REC_CONTROL) != 0;
    }

    public static boolean isComfortCurvePresent() {
        return getConfigValue(Ihu23ICarConfig.Config.COMFORT_CURVE) != 0;
    }

    public static boolean isQualitySensorPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.QUALITY_SENSOR) != 0;
    }

    public static boolean isAutoDeforstPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.AUTO_DEFORST) != 0;
    }

    public static boolean isFanSpeedOfAutoModePresent() {
        return getConfigValue(Ihu23ICarConfig.Config.FAN_SPEED_OF_AUTO_MODE) != 0;
    }

    public static boolean isChargingThresholdPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.CHARGING_THRESHOLD) != 0;
    }

    public static boolean isHeatPumpAirConditioningPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.HEAT_PUMP_AIR_CONDITIONING) != 0;
    }

    public static Ihu23ICarConfig.AirConditioningZones getAirConditioningZones() {
        return Ihu23ICarConfig.AirConditioningZones.valueOf(getConfigValue(Ihu23ICarConfig.Config.AIR_CONDITIONING_ZONES));
    }

    public static Ihu23ICarConfig.RearDefrostAndRearviewMirrorHeating getRearDefrostAndRearviewMirrorHeating() {
        return Ihu23ICarConfig.RearDefrostAndRearviewMirrorHeating.valueOf(getConfigValue(Ihu23ICarConfig.Config.REAR_DEFROST_AND_REARVIEW_MIRROR_HEATING));
    }

    public static Ihu23ICarConfig.AirConditionType getAirConditionType() {
        return Ihu23ICarConfig.AirConditionType.valueOf(getConfigValue(Ihu23ICarConfig.Config.AIR_CONDITION_TYPE));
    }

    public static Ihu23ICarConfig.CameraNumber getCameraNumber() {
        return Ihu23ICarConfig.CameraNumber.valueOf(getConfigValue(Ihu23ICarConfig.Config.CAMERA_NUMBER));
    }

    public static Ihu23ICarConfig.RadarNumber getRadarNumber() {
        return Ihu23ICarConfig.RadarNumber.valueOf(getConfigValue(Ihu23ICarConfig.Config.RADAR_NUMBER));
    }

    public static Ihu23ICarConfig.StandardAndHdCameraConfiguration getStandardAndHdCameraConfiguration() {
        return Ihu23ICarConfig.StandardAndHdCameraConfiguration.valueOf(getConfigValue(Ihu23ICarConfig.Config.STANDARD_AND_HD_CAMERA_CONFIGURATION));
    }

    public static boolean isAdaptiveHighBeamPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.ADAPTIVE_HIGH_BEAM) != 0;
    }

    public static boolean isControlHighBeamAssistantPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.CONTROL_HIGH_BEAM_ASSISTANT) != 0;
    }

    public static boolean isCloseWindowWhileLockPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.CLOSE_WINDOW_WHILE_LOCK) != 0;
    }

    public static boolean isDomeLightInDoorGearPositionPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.DOME_LIGHT_IN_DOOR_GEAR_POSITION) != 0;
    }

    public static boolean isControlSmartWelcomeLightPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.CONTROL_SMART_WELCOME_LIGHT) != 0;
    }

    public static boolean isKeyIdentificationPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.KEY_IDENTIFICATION) != 0;
    }

    public static boolean isSmartTailgatePresent() {
        return getConfigValue(Ihu23ICarConfig.Config.SMART_TAILGATE) != 0;
    }

    public static boolean isPlgmfunccfgPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.PLGMFUNCCFG) != 0;
    }

    public static boolean isNfcPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.NFC) != 0;
    }

    public static Ihu23ICarConfig.WalAndApu getWalAndApu() {
        return Ihu23ICarConfig.WalAndApu.valueOf(getConfigValue(Ihu23ICarConfig.Config.WAL_AND_APU));
    }

    public static boolean isRemoteUnlockPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.REMOTE_UNLOCK) != 0;
    }

    public static boolean isSpeedLockPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.SPEED_LOCK) != 0;
    }

    public static boolean isAutoUnlockingPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.AUTO_UNLOCKING) != 0;
    }

    public static boolean isExteriorRearViewMirrorAutoFoldingAndUnfoldingPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.EXTERIOR_REAR_VIEW_MIRROR_AUTO_FOLDING_AND_UNFOLDING) != 0;
    }

    public static boolean isExteriorRearviewMirrorDipPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.EXTERIOR_REARVIEW_MIRROR_DIP) != 0;
    }

    public static boolean isRearviewMirrorAdjustmentPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.REARVIEW_MIRROR_ADJUSTMENT) != 0;
    }

    public static boolean isSteeringWheelSteeringHandForcePresent() {
        return getConfigValue(Ihu23ICarConfig.Config.STEERING_WHEEL_STEERING_HAND_FORCE) != 0;
    }

    public static boolean isEtcSettingPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.ETC_SETTING) != 0;
    }

    public static boolean isWiperMaintanencePresent() {
        return getConfigValue(Ihu23ICarConfig.Config.WIPER_MAINTANENCE) != 0;
    }

    public static boolean isAutoWiperPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.AUTO_WIPER) != 0;
    }

    public static boolean isLockAndUnlockWhistleNotePresent() {
        return getConfigValue(Ihu23ICarConfig.Config.LOCK_AND_UNLOCK_WHISTLE_NOTE) != 0;
    }

    public static boolean isLightTurnedOffDelayPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.LIGHT_TURNED_OFF_DELAY) != 0;
    }

    public static boolean isAmbienceLightsControlPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.AMBIENCE_LIGHTS_CONTROL) != 0;
    }

    public static boolean isIalPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.IAL) != 0;
    }

    public static boolean isRainstormModePresent() {
        return getConfigValue(Ihu23ICarConfig.Config.RAINSTORM_MODE) != 0;
    }

    public static boolean isClusterVolumeSettingPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.CLUSTER_VOLUME_SETTING) != 0;
    }

    public static boolean isClusterLanguageSettingPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.CLUSTER_LANGUAGE_SETTING) != 0;
    }

    public static boolean isClusterMileageResetPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.CLUSTER_MILEAGE_RESET) != 0;
    }

    public static boolean isClusterSpeedUnitPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.CLUSTER_SPEED_UNIT) != 0;
    }

    public static boolean isClusterTemperatureUnitPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.CLUSTER_TEMPERATURE_UNIT) != 0;
    }

    public static boolean isClusterPressureUnitPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.CLUSTER_PRESSURE_UNIT) != 0;
    }

    public static boolean isRearSeatBeltNotificationPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.REAR_SEAT_BELT_NOTIFICATION) != 0;
    }

    public static boolean isClusterDefaultSettingPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.CLUSTER_DEFAULT_SETTING) != 0;
    }

    public static boolean isClusterFuelConsumptionUnitPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.CLUSTER_FUEL_CONSUMPTION_UNIT) != 0;
    }

    public static boolean isClusterBackLightPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.CLUSTER_BACK_LIGHT) != 0;
    }

    public static boolean isTimeInClusterPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.TIME_IN_CLUSTER) != 0;
    }

    public static boolean isChargingModePresent() {
        return getConfigValue(Ihu23ICarConfig.Config.CHARGING_MODE) != 0;
    }

    public static boolean isLaneAuxiliarySwitchPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.LANE_AUXILIARY_SWITCH) != 0;
    }

    public static boolean isLaneAssistPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.LANE_ASSIST) != 0;
    }

    public static boolean isAutoEmergencyBrakingBrakingPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.AUTO_EMERGENCY_BRAKING_BRAKING) != 0;
    }

    public static boolean isFrontCollisionWarningPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.FRONT_COLLISION_WARNING) != 0;
    }

    public static boolean isIfcCruisemodePresent() {
        return getConfigValue(Ihu23ICarConfig.Config.IFC_CRUISEMODE) != 0;
    }

    public static boolean isBsdPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.BSD) != 0;
    }

    public static boolean isDoorOpenWarningPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.DOOR_OPEN_WARNING) != 0;
    }

    public static boolean isOverspeedWarningPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.OVERSPEED_WARNING) != 0;
    }

    public static boolean isSpeedLimtedSignRecognitionPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.SPEED_LIMTED_SIGN_RECOGNITION) != 0;
    }

    public static boolean isSteeringModePresent() {
        return getConfigValue(Ihu23ICarConfig.Config.STEERING_MODE) != 0;
    }

    public static boolean isLcaCardPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.LCA_CARD) != 0;
    }

    public static Ihu23ICarConfig.LaneChangeAssist getLaneChangeAssist() {
        return Ihu23ICarConfig.LaneChangeAssist.valueOf(getConfigValue(Ihu23ICarConfig.Config.LANE_CHANGE_ASSIST));
    }

    public static boolean isDriverStateOfAlertPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.DRIVER_STATE_OF_ALERT) != 0;
    }

    public static boolean isEmergencySteeringModePresent() {
        return getConfigValue(Ihu23ICarConfig.Config.EMERGENCY_STEERING_MODE) != 0;
    }

    public static boolean isRaebPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.RAEB) != 0;
    }

    public static boolean isAlertModePresent() {
        return getConfigValue(Ihu23ICarConfig.Config.ALERT_MODE) != 0;
    }

    public static boolean isEmergencyLaneKeepingAssistPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.EMERGENCY_LANE_KEEPING_ASSIST) != 0;
    }

    public static boolean isRearCrossTrafficAlertPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.REAR_CROSS_TRAFFIC_ALERT) != 0;
    }

    public static boolean isRearCrossTrafficAlertModePresent() {
        return getConfigValue(Ihu23ICarConfig.Config.REAR_CROSS_TRAFFIC_ALERT_MODE) != 0;
    }

    public static boolean isRearApproachingWarningPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.REAR_APPROACHING_WARNING) != 0;
    }

    public static boolean isFrontCrossTrafficAlertPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.FRONT_CROSS_TRAFFIC_ALERT) != 0;
    }

    public static boolean isFrontCrossTrafficAlertModePresent() {
        return getConfigValue(Ihu23ICarConfig.Config.FRONT_CROSS_TRAFFIC_ALERT_MODE) != 0;
    }

    public static boolean isApaVoicePromptButtonPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.APA_VOICE_PROMPT_BUTTON) != 0;
    }

    public static boolean isForwardCollisionWarningDistancePresent() {
        return getConfigValue(Ihu23ICarConfig.Config.FORWARD_COLLISION_WARNING_DISTANCE) != 0;
    }

    public static boolean isIndicatedLaneChangePresent() {
        return getConfigValue(Ihu23ICarConfig.Config.INDICATED_LANE_CHANGE) != 0;
    }

    public static boolean isOverspeedAlarmOfTsrPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.OVERSPEED_ALARM_OF_TSR) != 0;
    }

    public static boolean isIntelligentSpeedLimitControlPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.INTELLIGENT_SPEED_LIMIT_CONTROL) != 0;
    }

    public static boolean isDriverAssistanceWarningPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.DRIVER_ASSISTANCE_WARNING) != 0;
    }

    public static int getDistractedAlarmIntervalTime() {
        return getConfigValue(Ihu23ICarConfig.Config.DISTRACTED_ALARM_INTERVAL_TIME);
    }

    public static int getTiredAlarmIntervalTime() {
        return getConfigValue(Ihu23ICarConfig.Config.TIRED_ALARM_INTERVAL_TIME);
    }

    public static int getApaAlarmDelayedTime() {
        return getConfigValue(Ihu23ICarConfig.Config.APA_ALARM_DELAYED_TIME);
    }

    public static boolean isEspOffSwitchPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.ESP_OFF_SWITCH) != 0;
    }

    public static boolean isHdcSwitchPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.HDC_SWITCH) != 0;
    }

    public static boolean isEboosterModePresent() {
        return getConfigValue(Ihu23ICarConfig.Config.EBOOSTER_MODE) != 0;
    }

    public static Ihu23ICarConfig.LeftRightHandDriveVehicles getLeftRightHandDriveVehicles() {
        return Ihu23ICarConfig.LeftRightHandDriveVehicles.valueOf(getConfigValue(Ihu23ICarConfig.Config.LEFT_RIGHT_HAND_DRIVE_VEHICLES));
    }

    public static boolean isUltravioletRayPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.ULTRAVIOLET_RAY) != 0;
    }

    public static boolean isUnlockVentilationPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.UNLOCK_VENTILATION) != 0;
    }

    public static boolean isEvaporatorSelfDryingPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.EVAPORATOR_SELF_DRYING) != 0;
    }

    public static boolean isAirConditioningBlindExercisePresent() {
        return getConfigValue(Ihu23ICarConfig.Config.AIR_CONDITIONING_BLIND_EXERCISE) != 0;
    }

    public static boolean isAirConditioningQuickStartPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.AIR_CONDITIONING_QUICK_START) != 0;
    }

    public static boolean isHospitalityLampSignalsPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.HOSPITALITY_LAMP_SIGNALS) != 0;
    }

    public static boolean isTemporaryParkingLampSignalsPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.TEMPORARY_PARKING_LAMP_SIGNALS) != 0;
    }

    public static boolean isLaneChangeDriverConfirmationPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.LANE_CHANGE_DRIVER_CONFIRMATION) != 0;
    }

    public static boolean isLaneChangeStylePresent() {
        return getConfigValue(Ihu23ICarConfig.Config.LANE_CHANGE_STYLE) != 0;
    }

    public static boolean isIndicatedLaneChangingPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.INDICATED_LANE_CHANGING) != 0;
    }

    public static boolean isFrontDistanceDisplayPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.FRONT_DISTANCE_DISPLAY) != 0;
    }

    public static boolean isIntelligentCollisionAvoidancePresent() {
        return getConfigValue(Ihu23ICarConfig.Config.INTELLIGENT_COLLISION_AVOIDANCE) != 0;
    }

    public static boolean isAutoholdPresent() {
        return getConfigValue(Ihu23ICarConfig.Config.AUTOHOLD) != 0;
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

    private int configValue(Ihu23ICarConfig.Config config) {
        byte[] configData = configData();
        if (configData == null || config.byteIndex < 0 || config.byteIndex >= configData.length) {
            return -1;
        }
        return ((configData[config.byteIndex] & ICarDashBoard.BtInfo.STATUS_UNKNOW) & (((1 << config.bitSize) - 1) << config.startBit)) >> config.startBit;
    }

    private static int getConfigValue(Ihu23ICarConfig.Config config) {
        return get().configValue(config);
    }

    private static byte[] getConfigData() {
        return get().configData();
    }

    private static boolean setConfigData(byte[] bArr) {
        return get().mApi.setSignalValue(9995, bArr);
    }
}
