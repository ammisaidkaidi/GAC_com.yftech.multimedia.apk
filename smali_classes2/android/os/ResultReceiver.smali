.class public Landroid/os/ResultReceiver;
.super Ljava/lang/Object;
.source "ResultReceiver.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ResultReceiver$MyResultReceiver;,
        Landroid/os/ResultReceiver$MyRunnable;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/ResultReceiver;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mHandler:Landroid/os/Handler;

.field final mLocal:Z

.field mReceiver:Lcom/android/internal/os/IResultReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 128
    new-instance v0, Landroid/os/ResultReceiver$1;

    invoke-direct {v0}, Landroid/os/ResultReceiver$1;-><init>()V

    sput-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Landroid/os/ResultReceiver;->mLocal:Z

    .line 71
    iput-object p1, p0, Landroid/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Landroid/os/ResultReceiver;->mLocal:Z

    const/4 v0, 0x0

    .line 124
    iput-object v0, p0, Landroid/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object p1

    iput-object p1, p0, Landroid/os/ResultReceiver;->mReceiver:Lcom/android/internal/os/IResultReceiver;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public send(ILandroid/os/Bundle;)V
    .locals 2

    .line 82
    iget-boolean v0, p0, Landroid/os/ResultReceiver;->mLocal:Z

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Landroid/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Landroid/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/ResultReceiver$MyRunnable;

    invoke-direct {v1, p0, p1, p2}, Landroid/os/ResultReceiver$MyRunnable;-><init>(Landroid/os/ResultReceiver;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Landroid/os/ResultReceiver;->mReceiver:Lcom/android/internal/os/IResultReceiver;

    if-eqz v0, :cond_2

    .line 93
    :try_start_0
    iget-object p0, p0, Landroid/os/ResultReceiver;->mReceiver:Lcom/android/internal/os/IResultReceiver;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 114
    monitor-enter p0

    .line 115
    :try_start_0
    iget-object p2, p0, Landroid/os/ResultReceiver;->mReceiver:Lcom/android/internal/os/IResultReceiver;

    if-nez p2, :cond_0

    .line 116
    new-instance p2, Landroid/os/ResultReceiver$MyResultReceiver;

    invoke-direct {p2, p0}, Landroid/os/ResultReceiver$MyResultReceiver;-><init>(Landroid/os/ResultReceiver;)V

    iput-object p2, p0, Landroid/os/ResultReceiver;->mReceiver:Lcom/android/internal/os/IResultReceiver;

    .line 118
    :cond_0
    iget-object p2, p0, Landroid/os/ResultReceiver;->mReceiver:Lcom/android/internal/os/IResultReceiver;

    invoke-interface {p2}, Lcom/android/internal/os/IResultReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 119
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
