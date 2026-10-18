.class public Lcom/yftech/car/widget/media/utils/TaskManager;
.super Ljava/lang/Object;
.source "TaskManager.java"


# static fields
.field private static instance:Lcom/yftech/car/widget/media/utils/TaskManager;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mThreadSize:I

.field private final mUiHandler:Landroid/os/Handler;

.field private threadExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 20
    iput v0, p0, Lcom/yftech/car/widget/media/utils/TaskManager;->mThreadSize:I

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/utils/TaskManager;->mUiHandler:Landroid/os/Handler;

    return-void
.end method

.method public static getInstance()Lcom/yftech/car/widget/media/utils/TaskManager;
    .locals 2

    .line 30
    sget-object v0, Lcom/yftech/car/widget/media/utils/TaskManager;->instance:Lcom/yftech/car/widget/media/utils/TaskManager;

    if-nez v0, :cond_1

    .line 31
    const-class v0, Lcom/yftech/car/widget/media/utils/TaskManager;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/yftech/car/widget/media/utils/TaskManager;->instance:Lcom/yftech/car/widget/media/utils/TaskManager;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcom/yftech/car/widget/media/utils/TaskManager;

    invoke-direct {v1}, Lcom/yftech/car/widget/media/utils/TaskManager;-><init>()V

    sput-object v1, Lcom/yftech/car/widget/media/utils/TaskManager;->instance:Lcom/yftech/car/widget/media/utils/TaskManager;

    .line 35
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 37
    :cond_1
    :goto_0
    sget-object v0, Lcom/yftech/car/widget/media/utils/TaskManager;->instance:Lcom/yftech/car/widget/media/utils/TaskManager;

    return-object v0
.end method


# virtual methods
.method public post(Ljava/lang/Runnable;)V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/yftech/car/widget/media/utils/TaskManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "sync_thread_data_scanner"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 52
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/yftech/car/widget/media/utils/TaskManager;->mHandler:Landroid/os/Handler;

    .line 54
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/utils/TaskManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setThreadSize(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/yftech/car/widget/media/utils/TaskManager;->mThreadSize:I

    return-void
.end method

.method public threadRunnable(Ljava/lang/Runnable;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/yftech/car/widget/media/utils/TaskManager;->threadExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 59
    iget v0, p0, Lcom/yftech/car/widget/media/utils/TaskManager;->mThreadSize:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/utils/TaskManager;->threadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 61
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/utils/TaskManager;->threadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ui(Ljava/lang/Runnable;)V
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/yftech/car/widget/media/utils/TaskManager;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
