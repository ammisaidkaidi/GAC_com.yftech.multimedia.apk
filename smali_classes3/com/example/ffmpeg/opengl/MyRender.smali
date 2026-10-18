.class public Lcom/example/ffmpeg/opengl/MyRender;
.super Ljava/lang/Object;
.source "MyRender.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/ffmpeg/opengl/MyRender$OnRenderListener;,
        Lcom/example/ffmpeg/opengl/MyRender$OnSurfaceCreateListener;
    }
.end annotation


# static fields
.field public static final RENDER_MEDIACODEC:I = 0x2

.field public static final RENDER_YUV:I = 0x1


# instance fields
.field private afPosition_mediacodec:I

.field private afPosition_yuv:I

.field private avPosition_mediacodec:I

.field private avPosition_yuv:I

.field private context:Landroid/content/Context;

.field private height_yuv:I

.field private onRenderListener:Lcom/example/ffmpeg/opengl/MyRender$OnRenderListener;

.field private onSurfaceCreateListener:Lcom/example/ffmpeg/opengl/MyRender$OnSurfaceCreateListener;

.field private program_mediacodec:I

.field private program_yuv:I

.field private renderType:I

.field private samplerOES_mediacodec:I

.field private sampler_u:I

.field private sampler_v:I

.field private sampler_y:I

.field private surface:Landroid/view/Surface;

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private textureBuffer:Ljava/nio/FloatBuffer;

.field private final textureData:[F

.field private textureId_mediacodec:I

.field private textureId_yuv:[I

.field private u:Ljava/nio/ByteBuffer;

.field private v:Ljava/nio/ByteBuffer;

.field private vertexBuffer:Ljava/nio/FloatBuffer;

.field private final vertexData:[F

.field private width_yuv:I

.field private y:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 28
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/example/ffmpeg/opengl/MyRender;->vertexData:[F

    .line 37
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->textureData:[F

    const/4 v0, 0x1

    .line 46
    iput v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->renderType:I

    .line 78
    iput-object p1, p0, Lcom/example/ffmpeg/opengl/MyRender;->context:Landroid/content/Context;

    .line 79
    iget-object p1, p0, Lcom/example/ffmpeg/opengl/MyRender;->vertexData:[F

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 80
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 81
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iget-object v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->vertexData:[F

    .line 82
    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/example/ffmpeg/opengl/MyRender;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 83
    iget-object p1, p0, Lcom/example/ffmpeg/opengl/MyRender;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 85
    iget-object p1, p0, Lcom/example/ffmpeg/opengl/MyRender;->textureData:[F

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 86
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 87
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iget-object v1, p0, Lcom/example/ffmpeg/opengl/MyRender;->textureData:[F

    .line 88
    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/example/ffmpeg/opengl/MyRender;->textureBuffer:Ljava/nio/FloatBuffer;

    .line 89
    iget-object p0, p0, Lcom/example/ffmpeg/opengl/MyRender;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private initRenderMediacodec()V
    .locals 3

    .line 213
    iget-object v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->context:Landroid/content/Context;

    sget v1, Lcom/example/ffmpeg/R$raw;->vertex_shader:I

    invoke-static {v0, v1}, Lcom/example/ffmpeg/opengl/MyShaderUtil;->readRawTxt(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/example/ffmpeg/opengl/MyRender;->context:Landroid/content/Context;

    sget v2, Lcom/example/ffmpeg/R$raw;->fragment_mediacodec:I

    invoke-static {v1, v2}, Lcom/example/ffmpeg/opengl/MyShaderUtil;->readRawTxt(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-static {v0, v1}, Lcom/example/ffmpeg/opengl/MyShaderUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->program_mediacodec:I

    .line 217
    iget v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->program_mediacodec:I

    const-string v1, "av_Position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->avPosition_mediacodec:I

    .line 218
    iget v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->program_mediacodec:I

    const-string v1, "af_Position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->afPosition_mediacodec:I

    .line 219
    iget v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->program_mediacodec:I

    const-string/jumbo v1, "sTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->samplerOES_mediacodec:I

    const/4 v0, 0x1

    .line 221
    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 222
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 223
    aget v0, v1, v2

    iput v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->textureId_mediacodec:I

    const/16 v0, 0x2901

    const v1, 0x8d65

    const/16 v2, 0x2802

    .line 225
    invoke-static {v1, v2, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2803

    .line 226
    invoke-static {v1, v2, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2601

    const/16 v2, 0x2801

    .line 227
    invoke-static {v1, v2, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2800

    .line 228
    invoke-static {v1, v2, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 230
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/example/ffmpeg/opengl/MyRender;->textureId_mediacodec:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 231
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/example/ffmpeg/opengl/MyRender;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->surface:Landroid/view/Surface;

    .line 232
    iget-object v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 234
    iget-object v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->onSurfaceCreateListener:Lcom/example/ffmpeg/opengl/MyRender$OnSurfaceCreateListener;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->onSurfaceCreateListener:Lcom/example/ffmpeg/opengl/MyRender$OnSurfaceCreateListener;

    iget-object p0, p0, Lcom/example/ffmpeg/opengl/MyRender;->surface:Landroid/view/Surface;

    invoke-interface {v0, p0}, Lcom/example/ffmpeg/opengl/MyRender$OnSurfaceCreateListener;->onSurfaceCreate(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method private initRenderYUV()V
    .locals 5

    .line 140
    iget-object v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->context:Landroid/content/Context;

    sget v1, Lcom/example/ffmpeg/R$raw;->vertex_shader:I

    invoke-static {v0, v1}, Lcom/example/ffmpeg/opengl/MyShaderUtil;->readRawTxt(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/example/ffmpeg/opengl/MyRender;->context:Landroid/content/Context;

    sget v2, Lcom/example/ffmpeg/R$raw;->fragment_shader:I

    invoke-static {v1, v2}, Lcom/example/ffmpeg/opengl/MyShaderUtil;->readRawTxt(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-static {v0, v1}, Lcom/example/ffmpeg/opengl/MyShaderUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->program_yuv:I

    .line 144
    iget v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->program_yuv:I

    const-string v1, "av_Position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->avPosition_yuv:I

    .line 145
    iget v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->program_yuv:I

    const-string v1, "af_Position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->afPosition_yuv:I

    .line 147
    iget v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->program_yuv:I

    const-string/jumbo v1, "sampler_y"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->sampler_y:I

    .line 148
    iget v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->program_yuv:I

    const-string/jumbo v1, "sampler_u"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->sampler_u:I

    .line 149
    iget v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->program_yuv:I

    const-string/jumbo v1, "sampler_v"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->sampler_v:I

    const/4 v0, 0x3

    .line 151
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/example/ffmpeg/opengl/MyRender;->textureId_yuv:[I

    .line 152
    iget-object v1, p0, Lcom/example/ffmpeg/opengl/MyRender;->textureId_yuv:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    :goto_0
    if-ge v2, v0, :cond_0

    .line 156
    iget-object v1, p0, Lcom/example/ffmpeg/opengl/MyRender;->textureId_yuv:[I

    aget v1, v1, v2

    const/16 v3, 0xde1

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0x2802

    const/16 v4, 0x2901

    .line 158
    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2803

    .line 159
    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2801

    const/16 v4, 0x2601

    .line 160
    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2800

    .line 161
    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private renderMediacodec()V
    .locals 7

    .line 242
    iget-object v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 243
    iget v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->program_mediacodec:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 245
    iget v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->avPosition_mediacodec:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 246
    iget v1, p0, Lcom/example/ffmpeg/opengl/MyRender;->avPosition_mediacodec:I

    iget-object v6, p0, Lcom/example/ffmpeg/opengl/MyRender;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 248
    iget v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->afPosition_mediacodec:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 249
    iget v1, p0, Lcom/example/ffmpeg/opengl/MyRender;->afPosition_mediacodec:I

    iget-object v6, p0, Lcom/example/ffmpeg/opengl/MyRender;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const v0, 0x84c0

    .line 251
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 252
    iget v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->textureId_mediacodec:I

    const v1, 0x8d65

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 253
    iget p0, p0, Lcom/example/ffmpeg/opengl/MyRender;->samplerOES_mediacodec:I

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    return-void
.end method

.method private renderYUV()V
    .locals 14

    .line 176
    iget v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->width_yuv:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->height_yuv:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->y:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->u:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->v:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 178
    iget v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->program_yuv:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 180
    iget v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->avPosition_yuv:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 181
    iget v1, p0, Lcom/example/ffmpeg/opengl/MyRender;->avPosition_yuv:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    iget-object v6, p0, Lcom/example/ffmpeg/opengl/MyRender;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 183
    iget v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->afPosition_yuv:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 184
    iget v1, p0, Lcom/example/ffmpeg/opengl/MyRender;->afPosition_yuv:I

    iget-object v6, p0, Lcom/example/ffmpeg/opengl/MyRender;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const v0, 0x84c0

    .line 186
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 187
    iget-object v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->textureId_yuv:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/16 v2, 0xde1

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v3, 0xde1

    const/16 v5, 0x1909

    .line 188
    iget v6, p0, Lcom/example/ffmpeg/opengl/MyRender;->width_yuv:I

    iget v7, p0, Lcom/example/ffmpeg/opengl/MyRender;->height_yuv:I

    const/4 v8, 0x0

    const/16 v9, 0x1909

    const/16 v10, 0x1401

    iget-object v11, p0, Lcom/example/ffmpeg/opengl/MyRender;->y:Ljava/nio/ByteBuffer;

    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const v0, 0x84c1

    .line 190
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 191
    iget-object v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->textureId_yuv:[I

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v4, 0xde1

    const/4 v5, 0x0

    const/16 v6, 0x1909

    .line 192
    iget v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->width_yuv:I

    const/4 v13, 0x2

    div-int/lit8 v7, v0, 0x2

    iget v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->height_yuv:I

    div-int/lit8 v8, v0, 0x2

    const/4 v9, 0x0

    const/16 v10, 0x1909

    const/16 v11, 0x1401

    iget-object v12, p0, Lcom/example/ffmpeg/opengl/MyRender;->u:Ljava/nio/ByteBuffer;

    invoke-static/range {v4 .. v12}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const v0, 0x84c2

    .line 194
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 195
    iget-object v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->textureId_yuv:[I

    aget v0, v0, v13

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 196
    iget v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->width_yuv:I

    div-int/lit8 v7, v0, 0x2

    iget v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->height_yuv:I

    div-int/lit8 v8, v0, 0x2

    iget-object v12, p0, Lcom/example/ffmpeg/opengl/MyRender;->v:Ljava/nio/ByteBuffer;

    invoke-static/range {v4 .. v12}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 198
    iget v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->sampler_y:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 199
    iget v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->sampler_u:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 200
    iget v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->sampler_v:I

    invoke-static {v0, v13}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 202
    iget-object v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->y:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 203
    iget-object v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->u:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 204
    iget-object v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->v:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    .line 205
    iput-object v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->y:Ljava/nio/ByteBuffer;

    .line 206
    iput-object v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->u:Ljava/nio/ByteBuffer;

    .line 207
    iput-object v0, p0, Lcom/example/ffmpeg/opengl/MyRender;->v:Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    const/16 p1, 0x4000

    .line 117
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    const/4 p1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 118
    invoke-static {p1, p1, p1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 119
    iget p1, p0, Lcom/example/ffmpeg/opengl/MyRender;->renderType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/example/ffmpeg/opengl/MyRender;->renderYUV()V

    goto :goto_0

    .line 123
    :cond_0
    iget p1, p0, Lcom/example/ffmpeg/opengl/MyRender;->renderType:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 125
    invoke-direct {p0}, Lcom/example/ffmpeg/opengl/MyRender;->renderMediacodec()V

    :cond_1
    :goto_0
    const/4 p0, 0x5

    const/4 p1, 0x0

    const/4 v0, 0x4

    .line 127
    invoke-static {p0, p1, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 132
    iget-object p1, p0, Lcom/example/ffmpeg/opengl/MyRender;->onRenderListener:Lcom/example/ffmpeg/opengl/MyRender$OnRenderListener;

    if-eqz p1, :cond_0

    .line 134
    iget-object p0, p0, Lcom/example/ffmpeg/opengl/MyRender;->onRenderListener:Lcom/example/ffmpeg/opengl/MyRender$OnRenderListener;

    invoke-interface {p0}, Lcom/example/ffmpeg/opengl/MyRender$OnRenderListener;->onRender()V

    :cond_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    const/4 p0, 0x0

    .line 112
    invoke-static {p0, p0, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/example/ffmpeg/opengl/MyRender;->initRenderYUV()V

    .line 107
    invoke-direct {p0}, Lcom/example/ffmpeg/opengl/MyRender;->initRenderMediacodec()V

    return-void
.end method

.method public setOnRenderListener(Lcom/example/ffmpeg/opengl/MyRender$OnRenderListener;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/example/ffmpeg/opengl/MyRender;->onRenderListener:Lcom/example/ffmpeg/opengl/MyRender$OnRenderListener;

    return-void
.end method

.method public setOnSurfaceCreateListener(Lcom/example/ffmpeg/opengl/MyRender$OnSurfaceCreateListener;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/example/ffmpeg/opengl/MyRender;->onSurfaceCreateListener:Lcom/example/ffmpeg/opengl/MyRender$OnSurfaceCreateListener;

    return-void
.end method

.method public setRenderType(I)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/example/ffmpeg/opengl/MyRender;->renderType:I

    return-void
.end method

.method public setYUVRenderData(II[B[B[B)V
    .locals 0

    .line 167
    iput p1, p0, Lcom/example/ffmpeg/opengl/MyRender;->width_yuv:I

    .line 168
    iput p2, p0, Lcom/example/ffmpeg/opengl/MyRender;->height_yuv:I

    .line 169
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/example/ffmpeg/opengl/MyRender;->y:Ljava/nio/ByteBuffer;

    .line 170
    invoke-static {p4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/example/ffmpeg/opengl/MyRender;->u:Ljava/nio/ByteBuffer;

    .line 171
    invoke-static {p5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/example/ffmpeg/opengl/MyRender;->v:Ljava/nio/ByteBuffer;

    return-void
.end method
