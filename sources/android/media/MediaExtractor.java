package android.media;

import android.app.backup.FullBackup;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.media.DrmInitData;
import android.media.MediaCas;
import android.media.MediaCodec;
import android.net.Uri;
import android.os.IBinder;
import android.os.IHwBinder;
import android.os.PersistableBundle;
import com.android.internal.util.Preconditions;
import java.io.FileDescriptor;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* loaded from: /home/user/work/dex/classes.dex */
public final class MediaExtractor {
    public static final int SAMPLE_FLAG_ENCRYPTED = 2;
    public static final int SAMPLE_FLAG_PARTIAL_FRAME = 4;
    public static final int SAMPLE_FLAG_SYNC = 1;
    public static final int SEEK_TO_CLOSEST_SYNC = 2;
    public static final int SEEK_TO_NEXT_SYNC = 1;
    public static final int SEEK_TO_PREVIOUS_SYNC = 0;
    private MediaCas mMediaCas;
    private long mNativeContext;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface SampleFlag {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface SeekMode {
    }

    private native Map<String, Object> getFileFormatNative();

    private native Map<String, Object> getTrackFormatNative(int i);

    private final native void nativeSetDataSource(IBinder iBinder, String str, String[] strArr, String[] strArr2) throws IOException;

    private final native void nativeSetMediaCas(IHwBinder iHwBinder);

    private final native void native_finalize();

    private native PersistableBundle native_getMetrics();

    private static final native void native_init();

    private final native void native_setup();

    public native boolean advance();

    public native long getCachedDuration();

    public native boolean getSampleCryptoInfo(MediaCodec.CryptoInfo cryptoInfo);

    public native int getSampleFlags();

    public native long getSampleSize();

    public native long getSampleTime();

    public native int getSampleTrackIndex();

    public final native int getTrackCount();

    public native boolean hasCacheReachedEndOfStream();

    public native int readSampleData(ByteBuffer byteBuffer, int i);

    public final native void release();

    public native void seekTo(long j, int i);

    public native void selectTrack(int i);

    public final native void setDataSource(MediaDataSource mediaDataSource) throws IOException;

    public final native void setDataSource(FileDescriptor fileDescriptor, long j, long j2) throws IOException;

    public native void unselectTrack(int i);

    public MediaExtractor() {
        native_setup();
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0056, code lost:
    
        if (r7 == null) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x005f, code lost:
    
        setDataSource(r8.toString(), r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0066, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x005c, code lost:
    
        r7.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x005a, code lost:
    
        if (r7 == null) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void setDataSource(Context context, Uri uri, Map<String, String> map) throws IOException {
        AssetFileDescriptor assetFileDescriptor;
        String scheme = uri.getScheme();
        if (scheme == null || scheme.equals(ContentResolver.SCHEME_FILE)) {
            setDataSource(uri.getPath());
            return;
        }
        try {
            assetFileDescriptor = context.getContentResolver().openAssetFileDescriptor(uri, FullBackup.ROOT_TREE_TOKEN);
            if (assetFileDescriptor == null) {
                if (assetFileDescriptor != null) {
                    assetFileDescriptor.close();
                    return;
                }
                return;
            }
            try {
                if (assetFileDescriptor.getDeclaredLength() < 0) {
                    setDataSource(assetFileDescriptor.getFileDescriptor());
                } else {
                    setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getDeclaredLength());
                }
                if (assetFileDescriptor != null) {
                    assetFileDescriptor.close();
                }
            } catch (IOException unused) {
            } catch (SecurityException unused2) {
            } catch (Throwable th) {
                th = th;
                if (assetFileDescriptor != null) {
                    assetFileDescriptor.close();
                }
                throw th;
            }
        } catch (IOException unused3) {
            assetFileDescriptor = null;
        } catch (SecurityException unused4) {
            assetFileDescriptor = null;
        } catch (Throwable th2) {
            th = th2;
            assetFileDescriptor = null;
        }
    }

    public final void setDataSource(String str, Map<String, String> map) throws IOException {
        String[] strArr;
        String[] strArr2 = null;
        if (map != null) {
            strArr2 = new String[map.size()];
            strArr = new String[map.size()];
            int i = 0;
            for (Map.Entry<String, String> entry : map.entrySet()) {
                strArr2[i] = entry.getKey();
                strArr[i] = entry.getValue();
                i++;
            }
        } else {
            strArr = null;
        }
        nativeSetDataSource(MediaHTTPService.createHttpServiceBinderIfNecessary(str), str, strArr2, strArr);
    }

    public final void setDataSource(String str) throws IOException {
        nativeSetDataSource(MediaHTTPService.createHttpServiceBinderIfNecessary(str), str, null, null);
    }

    public final void setDataSource(AssetFileDescriptor assetFileDescriptor) throws IOException, IllegalArgumentException, IllegalStateException {
        Preconditions.checkNotNull(assetFileDescriptor);
        if (assetFileDescriptor.getDeclaredLength() < 0) {
            setDataSource(assetFileDescriptor.getFileDescriptor());
        } else {
            setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getDeclaredLength());
        }
    }

    public final void setDataSource(FileDescriptor fileDescriptor) throws IOException {
        setDataSource(fileDescriptor, 0L, DataSourceDesc.LONG_MAX);
    }

    public final void setMediaCas(MediaCas mediaCas) {
        this.mMediaCas = mediaCas;
        nativeSetMediaCas(mediaCas.getBinder());
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class CasInfo {
        private final MediaCas.Session mSession;
        private final int mSystemId;

        CasInfo(int i, MediaCas.Session session) {
            this.mSystemId = i;
            this.mSession = session;
        }

        public int getSystemId() {
            return this.mSystemId;
        }

        public MediaCas.Session getSession() {
            return this.mSession;
        }
    }

    private ArrayList<Byte> toByteArray(byte[] bArr) {
        ArrayList<Byte> arrayList = new ArrayList<>(bArr.length);
        for (int i = 0; i < bArr.length; i++) {
            arrayList.add(i, Byte.valueOf(bArr[i]));
        }
        return arrayList;
    }

    public CasInfo getCasInfo(int i) {
        Map<String, Object> trackFormatNative = getTrackFormatNative(i);
        MediaCas.Session session = null;
        if (!trackFormatNative.containsKey(MediaFormat.KEY_CA_SYSTEM_ID)) {
            return null;
        }
        int intValue = ((Integer) trackFormatNative.get(MediaFormat.KEY_CA_SYSTEM_ID)).intValue();
        if (this.mMediaCas != null && trackFormatNative.containsKey(MediaFormat.KEY_CA_SESSION_ID)) {
            ByteBuffer byteBuffer = (ByteBuffer) trackFormatNative.get(MediaFormat.KEY_CA_SESSION_ID);
            byteBuffer.rewind();
            byte[] bArr = new byte[byteBuffer.remaining()];
            byteBuffer.get(bArr);
            session = this.mMediaCas.createFromSessionId(toByteArray(bArr));
        }
        return new CasInfo(intValue, session);
    }

    protected void finalize() {
        native_finalize();
    }

    public DrmInitData getDrmInitData() {
        Map<String, Object> fileFormatNative = getFileFormatNative();
        if (fileFormatNative == null) {
            return null;
        }
        if (fileFormatNative.containsKey("pssh")) {
            Map<UUID, byte[]> psshInfo = getPsshInfo();
            final HashMap hashMap = new HashMap();
            for (Map.Entry<UUID, byte[]> entry : psshInfo.entrySet()) {
                hashMap.put(entry.getKey(), new DrmInitData.SchemeInitData("cenc", entry.getValue()));
            }
            return new DrmInitData() { // from class: android.media.MediaExtractor.1
                @Override // android.media.DrmInitData
                public DrmInitData.SchemeInitData get(UUID uuid) {
                    return (DrmInitData.SchemeInitData) hashMap.get(uuid);
                }
            };
        }
        int trackCount = getTrackCount();
        for (int i = 0; i < trackCount; i++) {
            Map<String, Object> trackFormatNative = getTrackFormatNative(i);
            if (trackFormatNative.containsKey("crypto-key")) {
                ByteBuffer byteBuffer = (ByteBuffer) trackFormatNative.get("crypto-key");
                byteBuffer.rewind();
                final byte[] bArr = new byte[byteBuffer.remaining()];
                byteBuffer.get(bArr);
                return new DrmInitData() { // from class: android.media.MediaExtractor.2
                    @Override // android.media.DrmInitData
                    public DrmInitData.SchemeInitData get(UUID uuid) {
                        return new DrmInitData.SchemeInitData("webm", bArr);
                    }
                };
            }
        }
        return null;
    }

    public List<AudioPresentation> getAudioPresentations(int i) {
        return new ArrayList();
    }

    public Map<UUID, byte[]> getPsshInfo() {
        Map<String, Object> fileFormatNative = getFileFormatNative();
        if (fileFormatNative == null || !fileFormatNative.containsKey("pssh")) {
            return null;
        }
        ByteBuffer byteBuffer = (ByteBuffer) fileFormatNative.get("pssh");
        byteBuffer.order(ByteOrder.nativeOrder());
        byteBuffer.rewind();
        fileFormatNative.remove("pssh");
        HashMap hashMap = new HashMap();
        while (byteBuffer.remaining() > 0) {
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
            UUID uuid = new UUID(byteBuffer.getLong(), byteBuffer.getLong());
            byteBuffer.order(ByteOrder.nativeOrder());
            byte[] bArr = new byte[byteBuffer.getInt()];
            byteBuffer.get(bArr);
            hashMap.put(uuid, bArr);
        }
        return hashMap;
    }

    public MediaFormat getTrackFormat(int i) {
        return new MediaFormat(getTrackFormatNative(i));
    }

    public PersistableBundle getMetrics() {
        return native_getMetrics();
    }

    static {
        System.loadLibrary("media_jni");
        native_init();
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class MetricsConstants {
        public static final String FORMAT = "android.media.mediaextractor.fmt";
        public static final String MIME_TYPE = "android.media.mediaextractor.mime";
        public static final String TRACKS = "android.media.mediaextractor.ntrk";

        private MetricsConstants() {
        }
    }
}
