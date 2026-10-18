.class Lcom/example/ffmpeg/FFmpeg$2;
.super Ljava/lang/Object;
.source "FFmpeg.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/ffmpeg/FFmpeg;->onCallComplete()V
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

    .line 242
    iput-object p1, p0, Lcom/example/ffmpeg/FFmpeg$2;->this$0:Lcom/example/ffmpeg/FFmpeg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/example/ffmpeg/FFmpeg$2;->this$0:Lcom/example/ffmpeg/FFmpeg;

    invoke-static {v0}, Lcom/example/ffmpeg/FFmpeg;->access$100(Lcom/example/ffmpeg/FFmpeg;)Lcom/example/ffmpeg/listener/MyOnCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    iget-object p0, p0, Lcom/example/ffmpeg/FFmpeg$2;->this$0:Lcom/example/ffmpeg/FFmpeg;

    invoke-static {p0}, Lcom/example/ffmpeg/FFmpeg;->access$100(Lcom/example/ffmpeg/FFmpeg;)Lcom/example/ffmpeg/listener/MyOnCompleteListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/example/ffmpeg/listener/MyOnCompleteListener;->onComplete()V

    :cond_0
    return-void
.end method
