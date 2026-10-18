package com.facebook.drawee.backends.pipeline.info;

import com.facebook.fresco.ui.common.ControllerListener2;
import com.facebook.fresco.ui.common.DimensionsInfo;
import com.facebook.imagepipeline.image.ImageInfo;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: /home/user/work/dex/classes3.dex */
public class ImagePerfState {

    @Nullable
    private Object mCallerContext;

    @Nullable
    private String mComponentTag;

    @Nullable
    private ImageRequest[] mControllerFirstAvailableImageRequests;

    @Nullable
    private String mControllerId;

    @Nullable
    private ImageRequest mControllerImageRequest;

    @Nullable
    private ImageRequest mControllerLowResImageRequest;

    @Nullable
    private DimensionsInfo mDimensionsInfo;

    @Nullable
    private Throwable mErrorThrowable;

    @Nullable
    private ControllerListener2.Extras mExtraData;

    @Nullable
    private ImageInfo mImageInfo;

    @Nullable
    private ImageRequest mImageRequest;
    private boolean mIsPrefetch;

    @Nullable
    private String mRequestId;

    @Nullable
    private String mUltimateProducerName;
    private long mControllerSubmitTimeMs = -1;
    private long mControllerIntermediateImageSetTimeMs = -1;
    private long mControllerFinalImageSetTimeMs = -1;
    private long mControllerFailureTimeMs = -1;
    private long mControllerCancelTimeMs = -1;
    private long mImageRequestStartTimeMs = -1;
    private long mImageRequestEndTimeMs = -1;
    private int mImageOrigin = 1;
    private int mOnScreenWidthPx = -1;
    private int mOnScreenHeightPx = -1;
    private int mImageLoadStatus = -1;
    private int mVisibilityState = -1;
    private long mVisibilityEventTimeMs = -1;
    private long mInvisibilityEventTimeMs = -1;
    private long mImageDrawTimeMs = -1;

    public void reset() {
        this.mRequestId = null;
        this.mImageRequest = null;
        this.mCallerContext = null;
        this.mImageInfo = null;
        this.mControllerImageRequest = null;
        this.mControllerLowResImageRequest = null;
        this.mControllerFirstAvailableImageRequests = null;
        this.mImageOrigin = 1;
        this.mUltimateProducerName = null;
        this.mIsPrefetch = false;
        this.mOnScreenWidthPx = -1;
        this.mOnScreenHeightPx = -1;
        this.mErrorThrowable = null;
        this.mImageLoadStatus = -1;
        this.mVisibilityState = -1;
        this.mComponentTag = null;
        this.mDimensionsInfo = null;
        this.mExtraData = null;
        resetPointsTimestamps();
    }

    public void resetPointsTimestamps() {
        this.mImageRequestStartTimeMs = -1L;
        this.mImageRequestEndTimeMs = -1L;
        this.mControllerSubmitTimeMs = -1L;
        this.mControllerFinalImageSetTimeMs = -1L;
        this.mControllerFailureTimeMs = -1L;
        this.mControllerCancelTimeMs = -1L;
        this.mVisibilityEventTimeMs = -1L;
        this.mInvisibilityEventTimeMs = -1L;
        this.mImageDrawTimeMs = -1L;
    }

    public void setImageLoadStatus(int i) {
        this.mImageLoadStatus = i;
    }

    public int getImageLoadStatus() {
        return this.mImageLoadStatus;
    }

    public void setControllerId(@Nullable String str) {
        this.mControllerId = str;
    }

    public void setRequestId(@Nullable String str) {
        this.mRequestId = str;
    }

    public void setImageRequest(@Nullable ImageRequest imageRequest) {
        this.mImageRequest = imageRequest;
    }

    public void setControllerImageRequests(@Nullable ImageRequest imageRequest, @Nullable ImageRequest imageRequest2, @Nullable ImageRequest[] imageRequestArr) {
        this.mControllerImageRequest = imageRequest;
        this.mControllerLowResImageRequest = imageRequest2;
        this.mControllerFirstAvailableImageRequests = imageRequestArr;
    }

    public void setCallerContext(@Nullable Object obj) {
        this.mCallerContext = obj;
    }

    public void setControllerSubmitTimeMs(long j) {
        this.mControllerSubmitTimeMs = j;
    }

    public void setControllerIntermediateImageSetTimeMs(long j) {
        this.mControllerIntermediateImageSetTimeMs = j;
    }

    public void setControllerFinalImageSetTimeMs(long j) {
        this.mControllerFinalImageSetTimeMs = j;
    }

    public void setControllerFailureTimeMs(long j) {
        this.mControllerFailureTimeMs = j;
    }

    public void setControllerCancelTimeMs(long j) {
        this.mControllerCancelTimeMs = j;
    }

    public void setImageRequestStartTimeMs(long j) {
        this.mImageRequestStartTimeMs = j;
    }

    public void setImageRequestEndTimeMs(long j) {
        this.mImageRequestEndTimeMs = j;
    }

    public void setVisibilityEventTimeMs(long j) {
        this.mVisibilityEventTimeMs = j;
    }

    public void setInvisibilityEventTimeMs(long j) {
        this.mInvisibilityEventTimeMs = j;
    }

    public void setImageOrigin(int i) {
        this.mImageOrigin = i;
    }

    public void setUltimateProducerName(@Nullable String str) {
        this.mUltimateProducerName = str;
    }

    public void setPrefetch(boolean z) {
        this.mIsPrefetch = z;
    }

    public void setImageInfo(@Nullable ImageInfo imageInfo) {
        this.mImageInfo = imageInfo;
    }

    public void setOnScreenWidth(int i) {
        this.mOnScreenWidthPx = i;
    }

    public void setOnScreenHeight(int i) {
        this.mOnScreenHeightPx = i;
    }

    public void setErrorThrowable(@Nullable Throwable th) {
        this.mErrorThrowable = th;
    }

    public void setVisible(boolean z) {
        this.mVisibilityState = z ? 1 : 2;
    }

    public void setComponentTag(@Nullable String str) {
        this.mComponentTag = str;
    }

    public void setImageDrawTimeMs(long j) {
        this.mImageDrawTimeMs = j;
    }

    public ImagePerfData snapshot() {
        return new ImagePerfData(this.mControllerId, this.mRequestId, this.mImageRequest, this.mCallerContext, this.mImageInfo, this.mControllerImageRequest, this.mControllerLowResImageRequest, this.mControllerFirstAvailableImageRequests, this.mControllerSubmitTimeMs, this.mControllerIntermediateImageSetTimeMs, this.mControllerFinalImageSetTimeMs, this.mControllerFailureTimeMs, this.mControllerCancelTimeMs, this.mImageRequestStartTimeMs, this.mImageRequestEndTimeMs, this.mImageOrigin, this.mUltimateProducerName, this.mIsPrefetch, this.mOnScreenWidthPx, this.mOnScreenHeightPx, this.mErrorThrowable, this.mVisibilityState, this.mVisibilityEventTimeMs, this.mInvisibilityEventTimeMs, this.mComponentTag, this.mImageDrawTimeMs, this.mDimensionsInfo, this.mExtraData);
    }

    public long getImageDrawTimeMs() {
        return this.mImageDrawTimeMs;
    }

    public void setDimensionsInfo(DimensionsInfo dimensionsInfo) {
        this.mDimensionsInfo = dimensionsInfo;
    }

    @Nullable
    public DimensionsInfo getDimensionsInfo() {
        return this.mDimensionsInfo;
    }

    public void setExtraData(@Nullable ControllerListener2.Extras extras) {
        this.mExtraData = extras;
    }

    @Nullable
    public Object getExtraData() {
        return this.mExtraData;
    }
}
