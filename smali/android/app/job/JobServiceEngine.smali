.class public abstract Landroid/app/job/JobServiceEngine;
.super Ljava/lang/Object;
.source "JobServiceEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/JobServiceEngine$JobHandler;,
        Landroid/app/job/JobServiceEngine$JobInterface;
    }
.end annotation


# static fields
.field private static final MSG_EXECUTE_JOB:I = 0x0

.field private static final MSG_JOB_FINISHED:I = 0x2

.field private static final MSG_STOP_JOB:I = 0x1

.field private static final TAG:Ljava/lang/String; = "JobServiceEngine"


# instance fields
.field private final mBinder:Landroid/app/job/IJobService;

.field mHandler:Landroid/app/job/JobServiceEngine$JobHandler;


# direct methods
.method public constructor <init>(Landroid/app/Service;)V
    .locals 1

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance v0, Landroid/app/job/JobServiceEngine$JobInterface;

    invoke-direct {v0, p0}, Landroid/app/job/JobServiceEngine$JobInterface;-><init>(Landroid/app/job/JobServiceEngine;)V

    iput-object v0, p0, Landroid/app/job/JobServiceEngine;->mBinder:Landroid/app/job/IJobService;

    .line 184
    new-instance v0, Landroid/app/job/JobServiceEngine$JobHandler;

    invoke-virtual {p1}, Landroid/app/Service;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroid/app/job/JobServiceEngine$JobHandler;-><init>(Landroid/app/job/JobServiceEngine;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/job/JobServiceEngine;->mHandler:Landroid/app/job/JobServiceEngine$JobHandler;

    return-void
.end method


# virtual methods
.method public final getBinder()Landroid/os/IBinder;
    .locals 0

    .line 192
    iget-object p0, p0, Landroid/app/job/JobServiceEngine;->mBinder:Landroid/app/job/IJobService;

    invoke-interface {p0}, Landroid/app/job/IJobService;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public jobFinished(Landroid/app/job/JobParameters;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 216
    iget-object p0, p0, Landroid/app/job/JobServiceEngine;->mHandler:Landroid/app/job/JobServiceEngine$JobHandler;

    const/4 v0, 0x2

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 217
    iput p2, p0, Landroid/os/Message;->arg2:I

    .line 218
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 214
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "params"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract onStartJob(Landroid/app/job/JobParameters;)Z
.end method

.method public abstract onStopJob(Landroid/app/job/JobParameters;)Z
.end method
