.class Lcom/example/ffmpeg/FFmpeg$1;
.super Ljava/lang/Object;
.source "FFmpeg.java"

# interfaces
.implements Lcom/example/ffmpeg/opengl/MyRender$OnSurfaceCreateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/ffmpeg/FFmpeg;->setMyGLSurfaceView(Lcom/example/ffmpeg/opengl/MyGLSurfaceView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/ffmpeg/FFmpeg;


# direct methods
.method constructor <init>(Lcom/example/ffmpeg/FFmpeg;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/example/ffmpeg/FFmpeg$1;->this$0:Lcom/example/ffmpeg/FFmpeg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceCreate(Landroid/view/Surface;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/example/ffmpeg/FFmpeg$1;->this$0:Lcom/example/ffmpeg/FFmpeg;

    invoke-static {v0}, Lcom/example/ffmpeg/FFmpeg;->access$000(Lcom/example/ffmpeg/FFmpeg;)Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 125
    iget-object p0, p0, Lcom/example/ffmpeg/FFmpeg$1;->this$0:Lcom/example/ffmpeg/FFmpeg;

    invoke-static {p0, p1}, Lcom/example/ffmpeg/FFmpeg;->access$002(Lcom/example/ffmpeg/FFmpeg;Landroid/view/Surface;)Landroid/view/Surface;

    :cond_0
    return-void
.end method
