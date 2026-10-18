.class public Lcom/example/ffmpeg/opengl/MyGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "MyGLSurfaceView.java"


# instance fields
.field private wlRender:Lcom/example/ffmpeg/opengl/MyRender;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, v0}, Lcom/example/ffmpeg/opengl/MyGLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x2

    .line 17
    invoke-virtual {p0, p2}, Lcom/example/ffmpeg/opengl/MyGLSurfaceView;->setEGLContextClientVersion(I)V

    .line 18
    new-instance p2, Lcom/example/ffmpeg/opengl/MyRender;

    invoke-direct {p2, p1}, Lcom/example/ffmpeg/opengl/MyRender;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/example/ffmpeg/opengl/MyGLSurfaceView;->wlRender:Lcom/example/ffmpeg/opengl/MyRender;

    .line 19
    iget-object p1, p0, Lcom/example/ffmpeg/opengl/MyGLSurfaceView;->wlRender:Lcom/example/ffmpeg/opengl/MyRender;

    invoke-virtual {p0, p1}, Lcom/example/ffmpeg/opengl/MyGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 p1, 0x0

    .line 20
    invoke-virtual {p0, p1}, Lcom/example/ffmpeg/opengl/MyGLSurfaceView;->setRenderMode(I)V

    .line 22
    iget-object p1, p0, Lcom/example/ffmpeg/opengl/MyGLSurfaceView;->wlRender:Lcom/example/ffmpeg/opengl/MyRender;

    new-instance p2, Lcom/example/ffmpeg/opengl/MyGLSurfaceView$1;

    invoke-direct {p2, p0}, Lcom/example/ffmpeg/opengl/MyGLSurfaceView$1;-><init>(Lcom/example/ffmpeg/opengl/MyGLSurfaceView;)V

    invoke-virtual {p1, p2}, Lcom/example/ffmpeg/opengl/MyRender;->setOnRenderListener(Lcom/example/ffmpeg/opengl/MyRender$OnRenderListener;)V

    return-void
.end method


# virtual methods
.method public getWlRender()Lcom/example/ffmpeg/opengl/MyRender;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/example/ffmpeg/opengl/MyGLSurfaceView;->wlRender:Lcom/example/ffmpeg/opengl/MyRender;

    return-object p0
.end method

.method public setYUVData(II[B[B[B)V
    .locals 7

    .line 32
    iget-object v0, p0, Lcom/example/ffmpeg/opengl/MyGLSurfaceView;->wlRender:Lcom/example/ffmpeg/opengl/MyRender;

    if-eqz v0, :cond_0

    .line 34
    iget-object v1, p0, Lcom/example/ffmpeg/opengl/MyGLSurfaceView;->wlRender:Lcom/example/ffmpeg/opengl/MyRender;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/example/ffmpeg/opengl/MyRender;->setYUVRenderData(II[B[B[B)V

    .line 35
    invoke-virtual {p0}, Lcom/example/ffmpeg/opengl/MyGLSurfaceView;->requestRender()V

    :cond_0
    return-void
.end method
