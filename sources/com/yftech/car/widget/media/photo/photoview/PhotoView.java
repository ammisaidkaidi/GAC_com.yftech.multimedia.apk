package com.yftech.car.widget.media.photo.photoview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import com.yftech.car.widget.media.photo.photoview.PhotoViewAttacher;

/* loaded from: /home/user/work/dex/classes3.dex */
public class PhotoView extends AppCompatImageView implements IPhotoView {
    public final PhotoViewAttacher mAttacher;
    private ImageView.ScaleType mPendingScaleType;

    public PhotoView(Context context) {
        this(context, null);
    }

    public PhotoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PhotoView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        super.setScaleType(ImageView.ScaleType.MATRIX);
        this.mAttacher = new PhotoViewAttacher(this);
        if (this.mPendingScaleType != null) {
            setScaleType(this.mPendingScaleType);
            this.mPendingScaleType = null;
        }
    }

    @Override // com.yftech.car.widget.media.photo.photoview.IPhotoView
    public void setPhotoViewRotation(float f) {
        this.mAttacher.setRotationTo(f);
    }

    @Override // com.yftech.car.widget.media.photo.photoview.IPhotoView
    public void setRotationTo(float f) {
        this.mAttacher.setRotationTo(f);
    }

    @Override // com.yftech.car.widget.media.photo.photoview.IPhotoView
    public void setRotationLocation(float f, float f2, float f3) {
        this.mAttacher.setRotationLocation(f, f2, f3);
    }

    @Override // com.yftech.car.widget.media.photo.photoview.IPhotoView
    public void setRotationBy(float f) {
        this.mAttacher.setRotationBy(f);
    }

    @Override // com.yftech.car.widget.media.photo.photoview.IPhotoView
    public boolean canZoom() {
        return this.mAttacher.canZoom();
    }

    @Override // com.yftech.car.widget.media.photo.photoview.IPhotoView
    public RectF getDisplayRect() {
        return this.mAttacher.getDisplayRect();
    }

    @Override // com.yftech.car.widget.media.photo.photoview.IPhotoView
    public Matrix getDisplayMatrix() {
        return this.mAttacher.getDrawMatrix();
    }

    @Override // com.yftech.car.widget.media.photo.photoview.IPhotoView
    public boolean setDisplayMatrix(Matrix matrix) {
        return this.mAttacher.setDisplayMatrix(matrix);
    }

    @Override // com.yftech.car.widget.media.photo.photoview.IPhotoView
    @Deprecated
    public float getMinScale() {
        return getMinimumScale();
    }

    @Override // com.yftech.car.widget.media.photo.photoview.IPhotoView
    public float getMinimumScale() {
        return this.mAttacher.getMinimumScale();
    }

    @Override // com.yftech.car.widget.media.photo.photoview.IPhotoView
    @Deprecated
    public float getMidScale() {
        return getMediumScale();
    }

    @Override // com.yftech.car.widget.media.photo.photoview.IPhotoView
    public float getMediumScale() {
        return this.mAttacher.getMediumScale();
    }

    @Override // com.yftech.car.widget.media.photo.photoview.IPhotoView
    @Deprecated
    public float getMaxScale() {
        return getMaximumScale();
    }

    @Override // com.yftech.car.widget.media.photo.photoview.IPhotoView
    public float getMaximumScale() {
        return this.mAttacher.getMaximumScale();
    }

    @Override // com.yftech.car.widget.media.photo.photoview.IPhotoView
    public float getScale() {
        return this.mAttacher.getScale();
    }

    @Override // com.yftech.car.widget.media.photo.photoview.IPhotoView
    public ImageView.ScaleType getScaleType() {
        return this.mAttacher.getScaleType();
    }

    @Override // com.yftech.car.widget.media.photo.photoview.IPhotoView
    public void setAllowParentInterceptOnEdge(boolean z) {
        this.mAttacher.setAllowParentInterceptOnEdge(z);
    }

    @Override // com.yftech.car.widget.media.photo.photoview.IPhotoView
    @Deprecated
    public void setMinScale(float f) {
        setMinimumScale(f);
    }

    @Override // com.yftech.car.widget.media.photo.photoview.IPhotoView
    public void setMinimumScale(float f) {
        this.mAttacher.setMinimumScale(f);
    }

    @Override // com.yftech.car.widget.media.photo.photoview.IPhotoView
    @Deprecated
    public void setMidScale(float f) {
        setMediumScale(f);
    }

    @Override // com.yftech.car.widget.media.photo.photoview.IPhotoView
    public void setMediumScale(float f) {
        this.mAttacher.setMediumScale(f);
    }

    @Override // com.yftech.car.widget.media.photo.photoview.IPhotoView
    @Deprecated
    public void setMaxScale(float f) {
        setMaximumScale(f);
    }

    @Override // com.yftech.car.widget.media.photo.photoview.IPhotoView
    public void setMaximumScale(float f) {
        this.mAttacher.setMaximumScale(f);
    }

    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        if (this.mAttacher != null) {
            this.mAttacher.update();
        }
    }

    public void setImageResource(int i) {
        super.setImageResource(i);
        if (this.mAttacher != null) {
            this.mAttacher.update();
        }
    }

    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        if (this.mAttacher != null) {
            this.mAttacher.update();
        }
    }

    @Override // com.yftech.car.widget.media.photo.photoview.IPhotoView
    public void setOnMatrixChangeListener(PhotoViewAttacher.OnMatrixChangedListener onMatrixChangedListener) {
        this.mAttacher.setOnMatrixChangeListener(onMatrixChangedListener);
    }

    @Override // com.yftech.car.widget.media.photo.photoview.IPhotoView
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.mAttacher.setOnLongClickListener(onLongClickListener);
    }

    @Override // com.yftech.car.widget.media.photo.photoview.IPhotoView
    public void setOnPhotoTapListener(PhotoViewAttacher.OnPhotoTapListener onPhotoTapListener) {
        this.mAttacher.setOnPhotoTapListener(onPhotoTapListener);
    }

    @Override // com.yftech.car.widget.media.photo.photoview.IPhotoView
    public PhotoViewAttacher.OnPhotoTapListener getOnPhotoTapListener() {
        return this.mAttacher.getOnPhotoTapListener();
    }

    @Override // com.yftech.car.widget.media.photo.photoview.IPhotoView
    public void setOnViewTapListener(PhotoViewAttacher.OnViewTapListener onViewTapListener) {
        this.mAttacher.setOnViewTapListener(onViewTapListener);
    }

    @Override // com.yftech.car.widget.media.photo.photoview.IPhotoView
    public PhotoViewAttacher.OnViewTapListener getOnViewTapListener() {
        return this.mAttacher.getOnViewTapListener();
    }

    @Override // com.yftech.car.widget.media.photo.photoview.IPhotoView
    public void setScale(float f) {
        this.mAttacher.setScale(f);
    }

    @Override // com.yftech.car.widget.media.photo.photoview.IPhotoView
    public void setScale(float f, boolean z) {
        this.mAttacher.setScale(f, z);
    }

    @Override // com.yftech.car.widget.media.photo.photoview.IPhotoView
    public void setScale(float f, float f2, float f3, boolean z) {
        this.mAttacher.setScale(f, f2, f3, z);
    }

    @Override // com.yftech.car.widget.media.photo.photoview.IPhotoView
    public void setScaleType(ImageView.ScaleType scaleType) {
        if (this.mAttacher != null) {
            this.mAttacher.setScaleType(scaleType);
        } else {
            this.mPendingScaleType = scaleType;
        }
    }

    @Override // com.yftech.car.widget.media.photo.photoview.IPhotoView
    public void setZoomable(boolean z) {
        this.mAttacher.setZoomable(z);
    }

    @Override // com.yftech.car.widget.media.photo.photoview.IPhotoView
    public Bitmap getVisibleRectangleBitmap() {
        return this.mAttacher.getVisibleRectangleBitmap();
    }

    @Override // com.yftech.car.widget.media.photo.photoview.IPhotoView
    public void setZoomTransitionDuration(int i) {
        this.mAttacher.setZoomTransitionDuration(i);
    }

    @Override // com.yftech.car.widget.media.photo.photoview.IPhotoView
    public IPhotoView getIPhotoViewImplementation() {
        return this.mAttacher;
    }

    @Override // com.yftech.car.widget.media.photo.photoview.IPhotoView
    public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        this.mAttacher.setOnDoubleTapListener(onDoubleTapListener);
    }

    protected void onDetachedFromWindow() {
        this.mAttacher.cleanup();
        super.onDetachedFromWindow();
    }
}
