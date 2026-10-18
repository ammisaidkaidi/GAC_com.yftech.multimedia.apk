package com.facebook.drawee.backends.pipeline.info;

import android.graphics.Rect;
import com.facebook.common.internal.Supplier;
import com.facebook.common.internal.Suppliers;
import com.facebook.common.references.CloseableReference;
import com.facebook.common.time.MonotonicClock;
import com.facebook.drawee.backends.pipeline.PipelineDraweeController;
import com.facebook.drawee.backends.pipeline.PipelineDraweeControllerBuilder;
import com.facebook.drawee.backends.pipeline.info.internal.ImagePerfControllerListener2;
import com.facebook.drawee.backends.pipeline.info.internal.ImagePerfImageOriginListener;
import com.facebook.drawee.backends.pipeline.info.internal.ImagePerfRequestListener;
import com.facebook.drawee.controller.AbstractDraweeControllerBuilder;
import com.facebook.drawee.interfaces.DraweeHierarchy;
import com.facebook.imagepipeline.image.CloseableImage;
import com.facebook.imagepipeline.image.ImageInfo;
import com.facebook.imagepipeline.listener.ForwardingRequestListener;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.annotation.Nullable;

@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: /home/user/work/dex/classes3.dex */
public class ImagePerfMonitor implements ImagePerfNotifier {
    private final Supplier<Boolean> mAsyncLogging;
    private boolean mEnabled;

    @Nullable
    private ForwardingRequestListener mForwardingRequestListener;

    @Nullable
    private ImageOriginListener mImageOriginListener;

    @Nullable
    private ImageOriginRequestListener mImageOriginRequestListener;

    @Nullable
    private ImagePerfControllerListener2 mImagePerfControllerListener2;

    @Nullable
    private List<ImagePerfDataListener> mImagePerfDataListeners;

    @Nullable
    private ImagePerfRequestListener mImagePerfRequestListener;
    private final ImagePerfState mImagePerfState = new ImagePerfState();
    private final MonotonicClock mMonotonicClock;
    private final PipelineDraweeController mPipelineDraweeController;

    public ImagePerfMonitor(MonotonicClock monotonicClock, PipelineDraweeController pipelineDraweeController, Supplier<Boolean> supplier) {
        this.mMonotonicClock = monotonicClock;
        this.mPipelineDraweeController = pipelineDraweeController;
        this.mAsyncLogging = supplier;
    }

    public void updateImageRequestData(AbstractDraweeControllerBuilder<PipelineDraweeControllerBuilder, ImageRequest, CloseableReference<CloseableImage>, ImageInfo> abstractDraweeControllerBuilder) {
        this.mImagePerfState.setControllerImageRequests(abstractDraweeControllerBuilder.getImageRequest(), abstractDraweeControllerBuilder.getLowResImageRequest(), abstractDraweeControllerBuilder.getFirstAvailableImageRequests());
    }

    public void setEnabled(boolean z) {
        this.mEnabled = z;
        if (z) {
            setupListeners();
            if (this.mImageOriginListener != null) {
                this.mPipelineDraweeController.addImageOriginListener(this.mImageOriginListener);
            }
            if (this.mImagePerfControllerListener2 != null) {
                this.mPipelineDraweeController.addControllerListener2(this.mImagePerfControllerListener2);
            }
            if (this.mForwardingRequestListener != null) {
                this.mPipelineDraweeController.addRequestListener(this.mForwardingRequestListener);
                return;
            }
            return;
        }
        if (this.mImageOriginListener != null) {
            this.mPipelineDraweeController.removeImageOriginListener(this.mImageOriginListener);
        }
        if (this.mImagePerfControllerListener2 != null) {
            this.mPipelineDraweeController.removeControllerListener2(this.mImagePerfControllerListener2);
        }
        if (this.mForwardingRequestListener != null) {
            this.mPipelineDraweeController.removeRequestListener(this.mForwardingRequestListener);
        }
    }

    public void addImagePerfDataListener(@Nullable ImagePerfDataListener imagePerfDataListener) {
        if (imagePerfDataListener == null) {
            return;
        }
        if (this.mImagePerfDataListeners == null) {
            this.mImagePerfDataListeners = new CopyOnWriteArrayList();
        }
        this.mImagePerfDataListeners.add(imagePerfDataListener);
    }

    public void removeImagePerfDataListener(ImagePerfDataListener imagePerfDataListener) {
        if (this.mImagePerfDataListeners == null) {
            return;
        }
        this.mImagePerfDataListeners.remove(imagePerfDataListener);
    }

    public void clearImagePerfDataListeners() {
        if (this.mImagePerfDataListeners != null) {
            this.mImagePerfDataListeners.clear();
        }
    }

    @Override // com.facebook.drawee.backends.pipeline.info.ImagePerfNotifier
    public void notifyStatusUpdated(ImagePerfState imagePerfState, int i) {
        imagePerfState.setImageLoadStatus(i);
        if (!this.mEnabled || this.mImagePerfDataListeners == null || this.mImagePerfDataListeners.isEmpty()) {
            return;
        }
        if (i == 3) {
            addViewportData();
        }
        ImagePerfData snapshot = imagePerfState.snapshot();
        Iterator<ImagePerfDataListener> it = this.mImagePerfDataListeners.iterator();
        while (it.hasNext()) {
            it.next().onImageLoadStatusUpdated(snapshot, i);
        }
    }

    @Override // com.facebook.drawee.backends.pipeline.info.ImagePerfNotifier
    public void notifyListenersOfVisibilityStateUpdate(ImagePerfState imagePerfState, int i) {
        if (!this.mEnabled || this.mImagePerfDataListeners == null || this.mImagePerfDataListeners.isEmpty()) {
            return;
        }
        ImagePerfData snapshot = imagePerfState.snapshot();
        Iterator<ImagePerfDataListener> it = this.mImagePerfDataListeners.iterator();
        while (it.hasNext()) {
            it.next().onImageVisibilityUpdated(snapshot, i);
        }
    }

    public void addViewportData() {
        DraweeHierarchy hierarchy = this.mPipelineDraweeController.getHierarchy();
        if (hierarchy == null || hierarchy.getTopLevelDrawable() == null) {
            return;
        }
        Rect bounds = hierarchy.getTopLevelDrawable().getBounds();
        this.mImagePerfState.setOnScreenWidth(bounds.width());
        this.mImagePerfState.setOnScreenHeight(bounds.height());
    }

    private void setupListeners() {
        if (this.mImagePerfControllerListener2 == null) {
            this.mImagePerfControllerListener2 = new ImagePerfControllerListener2(this.mMonotonicClock, this.mImagePerfState, this, this.mAsyncLogging, Suppliers.BOOLEAN_FALSE);
        }
        if (this.mImagePerfRequestListener == null) {
            this.mImagePerfRequestListener = new ImagePerfRequestListener(this.mMonotonicClock, this.mImagePerfState);
        }
        if (this.mImageOriginListener == null) {
            this.mImageOriginListener = new ImagePerfImageOriginListener(this.mImagePerfState, this);
        }
        if (this.mImageOriginRequestListener == null) {
            this.mImageOriginRequestListener = new ImageOriginRequestListener(this.mPipelineDraweeController.getId(), this.mImageOriginListener);
        } else {
            this.mImageOriginRequestListener.init(this.mPipelineDraweeController.getId());
        }
        if (this.mForwardingRequestListener == null) {
            this.mForwardingRequestListener = new ForwardingRequestListener(this.mImagePerfRequestListener, this.mImageOriginRequestListener);
        }
    }

    public void reset() {
        clearImagePerfDataListeners();
        setEnabled(false);
        this.mImagePerfState.reset();
    }
}
