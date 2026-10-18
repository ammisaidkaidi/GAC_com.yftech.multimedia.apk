package com.yftech.car.widget.media.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import com.yftech.car.widget.media.R;

/* loaded from: /home/user/work/dex/classes3.dex */
public class MediaImageView extends AppCompatImageView {
    private static final int BODER_RADIUS_DEFAULT = 10;
    private static final String STATE_BORDER_RADIUS = "state_border_radius";
    private static final String STATE_INSTANCE = "state_instance";
    private static final String STATE_TYPE = "state_type";
    private static final String TAG = "RoundImageView";
    public static final int TYPE_CIRCLE = 0;
    public static final int TYPE_ROUND = 1;
    private final int[] mAlbumPicturesExistHideId;
    private final int[] mAlbumPicturesExistShowId;
    private final int[] mAlbumPicturesNoHideId;
    private final int[] mAlbumPicturesNoShowId;
    private Paint mBitmapPaint;
    private BitmapShader mBitmapShader;
    private int mBorderRadius;
    private int mDirectoryDrawableId;
    private Drawable mDrawable;
    private int mFailedResDrawable;
    private int mLoadFileBitmap;
    private Matrix mMatrix;
    private int mRadius;
    private RectF mRoundRect;
    private int mWidth;
    private int type;

    public MediaImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mAlbumPicturesExistShowId = new int[5];
        this.mAlbumPicturesExistHideId = new int[5];
        this.mAlbumPicturesNoShowId = new int[5];
        this.mAlbumPicturesNoHideId = new int[5];
        this.mMatrix = new Matrix();
        this.mBitmapPaint = new Paint();
        this.mBitmapPaint.setAntiAlias(true);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MediaImageView);
            this.mBorderRadius = obtainStyledAttributes.getDimensionPixelSize(R.styleable.MediaImageView_borderRadius, (int) TypedValue.applyDimension(1, 10.0f, getResources().getDisplayMetrics()));
            this.type = obtainStyledAttributes.getInt(R.styleable.MediaImageView_border_radius_type, 0);
            this.mDirectoryDrawableId = obtainStyledAttributes.getResourceId(R.styleable.MediaImageView_directory_drawable, -1);
            this.mFailedResDrawable = obtainStyledAttributes.getResourceId(R.styleable.MediaImageView_failed_res_drawable, -1);
            this.mLoadFileBitmap = obtainStyledAttributes.getInt(R.styleable.MediaImageView_load_file_bitmap, 0);
            this.mAlbumPicturesExistShowId[0] = obtainStyledAttributes.getResourceId(R.styleable.MediaImageView_album_pictures_exist_show1_id, -1);
            this.mAlbumPicturesExistShowId[1] = obtainStyledAttributes.getResourceId(R.styleable.MediaImageView_album_pictures_exist_show2_id, -1);
            this.mAlbumPicturesExistShowId[2] = obtainStyledAttributes.getResourceId(R.styleable.MediaImageView_album_pictures_exist_show3_id, -1);
            this.mAlbumPicturesExistShowId[3] = obtainStyledAttributes.getResourceId(R.styleable.MediaImageView_album_pictures_exist_show4_id, -1);
            this.mAlbumPicturesExistShowId[4] = obtainStyledAttributes.getResourceId(R.styleable.MediaImageView_album_pictures_exist_show5_id, -1);
            this.mAlbumPicturesExistHideId[0] = obtainStyledAttributes.getResourceId(R.styleable.MediaImageView_album_pictures_exist_hide1_id, -1);
            this.mAlbumPicturesExistHideId[1] = obtainStyledAttributes.getResourceId(R.styleable.MediaImageView_album_pictures_exist_hide2_id, -1);
            this.mAlbumPicturesExistHideId[2] = obtainStyledAttributes.getResourceId(R.styleable.MediaImageView_album_pictures_exist_hide3_id, -1);
            this.mAlbumPicturesExistHideId[3] = obtainStyledAttributes.getResourceId(R.styleable.MediaImageView_album_pictures_exist_hide4_id, -1);
            this.mAlbumPicturesExistHideId[4] = obtainStyledAttributes.getResourceId(R.styleable.MediaImageView_album_pictures_exist_hide5_id, -1);
            this.mAlbumPicturesNoShowId[0] = obtainStyledAttributes.getResourceId(R.styleable.MediaImageView_album_pictures_no_show1_id, -1);
            this.mAlbumPicturesNoShowId[1] = obtainStyledAttributes.getResourceId(R.styleable.MediaImageView_album_pictures_no_show2_id, -1);
            this.mAlbumPicturesNoShowId[2] = obtainStyledAttributes.getResourceId(R.styleable.MediaImageView_album_pictures_no_show3_id, -1);
            this.mAlbumPicturesNoShowId[3] = obtainStyledAttributes.getResourceId(R.styleable.MediaImageView_album_pictures_no_show4_id, -1);
            this.mAlbumPicturesNoShowId[4] = obtainStyledAttributes.getResourceId(R.styleable.MediaImageView_album_pictures_no_show5_id, -1);
            this.mAlbumPicturesNoHideId[0] = obtainStyledAttributes.getResourceId(R.styleable.MediaImageView_album_pictures_no_hide1_id, -1);
            this.mAlbumPicturesNoHideId[1] = obtainStyledAttributes.getResourceId(R.styleable.MediaImageView_album_pictures_no_hide2_id, -1);
            this.mAlbumPicturesNoHideId[2] = obtainStyledAttributes.getResourceId(R.styleable.MediaImageView_album_pictures_no_hide3_id, -1);
            this.mAlbumPicturesNoHideId[3] = obtainStyledAttributes.getResourceId(R.styleable.MediaImageView_album_pictures_no_hide4_id, -1);
            this.mAlbumPicturesNoHideId[4] = obtainStyledAttributes.getResourceId(R.styleable.MediaImageView_album_pictures_no_hide5_id, -1);
            obtainStyledAttributes.recycle();
        }
    }

    public MediaImageView(Context context) {
        this(context, null);
    }

    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.type == 0) {
            this.mWidth = Math.min(getMeasuredWidth(), getMeasuredHeight());
            this.mRadius = this.mWidth / 2;
            setMeasuredDimension(this.mWidth, this.mWidth);
        }
    }

    public void setDirectoryDrawable() {
        setTag("null");
        if (this.mDirectoryDrawableId != -1) {
            setImageResource(this.mDirectoryDrawableId);
        } else {
            setImageDrawable(this.mDrawable);
        }
    }

    public void setFailedResDrawable() {
        if (this.mFailedResDrawable != -1) {
            setImageResource(this.mFailedResDrawable);
        } else if (this.mDrawable != null) {
            setImageDrawable(this.mDrawable);
        }
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mDrawable = getDrawable();
    }

    public Drawable getImageDrawable() {
        return this.mDrawable;
    }

    public int getLoadFileBitmap() {
        return this.mLoadFileBitmap;
    }

    private void setUpShader() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        Bitmap drawableToBitamp = drawableToBitamp(drawable);
        this.mBitmapShader = new BitmapShader(drawableToBitamp, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
        float f = 1.0f;
        if (this.type == 0) {
            f = (this.mWidth * 1.0f) / Math.min(drawableToBitamp.getWidth(), drawableToBitamp.getHeight());
        } else if (this.type == 1 && (drawableToBitamp.getWidth() != getWidth() || drawableToBitamp.getHeight() != getHeight())) {
            f = Math.max((getWidth() * 1.0f) / drawableToBitamp.getWidth(), (getHeight() * 1.0f) / drawableToBitamp.getHeight());
        }
        this.mMatrix.setScale(f, f);
        this.mBitmapShader.setLocalMatrix(this.mMatrix);
        this.mBitmapPaint.setShader(this.mBitmapShader);
    }

    protected void onDraw(Canvas canvas) {
        if (getDrawable() == null) {
            return;
        }
        setUpShader();
        if (this.type == 1) {
            canvas.drawRoundRect(this.mRoundRect, this.mBorderRadius, this.mBorderRadius, this.mBitmapPaint);
        } else {
            canvas.drawCircle(this.mRadius, this.mRadius, this.mRadius, this.mBitmapPaint);
        }
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (this.type == 1) {
            this.mRoundRect = new RectF(0.0f, 0.0f, i, i2);
        }
    }

    private Bitmap drawableToBitamp(Drawable drawable) {
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        Bitmap createBitmap = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        drawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
        drawable.draw(canvas);
        return createBitmap;
    }

    public void setBorderRadius(int i) {
        int dp2px = dp2px(i);
        if (this.mBorderRadius != dp2px) {
            this.mBorderRadius = dp2px;
            invalidate();
        }
    }

    public void setType(int i) {
        if (this.type != i) {
            this.type = i;
            if (this.type != 1 && this.type != 0) {
                this.type = 0;
            }
            requestLayout();
        }
    }

    public void setAlbumPicturesExist(View view, boolean z) {
        int i = 0;
        if (z) {
            for (int i2 : this.mAlbumPicturesExistShowId) {
                if (i2 != -1) {
                    view.findViewById(i2).setVisibility(0);
                }
            }
            int[] iArr = this.mAlbumPicturesExistHideId;
            int length = iArr.length;
            while (i < length) {
                int i3 = iArr[i];
                if (i3 != -1) {
                    view.findViewById(i3).setVisibility(4);
                }
                i++;
            }
            return;
        }
        for (int i4 : this.mAlbumPicturesNoShowId) {
            if (i4 != -1) {
                view.findViewById(i4).setVisibility(0);
            }
        }
        int[] iArr2 = this.mAlbumPicturesNoHideId;
        int length2 = iArr2.length;
        while (i < length2) {
            int i5 = iArr2[i];
            if (i5 != -1) {
                view.findViewById(i5).setVisibility(4);
            }
            i++;
        }
    }

    public int dp2px(int i) {
        return (int) TypedValue.applyDimension(1, i, getResources().getDisplayMetrics());
    }
}
