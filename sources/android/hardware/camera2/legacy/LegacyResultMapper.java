package android.hardware.camera2.legacy;

import android.graphics.Rect;
import android.hardware.Camera;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.impl.CameraMetadataNative;
import android.hardware.camera2.legacy.ParameterUtils;
import android.hardware.camera2.params.MeteringRectangle;
import android.hardware.camera2.utils.ParamsUtils;
import android.location.Location;
import android.util.Log;
import android.util.Size;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class LegacyResultMapper {
    private static final boolean DEBUG = false;
    private static final String TAG = "LegacyResultMapper";
    private LegacyRequest mCachedRequest = null;
    private CameraMetadataNative mCachedResult = null;

    public CameraMetadataNative cachedConvertResultMetadata(LegacyRequest legacyRequest, long j) {
        CameraMetadataNative cameraMetadataNative;
        if (this.mCachedRequest != null && legacyRequest.parameters.same(this.mCachedRequest.parameters) && legacyRequest.captureRequest.equals((Object) this.mCachedRequest.captureRequest)) {
            cameraMetadataNative = new CameraMetadataNative(this.mCachedResult);
        } else {
            CameraMetadataNative convertResultMetadata = convertResultMetadata(legacyRequest);
            this.mCachedRequest = legacyRequest;
            this.mCachedResult = new CameraMetadataNative(convertResultMetadata);
            cameraMetadataNative = convertResultMetadata;
        }
        cameraMetadataNative.set((CaptureResult.Key<CaptureResult.Key<Long>>) CaptureResult.SENSOR_TIMESTAMP, (CaptureResult.Key<Long>) Long.valueOf(j));
        return cameraMetadataNative;
    }

    private static CameraMetadataNative convertResultMetadata(LegacyRequest legacyRequest) {
        CameraCharacteristics cameraCharacteristics = legacyRequest.characteristics;
        CaptureRequest captureRequest = legacyRequest.captureRequest;
        Size size = legacyRequest.previewSize;
        Camera.Parameters parameters = legacyRequest.parameters;
        CameraMetadataNative cameraMetadataNative = new CameraMetadataNative();
        Rect rect = (Rect) cameraCharacteristics.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE);
        ParameterUtils.ZoomData convertScalerCropRegion = ParameterUtils.convertScalerCropRegion(rect, (Rect) captureRequest.get(CaptureRequest.SCALER_CROP_REGION), size, parameters);
        cameraMetadataNative.set((CaptureResult.Key<CaptureResult.Key<Integer>>) CaptureResult.COLOR_CORRECTION_ABERRATION_MODE, (CaptureResult.Key<Integer>) captureRequest.get(CaptureRequest.COLOR_CORRECTION_ABERRATION_MODE));
        mapAe(cameraMetadataNative, cameraCharacteristics, captureRequest, rect, convertScalerCropRegion, parameters);
        mapAf(cameraMetadataNative, rect, convertScalerCropRegion, parameters);
        mapAwb(cameraMetadataNative, parameters);
        cameraMetadataNative.set((CaptureResult.Key<CaptureResult.Key<Integer>>) CaptureResult.CONTROL_CAPTURE_INTENT, (CaptureResult.Key<Integer>) Integer.valueOf(LegacyRequestMapper.filterSupportedCaptureIntent(((Integer) ParamsUtils.getOrDefault(captureRequest, CaptureRequest.CONTROL_CAPTURE_INTENT, 1)).intValue())));
        if (((Integer) ParamsUtils.getOrDefault(captureRequest, CaptureRequest.CONTROL_MODE, 1)).intValue() == 2) {
            cameraMetadataNative.set((CaptureResult.Key<CaptureResult.Key<Integer>>) CaptureResult.CONTROL_MODE, (CaptureResult.Key<Integer>) 2);
        } else {
            cameraMetadataNative.set((CaptureResult.Key<CaptureResult.Key<Integer>>) CaptureResult.CONTROL_MODE, (CaptureResult.Key<Integer>) 1);
        }
        String sceneMode = parameters.getSceneMode();
        int convertSceneModeFromLegacy = LegacyMetadataMapper.convertSceneModeFromLegacy(sceneMode);
        if (convertSceneModeFromLegacy != -1) {
            cameraMetadataNative.set((CaptureResult.Key<CaptureResult.Key<Integer>>) CaptureResult.CONTROL_SCENE_MODE, (CaptureResult.Key<Integer>) Integer.valueOf(convertSceneModeFromLegacy));
        } else {
            Log.w(TAG, "Unknown scene mode " + sceneMode + " returned by camera HAL, setting to disabled.");
            cameraMetadataNative.set((CaptureResult.Key<CaptureResult.Key<Integer>>) CaptureResult.CONTROL_SCENE_MODE, (CaptureResult.Key<Integer>) 0);
        }
        String colorEffect = parameters.getColorEffect();
        int convertEffectModeFromLegacy = LegacyMetadataMapper.convertEffectModeFromLegacy(colorEffect);
        if (convertEffectModeFromLegacy != -1) {
            cameraMetadataNative.set((CaptureResult.Key<CaptureResult.Key<Integer>>) CaptureResult.CONTROL_EFFECT_MODE, (CaptureResult.Key<Integer>) Integer.valueOf(convertEffectModeFromLegacy));
        } else {
            Log.w(TAG, "Unknown effect mode " + colorEffect + " returned by camera HAL, setting to off.");
            cameraMetadataNative.set((CaptureResult.Key<CaptureResult.Key<Integer>>) CaptureResult.CONTROL_EFFECT_MODE, (CaptureResult.Key<Integer>) 0);
        }
        cameraMetadataNative.set((CaptureResult.Key<CaptureResult.Key<Integer>>) CaptureResult.CONTROL_VIDEO_STABILIZATION_MODE, (CaptureResult.Key<Integer>) Integer.valueOf((parameters.isVideoStabilizationSupported() && parameters.getVideoStabilization()) ? 1 : 0));
        if (Camera.Parameters.FOCUS_MODE_INFINITY.equals(parameters.getFocusMode())) {
            cameraMetadataNative.set((CaptureResult.Key<CaptureResult.Key<Float>>) CaptureResult.LENS_FOCUS_DISTANCE, (CaptureResult.Key<Float>) Float.valueOf(0.0f));
        }
        cameraMetadataNative.set((CaptureResult.Key<CaptureResult.Key<Float>>) CaptureResult.LENS_FOCAL_LENGTH, (CaptureResult.Key<Float>) Float.valueOf(parameters.getFocalLength()));
        cameraMetadataNative.set((CaptureResult.Key<CaptureResult.Key<Byte>>) CaptureResult.REQUEST_PIPELINE_DEPTH, (CaptureResult.Key<Byte>) cameraCharacteristics.get(CameraCharacteristics.REQUEST_PIPELINE_MAX_DEPTH));
        mapScaler(cameraMetadataNative, convertScalerCropRegion, parameters);
        cameraMetadataNative.set((CaptureResult.Key<CaptureResult.Key<Integer>>) CaptureResult.SENSOR_TEST_PATTERN_MODE, (CaptureResult.Key<Integer>) 0);
        cameraMetadataNative.set((CaptureResult.Key<CaptureResult.Key<Location>>) CaptureResult.JPEG_GPS_LOCATION, (CaptureResult.Key<Location>) captureRequest.get(CaptureRequest.JPEG_GPS_LOCATION));
        cameraMetadataNative.set((CaptureResult.Key<CaptureResult.Key<Integer>>) CaptureResult.JPEG_ORIENTATION, (CaptureResult.Key<Integer>) captureRequest.get(CaptureRequest.JPEG_ORIENTATION));
        cameraMetadataNative.set((CaptureResult.Key<CaptureResult.Key<Byte>>) CaptureResult.JPEG_QUALITY, (CaptureResult.Key<Byte>) Byte.valueOf((byte) parameters.getJpegQuality()));
        cameraMetadataNative.set((CaptureResult.Key<CaptureResult.Key<Byte>>) CaptureResult.JPEG_THUMBNAIL_QUALITY, (CaptureResult.Key<Byte>) Byte.valueOf((byte) parameters.getJpegThumbnailQuality()));
        Camera.Size jpegThumbnailSize = parameters.getJpegThumbnailSize();
        if (jpegThumbnailSize != null) {
            cameraMetadataNative.set((CaptureResult.Key<CaptureResult.Key<Size>>) CaptureResult.JPEG_THUMBNAIL_SIZE, (CaptureResult.Key<Size>) ParameterUtils.convertSize(jpegThumbnailSize));
        } else {
            Log.w(TAG, "Null thumbnail size received from parameters.");
        }
        cameraMetadataNative.set((CaptureResult.Key<CaptureResult.Key<Integer>>) CaptureResult.NOISE_REDUCTION_MODE, (CaptureResult.Key<Integer>) captureRequest.get(CaptureRequest.NOISE_REDUCTION_MODE));
        return cameraMetadataNative;
    }

    private static void mapAe(CameraMetadataNative cameraMetadataNative, CameraCharacteristics cameraCharacteristics, CaptureRequest captureRequest, Rect rect, ParameterUtils.ZoomData zoomData, Camera.Parameters parameters) {
        cameraMetadataNative.set((CaptureResult.Key<CaptureResult.Key<Integer>>) CaptureResult.CONTROL_AE_ANTIBANDING_MODE, (CaptureResult.Key<Integer>) Integer.valueOf(LegacyMetadataMapper.convertAntiBandingModeOrDefault(parameters.getAntibanding())));
        cameraMetadataNative.set((CaptureResult.Key<CaptureResult.Key<Integer>>) CaptureResult.CONTROL_AE_EXPOSURE_COMPENSATION, (CaptureResult.Key<Integer>) Integer.valueOf(parameters.getExposureCompensation()));
        boolean autoExposureLock = parameters.isAutoExposureLockSupported() ? parameters.getAutoExposureLock() : false;
        cameraMetadataNative.set((CaptureResult.Key<CaptureResult.Key<Boolean>>) CaptureResult.CONTROL_AE_LOCK, (CaptureResult.Key<Boolean>) Boolean.valueOf(autoExposureLock));
        Boolean bool = (Boolean) captureRequest.get(CaptureRequest.CONTROL_AE_LOCK);
        if (bool != null && bool.booleanValue() != autoExposureLock) {
            Log.w(TAG, "mapAe - android.control.aeLock was requested to " + bool + " but resulted in " + autoExposureLock);
        }
        mapAeAndFlashMode(cameraMetadataNative, cameraCharacteristics, parameters);
        if (parameters.getMaxNumMeteringAreas() > 0) {
            cameraMetadataNative.set((CaptureResult.Key<CaptureResult.Key<MeteringRectangle[]>>) CaptureResult.CONTROL_AE_REGIONS, (CaptureResult.Key<MeteringRectangle[]>) getMeteringRectangles(rect, zoomData, parameters.getMeteringAreas(), "AE"));
        }
    }

    private static void mapAf(CameraMetadataNative cameraMetadataNative, Rect rect, ParameterUtils.ZoomData zoomData, Camera.Parameters parameters) {
        cameraMetadataNative.set((CaptureResult.Key<CaptureResult.Key<Integer>>) CaptureResult.CONTROL_AF_MODE, (CaptureResult.Key<Integer>) Integer.valueOf(convertLegacyAfMode(parameters.getFocusMode())));
        if (parameters.getMaxNumFocusAreas() > 0) {
            cameraMetadataNative.set((CaptureResult.Key<CaptureResult.Key<MeteringRectangle[]>>) CaptureResult.CONTROL_AF_REGIONS, (CaptureResult.Key<MeteringRectangle[]>) getMeteringRectangles(rect, zoomData, parameters.getFocusAreas(), "AF"));
        }
    }

    private static void mapAwb(CameraMetadataNative cameraMetadataNative, Camera.Parameters parameters) {
        cameraMetadataNative.set((CaptureResult.Key<CaptureResult.Key<Boolean>>) CaptureResult.CONTROL_AWB_LOCK, (CaptureResult.Key<Boolean>) Boolean.valueOf(parameters.isAutoWhiteBalanceLockSupported() ? parameters.getAutoWhiteBalanceLock() : false));
        cameraMetadataNative.set((CaptureResult.Key<CaptureResult.Key<Integer>>) CaptureResult.CONTROL_AWB_MODE, (CaptureResult.Key<Integer>) Integer.valueOf(convertLegacyAwbMode(parameters.getWhiteBalance())));
    }

    private static MeteringRectangle[] getMeteringRectangles(Rect rect, ParameterUtils.ZoomData zoomData, List<Camera.Area> list, String str) {
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            Iterator<Camera.Area> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(ParameterUtils.convertCameraAreaToActiveArrayRectangle(rect, zoomData, it.next()).toMetering());
            }
        }
        return (MeteringRectangle[]) arrayList.toArray(new MeteringRectangle[0]);
    }

    private static void mapAeAndFlashMode(CameraMetadataNative cameraMetadataNative, CameraCharacteristics cameraCharacteristics, Camera.Parameters parameters) {
        int i = 0;
        Integer num = ((Boolean) cameraCharacteristics.get(CameraCharacteristics.FLASH_INFO_AVAILABLE)).booleanValue() ? null : 0;
        String flashMode = parameters.getFlashMode();
        int i2 = 1;
        if (flashMode != null) {
            char c = 65535;
            int hashCode = flashMode.hashCode();
            if (hashCode != 3551) {
                if (hashCode != 109935) {
                    if (hashCode != 3005871) {
                        if (hashCode != 110547964) {
                            if (hashCode == 1081542389 && flashMode.equals(Camera.Parameters.FLASH_MODE_RED_EYE)) {
                                c = 3;
                            }
                        } else if (flashMode.equals(Camera.Parameters.FLASH_MODE_TORCH)) {
                            c = 4;
                        }
                    } else if (flashMode.equals("auto")) {
                        c = 1;
                    }
                } else if (flashMode.equals("off")) {
                    c = 0;
                }
            } else if (flashMode.equals(Camera.Parameters.FLASH_MODE_ON)) {
                c = 2;
            }
            switch (c) {
                case 0:
                    break;
                case 1:
                    i2 = 2;
                    break;
                case 2:
                    num = 3;
                    i = 1;
                    i2 = 3;
                    break;
                case 3:
                    i2 = 4;
                    break;
                case 4:
                    num = 3;
                    i = 2;
                    break;
                default:
                    Log.w(TAG, "mapAeAndFlashMode - Ignoring unknown flash mode " + parameters.getFlashMode());
                    break;
            }
        }
        cameraMetadataNative.set((CaptureResult.Key<CaptureResult.Key<Integer>>) CaptureResult.FLASH_STATE, (CaptureResult.Key<Integer>) num);
        cameraMetadataNative.set((CaptureResult.Key<CaptureResult.Key<Integer>>) CaptureResult.FLASH_MODE, (CaptureResult.Key<Integer>) Integer.valueOf(i));
        cameraMetadataNative.set((CaptureResult.Key<CaptureResult.Key<Integer>>) CaptureResult.CONTROL_AE_MODE, (CaptureResult.Key<Integer>) Integer.valueOf(i2));
    }

    private static int convertLegacyAfMode(String str) {
        if (str == null) {
            Log.w(TAG, "convertLegacyAfMode - no AF mode, default to OFF");
            return 0;
        }
        char c = 65535;
        switch (str.hashCode()) {
            case -194628547:
                if (str.equals(Camera.Parameters.FOCUS_MODE_CONTINUOUS_VIDEO)) {
                    c = 2;
                    break;
                }
                break;
            case 3005871:
                if (str.equals("auto")) {
                    c = 0;
                    break;
                }
                break;
            case 3108534:
                if (str.equals(Camera.Parameters.FOCUS_MODE_EDOF)) {
                    c = 3;
                    break;
                }
                break;
            case 97445748:
                if (str.equals(Camera.Parameters.FOCUS_MODE_FIXED)) {
                    c = 5;
                    break;
                }
                break;
            case 103652300:
                if (str.equals(Camera.Parameters.FOCUS_MODE_MACRO)) {
                    c = 4;
                    break;
                }
                break;
            case 173173288:
                if (str.equals(Camera.Parameters.FOCUS_MODE_INFINITY)) {
                    c = 6;
                    break;
                }
                break;
            case 910005312:
                if (str.equals(Camera.Parameters.FOCUS_MODE_CONTINUOUS_PICTURE)) {
                    c = 1;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return 1;
            case 1:
                return 4;
            case 2:
                return 3;
            case 3:
                return 5;
            case 4:
                return 2;
            case 5:
                return 0;
            case 6:
                return 0;
            default:
                Log.w(TAG, "convertLegacyAfMode - unknown mode " + str + " , ignoring");
                return 0;
        }
    }

    private static int convertLegacyAwbMode(String str) {
        if (str == null) {
            return 1;
        }
        char c = 65535;
        switch (str.hashCode()) {
            case -939299377:
                if (str.equals(Camera.Parameters.WHITE_BALANCE_INCANDESCENT)) {
                    c = 1;
                    break;
                }
                break;
            case -719316704:
                if (str.equals(Camera.Parameters.WHITE_BALANCE_WARM_FLUORESCENT)) {
                    c = 3;
                    break;
                }
                break;
            case 3005871:
                if (str.equals("auto")) {
                    c = 0;
                    break;
                }
                break;
            case 109399597:
                if (str.equals(Camera.Parameters.WHITE_BALANCE_SHADE)) {
                    c = 7;
                    break;
                }
                break;
            case 474934723:
                if (str.equals(Camera.Parameters.WHITE_BALANCE_CLOUDY_DAYLIGHT)) {
                    c = 5;
                    break;
                }
                break;
            case 1650323088:
                if (str.equals(Camera.Parameters.WHITE_BALANCE_TWILIGHT)) {
                    c = 6;
                    break;
                }
                break;
            case 1902580840:
                if (str.equals(Camera.Parameters.WHITE_BALANCE_FLUORESCENT)) {
                    c = 2;
                    break;
                }
                break;
            case 1942983418:
                if (str.equals(Camera.Parameters.WHITE_BALANCE_DAYLIGHT)) {
                    c = 4;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 3;
            case 3:
                return 4;
            case 4:
                return 5;
            case 5:
                return 6;
            case 6:
                return 7;
            case 7:
                return 8;
            default:
                Log.w(TAG, "convertAwbMode - unrecognized WB mode " + str);
                return 1;
        }
    }

    private static void mapScaler(CameraMetadataNative cameraMetadataNative, ParameterUtils.ZoomData zoomData, Camera.Parameters parameters) {
        cameraMetadataNative.set((CaptureResult.Key<CaptureResult.Key<Rect>>) CaptureResult.SCALER_CROP_REGION, (CaptureResult.Key<Rect>) zoomData.reportedCrop);
    }
}
