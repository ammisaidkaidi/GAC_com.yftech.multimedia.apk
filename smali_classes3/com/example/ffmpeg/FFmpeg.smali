.class public Lcom/example/ffmpeg/FFmpeg;
.super Ljava/lang/Object;
.source "FFmpeg.java"


# static fields
.field public static final MSG_ON_COMPLETE:I = 0x1

.field public static final MSG_ON_ERROR:I = 0x3

.field public static final MSG_ON_PAR_PARED:I = 0x2

.field public static TAG:Ljava/lang/String; = "FFMPEG_JAVA"


# instance fields
.field private info:Landroid/media/MediaCodec$BufferInfo;

.field private mediaCodec:Landroid/media/MediaCodec;

.field private mediaFormat:Landroid/media/MediaFormat;

.field private myGLSurfaceView:Lcom/example/ffmpeg/opengl/MyGLSurfaceView;

.field private myOnCompleteListener:Lcom/example/ffmpeg/listener/MyOnCompleteListener;

.field private myOnErrorListener:Lcom/example/ffmpeg/listener/MyOnErrorListener;

.field private myOnParparedListener:Lcom/example/ffmpeg/listener/MyOnParparedListener;

.field private myOnPlayingListener:Lcom/example/ffmpeg/listener/MyOnPlayingStatusListener;

.field private myOnTimeInfoListener:Lcom/example/ffmpeg/listener/MyOnTimeInfoListener;

.field private source:Ljava/lang/String;

.field private surface:Landroid/view/Surface;

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private timeInfoBean:Lcom/example/ffmpeg/bean/TimeInfoBean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "native-lib-media"

    .line 103
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "avcodec-57"

    .line 104
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "avdevice-57"

    .line 105
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "avfilter-6"

    .line 106
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "avformat-57"

    .line 107
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "avutil-55"

    .line 108
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "postproc-54"

    .line 109
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string/jumbo v0, "swresample-2"

    .line 110
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string/jumbo v0, "swscale-4"

    .line 111
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/example/ffmpeg/FFmpeg;)Landroid/view/Surface;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/example/ffmpeg/FFmpeg;->surface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$002(Lcom/example/ffmpeg/FFmpeg;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/example/ffmpeg/FFmpeg;->surface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$100(Lcom/example/ffmpeg/FFmpeg;)Lcom/example/ffmpeg/listener/MyOnCompleteListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/example/ffmpeg/FFmpeg;->myOnCompleteListener:Lcom/example/ffmpeg/listener/MyOnCompleteListener;

    return-object p0
.end method

.method public static native getVersion()Ljava/lang/String;
.end method


# virtual methods
.method public decodeAVPacket(I[B)V
    .locals 10

    .line 300
    iget-object v0, p0, Lcom/example/ffmpeg/FFmpeg;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    if-lez p1, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/example/ffmpeg/FFmpeg;->mediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/example/ffmpeg/FFmpeg;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    if-ltz v4, :cond_0

    .line 304
    iget-object v0, p0, Lcom/example/ffmpeg/FFmpeg;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    aget-object v0, v0, v4

    .line 305
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 306
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 307
    iget-object v3, p0, Lcom/example/ffmpeg/FFmpeg;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move v6, p1

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 309
    :cond_0
    iget-object p1, p0, Lcom/example/ffmpeg/FFmpeg;->mediaCodec:Landroid/media/MediaCodec;

    iget-object p2, p0, Lcom/example/ffmpeg/FFmpeg;->info:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {p1, p2, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result p1

    :goto_0
    if-ltz p1, :cond_1

    .line 311
    iget-object p2, p0, Lcom/example/ffmpeg/FFmpeg;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 312
    iget-object p1, p0, Lcom/example/ffmpeg/FFmpeg;->mediaCodec:Landroid/media/MediaCodec;

    iget-object p2, p0, Lcom/example/ffmpeg/FFmpeg;->info:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {p1, p2, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 315
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public native ffmpegIsPlaying()Z
.end method

.method public native getMediaCurrentTime()D
.end method

.method public native getMediaTotalTime()D
.end method

.method public native getVideoHeight()I
.end method

.method public native getVideoWidth()I
.end method

.method public native initAvCodec(Ljava/lang/String;)V
.end method

.method public initMediaCodec(Ljava/lang/String;II[B[B)V
    .locals 3

    const-string v0, "0129"

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initMediaCodec get the width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",get the height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/example/ffmpeg/FFmpeg;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/example/ffmpeg/FFmpeg;->myGLSurfaceView:Lcom/example/ffmpeg/opengl/MyGLSurfaceView;

    invoke-virtual {v0}, Lcom/example/ffmpeg/opengl/MyGLSurfaceView;->getWlRender()Lcom/example/ffmpeg/opengl/MyRender;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/example/ffmpeg/opengl/MyRender;->setRenderType(I)V

    .line 281
    invoke-static {p1}, Lcom/example/ffmpeg/util/MyVideoSupportUitl;->findVideoCodecName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 282
    invoke-static {p1, p2, p3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/example/ffmpeg/FFmpeg;->mediaFormat:Landroid/media/MediaFormat;

    .line 283
    iget-object v0, p0, Lcom/example/ffmpeg/FFmpeg;->mediaFormat:Landroid/media/MediaFormat;

    const-string v1, "max-input-size"

    mul-int/2addr p2, p3

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 284
    iget-object p2, p0, Lcom/example/ffmpeg/FFmpeg;->mediaFormat:Landroid/media/MediaFormat;

    const-string p3, "csd-0"

    invoke-static {p4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 285
    iget-object p2, p0, Lcom/example/ffmpeg/FFmpeg;->mediaFormat:Landroid/media/MediaFormat;

    const-string p3, "csd-1"

    invoke-static {p5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 286
    invoke-static {p1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    iput-object p1, p0, Lcom/example/ffmpeg/FFmpeg;->mediaCodec:Landroid/media/MediaCodec;

    .line 288
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Lcom/example/ffmpeg/FFmpeg;->info:Landroid/media/MediaCodec$BufferInfo;

    .line 289
    iget-object p1, p0, Lcom/example/ffmpeg/FFmpeg;->mediaCodec:Landroid/media/MediaCodec;

    iget-object p2, p0, Lcom/example/ffmpeg/FFmpeg;->mediaFormat:Landroid/media/MediaFormat;

    iget-object p3, p0, Lcom/example/ffmpeg/FFmpeg;->surface:Landroid/view/Surface;

    const/4 p4, 0x0

    const/4 p5, 0x0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 290
    iget-object p0, p0, Lcom/example/ffmpeg/FFmpeg;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 293
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onCallComplete()V
    .locals 2

    .line 242
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/example/ffmpeg/FFmpeg$2;

    invoke-direct {v1, p0}, Lcom/example/ffmpeg/FFmpeg$2;-><init>(Lcom/example/ffmpeg/FFmpeg;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 250
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onCallError(ILjava/lang/String;)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/example/ffmpeg/FFmpeg;->myOnErrorListener:Lcom/example/ffmpeg/listener/MyOnErrorListener;

    if-eqz v0, :cond_0

    .line 203
    iget-object p0, p0, Lcom/example/ffmpeg/FFmpeg;->myOnErrorListener:Lcom/example/ffmpeg/listener/MyOnErrorListener;

    invoke-interface {p0, p1, p2}, Lcom/example/ffmpeg/listener/MyOnErrorListener;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCallIsSupportMediaCodec(Ljava/lang/String;)Z
    .locals 0

    .line 264
    invoke-static {p1}, Lcom/example/ffmpeg/util/MyVideoSupportUitl;->isSupportCodec(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public onCallParpared()V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/example/ffmpeg/FFmpeg;->myOnParparedListener:Lcom/example/ffmpeg/listener/MyOnParparedListener;

    if-eqz v0, :cond_0

    .line 160
    iget-object p0, p0, Lcom/example/ffmpeg/FFmpeg;->myOnParparedListener:Lcom/example/ffmpeg/listener/MyOnParparedListener;

    invoke-interface {p0}, Lcom/example/ffmpeg/listener/MyOnParparedListener;->onParpared()V

    :cond_0
    return-void
.end method

.method public onCallRenderYUV(II[B[B[B)V
    .locals 8

    const-string v0, "0129"

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0211 get the width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",get the height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v0, p0, Lcom/example/ffmpeg/FFmpeg;->myGLSurfaceView:Lcom/example/ffmpeg/opengl/MyGLSurfaceView;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/example/ffmpeg/FFmpeg;->myGLSurfaceView:Lcom/example/ffmpeg/opengl/MyGLSurfaceView;

    invoke-virtual {v0}, Lcom/example/ffmpeg/opengl/MyGLSurfaceView;->getWlRender()Lcom/example/ffmpeg/opengl/MyRender;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/example/ffmpeg/opengl/MyRender;->setRenderType(I)V

    .line 354
    iget-object v2, p0, Lcom/example/ffmpeg/FFmpeg;->myGLSurfaceView:Lcom/example/ffmpeg/opengl/MyGLSurfaceView;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/example/ffmpeg/opengl/MyGLSurfaceView;->setYUVData(II[B[B[B)V

    :cond_0
    return-void
.end method

.method public onCallTimeInfo(II)V
    .locals 2

    const-string p0, "0218"

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0218 onCallTimeInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",totalTime"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPlayingStatus(Z)V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/example/ffmpeg/FFmpeg;->myOnPlayingListener:Lcom/example/ffmpeg/listener/MyOnPlayingStatusListener;

    if-eqz v0, :cond_0

    .line 213
    iget-object p0, p0, Lcom/example/ffmpeg/FFmpeg;->myOnPlayingListener:Lcom/example/ffmpeg/listener/MyOnPlayingStatusListener;

    invoke-interface {p0, p1}, Lcom/example/ffmpeg/listener/MyOnPlayingStatusListener;->onPlaying(Z)V

    :cond_0
    return-void
.end method

.method public parpared()V
    .locals 3

    .line 143
    sget-object v0, Lcom/example/ffmpeg/FFmpeg;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parpared:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/example/ffmpeg/FFmpeg;->source:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/example/ffmpeg/FFmpeg;->source:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    sget-object v0, Lcom/example/ffmpeg/FFmpeg;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "source is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    sget v0, Lcom/example/ffmpeg/consts/FFmpegConst;->FF_URL_NOT_OPEN:I

    const-string/jumbo v1, "source is null"

    invoke-virtual {p0, v0, v1}, Lcom/example/ffmpeg/FFmpeg;->onCallError(ILjava/lang/String;)V

    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/example/ffmpeg/FFmpeg;->source:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/example/ffmpeg/FFmpeg;->initAvCodec(Ljava/lang/String;)V

    return-void
.end method

.method public native pausePlay()V
.end method

.method public releaseMediacodec()V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/example/ffmpeg/FFmpeg;->mediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/example/ffmpeg/FFmpeg;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 337
    iget-object v0, p0, Lcom/example/ffmpeg/FFmpeg;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 338
    iget-object v0, p0, Lcom/example/ffmpeg/FFmpeg;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 342
    iput-object v0, p0, Lcom/example/ffmpeg/FFmpeg;->mediaCodec:Landroid/media/MediaCodec;

    .line 343
    iput-object v0, p0, Lcom/example/ffmpeg/FFmpeg;->mediaFormat:Landroid/media/MediaFormat;

    .line 344
    iput-object v0, p0, Lcom/example/ffmpeg/FFmpeg;->info:Landroid/media/MediaCodec$BufferInfo;

    :cond_0
    return-void
.end method

.method public native resumePlay()V
.end method

.method public seek(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 235
    :cond_0
    div-int/lit16 p1, p1, 0x3e8

    invoke-virtual {p0, p1}, Lcom/example/ffmpeg/FFmpeg;->seekPlay(I)V

    return-void
.end method

.method public native seekPlay(I)V
.end method

.method public setMyGLSurfaceView(Lcom/example/ffmpeg/opengl/MyGLSurfaceView;)V
    .locals 1

    .line 120
    iput-object p1, p0, Lcom/example/ffmpeg/FFmpeg;->myGLSurfaceView:Lcom/example/ffmpeg/opengl/MyGLSurfaceView;

    .line 121
    invoke-virtual {p1}, Lcom/example/ffmpeg/opengl/MyGLSurfaceView;->getWlRender()Lcom/example/ffmpeg/opengl/MyRender;

    move-result-object p1

    new-instance v0, Lcom/example/ffmpeg/FFmpeg$1;

    invoke-direct {v0, p0}, Lcom/example/ffmpeg/FFmpeg$1;-><init>(Lcom/example/ffmpeg/FFmpeg;)V

    invoke-virtual {p1, v0}, Lcom/example/ffmpeg/opengl/MyRender;->setOnSurfaceCreateListener(Lcom/example/ffmpeg/opengl/MyRender$OnSurfaceCreateListener;)V

    return-void
.end method

.method public setMyOnCompleteListener(Lcom/example/ffmpeg/listener/MyOnCompleteListener;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/example/ffmpeg/FFmpeg;->myOnCompleteListener:Lcom/example/ffmpeg/listener/MyOnCompleteListener;

    return-void
.end method

.method public setMyOnErrorListener(Lcom/example/ffmpeg/listener/MyOnErrorListener;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/example/ffmpeg/FFmpeg;->myOnErrorListener:Lcom/example/ffmpeg/listener/MyOnErrorListener;

    return-void
.end method

.method public setMyOnPlayingListener(Lcom/example/ffmpeg/listener/MyOnPlayingStatusListener;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/example/ffmpeg/FFmpeg;->myOnPlayingListener:Lcom/example/ffmpeg/listener/MyOnPlayingStatusListener;

    return-void
.end method

.method public setMyOnTimeInfoListener(Lcom/example/ffmpeg/listener/MyOnTimeInfoListener;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/example/ffmpeg/FFmpeg;->myOnTimeInfoListener:Lcom/example/ffmpeg/listener/MyOnTimeInfoListener;

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/example/ffmpeg/FFmpeg;->source:Ljava/lang/String;

    return-void
.end method

.method public native setSurface(Landroid/view/Surface;)V
.end method

.method public setWlOnParparedListener(Lcom/example/ffmpeg/listener/MyOnParparedListener;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/example/ffmpeg/FFmpeg;->myOnParparedListener:Lcom/example/ffmpeg/listener/MyOnParparedListener;

    return-void
.end method

.method public start()V
    .locals 0

    .line 172
    invoke-virtual {p0}, Lcom/example/ffmpeg/FFmpeg;->startPlay()V

    return-void
.end method

.method public native startPlay()V
.end method

.method public stop()V
    .locals 0

    .line 329
    invoke-virtual {p0}, Lcom/example/ffmpeg/FFmpeg;->stopPlay()V

    .line 330
    invoke-virtual {p0}, Lcom/example/ffmpeg/FFmpeg;->releaseMediacodec()V

    return-void
.end method

.method public native stopPlay()V
.end method
