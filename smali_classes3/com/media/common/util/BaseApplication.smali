.class public Lcom/media/common/util/BaseApplication;
.super Landroid/app/Application;
.source "BaseApplication.java"


# static fields
.field public static instance:Lcom/media/common/util/BaseApplication;


# instance fields
.field public dataThreadPool:Ljava/util/concurrent/ExecutorService;

.field public fixedThreadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/media/common/util/BaseApplication;
    .locals 1

    .line 26
    sget-object v0, Lcom/media/common/util/BaseApplication;->instance:Lcom/media/common/util/BaseApplication;

    return-object v0
.end method


# virtual methods
.method public getDataThreadPool()Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/media/common/util/BaseApplication;->dataThreadPool:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public getFixedThreadPool()Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/media/common/util/BaseApplication;->fixedThreadPool:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    .line 31
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 34
    sput-object p0, Lcom/media/common/util/BaseApplication;->instance:Lcom/media/common/util/BaseApplication;

    const/4 v0, 0x1

    .line 37
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/media/common/util/BaseApplication;->fixedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 38
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/media/common/util/BaseApplication;->dataThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 40
    invoke-virtual {p0}, Lcom/media/common/util/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/ToastUtils;->init(Landroid/content/Context;)V

    return-void
.end method
