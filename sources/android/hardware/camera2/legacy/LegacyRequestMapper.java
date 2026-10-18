package android.hardware.camera2.legacy;

import android.graphics.Rect;
import android.hardware.Camera;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.legacy.ParameterUtils;
import android.hardware.camera2.params.MeteringRectangle;
import android.hardware.camera2.utils.ListUtils;
import android.hardware.camera2.utils.ParamsUtils;
import android.location.Location;
import android.util.Log;
import android.util.Range;
import android.util.Size;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* loaded from: /home/user/work/dex/classes.dex */
public class LegacyRequestMapper {
    private static final boolean DEBUG = false;
    private static final byte DEFAULT_JPEG_QUALITY = 85;
    private static final String TAG = "LegacyRequestMapper";

    private static String convertAeAntiBandingModeToLegacy(int i) {
        switch (i) {
            case 0:
                return "off";
            case 1:
                return Camera.Parameters.ANTIBANDING_50HZ;
            case 2:
                return Camera.Parameters.ANTIBANDING_60HZ;
            case 3:
                return "auto";
            default:
                return null;
        }
    }

    public static void convertRequestMetadata(LegacyRequest legacyRequest) {
        String str;
        String str2;
        CameraCharacteristics cameraCharacteristics = legacyRequest.characteristics;
        CaptureRequest captureRequest = legacyRequest.captureRequest;
        Size size = legacyRequest.previewSize;
        Camera.Parameters parameters = legacyRequest.parameters;
        Rect rect = (Rect) cameraCharacteristics.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE);
        ParameterUtils.ZoomData convertScalerCropRegion = ParameterUtils.convertScalerCropRegion(rect, (Rect) captureRequest.get(CaptureRequest.SCALER_CROP_REGION), size, parameters);
        if (parameters.isZoomSupported()) {
            parameters.setZoom(convertScalerCropRegion.zoomIndex);
        }
        int intValue = ((Integer) ParamsUtils.getOrDefault(captureRequest, CaptureRequest.COLOR_CORRECTION_ABERRATION_MODE, 1)).intValue();
        if (intValue != 1 && intValue != 2) {
            Log.w(TAG, "convertRequestToMetadata - Ignoring unsupported colorCorrection.aberrationMode = " + intValue);
        }
        Integer num = (Integer) captureRequest.get(CaptureRequest.CONTROL_AE_ANTIBANDING_MODE);
        if (num != null) {
            str = convertAeAntiBandingModeToLegacy(num.intValue());
        } else {
            str = (String) ListUtils.listSelectFirstFrom(parameters.getSupportedAntibanding(), new String[]{"auto", "off", Camera.Parameters.ANTIBANDING_50HZ, Camera.Parameters.ANTIBANDING_60HZ});
        }
        if (str != null) {
            parameters.setAntibanding(str);
        }
        MeteringRectangle[] meteringRectangleArr = (MeteringRectangle[]) captureRequest.get(CaptureRequest.CONTROL_AE_REGIONS);
        if (captureRequest.get(CaptureRequest.CONTROL_AWB_REGIONS) != null) {
            Log.w(TAG, "convertRequestMetadata - control.awbRegions setting is not supported, ignoring value");
        }
        int maxNumMeteringAreas = parameters.getMaxNumMeteringAreas();
        List<Camera.Area> convertMeteringRegionsToLegacy = convertMeteringRegionsToLegacy(rect, convertScalerCropRegion, meteringRectangleArr, maxNumMeteringAreas, "AE");
        if (maxNumMeteringAreas > 0) {
            parameters.setMeteringAreas(convertMeteringRegionsToLegacy);
        }
        MeteringRectangle[] meteringRectangleArr2 = (MeteringRectangle[]) captureRequest.get(CaptureRequest.CONTROL_AF_REGIONS);
        int maxNumFocusAreas = parameters.getMaxNumFocusAreas();
        List<Camera.Area> convertMeteringRegionsToLegacy2 = convertMeteringRegionsToLegacy(rect, convertScalerCropRegion, meteringRectangleArr2, maxNumFocusAreas, "AF");
        if (maxNumFocusAreas > 0) {
            parameters.setFocusAreas(convertMeteringRegionsToLegacy2);
        }
        Range range = (Range) captureRequest.get(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE);
        if (range != null) {
            int[] convertAeFpsRangeToLegacy = convertAeFpsRangeToLegacy(range);
            int[] iArr = null;
            Iterator<int[]> it = parameters.getSupportedPreviewFpsRange().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                int[] next = it.next();
                int floor = ((int) Math.floor(next[0] / 1000.0d)) * 1000;
                int ceil = ((int) Math.ceil(next[1] / 1000.0d)) * 1000;
                if (convertAeFpsRangeToLegacy[0] == floor && convertAeFpsRangeToLegacy[1] == ceil) {
                    iArr = next;
                    break;
                }
            }
            if (iArr != null) {
                parameters.setPreviewFpsRange(iArr[0], iArr[1]);
            } else {
                Log.w(TAG, "Unsupported FPS range set [" + convertAeFpsRangeToLegacy[0] + "," + convertAeFpsRangeToLegacy[1] + "]");
            }
        }
        Range range2 = (Range) cameraCharacteristics.get(CameraCharacteristics.CONTROL_AE_COMPENSATION_RANGE);
        int intValue2 = ((Integer) ParamsUtils.getOrDefault(captureRequest, CaptureRequest.CONTROL_AE_EXPOSURE_COMPENSATION, 0)).intValue();
        if (!range2.contains((Range) Integer.valueOf(intValue2))) {
            Log.w(TAG, "convertRequestMetadata - control.aeExposureCompensation is out of range, ignoring value");
            intValue2 = 0;
        }
        parameters.setExposureCompensation(intValue2);
        Boolean bool = (Boolean) getIfSupported(captureRequest, CaptureRequest.CONTROL_AE_LOCK, false, parameters.isAutoExposureLockSupported(), false);
        if (bool != null) {
            parameters.setAutoExposureLock(bool.booleanValue());
        }
        mapAeAndFlashMode(captureRequest, parameters);
        String convertAfModeToLegacy = LegacyMetadataMapper.convertAfModeToLegacy(((Integer) ParamsUtils.getOrDefault(captureRequest, CaptureRequest.CONTROL_AF_MODE, 0)).intValue(), parameters.getSupportedFocusModes());
        if (convertAfModeToLegacy != null) {
            parameters.setFocusMode(convertAfModeToLegacy);
        }
        Integer num2 = (Integer) getIfSupported(captureRequest, CaptureRequest.CONTROL_AWB_MODE, 1, parameters.getSupportedWhiteBalance() != null, 1);
        if (num2 != null) {
            parameters.setWhiteBalance(convertAwbModeToLegacy(num2.intValue()));
        }
        Boolean bool2 = (Boolean) getIfSupported(captureRequest, CaptureRequest.CONTROL_AWB_LOCK, false, parameters.isAutoWhiteBalanceLockSupported(), false);
        if (bool2 != null) {
            parameters.setAutoWhiteBalanceLock(bool2.booleanValue());
        }
        int filterSupportedCaptureIntent = filterSupportedCaptureIntent(((Integer) ParamsUtils.getOrDefault(captureRequest, CaptureRequest.CONTROL_CAPTURE_INTENT, 1)).intValue());
        parameters.setRecordingHint(filterSupportedCaptureIntent == 3 || filterSupportedCaptureIntent == 4);
        Integer num3 = (Integer) getIfSupported(captureRequest, CaptureRequest.CONTROL_VIDEO_STABILIZATION_MODE, 0, parameters.isVideoStabilizationSupported(), 0);
        if (num3 != null) {
            parameters.setVideoStabilization(num3.intValue() == 1);
        }
        boolean listContains = ListUtils.listContains(parameters.getSupportedFocusModes(), Camera.Parameters.FOCUS_MODE_INFINITY);
        Float f = (Float) getIfSupported(captureRequest, CaptureRequest.LENS_FOCUS_DISTANCE, Float.valueOf(0.0f), listContains, Float.valueOf(0.0f));
        if (f == null || f.floatValue() != 0.0f) {
            Log.w(TAG, "convertRequestToMetadata - Ignoring android.lens.focusDistance " + listContains + ", only 0.0f is supported");
        }
        if (parameters.getSupportedSceneModes() != null) {
            int intValue3 = ((Integer) ParamsUtils.getOrDefault(captureRequest, CaptureRequest.CONTROL_MODE, 1)).intValue();
            switch (intValue3) {
                case 1:
                    str2 = "auto";
                    break;
                case 2:
                    int intValue4 = ((Integer) ParamsUtils.getOrDefault(captureRequest, CaptureRequest.CONTROL_SCENE_MODE, 0)).intValue();
                    str2 = LegacyMetadataMapper.convertSceneModeToLegacy(intValue4);
                    if (str2 == null) {
                        str2 = "auto";
                        Log.w(TAG, "Skipping unknown requested scene mode: " + intValue4);
                        break;
                    }
                    break;
                default:
                    Log.w(TAG, "Control mode " + intValue3 + " is unsupported, defaulting to AUTO");
                    str2 = "auto";
                    break;
            }
            parameters.setSceneMode(str2);
        }
        if (parameters.getSupportedColorEffects() != null) {
            int intValue5 = ((Integer) ParamsUtils.getOrDefault(captureRequest, CaptureRequest.CONTROL_EFFECT_MODE, 0)).intValue();
            String convertEffectModeToLegacy = LegacyMetadataMapper.convertEffectModeToLegacy(intValue5);
            if (convertEffectModeToLegacy != null) {
                parameters.setColorEffect(convertEffectModeToLegacy);
            } else {
                parameters.setColorEffect("none");
                Log.w(TAG, "Skipping unknown requested effect mode: " + intValue5);
            }
        }
        int intValue6 = ((Integer) ParamsUtils.getOrDefault(captureRequest, CaptureRequest.SENSOR_TEST_PATTERN_MODE, 0)).intValue();
        if (intValue6 != 0) {
            Log.w(TAG, "convertRequestToMetadata - ignoring sensor.testPatternMode " + intValue6 + "; only OFF is supported");
        }
        Location location = (Location) captureRequest.get(CaptureRequest.JPEG_GPS_LOCATION);
        if (location != null) {
            if (checkForCompleteGpsData(location)) {
                parameters.setGpsAltitude(location.getAltitude());
                parameters.setGpsLatitude(location.getLatitude());
                parameters.setGpsLongitude(location.getLongitude());
                parameters.setGpsProcessingMethod(location.getProvider().toUpperCase());
                parameters.setGpsTimestamp(location.getTime());
            } else {
                Log.w(TAG, "Incomplete GPS parameters provided in location " + location);
            }
        } else {
            parameters.removeGpsData();
        }
        Integer num4 = (Integer) captureRequest.get(CaptureRequest.JPEG_ORIENTATION);
        parameters.setRotation(((Integer) ParamsUtils.getOrDefault(captureRequest, CaptureRequest.JPEG_ORIENTATION, Integer.valueOf(num4 == null ? 0 : num4.intValue()))).intValue());
        parameters.setJpegQuality(((Byte) ParamsUtils.getOrDefault(captureRequest, CaptureRequest.JPEG_QUALITY, Byte.valueOf(DEFAULT_JPEG_QUALITY))).byteValue() & 255);
        parameters.setJpegThumbnailQuality(((Byte) ParamsUtils.getOrDefault(captureRequest, CaptureRequest.JPEG_THUMBNAIL_QUALITY, Byte.valueOf(DEFAULT_JPEG_QUALITY))).byteValue() & 255);
        List<Camera.Size> supportedJpegThumbnailSizes = parameters.getSupportedJpegThumbnailSizes();
        if (supportedJpegThumbnailSizes != null && supportedJpegThumbnailSizes.size() > 0) {
            Size size2 = (Size) captureRequest.get(CaptureRequest.JPEG_THUMBNAIL_SIZE);
            boolean z = (size2 == null || ParameterUtils.containsSize(supportedJpegThumbnailSizes, size2.getWidth(), size2.getHeight())) ? false : true;
            if (z) {
                Log.w(TAG, "Invalid JPEG thumbnail size set " + size2 + ", skipping thumbnail...");
            }
            if (size2 == null || z) {
                parameters.setJpegThumbnailSize(0, 0);
            } else {
                parameters.setJpegThumbnailSize(size2.getWidth(), size2.getHeight());
            }
        }
        int intValue7 = ((Integer) ParamsUtils.getOrDefault(captureRequest, CaptureRequest.NOISE_REDUCTION_MODE, 1)).intValue();
        if (intValue7 == 1 || intValue7 == 2) {
            return;
        }
        Log.w(TAG, "convertRequestToMetadata - Ignoring unsupported noiseReduction.mode = " + intValue7);
    }

    private static boolean checkForCompleteGpsData(Location location) {
        return (location == null || location.getProvider() == null || location.getTime() == 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0001. Please report as an issue. */
    public static int filterSupportedCaptureIntent(int i) {
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
                return i;
            case 5:
            case 6:
                Log.w(TAG, "Unsupported control.captureIntent value 1; default to PREVIEW");
            default:
                Log.w(TAG, "Unknown control.captureIntent value 1; default to PREVIEW");
                return 1;
        }
    }

    private static List<Camera.Area> convertMeteringRegionsToLegacy(Rect rect, ParameterUtils.ZoomData zoomData, MeteringRectangle[] meteringRectangleArr, int i, String str) {
        if (meteringRectangleArr == null || i <= 0) {
            if (i > 0) {
                return Arrays.asList(ParameterUtils.CAMERA_AREA_DEFAULT);
            }
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (MeteringRectangle meteringRectangle : meteringRectangleArr) {
            if (meteringRectangle.getMeteringWeight() != 0) {
                arrayList.add(meteringRectangle);
            }
        }
        if (arrayList.size() == 0) {
            Log.w(TAG, "Only received metering rectangles with weight 0.");
            return Arrays.asList(ParameterUtils.CAMERA_AREA_DEFAULT);
        }
        int min = Math.min(i, arrayList.size());
        ArrayList arrayList2 = new ArrayList(min);
        for (int i2 = 0; i2 < min; i2++) {
            arrayList2.add(ParameterUtils.convertMeteringRectangleToLegacy(rect, (MeteringRectangle) arrayList.get(i2), zoomData).meteringArea);
        }
        if (i < arrayList.size()) {
            Log.w(TAG, "convertMeteringRegionsToLegacy - Too many requested " + str + " regions, ignoring all beyond the first " + i);
        }
        return arrayList2;
    }

    private static void mapAeAndFlashMode(CaptureRequest captureRequest, Camera.Parameters parameters) {
        int intValue = ((Integer) ParamsUtils.getOrDefault(captureRequest, CaptureRequest.FLASH_MODE, 0)).intValue();
        int intValue2 = ((Integer) ParamsUtils.getOrDefault(captureRequest, CaptureRequest.CONTROL_AE_MODE, 1)).intValue();
        List<String> supportedFlashModes = parameters.getSupportedFlashModes();
        String str = ListUtils.listContains(supportedFlashModes, "off") ? "off" : null;
        if (intValue2 == 1) {
            if (intValue == 2) {
                if (ListUtils.listContains(supportedFlashModes, Camera.Parameters.FLASH_MODE_TORCH)) {
                    str = Camera.Parameters.FLASH_MODE_TORCH;
                } else {
                    Log.w(TAG, "mapAeAndFlashMode - Ignore flash.mode == TORCH;camera does not support it");
                }
            } else if (intValue == 1) {
                if (ListUtils.listContains(supportedFlashModes, Camera.Parameters.FLASH_MODE_ON)) {
                    str = Camera.Parameters.FLASH_MODE_ON;
                } else {
                    Log.w(TAG, "mapAeAndFlashMode - Ignore flash.mode == SINGLE;camera does not support it");
                }
            }
        } else if (intValue2 == 3) {
            if (ListUtils.listContains(supportedFlashModes, Camera.Parameters.FLASH_MODE_ON)) {
                str = Camera.Parameters.FLASH_MODE_ON;
            } else {
                Log.w(TAG, "mapAeAndFlashMode - Ignore control.aeMode == ON_ALWAYS_FLASH;camera does not support it");
            }
        } else if (intValue2 == 2) {
            if (ListUtils.listContains(supportedFlashModes, "auto")) {
                str = "auto";
            } else {
                Log.w(TAG, "mapAeAndFlashMode - Ignore control.aeMode == ON_AUTO_FLASH;camera does not support it");
            }
        } else if (intValue2 == 4) {
            if (ListUtils.listContains(supportedFlashModes, Camera.Parameters.FLASH_MODE_RED_EYE)) {
                str = Camera.Parameters.FLASH_MODE_RED_EYE;
            } else {
                Log.w(TAG, "mapAeAndFlashMode - Ignore control.aeMode == ON_AUTO_FLASH_REDEYE;camera does not support it");
            }
        }
        if (str != null) {
            parameters.setFlashMode(str);
        }
    }

    private static int[] convertAeFpsRangeToLegacy(Range<Integer> range) {
        return new int[]{range.getLower().intValue() * 1000, range.getUpper().intValue() * 1000};
    }

    private static String convertAwbModeToLegacy(int i) {
        switch (i) {
            case 1:
                return "auto";
            case 2:
                return Camera.Parameters.WHITE_BALANCE_INCANDESCENT;
            case 3:
                return Camera.Parameters.WHITE_BALANCE_FLUORESCENT;
            case 4:
                return Camera.Parameters.WHITE_BALANCE_WARM_FLUORESCENT;
            case 5:
                return Camera.Parameters.WHITE_BALANCE_DAYLIGHT;
            case 6:
                return Camera.Parameters.WHITE_BALANCE_CLOUDY_DAYLIGHT;
            case 7:
                return Camera.Parameters.WHITE_BALANCE_TWILIGHT;
            case 8:
                return Camera.Parameters.WHITE_BALANCE_SHADE;
            default:
                Log.w(TAG, "convertAwbModeToLegacy - unrecognized control.awbMode" + i);
                return "auto";
        }
    }

    private static <T> T getIfSupported(CaptureRequest captureRequest, CaptureRequest.Key<T> key, T t, boolean z, T t2) {
        T t3 = (T) ParamsUtils.getOrDefault(captureRequest, key, t);
        if (z) {
            return t3;
        }
        if (Objects.equals(t3, t2)) {
            return null;
        }
        Log.w(TAG, key.getName() + " is not supported; ignoring requested value " + t3);
        return null;
    }
}
