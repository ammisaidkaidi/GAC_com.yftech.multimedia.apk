package com.example.ffmpeg.util;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.SurfaceView;
import android.view.View;

/* loaded from: /home/user/work/dex/classes3.dex */
public class MySurfaceView extends SurfaceView {
    private static final String TAG = "MySurfaceView";
    private int mRatioHeight;
    private int mRatioWidth;

    public MySurfaceView(Context context) {
        this(context, null);
    }

    public MySurfaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mRatioWidth = 0;
        this.mRatioHeight = 0;
    }

    @Override // android.view.SurfaceView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        if (this.mRatioWidth == 0 || this.mRatioHeight == 0) {
            setMeasuredDimension(size, size2);
        } else if (size < (this.mRatioWidth * size2) / this.mRatioHeight) {
            setMeasuredDimension(size, (this.mRatioHeight * size) / this.mRatioWidth);
        } else {
            setMeasuredDimension((this.mRatioWidth * size2) / this.mRatioHeight, size2);
        }
    }

    public void setAspectRatio(int i, int i2) {
        Log.d(TAG, "setAspectRatio() called with: width = [" + i + "], height = [" + i2 + "]");
        if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException("Size cannot be negative.");
        }
        this.mRatioWidth = i;
        this.mRatioHeight = i2;
        requestLayout();
    }
}
