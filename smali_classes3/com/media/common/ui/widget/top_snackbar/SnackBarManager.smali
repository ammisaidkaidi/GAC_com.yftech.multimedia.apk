.class Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;
.super Ljava/lang/Object;
.source "SnackBarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;,
        Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;
    }
.end annotation


# static fields
.field private static final LONG_DURATION_MS:I = 0xabe

.field static final MSG_TIMEOUT:I = 0x0

.field private static final SHORT_DURATION_MS:I = 0x5dc

.field private static sSnackbarManager:Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;


# instance fields
.field private mCurrentSnackbar:Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mNextSnackbar:Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->mLock:Ljava/lang/Object;

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$1;

    invoke-direct {v2, p0}, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$1;-><init>(Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private cancelSnackbarLocked(Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;I)Z
    .locals 1

    .line 186
    iget-object v0, p1, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;

    if-eqz v0, :cond_0

    .line 189
    iget-object p0, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 190
    invoke-interface {v0, p2}, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;->dismiss(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static getInstance()Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;
    .locals 1

    .line 23
    sget-object v0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->sSnackbarManager:Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;

    invoke-direct {v0}, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;-><init>()V

    sput-object v0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->sSnackbarManager:Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;

    .line 26
    :cond_0
    sget-object v0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->sSnackbarManager:Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;

    return-object v0
.end method

.method private isCurrentSnackbarLocked(Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;)Z
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->mCurrentSnackbar:Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->mCurrentSnackbar:Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;

    invoke-virtual {p0, p1}, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;->isSnackBar(Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isNextSnackBarLocked(Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;)Z
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->mNextSnackbar:Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->mNextSnackbar:Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;

    invoke-virtual {p0, p1}, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;->isSnackBar(Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private scheduleTimeoutLocked(Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;)V
    .locals 4

    .line 205
    iget v0, p1, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;->duration:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xabe

    .line 211
    iget v1, p1, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;->duration:I

    if-lez v1, :cond_1

    .line 212
    iget v0, p1, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;->duration:I

    goto :goto_0

    .line 213
    :cond_1
    iget v1, p1, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;->duration:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const/16 v0, 0x5dc

    .line 216
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 217
    iget-object v1, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {p0, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private showNextSnackBarLocked()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->mNextSnackbar:Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->mNextSnackbar:Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;

    iput-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->mCurrentSnackbar:Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;

    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->mNextSnackbar:Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;

    .line 175
    iget-object v1, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->mCurrentSnackbar:Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;

    iget-object v1, v1, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;

    if-eqz v1, :cond_0

    .line 177
    invoke-interface {v1}, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;->show()V

    goto :goto_0

    .line 180
    :cond_0
    iput-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->mCurrentSnackbar:Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public dismiss(Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;I)V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_0
    invoke-direct {p0, p1}, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->isCurrentSnackbarLocked(Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    iget-object p1, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->mCurrentSnackbar:Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;

    invoke-direct {p0, p1, p2}, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->cancelSnackbarLocked(Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;I)Z

    goto :goto_0

    .line 91
    :cond_0
    invoke-direct {p0, p1}, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->isNextSnackBarLocked(Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 92
    iget-object p1, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->mNextSnackbar:Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;

    invoke-direct {p0, p1, p2}, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->cancelSnackbarLocked(Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;I)Z

    .line 94
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method handleTimeout(Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;)V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 222
    :try_start_0
    iget-object v1, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->mCurrentSnackbar:Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->mNextSnackbar:Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;

    if-ne v1, p1, :cond_1

    :cond_0
    const/4 v1, 0x2

    .line 223
    invoke-direct {p0, p1, v1}, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->cancelSnackbarLocked(Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;I)Z

    .line 225
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isCurrent(Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;)Z
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_0
    invoke-direct {p0, p1}, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->isCurrentSnackbarLocked(Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 146
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isCurrentOrNext(Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;)Z
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_0
    invoke-direct {p0, p1}, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->isCurrentSnackbarLocked(Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->isNextSnackBarLocked(Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 152
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onDismissed(Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_0
    invoke-direct {p0, p1}, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->isCurrentSnackbarLocked(Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 105
    iput-object p1, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->mCurrentSnackbar:Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;

    .line 106
    iget-object p1, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->mNextSnackbar:Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;

    if-eqz p1, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->showNextSnackBarLocked()V

    .line 110
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onShown(Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    :try_start_0
    invoke-direct {p0, p1}, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->isCurrentSnackbarLocked(Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 120
    iget-object p1, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->mCurrentSnackbar:Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;

    invoke-direct {p0, p1}, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->scheduleTimeoutLocked(Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;)V

    .line 122
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public pauseTimeout(Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;)V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_0
    invoke-direct {p0, p1}, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->isCurrentSnackbarLocked(Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->mCurrentSnackbar:Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;

    iget-boolean p1, p1, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;->paused:Z

    if-nez p1, :cond_0

    .line 128
    iget-object p1, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->mCurrentSnackbar:Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;->paused:Z

    .line 129
    iget-object p1, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->mCurrentSnackbar:Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 131
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public restoreTimeoutIfPaused(Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;)V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_0
    invoke-direct {p0, p1}, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->isCurrentSnackbarLocked(Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->mCurrentSnackbar:Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;

    iget-boolean p1, p1, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;->paused:Z

    if-eqz p1, :cond_0

    .line 137
    iget-object p1, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->mCurrentSnackbar:Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;

    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;->paused:Z

    .line 138
    iget-object p1, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->mCurrentSnackbar:Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;

    invoke-direct {p0, p1}, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->scheduleTimeoutLocked(Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;)V

    .line 140
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public show(ILcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 57
    :try_start_0
    invoke-direct {p0, p2}, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->isCurrentSnackbarLocked(Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    iget-object p2, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->mCurrentSnackbar:Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;

    iput p1, p2, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;->duration:I

    .line 63
    iget-object p1, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->mCurrentSnackbar:Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 64
    iget-object p1, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->mCurrentSnackbar:Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;

    invoke-direct {p0, p1}, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->scheduleTimeoutLocked(Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;)V

    .line 65
    monitor-exit v0

    return-void

    .line 66
    :cond_0
    invoke-direct {p0, p2}, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->isNextSnackBarLocked(Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    iget-object p2, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->mNextSnackbar:Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;

    iput p1, p2, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;->duration:I

    goto :goto_0

    .line 71
    :cond_1
    new-instance v1, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;

    invoke-direct {v1, p1, p2}, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;-><init>(ILcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;)V

    iput-object v1, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->mNextSnackbar:Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;

    .line 74
    :goto_0
    iget-object p1, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->mCurrentSnackbar:Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->mCurrentSnackbar:Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;

    const/4 p2, 0x4

    invoke-direct {p0, p1, p2}, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->cancelSnackbarLocked(Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 77
    monitor-exit v0

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 80
    iput-object p1, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->mCurrentSnackbar:Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;

    .line 82
    invoke-direct {p0}, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->showNextSnackBarLocked()V

    .line 84
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
