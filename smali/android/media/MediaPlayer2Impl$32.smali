.class Landroid/media/MediaPlayer2Impl$32;
.super Landroid/media/MediaPlayer2Impl$Task;
.source "MediaPlayer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer2Impl;->releaseDrm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer2Impl;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer2Impl;IZ)V
    .locals 0

    .line 3525
    iput-object p1, p0, Landroid/media/MediaPlayer2Impl$32;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaPlayer2Impl$Task;-><init>(Landroid/media/MediaPlayer2Impl;IZ)V

    return-void
.end method


# virtual methods
.method process()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaPlayer2$NoDrmSchemeException;
        }
    .end annotation

    .line 3528
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$32;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v0}, Landroid/media/MediaPlayer2Impl;->access$4800(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "MediaPlayer2Impl"

    const-string/jumbo v2, "releaseDrm:"

    .line 3529
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3531
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$32;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v1}, Landroid/media/MediaPlayer2Impl;->access$5700(Landroid/media/MediaPlayer2Impl;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 3542
    :try_start_1
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$32;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v1}, Landroid/media/MediaPlayer2Impl;->access$5800(Landroid/media/MediaPlayer2Impl;)V

    .line 3545
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$32;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v1}, Landroid/media/MediaPlayer2Impl;->access$5900(Landroid/media/MediaPlayer2Impl;)V

    .line 3547
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl$32;->this$0:Landroid/media/MediaPlayer2Impl;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/media/MediaPlayer2Impl;->access$5702(Landroid/media/MediaPlayer2Impl;Z)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string v1, "MediaPlayer2Impl"

    const-string/jumbo v2, "releaseDrm: Exception "

    .line 3553
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3555
    :goto_0
    monitor-exit v0

    return-void

    :catch_1
    move-exception p0

    const-string v1, "MediaPlayer2Impl"

    const-string/jumbo v2, "releaseDrm: Exception "

    .line 3549
    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3550
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "releaseDrm: The player is not in a valid state."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const-string p0, "MediaPlayer2Impl"

    const-string/jumbo v1, "releaseDrm(): No active DRM scheme to release."

    .line 3532
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3533
    new-instance p0, Landroid/media/MediaPlayer2Impl$NoDrmSchemeExceptionImpl;

    const-string/jumbo v1, "releaseDrm: No active DRM scheme to release."

    invoke-direct {p0, v1}, Landroid/media/MediaPlayer2Impl$NoDrmSchemeExceptionImpl;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 3555
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
