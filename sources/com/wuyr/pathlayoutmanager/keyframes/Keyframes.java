package com.wuyr.pathlayoutmanager.keyframes;

import android.graphics.Path;
import android.graphics.PathMeasure;
import androidx.annotation.FloatRange;

/* loaded from: /home/user/work/dex/classes3.dex */
public class Keyframes {
    private static final float PRECISION = 0.5f;
    private float[] mAngle;
    private float mMaxX;
    private float mMaxY;
    private int mNumPoints;
    private PosTan mTemp;
    private float[] mX;
    private float[] mY;

    private float fixAngle(float f) {
        if (f < 0.0f) {
            f += 360.0f;
        }
        return f > 360.0f ? f % 360.0f : f;
    }

    public Keyframes(Path path) {
        initPath(path);
        this.mTemp = new PosTan();
    }

    private void initPath(Path path) {
        if (path == null || path.isEmpty()) {
            throw new NullPointerException("path is empty!");
        }
        PathMeasure pathMeasure = new PathMeasure(path, false);
        this.mX = new float[0];
        this.mY = new float[0];
        this.mAngle = new float[0];
        do {
            float length = pathMeasure.getLength();
            int i = ((int) (length / PRECISION)) + 1;
            float[] fArr = new float[i];
            float[] fArr2 = new float[i];
            float[] fArr3 = new float[i];
            float[] fArr4 = new float[2];
            float[] fArr5 = new float[2];
            for (int i2 = 0; i2 < i; i2++) {
                pathMeasure.getPosTan((i2 * length) / (i - 1), fArr4, fArr5);
                if (fArr4[0] > this.mMaxX) {
                    this.mMaxX = fArr4[0];
                }
                if (fArr4[1] > this.mMaxY) {
                    this.mMaxY = fArr4[1];
                }
                fArr[i2] = fArr4[0];
                fArr2[i2] = fArr4[1];
                fArr3[i2] = fixAngle((float) ((Math.atan2(fArr5[1], fArr5[0]) * 180.0d) / 3.141592653589793d));
            }
            this.mNumPoints += i;
            float[] fArr6 = new float[this.mX.length + fArr.length];
            System.arraycopy(this.mX, 0, fArr6, 0, this.mX.length);
            System.arraycopy(fArr, 0, fArr6, this.mX.length, fArr.length);
            this.mX = fArr6;
            float[] fArr7 = new float[this.mY.length + fArr2.length];
            System.arraycopy(this.mY, 0, fArr7, 0, this.mY.length);
            System.arraycopy(fArr2, 0, fArr7, this.mY.length, fArr2.length);
            this.mY = fArr7;
            float[] fArr8 = new float[this.mAngle.length + fArr3.length];
            System.arraycopy(this.mAngle, 0, fArr8, 0, this.mAngle.length);
            System.arraycopy(fArr3, 0, fArr8, this.mAngle.length, fArr3.length);
            this.mAngle = fArr8;
        } while (pathMeasure.nextContour());
    }

    public int getMaxX() {
        return (int) this.mMaxX;
    }

    public int getMaxY() {
        return (int) this.mMaxY;
    }

    public PosTan getValue(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        if (f >= 1.0f || f < 0.0f) {
            return null;
        }
        int i = (int) (this.mNumPoints * f);
        this.mTemp.set(this.mX[i], this.mY[i], this.mAngle[i]);
        return this.mTemp;
    }

    public PosTan getValue(int i) {
        this.mTemp.set(this.mX[i], this.mY[i], this.mAngle[i]);
        return this.mTemp;
    }

    public int getPathLength() {
        return this.mNumPoints / 2;
    }

    public void release() {
        this.mX = null;
        this.mY = null;
        this.mAngle = null;
        this.mTemp = null;
    }
}
