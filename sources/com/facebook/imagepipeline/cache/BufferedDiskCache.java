package com.facebook.imagepipeline.cache;

import bolts.Task;
import com.facebook.binaryresource.BinaryResource;
import com.facebook.cache.common.CacheKey;
import com.facebook.cache.common.WriterCallback;
import com.facebook.cache.disk.FileCache;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.logging.FLog;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.common.memory.PooledByteBufferFactory;
import com.facebook.common.memory.PooledByteStreams;
import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.image.EncodedImage;
import com.facebook.imagepipeline.instrumentation.FrescoInstrumenter;
import com.facebook.imagepipeline.systrace.FrescoSystrace;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.Nullable;

/* loaded from: /home/user/work/dex/classes3.dex */
public class BufferedDiskCache {
    private static final Class<?> TAG = BufferedDiskCache.class;
    private final FileCache mFileCache;
    private final ImageCacheStatsTracker mImageCacheStatsTracker;
    private final PooledByteBufferFactory mPooledByteBufferFactory;
    private final PooledByteStreams mPooledByteStreams;
    private final Executor mReadExecutor;
    private final StagingArea mStagingArea = StagingArea.getInstance();
    private final Executor mWriteExecutor;

    public BufferedDiskCache(FileCache fileCache, PooledByteBufferFactory pooledByteBufferFactory, PooledByteStreams pooledByteStreams, Executor executor, Executor executor2, ImageCacheStatsTracker imageCacheStatsTracker) {
        this.mFileCache = fileCache;
        this.mPooledByteBufferFactory = pooledByteBufferFactory;
        this.mPooledByteStreams = pooledByteStreams;
        this.mReadExecutor = executor;
        this.mWriteExecutor = executor2;
        this.mImageCacheStatsTracker = imageCacheStatsTracker;
    }

    public boolean containsSync(CacheKey cacheKey) {
        return this.mStagingArea.containsKey(cacheKey) || this.mFileCache.hasKeySync(cacheKey);
    }

    public Task<Boolean> contains(CacheKey cacheKey) {
        if (containsSync(cacheKey)) {
            return Task.forResult(true);
        }
        return containsAsync(cacheKey);
    }

    private Task<Boolean> containsAsync(final CacheKey cacheKey) {
        try {
            final Object onBeforeSubmitWork = FrescoInstrumenter.onBeforeSubmitWork("BufferedDiskCache_containsAsync");
            return Task.call(new Callable<Boolean>() { // from class: com.facebook.imagepipeline.cache.BufferedDiskCache.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.concurrent.Callable
                public Boolean call() throws Exception {
                    Object onBeginWork = FrescoInstrumenter.onBeginWork(onBeforeSubmitWork, null);
                    try {
                        try {
                            return Boolean.valueOf(BufferedDiskCache.this.checkInStagingAreaAndFileCache(cacheKey));
                        } catch (Throwable th) {
                            FrescoInstrumenter.markFailure(onBeforeSubmitWork, th);
                            throw th;
                        }
                    } finally {
                        FrescoInstrumenter.onEndWork(onBeginWork);
                    }
                }
            }, this.mReadExecutor);
        } catch (Exception e) {
            FLog.w(TAG, e, "Failed to schedule disk-cache read for %s", cacheKey.getUriString());
            return Task.forError(e);
        }
    }

    public boolean diskCheckSync(CacheKey cacheKey) {
        if (containsSync(cacheKey)) {
            return true;
        }
        return checkInStagingAreaAndFileCache(cacheKey);
    }

    public Task<EncodedImage> get(CacheKey cacheKey, AtomicBoolean atomicBoolean) {
        try {
            if (FrescoSystrace.isTracing()) {
                FrescoSystrace.beginSection("BufferedDiskCache#get");
            }
            EncodedImage encodedImage = this.mStagingArea.get(cacheKey);
            if (encodedImage != null) {
                return foundPinnedImage(cacheKey, encodedImage);
            }
            Task<EncodedImage> async = getAsync(cacheKey, atomicBoolean);
            if (FrescoSystrace.isTracing()) {
                FrescoSystrace.endSection();
            }
            return async;
        } finally {
            if (FrescoSystrace.isTracing()) {
                FrescoSystrace.endSection();
            }
        }
    }

    public Task<Void> probe(final CacheKey cacheKey) {
        Preconditions.checkNotNull(cacheKey);
        try {
            final Object onBeforeSubmitWork = FrescoInstrumenter.onBeforeSubmitWork("BufferedDiskCache_probe");
            return Task.call(new Callable<Void>() { // from class: com.facebook.imagepipeline.cache.BufferedDiskCache.2
                @Override // java.util.concurrent.Callable
                public Void call() throws Exception {
                    Object onBeginWork = FrescoInstrumenter.onBeginWork(onBeforeSubmitWork, null);
                    try {
                        BufferedDiskCache.this.mFileCache.probe(cacheKey);
                        return null;
                    } finally {
                        FrescoInstrumenter.onEndWork(onBeginWork);
                    }
                }
            }, this.mWriteExecutor);
        } catch (Exception e) {
            FLog.w(TAG, e, "Failed to schedule disk-cache probe for %s", cacheKey.getUriString());
            return Task.forError(e);
        }
    }

    public void addKeyForAsyncProbing(CacheKey cacheKey) {
        Preconditions.checkNotNull(cacheKey);
        this.mFileCache.probe(cacheKey);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkInStagingAreaAndFileCache(CacheKey cacheKey) {
        EncodedImage encodedImage = this.mStagingArea.get(cacheKey);
        if (encodedImage != null) {
            encodedImage.close();
            FLog.v(TAG, "Found image for %s in staging area", cacheKey.getUriString());
            this.mImageCacheStatsTracker.onStagingAreaHit(cacheKey);
            return true;
        }
        FLog.v(TAG, "Did not find image for %s in staging area", cacheKey.getUriString());
        this.mImageCacheStatsTracker.onStagingAreaMiss(cacheKey);
        try {
            return this.mFileCache.hasKey(cacheKey);
        } catch (Exception unused) {
            return false;
        }
    }

    private Task<EncodedImage> getAsync(final CacheKey cacheKey, final AtomicBoolean atomicBoolean) {
        try {
            final Object onBeforeSubmitWork = FrescoInstrumenter.onBeforeSubmitWork("BufferedDiskCache_getAsync");
            return Task.call(new Callable<EncodedImage>() { // from class: com.facebook.imagepipeline.cache.BufferedDiskCache.3
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.concurrent.Callable
                @Nullable
                public EncodedImage call() throws Exception {
                    Object onBeginWork = FrescoInstrumenter.onBeginWork(onBeforeSubmitWork, null);
                    try {
                        try {
                            if (atomicBoolean.get()) {
                                throw new CancellationException();
                            }
                            EncodedImage encodedImage = BufferedDiskCache.this.mStagingArea.get(cacheKey);
                            if (encodedImage != null) {
                                FLog.v((Class<?>) BufferedDiskCache.TAG, "Found image for %s in staging area", cacheKey.getUriString());
                                BufferedDiskCache.this.mImageCacheStatsTracker.onStagingAreaHit(cacheKey);
                            } else {
                                FLog.v((Class<?>) BufferedDiskCache.TAG, "Did not find image for %s in staging area", cacheKey.getUriString());
                                BufferedDiskCache.this.mImageCacheStatsTracker.onStagingAreaMiss(cacheKey);
                                try {
                                    PooledByteBuffer readFromDiskCache = BufferedDiskCache.this.readFromDiskCache(cacheKey);
                                    if (readFromDiskCache == null) {
                                        return null;
                                    }
                                    CloseableReference of = CloseableReference.of(readFromDiskCache);
                                    try {
                                        encodedImage = new EncodedImage((CloseableReference<PooledByteBuffer>) of);
                                    } finally {
                                        CloseableReference.closeSafely((CloseableReference<?>) of);
                                    }
                                } catch (Exception unused) {
                                    return null;
                                }
                            }
                            if (!Thread.interrupted()) {
                                return encodedImage;
                            }
                            FLog.v((Class<?>) BufferedDiskCache.TAG, "Host thread was interrupted, decreasing reference count");
                            if (encodedImage != null) {
                                encodedImage.close();
                            }
                            throw new InterruptedException();
                        } catch (Throwable th) {
                            FrescoInstrumenter.markFailure(onBeforeSubmitWork, th);
                            throw th;
                        }
                    } finally {
                        FrescoInstrumenter.onEndWork(onBeginWork);
                    }
                }
            }, this.mReadExecutor);
        } catch (Exception e) {
            FLog.w(TAG, e, "Failed to schedule disk-cache read for %s", cacheKey.getUriString());
            return Task.forError(e);
        }
    }

    public void put(final CacheKey cacheKey, EncodedImage encodedImage) {
        try {
            if (FrescoSystrace.isTracing()) {
                FrescoSystrace.beginSection("BufferedDiskCache#put");
            }
            Preconditions.checkNotNull(cacheKey);
            Preconditions.checkArgument(Boolean.valueOf(EncodedImage.isValid(encodedImage)));
            this.mStagingArea.put(cacheKey, encodedImage);
            final EncodedImage cloneOrNull = EncodedImage.cloneOrNull(encodedImage);
            try {
                final Object onBeforeSubmitWork = FrescoInstrumenter.onBeforeSubmitWork("BufferedDiskCache_putAsync");
                this.mWriteExecutor.execute(new Runnable() { // from class: com.facebook.imagepipeline.cache.BufferedDiskCache.4
                    @Override // java.lang.Runnable
                    public void run() {
                        Object onBeginWork = FrescoInstrumenter.onBeginWork(onBeforeSubmitWork, null);
                        try {
                            try {
                                BufferedDiskCache.this.writeToDiskCache(cacheKey, cloneOrNull);
                            } catch (Throwable th) {
                                FrescoInstrumenter.markFailure(onBeforeSubmitWork, th);
                                throw th;
                            }
                        } finally {
                            BufferedDiskCache.this.mStagingArea.remove(cacheKey, cloneOrNull);
                            EncodedImage.closeSafely(cloneOrNull);
                            FrescoInstrumenter.onEndWork(onBeginWork);
                        }
                    }
                });
            } catch (Exception e) {
                FLog.w(TAG, e, "Failed to schedule disk-cache write for %s", cacheKey.getUriString());
                this.mStagingArea.remove(cacheKey, encodedImage);
                EncodedImage.closeSafely(cloneOrNull);
            }
        } finally {
            if (FrescoSystrace.isTracing()) {
                FrescoSystrace.endSection();
            }
        }
    }

    public Task<Void> remove(final CacheKey cacheKey) {
        Preconditions.checkNotNull(cacheKey);
        this.mStagingArea.remove(cacheKey);
        try {
            final Object onBeforeSubmitWork = FrescoInstrumenter.onBeforeSubmitWork("BufferedDiskCache_remove");
            return Task.call(new Callable<Void>() { // from class: com.facebook.imagepipeline.cache.BufferedDiskCache.5
                @Override // java.util.concurrent.Callable
                public Void call() throws Exception {
                    Object onBeginWork = FrescoInstrumenter.onBeginWork(onBeforeSubmitWork, null);
                    try {
                        try {
                            BufferedDiskCache.this.mStagingArea.remove(cacheKey);
                            BufferedDiskCache.this.mFileCache.remove(cacheKey);
                            return null;
                        } catch (Throwable th) {
                            FrescoInstrumenter.markFailure(onBeforeSubmitWork, th);
                            throw th;
                        }
                    } finally {
                        FrescoInstrumenter.onEndWork(onBeginWork);
                    }
                }
            }, this.mWriteExecutor);
        } catch (Exception e) {
            FLog.w(TAG, e, "Failed to schedule disk-cache remove for %s", cacheKey.getUriString());
            return Task.forError(e);
        }
    }

    public Task<Void> clearAll() {
        this.mStagingArea.clearAll();
        final Object onBeforeSubmitWork = FrescoInstrumenter.onBeforeSubmitWork("BufferedDiskCache_clearAll");
        try {
            return Task.call(new Callable<Void>() { // from class: com.facebook.imagepipeline.cache.BufferedDiskCache.6
                @Override // java.util.concurrent.Callable
                public Void call() throws Exception {
                    Object onBeginWork = FrescoInstrumenter.onBeginWork(onBeforeSubmitWork, null);
                    try {
                        try {
                            BufferedDiskCache.this.mStagingArea.clearAll();
                            BufferedDiskCache.this.mFileCache.clearAll();
                            return null;
                        } finally {
                        }
                    } finally {
                        FrescoInstrumenter.onEndWork(onBeginWork);
                    }
                }
            }, this.mWriteExecutor);
        } catch (Exception e) {
            FLog.w(TAG, e, "Failed to schedule disk-cache clear", new Object[0]);
            return Task.forError(e);
        }
    }

    public long getSize() {
        return this.mFileCache.getSize();
    }

    private Task<EncodedImage> foundPinnedImage(CacheKey cacheKey, EncodedImage encodedImage) {
        FLog.v(TAG, "Found image for %s in staging area", cacheKey.getUriString());
        this.mImageCacheStatsTracker.onStagingAreaHit(cacheKey);
        return Task.forResult(encodedImage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public PooledByteBuffer readFromDiskCache(CacheKey cacheKey) throws IOException {
        try {
            FLog.v(TAG, "Disk cache read for %s", cacheKey.getUriString());
            BinaryResource resource = this.mFileCache.getResource(cacheKey);
            if (resource == null) {
                FLog.v(TAG, "Disk cache miss for %s", cacheKey.getUriString());
                this.mImageCacheStatsTracker.onDiskCacheMiss(cacheKey);
                return null;
            }
            FLog.v(TAG, "Found entry in disk cache for %s", cacheKey.getUriString());
            this.mImageCacheStatsTracker.onDiskCacheHit(cacheKey);
            InputStream openStream = resource.openStream();
            try {
                PooledByteBuffer newByteBuffer = this.mPooledByteBufferFactory.newByteBuffer(openStream, (int) resource.size());
                openStream.close();
                FLog.v(TAG, "Successful read from disk cache for %s", cacheKey.getUriString());
                return newByteBuffer;
            } catch (Throwable th) {
                openStream.close();
                throw th;
            }
        } catch (IOException e) {
            FLog.w(TAG, e, "Exception reading from cache for %s", cacheKey.getUriString());
            this.mImageCacheStatsTracker.onDiskCacheGetFail(cacheKey);
            throw e;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void writeToDiskCache(CacheKey cacheKey, final EncodedImage encodedImage) {
        FLog.v(TAG, "About to write to disk-cache for key %s", cacheKey.getUriString());
        try {
            this.mFileCache.insert(cacheKey, new WriterCallback() { // from class: com.facebook.imagepipeline.cache.BufferedDiskCache.7
                @Override // com.facebook.cache.common.WriterCallback
                public void write(OutputStream outputStream) throws IOException {
                    BufferedDiskCache.this.mPooledByteStreams.copy(encodedImage.getInputStream(), outputStream);
                }
            });
            this.mImageCacheStatsTracker.onDiskCachePut(cacheKey);
            FLog.v(TAG, "Successful disk-cache write for key %s", cacheKey.getUriString());
        } catch (IOException e) {
            FLog.w(TAG, e, "Failed to write to disk-cache for key %s", cacheKey.getUriString());
        }
    }
}
