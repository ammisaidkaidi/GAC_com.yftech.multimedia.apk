.class final Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;
.super Ljava/lang/Object;
.source "RadioManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/manager/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CarRadioManagerGlobal"
.end annotation


# static fields
.field private static final SERVICE_NAME:Ljava/lang/String; = "car_media_radio"

.field private static final gCarMusicManager:Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

.field private static mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;


# instance fields
.field private mConnectingThread:Ljava/lang/Thread;

.field private mContext:Landroid/content/Context;

.field private final mControlCallbackMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/yftech/car/widget/media/manager/RadioManager$OnRadioControlListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mDataOfRadioPlay:Lcom/yftech/car/media/radio/entity/DataOfRadio;

.field private final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mICarRadioCallback:Lcom/yftech/car/media/radio/ICarRadioCallback$Stub;

.field private mInitCallback:Lcom/yftech/car/widget/media/manager/RadioManager$InitCallback;

.field private final mLock:Ljava/lang/Object;

.field private final mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 686
    new-instance v0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    invoke-direct {v0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;-><init>()V

    sput-object v0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->gCarMusicManager:Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 688
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    .line 690
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mControlCallbackMap:Landroid/util/ArrayMap;

    .line 768
    new-instance v0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal$1;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal$1;-><init>(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 815
    new-instance v0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal$2;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal$2;-><init>(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 1999
    new-instance v0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal$3;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal$3;-><init>(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mICarRadioCallback:Lcom/yftech/car/media/radio/ICarRadioCallback$Stub;

    return-void
.end method

.method static synthetic access$000()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;
    .locals 1

    .line 683
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->get()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;Lcom/yftech/car/widget/media/manager/RadioManager$OnRadioControlListener;Landroid/os/Handler;)V
    .locals 0

    .line 683
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->registerCarRadioControlCallback(Lcom/yftech/car/widget/media/manager/RadioManager$OnRadioControlListener;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)V
    .locals 0

    .line 683
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->play()V

    return-void
.end method

.method static synthetic access$1100(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)V
    .locals 0

    .line 683
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->pause()V

    return-void
.end method

.method static synthetic access$1200(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)I
    .locals 0

    .line 683
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->stop()I

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;II)Z
    .locals 0

    .line 683
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->isFreqValid(II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;I)I
    .locals 0

    .line 683
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getMax(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;I)I
    .locals 0

    .line 683
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getStep(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;I)I
    .locals 0

    .line 683
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getManualStep(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;I)I
    .locals 0

    .line 683
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getMin(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;I)I
    .locals 0

    .line 683
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getDefault(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)I
    .locals 0

    .line 683
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->stepUp()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;Lcom/yftech/car/widget/media/manager/RadioManager$OnRadioControlListener;)V
    .locals 0

    .line 683
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->unregisterCarRadioControlCallback(Lcom/yftech/car/widget/media/manager/RadioManager$OnRadioControlListener;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)I
    .locals 0

    .line 683
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->stepDown()I

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Z
    .locals 0

    .line 683
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->scanSave()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)I
    .locals 0

    .line 683
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getScanStatus()I

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)V
    .locals 0

    .line 683
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->exit()V

    return-void
.end method

.method static synthetic access$2400(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;I)Ljava/util/List;
    .locals 0

    .line 683
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getSearchList(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;I)[Lcom/yftech/car/media/radio/entity/DataOfRadio;
    .locals 0

    .line 683
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getFavors(I)[Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2600(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Z
    .locals 0

    .line 683
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->scanAllByFreq()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2700(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)I
    .locals 0

    .line 683
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getScanType()I

    move-result p0

    return p0
.end method

.method static synthetic access$2800(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)I
    .locals 0

    .line 683
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getPlayingIndex()I

    move-result p0

    return p0
.end method

.method static synthetic access$2900(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)[Ljava/lang/String;
    .locals 0

    .line 683
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getLocationInfo()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;II)I
    .locals 0

    .line 683
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->setFreq(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$3000(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 683
    invoke-direct {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->setLocationInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;II)Ljava/lang/String;
    .locals 0

    .line 683
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getRadioName(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3200(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Z
    .locals 0

    .line 683
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->isFmStero()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3300(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;I)I
    .locals 0

    .line 683
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getSig(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$3400(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;Lcom/yftech/car/media/radio/entity/DataOfRadio;IZ)Z
    .locals 0

    .line 683
    invoke-direct {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->addFavor(Lcom/yftech/car/media/radio/entity/DataOfRadio;IZ)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3500(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z
    .locals 0

    .line 683
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->removeFavor(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3600(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;I)Ljava/util/List;
    .locals 0

    .line 683
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getFavorsList(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3700(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;Ljava/util/List;I)V
    .locals 0

    .line 683
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->updateFavorsList(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;IILcom/yftech/car/media/radio/entity/DataOfRadio;)Z
    .locals 0

    .line 683
    invoke-direct {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->updateFavor(IILcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3900(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)I
    .locals 0

    .line 683
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getLocateArea()I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Lcom/yftech/car/media/radio/entity/DataOfRadio;
    .locals 0

    .line 683
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4000(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z
    .locals 0

    .line 683
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->isFreqFavored(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4100(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Lcom/yftech/car/media/radio/entity/DataOfRadio;
    .locals 0

    .line 683
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getFMFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4200(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Lcom/yftech/car/media/radio/entity/DataOfRadio;
    .locals 0

    .line 683
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getAMFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4300(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)V
    .locals 0

    .line 683
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->requestAudioFocus()V

    return-void
.end method

.method static synthetic access$4400(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Z
    .locals 0

    .line 683
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->isPlaying()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4500(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;IZ)Z
    .locals 0

    .line 683
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->setRdsCommonStatusEnable(IZ)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4600(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;I)Z
    .locals 0

    .line 683
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->isRdsCommonStatusEnable(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4700(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Ljava/lang/String;
    .locals 0

    .line 683
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getRdsPS()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4800(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Ljava/lang/String;
    .locals 0

    .line 683
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getRdsRT()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4900(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)I
    .locals 0

    .line 683
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getRdsPty()I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Lcom/yftech/car/media/radio/entity/DataOfRadio;
    .locals 0

    .line 683
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getFreqEx()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5000(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Ljava/util/List;
    .locals 0

    .line 683
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getRdsScanInfoList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5100(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Landroid/content/Context;
    .locals 0

    .line 683
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Lcom/yftech/car/widget/media/manager/RadioManager$InitCallback;
    .locals 0

    .line 683
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mInitCallback:Lcom/yftech/car/widget/media/manager/RadioManager$InitCallback;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;Landroid/content/Context;Lcom/yftech/car/widget/media/manager/RadioManager$InitCallback;)V
    .locals 0

    .line 683
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->bindService(Landroid/content/Context;Lcom/yftech/car/widget/media/manager/RadioManager$InitCallback;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Z
    .locals 0

    .line 683
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->connectCarMusicServiceLocked()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5500()Lcom/yftech/car/media/radio/ICarRadioClientService;
    .locals 1

    .line 683
    sget-object v0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    return-object v0
.end method

.method static synthetic access$5502(Lcom/yftech/car/media/radio/ICarRadioClientService;)Lcom/yftech/car/media/radio/ICarRadioClientService;
    .locals 0

    .line 683
    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 683
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Lcom/yftech/car/media/radio/ICarRadioCallback$Stub;
    .locals 0

    .line 683
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mICarRadioCallback:Lcom/yftech/car/media/radio/ICarRadioCallback$Stub;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Landroid/util/ArrayMap;
    .locals 0

    .line 683
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mControlCallbackMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static synthetic access$5902(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;Lcom/yftech/car/media/radio/entity/DataOfRadio;)Lcom/yftech/car/media/radio/entity/DataOfRadio;
    .locals 0

    .line 683
    iput-object p1, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mDataOfRadioPlay:Lcom/yftech/car/media/radio/entity/DataOfRadio;

    return-object p1
.end method

.method static synthetic access$600(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;I)I
    .locals 0

    .line 683
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->setBand(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)I
    .locals 0

    .line 683
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getBand()I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)I
    .locals 0

    .line 683
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->seekUp()I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)I
    .locals 0

    .line 683
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->seekDown()I

    move-result p0

    return p0
.end method

.method private addFavor(Lcom/yftech/car/media/radio/entity/DataOfRadio;IZ)Z
    .locals 1

    .line 1708
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1709
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1710
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1712
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0, p1, p2, p3}, Lcom/yftech/car/media/radio/ICarRadioClientService;->addFavor(Lcom/yftech/car/media/radio/entity/DataOfRadio;IZ)Z

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    .line 1714
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1717
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private bindService(Landroid/content/Context;Lcom/yftech/car/widget/media/manager/RadioManager$InitCallback;)V
    .locals 2

    .line 755
    iput-object p2, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mInitCallback:Lcom/yftech/car/widget/media/manager/RadioManager$InitCallback;

    .line 756
    sget-object p2, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    sget-object p2, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p2}, Lcom/yftech/car/media/radio/ICarRadioClientService;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    if-eqz p2, :cond_1

    sget-object p2, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p2}, Lcom/yftech/car/media/radio/ICarRadioClientService;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 762
    :cond_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mInitCallback:Lcom/yftech/car/widget/media/manager/RadioManager$InitCallback;

    if-eqz p1, :cond_2

    .line 763
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mInitCallback:Lcom/yftech/car/widget/media/manager/RadioManager$InitCallback;

    invoke-interface {p0, v0}, Lcom/yftech/car/widget/media/manager/RadioManager$InitCallback;->onSuccess(Z)V

    goto :goto_1

    .line 757
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mContext:Landroid/content/Context;

    .line 758
    new-instance p2, Landroid/content/Intent;

    const-string v1, "com.yf.radio.service.RadioService"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.yftech.media"

    .line 759
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 760
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, p2, p0, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private connectCarMusicServiceLocked()Z
    .locals 4

    .line 717
    sget-object v0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {v0}, Lcom/yftech/car/media/radio/ICarRadioClientService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {v0}, Lcom/yftech/car/media/radio/ICarRadioClientService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "car_media_radio"

    .line 718
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 721
    :try_start_0
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 722
    invoke-static {v0}, Lcom/yftech/car/media/radio/ICarRadioClientService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object v0

    sput-object v0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 726
    sget-object v0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mICarRadioCallback:Lcom/yftech/car/media/radio/ICarRadioCallback$Stub;

    invoke-interface {v0, p0}, Lcom/yftech/car/media/radio/ICarRadioClientService;->registerUiControl(Lcom/yftech/car/media/radio/ICarRadioCallback;)V

    :cond_1
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_2
    const-string p0, "RadioManager"

    const-string/jumbo v0, "the car radio service not started!connected service fail!"

    .line 728
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :goto_0
    const-string v0, "RadioManager"

    .line 732
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "link to death error!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method private exit()V
    .locals 1

    .line 1370
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1371
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1372
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1374
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/radio/ICarRadioClientService;->slient()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1378
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1381
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private static get()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;
    .locals 1

    .line 700
    sget-object v0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->gCarMusicManager:Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    return-object v0
.end method

.method private getAMFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;
    .locals 3

    .line 1851
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1852
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object v1

    sput-object v1, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1853
    sget-object v1, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1855
    :try_start_1
    sget-object v1, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {v1}, Lcom/yftech/car/media/radio/ICarRadioClientService;->getAMFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    :catch_0
    move-exception v1

    .line 1857
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1860
    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1861
    new-instance v0, Lcom/yftech/car/media/radio/entity/DataOfRadio;

    const-string v1, ""

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getDefault(I)I

    move-result p0

    invoke-direct {v0, v1, p0, v2}, Lcom/yftech/car/media/radio/entity/DataOfRadio;-><init>(Ljava/lang/String;II)V

    return-object v0

    :catchall_0
    move-exception p0

    .line 1860
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private getBand()I
    .locals 1

    .line 979
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 980
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 981
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 983
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/radio/ICarRadioClientService;->getBand()I

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    .line 985
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 988
    :cond_0
    monitor-exit v0

    const/4 p0, -0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;
    .locals 3

    .line 704
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 705
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->connectCarMusicServiceLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "RadioManager"

    const-string v2, "car radio service is unavailable"

    .line 706
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->startReconnectThread()V

    .line 709
    :cond_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 710
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getDefault(I)I
    .locals 1

    .line 1253
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1254
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1255
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1257
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/radio/ICarRadioClientService;->getDefault(I)I

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    .line 1259
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1262
    :cond_0
    monitor-exit v0

    const/4 p0, -0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private getFMFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;
    .locals 3

    .line 1832
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1833
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object v1

    sput-object v1, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1834
    sget-object v1, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1836
    :try_start_1
    sget-object v1, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {v1}, Lcom/yftech/car/media/radio/ICarRadioClientService;->getFMFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    :catch_0
    move-exception v1

    .line 1838
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1841
    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1842
    new-instance v0, Lcom/yftech/car/media/radio/entity/DataOfRadio;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getDefault(I)I

    move-result p0

    invoke-direct {v0, v1, p0, v2}, Lcom/yftech/car/media/radio/entity/DataOfRadio;-><init>(Ljava/lang/String;II)V

    return-object v0

    :catchall_0
    move-exception p0

    .line 1841
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private getFavorBand()I
    .locals 1

    .line 998
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 999
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1000
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1002
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/radio/ICarRadioClientService;->getFavorBand()I

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    .line 1004
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1007
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private getFavors(I)[Lcom/yftech/car/media/radio/entity/DataOfRadio;
    .locals 1

    .line 1449
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1450
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1451
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1453
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/radio/ICarRadioClientService;->getFavors(I)[Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p0

    :catch_0
    move-exception p0

    .line 1455
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1458
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private getFavorsList(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/radio/entity/DataOfRadio;",
            ">;"
        }
    .end annotation

    .line 1761
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1762
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1763
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1765
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/radio/ICarRadioClientService;->getFavorsList(I)Ljava/util/List;

    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p0

    :catch_0
    move-exception p0

    .line 1767
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1770
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;
    .locals 3

    .line 916
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mDataOfRadioPlay:Lcom/yftech/car/media/radio/entity/DataOfRadio;

    if-eqz v0, :cond_0

    .line 917
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mDataOfRadioPlay:Lcom/yftech/car/media/radio/entity/DataOfRadio;

    return-object p0

    .line 920
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 921
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object v1

    sput-object v1, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 922
    sget-object v1, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 924
    :try_start_1
    sget-object v1, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {v1}, Lcom/yftech/car/media/radio/ICarRadioClientService;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mDataOfRadioPlay:Lcom/yftech/car/media/radio/entity/DataOfRadio;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 926
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 928
    :goto_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mDataOfRadioPlay:Lcom/yftech/car/media/radio/entity/DataOfRadio;

    if-eqz v1, :cond_1

    .line 929
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mDataOfRadioPlay:Lcom/yftech/car/media/radio/entity/DataOfRadio;

    monitor-exit v0

    return-object p0

    .line 932
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 933
    new-instance p0, Lcom/yftech/car/media/radio/entity/DataOfRadio;

    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/yftech/car/media/radio/entity/DataOfRadio;-><init>(Ljava/lang/String;II)V

    return-object p0

    :catchall_0
    move-exception p0

    .line 932
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private getFreqEx()Lcom/yftech/car/media/radio/entity/DataOfRadio;
    .locals 3

    .line 937
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 938
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 939
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 941
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/radio/ICarRadioClientService;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p0

    :catch_0
    move-exception p0

    .line 943
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 946
    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 947
    new-instance p0, Lcom/yftech/car/media/radio/entity/DataOfRadio;

    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/yftech/car/media/radio/entity/DataOfRadio;-><init>(Ljava/lang/String;II)V

    return-object p0

    :catchall_0
    move-exception p0

    .line 946
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private getLocateArea()I
    .locals 1

    .line 1793
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1794
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1795
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1797
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/radio/ICarRadioClientService;->getLocateArea()I

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    .line 1799
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1802
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private getLocationInfo()[Ljava/lang/String;
    .locals 1

    .line 1597
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1598
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1599
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1601
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/radio/ICarRadioClientService;->getLocationInfo()[Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p0

    :catch_0
    move-exception p0

    .line 1603
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1606
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private getManualStep(I)I
    .locals 1

    .line 1209
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1210
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1211
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1213
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/radio/ICarRadioClientService;->getManualStep(I)I

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    .line 1215
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1218
    :cond_0
    monitor-exit v0

    const/4 p0, -0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private getMax(I)I
    .locals 1

    .line 1165
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1166
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1167
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1169
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/radio/ICarRadioClientService;->getMax(I)I

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    .line 1171
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1174
    :cond_0
    monitor-exit v0

    const/4 p0, -0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private getMin(I)I
    .locals 1

    .line 1231
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1232
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1233
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1235
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/radio/ICarRadioClientService;->getMin(I)I

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    .line 1237
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1240
    :cond_0
    monitor-exit v0

    const/4 p0, -0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private getPlayingIndex()I
    .locals 1

    .line 1557
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1558
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1559
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1561
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/radio/ICarRadioClientService;->getPlayingIndex()I

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    .line 1563
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1566
    :cond_0
    monitor-exit v0

    const/4 p0, -0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private getRadioName(II)Ljava/lang/String;
    .locals 1

    .line 1646
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1647
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1648
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1650
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0, p1, p2}, Lcom/yftech/car/media/radio/ICarRadioClientService;->getRadioName(II)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p0

    :catch_0
    move-exception p0

    .line 1652
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1655
    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string p0, ""

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private getRdsPS()Ljava/lang/String;
    .locals 1

    .line 1939
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1940
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1941
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1943
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/radio/ICarRadioClientService;->getRdsPS()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p0

    :catch_0
    move-exception p0

    .line 1945
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1948
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private getRdsPty()I
    .locals 1

    .line 1971
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1972
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1973
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1975
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/radio/ICarRadioClientService;->getRdsPty()I

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    .line 1977
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1980
    :cond_0
    monitor-exit v0

    const/4 p0, -0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private getRdsRT()Ljava/lang/String;
    .locals 1

    .line 1957
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1958
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1959
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1961
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/radio/ICarRadioClientService;->getRdsRT()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p0

    :catch_0
    move-exception p0

    .line 1963
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1966
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private getRdsScanInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/radio/rds/entity/RdsInfo;",
            ">;"
        }
    .end annotation

    .line 1985
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1986
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1987
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1989
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/radio/ICarRadioClientService;->getRdsScanInfoList()Ljava/util/List;

    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p0

    :catch_0
    move-exception p0

    .line 1991
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1994
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private getScanStatus()I
    .locals 1

    .line 1334
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1335
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1336
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1338
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/radio/ICarRadioClientService;->getScanStatus()I

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    .line 1340
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1343
    :cond_0
    monitor-exit v0

    const/4 p0, -0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private getScanType()I
    .locals 1

    .line 1536
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1537
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1538
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1540
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/radio/ICarRadioClientService;->getScanType()I

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    .line 1542
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1545
    :cond_0
    monitor-exit v0

    const/4 p0, -0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private getSearchList(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/radio/entity/DataOfRadio;",
            ">;"
        }
    .end annotation

    .line 1426
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1427
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1428
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1430
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/radio/ICarRadioClientService;->getSearchList(I)Ljava/util/List;

    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p0

    :catch_0
    move-exception p0

    .line 1432
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1435
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private getSig(I)I
    .locals 1

    .line 1686
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1687
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1688
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1690
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/radio/ICarRadioClientService;->getSig(I)I

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    .line 1692
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1695
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private getStep(I)I
    .locals 1

    .line 1187
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1188
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1189
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1191
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/radio/ICarRadioClientService;->getStep(I)I

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    .line 1193
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1196
    :cond_0
    monitor-exit v0

    const/4 p0, -0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private isFavorFull(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z
    .locals 1

    .line 1729
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1730
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1731
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1733
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/radio/ICarRadioClientService;->isFavorFull(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    .line 1735
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1738
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private isFavorsEmpty()Z
    .locals 1

    .line 1509
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1510
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1511
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1513
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/radio/ICarRadioClientService;->isFavorsEmpty()Z

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    .line 1515
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1518
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private isFmStero()Z
    .locals 1

    .line 1667
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1668
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1669
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1671
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/radio/ICarRadioClientService;->isFmStero()Z

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    .line 1673
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1676
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private isFreqFavored(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z
    .locals 1

    .line 1813
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1814
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1815
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1817
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/radio/ICarRadioClientService;->isFreqFavored(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    .line 1819
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1822
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private isFreqValid(II)Z
    .locals 1

    .line 1143
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1144
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1145
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1147
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0, p1, p2}, Lcom/yftech/car/media/radio/ICarRadioClientService;->isFreqValid(II)Z

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    .line 1149
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1152
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private isPlaying()Z
    .locals 0

    .line 1884
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1885
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    if-eqz p0, :cond_0

    .line 1887
    :try_start_0
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/radio/ICarRadioClientService;->isPlaying()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1889
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isRdsCommonStatusEnable(I)Z
    .locals 1

    .line 1921
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1922
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1923
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1925
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/radio/ICarRadioClientService;->isRdsCommonStatusEnable(I)Z

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    .line 1927
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1930
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private pause()V
    .locals 1

    .line 1100
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1101
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1102
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1104
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/radio/ICarRadioClientService;->pause()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1106
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1109
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private play()V
    .locals 1

    .line 1081
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1082
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1083
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1085
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/radio/ICarRadioClientService;->play()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1087
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1090
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private registerCarRadioControlCallback(Lcom/yftech/car/widget/media/manager/RadioManager$OnRadioControlListener;Landroid/os/Handler;)V
    .locals 4

    if-eqz p1, :cond_5

    .line 849
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 850
    :try_start_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mControlCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 852
    iget-object v3, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mControlCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/widget/media/manager/RadioManager$OnRadioControlListener;

    if-nez v3, :cond_0

    .line 854
    iget-object v1, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mControlCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 855
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->registerCarRadioControlCallback(Lcom/yftech/car/widget/media/manager/RadioManager$OnRadioControlListener;Landroid/os/Handler;)V

    .line 856
    monitor-exit v0

    return-void

    :cond_0
    if-ne v3, p1, :cond_1

    .line 859
    iget-object v1, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mControlCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 864
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->connectCarMusicServiceLocked()Z

    move-result v1

    if-nez v1, :cond_3

    .line 865
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->startReconnectThread()V

    .line 867
    :cond_3
    iget-object v1, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mControlCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 868
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mControlCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 847
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "callback is null,callback Cannot be empty"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private removeFavor(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z
    .locals 1

    .line 1747
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1748
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1749
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1751
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/radio/ICarRadioClientService;->removeFavor(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    .line 1753
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1756
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private requestAudioFocus()V
    .locals 1

    .line 1867
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1868
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1869
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1871
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/radio/ICarRadioClientService;->requestAudioFocus()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1873
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1876
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private scanAll(I)V
    .locals 1

    .line 1471
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1472
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1473
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1475
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/radio/ICarRadioClientService;->scanAll(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1477
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1480
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private scanAllByFreq()Z
    .locals 1

    .line 1489
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1490
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1491
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1493
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/radio/ICarRadioClientService;->scanAllByFreq()Z

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    .line 1495
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1498
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private scanSave()Z
    .locals 1

    .line 1314
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1315
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1316
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1318
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/radio/ICarRadioClientService;->scanSave()Z

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    .line 1320
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1323
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private seekDown()I
    .locals 1

    .line 1041
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1042
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1043
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1045
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/radio/ICarRadioClientService;->seekDown()I

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    .line 1047
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1050
    :cond_0
    monitor-exit v0

    const/4 p0, -0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private seekPlay()V
    .locals 1

    .line 1062
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1063
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1064
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1066
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/radio/ICarRadioClientService;->seekPlay()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1068
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1071
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private seekUp()I
    .locals 1

    .line 1020
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1021
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1022
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1024
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/radio/ICarRadioClientService;->seekUp()I

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    .line 1026
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1029
    :cond_0
    monitor-exit v0

    const/4 p0, -0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private setBand(I)I
    .locals 1

    .line 959
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 960
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 961
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 963
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/radio/ICarRadioClientService;->setBand(I)I

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    .line 965
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 968
    :cond_0
    monitor-exit v0

    const/4 p0, -0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private setFavorBand(I)V
    .locals 1

    .line 1578
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1579
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1580
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1582
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/radio/ICarRadioClientService;->setFavorBand(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1584
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1587
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private setFreq(II)I
    .locals 1

    .line 896
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 897
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 898
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 900
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0, p1, p2}, Lcom/yftech/car/media/radio/ICarRadioClientService;->setFreq(II)I

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    .line 902
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 905
    :cond_0
    monitor-exit v0

    const/4 p0, -0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private setLocationInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1622
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1623
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1624
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1626
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0, p1, p2, p3}, Lcom/yftech/car/media/radio/ICarRadioClientService;->setLocationInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1628
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1631
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private setRdsCommonStatusEnable(IZ)Z
    .locals 1

    .line 1901
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1902
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1903
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1905
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0, p1, p2}, Lcom/yftech/car/media/radio/ICarRadioClientService;->setRdsCommonStatusEnable(IZ)Z

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    .line 1907
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1910
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private silent()V
    .locals 1

    .line 1353
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1354
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1355
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1357
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/radio/ICarRadioClientService;->slient()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1359
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1362
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private startReconnectThread()V
    .locals 1

    .line 782
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mConnectingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mConnectingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 783
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mConnectingThread:Ljava/lang/Thread;

    .line 784
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mConnectingThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method private stepDown()I
    .locals 1

    .line 1295
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1296
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1297
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1299
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/radio/ICarRadioClientService;->stepDown()I

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    .line 1301
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1304
    :cond_0
    monitor-exit v0

    const/4 p0, -0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private stepUp()I
    .locals 1

    .line 1274
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1275
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1276
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1278
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/radio/ICarRadioClientService;->stepUp()I

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    .line 1280
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1283
    :cond_0
    monitor-exit v0

    const/4 p0, -0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private stop()I
    .locals 1

    .line 1120
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1121
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1122
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1124
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/radio/ICarRadioClientService;->stop()I

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    .line 1126
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1129
    :cond_0
    monitor-exit v0

    const/4 p0, -0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private unregisterCarRadioControlCallback(Lcom/yftech/car/widget/media/manager/RadioManager$OnRadioControlListener;)V
    .locals 2

    .line 875
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 876
    :try_start_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mControlCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 877
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mControlCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
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

.method private updateFavor(IILcom/yftech/car/media/radio/entity/DataOfRadio;)Z
    .locals 1

    .line 1403
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1404
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1405
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1407
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0, p1, p2, p3}, Lcom/yftech/car/media/radio/ICarRadioClientService;->updateFavor(IILcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    .line 1409
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1412
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private updateFavorsList(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/radio/entity/DataOfRadio;",
            ">;I)V"
        }
    .end annotation

    .line 1775
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1776
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/radio/ICarRadioClientService;

    move-result-object p0

    sput-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 1777
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1779
    :try_start_1
    sget-object p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    invoke-interface {p0, p1, p2}, Lcom/yftech/car/media/radio/ICarRadioClientService;->updateFavorsList(Ljava/util/List;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1781
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1784
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    const-string v0, "RadioManager"

    const-string v1, "binder died,reconnect service car_media_radio after 1000ms!"

    .line 742
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 745
    :try_start_0
    sget-object v1, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 746
    sput-object v1, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mCarRadioService:Lcom/yftech/car/media/radio/ICarRadioClientService;

    .line 747
    iget-object v1, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->mControlCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 749
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->startReconnectThread()V

    .line 751
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

.method public run()V
    .locals 3

    const-string v0, "RadioManager"

    const-string v1, "connecting service car_media_radio!"

    .line 801
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 803
    :goto_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->connectCarMusicServiceLocked()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x78

    if-ge v0, v1, :cond_0

    const-wide/16 v1, 0x3e8

    .line 805
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 807
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    const-string v1, "RadioManager"

    const-string/jumbo v2, "reconnecting service car_media_radio!"

    .line 809
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->connectCarMusicServiceLocked()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
