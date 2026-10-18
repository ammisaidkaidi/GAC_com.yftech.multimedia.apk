.class public Lcom/yftech/car/widget/media/manager/RadioManager;
.super Ljava/lang/Object;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/manager/RadioManager$InitCallback;,
        Lcom/yftech/car/widget/media/manager/RadioManager$OnRadioControlListener;,
        Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioControlCallback;,
        Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RadioManager"

.field private static mInstance:Lcom/yftech/car/widget/media/manager/RadioManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;
    .locals 2

    .line 47
    sget-object v0, Lcom/yftech/car/widget/media/manager/RadioManager;->mInstance:Lcom/yftech/car/widget/media/manager/RadioManager;

    if-nez v0, :cond_1

    .line 48
    const-class v0, Lcom/yftech/car/widget/media/manager/RadioManager;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v1, Lcom/yftech/car/widget/media/manager/RadioManager;->mInstance:Lcom/yftech/car/widget/media/manager/RadioManager;

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Lcom/yftech/car/widget/media/manager/RadioManager;

    invoke-direct {v1}, Lcom/yftech/car/widget/media/manager/RadioManager;-><init>()V

    sput-object v1, Lcom/yftech/car/widget/media/manager/RadioManager;->mInstance:Lcom/yftech/car/widget/media/manager/RadioManager;

    .line 52
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 54
    :cond_1
    :goto_0
    sget-object v0, Lcom/yftech/car/widget/media/manager/RadioManager;->mInstance:Lcom/yftech/car/widget/media/manager/RadioManager;

    return-object v0
.end method

.method public static registerRadioControlCallback(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioControlCallback;)V
    .locals 2

    .line 123
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 128
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object v0

    invoke-static {v0, p0, v1}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$100(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;Lcom/yftech/car/widget/media/manager/RadioManager$OnRadioControlListener;Landroid/os/Handler;)V

    return-void

    .line 125
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No handler given, and current thread has no looper!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static registerRadioControlCallback(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioControlCallback;Landroid/os/Handler;)V
    .locals 1

    if-nez p1, :cond_1

    .line 107
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object p1, v0

    goto :goto_0

    .line 109
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No handler given, and current thread has no looper!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 113
    :cond_1
    :goto_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$100(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;Lcom/yftech/car/widget/media/manager/RadioManager$OnRadioControlListener;Landroid/os/Handler;)V

    return-void
.end method

.method public static registerRadioControlCallback(Lcom/yftech/car/widget/media/manager/RadioManager$OnRadioControlListener;)V
    .locals 2

    .line 82
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 87
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object v0

    invoke-static {v0, p0, v1}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$100(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;Lcom/yftech/car/widget/media/manager/RadioManager$OnRadioControlListener;Landroid/os/Handler;)V

    return-void

    .line 84
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No handler given, and current thread has no looper!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static registerRadioControlCallback(Lcom/yftech/car/widget/media/manager/RadioManager$OnRadioControlListener;Landroid/os/Handler;)V
    .locals 1

    if-nez p1, :cond_1

    .line 66
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object p1, v0

    goto :goto_0

    .line 68
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No handler given, and current thread has no looper!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 72
    :cond_1
    :goto_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$100(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;Lcom/yftech/car/widget/media/manager/RadioManager$OnRadioControlListener;Landroid/os/Handler;)V

    return-void
.end method

.method public static unregisterRadioControlCallback(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioControlCallback;)V
    .locals 1

    .line 137
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$200(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;Lcom/yftech/car/widget/media/manager/RadioManager$OnRadioControlListener;)V

    return-void
.end method

.method public static unregisterRadioControlCallback(Lcom/yftech/car/widget/media/manager/RadioManager$OnRadioControlListener;)V
    .locals 1

    .line 96
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$200(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;Lcom/yftech/car/widget/media/manager/RadioManager$OnRadioControlListener;)V

    return-void
.end method


# virtual methods
.method public addFavor(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z
    .locals 1

    .line 507
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$3400(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;Lcom/yftech/car/media/radio/entity/DataOfRadio;IZ)Z

    move-result p0

    return p0
.end method

.method public addFavor(Lcom/yftech/car/media/radio/entity/DataOfRadio;IZ)Z
    .locals 0

    .line 519
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$3400(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;Lcom/yftech/car/media/radio/entity/DataOfRadio;IZ)Z

    move-result p0

    return p0
.end method

.method public exit()V
    .locals 0

    .line 380
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$2300(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)V

    return-void
.end method

.method public getAMFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 604
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$4200(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object p0

    return-object p0
.end method

.method public getBand()I
    .locals 0

    .line 204
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$700(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)I

    move-result p0

    return p0
.end method

.method public getDefault(I)I
    .locals 0

    .line 320
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$1800(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;I)I

    move-result p0

    return p0
.end method

.method public getFMFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 593
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$4100(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object p0

    return-object p0
.end method

.method public getFavors(I)[Lcom/yftech/car/media/radio/entity/DataOfRadio;
    .locals 0

    .line 400
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$2500(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;I)[Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object p0

    return-object p0
.end method

.method public getFavorsList(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/radio/entity/DataOfRadio;",
            ">;"
        }
    .end annotation

    .line 539
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$3600(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;
    .locals 0

    .line 174
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$400(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object p0

    return-object p0
.end method

.method public getFreqEx()Lcom/yftech/car/media/radio/entity/DataOfRadio;
    .locals 0

    .line 183
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$500(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object p0

    return-object p0
.end method

.method public getLocateArea()I
    .locals 0

    .line 571
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$3900(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)I

    move-result p0

    return p0
.end method

.method public getLocationInfo()[Ljava/lang/String;
    .locals 0

    .line 450
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$2900(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getManualStep(I)I
    .locals 0

    .line 298
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$1600(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;I)I

    move-result p0

    return p0
.end method

.method public getMax(I)I
    .locals 0

    .line 276
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$1400(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;I)I

    move-result p0

    return p0
.end method

.method public getMin(I)I
    .locals 0

    .line 309
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$1700(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;I)I

    move-result p0

    return p0
.end method

.method public getPlayingIndex()I
    .locals 0

    .line 440
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$2800(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)I

    move-result p0

    return p0
.end method

.method public getRadioName(II)Ljava/lang/String;
    .locals 0

    .line 478
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$3100(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRdsPS()Ljava/lang/String;
    .locals 0

    .line 648
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$4700(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRdsPty()I
    .locals 0

    .line 669
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$4900(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)I

    move-result p0

    return p0
.end method

.method public getRdsRT()Ljava/lang/String;
    .locals 0

    .line 656
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$4800(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRdsScanInfoList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/radio/rds/entity/RdsInfo;",
            ">;"
        }
    .end annotation

    .line 677
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$5000(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getScanStatus()I
    .locals 0

    .line 362
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$2200(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)I

    move-result p0

    return p0
.end method

.method public getScanType()I
    .locals 0

    .line 430
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$2700(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)I

    move-result p0

    return p0
.end method

.method public getSearchList(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/radio/entity/DataOfRadio;",
            ">;"
        }
    .end annotation

    .line 390
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$2400(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSig(I)I
    .locals 0

    .line 497
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$3300(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;I)I

    move-result p0

    return p0
.end method

.method public getStep(I)I
    .locals 0

    .line 287
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$1500(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;I)I

    move-result p0

    return p0
.end method

.method public isFmStero()Z
    .locals 0

    .line 487
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$3200(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Z

    move-result p0

    return p0
.end method

.method public isFreqFavored(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z
    .locals 0

    .line 582
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$4000(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    move-result p0

    return p0
.end method

.method public isFreqValid(II)Z
    .locals 0

    .line 265
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$1300(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;II)Z

    move-result p0

    return p0
.end method

.method public isPlaying()Z
    .locals 0

    .line 621
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$4400(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Z

    move-result p0

    return p0
.end method

.method public isRdsCommonStatusEnable(I)Z
    .locals 0

    .line 640
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$4600(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;I)Z

    move-result p0

    return p0
.end method

.method public isScanStatus()Z
    .locals 1

    .line 371
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$2200(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pause()V
    .locals 0

    .line 243
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$1100(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)V

    return-void
.end method

.method public play()V
    .locals 0

    .line 234
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$1000(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)V

    return-void
.end method

.method public removeFavor(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z
    .locals 0

    .line 530
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$3500(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    move-result p0

    return p0
.end method

.method public requestAudioFocus()V
    .locals 0

    .line 612
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$4300(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)V

    return-void
.end method

.method public scanAllByFreq()V
    .locals 0

    .line 409
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$2600(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Z

    return-void
.end method

.method public scanAllByFreqEx()Z
    .locals 0

    .line 413
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$2600(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Z

    move-result p0

    return p0
.end method

.method public scanSave()V
    .locals 0

    .line 348
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$2100(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Z

    return-void
.end method

.method public scanSaveEx()Z
    .locals 0

    .line 352
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$2100(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Z

    move-result p0

    return p0
.end method

.method public seekDown()I
    .locals 0

    .line 225
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$900(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)I

    move-result p0

    return p0
.end method

.method public seekUp()I
    .locals 0

    .line 215
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$800(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)I

    move-result p0

    return p0
.end method

.method public setBand(I)I
    .locals 0

    .line 194
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$600(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;I)I

    move-result p0

    return p0
.end method

.method public setFreq(I)I
    .locals 1

    .line 153
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$300(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;II)I

    move-result p0

    return p0
.end method

.method public setLocationInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 464
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$3000(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRdsCommonStatusEnable(IZ)Z
    .locals 0

    .line 630
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$4500(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;IZ)Z

    move-result p0

    return p0
.end method

.method public stepDown()I
    .locals 0

    .line 340
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$2000(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)I

    move-result p0

    return p0
.end method

.method public stepUp()I
    .locals 0

    .line 330
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$1900(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)I

    move-result p0

    return p0
.end method

.method public stop()I
    .locals 0

    .line 253
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$1200(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)I

    move-result p0

    return p0
.end method

.method public updateFavor(IILcom/yftech/car/media/radio/entity/DataOfRadio;)Z
    .locals 0

    .line 561
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$3800(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;IILcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    move-result p0

    return p0
.end method

.method public updateFavorsList(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/radio/entity/DataOfRadio;",
            ">;I)V"
        }
    .end annotation

    .line 549
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$3700(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;Ljava/util/List;I)V

    return-void
.end method
