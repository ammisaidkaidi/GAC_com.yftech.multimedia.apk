package com.yftech.car.widget.media.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import androidx.annotation.Nullable;
import com.yftech.car.widget.media.R;

/* loaded from: /home/user/work/dex/classes3.dex */
public class ReflectedImage extends View {
    private static final String TAG = "ReflectedImage";
    private float mReflectedBottomEnd;
    private float mReflectedTopStart;
    private int mReflectedViewId;

    public ReflectedImage(Context context) {
        super(context);
    }

    public ReflectedImage(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ReflectedImage(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ReflectedImage);
        this.mReflectedTopStart = obtainStyledAttributes.getFloat(R.styleable.ReflectedImage_reflected_top_start, 1.0f);
        if (this.mReflectedTopStart > 1.0f) {
            this.mReflectedTopStart = 1.0f;
        } else if (this.mReflectedTopStart < 0.0f) {
            this.mReflectedTopStart = 0.0f;
        }
        this.mReflectedBottomEnd = obtainStyledAttributes.getFloat(R.styleable.ReflectedImage_reflected_bottom_end, 0.0f);
        if (this.mReflectedBottomEnd > 1.0f) {
            this.mReflectedBottomEnd = 1.0f;
        } else if (this.mReflectedBottomEnd < 0.0f) {
            this.mReflectedBottomEnd = 0.0f;
        }
        this.mReflectedViewId = obtainStyledAttributes.getResourceId(R.styleable.ReflectedImage_reflected_view_id, -1);
        Log.d(TAG, "ReflectedImage: mReflectedTopStart==" + this.mReflectedTopStart + ",mReflectedBottomEnd==" + this.mReflectedBottomEnd);
    }

    public int getReflectedViewId() {
        return this.mReflectedViewId;
    }

    public boolean isReflectedViewId(int i) {
        return this.mReflectedViewId == -1 || this.mReflectedViewId == i;
    }

    public void setReflectedImage(View view) {
        setBackground(new BitmapDrawable(getResources(), createReflectedImage(convertViewToBitmap2(view), getHeight())));
    }

    private Bitmap convertViewToBitmap2(View view) {
        Bitmap createBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.ARGB_8888);
        view.draw(new Canvas(createBitmap));
        return createBitmap;
    }

    private Bitmap createReflectedImage(Bitmap bitmap, int i) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (height <= i) {
            return null;
        }
        Matrix matrix = new Matrix();
        matrix.preScale(1.0f, -1.0f);
        Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, height - i, width, i, matrix, true);
        Bitmap createBitmap2 = Bitmap.createBitmap(width, i, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap2);
        canvas.drawBitmap(createBitmap, 0.0f, 0.0f, (Paint) null);
        LinearGradient linearGradient = new LinearGradient(0.0f, 0.0f, 0.0f, createBitmap2.getHeight(), Color.argb((int) ((this.mReflectedTopStart * 255.0f) + 1.6777215E7f), 255, 255, 255), Color.argb((int) (this.mReflectedBottomEnd * 255.0f * 1.6777215E7f), 255, 255, 255), Shader.TileMode.MIRROR);
        Paint paint = new Paint();
        paint.setShader(linearGradient);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
        canvas.drawRect(0.0f, 0.0f, width, createBitmap2.getHeight(), paint);
        return createBitmap2;
    }
}
