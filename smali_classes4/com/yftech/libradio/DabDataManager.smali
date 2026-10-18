.class public Lcom/yftech/libradio/DabDataManager;
.super Ljava/lang/Object;
.source "DabDataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/libradio/DabDataManager$DabDataManagerCallback;
    }
.end annotation


# static fields
.field private static final instance:Lcom/yftech/libradio/DabDataManager;

.field private static final observors:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/yftech/libradio/DabDataManager$DabDataManagerCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private callback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

.field private isInitialized:Z

.field private mDabChannelInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/libradio/bean/DabChannelInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDataDabChannelInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/libradio/bean/DabChannelInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/yftech/libradio/DabDataManager;

    invoke-direct {v0}, Lcom/yftech/libradio/DabDataManager;-><init>()V

    sput-object v0, Lcom/yftech/libradio/DabDataManager;->instance:Lcom/yftech/libradio/DabDataManager;

    .line 23
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/yftech/libradio/DabDataManager;->observors:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/libradio/DabDataManager;->mDabChannelInfoList:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/libradio/DabDataManager;->mDataDabChannelInfoList:Ljava/util/List;

    .line 129
    new-instance v0, Lcom/yftech/libradio/DabDataManager$2;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/DabDataManager$2;-><init>(Lcom/yftech/libradio/DabDataManager;)V

    iput-object v0, p0, Lcom/yftech/libradio/DabDataManager;->callback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

    .line 27
    invoke-virtual {p0}, Lcom/yftech/libradio/DabDataManager;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/libradio/DabDataManager;)Ljava/util/List;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/yftech/libradio/DabDataManager;->mDabChannelInfoList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/libradio/DabDataManager;)Ljava/util/List;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/yftech/libradio/DabDataManager;->mDataDabChannelInfoList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200()Ljava/util/HashSet;
    .locals 1

    .line 18
    sget-object v0, Lcom/yftech/libradio/DabDataManager;->observors:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$300(Lcom/yftech/libradio/DabDataManager;Lcom/yftech/libradio/bean/DabChannelInfo;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/yftech/libradio/DabDataManager;->isEpgService(Lcom/yftech/libradio/bean/DabChannelInfo;)V

    return-void
.end method

.method static synthetic access$400(Lcom/yftech/libradio/DabDataManager;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/yftech/libradio/DabDataManager;->updateData()V

    return-void
.end method

.method public static getInstance()Lcom/yftech/libradio/DabDataManager;
    .locals 1

    .line 31
    sget-object v0, Lcom/yftech/libradio/DabDataManager;->instance:Lcom/yftech/libradio/DabDataManager;

    return-object v0
.end method

.method private isEpgService(Lcom/yftech/libradio/bean/DabChannelInfo;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 125
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "frequency: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getFrequency()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " , serviceid: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getServiceId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getFrequency()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getServiceId()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->isEpgServiceId(IJ)Z

    return-void
.end method

.method private updateData()V
    .locals 1

    .line 80
    new-instance v0, Lcom/yftech/libradio/DabDataManager$1;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/DabDataManager$1;-><init>(Lcom/yftech/libradio/DabDataManager;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    .line 114
    invoke-virtual {v0, p0}, Lcom/yftech/libradio/DabDataManager$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public getDabChannelInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yftech/libradio/bean/DabChannelInfo;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/yftech/libradio/DabDataManager;->mDabChannelInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/yftech/libradio/DabDataManager;->updateData()V

    .line 68
    :cond_0
    iget-object p0, p0, Lcom/yftech/libradio/DabDataManager;->mDabChannelInfoList:Ljava/util/List;

    return-object p0
.end method

.method public getDataDabChannelInfoList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yftech/libradio/bean/DabChannelInfo;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object p0, p0, Lcom/yftech/libradio/DabDataManager;->mDataDabChannelInfoList:Ljava/util/List;

    return-object p0
.end method

.method public init()V
    .locals 2

    const-string v0, "initialize  DabDataManager ---"

    .line 35
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/DabDataManager;->callback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->registerRadioControlCallback(Lcom/yftech/car/media/radio/dab/CarDabRadioManager$OnDabRadioControlListener;)V

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/yftech/libradio/DabDataManager;->isInitialized:Z

    return-void
.end method

.method public isInitialized()Z
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isInitialized: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/libradio/DabDataManager;->isInitialized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 49
    iget-boolean p0, p0, Lcom/yftech/libradio/DabDataManager;->isInitialized:Z

    return p0
.end method

.method public isRegisterObservor(Lcom/yftech/libradio/DabDataManager$DabDataManagerCallback;)Z
    .locals 0

    .line 61
    sget-object p0, Lcom/yftech/libradio/DabDataManager;->observors:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public registerObservor(Lcom/yftech/libradio/DabDataManager$DabDataManagerCallback;)V
    .locals 0

    .line 53
    sget-object p0, Lcom/yftech/libradio/DabDataManager;->observors:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 41
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/DabDataManager;->callback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->unregisterRadioControlCallback(Lcom/yftech/car/media/radio/dab/CarDabRadioManager$OnDabRadioControlListener;)V

    .line 42
    iget-object v0, p0, Lcom/yftech/libradio/DabDataManager;->mDabChannelInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/yftech/libradio/DabDataManager;->isInitialized:Z

    const-string p0, "uninitialize  DabDataManager ---"

    .line 44
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public unregisterObservor(Lcom/yftech/libradio/DabDataManager$DabDataManagerCallback;)V
    .locals 0

    .line 57
    sget-object p0, Lcom/yftech/libradio/DabDataManager;->observors:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
