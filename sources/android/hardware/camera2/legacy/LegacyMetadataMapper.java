package android.hardware.camera2.legacy;

import android.graphics.ImageFormat;
import android.graphics.Rect;
import android.hardware.Camera;
import android.hardware.CameraInfo;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.impl.CameraMetadataNative;
import android.hardware.camera2.params.MeteringRectangle;
import android.hardware.camera2.params.StreamConfiguration;
import android.hardware.camera2.params.StreamConfigurationDuration;
import android.hardware.camera2.utils.ArrayUtils;
import android.hardware.camera2.utils.ListUtils;
import android.hardware.camera2.utils.ParamsUtils;
import android.util.Log;
import android.util.Range;
import android.util.Rational;
import android.util.Size;
import android.util.SizeF;
import com.android.internal.util.Preconditions;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class LegacyMetadataMapper {
    private static final long APPROXIMATE_CAPTURE_DELAY_MS = 200;
    private static final long APPROXIMATE_JPEG_ENCODE_TIME_MS = 600;
    private static final long APPROXIMATE_SENSOR_AREA_PX = 8388608;
    private static final boolean DEBUG = false;
    public static final int HAL_PIXEL_FORMAT_BGRA_8888 = 5;
    public static final int HAL_PIXEL_FORMAT_BLOB = 33;
    public static final int HAL_PIXEL_FORMAT_IMPLEMENTATION_DEFINED = 34;
    public static final int HAL_PIXEL_FORMAT_RGBA_8888 = 1;
    private static final float LENS_INFO_MINIMUM_FOCUS_DISTANCE_FIXED_FOCUS = 0.0f;
    static final boolean LIE_ABOUT_AE_MAX_REGIONS = false;
    static final boolean LIE_ABOUT_AE_STATE = false;
    static final boolean LIE_ABOUT_AF = false;
    static final boolean LIE_ABOUT_AF_MAX_REGIONS = false;
    static final boolean LIE_ABOUT_AWB = false;
    static final boolean LIE_ABOUT_AWB_STATE = false;
    private static final long NS_PER_MS = 1000000;
    private static final float PREVIEW_ASPECT_RATIO_TOLERANCE = 0.01f;
    private static final int REQUEST_MAX_NUM_INPUT_STREAMS_COUNT = 0;
    private static final int REQUEST_MAX_NUM_OUTPUT_STREAMS_COUNT_PROC = 3;
    private static final int REQUEST_MAX_NUM_OUTPUT_STREAMS_COUNT_PROC_STALL = 1;
    private static final int REQUEST_MAX_NUM_OUTPUT_STREAMS_COUNT_RAW = 0;
    private static final int REQUEST_PIPELINE_MAX_DEPTH_HAL1 = 3;
    private static final int REQUEST_PIPELINE_MAX_DEPTH_OURS = 3;
    private static final String TAG = "LegacyMetadataMapper";
    static final int UNKNOWN_MODE = -1;
    private static final String[] sLegacySceneModes = {"auto", "action", Camera.Parameters.SCENE_MODE_PORTRAIT, Camera.Parameters.SCENE_MODE_LANDSCAPE, Camera.Parameters.SCENE_MODE_NIGHT, Camera.Parameters.SCENE_MODE_NIGHT_PORTRAIT, Camera.Parameters.SCENE_MODE_THEATRE, Camera.Parameters.SCENE_MODE_BEACH, Camera.Parameters.SCENE_MODE_SNOW, Camera.Parameters.SCENE_MODE_SUNSET, Camera.Parameters.SCENE_MODE_STEADYPHOTO, Camera.Parameters.SCENE_MODE_FIREWORKS, Camera.Parameters.SCENE_MODE_SPORTS, Camera.Parameters.SCENE_MODE_PARTY, Camera.Parameters.SCENE_MODE_CANDLELIGHT, Camera.Parameters.SCENE_MODE_BARCODE, Camera.Parameters.SCENE_MODE_HDR};
    private static final int[] sSceneModes = {0, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 18};
    private static final String[] sLegacyEffectMode = {"none", Camera.Parameters.EFFECT_MONO, Camera.Parameters.EFFECT_NEGATIVE, Camera.Parameters.EFFECT_SOLARIZE, Camera.Parameters.EFFECT_SEPIA, Camera.Parameters.EFFECT_POSTERIZE, Camera.Parameters.EFFECT_WHITEBOARD, Camera.Parameters.EFFECT_BLACKBOARD, Camera.Parameters.EFFECT_AQUA};
    private static final int[] sEffectModes = {0, 1, 2, 3, 4, 5, 6, 7, 8};
    private static final int[] sAllowedTemplates = {1, 2, 3};

    public static CameraCharacteristics createCharacteristics(Camera.Parameters parameters, Camera.CameraInfo cameraInfo) {
        Preconditions.checkNotNull(parameters, "parameters must not be null");
        Preconditions.checkNotNull(cameraInfo, "info must not be null");
        String flatten = parameters.flatten();
        CameraInfo cameraInfo2 = new CameraInfo();
        cameraInfo2.info = cameraInfo;
        return createCharacteristics(flatten, cameraInfo2);
    }

    public static CameraCharacteristics createCharacteristics(String str, CameraInfo cameraInfo) {
        Preconditions.checkNotNull(str, "parameters must not be null");
        Preconditions.checkNotNull(cameraInfo, "info must not be null");
        Preconditions.checkNotNull(cameraInfo.info, "info.info must not be null");
        CameraMetadataNative cameraMetadataNative = new CameraMetadataNative();
        mapCharacteristicsFromInfo(cameraMetadataNative, cameraInfo.info);
        Camera.Parameters emptyParameters = Camera.getEmptyParameters();
        emptyParameters.unflatten(str);
        mapCharacteristicsFromParameters(cameraMetadataNative, emptyParameters);
        return new CameraCharacteristics(cameraMetadataNative);
    }

    private static void mapCharacteristicsFromInfo(CameraMetadataNative cameraMetadataNative, Camera.CameraInfo cameraInfo) {
        cameraMetadataNative.set((CameraCharacteristics.Key<CameraCharacteristics.Key<Integer>>) CameraCharacteristics.LENS_FACING, (CameraCharacteristics.Key<Integer>) Integer.valueOf(cameraInfo.facing == 0 ? 1 : 0));
        cameraMetadataNative.set((CameraCharacteristics.Key<CameraCharacteristics.Key<Integer>>) CameraCharacteristics.SENSOR_ORIENTATION, (CameraCharacteristics.Key<Integer>) Integer.valueOf(cameraInfo.orientation));
    }

    private static void mapCharacteristicsFromParameters(CameraMetadataNative cameraMetadataNative, Camera.Parameters parameters) {
        cameraMetadataNative.set((CameraCharacteristics.Key<CameraCharacteristics.Key<int[]>>) CameraCharacteristics.COLOR_CORRECTION_AVAILABLE_ABERRATION_MODES, (CameraCharacteristics.Key<int[]>) new int[]{1, 2});
        mapControlAe(cameraMetadataNative, parameters);
        mapControlAf(cameraMetadataNative, parameters);
        mapControlAwb(cameraMetadataNative, parameters);
        mapControlOther(cameraMetadataNative, parameters);
        mapLens(cameraMetadataNative, parameters);
        mapFlash(cameraMetadataNative, parameters);
        mapJpeg(cameraMetadataNative, parameters);
        cameraMetadataNative.set((CameraCharacteristics.Key<CameraCharacteristics.Key<int[]>>) CameraCharacteristics.NOISE_REDUCTION_AVAILABLE_NOISE_REDUCTION_MODES, (CameraCharacteristics.Key<int[]>) new int[]{1, 2});
        mapScaler(cameraMetadataNative, parameters);
        mapSensor(cameraMetadataNative, parameters);
        mapStatistics(cameraMetadataNative, parameters);
        mapSync(cameraMetadataNative, parameters);
        cameraMetadataNative.set((CameraCharacteristics.Key<CameraCharacteristics.Key<Integer>>) CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL, (CameraCharacteristics.Key<Integer>) 2);
        mapScalerStreamConfigs(cameraMetadataNative, parameters);
        mapRequest(cameraMetadataNative, parameters);
    }

    private static void mapScalerStreamConfigs(CameraMetadataNative cameraMetadataNative, Camera.Parameters parameters) {
        ArrayList arrayList = new ArrayList();
        List<Camera.Size> supportedPreviewSizes = parameters.getSupportedPreviewSizes();
        List<Camera.Size> supportedPictureSizes = parameters.getSupportedPictureSizes();
        SizeAreaComparator sizeAreaComparator = new SizeAreaComparator();
        Collections.sort(supportedPreviewSizes, sizeAreaComparator);
        Camera.Size findLargestByArea = SizeAreaComparator.findLargestByArea(supportedPictureSizes);
        float f = (findLargestByArea.width * 1.0f) / findLargestByArea.height;
        while (!supportedPreviewSizes.isEmpty()) {
            int size = supportedPreviewSizes.size() - 1;
            Camera.Size size2 = supportedPreviewSizes.get(size);
            if (Math.abs(f - ((size2.width * 1.0f) / size2.height)) < PREVIEW_ASPECT_RATIO_TOLERANCE) {
                break;
            } else {
                supportedPreviewSizes.remove(size);
            }
        }
        if (supportedPreviewSizes.isEmpty()) {
            Log.w(TAG, "mapScalerStreamConfigs - failed to find any preview size matching JPEG aspect ratio " + f);
            supportedPreviewSizes = parameters.getSupportedPreviewSizes();
        }
        Collections.sort(supportedPreviewSizes, Collections.reverseOrder(sizeAreaComparator));
        appendStreamConfig(arrayList, 34, supportedPreviewSizes);
        appendStreamConfig(arrayList, 35, supportedPreviewSizes);
        Iterator<Integer> it = parameters.getSupportedPreviewFormats().iterator();
        while (it.hasNext()) {
            int intValue = it.next().intValue();
            if (ImageFormat.isPublicFormat(intValue) && intValue != 17) {
                appendStreamConfig(arrayList, intValue, supportedPreviewSizes);
            }
        }
        appendStreamConfig(arrayList, 33, parameters.getSupportedPictureSizes());
        int i = 0;
        cameraMetadataNative.set((CameraCharacteristics.Key<CameraCharacteristics.Key<StreamConfiguration[]>>) CameraCharacteristics.SCALER_AVAILABLE_STREAM_CONFIGURATIONS, (CameraCharacteristics.Key<StreamConfiguration[]>) arrayList.toArray(new StreamConfiguration[0]));
        cameraMetadataNative.set((CameraCharacteristics.Key<CameraCharacteristics.Key<StreamConfigurationDuration[]>>) CameraCharacteristics.SCALER_AVAILABLE_MIN_FRAME_DURATIONS, (CameraCharacteristics.Key<StreamConfigurationDuration[]>) new StreamConfigurationDuration[0]);
        StreamConfigurationDuration[] streamConfigurationDurationArr = new StreamConfigurationDuration[supportedPictureSizes.size()];
        long j = -1;
        for (Camera.Size size3 : supportedPictureSizes) {
            long calculateJpegStallDuration = calculateJpegStallDuration(size3);
            int i2 = i + 1;
            streamConfigurationDurationArr[i] = new StreamConfigurationDuration(33, size3.width, size3.height, calculateJpegStallDuration);
            if (j < calculateJpegStallDuration) {
                j = calculateJpegStallDuration;
            }
            i = i2;
        }
        cameraMetadataNative.set((CameraCharacteristics.Key<CameraCharacteristics.Key<StreamConfigurationDuration[]>>) CameraCharacteristics.SCALER_AVAILABLE_STALL_DURATIONS, (CameraCharacteristics.Key<StreamConfigurationDuration[]>) streamConfigurationDurationArr);
        cameraMetadataNative.set((CameraCharacteristics.Key<CameraCharacteristics.Key<Long>>) CameraCharacteristics.SENSOR_INFO_MAX_FRAME_DURATION, (CameraCharacteristics.Key<Long>) Long.valueOf(j));
    }

    private static void mapControlAe(CameraMetadataNative cameraMetadataNative, Camera.Parameters parameters) {
        List<String> supportedAntibanding = parameters.getSupportedAntibanding();
        if (supportedAntibanding != null && supportedAntibanding.size() > 0) {
            int[] iArr = new int[supportedAntibanding.size()];
            Iterator<String> it = supportedAntibanding.iterator();
            int i = 0;
            while (it.hasNext()) {
                iArr[i] = convertAntiBandingMode(it.next());
                i++;
            }
            cameraMetadataNative.set((CameraCharacteristics.Key<CameraCharacteristics.Key<int[]>>) CameraCharacteristics.CONTROL_AE_AVAILABLE_ANTIBANDING_MODES, (CameraCharacteristics.Key<int[]>) Arrays.copyOf(iArr, i));
        } else {
            cameraMetadataNative.set((CameraCharacteristics.Key<CameraCharacteristics.Key<int[]>>) CameraCharacteristics.CONTROL_AE_AVAILABLE_ANTIBANDING_MODES, (CameraCharacteristics.Key<int[]>) new int[0]);
        }
        List<int[]> supportedPreviewFpsRange = parameters.getSupportedPreviewFpsRange();
        if (supportedPreviewFpsRange == null) {
            throw new AssertionError("Supported FPS ranges cannot be null.");
        }
        int size = supportedPreviewFpsRange.size();
        if (size <= 0) {
            throw new AssertionError("At least one FPS range must be supported.");
        }
        Range[] rangeArr = new Range[size];
        int i2 = 0;
        for (int[] iArr2 : supportedPreviewFpsRange) {
            rangeArr[i2] = Range.create(Integer.valueOf((int) Math.floor(iArr2[0] / 1000.0d)), Integer.valueOf((int) Math.ceil(iArr2[1] / 1000.0d)));
            i2++;
        }
        cameraMetadataNative.set((CameraCharacteristics.Key<CameraCharacteristics.Key<Range<Integer>[]>>) CameraCharacteristics.CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES, (CameraCharacteristics.Key<Range<Integer>[]>) rangeArr);
        int[] convertStringListToIntArray = ArrayUtils.convertStringListToIntArray(parameters.getSupportedFlashModes(), new String[]{"off", "auto", Camera.Parameters.FLASH_MODE_ON, Camera.Parameters.FLASH_MODE_RED_EYE, Camera.Parameters.FLASH_MODE_TORCH}, new int[]{1, 2, 3, 4});
        if (convertStringListToIntArray == null || convertStringListToIntArray.length == 0) {
            convertStringListToIntArray = new int[]{1};
        }
        cameraMetadataNative.set((CameraCharacteristics.Key<CameraCharacteristics.Key<int[]>>) CameraCharacteristics.CONTROL_AE_AVAILABLE_MODES, (CameraCharacteristics.Key<int[]>) convertStringListToIntArray);
        cameraMetadataNative.set((CameraCharacteristics.Key<CameraCharacteristics.Key<Range<Integer>>>) CameraCharacteristics.CONTROL_AE_COMPENSATION_RANGE, (CameraCharacteristics.Key<Range<Integer>>) Range.create(Integer.valueOf(parameters.getMinExposureCompensation()), Integer.valueOf(parameters.getMaxExposureCompensation())));
        cameraMetadataNative.set((CameraCharacteristics.Key<CameraCharacteristics.Key<Rational>>) CameraCharacteristics.CONTROL_AE_COMPENSATION_STEP, (CameraCharacteristics.Key<Rational>) ParamsUtils.createRational(parameters.getExposureCompensationStep()));
        cameraMetadataNative.set((CameraCharacteristics.Key<CameraCharacteristics.Key<Boolean>>) CameraCharacteristics.CONTROL_AE_LOCK_AVAILABLE, (CameraCharacteristics.Key<Boolean>) Boolean.valueOf(parameters.isAutoExposureLockSupported()));
    }

    private static void mapControlAf(CameraMetadataNative cameraMetadataNative, Camera.Parameters parameters) {
        List convertStringListToIntList = ArrayUtils.convertStringListToIntList(parameters.getSupportedFocusModes(), new String[]{"auto", Camera.Parameters.FOCUS_MODE_CONTINUOUS_PICTURE, Camera.Parameters.FOCUS_MODE_CONTINUOUS_VIDEO, Camera.Parameters.FOCUS_MODE_EDOF, Camera.Parameters.FOCUS_MODE_INFINITY, Camera.Parameters.FOCUS_MODE_MACRO, Camera.Parameters.FOCUS_MODE_FIXED}, new int[]{1, 4, 3, 5, 0, 2, 0});
        if (convertStringListToIntList == null || convertStringListToIntList.size() == 0) {
            Log.w(TAG, "No AF modes supported (HAL bug); defaulting to AF_MODE_OFF only");
            convertStringListToIntList = new ArrayList(1);
            convertStringListToIntList.add(0);
        }
        cameraMetadataNative.set((CameraCharacteristics.Key<CameraCharacteristics.Key<int[]>>) CameraCharacteristics.CONTROL_AF_AVAILABLE_MODES, (CameraCharacteristics.Key<int[]>) ArrayUtils.toIntArray(convertStringListToIntList));
    }

    private static void mapControlAwb(CameraMetadataNative cameraMetadataNative, Camera.Parameters parameters) {
        List convertStringListToIntList = ArrayUtils.convertStringListToIntList(parameters.getSupportedWhiteBalance(), new String[]{"auto", Camera.Parameters.WHITE_BALANCE_INCANDESCENT, Camera.Parameters.WHITE_BALANCE_FLUORESCENT, Camera.Parameters.WHITE_BALANCE_WARM_FLUORESCENT, Camera.Parameters.WHITE_BALANCE_DAYLIGHT, Camera.Parameters.WHITE_BALANCE_CLOUDY_DAYLIGHT, Camera.Parameters.WHITE_BALANCE_TWILIGHT, Camera.Parameters.WHITE_BALANCE_SHADE}, new int[]{1, 2, 3, 4, 5, 6, 7, 8});
        if (convertStringListToIntList == null || convertStringListToIntList.size() == 0) {
            Log.w(TAG, "No AWB modes supported (HAL bug); defaulting to AWB_MODE_AUTO only");
            convertStringListToIntList = new ArrayList(1);
            convertStringListToIntList.add(1);
        }
        cameraMetadataNative.set((CameraCharacteristics.Key<CameraCharacteristics.Key<int[]>>) CameraCharacteristics.CONTROL_AWB_AVAILABLE_MODES, (CameraCharacteristics.Key<int[]>) ArrayUtils.toIntArray(convertStringListToIntList));
        cameraMetadataNative.set((CameraCharacteristics.Key<CameraCharacteristics.Key<Boolean>>) CameraCharacteristics.CONTROL_AWB_LOCK_AVAILABLE, (CameraCharacteristics.Key<Boolean>) Boolean.valueOf(parameters.isAutoWhiteBalanceLockSupported()));
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x008c, code lost:
    
        if (r4.contains(0) != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0097, code lost:
    
        if (r4.remove(new java.lang.Integer(0)) == false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x009a, code lost:
    
        r6.set((android.hardware.camera2.CameraCharacteristics.Key<android.hardware.camera2.CameraCharacteristics.Key<int[]>>) android.hardware.camera2.CameraCharacteristics.CONTROL_AVAILABLE_SCENE_MODES, (android.hardware.camera2.CameraCharacteristics.Key<int[]>) android.hardware.camera2.utils.ArrayUtils.toIntArray(r4));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void mapControlOther(CameraMetadataNative cameraMetadataNative, Camera.Parameters parameters) {
        int[] iArr;
        int[] convertStringListToIntArray;
        int[] iArr2;
        if (parameters.isVideoStabilizationSupported()) {
            iArr = new int[]{0, 1};
        } else {
            iArr = new int[]{0};
        }
        cameraMetadataNative.set((CameraCharacteristics.Key<CameraCharacteristics.Key<int[]>>) CameraCharacteristics.CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES, (CameraCharacteristics.Key<int[]>) iArr);
        cameraMetadataNative.set((CameraCharacteristics.Key<CameraCharacteristics.Key<int[]>>) CameraCharacteristics.CONTROL_MAX_REGIONS, (CameraCharacteristics.Key<int[]>) new int[]{parameters.getMaxNumMeteringAreas(), 0, parameters.getMaxNumFocusAreas()});
        List<String> supportedColorEffects = parameters.getSupportedColorEffects();
        if (supportedColorEffects == null) {
            convertStringListToIntArray = new int[0];
        } else {
            convertStringListToIntArray = ArrayUtils.convertStringListToIntArray(supportedColorEffects, sLegacyEffectMode, sEffectModes);
        }
        cameraMetadataNative.set((CameraCharacteristics.Key<CameraCharacteristics.Key<int[]>>) CameraCharacteristics.CONTROL_AVAILABLE_EFFECTS, (CameraCharacteristics.Key<int[]>) convertStringListToIntArray);
        int maxNumDetectedFaces = parameters.getMaxNumDetectedFaces();
        List<String> supportedSceneModes = parameters.getSupportedSceneModes();
        List<Integer> convertStringListToIntList = ArrayUtils.convertStringListToIntList(supportedSceneModes, sLegacySceneModes, sSceneModes);
        if (supportedSceneModes != null && supportedSceneModes.size() == 1 && supportedSceneModes.get(0).equals("auto")) {
            convertStringListToIntList = null;
        }
        boolean z = (convertStringListToIntList == null && maxNumDetectedFaces == 0) ? false : true;
        if (z) {
            if (convertStringListToIntList == null) {
                convertStringListToIntList = new ArrayList<>();
            }
            if (maxNumDetectedFaces > 0) {
                convertStringListToIntList.add(1);
            }
        } else {
            cameraMetadataNative.set((CameraCharacteristics.Key<CameraCharacteristics.Key<int[]>>) CameraCharacteristics.CONTROL_AVAILABLE_SCENE_MODES, (CameraCharacteristics.Key<int[]>) new int[]{0});
        }
        CameraCharacteristics.Key<int[]> key = CameraCharacteristics.CONTROL_AVAILABLE_MODES;
        if (z) {
            iArr2 = new int[]{1, 2};
        } else {
            iArr2 = new int[]{1};
        }
        cameraMetadataNative.set((CameraCharacteristics.Key<CameraCharacteristics.Key<int[]>>) key, (CameraCharacteristics.Key<int[]>) iArr2);
    }

    private static void mapLens(CameraMetadataNative cameraMetadataNative, Camera.Parameters parameters) {
        if (Camera.Parameters.FOCUS_MODE_FIXED.equals(parameters.getFocusMode())) {
            cameraMetadataNative.set((CameraCharacteristics.Key<CameraCharacteristics.Key<Float>>) CameraCharacteristics.LENS_INFO_MINIMUM_FOCUS_DISTANCE, (CameraCharacteristics.Key<Float>) Float.valueOf(0.0f));
        }
        cameraMetadataNative.set((CameraCharacteristics.Key<CameraCharacteristics.Key<float[]>>) CameraCharacteristics.LENS_INFO_AVAILABLE_FOCAL_LENGTHS, (CameraCharacteristics.Key<float[]>) new float[]{parameters.getFocalLength()});
    }

    private static void mapFlash(CameraMetadataNative cameraMetadataNative, Camera.Parameters parameters) {
        cameraMetadataNative.set((CameraCharacteristics.Key<CameraCharacteristics.Key<Boolean>>) CameraCharacteristics.FLASH_INFO_AVAILABLE, (CameraCharacteristics.Key<Boolean>) Boolean.valueOf(parameters.getSupportedFlashModes() != null ? !ListUtils.listElementsEqualTo(r2, "off") : false));
    }

    private static void mapJpeg(CameraMetadataNative cameraMetadataNative, Camera.Parameters parameters) {
        List<Camera.Size> supportedJpegThumbnailSizes = parameters.getSupportedJpegThumbnailSizes();
        if (supportedJpegThumbnailSizes != null) {
            Size[] convertSizeListToArray = ParameterUtils.convertSizeListToArray(supportedJpegThumbnailSizes);
            Arrays.sort(convertSizeListToArray, new android.hardware.camera2.utils.SizeAreaComparator());
            cameraMetadataNative.set((CameraCharacteristics.Key<CameraCharacteristics.Key<Size[]>>) CameraCharacteristics.JPEG_AVAILABLE_THUMBNAIL_SIZES, (CameraCharacteristics.Key<Size[]>) convertSizeListToArray);
        }
    }

    private static void mapRequest(CameraMetadataNative cameraMetadataNative, Camera.Parameters parameters) {
        cameraMetadataNative.set((CameraCharacteristics.Key<CameraCharacteristics.Key<int[]>>) CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES, (CameraCharacteristics.Key<int[]>) new int[]{0});
        ArrayList arrayList = new ArrayList(Arrays.asList(CameraCharacteristics.COLOR_CORRECTION_AVAILABLE_ABERRATION_MODES, CameraCharacteristics.CONTROL_AE_AVAILABLE_ANTIBANDING_MODES, CameraCharacteristics.CONTROL_AE_AVAILABLE_MODES, CameraCharacteristics.CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES, CameraCharacteristics.CONTROL_AE_COMPENSATION_RANGE, CameraCharacteristics.CONTROL_AE_COMPENSATION_STEP, CameraCharacteristics.CONTROL_AE_LOCK_AVAILABLE, CameraCharacteristics.CONTROL_AF_AVAILABLE_MODES, CameraCharacteristics.CONTROL_AVAILABLE_EFFECTS, CameraCharacteristics.CONTROL_AVAILABLE_MODES, CameraCharacteristics.CONTROL_AVAILABLE_SCENE_MODES, CameraCharacteristics.CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES, CameraCharacteristics.CONTROL_AWB_AVAILABLE_MODES, CameraCharacteristics.CONTROL_AWB_LOCK_AVAILABLE, CameraCharacteristics.CONTROL_MAX_REGIONS, CameraCharacteristics.FLASH_INFO_AVAILABLE, CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL, CameraCharacteristics.JPEG_AVAILABLE_THUMBNAIL_SIZES, CameraCharacteristics.LENS_FACING, CameraCharacteristics.LENS_INFO_AVAILABLE_FOCAL_LENGTHS, CameraCharacteristics.NOISE_REDUCTION_AVAILABLE_NOISE_REDUCTION_MODES, CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES, CameraCharacteristics.REQUEST_MAX_NUM_OUTPUT_STREAMS, CameraCharacteristics.REQUEST_PARTIAL_RESULT_COUNT, CameraCharacteristics.REQUEST_PIPELINE_MAX_DEPTH, CameraCharacteristics.SCALER_AVAILABLE_MAX_DIGITAL_ZOOM, CameraCharacteristics.SCALER_CROPPING_TYPE, CameraCharacteristics.SENSOR_AVAILABLE_TEST_PATTERN_MODES, CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE, CameraCharacteristics.SENSOR_INFO_PHYSICAL_SIZE, CameraCharacteristics.SENSOR_INFO_PIXEL_ARRAY_SIZE, CameraCharacteristics.SENSOR_INFO_TIMESTAMP_SOURCE, CameraCharacteristics.SENSOR_ORIENTATION, CameraCharacteristics.STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES, CameraCharacteristics.STATISTICS_INFO_MAX_FACE_COUNT, CameraCharacteristics.SYNC_MAX_LATENCY));
        if (cameraMetadataNative.get(CameraCharacteristics.LENS_INFO_MINIMUM_FOCUS_DISTANCE) != null) {
            arrayList.add(CameraCharacteristics.LENS_INFO_MINIMUM_FOCUS_DISTANCE);
        }
        cameraMetadataNative.set((CameraCharacteristics.Key<CameraCharacteristics.Key<int[]>>) CameraCharacteristics.REQUEST_AVAILABLE_CHARACTERISTICS_KEYS, (CameraCharacteristics.Key<int[]>) getTagsForKeys((CameraCharacteristics.Key<?>[]) arrayList.toArray(new CameraCharacteristics.Key[0])));
        ArrayList arrayList2 = new ArrayList(Arrays.asList(CaptureRequest.COLOR_CORRECTION_ABERRATION_MODE, CaptureRequest.CONTROL_AE_ANTIBANDING_MODE, CaptureRequest.CONTROL_AE_EXPOSURE_COMPENSATION, CaptureRequest.CONTROL_AE_LOCK, CaptureRequest.CONTROL_AE_MODE, CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, CaptureRequest.CONTROL_AF_MODE, CaptureRequest.CONTROL_AF_TRIGGER, CaptureRequest.CONTROL_AWB_LOCK, CaptureRequest.CONTROL_AWB_MODE, CaptureRequest.CONTROL_CAPTURE_INTENT, CaptureRequest.CONTROL_EFFECT_MODE, CaptureRequest.CONTROL_MODE, CaptureRequest.CONTROL_SCENE_MODE, CaptureRequest.CONTROL_VIDEO_STABILIZATION_MODE, CaptureRequest.FLASH_MODE, CaptureRequest.JPEG_GPS_COORDINATES, CaptureRequest.JPEG_GPS_PROCESSING_METHOD, CaptureRequest.JPEG_GPS_TIMESTAMP, CaptureRequest.JPEG_ORIENTATION, CaptureRequest.JPEG_QUALITY, CaptureRequest.JPEG_THUMBNAIL_QUALITY, CaptureRequest.JPEG_THUMBNAIL_SIZE, CaptureRequest.LENS_FOCAL_LENGTH, CaptureRequest.NOISE_REDUCTION_MODE, CaptureRequest.SCALER_CROP_REGION, CaptureRequest.STATISTICS_FACE_DETECT_MODE));
        if (parameters.getMaxNumMeteringAreas() > 0) {
            arrayList2.add(CaptureRequest.CONTROL_AE_REGIONS);
        }
        if (parameters.getMaxNumFocusAreas() > 0) {
            arrayList2.add(CaptureRequest.CONTROL_AF_REGIONS);
        }
        CaptureRequest.Key[] keyArr = new CaptureRequest.Key[arrayList2.size()];
        arrayList2.toArray(keyArr);
        cameraMetadataNative.set((CameraCharacteristics.Key<CameraCharacteristics.Key<int[]>>) CameraCharacteristics.REQUEST_AVAILABLE_REQUEST_KEYS, (CameraCharacteristics.Key<int[]>) getTagsForKeys((CaptureRequest.Key<?>[]) keyArr));
        ArrayList arrayList3 = new ArrayList(Arrays.asList(CaptureResult.COLOR_CORRECTION_ABERRATION_MODE, CaptureResult.CONTROL_AE_ANTIBANDING_MODE, CaptureResult.CONTROL_AE_EXPOSURE_COMPENSATION, CaptureResult.CONTROL_AE_LOCK, CaptureResult.CONTROL_AE_MODE, CaptureResult.CONTROL_AF_MODE, CaptureResult.CONTROL_AF_STATE, CaptureResult.CONTROL_AWB_MODE, CaptureResult.CONTROL_AWB_LOCK, CaptureResult.CONTROL_MODE, CaptureResult.FLASH_MODE, CaptureResult.JPEG_GPS_COORDINATES, CaptureResult.JPEG_GPS_PROCESSING_METHOD, CaptureResult.JPEG_GPS_TIMESTAMP, CaptureResult.JPEG_ORIENTATION, CaptureResult.JPEG_QUALITY, CaptureResult.JPEG_THUMBNAIL_QUALITY, CaptureResult.LENS_FOCAL_LENGTH, CaptureResult.NOISE_REDUCTION_MODE, CaptureResult.REQUEST_PIPELINE_DEPTH, CaptureResult.SCALER_CROP_REGION, CaptureResult.SENSOR_TIMESTAMP, CaptureResult.STATISTICS_FACE_DETECT_MODE));
        if (parameters.getMaxNumMeteringAreas() > 0) {
            arrayList3.add(CaptureResult.CONTROL_AE_REGIONS);
        }
        if (parameters.getMaxNumFocusAreas() > 0) {
            arrayList3.add(CaptureResult.CONTROL_AF_REGIONS);
        }
        CaptureResult.Key[] keyArr2 = new CaptureResult.Key[arrayList3.size()];
        arrayList3.toArray(keyArr2);
        cameraMetadataNative.set((CameraCharacteristics.Key<CameraCharacteristics.Key<int[]>>) CameraCharacteristics.REQUEST_AVAILABLE_RESULT_KEYS, (CameraCharacteristics.Key<int[]>) getTagsForKeys((CaptureResult.Key<?>[]) keyArr2));
        cameraMetadataNative.set((CameraCharacteristics.Key<CameraCharacteristics.Key<int[]>>) CameraCharacteristics.REQUEST_MAX_NUM_OUTPUT_STREAMS, (CameraCharacteristics.Key<int[]>) new int[]{0, 3, 1});
        cameraMetadataNative.set((CameraCharacteristics.Key<CameraCharacteristics.Key<Integer>>) CameraCharacteristics.REQUEST_MAX_NUM_INPUT_STREAMS, (CameraCharacteristics.Key<Integer>) 0);
        cameraMetadataNative.set((CameraCharacteristics.Key<CameraCharacteristics.Key<Integer>>) CameraCharacteristics.REQUEST_PARTIAL_RESULT_COUNT, (CameraCharacteristics.Key<Integer>) 1);
        cameraMetadataNative.set((CameraCharacteristics.Key<CameraCharacteristics.Key<Byte>>) CameraCharacteristics.REQUEST_PIPELINE_MAX_DEPTH, (CameraCharacteristics.Key<Byte>) (byte) 6);
    }

    private static void mapScaler(CameraMetadataNative cameraMetadataNative, Camera.Parameters parameters) {
        cameraMetadataNative.set((CameraCharacteristics.Key<CameraCharacteristics.Key<Float>>) CameraCharacteristics.SCALER_AVAILABLE_MAX_DIGITAL_ZOOM, (CameraCharacteristics.Key<Float>) Float.valueOf(ParameterUtils.getMaxZoomRatio(parameters)));
        cameraMetadataNative.set((CameraCharacteristics.Key<CameraCharacteristics.Key<Integer>>) CameraCharacteristics.SCALER_CROPPING_TYPE, (CameraCharacteristics.Key<Integer>) 0);
    }

    private static void mapSensor(CameraMetadataNative cameraMetadataNative, Camera.Parameters parameters) {
        Size largestSupportedJpegSizeByArea = ParameterUtils.getLargestSupportedJpegSizeByArea(parameters);
        cameraMetadataNative.set((CameraCharacteristics.Key<CameraCharacteristics.Key<Rect>>) CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE, (CameraCharacteristics.Key<Rect>) ParamsUtils.createRect(largestSupportedJpegSizeByArea));
        cameraMetadataNative.set((CameraCharacteristics.Key<CameraCharacteristics.Key<int[]>>) CameraCharacteristics.SENSOR_AVAILABLE_TEST_PATTERN_MODES, (CameraCharacteristics.Key<int[]>) new int[]{0});
        cameraMetadataNative.set((CameraCharacteristics.Key<CameraCharacteristics.Key<Size>>) CameraCharacteristics.SENSOR_INFO_PIXEL_ARRAY_SIZE, (CameraCharacteristics.Key<Size>) largestSupportedJpegSizeByArea);
        double focalLength = parameters.getFocalLength() * 2.0f;
        cameraMetadataNative.set((CameraCharacteristics.Key<CameraCharacteristics.Key<SizeF>>) CameraCharacteristics.SENSOR_INFO_PHYSICAL_SIZE, (CameraCharacteristics.Key<SizeF>) new SizeF((float) Math.abs(focalLength * Math.tan(((parameters.getHorizontalViewAngle() * 3.141592653589793d) / 180.0d) / 2.0d)), (float) Math.abs(Math.tan(((parameters.getVerticalViewAngle() * 3.141592653589793d) / 180.0d) / 2.0d) * focalLength)));
        cameraMetadataNative.set((CameraCharacteristics.Key<CameraCharacteristics.Key<Integer>>) CameraCharacteristics.SENSOR_INFO_TIMESTAMP_SOURCE, (CameraCharacteristics.Key<Integer>) 0);
    }

    private static void mapStatistics(CameraMetadataNative cameraMetadataNative, Camera.Parameters parameters) {
        int[] iArr;
        if (parameters.getMaxNumDetectedFaces() > 0) {
            iArr = new int[]{0, 1};
        } else {
            iArr = new int[]{0};
        }
        cameraMetadataNative.set((CameraCharacteristics.Key<CameraCharacteristics.Key<int[]>>) CameraCharacteristics.STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES, (CameraCharacteristics.Key<int[]>) iArr);
        cameraMetadataNative.set((CameraCharacteristics.Key<CameraCharacteristics.Key<Integer>>) CameraCharacteristics.STATISTICS_INFO_MAX_FACE_COUNT, (CameraCharacteristics.Key<Integer>) Integer.valueOf(parameters.getMaxNumDetectedFaces()));
    }

    private static void mapSync(CameraMetadataNative cameraMetadataNative, Camera.Parameters parameters) {
        cameraMetadataNative.set((CameraCharacteristics.Key<CameraCharacteristics.Key<Integer>>) CameraCharacteristics.SYNC_MAX_LATENCY, (CameraCharacteristics.Key<Integer>) (-1));
    }

    private static void appendStreamConfig(ArrayList<StreamConfiguration> arrayList, int i, List<Camera.Size> list) {
        for (Camera.Size size : list) {
            arrayList.add(new StreamConfiguration(i, size.width, size.height, false));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int convertSceneModeFromLegacy(String str) {
        if (str == null) {
            return 0;
        }
        int arrayIndex = ArrayUtils.getArrayIndex(sLegacySceneModes, str);
        if (arrayIndex < 0) {
            return -1;
        }
        return sSceneModes[arrayIndex];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String convertSceneModeToLegacy(int i) {
        if (i == 1) {
            return "auto";
        }
        int arrayIndex = ArrayUtils.getArrayIndex(sSceneModes, i);
        if (arrayIndex < 0) {
            return null;
        }
        return sLegacySceneModes[arrayIndex];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int convertEffectModeFromLegacy(String str) {
        if (str == null) {
            return 0;
        }
        int arrayIndex = ArrayUtils.getArrayIndex(sLegacyEffectMode, str);
        if (arrayIndex < 0) {
            return -1;
        }
        return sEffectModes[arrayIndex];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String convertEffectModeToLegacy(int i) {
        int arrayIndex = ArrayUtils.getArrayIndex(sEffectModes, i);
        if (arrayIndex < 0) {
            return null;
        }
        return sLegacyEffectMode[arrayIndex];
    }

    private static int convertAntiBandingMode(String str) {
        boolean z;
        if (str == null) {
            return -1;
        }
        int hashCode = str.hashCode();
        if (hashCode == 109935) {
            if (str.equals("off")) {
                z = false;
            }
            z = -1;
        } else if (hashCode == 1628397) {
            if (str.equals(Camera.Parameters.ANTIBANDING_50HZ)) {
                z = true;
            }
            z = -1;
        } else if (hashCode != 1658188) {
            if (hashCode == 3005871 && str.equals("auto")) {
                z = 3;
            }
            z = -1;
        } else {
            if (str.equals(Camera.Parameters.ANTIBANDING_60HZ)) {
                z = 2;
            }
            z = -1;
        }
        switch (z) {
            case false:
                return 0;
            case true:
                return 1;
            case true:
                return 2;
            case true:
                return 3;
            default:
                Log.w(TAG, "convertAntiBandingMode - Unknown antibanding mode " + str);
                return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int convertAntiBandingModeOrDefault(String str) {
        int convertAntiBandingMode = convertAntiBandingMode(str);
        if (convertAntiBandingMode == -1) {
            return 0;
        }
        return convertAntiBandingMode;
    }

    private static int[] convertAeFpsRangeToLegacy(Range<Integer> range) {
        return new int[]{range.getLower().intValue(), range.getUpper().intValue()};
    }

    private static long calculateJpegStallDuration(Camera.Size size) {
        return (size.width * size.height * 71) + 200000000;
    }

    public static void convertRequestMetadata(LegacyRequest legacyRequest) {
        LegacyRequestMapper.convertRequestMetadata(legacyRequest);
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x00ef, code lost:
    
        if (android.hardware.camera2.utils.ArrayUtils.contains((int[]) r13.get(android.hardware.camera2.CameraCharacteristics.CONTROL_AF_AVAILABLE_MODES), 3) != false) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static CameraMetadataNative createRequestTemplate(CameraCharacteristics cameraCharacteristics, int i) {
        int i2;
        if (!ArrayUtils.contains(sAllowedTemplates, i)) {
            throw new IllegalArgumentException("templateId out of range");
        }
        CameraMetadataNative cameraMetadataNative = new CameraMetadataNative();
        cameraMetadataNative.set((CaptureRequest.Key<CaptureRequest.Key<Integer>>) CaptureRequest.CONTROL_AWB_MODE, (CaptureRequest.Key<Integer>) 1);
        int i3 = 3;
        cameraMetadataNative.set((CaptureRequest.Key<CaptureRequest.Key<Integer>>) CaptureRequest.CONTROL_AE_ANTIBANDING_MODE, (CaptureRequest.Key<Integer>) 3);
        cameraMetadataNative.set((CaptureRequest.Key<CaptureRequest.Key<Integer>>) CaptureRequest.CONTROL_AE_EXPOSURE_COMPENSATION, (CaptureRequest.Key<Integer>) 0);
        cameraMetadataNative.set((CaptureRequest.Key<CaptureRequest.Key<Boolean>>) CaptureRequest.CONTROL_AE_LOCK, (CaptureRequest.Key<Boolean>) false);
        cameraMetadataNative.set((CaptureRequest.Key<CaptureRequest.Key<Integer>>) CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER, (CaptureRequest.Key<Integer>) 0);
        cameraMetadataNative.set((CaptureRequest.Key<CaptureRequest.Key<Integer>>) CaptureRequest.CONTROL_AF_TRIGGER, (CaptureRequest.Key<Integer>) 0);
        cameraMetadataNative.set((CaptureRequest.Key<CaptureRequest.Key<Integer>>) CaptureRequest.CONTROL_AWB_MODE, (CaptureRequest.Key<Integer>) 1);
        cameraMetadataNative.set((CaptureRequest.Key<CaptureRequest.Key<Boolean>>) CaptureRequest.CONTROL_AWB_LOCK, (CaptureRequest.Key<Boolean>) false);
        Rect rect = (Rect) cameraCharacteristics.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE);
        MeteringRectangle[] meteringRectangleArr = {new MeteringRectangle(0, 0, rect.width() - 1, rect.height() - 1, 0)};
        cameraMetadataNative.set((CaptureRequest.Key<CaptureRequest.Key<MeteringRectangle[]>>) CaptureRequest.CONTROL_AE_REGIONS, (CaptureRequest.Key<MeteringRectangle[]>) meteringRectangleArr);
        cameraMetadataNative.set((CaptureRequest.Key<CaptureRequest.Key<MeteringRectangle[]>>) CaptureRequest.CONTROL_AWB_REGIONS, (CaptureRequest.Key<MeteringRectangle[]>) meteringRectangleArr);
        cameraMetadataNative.set((CaptureRequest.Key<CaptureRequest.Key<MeteringRectangle[]>>) CaptureRequest.CONTROL_AF_REGIONS, (CaptureRequest.Key<MeteringRectangle[]>) meteringRectangleArr);
        switch (i) {
            case 1:
                i2 = 1;
                break;
            case 2:
                i2 = 2;
                break;
            case 3:
                i2 = 3;
                break;
            default:
                throw new AssertionError("Impossible; keep in sync with sAllowedTemplates");
        }
        cameraMetadataNative.set((CaptureRequest.Key<CaptureRequest.Key<Integer>>) CaptureRequest.CONTROL_CAPTURE_INTENT, (CaptureRequest.Key<Integer>) Integer.valueOf(i2));
        cameraMetadataNative.set((CaptureRequest.Key<CaptureRequest.Key<Integer>>) CaptureRequest.CONTROL_AE_MODE, (CaptureRequest.Key<Integer>) 1);
        cameraMetadataNative.set((CaptureRequest.Key<CaptureRequest.Key<Integer>>) CaptureRequest.CONTROL_MODE, (CaptureRequest.Key<Integer>) 1);
        Float f = (Float) cameraCharacteristics.get(CameraCharacteristics.LENS_INFO_MINIMUM_FOCUS_DISTANCE);
        if (f != null && f.floatValue() == 0.0f) {
            i3 = 0;
        } else if (i != 3 && i != 4) {
            if ((i == 1 || i == 2) && ArrayUtils.contains((int[]) cameraCharacteristics.get(CameraCharacteristics.CONTROL_AF_AVAILABLE_MODES), 4)) {
                i3 = 4;
            }
            i3 = 1;
        }
        cameraMetadataNative.set((CaptureRequest.Key<CaptureRequest.Key<Integer>>) CaptureRequest.CONTROL_AF_MODE, (CaptureRequest.Key<Integer>) Integer.valueOf(i3));
        Range[] rangeArr = (Range[]) cameraCharacteristics.get(CameraCharacteristics.CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES);
        Range range = rangeArr[0];
        for (Range range2 : rangeArr) {
            if (((Integer) range.getUpper()).intValue() < ((Integer) range2.getUpper()).intValue() || (range.getUpper() == range2.getUpper() && ((Integer) range.getLower()).intValue() < ((Integer) range2.getLower()).intValue())) {
                range = range2;
            }
        }
        cameraMetadataNative.set((CaptureRequest.Key<CaptureRequest.Key<Range<Integer>>>) CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, (CaptureRequest.Key<Range<Integer>>) range);
        cameraMetadataNative.set((CaptureRequest.Key<CaptureRequest.Key<Integer>>) CaptureRequest.CONTROL_SCENE_MODE, (CaptureRequest.Key<Integer>) 0);
        cameraMetadataNative.set((CaptureRequest.Key<CaptureRequest.Key<Integer>>) CaptureRequest.STATISTICS_FACE_DETECT_MODE, (CaptureRequest.Key<Integer>) 0);
        cameraMetadataNative.set((CaptureRequest.Key<CaptureRequest.Key<Integer>>) CaptureRequest.FLASH_MODE, (CaptureRequest.Key<Integer>) 0);
        if (i == 2) {
            cameraMetadataNative.set((CaptureRequest.Key<CaptureRequest.Key<Integer>>) CaptureRequest.NOISE_REDUCTION_MODE, (CaptureRequest.Key<Integer>) 2);
        } else {
            cameraMetadataNative.set((CaptureRequest.Key<CaptureRequest.Key<Integer>>) CaptureRequest.NOISE_REDUCTION_MODE, (CaptureRequest.Key<Integer>) 1);
        }
        if (i == 2) {
            cameraMetadataNative.set((CaptureRequest.Key<CaptureRequest.Key<Integer>>) CaptureRequest.COLOR_CORRECTION_ABERRATION_MODE, (CaptureRequest.Key<Integer>) 2);
        } else {
            cameraMetadataNative.set((CaptureRequest.Key<CaptureRequest.Key<Integer>>) CaptureRequest.COLOR_CORRECTION_ABERRATION_MODE, (CaptureRequest.Key<Integer>) 1);
        }
        cameraMetadataNative.set((CaptureRequest.Key<CaptureRequest.Key<Float>>) CaptureRequest.LENS_FOCAL_LENGTH, (CaptureRequest.Key<Float>) Float.valueOf(((float[]) cameraCharacteristics.get(CameraCharacteristics.LENS_INFO_AVAILABLE_FOCAL_LENGTHS))[0]));
        Size[] sizeArr = (Size[]) cameraCharacteristics.get(CameraCharacteristics.JPEG_AVAILABLE_THUMBNAIL_SIZES);
        cameraMetadataNative.set((CaptureRequest.Key<CaptureRequest.Key<Size>>) CaptureRequest.JPEG_THUMBNAIL_SIZE, (CaptureRequest.Key<Size>) (sizeArr.length > 1 ? sizeArr[1] : sizeArr[0]));
        return cameraMetadataNative;
    }

    private static int[] getTagsForKeys(CameraCharacteristics.Key<?>[] keyArr) {
        int[] iArr = new int[keyArr.length];
        for (int i = 0; i < keyArr.length; i++) {
            iArr[i] = keyArr[i].getNativeKey().getTag();
        }
        return iArr;
    }

    private static int[] getTagsForKeys(CaptureRequest.Key<?>[] keyArr) {
        int[] iArr = new int[keyArr.length];
        for (int i = 0; i < keyArr.length; i++) {
            iArr[i] = keyArr[i].getNativeKey().getTag();
        }
        return iArr;
    }

    private static int[] getTagsForKeys(CaptureResult.Key<?>[] keyArr) {
        int[] iArr = new int[keyArr.length];
        for (int i = 0; i < keyArr.length; i++) {
            iArr[i] = keyArr[i].getNativeKey().getTag();
        }
        return iArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String convertAfModeToLegacy(int i, List<String> list) {
        String str = null;
        if (list == null || list.isEmpty()) {
            Log.w(TAG, "No focus modes supported; API1 bug");
            return null;
        }
        switch (i) {
            case 0:
                if (!list.contains(Camera.Parameters.FOCUS_MODE_FIXED)) {
                    str = Camera.Parameters.FOCUS_MODE_INFINITY;
                    break;
                } else {
                    str = Camera.Parameters.FOCUS_MODE_FIXED;
                    break;
                }
            case 1:
                str = "auto";
                break;
            case 2:
                str = Camera.Parameters.FOCUS_MODE_MACRO;
                break;
            case 3:
                str = Camera.Parameters.FOCUS_MODE_CONTINUOUS_VIDEO;
                break;
            case 4:
                str = Camera.Parameters.FOCUS_MODE_CONTINUOUS_PICTURE;
                break;
            case 5:
                str = Camera.Parameters.FOCUS_MODE_EDOF;
                break;
        }
        if (list.contains(str)) {
            return str;
        }
        String str2 = list.get(0);
        Log.w(TAG, String.format("convertAfModeToLegacy - ignoring unsupported mode %d, defaulting to %s", Integer.valueOf(i), str2));
        return str2;
    }
}
