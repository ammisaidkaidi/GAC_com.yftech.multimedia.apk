.class public abstract Landroid/service/vr/VrListenerService;
.super Landroid/app/Service;
.source "VrListenerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/vr/VrListenerService$VrListenerHandler;
    }
.end annotation


# static fields
.field private static final MSG_ON_CURRENT_VR_ACTIVITY_CHANGED:I = 0x1

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.vr.VrListenerService"


# instance fields
.field private final mBinder:Landroid/service/vr/IVrListener$Stub;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 101
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 71
    new-instance v0, Landroid/service/vr/VrListenerService$1;

    invoke-direct {v0, p0}, Landroid/service/vr/VrListenerService$1;-><init>(Landroid/service/vr/VrListenerService;)V

    iput-object v0, p0, Landroid/service/vr/VrListenerService;->mBinder:Landroid/service/vr/IVrListener$Stub;

    .line 102
    new-instance v0, Landroid/service/vr/VrListenerService$VrListenerHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/service/vr/VrListenerService$VrListenerHandler;-><init>(Landroid/service/vr/VrListenerService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/service/vr/VrListenerService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Landroid/service/vr/VrListenerService;)Landroid/os/Handler;
    .locals 0

    .line 59
    iget-object p0, p0, Landroid/service/vr/VrListenerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final isVrModePackageEnabled(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 1

    .line 166
    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 170
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->isVrModePackageEnabled(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 98
    iget-object p0, p0, Landroid/service/vr/VrListenerService;->mBinder:Landroid/service/vr/IVrListener$Stub;

    return-object p0
.end method

.method public onCurrentVrActivityChanged(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public onCurrentVrActivityChanged(Landroid/content/ComponentName;ZI)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 145
    :cond_0
    invoke-virtual {p0, p1}, Landroid/service/vr/VrListenerService;->onCurrentVrActivityChanged(Landroid/content/ComponentName;)V

    return-void
.end method
