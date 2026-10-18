package android.gesture;

import android.graphics.RectF;
import android.util.Log;
import java.io.Closeable;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: /home/user/work/dex/classes.dex */
public final class GestureUtils {
    private static final float NONUNIFORM_SCALE = (float) Math.sqrt(2.0d);
    private static final float SCALING_THRESHOLD = 0.26f;

    private GestureUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void closeStream(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                Log.e(GestureConstants.LOG_TAG, "Could not close stream", e);
            }
        }
    }

    public static float[] spatialSampling(Gesture gesture, int i) {
        return spatialSampling(gesture, i, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0023, code lost:
    
        if (r7 < r8) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0026, code lost:
    
        r7 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0027, code lost:
    
        r8 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0039, code lost:
    
        if (r7 < r8) goto L8;
     */
    /* JADX WARN: Removed duplicated region for block: B:40:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0144  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static float[] spatialSampling(Gesture gesture, int i, boolean z) {
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        float f7 = i - 1;
        float[] fArr = new float[i * i];
        float f8 = 0.0f;
        Arrays.fill(fArr, 0.0f);
        RectF boundingBox = gesture.getBoundingBox();
        float width = boundingBox.width();
        float height = boundingBox.height();
        float f9 = f7 / width;
        float f10 = f7 / height;
        if (!z) {
            float f11 = width / height;
            if (f11 > 1.0f) {
                f11 = 1.0f / f11;
            }
            if (f11 >= SCALING_THRESHOLD) {
                if (f9 > f10) {
                    float f12 = NONUNIFORM_SCALE * f10;
                    if (f12 < f9) {
                        f9 = f12;
                    }
                } else {
                    float f13 = NONUNIFORM_SCALE * f9;
                    if (f13 < f10) {
                        f10 = f13;
                    }
                }
            }
        }
        float f14 = -boundingBox.centerX();
        float f15 = -boundingBox.centerY();
        float f16 = f7 / 2.0f;
        ArrayList<GestureStroke> strokes = gesture.getStrokes();
        int size = strokes.size();
        int i2 = 0;
        while (i2 < size) {
            float[] fArr2 = strokes.get(i2).points;
            int length = fArr2.length;
            float[] fArr3 = new float[length];
            for (int i3 = 0; i3 < length; i3 += 2) {
                fArr3[i3] = ((fArr2[i3] + f14) * f9) + f16;
                int i4 = i3 + 1;
                fArr3[i4] = ((fArr2[i4] + f15) * f10) + f16;
            }
            float f17 = -1.0f;
            int i5 = 0;
            float f18 = -1.0f;
            while (i5 < length) {
                float f19 = fArr3[i5] < f8 ? f8 : fArr3[i5];
                int i6 = i5 + 1;
                float f20 = fArr3[i6] < f8 ? f8 : fArr3[i6];
                float f21 = f19 > f7 ? f7 : f19;
                if (f20 > f7) {
                    f = f7;
                } else {
                    f = f7;
                    f7 = f20;
                }
                plot(f21, f7, fArr, i);
                if (f17 != -1.0f) {
                    if (f17 > f21) {
                        f2 = f15;
                        f3 = f14;
                        float ceil = (float) Math.ceil(f21);
                        f6 = f18;
                        float f22 = (f6 - f7) / (f17 - f21);
                        while (ceil < f17) {
                            plot(ceil, ((ceil - f21) * f22) + f7, fArr, i);
                            ceil += 1.0f;
                            f16 = f16;
                        }
                        f4 = f16;
                    } else {
                        f2 = f15;
                        f3 = f14;
                        f4 = f16;
                        f6 = f18;
                        if (f17 < f21) {
                            f5 = f9;
                            float f23 = (f6 - f7) / (f17 - f21);
                            for (float ceil2 = (float) Math.ceil(f17); ceil2 < f21; ceil2 += 1.0f) {
                                plot(ceil2, ((ceil2 - f21) * f23) + f7, fArr, i);
                            }
                            if (f6 <= f7) {
                                float f24 = (f17 - f21) / (f6 - f7);
                                for (float ceil3 = (float) Math.ceil(f7); ceil3 < f6; ceil3 += 1.0f) {
                                    plot(((ceil3 - f7) * f24) + f21, ceil3, fArr, i);
                                }
                            } else if (f6 < f7) {
                                float f25 = (f17 - f21) / (f6 - f7);
                                for (float ceil4 = (float) Math.ceil(f6); ceil4 < f7; ceil4 += 1.0f) {
                                    plot(((ceil4 - f7) * f25) + f21, ceil4, fArr, i);
                                }
                            }
                        }
                    }
                    f5 = f9;
                    if (f6 <= f7) {
                    }
                } else {
                    f2 = f15;
                    f3 = f14;
                    f4 = f16;
                    f5 = f9;
                }
                i5 += 2;
                f18 = f7;
                f17 = f21;
                f7 = f;
                f14 = f3;
                f15 = f2;
                f16 = f4;
                f9 = f5;
                f8 = 0.0f;
            }
            i2++;
            f14 = f14;
            f8 = 0.0f;
        }
        return fArr;
    }

    private static void plot(float f, float f2, float[] fArr, int i) {
        if (f < 0.0f) {
            f = 0.0f;
        }
        if (f2 < 0.0f) {
            f2 = 0.0f;
        }
        double d = f;
        int floor = (int) Math.floor(d);
        int ceil = (int) Math.ceil(d);
        double d2 = f2;
        int floor2 = (int) Math.floor(d2);
        int ceil2 = (int) Math.ceil(d2);
        if (f == floor && f2 == floor2) {
            int i2 = (ceil2 * i) + ceil;
            if (fArr[i2] < 1.0f) {
                fArr[i2] = 1.0f;
                return;
            }
            return;
        }
        double pow = Math.pow(r4 - f, 2.0d);
        double pow2 = Math.pow(floor2 - f2, 2.0d);
        double pow3 = Math.pow(ceil - f, 2.0d);
        double pow4 = Math.pow(ceil2 - f2, 2.0d);
        float sqrt = (float) Math.sqrt(pow + pow2);
        float sqrt2 = (float) Math.sqrt(pow2 + pow3);
        float sqrt3 = (float) Math.sqrt(pow + pow4);
        float sqrt4 = (float) Math.sqrt(pow3 + pow4);
        float f3 = sqrt + sqrt2 + sqrt3 + sqrt4;
        float f4 = sqrt / f3;
        int i3 = floor2 * i;
        int i4 = i3 + floor;
        if (f4 > fArr[i4]) {
            fArr[i4] = f4;
        }
        float f5 = sqrt2 / f3;
        int i5 = i3 + ceil;
        if (f5 > fArr[i5]) {
            fArr[i5] = f5;
        }
        float f6 = sqrt3 / f3;
        int i6 = ceil2 * i;
        int i7 = floor + i6;
        if (f6 > fArr[i7]) {
            fArr[i7] = f6;
        }
        float f7 = sqrt4 / f3;
        int i8 = i6 + ceil;
        if (f7 > fArr[i8]) {
            fArr[i8] = f7;
        }
    }

    public static float[] temporalSampling(GestureStroke gestureStroke, int i) {
        float f;
        float f2;
        float f3 = gestureStroke.length / (i - 1);
        int i2 = i * 2;
        float[] fArr = new float[i2];
        float[] fArr2 = gestureStroke.points;
        int i3 = 0;
        float f4 = fArr2[0];
        int i4 = 1;
        float f5 = fArr2[1];
        fArr[0] = f4;
        fArr[1] = f5;
        int length = fArr2.length / 2;
        float f6 = Float.MIN_VALUE;
        float f7 = f4;
        float f8 = f5;
        float f9 = Float.MIN_VALUE;
        float f10 = 0.0f;
        int i5 = 2;
        float f11 = Float.MIN_VALUE;
        while (i3 < length) {
            if (f11 == f6) {
                i3++;
                if (i3 >= length) {
                    break;
                }
                int i6 = i3 * 2;
                f = fArr2[i6];
                f2 = fArr2[i6 + i4];
            } else {
                float f12 = f9;
                f = f11;
                f2 = f12;
            }
            float f13 = f - f7;
            float f14 = f2 - f8;
            float f15 = f7;
            float f16 = f10;
            float hypot = (float) Math.hypot(f13, f14);
            f10 = f16 + hypot;
            if (f10 >= f3) {
                float f17 = (f3 - f16) / hypot;
                f7 = f15 + (f13 * f17);
                f8 += f17 * f14;
                fArr[i5] = f7;
                int i7 = i5 + 1;
                fArr[i7] = f8;
                i4 = 1;
                i5 = i7 + 1;
                f10 = 0.0f;
                float f18 = f;
                f9 = f2;
                f11 = f18;
            } else {
                i4 = 1;
                f8 = f2;
                f7 = f;
                f11 = Float.MIN_VALUE;
                f9 = Float.MIN_VALUE;
            }
            f6 = Float.MIN_VALUE;
        }
        float f19 = f7;
        while (i5 < i2) {
            fArr[i5] = f19;
            fArr[i5 + 1] = f8;
            i5 += 2;
        }
        return fArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float[] computeCentroid(float[] fArr) {
        int length = fArr.length;
        float f = 0.0f;
        float f2 = 0.0f;
        int i = 0;
        while (i < length) {
            f += fArr[i];
            int i2 = i + 1;
            f2 += fArr[i2];
            i = i2 + 1;
        }
        float f3 = length;
        return new float[]{(f * 2.0f) / f3, (f2 * 2.0f) / f3};
    }

    private static float[][] computeCoVariance(float[] fArr) {
        float[][] fArr2 = (float[][]) Array.newInstance((Class<?>) float.class, 2, 2);
        fArr2[0][0] = 0.0f;
        fArr2[0][1] = 0.0f;
        fArr2[1][0] = 0.0f;
        fArr2[1][1] = 0.0f;
        int length = fArr.length;
        int i = 0;
        while (i < length) {
            float f = fArr[i];
            int i2 = i + 1;
            float f2 = fArr[i2];
            float[] fArr3 = fArr2[0];
            fArr3[0] = fArr3[0] + (f * f);
            float[] fArr4 = fArr2[0];
            fArr4[1] = fArr4[1] + (f * f2);
            fArr2[1][0] = fArr2[0][1];
            float[] fArr5 = fArr2[1];
            fArr5[1] = fArr5[1] + (f2 * f2);
            i = i2 + 1;
        }
        float[] fArr6 = fArr2[0];
        float f3 = length / 2;
        fArr6[0] = fArr6[0] / f3;
        float[] fArr7 = fArr2[0];
        fArr7[1] = fArr7[1] / f3;
        float[] fArr8 = fArr2[1];
        fArr8[0] = fArr8[0] / f3;
        float[] fArr9 = fArr2[1];
        fArr9[1] = fArr9[1] / f3;
        return fArr2;
    }

    static float computeTotalLength(float[] fArr) {
        int length = fArr.length - 4;
        float f = 0.0f;
        for (int i = 0; i < length; i += 2) {
            f = (float) (f + Math.hypot(fArr[r3] - fArr[i], fArr[i + 3] - fArr[i + 1]));
        }
        return f;
    }

    static float computeStraightness(float[] fArr) {
        return ((float) Math.hypot(fArr[2] - fArr[0], fArr[3] - fArr[1])) / computeTotalLength(fArr);
    }

    static float computeStraightness(float[] fArr, float f) {
        return ((float) Math.hypot(fArr[2] - fArr[0], fArr[3] - fArr[1])) / f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float squaredEuclideanDistance(float[] fArr, float[] fArr2) {
        int length = fArr.length;
        float f = 0.0f;
        for (int i = 0; i < length; i++) {
            float f2 = fArr[i] - fArr2[i];
            f += f2 * f2;
        }
        return f / length;
    }

    static float cosineDistance(float[] fArr, float[] fArr2) {
        int length = fArr.length;
        float f = 0.0f;
        for (int i = 0; i < length; i++) {
            f += fArr[i] * fArr2[i];
        }
        return (float) Math.acos(f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float minimumCosineDistance(float[] fArr, float[] fArr2, int i) {
        int length = fArr.length;
        float f = 0.0f;
        float f2 = 0.0f;
        for (int i2 = 0; i2 < length; i2 += 2) {
            int i3 = i2 + 1;
            f += (fArr[i2] * fArr2[i2]) + (fArr[i3] * fArr2[i3]);
            f2 += (fArr[i2] * fArr2[i3]) - (fArr[i3] * fArr2[i2]);
        }
        if (f == 0.0f) {
            return 1.5707964f;
        }
        double d = f2 / f;
        double atan = Math.atan(d);
        if (i > 2 && Math.abs(atan) >= 3.141592653589793d / i) {
            return (float) Math.acos(f);
        }
        double cos = Math.cos(atan);
        return (float) Math.acos((f * cos) + (f2 * d * cos));
    }

    public static OrientedBoundingBox computeOrientedBoundingBox(ArrayList<GesturePoint> arrayList) {
        int size = arrayList.size();
        float[] fArr = new float[size * 2];
        for (int i = 0; i < size; i++) {
            GesturePoint gesturePoint = arrayList.get(i);
            int i2 = i * 2;
            fArr[i2] = gesturePoint.x;
            fArr[i2 + 1] = gesturePoint.y;
        }
        return computeOrientedBoundingBox(fArr, computeCentroid(fArr));
    }

    public static OrientedBoundingBox computeOrientedBoundingBox(float[] fArr) {
        int length = fArr.length;
        float[] fArr2 = new float[length];
        for (int i = 0; i < length; i++) {
            fArr2[i] = fArr[i];
        }
        return computeOrientedBoundingBox(fArr2, computeCentroid(fArr2));
    }

    private static OrientedBoundingBox computeOrientedBoundingBox(float[] fArr, float[] fArr2) {
        float atan2;
        translate(fArr, -fArr2[0], -fArr2[1]);
        float[] computeOrientation = computeOrientation(computeCoVariance(fArr));
        if (computeOrientation[0] == 0.0f && computeOrientation[1] == 0.0f) {
            atan2 = -1.5707964f;
        } else {
            atan2 = (float) Math.atan2(computeOrientation[1], computeOrientation[0]);
            rotate(fArr, -atan2);
        }
        int length = fArr.length;
        float f = Float.MAX_VALUE;
        float f2 = Float.MIN_VALUE;
        float f3 = Float.MIN_VALUE;
        float f4 = Float.MAX_VALUE;
        int i = 0;
        while (i < length) {
            if (fArr[i] < f) {
                f = fArr[i];
            }
            if (fArr[i] > f2) {
                f2 = fArr[i];
            }
            int i2 = i + 1;
            if (fArr[i2] < f4) {
                f4 = fArr[i2];
            }
            if (fArr[i2] > f3) {
                f3 = fArr[i2];
            }
            i = i2 + 1;
        }
        return new OrientedBoundingBox((float) ((atan2 * 180.0f) / 3.141592653589793d), fArr2[0], fArr2[1], f2 - f, f3 - f4);
    }

    private static float[] computeOrientation(float[][] fArr) {
        float[] fArr2 = new float[2];
        if (fArr[0][1] == 0.0f || fArr[1][0] == 0.0f) {
            fArr2[0] = 1.0f;
            fArr2[1] = 0.0f;
        }
        float f = ((-fArr[0][0]) - fArr[1][1]) / 2.0f;
        float sqrt = (float) Math.sqrt(Math.pow(f, 2.0d) - ((fArr[0][0] * fArr[1][1]) - (fArr[0][1] * fArr[1][0])));
        float f2 = -f;
        float f3 = f2 + sqrt;
        float f4 = f2 - sqrt;
        if (f3 == f4) {
            fArr2[0] = 0.0f;
            fArr2[1] = 0.0f;
        } else {
            if (f3 > f4) {
                f4 = f3;
            }
            fArr2[0] = 1.0f;
            fArr2[1] = (f4 - fArr[0][0]) / fArr[0][1];
        }
        return fArr2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float[] rotate(float[] fArr, float f) {
        double d = f;
        float cos = (float) Math.cos(d);
        float sin = (float) Math.sin(d);
        int length = fArr.length;
        for (int i = 0; i < length; i += 2) {
            int i2 = i + 1;
            float f2 = (fArr[i] * cos) - (fArr[i2] * sin);
            float f3 = (fArr[i] * sin) + (fArr[i2] * cos);
            fArr[i] = f2;
            fArr[i2] = f3;
        }
        return fArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float[] translate(float[] fArr, float f, float f2) {
        int length = fArr.length;
        for (int i = 0; i < length; i += 2) {
            fArr[i] = fArr[i] + f;
            int i2 = i + 1;
            fArr[i2] = fArr[i2] + f2;
        }
        return fArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float[] scale(float[] fArr, float f, float f2) {
        int length = fArr.length;
        for (int i = 0; i < length; i += 2) {
            fArr[i] = fArr[i] * f;
            int i2 = i + 1;
            fArr[i2] = fArr[i2] * f2;
        }
        return fArr;
    }
}
