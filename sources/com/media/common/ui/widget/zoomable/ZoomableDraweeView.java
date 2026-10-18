package com.media.common.ui.widget.zoomable;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import androidx.core.view.ScrollingView;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.logging.FLog;
import com.facebook.drawee.controller.AbstractDraweeController;
import com.facebook.drawee.controller.BaseControllerListener;
import com.facebook.drawee.controller.ControllerListener;
import com.facebook.drawee.drawable.ScalingUtils;
import com.facebook.drawee.generic.GenericDraweeHierarchy;
import com.facebook.drawee.generic.GenericDraweeHierarchyBuilder;
import com.facebook.drawee.generic.GenericDraweeHierarchyInflater;
import com.facebook.drawee.interfaces.DraweeController;
import com.facebook.drawee.view.DraweeView;
import com.media.common.ui.widget.zoomable.ZoomableController;
import javax.annotation.Nullable;

/* loaded from: /home/user/work/dex/classes3.dex */
public class ZoomableDraweeView extends DraweeView<GenericDraweeHierarchy> implements ScrollingView {
    private static final float HUGE_IMAGE_SCALE_FACTOR_THRESHOLD = 1.1f;
    private static final Class<?> TAG = ZoomableDraweeView.class;
    private boolean mAllowTouchInterceptionWhileZoomed;
    private final ControllerListener mControllerListener;

    @Nullable
    private DraweeController mHugeImageController;
    private final RectF mImageBounds;
    private boolean mIsDialtoneEnabled;
    private GestureDetector mTapGestureDetector;
    private final GestureListenerWrapper mTapListenerWrapper;
    private final RectF mViewBounds;
    private ZoomableController mZoomableController;
    private final ZoomableController.Listener mZoomableListener;
    private boolean mZoomingEnabled;

    public ZoomableDraweeView(Context context, GenericDraweeHierarchy genericDraweeHierarchy) {
        super(context);
        this.mImageBounds = new RectF();
        this.mViewBounds = new RectF();
        this.mAllowTouchInterceptionWhileZoomed = true;
        this.mIsDialtoneEnabled = false;
        this.mZoomingEnabled = true;
        this.mControllerListener = new BaseControllerListener<Object>() { // from class: com.media.common.ui.widget.zoomable.ZoomableDraweeView.1
            @Override // com.facebook.drawee.controller.BaseControllerListener, com.facebook.drawee.controller.ControllerListener
            public void onFinalImageSet(String str, @Nullable Object obj, @Nullable Animatable animatable) {
                ZoomableDraweeView.this.onFinalImageSet();
            }

            @Override // com.facebook.drawee.controller.BaseControllerListener, com.facebook.drawee.controller.ControllerListener
            public void onRelease(String str) {
                ZoomableDraweeView.this.onRelease();
            }
        };
        this.mZoomableListener = new ZoomableController.Listener() { // from class: com.media.common.ui.widget.zoomable.ZoomableDraweeView.2
            @Override // com.media.common.ui.widget.zoomable.ZoomableController.Listener
            public void onTransformBegin(Matrix matrix) {
            }

            @Override // com.media.common.ui.widget.zoomable.ZoomableController.Listener
            public void onTransformEnd(Matrix matrix) {
            }

            @Override // com.media.common.ui.widget.zoomable.ZoomableController.Listener
            public void onTransformChanged(Matrix matrix) {
                ZoomableDraweeView.this.onTransformChanged(matrix);
            }
        };
        this.mTapListenerWrapper = new GestureListenerWrapper();
        setHierarchy(genericDraweeHierarchy);
        init();
    }

    public ZoomableDraweeView(Context context) {
        super(context);
        this.mImageBounds = new RectF();
        this.mViewBounds = new RectF();
        this.mAllowTouchInterceptionWhileZoomed = true;
        this.mIsDialtoneEnabled = false;
        this.mZoomingEnabled = true;
        this.mControllerListener = new BaseControllerListener<Object>() { // from class: com.media.common.ui.widget.zoomable.ZoomableDraweeView.1
            @Override // com.facebook.drawee.controller.BaseControllerListener, com.facebook.drawee.controller.ControllerListener
            public void onFinalImageSet(String str, @Nullable Object obj, @Nullable Animatable animatable) {
                ZoomableDraweeView.this.onFinalImageSet();
            }

            @Override // com.facebook.drawee.controller.BaseControllerListener, com.facebook.drawee.controller.ControllerListener
            public void onRelease(String str) {
                ZoomableDraweeView.this.onRelease();
            }
        };
        this.mZoomableListener = new ZoomableController.Listener() { // from class: com.media.common.ui.widget.zoomable.ZoomableDraweeView.2
            @Override // com.media.common.ui.widget.zoomable.ZoomableController.Listener
            public void onTransformBegin(Matrix matrix) {
            }

            @Override // com.media.common.ui.widget.zoomable.ZoomableController.Listener
            public void onTransformEnd(Matrix matrix) {
            }

            @Override // com.media.common.ui.widget.zoomable.ZoomableController.Listener
            public void onTransformChanged(Matrix matrix) {
                ZoomableDraweeView.this.onTransformChanged(matrix);
            }
        };
        this.mTapListenerWrapper = new GestureListenerWrapper();
        inflateHierarchy(context, null);
        init();
    }

    public ZoomableDraweeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mImageBounds = new RectF();
        this.mViewBounds = new RectF();
        this.mAllowTouchInterceptionWhileZoomed = true;
        this.mIsDialtoneEnabled = false;
        this.mZoomingEnabled = true;
        this.mControllerListener = new BaseControllerListener<Object>() { // from class: com.media.common.ui.widget.zoomable.ZoomableDraweeView.1
            @Override // com.facebook.drawee.controller.BaseControllerListener, com.facebook.drawee.controller.ControllerListener
            public void onFinalImageSet(String str, @Nullable Object obj, @Nullable Animatable animatable) {
                ZoomableDraweeView.this.onFinalImageSet();
            }

            @Override // com.facebook.drawee.controller.BaseControllerListener, com.facebook.drawee.controller.ControllerListener
            public void onRelease(String str) {
                ZoomableDraweeView.this.onRelease();
            }
        };
        this.mZoomableListener = new ZoomableController.Listener() { // from class: com.media.common.ui.widget.zoomable.ZoomableDraweeView.2
            @Override // com.media.common.ui.widget.zoomable.ZoomableController.Listener
            public void onTransformBegin(Matrix matrix) {
            }

            @Override // com.media.common.ui.widget.zoomable.ZoomableController.Listener
            public void onTransformEnd(Matrix matrix) {
            }

            @Override // com.media.common.ui.widget.zoomable.ZoomableController.Listener
            public void onTransformChanged(Matrix matrix) {
                ZoomableDraweeView.this.onTransformChanged(matrix);
            }
        };
        this.mTapListenerWrapper = new GestureListenerWrapper();
        inflateHierarchy(context, attributeSet);
        init();
    }

    public ZoomableDraweeView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mImageBounds = new RectF();
        this.mViewBounds = new RectF();
        this.mAllowTouchInterceptionWhileZoomed = true;
        this.mIsDialtoneEnabled = false;
        this.mZoomingEnabled = true;
        this.mControllerListener = new BaseControllerListener<Object>() { // from class: com.media.common.ui.widget.zoomable.ZoomableDraweeView.1
            @Override // com.facebook.drawee.controller.BaseControllerListener, com.facebook.drawee.controller.ControllerListener
            public void onFinalImageSet(String str, @Nullable Object obj, @Nullable Animatable animatable) {
                ZoomableDraweeView.this.onFinalImageSet();
            }

            @Override // com.facebook.drawee.controller.BaseControllerListener, com.facebook.drawee.controller.ControllerListener
            public void onRelease(String str) {
                ZoomableDraweeView.this.onRelease();
            }
        };
        this.mZoomableListener = new ZoomableController.Listener() { // from class: com.media.common.ui.widget.zoomable.ZoomableDraweeView.2
            @Override // com.media.common.ui.widget.zoomable.ZoomableController.Listener
            public void onTransformBegin(Matrix matrix) {
            }

            @Override // com.media.common.ui.widget.zoomable.ZoomableController.Listener
            public void onTransformEnd(Matrix matrix) {
            }

            @Override // com.media.common.ui.widget.zoomable.ZoomableController.Listener
            public void onTransformChanged(Matrix matrix) {
                ZoomableDraweeView.this.onTransformChanged(matrix);
            }
        };
        this.mTapListenerWrapper = new GestureListenerWrapper();
        inflateHierarchy(context, attributeSet);
        init();
    }

    protected void inflateHierarchy(Context context, @Nullable AttributeSet attributeSet) {
        GenericDraweeHierarchyBuilder actualImageScaleType = new GenericDraweeHierarchyBuilder(context.getResources()).setActualImageScaleType(ScalingUtils.ScaleType.FIT_CENTER);
        GenericDraweeHierarchyInflater.updateBuilder(actualImageScaleType, context, attributeSet);
        setAspectRatio(actualImageScaleType.getDesiredAspectRatio());
        setHierarchy(actualImageScaleType.build());
    }

    private void init() {
        this.mZoomableController = createZoomableController();
        this.mZoomableController.setListener(this.mZoomableListener);
        this.mTapGestureDetector = new GestureDetector(getContext(), this.mTapListenerWrapper);
    }

    public void setIsDialtoneEnabled(boolean z) {
        this.mIsDialtoneEnabled = z;
    }

    protected void getImageBounds(RectF rectF) {
        getHierarchy().getActualImageBounds(rectF);
    }

    protected void getLimitBounds(RectF rectF) {
        rectF.set(0.0f, 0.0f, getWidth(), getHeight());
    }

    public void setZoomableController(ZoomableController zoomableController) {
        Preconditions.checkNotNull(zoomableController);
        this.mZoomableController.setListener(null);
        this.mZoomableController = zoomableController;
        this.mZoomableController.setListener(this.mZoomableListener);
    }

    public ZoomableController getZoomableController() {
        return this.mZoomableController;
    }

    public boolean allowsTouchInterceptionWhileZoomed() {
        return this.mAllowTouchInterceptionWhileZoomed;
    }

    public void setAllowTouchInterceptionWhileZoomed(boolean z) {
        this.mAllowTouchInterceptionWhileZoomed = z;
    }

    public void setTapListener(GestureDetector.SimpleOnGestureListener simpleOnGestureListener) {
        this.mTapListenerWrapper.setListener(simpleOnGestureListener);
    }

    public void setIsLongpressEnabled(boolean z) {
        this.mTapGestureDetector.setIsLongpressEnabled(z);
    }

    public void setZoomingEnabled(boolean z) {
        this.mZoomingEnabled = z;
        this.mZoomableController.setEnabled(false);
    }

    @Override // com.facebook.drawee.view.DraweeView
    public void setController(@Nullable DraweeController draweeController) {
        setControllers(draweeController, null);
    }

    public void setControllers(@Nullable DraweeController draweeController, @Nullable DraweeController draweeController2) {
        setControllersInternal(null, null);
        this.mZoomableController.setEnabled(false);
        setControllersInternal(draweeController, draweeController2);
    }

    private void setControllersInternal(@Nullable DraweeController draweeController, @Nullable DraweeController draweeController2) {
        removeControllerListener(getController());
        addControllerListener(draweeController);
        this.mHugeImageController = draweeController2;
        super.setController(draweeController);
    }

    private void maybeSetHugeImageController() {
        if (this.mHugeImageController == null || this.mZoomableController.getScaleFactor() <= HUGE_IMAGE_SCALE_FACTOR_THRESHOLD) {
            return;
        }
        setControllersInternal(this.mHugeImageController, null);
    }

    private void removeControllerListener(DraweeController draweeController) {
        if (draweeController instanceof AbstractDraweeController) {
            ((AbstractDraweeController) draweeController).removeControllerListener(this.mControllerListener);
        }
    }

    private void addControllerListener(DraweeController draweeController) {
        if (draweeController instanceof AbstractDraweeController) {
            ((AbstractDraweeController) draweeController).addControllerListener(this.mControllerListener);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        Object callerContext;
        int save = canvas.save();
        canvas.concat(this.mZoomableController.getTransform());
        try {
            super.onDraw(canvas);
            canvas.restoreToCount(save);
        } catch (Exception e) {
            DraweeController controller = getController();
            if (controller != null && (controller instanceof AbstractDraweeController) && (callerContext = ((AbstractDraweeController) controller).getCallerContext()) != null) {
                throw new RuntimeException(String.format("Exception in onDraw, callerContext=%s", callerContext.toString()), e);
            }
            throw e;
        }
    }

    @Override // com.facebook.drawee.view.DraweeView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        FLog.v(getLogTag(), "onTouchEvent: %d, view %x, received", Integer.valueOf(actionMasked), Integer.valueOf(hashCode()));
        if (!this.mIsDialtoneEnabled && this.mTapGestureDetector.onTouchEvent(motionEvent)) {
            FLog.v(getLogTag(), "onTouchEvent: %d, view %x, handled by tap gesture detector", Integer.valueOf(actionMasked), Integer.valueOf(hashCode()));
            return true;
        }
        if (!this.mIsDialtoneEnabled && this.mZoomableController.onTouchEvent(motionEvent)) {
            FLog.v(getLogTag(), "onTouchEvent: %d, view %x, handled by zoomable controller", Integer.valueOf(actionMasked), Integer.valueOf(hashCode()));
            if (!this.mAllowTouchInterceptionWhileZoomed && !this.mZoomableController.isIdentity()) {
                getParent().requestDisallowInterceptTouchEvent(true);
            }
            if (((motionEvent.getAction() & 255) == 6 || (motionEvent.getAction() & 255) == 1) && this.mZoomableController != null && this.mZoomableController.getScaleFactor() < 1.0f) {
                AbstractAnimatedZoomableController abstractAnimatedZoomableController = (AbstractAnimatedZoomableController) getZoomableController();
                PointF pointF = new PointF(motionEvent.getX(), motionEvent.getY());
                abstractAnimatedZoomableController.zoomToPoint(1.0f, abstractAnimatedZoomableController.mapViewToImage(pointF), pointF, 7, 300L, null);
            }
            return true;
        }
        if (super.onTouchEvent(motionEvent)) {
            FLog.v(getLogTag(), "onTouchEvent: %d, view %x, handled by the super", Integer.valueOf(actionMasked), Integer.valueOf(hashCode()));
            return true;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.setAction(3);
        this.mTapGestureDetector.onTouchEvent(obtain);
        this.mZoomableController.onTouchEvent(obtain);
        obtain.recycle();
        return false;
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public int computeHorizontalScrollRange() {
        return this.mZoomableController.computeHorizontalScrollRange();
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public int computeHorizontalScrollOffset() {
        return this.mZoomableController.computeHorizontalScrollOffset();
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public int computeHorizontalScrollExtent() {
        return this.mZoomableController.computeHorizontalScrollExtent();
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public int computeVerticalScrollRange() {
        return this.mZoomableController.computeVerticalScrollRange();
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public int computeVerticalScrollOffset() {
        return this.mZoomableController.computeVerticalScrollOffset();
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public int computeVerticalScrollExtent() {
        return this.mZoomableController.computeVerticalScrollExtent();
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        FLog.v(getLogTag(), "onLayout: view %x", Integer.valueOf(hashCode()));
        super.onLayout(z, i, i2, i3, i4);
        updateZoomableControllerBounds();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onFinalImageSet() {
        FLog.v(getLogTag(), "onFinalImageSet: view %x", Integer.valueOf(hashCode()));
        if (this.mZoomableController.isEnabled() || !this.mZoomingEnabled) {
            return;
        }
        this.mZoomableController.setEnabled(true);
        updateZoomableControllerBounds();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onRelease() {
        FLog.v(getLogTag(), "onRelease: view %x", Integer.valueOf(hashCode()));
        this.mZoomableController.setEnabled(false);
    }

    protected void onTransformChanged(Matrix matrix) {
        FLog.v(getLogTag(), "onTransformChanged: view %x, transform: %s", Integer.valueOf(hashCode()), matrix);
        maybeSetHugeImageController();
        invalidate();
    }

    protected void updateZoomableControllerBounds() {
        getImageBounds(this.mImageBounds);
        getLimitBounds(this.mViewBounds);
        this.mZoomableController.setImageBounds(this.mImageBounds);
        this.mZoomableController.setViewBounds(this.mViewBounds);
        FLog.v(getLogTag(), "updateZoomableControllerBounds: view %x, view bounds: %s, image bounds: %s", Integer.valueOf(hashCode()), this.mViewBounds, this.mImageBounds);
    }

    protected Class<?> getLogTag() {
        return TAG;
    }

    protected ZoomableController createZoomableController() {
        return AnimatedZoomableController.newInstance();
    }
}
