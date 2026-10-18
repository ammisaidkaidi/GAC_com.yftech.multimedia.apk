package com.facebook.imagepipeline.producers;

import android.graphics.Bitmap;
import android.os.Build;
import com.facebook.common.internal.ImmutableMap;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.internal.Supplier;
import com.facebook.common.logging.FLog;
import com.facebook.common.memory.ByteArrayPool;
import com.facebook.common.references.CloseableReference;
import com.facebook.common.util.ExceptionWithNoStacktrace;
import com.facebook.common.util.UriUtil;
import com.facebook.imageformat.DefaultImageFormats;
import com.facebook.imageformat.ImageFormat;
import com.facebook.imagepipeline.common.ImageDecodeOptions;
import com.facebook.imagepipeline.common.ResizeOptions;
import com.facebook.imagepipeline.core.CloseableReferenceFactory;
import com.facebook.imagepipeline.decoder.DecodeException;
import com.facebook.imagepipeline.decoder.ImageDecoder;
import com.facebook.imagepipeline.decoder.ProgressiveJpegConfig;
import com.facebook.imagepipeline.decoder.ProgressiveJpegParser;
import com.facebook.imagepipeline.image.CloseableBitmap;
import com.facebook.imagepipeline.image.CloseableImage;
import com.facebook.imagepipeline.image.CloseableStaticBitmap;
import com.facebook.imagepipeline.image.EncodedImage;
import com.facebook.imagepipeline.image.ImmutableQualityInfo;
import com.facebook.imagepipeline.image.QualityInfo;
import com.facebook.imagepipeline.producers.JobScheduler;
import com.facebook.imagepipeline.producers.ProducerContext;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.imagepipeline.systrace.FrescoSystrace;
import com.facebook.imagepipeline.transcoder.DownsampleUtil;
import com.facebook.imageutils.BitmapUtil;
import com.facebook.infer.annotation.Nullsafe;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: /home/user/work/dex/classes3.dex */
public class DecodeProducer implements Producer<CloseableReference<CloseableImage>> {
    public static final String ENCODED_IMAGE_SIZE = "encodedImageSize";
    public static final String EXTRA_BITMAP_BYTES = "byteCount";
    public static final String EXTRA_BITMAP_SIZE = "bitmapSize";
    public static final String EXTRA_HAS_GOOD_QUALITY = "hasGoodQuality";
    public static final String EXTRA_IMAGE_FORMAT_NAME = "imageFormat";
    public static final String EXTRA_IS_FINAL = "isFinal";
    private static final int MAX_BITMAP_SIZE = 104857600;
    public static final String PRODUCER_NAME = "DecodeProducer";
    public static final String REQUESTED_IMAGE_SIZE = "requestedImageSize";
    public static final String SAMPLE_SIZE = "sampleSize";
    private final ByteArrayPool mByteArrayPool;
    private final CloseableReferenceFactory mCloseableReferenceFactory;
    private final boolean mDecodeCancellationEnabled;
    private final boolean mDownsampleEnabled;
    private final boolean mDownsampleEnabledForNetwork;
    private final Executor mExecutor;
    private final ImageDecoder mImageDecoder;
    private final Producer<EncodedImage> mInputProducer;
    private final int mMaxBitmapSize;
    private final ProgressiveJpegConfig mProgressiveJpegConfig;

    @Nullable
    private final Runnable mReclaimMemoryRunnable;
    private final Supplier<Boolean> mRecoverFromDecoderOOM;

    public DecodeProducer(ByteArrayPool byteArrayPool, Executor executor, ImageDecoder imageDecoder, ProgressiveJpegConfig progressiveJpegConfig, boolean z, boolean z2, boolean z3, Producer<EncodedImage> producer, int i, CloseableReferenceFactory closeableReferenceFactory, @Nullable Runnable runnable, Supplier<Boolean> supplier) {
        this.mByteArrayPool = (ByteArrayPool) Preconditions.checkNotNull(byteArrayPool);
        this.mExecutor = (Executor) Preconditions.checkNotNull(executor);
        this.mImageDecoder = (ImageDecoder) Preconditions.checkNotNull(imageDecoder);
        this.mProgressiveJpegConfig = (ProgressiveJpegConfig) Preconditions.checkNotNull(progressiveJpegConfig);
        this.mDownsampleEnabled = z;
        this.mDownsampleEnabledForNetwork = z2;
        this.mInputProducer = (Producer) Preconditions.checkNotNull(producer);
        this.mDecodeCancellationEnabled = z3;
        this.mMaxBitmapSize = i;
        this.mCloseableReferenceFactory = closeableReferenceFactory;
        this.mReclaimMemoryRunnable = runnable;
        this.mRecoverFromDecoderOOM = supplier;
    }

    @Override // com.facebook.imagepipeline.producers.Producer
    public void produceResults(Consumer<CloseableReference<CloseableImage>> consumer, ProducerContext producerContext) {
        Consumer<EncodedImage> networkImagesProgressiveDecoder;
        try {
            if (FrescoSystrace.isTracing()) {
                FrescoSystrace.beginSection("DecodeProducer#produceResults");
            }
            if (!UriUtil.isNetworkUri(producerContext.getImageRequest().getSourceUri())) {
                networkImagesProgressiveDecoder = new LocalImagesProgressiveDecoder(consumer, producerContext, this.mDecodeCancellationEnabled, this.mMaxBitmapSize);
            } else {
                networkImagesProgressiveDecoder = new NetworkImagesProgressiveDecoder(consumer, producerContext, new ProgressiveJpegParser(this.mByteArrayPool), this.mProgressiveJpegConfig, this.mDecodeCancellationEnabled, this.mMaxBitmapSize);
            }
            this.mInputProducer.produceResults(networkImagesProgressiveDecoder, producerContext);
        } finally {
            if (FrescoSystrace.isTracing()) {
                FrescoSystrace.endSection();
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    private abstract class ProgressiveDecoder extends DelegatingConsumer<EncodedImage, CloseableReference<CloseableImage>> {
        private static final int DECODE_EXCEPTION_MESSAGE_NUM_HEADER_BYTES = 10;
        private final String TAG;
        private final ImageDecodeOptions mImageDecodeOptions;

        @GuardedBy("this")
        private boolean mIsFinished;
        private final JobScheduler mJobScheduler;
        private final ProducerContext mProducerContext;
        private final ProducerListener2 mProducerListener;

        protected abstract int getIntermediateImageEndOffset(EncodedImage encodedImage);

        protected abstract QualityInfo getQualityInfo();

        public ProgressiveDecoder(Consumer<CloseableReference<CloseableImage>> consumer, final ProducerContext producerContext, final boolean z, final int i) {
            super(consumer);
            this.TAG = "ProgressiveDecoder";
            this.mProducerContext = producerContext;
            this.mProducerListener = producerContext.getProducerListener();
            this.mImageDecodeOptions = producerContext.getImageRequest().getImageDecodeOptions();
            this.mIsFinished = false;
            this.mJobScheduler = new JobScheduler(DecodeProducer.this.mExecutor, new JobScheduler.JobRunnable() { // from class: com.facebook.imagepipeline.producers.DecodeProducer.ProgressiveDecoder.1
                @Override // com.facebook.imagepipeline.producers.JobScheduler.JobRunnable
                public void run(EncodedImage encodedImage, int i2) {
                    if (encodedImage != null) {
                        ProgressiveDecoder.this.mProducerContext.setExtra(ProducerContext.ExtraKeys.IMAGE_FORMAT, encodedImage.getImageFormat().getName());
                        if (DecodeProducer.this.mDownsampleEnabled || !BaseConsumer.statusHasFlag(i2, 16)) {
                            ImageRequest imageRequest = producerContext.getImageRequest();
                            if (DecodeProducer.this.mDownsampleEnabledForNetwork || !UriUtil.isNetworkUri(imageRequest.getSourceUri())) {
                                encodedImage.setSampleSize(DownsampleUtil.determineSampleSize(imageRequest.getRotationOptions(), imageRequest.getResizeOptions(), encodedImage, i));
                            }
                        }
                        if (producerContext.getImagePipelineConfig().getExperiments().shouldDownsampleIfLargeBitmap()) {
                            ProgressiveDecoder.this.maybeIncreaseSampleSize(encodedImage);
                        }
                        ProgressiveDecoder.this.doDecode(encodedImage, i2);
                    }
                }
            }, this.mImageDecodeOptions.minDecodeIntervalMs);
            this.mProducerContext.addCallbacks(new BaseProducerContextCallbacks() { // from class: com.facebook.imagepipeline.producers.DecodeProducer.ProgressiveDecoder.2
                @Override // com.facebook.imagepipeline.producers.BaseProducerContextCallbacks, com.facebook.imagepipeline.producers.ProducerContextCallbacks
                public void onIsIntermediateResultExpectedChanged() {
                    if (ProgressiveDecoder.this.mProducerContext.isIntermediateResultExpected()) {
                        ProgressiveDecoder.this.mJobScheduler.scheduleJob();
                    }
                }

                @Override // com.facebook.imagepipeline.producers.BaseProducerContextCallbacks, com.facebook.imagepipeline.producers.ProducerContextCallbacks
                public void onCancellationRequested() {
                    if (z) {
                        ProgressiveDecoder.this.handleCancellation();
                    }
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void maybeIncreaseSampleSize(EncodedImage encodedImage) {
            if (encodedImage.getImageFormat() != DefaultImageFormats.JPEG) {
                return;
            }
            encodedImage.setSampleSize(DownsampleUtil.determineSampleSizeJPEG(encodedImage, BitmapUtil.getPixelSizeForBitmapConfig(this.mImageDecodeOptions.bitmapConfig), DecodeProducer.MAX_BITMAP_SIZE));
        }

        @Override // com.facebook.imagepipeline.producers.BaseConsumer
        public void onNewResultImpl(EncodedImage encodedImage, int i) {
            boolean isTracing;
            try {
                if (FrescoSystrace.isTracing()) {
                    FrescoSystrace.beginSection("DecodeProducer#onNewResultImpl");
                }
                boolean isLast = isLast(i);
                if (isLast) {
                    if (encodedImage == null) {
                        handleError(new ExceptionWithNoStacktrace("Encoded image is null."));
                        if (isTracing) {
                            return;
                        } else {
                            return;
                        }
                    } else if (!encodedImage.isValid()) {
                        handleError(new ExceptionWithNoStacktrace("Encoded image is not valid."));
                        if (FrescoSystrace.isTracing()) {
                            FrescoSystrace.endSection();
                            return;
                        }
                        return;
                    }
                }
                if (!updateDecodeJob(encodedImage, i)) {
                    if (FrescoSystrace.isTracing()) {
                        FrescoSystrace.endSection();
                        return;
                    }
                    return;
                }
                boolean statusHasFlag = statusHasFlag(i, 4);
                if (isLast || statusHasFlag || this.mProducerContext.isIntermediateResultExpected()) {
                    this.mJobScheduler.scheduleJob();
                }
                if (FrescoSystrace.isTracing()) {
                    FrescoSystrace.endSection();
                }
            } finally {
                if (FrescoSystrace.isTracing()) {
                    FrescoSystrace.endSection();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.DelegatingConsumer, com.facebook.imagepipeline.producers.BaseConsumer
        public void onProgressUpdateImpl(float f) {
            super.onProgressUpdateImpl(f * 0.99f);
        }

        @Override // com.facebook.imagepipeline.producers.DelegatingConsumer, com.facebook.imagepipeline.producers.BaseConsumer
        public void onFailureImpl(Throwable th) {
            handleError(th);
        }

        @Override // com.facebook.imagepipeline.producers.DelegatingConsumer, com.facebook.imagepipeline.producers.BaseConsumer
        public void onCancellationImpl() {
            handleCancellation();
        }

        protected boolean updateDecodeJob(EncodedImage encodedImage, int i) {
            return this.mJobScheduler.updateJob(encodedImage, i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Can't wrap try/catch for region: R(3:(10:(16:28|29|(13:33|34|35|36|37|38|39|40|(1:42)|43|44|45|46)|61|34|35|36|37|38|39|40|(0)|43|44|45|46)|(13:33|34|35|36|37|38|39|40|(0)|43|44|45|46)|38|39|40|(0)|43|44|45|46)|36|37) */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x0100, code lost:
        
            r0 = e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x0101, code lost:
        
            r2 = null;
         */
        /* JADX WARN: Removed duplicated region for block: B:42:0x00de  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void doDecode(EncodedImage encodedImage, int i) {
            String str;
            int size;
            QualityInfo qualityInfo;
            QualityInfo qualityInfo2;
            CloseableImage internalDecode;
            int i2 = i;
            if ((encodedImage.getImageFormat() != DefaultImageFormats.JPEG && isNotLast(i)) || isFinished() || !EncodedImage.isValid(encodedImage)) {
                return;
            }
            ImageFormat imageFormat = encodedImage.getImageFormat();
            String name = imageFormat != null ? imageFormat.getName() : "unknown";
            String str2 = encodedImage.getWidth() + "x" + encodedImage.getHeight();
            String valueOf = String.valueOf(encodedImage.getSampleSize());
            boolean isLast = isLast(i);
            boolean z = isLast && !statusHasFlag(i2, 8);
            boolean statusHasFlag = statusHasFlag(i2, 4);
            ResizeOptions resizeOptions = this.mProducerContext.getImageRequest().getResizeOptions();
            if (resizeOptions != null) {
                str = resizeOptions.width + "x" + resizeOptions.height;
            } else {
                str = "unknown";
            }
            try {
                long queuedTime = this.mJobScheduler.getQueuedTime();
                String valueOf2 = String.valueOf(this.mProducerContext.getImageRequest().getSourceUri());
                try {
                    try {
                        if (!z && !statusHasFlag) {
                            size = getIntermediateImageEndOffset(encodedImage);
                            int i3 = size;
                            if (!z && !statusHasFlag) {
                                qualityInfo = getQualityInfo();
                                qualityInfo2 = qualityInfo;
                                this.mProducerListener.onProducerStart(this.mProducerContext, DecodeProducer.PRODUCER_NAME);
                                internalDecode = internalDecode(encodedImage, i3, qualityInfo2);
                                if (encodedImage.getSampleSize() != 1) {
                                    i2 |= 16;
                                }
                                this.mProducerListener.onProducerFinishWithSuccess(this.mProducerContext, DecodeProducer.PRODUCER_NAME, getExtraMap(internalDecode, queuedTime, qualityInfo2, isLast, name, str2, str, valueOf));
                                setImageExtras(encodedImage, internalDecode);
                                handleResult(internalDecode, i2);
                                return;
                            }
                            qualityInfo = ImmutableQualityInfo.FULL_QUALITY;
                            qualityInfo2 = qualityInfo;
                            this.mProducerListener.onProducerStart(this.mProducerContext, DecodeProducer.PRODUCER_NAME);
                            internalDecode = internalDecode(encodedImage, i3, qualityInfo2);
                            if (encodedImage.getSampleSize() != 1) {
                            }
                            this.mProducerListener.onProducerFinishWithSuccess(this.mProducerContext, DecodeProducer.PRODUCER_NAME, getExtraMap(internalDecode, queuedTime, qualityInfo2, isLast, name, str2, str, valueOf));
                            setImageExtras(encodedImage, internalDecode);
                            handleResult(internalDecode, i2);
                            return;
                        }
                        if (!z) {
                            qualityInfo = getQualityInfo();
                            qualityInfo2 = qualityInfo;
                            this.mProducerListener.onProducerStart(this.mProducerContext, DecodeProducer.PRODUCER_NAME);
                            internalDecode = internalDecode(encodedImage, i3, qualityInfo2);
                            if (encodedImage.getSampleSize() != 1) {
                            }
                            this.mProducerListener.onProducerFinishWithSuccess(this.mProducerContext, DecodeProducer.PRODUCER_NAME, getExtraMap(internalDecode, queuedTime, qualityInfo2, isLast, name, str2, str, valueOf));
                            setImageExtras(encodedImage, internalDecode);
                            handleResult(internalDecode, i2);
                            return;
                        }
                        if (encodedImage.getSampleSize() != 1) {
                        }
                        this.mProducerListener.onProducerFinishWithSuccess(this.mProducerContext, DecodeProducer.PRODUCER_NAME, getExtraMap(internalDecode, queuedTime, qualityInfo2, isLast, name, str2, str, valueOf));
                        setImageExtras(encodedImage, internalDecode);
                        handleResult(internalDecode, i2);
                        return;
                    } catch (Exception e) {
                        e = e;
                        CloseableImage closeableImage = internalDecode;
                        this.mProducerListener.onProducerFinishWithFailure(this.mProducerContext, DecodeProducer.PRODUCER_NAME, e, getExtraMap(closeableImage, queuedTime, qualityInfo2, isLast, name, str2, str, valueOf));
                        handleError(e);
                        return;
                    }
                    internalDecode = internalDecode(encodedImage, i3, qualityInfo2);
                } catch (DecodeException e2) {
                    EncodedImage encodedImage2 = e2.getEncodedImage();
                    FLog.w("ProgressiveDecoder", "%s, {uri: %s, firstEncodedBytes: %s, length: %d}", e2.getMessage(), valueOf2, encodedImage2.getFirstBytesAsHexString(10), Integer.valueOf(encodedImage2.getSize()));
                    throw e2;
                }
                size = encodedImage.getSize();
                int i32 = size;
                qualityInfo = ImmutableQualityInfo.FULL_QUALITY;
                qualityInfo2 = qualityInfo;
                this.mProducerListener.onProducerStart(this.mProducerContext, DecodeProducer.PRODUCER_NAME);
            } finally {
                EncodedImage.closeSafely(encodedImage);
            }
        }

        private CloseableImage internalDecode(EncodedImage encodedImage, int i, QualityInfo qualityInfo) {
            boolean z = DecodeProducer.this.mReclaimMemoryRunnable != null && ((Boolean) DecodeProducer.this.mRecoverFromDecoderOOM.get()).booleanValue();
            try {
                return DecodeProducer.this.mImageDecoder.decode(encodedImage, i, qualityInfo, this.mImageDecodeOptions);
            } catch (OutOfMemoryError e) {
                if (z) {
                    DecodeProducer.this.mReclaimMemoryRunnable.run();
                    System.gc();
                    return DecodeProducer.this.mImageDecoder.decode(encodedImage, i, qualityInfo, this.mImageDecodeOptions);
                }
                throw e;
            }
        }

        private void setImageExtras(EncodedImage encodedImage, CloseableImage closeableImage) {
            this.mProducerContext.setExtra(ProducerContext.ExtraKeys.ENCODED_WIDTH, Integer.valueOf(encodedImage.getWidth()));
            this.mProducerContext.setExtra(ProducerContext.ExtraKeys.ENCODED_HEIGHT, Integer.valueOf(encodedImage.getHeight()));
            this.mProducerContext.setExtra(ProducerContext.ExtraKeys.ENCODED_SIZE, Integer.valueOf(encodedImage.getSize()));
            if (closeableImage instanceof CloseableBitmap) {
                Bitmap underlyingBitmap = ((CloseableBitmap) closeableImage).getUnderlyingBitmap();
                this.mProducerContext.setExtra("bitmap_config", String.valueOf(underlyingBitmap == null ? null : underlyingBitmap.getConfig()));
            }
            if (closeableImage != null) {
                closeableImage.setImageExtras(this.mProducerContext.getExtras());
            }
        }

        @Nullable
        private Map<String, String> getExtraMap(@Nullable CloseableImage closeableImage, long j, QualityInfo qualityInfo, boolean z, String str, String str2, String str3, String str4) {
            if (!this.mProducerListener.requiresExtraMap(this.mProducerContext, DecodeProducer.PRODUCER_NAME)) {
                return null;
            }
            String valueOf = String.valueOf(j);
            String valueOf2 = String.valueOf(qualityInfo.isOfGoodEnoughQuality());
            String valueOf3 = String.valueOf(z);
            if (closeableImage instanceof CloseableStaticBitmap) {
                Bitmap underlyingBitmap = ((CloseableStaticBitmap) closeableImage).getUnderlyingBitmap();
                String str5 = underlyingBitmap.getWidth() + "x" + underlyingBitmap.getHeight();
                HashMap hashMap = new HashMap(8);
                hashMap.put(DecodeProducer.EXTRA_BITMAP_SIZE, str5);
                hashMap.put("queueTime", valueOf);
                hashMap.put(DecodeProducer.EXTRA_HAS_GOOD_QUALITY, valueOf2);
                hashMap.put(DecodeProducer.EXTRA_IS_FINAL, valueOf3);
                hashMap.put("encodedImageSize", str2);
                hashMap.put(DecodeProducer.EXTRA_IMAGE_FORMAT_NAME, str);
                hashMap.put(DecodeProducer.REQUESTED_IMAGE_SIZE, str3);
                hashMap.put(DecodeProducer.SAMPLE_SIZE, str4);
                if (Build.VERSION.SDK_INT >= 12) {
                    hashMap.put(DecodeProducer.EXTRA_BITMAP_BYTES, underlyingBitmap.getByteCount() + "");
                }
                return ImmutableMap.copyOf((Map) hashMap);
            }
            HashMap hashMap2 = new HashMap(7);
            hashMap2.put("queueTime", valueOf);
            hashMap2.put(DecodeProducer.EXTRA_HAS_GOOD_QUALITY, valueOf2);
            hashMap2.put(DecodeProducer.EXTRA_IS_FINAL, valueOf3);
            hashMap2.put("encodedImageSize", str2);
            hashMap2.put(DecodeProducer.EXTRA_IMAGE_FORMAT_NAME, str);
            hashMap2.put(DecodeProducer.REQUESTED_IMAGE_SIZE, str3);
            hashMap2.put(DecodeProducer.SAMPLE_SIZE, str4);
            return ImmutableMap.copyOf((Map) hashMap2);
        }

        private synchronized boolean isFinished() {
            return this.mIsFinished;
        }

        private void maybeFinish(boolean z) {
            synchronized (this) {
                if (z) {
                    if (!this.mIsFinished) {
                        getConsumer().onProgressUpdate(1.0f);
                        this.mIsFinished = true;
                        this.mJobScheduler.clearJob();
                    }
                }
            }
        }

        private void handleResult(CloseableImage closeableImage, int i) {
            CloseableReference<CloseableImage> create = DecodeProducer.this.mCloseableReferenceFactory.create(closeableImage);
            try {
                maybeFinish(isLast(i));
                getConsumer().onNewResult(create, i);
            } finally {
                CloseableReference.closeSafely(create);
            }
        }

        private void handleError(Throwable th) {
            maybeFinish(true);
            getConsumer().onFailure(th);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void handleCancellation() {
            maybeFinish(true);
            getConsumer().onCancellation();
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    private class LocalImagesProgressiveDecoder extends ProgressiveDecoder {
        public LocalImagesProgressiveDecoder(Consumer<CloseableReference<CloseableImage>> consumer, ProducerContext producerContext, boolean z, int i) {
            super(consumer, producerContext, z, i);
        }

        @Override // com.facebook.imagepipeline.producers.DecodeProducer.ProgressiveDecoder
        protected synchronized boolean updateDecodeJob(EncodedImage encodedImage, int i) {
            if (isNotLast(i)) {
                return false;
            }
            return super.updateDecodeJob(encodedImage, i);
        }

        @Override // com.facebook.imagepipeline.producers.DecodeProducer.ProgressiveDecoder
        protected int getIntermediateImageEndOffset(EncodedImage encodedImage) {
            return encodedImage.getSize();
        }

        @Override // com.facebook.imagepipeline.producers.DecodeProducer.ProgressiveDecoder
        protected QualityInfo getQualityInfo() {
            return ImmutableQualityInfo.of(0, false, false);
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    private class NetworkImagesProgressiveDecoder extends ProgressiveDecoder {
        private int mLastScheduledScanNumber;
        private final ProgressiveJpegConfig mProgressiveJpegConfig;
        private final ProgressiveJpegParser mProgressiveJpegParser;

        public NetworkImagesProgressiveDecoder(Consumer<CloseableReference<CloseableImage>> consumer, ProducerContext producerContext, ProgressiveJpegParser progressiveJpegParser, ProgressiveJpegConfig progressiveJpegConfig, boolean z, int i) {
            super(consumer, producerContext, z, i);
            this.mProgressiveJpegParser = (ProgressiveJpegParser) Preconditions.checkNotNull(progressiveJpegParser);
            this.mProgressiveJpegConfig = (ProgressiveJpegConfig) Preconditions.checkNotNull(progressiveJpegConfig);
            this.mLastScheduledScanNumber = 0;
        }

        @Override // com.facebook.imagepipeline.producers.DecodeProducer.ProgressiveDecoder
        protected synchronized boolean updateDecodeJob(EncodedImage encodedImage, int i) {
            boolean updateDecodeJob = super.updateDecodeJob(encodedImage, i);
            if ((isNotLast(i) || statusHasFlag(i, 8)) && !statusHasFlag(i, 4) && EncodedImage.isValid(encodedImage) && encodedImage.getImageFormat() == DefaultImageFormats.JPEG) {
                if (!this.mProgressiveJpegParser.parseMoreData(encodedImage)) {
                    return false;
                }
                int bestScanNumber = this.mProgressiveJpegParser.getBestScanNumber();
                if (bestScanNumber <= this.mLastScheduledScanNumber) {
                    return false;
                }
                if (bestScanNumber < this.mProgressiveJpegConfig.getNextScanNumberToDecode(this.mLastScheduledScanNumber) && !this.mProgressiveJpegParser.isEndMarkerRead()) {
                    return false;
                }
                this.mLastScheduledScanNumber = bestScanNumber;
            }
            return updateDecodeJob;
        }

        @Override // com.facebook.imagepipeline.producers.DecodeProducer.ProgressiveDecoder
        protected int getIntermediateImageEndOffset(EncodedImage encodedImage) {
            return this.mProgressiveJpegParser.getBestScanEndOffset();
        }

        @Override // com.facebook.imagepipeline.producers.DecodeProducer.ProgressiveDecoder
        protected QualityInfo getQualityInfo() {
            return this.mProgressiveJpegConfig.getQualityInfo(this.mProgressiveJpegParser.getBestScanNumber());
        }
    }
}
