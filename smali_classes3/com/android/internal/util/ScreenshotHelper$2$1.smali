.class Lcom/android/internal/util/ScreenshotHelper$2$1;
.super Landroid/os/Handler;
.source "ScreenshotHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/util/ScreenshotHelper$2;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/util/ScreenshotHelper$2;

.field final synthetic val$myConn:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Lcom/android/internal/util/ScreenshotHelper$2;Landroid/os/Looper;Landroid/content/ServiceConnection;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/internal/util/ScreenshotHelper$2$1;->this$1:Lcom/android/internal/util/ScreenshotHelper$2;

    iput-object p3, p0, Lcom/android/internal/util/ScreenshotHelper$2$1;->val$myConn:Landroid/content/ServiceConnection;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 82
    iget-object p1, p0, Lcom/android/internal/util/ScreenshotHelper$2$1;->this$1:Lcom/android/internal/util/ScreenshotHelper$2;

    iget-object p1, p1, Lcom/android/internal/util/ScreenshotHelper$2;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    invoke-static {p1}, Lcom/android/internal/util/ScreenshotHelper;->access$000(Lcom/android/internal/util/ScreenshotHelper;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$2$1;->this$1:Lcom/android/internal/util/ScreenshotHelper$2;

    iget-object v0, v0, Lcom/android/internal/util/ScreenshotHelper$2;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    invoke-static {v0}, Lcom/android/internal/util/ScreenshotHelper;->access$100(Lcom/android/internal/util/ScreenshotHelper;)Landroid/content/ServiceConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelper$2$1;->val$myConn:Landroid/content/ServiceConnection;

    if-ne v0, v1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$2$1;->this$1:Lcom/android/internal/util/ScreenshotHelper$2;

    iget-object v0, v0, Lcom/android/internal/util/ScreenshotHelper$2;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    invoke-static {v0}, Lcom/android/internal/util/ScreenshotHelper;->access$200(Lcom/android/internal/util/ScreenshotHelper;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelper$2$1;->this$1:Lcom/android/internal/util/ScreenshotHelper$2;

    iget-object v1, v1, Lcom/android/internal/util/ScreenshotHelper$2;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    invoke-static {v1}, Lcom/android/internal/util/ScreenshotHelper;->access$100(Lcom/android/internal/util/ScreenshotHelper;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 85
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$2$1;->this$1:Lcom/android/internal/util/ScreenshotHelper$2;

    iget-object v0, v0, Lcom/android/internal/util/ScreenshotHelper$2;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/util/ScreenshotHelper;->access$102(Lcom/android/internal/util/ScreenshotHelper;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 86
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$2$1;->this$1:Lcom/android/internal/util/ScreenshotHelper$2;

    iget-object v0, v0, Lcom/android/internal/util/ScreenshotHelper$2;->val$handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/internal/util/ScreenshotHelper$2$1;->this$1:Lcom/android/internal/util/ScreenshotHelper$2;

    iget-object p0, p0, Lcom/android/internal/util/ScreenshotHelper$2;->val$mScreenshotTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 88
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
