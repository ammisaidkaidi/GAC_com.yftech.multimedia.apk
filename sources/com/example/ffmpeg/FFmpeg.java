package com.example.ffmpeg;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.text.TextUtils;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.example.ffmpeg.bean.TimeInfoBean;
import com.example.ffmpeg.consts.FFmpegConst;
import com.example.ffmpeg.listener.MyOnCompleteListener;
import com.example.ffmpeg.listener.MyOnErrorListener;
import com.example.ffmpeg.listener.MyOnParparedListener;
import com.example.ffmpeg.listener.MyOnPlayingStatusListener;
import com.example.ffmpeg.listener.MyOnTimeInfoListener;
import com.example.ffmpeg.opengl.MyGLSurfaceView;
import com.example.ffmpeg.opengl.MyRender;
import com.example.ffmpeg.util.MyVideoSupportUitl;
import java.nio.ByteBuffer;

/* loaded from: /home/user/work/dex/classes3.dex */
public class FFmpeg {
    public static final int MSG_ON_COMPLETE = 1;
    public static final int MSG_ON_ERROR = 3;
    public static final int MSG_ON_PAR_PARED = 2;
    public static String TAG = "FFMPEG_JAVA";
    private MediaCodec.BufferInfo info;
    private MediaCodec mediaCodec;
    private MediaFormat mediaFormat;
    private MyGLSurfaceView myGLSurfaceView;
    private MyOnCompleteListener myOnCompleteListener;
    private MyOnErrorListener myOnErrorListener;
    private MyOnParparedListener myOnParparedListener;
    private MyOnPlayingStatusListener myOnPlayingListener;
    private MyOnTimeInfoListener myOnTimeInfoListener;
    private String source;
    private Surface surface;
    private SurfaceHolder surfaceHolder;
    private TimeInfoBean timeInfoBean;

    public static native String getVersion();

    public native boolean ffmpegIsPlaying();

    public native double getMediaCurrentTime();

    public native double getMediaTotalTime();

    public native int getVideoHeight();

    public native int getVideoWidth();

    public native void initAvCodec(String str);

    public native void pausePlay();

    public native void resumePlay();

    public native void seekPlay(int i);

    public native void setSurface(Surface surface);

    public native void startPlay();

    public native void stopPlay();

    static {
        System.loadLibrary("native-lib-media");
        System.loadLibrary("avcodec-57");
        System.loadLibrary("avdevice-57");
        System.loadLibrary("avfilter-6");
        System.loadLibrary("avformat-57");
        System.loadLibrary("avutil-55");
        System.loadLibrary("postproc-54");
        System.loadLibrary("swresample-2");
        System.loadLibrary("swscale-4");
    }

    public void setMyGLSurfaceView(MyGLSurfaceView myGLSurfaceView) {
        this.myGLSurfaceView = myGLSurfaceView;
        myGLSurfaceView.getWlRender().setOnSurfaceCreateListener(new MyRender.OnSurfaceCreateListener() { // from class: com.example.ffmpeg.FFmpeg.1
            @Override // com.example.ffmpeg.opengl.MyRender.OnSurfaceCreateListener
            public void onSurfaceCreate(Surface surface) {
                if (FFmpeg.this.surface == null) {
                    FFmpeg.this.surface = surface;
                }
            }
        });
    }

    public void setSource(String str) {
        this.source = str;
    }

    public void parpared() {
        Log.d(TAG, "parpared:" + this.source);
        if (TextUtils.isEmpty(this.source)) {
            Log.e(TAG, "source is null!");
            onCallError(FFmpegConst.FF_URL_NOT_OPEN, "source is null");
        } else {
            initAvCodec(this.source);
        }
    }

    public void setWlOnParparedListener(MyOnParparedListener myOnParparedListener) {
        this.myOnParparedListener = myOnParparedListener;
    }

    public void onCallParpared() {
        if (this.myOnParparedListener != null) {
            this.myOnParparedListener.onParpared();
        }
    }

    public void start() {
        startPlay();
    }

    public void onCallTimeInfo(int i, int i2) {
        Log.d("0218", "0218 onCallTimeInfo" + i + ",totalTime" + i2);
    }

    public void setMyOnErrorListener(MyOnErrorListener myOnErrorListener) {
        this.myOnErrorListener = myOnErrorListener;
    }

    public void onCallError(int i, String str) {
        if (this.myOnErrorListener != null) {
            this.myOnErrorListener.onError(i, str);
        }
    }

    public void setMyOnPlayingListener(MyOnPlayingStatusListener myOnPlayingStatusListener) {
        this.myOnPlayingListener = myOnPlayingStatusListener;
    }

    public void onPlayingStatus(boolean z) {
        if (this.myOnPlayingListener != null) {
            this.myOnPlayingListener.onPlaying(z);
        }
    }

    public void setMyOnTimeInfoListener(MyOnTimeInfoListener myOnTimeInfoListener) {
        this.myOnTimeInfoListener = myOnTimeInfoListener;
    }

    public void seek(int i) {
        if (i < 0) {
            i = 0;
        }
        seekPlay(i / 1000);
    }

    public void onCallComplete() {
        new Thread(new Runnable() { // from class: com.example.ffmpeg.FFmpeg.2
            @Override // java.lang.Runnable
            public void run() {
                if (FFmpeg.this.myOnCompleteListener != null) {
                    FFmpeg.this.myOnCompleteListener.onComplete();
                }
            }
        }).start();
    }

    public void setMyOnCompleteListener(MyOnCompleteListener myOnCompleteListener) {
        this.myOnCompleteListener = myOnCompleteListener;
    }

    public boolean onCallIsSupportMediaCodec(String str) {
        return MyVideoSupportUitl.isSupportCodec(str);
    }

    public void initMediaCodec(String str, int i, int i2, byte[] bArr, byte[] bArr2) {
        Log.d("0129", "initMediaCodec get the width:" + i + ",get the height:" + i2);
        if (this.surface != null) {
            try {
                this.myGLSurfaceView.getWlRender().setRenderType(2);
                String findVideoCodecName = MyVideoSupportUitl.findVideoCodecName(str);
                this.mediaFormat = MediaFormat.createVideoFormat(findVideoCodecName, i, i2);
                this.mediaFormat.setInteger("max-input-size", i * i2);
                this.mediaFormat.setByteBuffer("csd-0", ByteBuffer.wrap(bArr));
                this.mediaFormat.setByteBuffer("csd-1", ByteBuffer.wrap(bArr2));
                this.mediaCodec = MediaCodec.createDecoderByType(findVideoCodecName);
                this.info = new MediaCodec.BufferInfo();
                this.mediaCodec.configure(this.mediaFormat, this.surface, (MediaCrypto) null, 0);
                this.mediaCodec.start();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void decodeAVPacket(int i, byte[] bArr) {
        if (this.surface == null || i <= 0 || bArr == null || this.mediaCodec == null) {
            return;
        }
        try {
            int dequeueInputBuffer = this.mediaCodec.dequeueInputBuffer(10L);
            if (dequeueInputBuffer >= 0) {
                ByteBuffer byteBuffer = this.mediaCodec.getInputBuffers()[dequeueInputBuffer];
                byteBuffer.clear();
                byteBuffer.put(bArr);
                this.mediaCodec.queueInputBuffer(dequeueInputBuffer, 0, i, 0L, 0);
            }
            int dequeueOutputBuffer = this.mediaCodec.dequeueOutputBuffer(this.info, 10L);
            while (dequeueOutputBuffer >= 0) {
                this.mediaCodec.releaseOutputBuffer(dequeueOutputBuffer, true);
                dequeueOutputBuffer = this.mediaCodec.dequeueOutputBuffer(this.info, 10L);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void stop() {
        stopPlay();
        releaseMediacodec();
    }

    public void releaseMediacodec() {
        if (this.mediaCodec != null) {
            try {
                this.mediaCodec.flush();
                this.mediaCodec.stop();
                this.mediaCodec.release();
            } catch (Exception unused) {
            }
            this.mediaCodec = null;
            this.mediaFormat = null;
            this.info = null;
        }
    }

    public void onCallRenderYUV(int i, int i2, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        Log.d("0129", "0211 get the width:" + i + ",get the height:" + i2);
        if (this.myGLSurfaceView != null) {
            this.myGLSurfaceView.getWlRender().setRenderType(1);
            this.myGLSurfaceView.setYUVData(i, i2, bArr, bArr2, bArr3);
        }
    }
}
