package android.hardware.camera2.legacy;

import android.graphics.Rect;
import android.hardware.Camera;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.impl.CameraMetadataNative;
import android.hardware.camera2.legacy.ParameterUtils;
import android.hardware.camera2.params.Face;
import android.hardware.camera2.utils.ParamsUtils;
import android.util.Log;
import android.util.Size;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.Preconditions;
import java.util.ArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public class LegacyFaceDetectMapper {
    private static final boolean DEBUG = false;
    private static String TAG = "LegacyFaceDetectMapper";
    private final Camera mCamera;
    private final boolean mFaceDetectSupported;
    private Camera.Face[] mFaces;
    private Camera.Face[] mFacesPrev;
    private boolean mFaceDetectEnabled = false;
    private boolean mFaceDetectScenePriority = false;
    private boolean mFaceDetectReporting = false;
    private final Object mLock = new Object();

    public LegacyFaceDetectMapper(Camera camera, CameraCharacteristics cameraCharacteristics) {
        this.mCamera = (Camera) Preconditions.checkNotNull(camera, "camera must not be null");
        Preconditions.checkNotNull(cameraCharacteristics, "characteristics must not be null");
        this.mFaceDetectSupported = ArrayUtils.contains((int[]) cameraCharacteristics.get(CameraCharacteristics.STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES), 1);
        if (this.mFaceDetectSupported) {
            this.mCamera.setFaceDetectionListener(new Camera.FaceDetectionListener() { // from class: android.hardware.camera2.legacy.LegacyFaceDetectMapper.1
                @Override // android.hardware.Camera.FaceDetectionListener
                public void onFaceDetection(Camera.Face[] faceArr, Camera camera2) {
                    int length = faceArr == null ? 0 : faceArr.length;
                    synchronized (LegacyFaceDetectMapper.this.mLock) {
                        if (LegacyFaceDetectMapper.this.mFaceDetectEnabled) {
                            LegacyFaceDetectMapper.this.mFaces = faceArr;
                        } else if (length > 0) {
                            Log.d(LegacyFaceDetectMapper.TAG, "onFaceDetection - Ignored some incoming faces sinceface detection was disabled");
                        }
                    }
                }
            });
        }
    }

    public void processFaceDetectMode(CaptureRequest captureRequest, Camera.Parameters parameters) {
        Preconditions.checkNotNull(captureRequest, "captureRequest must not be null");
        int intValue = ((Integer) ParamsUtils.getOrDefault(captureRequest, CaptureRequest.STATISTICS_FACE_DETECT_MODE, 0)).intValue();
        if (intValue != 0 && !this.mFaceDetectSupported) {
            Log.w(TAG, "processFaceDetectMode - Ignoring statistics.faceDetectMode; face detection is not available");
            return;
        }
        int intValue2 = ((Integer) ParamsUtils.getOrDefault(captureRequest, CaptureRequest.CONTROL_SCENE_MODE, 0)).intValue();
        if (intValue2 == 1 && !this.mFaceDetectSupported) {
            Log.w(TAG, "processFaceDetectMode - ignoring control.sceneMode == FACE_PRIORITY; face detection is not available");
            return;
        }
        switch (intValue) {
            case 0:
            case 1:
                break;
            case 2:
                Log.w(TAG, "processFaceDetectMode - statistics.faceDetectMode == FULL unsupported, downgrading to SIMPLE");
                break;
            default:
                Log.w(TAG, "processFaceDetectMode - ignoring unknown statistics.faceDetectMode = " + intValue);
                return;
        }
        boolean z = intValue != 0 || intValue2 == 1;
        synchronized (this.mLock) {
            if (z != this.mFaceDetectEnabled) {
                if (z) {
                    this.mCamera.startFaceDetection();
                } else {
                    this.mCamera.stopFaceDetection();
                    this.mFaces = null;
                }
                this.mFaceDetectEnabled = z;
                this.mFaceDetectScenePriority = intValue2 == 1;
                this.mFaceDetectReporting = intValue != 0;
            }
        }
    }

    public void mapResultFaces(CameraMetadataNative cameraMetadataNative, LegacyRequest legacyRequest) {
        boolean z;
        Camera.Face[] faceArr;
        boolean z2;
        Preconditions.checkNotNull(cameraMetadataNative, "result must not be null");
        Preconditions.checkNotNull(legacyRequest, "legacyRequest must not be null");
        synchronized (this.mLock) {
            z = this.mFaceDetectReporting;
            faceArr = this.mFaceDetectReporting ? this.mFaces : null;
            z2 = this.mFaceDetectScenePriority;
            Camera.Face[] faceArr2 = this.mFacesPrev;
            this.mFacesPrev = faceArr;
        }
        CameraCharacteristics cameraCharacteristics = legacyRequest.characteristics;
        CaptureRequest captureRequest = legacyRequest.captureRequest;
        Size size = legacyRequest.previewSize;
        Camera.Parameters parameters = legacyRequest.parameters;
        Rect rect = (Rect) cameraCharacteristics.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE);
        ParameterUtils.ZoomData convertScalerCropRegion = ParameterUtils.convertScalerCropRegion(rect, (Rect) captureRequest.get(CaptureRequest.SCALER_CROP_REGION), size, parameters);
        ArrayList arrayList = new ArrayList();
        if (faceArr != null) {
            for (Camera.Face face : faceArr) {
                if (face != null) {
                    arrayList.add(ParameterUtils.convertFaceFromLegacy(face, rect, convertScalerCropRegion));
                } else {
                    Log.w(TAG, "mapResultFaces - read NULL face from camera1 device");
                }
            }
        }
        cameraMetadataNative.set((CaptureResult.Key<CaptureResult.Key<Face[]>>) CaptureResult.STATISTICS_FACES, (CaptureResult.Key<Face[]>) arrayList.toArray(new Face[0]));
        cameraMetadataNative.set((CaptureResult.Key<CaptureResult.Key<Integer>>) CaptureResult.STATISTICS_FACE_DETECT_MODE, (CaptureResult.Key<Integer>) Integer.valueOf(z ? 1 : 0));
        if (z2) {
            cameraMetadataNative.set((CaptureResult.Key<CaptureResult.Key<Integer>>) CaptureResult.CONTROL_SCENE_MODE, (CaptureResult.Key<Integer>) 1);
        }
    }
}
