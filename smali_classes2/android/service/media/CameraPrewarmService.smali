.class public abstract Landroid/service/media/CameraPrewarmService;
.super Landroid/app/Service;
.source "CameraPrewarmService.java"


# static fields
.field public static final ACTION_PREWARM:Ljava/lang/String; = "android.service.media.CameraPrewarmService.ACTION_PREWARM"

.field public static final MSG_CAMERA_FIRED:I = 0x1


# instance fields
.field private mCameraIntentFired:Z

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 45
    new-instance v0, Landroid/service/media/CameraPrewarmService$1;

    invoke-direct {v0, p0}, Landroid/service/media/CameraPrewarmService$1;-><init>(Landroid/service/media/CameraPrewarmService;)V

    iput-object v0, p0, Landroid/service/media/CameraPrewarmService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Landroid/service/media/CameraPrewarmService;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Landroid/service/media/CameraPrewarmService;->mCameraIntentFired:Z

    return p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "android.service.media.CameraPrewarmService.ACTION_PREWARM"

    .line 62
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p0}, Landroid/service/media/CameraPrewarmService;->onPrewarm()V

    .line 64
    new-instance p1, Landroid/os/Messenger;

    iget-object p0, p0, Landroid/service/media/CameraPrewarmService;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract onCooldown(Z)V
.end method

.method public abstract onPrewarm()V
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "android.service.media.CameraPrewarmService.ACTION_PREWARM"

    .line 72
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 73
    iget-boolean p1, p0, Landroid/service/media/CameraPrewarmService;->mCameraIntentFired:Z

    invoke-virtual {p0, p1}, Landroid/service/media/CameraPrewarmService;->onCooldown(Z)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
