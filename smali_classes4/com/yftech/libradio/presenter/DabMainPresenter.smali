.class public Lcom/yftech/libradio/presenter/DabMainPresenter;
.super Lcom/yftech/libmvpmodule/BasePresenter;
.source "DabMainPresenter.java"

# interfaces
.implements Lcom/yftech/libradio/presenter/interfaces/IDabMainPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/libmvpmodule/BasePresenter<",
        "Lcom/yftech/libradio/view/IDabMainView;",
        ">;",
        "Lcom/yftech/libradio/presenter/interfaces/IDabMainPresenter;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/yftech/libmvpmodule/BasePresenter;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method private getBaseApplication()Lcom/media/common/util/BaseApplication;
    .locals 3

    .line 82
    invoke-virtual {p0}, Lcom/yftech/libradio/presenter/DabMainPresenter;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    .line 85
    instance-of v1, p0, Lcom/media/common/util/BaseApplication;

    if-eqz v1, :cond_0

    .line 86
    check-cast p0, Lcom/media/common/util/BaseApplication;

    return-object p0

    .line 88
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "application not instanceof ,className: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->w(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const-string p0, "activity is null ---"

    .line 92
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->w(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$pause$6()V
    .locals 1

    .line 77
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->pause()V

    return-void
.end method

.method static synthetic lambda$play$5()V
    .locals 1

    .line 69
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->play()V

    return-void
.end method

.method static synthetic lambda$setFreq$0(Lcom/yftech/car/media/radio/dab/entity/DabEnsemble;J)V
    .locals 1

    .line 29
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->setFreq(Lcom/yftech/car/media/radio/dab/entity/DabEnsemble;J)V

    return-void
.end method

.method static synthetic lambda$startAllScan$1()V
    .locals 1

    .line 37
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->startAllScan()V

    return-void
.end method

.method static synthetic lambda$stopAllScan$2()V
    .locals 1

    .line 45
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->stopAllScan()V

    return-void
.end method

.method static synthetic lambda$stopSearch$3()V
    .locals 1

    .line 53
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->stopSearch()V

    return-void
.end method

.method static synthetic lambda$updateEnsembleList$4()V
    .locals 1

    .line 61
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->updateEnsembleList()V

    return-void
.end method


# virtual methods
.method public pause()V
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/yftech/libradio/presenter/DabMainPresenter;->getBaseApplication()Lcom/media/common/util/BaseApplication;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/media/common/util/BaseApplication;->getDataThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    sget-object v0, Lcom/yftech/libradio/presenter/-$$Lambda$DabMainPresenter$oCmW1csIpXXQmtv5sqfv_bxBwSc;->INSTANCE:Lcom/yftech/libradio/presenter/-$$Lambda$DabMainPresenter$oCmW1csIpXXQmtv5sqfv_bxBwSc;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/yftech/libradio/presenter/DabMainPresenter;->getBaseApplication()Lcom/media/common/util/BaseApplication;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/media/common/util/BaseApplication;->getDataThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    sget-object v0, Lcom/yftech/libradio/presenter/-$$Lambda$DabMainPresenter$h7IsASru2tqvUbdw_6gSWMTi078;->INSTANCE:Lcom/yftech/libradio/presenter/-$$Lambda$DabMainPresenter$h7IsASru2tqvUbdw_6gSWMTi078;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setFreq(Lcom/yftech/car/media/radio/dab/entity/DabEnsemble;J)V
    .locals 2

    .line 26
    invoke-direct {p0}, Lcom/yftech/libradio/presenter/DabMainPresenter;->getBaseApplication()Lcom/media/common/util/BaseApplication;

    move-result-object p0

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFreq Ensembleid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/DabEnsemble;->getEnsembleId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,ServiceId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/media/common/util/BaseApplication;->getDataThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    new-instance v0, Lcom/yftech/libradio/presenter/-$$Lambda$DabMainPresenter$0_5FHlE8SoQC5ydvXQFzEEwdBsI;

    invoke-direct {v0, p1, p2, p3}, Lcom/yftech/libradio/presenter/-$$Lambda$DabMainPresenter$0_5FHlE8SoQC5ydvXQFzEEwdBsI;-><init>(Lcom/yftech/car/media/radio/dab/entity/DabEnsemble;J)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public startAllScan()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/yftech/libradio/presenter/DabMainPresenter;->getBaseApplication()Lcom/media/common/util/BaseApplication;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/media/common/util/BaseApplication;->getDataThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    sget-object v0, Lcom/yftech/libradio/presenter/-$$Lambda$DabMainPresenter$7IAgFUbnJ6e84ywTrLOvIxx7jDI;->INSTANCE:Lcom/yftech/libradio/presenter/-$$Lambda$DabMainPresenter$7IAgFUbnJ6e84ywTrLOvIxx7jDI;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public stopAllScan()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/yftech/libradio/presenter/DabMainPresenter;->getBaseApplication()Lcom/media/common/util/BaseApplication;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/media/common/util/BaseApplication;->getDataThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    sget-object v0, Lcom/yftech/libradio/presenter/-$$Lambda$DabMainPresenter$ZQJKt6LRKxnMzjGcASS_o6nr1pQ;->INSTANCE:Lcom/yftech/libradio/presenter/-$$Lambda$DabMainPresenter$ZQJKt6LRKxnMzjGcASS_o6nr1pQ;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public stopSearch()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/yftech/libradio/presenter/DabMainPresenter;->getBaseApplication()Lcom/media/common/util/BaseApplication;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/media/common/util/BaseApplication;->getDataThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    sget-object v0, Lcom/yftech/libradio/presenter/-$$Lambda$DabMainPresenter$5-y8nk68thlmxiVlXse0DhDlyi0;->INSTANCE:Lcom/yftech/libradio/presenter/-$$Lambda$DabMainPresenter$5-y8nk68thlmxiVlXse0DhDlyi0;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public updateEnsembleList()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/yftech/libradio/presenter/DabMainPresenter;->getBaseApplication()Lcom/media/common/util/BaseApplication;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/media/common/util/BaseApplication;->getDataThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    sget-object v0, Lcom/yftech/libradio/presenter/-$$Lambda$DabMainPresenter$4WhtHzDRZxRCgfZcxXU00ar0MLk;->INSTANCE:Lcom/yftech/libradio/presenter/-$$Lambda$DabMainPresenter$4WhtHzDRZxRCgfZcxXU00ar0MLk;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
