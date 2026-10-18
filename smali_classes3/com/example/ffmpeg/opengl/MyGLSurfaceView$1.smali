.class Lcom/example/ffmpeg/opengl/MyGLSurfaceView$1;
.super Ljava/lang/Object;
.source "MyGLSurfaceView.java"

# interfaces
.implements Lcom/example/ffmpeg/opengl/MyRender$OnRenderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/ffmpeg/opengl/MyGLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/ffmpeg/opengl/MyGLSurfaceView;


# direct methods
.method constructor <init>(Lcom/example/ffmpeg/opengl/MyGLSurfaceView;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/example/ffmpeg/opengl/MyGLSurfaceView$1;->this$0:Lcom/example/ffmpeg/opengl/MyGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRender()V
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/example/ffmpeg/opengl/MyGLSurfaceView$1;->this$0:Lcom/example/ffmpeg/opengl/MyGLSurfaceView;

    invoke-virtual {p0}, Lcom/example/ffmpeg/opengl/MyGLSurfaceView;->requestRender()V

    return-void
.end method
