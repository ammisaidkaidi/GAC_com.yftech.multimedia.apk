.class public Lcom/android/internal/backup/LocalTransportService;
.super Landroid/app/Service;
.source "LocalTransportService.java"


# static fields
.field private static sTransport:Lcom/android/internal/backup/LocalTransport;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 43
    sget-object p0, Lcom/android/internal/backup/LocalTransportService;->sTransport:Lcom/android/internal/backup/LocalTransport;

    invoke-virtual {p0}, Lcom/android/internal/backup/LocalTransport;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate()V
    .locals 3

    .line 28
    sget-object v0, Lcom/android/internal/backup/LocalTransportService;->sTransport:Lcom/android/internal/backup/LocalTransport;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/android/internal/backup/LocalTransportParameters;

    .line 30
    invoke-virtual {p0}, Lcom/android/internal/backup/LocalTransportService;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/backup/LocalTransportService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/backup/LocalTransportParameters;-><init>(Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 31
    new-instance v1, Lcom/android/internal/backup/LocalTransport;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/backup/LocalTransport;-><init>(Landroid/content/Context;Lcom/android/internal/backup/LocalTransportParameters;)V

    sput-object v1, Lcom/android/internal/backup/LocalTransportService;->sTransport:Lcom/android/internal/backup/LocalTransport;

    .line 33
    :cond_0
    sget-object p0, Lcom/android/internal/backup/LocalTransportService;->sTransport:Lcom/android/internal/backup/LocalTransport;

    invoke-virtual {p0}, Lcom/android/internal/backup/LocalTransport;->getParameters()Lcom/android/internal/backup/LocalTransportParameters;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/backup/LocalTransportParameters;->start()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 38
    sget-object p0, Lcom/android/internal/backup/LocalTransportService;->sTransport:Lcom/android/internal/backup/LocalTransport;

    invoke-virtual {p0}, Lcom/android/internal/backup/LocalTransport;->getParameters()Lcom/android/internal/backup/LocalTransportParameters;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/backup/LocalTransportParameters;->stop()V

    return-void
.end method
