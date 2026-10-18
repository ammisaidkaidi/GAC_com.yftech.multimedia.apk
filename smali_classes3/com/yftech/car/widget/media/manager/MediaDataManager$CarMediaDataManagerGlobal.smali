.class final Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;
.super Ljava/lang/Object;
.source "MediaDataManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/manager/MediaDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CarMediaDataManagerGlobal"
.end annotation


# static fields
.field private static final SERVICE_NAME:Ljava/lang/String; = "car_media_data"

.field private static final gCarMediaDataManager:Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;


# instance fields
.field private mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

.field private mConnectingThread:Ljava/lang/Thread;

.field private mContext:Landroid/content/Context;

.field private final mControlCallbackMap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mICarDataChangeCallback:Lcom/yftech/car/media/data/callbacklibrary/ICarDataChangeCallback$Stub;

.field private mInitCallback:Lcom/yftech/car/widget/media/manager/MediaDataManager$InitCallback;

.field private final mLock:Ljava/lang/Object;

.field private final mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 710
    new-instance v0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    invoke-direct {v0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;-><init>()V

    sput-object v0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->gCarMediaDataManager:Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 712
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mLock:Ljava/lang/Object;

    .line 713
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mControlCallbackMap:Ljava/util/List;

    .line 751
    new-instance v0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal$1;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal$1;-><init>(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 782
    new-instance v0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal$2;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal$2;-><init>(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 1769
    new-instance v0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal$3;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal$3;-><init>(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mICarDataChangeCallback:Lcom/yftech/car/media/data/callbacklibrary/ICarDataChangeCallback$Stub;

    return-void
.end method

.method static synthetic access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;
    .locals 1

    .line 708
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->get()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeListener;)V
    .locals 0

    .line 708
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->registerCarDataControlCallback(Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeListener;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)I
    .locals 0

    .line 708
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getMusicFileExists()I

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)I
    .locals 0

    .line 708
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getVideoFileExists()I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)I
    .locals 0

    .line 708
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getPhotoFileExists()I

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)I
    .locals 0

    .line 708
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getTextFileExists()I

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)[B
    .locals 0

    .line 708
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getMusicExistsDataIndex()[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)[B
    .locals 0

    .line 708
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getVideoExistsDataIndex()[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)[B
    .locals 0

    .line 708
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getPhotoExistsDataIndex()[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)[B
    .locals 0

    .line 708
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getTextExistsDataIndex()[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)Ljava/util/List;
    .locals 0

    .line 708
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getExistUdiskList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)[Ljava/lang/String;
    .locals 0

    .line 708
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getUdiskList()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeListener;)V
    .locals 0

    .line 708
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->unregisterCarDataControlCallback(Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeListener;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)Ljava/util/List;
    .locals 0

    .line 708
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getFileMusics(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)Ljava/util/List;
    .locals 0

    .line 708
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getMusicDirectory(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2200(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 708
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getMusicDirectoryPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2300(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)Ljava/util/List;
    .locals 0

    .line 708
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getFolderMusics(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2400(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)Ljava/util/List;
    .locals 0

    .line 708
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getArtistsMusics(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)Ljava/util/List;
    .locals 0

    .line 708
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getAlbumsMusics(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2600(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)Ljava/util/List;
    .locals 0

    .line 708
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getGenreMusic(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2700(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;Lcom/yftech/car/media/data/entity/MediaFile;)Ljava/util/List;
    .locals 0

    .line 708
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->findSearchMusicFile(Lcom/yftech/car/media/data/entity/MediaFile;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2800(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;Ljava/lang/String;II)Ljava/util/List;
    .locals 0

    .line 708
    invoke-direct {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->findSearchFile(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2900(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)Ljava/util/List;
    .locals 0

    .line 708
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getFileVideos(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;Ljava/lang/String;)I
    .locals 0

    .line 708
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getUsbIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$3000(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)Ljava/util/List;
    .locals 0

    .line 708
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getVideoDirectory(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3100(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 708
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getVideoDirectoryPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3200(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)Ljava/util/List;
    .locals 0

    .line 708
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getFolderVideos(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3300(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)Ljava/util/List;
    .locals 0

    .line 708
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getArtistsVideo(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3400(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)Ljava/util/List;
    .locals 0

    .line 708
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getFilePhotos(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3500(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)Ljava/util/List;
    .locals 0

    .line 708
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getPhotoDirectory(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3600(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 708
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getPhotoDirectoryPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3700(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)Ljava/util/List;
    .locals 0

    .line 708
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getFolderPhotos(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3800(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)Ljava/util/List;
    .locals 0

    .line 708
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getArtistsPhoto(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3900(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;Ljava/util/List;)V
    .locals 0

    .line 708
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->deleteMediaFileList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)Z
    .locals 0

    .line 708
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->isScanner(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4000(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;Lcom/yftech/car/media/data/entity/MediaFile;III)Lcom/yftech/car/media/data/entity/MediaFolder;
    .locals 0

    .line 708
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getMediaListPage(Lcom/yftech/car/media/data/entity/MediaFile;III)Lcom/yftech/car/media/data/entity/MediaFolder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4100(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;Ljava/util/List;Ljava/lang/String;J)[I
    .locals 0

    .line 708
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->saveFileList(Ljava/util/List;Ljava/lang/String;J)[I

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4200(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;Ljava/util/List;Ljava/lang/String;J)[I
    .locals 0

    .line 708
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->saveMediaFileList(Ljava/util/List;Ljava/lang/String;J)[I

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4300(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;Ljava/lang/String;Ljava/lang/String;J)I
    .locals 0

    .line 708
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->saveMediaFile(Ljava/lang/String;Ljava/lang/String;J)I

    move-result p0

    return p0
.end method

.method static synthetic access$4400(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;
    .locals 0

    .line 708
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    return-object p0
.end method

.method static synthetic access$4402(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;)Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;
    .locals 0

    .line 708
    iput-object p1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 708
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)Lcom/yftech/car/media/data/callbacklibrary/ICarDataChangeCallback$Stub;
    .locals 0

    .line 708
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mICarDataChangeCallback:Lcom/yftech/car/media/data/callbacklibrary/ICarDataChangeCallback$Stub;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)Lcom/yftech/car/widget/media/manager/MediaDataManager$InitCallback;
    .locals 0

    .line 708
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mInitCallback:Lcom/yftech/car/widget/media/manager/MediaDataManager$InitCallback;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)Landroid/content/Context;
    .locals 0

    .line 708
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;Landroid/content/Context;Lcom/yftech/car/widget/media/manager/MediaDataManager$InitCallback;)V
    .locals 0

    .line 708
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->bindService(Landroid/content/Context;Lcom/yftech/car/widget/media/manager/MediaDataManager$InitCallback;)V

    return-void
.end method

.method static synthetic access$500(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)Z
    .locals 0

    .line 708
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->isUsbExists(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$5000(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)Z
    .locals 0

    .line 708
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->connectCarMusicServiceLocked()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5100(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)Ljava/util/List;
    .locals 0

    .line 708
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mControlCallbackMap:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)I
    .locals 0

    .line 708
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getMusicFileSize(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)I
    .locals 0

    .line 708
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getVideoFileSize(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)I
    .locals 0

    .line 708
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getPhotoFileSize(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)I
    .locals 0

    .line 708
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getTextFileSize(I)I

    move-result p0

    return p0
.end method

.method private bindService(Landroid/content/Context;Lcom/yftech/car/widget/media/manager/MediaDataManager$InitCallback;)V
    .locals 2

    .line 738
    iput-object p2, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mInitCallback:Lcom/yftech/car/widget/media/manager/MediaDataManager$InitCallback;

    .line 739
    iget-object p2, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    invoke-interface {p2}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    invoke-interface {p2}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 745
    :cond_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mInitCallback:Lcom/yftech/car/widget/media/manager/MediaDataManager$InitCallback;

    if-eqz p1, :cond_2

    .line 746
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mInitCallback:Lcom/yftech/car/widget/media/manager/MediaDataManager$InitCallback;

    invoke-interface {p0, v0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$InitCallback;->onSuccess(Z)V

    goto :goto_1

    .line 740
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mContext:Landroid/content/Context;

    .line 741
    new-instance p2, Landroid/content/Intent;

    const-string v1, "com.yf.media.scan.MediaScanService"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.yftech.media"

    .line 742
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 743
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, p2, p0, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private connectCarMusicServiceLocked()Z
    .locals 4

    .line 798
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    invoke-interface {v0}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    invoke-interface {v0}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "car_media_data"

    .line 799
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 802
    :try_start_0
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 803
    invoke-static {v0}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    .line 805
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mICarDataChangeCallback:Lcom/yftech/car/media/data/callbacklibrary/ICarDataChangeCallback$Stub;

    invoke-interface {v0, p0}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->registerChangeCallback(Lcom/yftech/car/media/data/callbacklibrary/ICarDataChangeCallback;)V

    :cond_1
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_2
    const-string p0, "MediaDataManager"

    const-string/jumbo v0, "the car media data service not started!connected service fail!"

    .line 809
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :goto_0
    const-string v0, "MediaDataManager"

    .line 813
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

    .line 814
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method private deleteMediaFileList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1659
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1660
    new-instance v0, Lcom/yftech/car/media/data/util/ParcelableFile;

    invoke-direct {v0, p1}, Lcom/yftech/car/media/data/util/ParcelableFile;-><init>(Ljava/util/List;)V

    .line 1661
    invoke-static {v0}, Lcom/yftech/car/media/data/descriptor/MemFileDescriptorOpt;->writeMemFile(Landroid/os/Parcelable;)Lcom/yftech/car/media/data/descriptor/MemFdInfo;

    move-result-object p1

    .line 1662
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1663
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    .line 1664
    iget-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1666
    :try_start_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->deleteFileList(Lcom/yftech/car/media/data/descriptor/MemFdInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1668
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "MediaDataManager"

    const-string p1, "deleteMediaFileList: the car music service not started!!!"

    .line 1671
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_1
    const-string p0, "MediaDataManager"

    .line 1675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteMediaFileList: list=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private findSearchFile(Ljava/lang/String;II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation

    .line 1389
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    if-nez v0, :cond_0

    .line 1390
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    .line 1392
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    if-eqz v0, :cond_1

    .line 1394
    :try_start_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    invoke-interface {p0, p1, p2, p3}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->findSearchFile(Ljava/lang/String;II)Lcom/yftech/car/media/data/descriptor/MemFdInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1396
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string p0, "MediaDataManager"

    const-string p1, "findSearchFile: the car music service not started!!!"

    .line 1399
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    .line 1402
    :goto_1
    invoke-static {p0}, Lcom/yftech/car/media/data/descriptor/MemFileDescriptorOpt;->readFileParcelableMedia(Lcom/yftech/car/media/data/descriptor/MemFdInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private findSearchMusicFile(Lcom/yftech/car/media/data/entity/MediaFile;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ")",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation

    .line 1364
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    if-nez v0, :cond_0

    .line 1365
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    .line 1367
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    if-eqz v0, :cond_1

    .line 1369
    :try_start_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->findSearchMusicFile(Lcom/yftech/car/media/data/entity/MediaFile;)Lcom/yftech/car/media/data/descriptor/MemFdInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1371
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string p0, "MediaDataManager"

    const-string p1, "findSearchMusicFile: the car music service not started!!!"

    .line 1374
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    .line 1377
    :goto_1
    invoke-static {p0}, Lcom/yftech/car/media/data/descriptor/MemFileDescriptorOpt;->readFileParcelableMedia(Lcom/yftech/car/media/data/descriptor/MemFdInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static get()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;
    .locals 1

    .line 721
    sget-object v0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->gCarMediaDataManager:Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    iget-object v0, v0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    if-nez v0, :cond_0

    .line 722
    sget-object v0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->gCarMediaDataManager:Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    invoke-direct {v0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    .line 724
    :cond_0
    sget-object v0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->gCarMediaDataManager:Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    return-object v0
.end method

.method private getAlbumsMusics(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFolder;",
            ">;"
        }
    .end annotation

    .line 1320
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1321
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    .line 1322
    iget-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1324
    :try_start_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->getAlbumsMusic(I)Lcom/yftech/car/media/data/descriptor/MemFdInfo;

    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1326
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "MediaDataManager"

    const-string p1, "getAlbumsMusics: the car music service not started!!!"

    .line 1329
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    .line 1331
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1332
    invoke-static {p0}, Lcom/yftech/car/media/data/descriptor/MemFileDescriptorOpt;->readFolderParcelableMedia(Lcom/yftech/car/media/data/descriptor/MemFdInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1331
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private getAlbumsPhoto(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFolder;",
            ">;"
        }
    .end annotation

    .line 1626
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1627
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    .line 1628
    iget-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1630
    :try_start_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->getAlbumsPhoto(I)Lcom/yftech/car/media/data/descriptor/MemFdInfo;

    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1632
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "MediaDataManager"

    const-string p1, "getAlbumsPhoto: the car music service not started!!!"

    .line 1635
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    .line 1637
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1638
    invoke-static {p0}, Lcom/yftech/car/media/data/descriptor/MemFileDescriptorOpt;->readFolderParcelableMedia(Lcom/yftech/car/media/data/descriptor/MemFdInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1637
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private getAlbumsVideo(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFolder;",
            ">;"
        }
    .end annotation

    .line 1507
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1508
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    .line 1509
    iget-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1511
    :try_start_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->getAlbumsVideo(I)Lcom/yftech/car/media/data/descriptor/MemFdInfo;

    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1513
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "MediaDataManager"

    const-string p1, "getAlbumsVideo: the car music service not started!!!"

    .line 1516
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    .line 1518
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1519
    invoke-static {p0}, Lcom/yftech/car/media/data/descriptor/MemFileDescriptorOpt;->readFolderParcelableMedia(Lcom/yftech/car/media/data/descriptor/MemFdInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1518
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private getArtistsMusics(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFolder;",
            ">;"
        }
    .end annotation

    .line 1297
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1298
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    .line 1299
    iget-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1301
    :try_start_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->getArtistsMusic(I)Lcom/yftech/car/media/data/descriptor/MemFdInfo;

    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1303
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "MediaDataManager"

    const-string p1, "getArtistsMusics: the car music service not started!!!"

    .line 1306
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    .line 1308
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1309
    invoke-static {p0}, Lcom/yftech/car/media/data/descriptor/MemFileDescriptorOpt;->readFolderParcelableMedia(Lcom/yftech/car/media/data/descriptor/MemFdInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1308
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private getArtistsPhoto(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFolder;",
            ">;"
        }
    .end annotation

    .line 1609
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1610
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    .line 1611
    iget-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1613
    :try_start_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->getArtistsPhoto(I)Lcom/yftech/car/media/data/descriptor/MemFdInfo;

    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1615
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "MediaDataManager"

    const-string p1, "getArtistsPhoto: the car music service not started!!!"

    .line 1618
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    .line 1620
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1621
    invoke-static {p0}, Lcom/yftech/car/media/data/descriptor/MemFileDescriptorOpt;->readFolderParcelableMedia(Lcom/yftech/car/media/data/descriptor/MemFdInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1620
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private getArtistsVideo(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFolder;",
            ">;"
        }
    .end annotation

    .line 1490
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1491
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    .line 1492
    iget-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1494
    :try_start_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->getArtistsVideo(I)Lcom/yftech/car/media/data/descriptor/MemFdInfo;

    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1496
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "MediaDataManager"

    const-string p1, "getArtistsVideo: the car music service not started!!!"

    .line 1499
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    .line 1501
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1502
    invoke-static {p0}, Lcom/yftech/car/media/data/descriptor/MemFileDescriptorOpt;->readFolderParcelableMedia(Lcom/yftech/car/media/data/descriptor/MemFdInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1501
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private getCarMusicService()Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;
    .locals 3

    .line 728
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 729
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->connectCarMusicServiceLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "MediaDataManager"

    const-string v2, "car music service is unavailable"

    .line 730
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->startReconnectThread()V

    .line 733
    :cond_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 734
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getExistUdiskList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1181
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    .line 1182
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    if-eqz v0, :cond_0

    .line 1184
    :try_start_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->getExistUdiskList()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1186
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "MediaDataManager"

    const-string v0, "getExistUdiskList: the car music service not started!!!"

    .line 1189
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getFileMusics(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation

    .line 1218
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1219
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    .line 1220
    iget-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1222
    :try_start_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->getFileMusic(I)Lcom/yftech/car/media/data/descriptor/MemFdInfo;

    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1224
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "MediaDataManager"

    const-string p1, "getFileMusics: the car music service not started!!!"

    .line 1227
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    .line 1229
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1230
    invoke-static {p0}, Lcom/yftech/car/media/data/descriptor/MemFileDescriptorOpt;->readFileParcelableMedia(Lcom/yftech/car/media/data/descriptor/MemFdInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1229
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private getFilePhotos(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation

    .line 1541
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1542
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    .line 1543
    iget-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1545
    :try_start_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->getFilePhoto(I)Lcom/yftech/car/media/data/descriptor/MemFdInfo;

    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1547
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "MediaDataManager"

    const-string p1, "getFilePhotos: the car music service not started!!!"

    .line 1550
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    .line 1552
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1553
    invoke-static {p0}, Lcom/yftech/car/media/data/descriptor/MemFileDescriptorOpt;->readFileParcelableMedia(Lcom/yftech/car/media/data/descriptor/MemFdInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1552
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private getFileVideos(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation

    .line 1412
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1413
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    .line 1414
    iget-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1416
    :try_start_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->getFileVideo(I)Lcom/yftech/car/media/data/descriptor/MemFdInfo;

    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1418
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "MediaDataManager"

    const-string p1, "getFileVideos: the car music service not started!!!"

    .line 1421
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    .line 1423
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1424
    invoke-static {p0}, Lcom/yftech/car/media/data/descriptor/MemFileDescriptorOpt;->readFileParcelableMedia(Lcom/yftech/car/media/data/descriptor/MemFdInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1423
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private getFolderMusics(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFolder;",
            ">;"
        }
    .end annotation

    .line 1275
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1276
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    .line 1277
    iget-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1279
    :try_start_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->getFolderMusic(I)Lcom/yftech/car/media/data/descriptor/MemFdInfo;

    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1281
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "MediaDataManager"

    const-string p1, "getFolderMusics: the car music service not started!!!"

    .line 1284
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    .line 1286
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1287
    invoke-static {p0}, Lcom/yftech/car/media/data/descriptor/MemFileDescriptorOpt;->readFolderParcelableMedia(Lcom/yftech/car/media/data/descriptor/MemFdInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1286
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private getFolderPhotos(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFolder;",
            ">;"
        }
    .end annotation

    .line 1592
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1593
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    .line 1594
    iget-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1596
    :try_start_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->getFolderPhoto(I)Lcom/yftech/car/media/data/descriptor/MemFdInfo;

    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1598
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "MediaDataManager"

    const-string p1, "getFolderPhotos: the car music service not started!!!"

    .line 1601
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    .line 1603
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1604
    invoke-static {p0}, Lcom/yftech/car/media/data/descriptor/MemFileDescriptorOpt;->readFolderParcelableMedia(Lcom/yftech/car/media/data/descriptor/MemFdInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1603
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private getFolderVideos(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFolder;",
            ">;"
        }
    .end annotation

    .line 1468
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1469
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    .line 1470
    iget-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1472
    :try_start_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->getFolderVideo(I)Lcom/yftech/car/media/data/descriptor/MemFdInfo;

    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1474
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "MediaDataManager"

    const-string p1, "getFolderVideos: the car music service not started!!!"

    .line 1477
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    .line 1479
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1480
    invoke-static {p0}, Lcom/yftech/car/media/data/descriptor/MemFileDescriptorOpt;->readFolderParcelableMedia(Lcom/yftech/car/media/data/descriptor/MemFdInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1479
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private getGenreMusic(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFolder;",
            ">;"
        }
    .end annotation

    .line 1342
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1343
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    .line 1344
    iget-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1346
    :try_start_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->getGenreMusic(I)Lcom/yftech/car/media/data/descriptor/MemFdInfo;

    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1348
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "MediaDataManager"

    const-string p1, "getGenreMusic: the car music service not started!!!"

    .line 1351
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    .line 1353
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1354
    invoke-static {p0}, Lcom/yftech/car/media/data/descriptor/MemFileDescriptorOpt;->readFolderParcelableMedia(Lcom/yftech/car/media/data/descriptor/MemFdInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1353
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private getGenrePhoto(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFolder;",
            ">;"
        }
    .end annotation

    .line 1643
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1644
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    .line 1645
    iget-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1647
    :try_start_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->getGenrePhoto(I)Lcom/yftech/car/media/data/descriptor/MemFdInfo;

    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1649
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "MediaDataManager"

    const-string p1, "getGenrePhoto: the car music service not started!!!"

    .line 1652
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    .line 1654
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1655
    invoke-static {p0}, Lcom/yftech/car/media/data/descriptor/MemFileDescriptorOpt;->readFolderParcelableMedia(Lcom/yftech/car/media/data/descriptor/MemFdInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1654
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private getGenreVideo(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFolder;",
            ">;"
        }
    .end annotation

    .line 1524
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1525
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    .line 1526
    iget-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1528
    :try_start_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->getGenreVideo(I)Lcom/yftech/car/media/data/descriptor/MemFdInfo;

    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1530
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "MediaDataManager"

    const-string p1, "getGenreVideo: the car music service not started!!!"

    .line 1533
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    .line 1535
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1536
    invoke-static {p0}, Lcom/yftech/car/media/data/descriptor/MemFileDescriptorOpt;->readFolderParcelableMedia(Lcom/yftech/car/media/data/descriptor/MemFdInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1535
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private getMediaListPage(Lcom/yftech/car/media/data/entity/MediaFile;III)Lcom/yftech/car/media/data/entity/MediaFolder;
    .locals 2

    .line 1680
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1681
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    .line 1682
    iget-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1684
    :try_start_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->getMediaListPage(Lcom/yftech/car/media/data/entity/MediaFile;III)Lcom/yftech/car/media/data/entity/MediaFolder;

    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p0

    :catch_0
    move-exception p0

    .line 1686
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "MediaDataManager"

    const-string p1, "getMediaListPage: the car music service not started!!!"

    .line 1689
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    :goto_0
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

.method private getMusicDirectory(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation

    .line 1236
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1237
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    .line 1238
    iget-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1240
    :try_start_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->getMusicDirectory(I)Lcom/yftech/car/media/data/descriptor/MemFdInfo;

    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1242
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "MediaDataManager"

    const-string p1, "getMusicDirectory: the car music service not started!!!"

    .line 1245
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    .line 1247
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1248
    invoke-static {p0}, Lcom/yftech/car/media/data/descriptor/MemFileDescriptorOpt;->readFileParcelableMedia(Lcom/yftech/car/media/data/descriptor/MemFdInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1247
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private getMusicDirectoryPath(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation

    .line 1253
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1254
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    .line 1255
    iget-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1257
    :try_start_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->getMusicDirectoryPath(Ljava/lang/String;)Lcom/yftech/car/media/data/descriptor/MemFdInfo;

    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1259
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "MediaDataManager"

    const-string p1, "getMusicDirectoryPath: the car music service not started!!!"

    .line 1262
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    .line 1264
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1265
    invoke-static {p0}, Lcom/yftech/car/media/data/descriptor/MemFileDescriptorOpt;->readFileParcelableMedia(Lcom/yftech/car/media/data/descriptor/MemFdInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1264
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private getMusicExistsDataIndex()[B
    .locals 1

    .line 1122
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    .line 1123
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    if-eqz v0, :cond_0

    .line 1125
    :try_start_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->getMusicExistsDataIndex()[B

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1127
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "MediaDataManager"

    const-string v0, "getMusicExistsDataIndex: the car music service not started!!!"

    .line 1130
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getMusicFileExists()I
    .locals 2

    .line 1049
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1050
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    .line 1051
    iget-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1053
    :try_start_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->getMusicFileExists()I

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    .line 1055
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "MediaDataManager"

    const-string v1, "getMusicFileExists: the car music service not started!!!"

    .line 1058
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    :goto_0
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

.method private getMusicFileSize(I)I
    .locals 1

    .line 978
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    .line 979
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    if-eqz v0, :cond_0

    .line 981
    :try_start_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->getMusicFileSize(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 983
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "MediaDataManager"

    const-string p1, "getMusicFileSize: the car music service not started!!!"

    .line 986
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private getPhotoDirectory(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation

    .line 1558
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1559
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    .line 1560
    iget-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1562
    :try_start_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->getPhotoDirectory(I)Lcom/yftech/car/media/data/descriptor/MemFdInfo;

    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1564
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "MediaDataManager"

    const-string p1, "getMusicDirectory: the car music service not started!!!"

    .line 1567
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    .line 1569
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1570
    invoke-static {p0}, Lcom/yftech/car/media/data/descriptor/MemFileDescriptorOpt;->readFileParcelableMedia(Lcom/yftech/car/media/data/descriptor/MemFdInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1569
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private getPhotoDirectoryPath(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation

    .line 1575
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1576
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    .line 1577
    iget-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1579
    :try_start_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->getPhotoDirectoryPath(Ljava/lang/String;)Lcom/yftech/car/media/data/descriptor/MemFdInfo;

    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1581
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "MediaDataManager"

    const-string p1, "getMusicDirectoryPath: the car music service not started!!!"

    .line 1584
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    .line 1586
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1587
    invoke-static {p0}, Lcom/yftech/car/media/data/descriptor/MemFileDescriptorOpt;->readFileParcelableMedia(Lcom/yftech/car/media/data/descriptor/MemFdInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1586
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private getPhotoExistsDataIndex()[B
    .locals 1

    .line 1150
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    .line 1151
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    if-eqz v0, :cond_0

    .line 1153
    :try_start_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->getPhotoExistsDataIndex()[B

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1155
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "MediaDataManager"

    const-string v0, "getPhotoExistsDataIndex: the car music service not started!!!"

    .line 1158
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getPhotoFileExists()I
    .locals 2

    .line 1087
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1088
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    .line 1089
    iget-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1091
    :try_start_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->getPhotoFileExists()I

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    .line 1093
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "MediaDataManager"

    const-string v1, "getPhotoFileExists: the car music service not started!!!"

    .line 1096
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    :goto_0
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

.method private getPhotoFileSize(I)I
    .locals 1

    .line 1014
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    .line 1015
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    if-eqz v0, :cond_0

    .line 1017
    :try_start_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->getPhotoFileSize(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1019
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "MediaDataManager"

    const-string p1, "getPhotoFileSize: the car music service not started!!!"

    .line 1022
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private getTextExistsDataIndex()[B
    .locals 1

    .line 1164
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    .line 1165
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    if-eqz v0, :cond_0

    .line 1167
    :try_start_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->getTextExistsDataIndex()[B

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1169
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "MediaDataManager"

    const-string v0, "getTextExistsDataIndex: the car music service not started!!!"

    .line 1172
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getTextFileExists()I
    .locals 2

    .line 1106
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1107
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    .line 1108
    iget-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1110
    :try_start_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->getTextFileExists()I

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    .line 1112
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "MediaDataManager"

    const-string v1, "getTextFileExists: the car music service not started!!!"

    .line 1115
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    :goto_0
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

.method private getTextFileSize(I)I
    .locals 1

    .line 1032
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    .line 1033
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    if-eqz v0, :cond_0

    .line 1035
    :try_start_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->getTextFileSize(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1037
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "MediaDataManager"

    const-string p1, "getTextFileSize: the car music service not started!!!"

    .line 1040
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private getUdiskList()[Ljava/lang/String;
    .locals 1

    .line 1198
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    .line 1199
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    if-eqz v0, :cond_0

    .line 1201
    :try_start_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->getUdiskList()[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1203
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "MediaDataManager"

    const-string v0, "getUdiskList: the car music service not started!!!"

    .line 1206
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getUsbIndex(Ljava/lang/String;)I
    .locals 1

    .line 924
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    .line 925
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    if-eqz v0, :cond_0

    .line 927
    :try_start_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->getUsbIndex(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 929
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "MediaDataManager"

    const-string p1, "getUsbIndex: the car scanner service not started!!!"

    .line 932
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private getVideoDirectory(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation

    .line 1429
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1430
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    .line 1431
    iget-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1433
    :try_start_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->getVideoDirectory(I)Lcom/yftech/car/media/data/descriptor/MemFdInfo;

    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1435
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "MediaDataManager"

    const-string p1, "getVideoDirectory: the car music service not started!!!"

    .line 1438
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    .line 1440
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1441
    invoke-static {p0}, Lcom/yftech/car/media/data/descriptor/MemFileDescriptorOpt;->readFileParcelableMedia(Lcom/yftech/car/media/data/descriptor/MemFdInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1440
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private getVideoDirectoryPath(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation

    .line 1446
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1447
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    .line 1448
    iget-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1450
    :try_start_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->getVideoDirectoryPath(Ljava/lang/String;)Lcom/yftech/car/media/data/descriptor/MemFdInfo;

    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1452
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "MediaDataManager"

    const-string p1, "getVideoDirectoryPath: the car music service not started!!!"

    .line 1455
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    .line 1457
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1458
    invoke-static {p0}, Lcom/yftech/car/media/data/descriptor/MemFileDescriptorOpt;->readFileParcelableMedia(Lcom/yftech/car/media/data/descriptor/MemFdInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1457
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private getVideoExistsDataIndex()[B
    .locals 1

    .line 1136
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    .line 1137
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    if-eqz v0, :cond_0

    .line 1139
    :try_start_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->getVideoExistsDataIndex()[B

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1141
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "MediaDataManager"

    const-string v0, "getVideoExistsDataIndex: the car music service not started!!!"

    .line 1144
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getVideoFileExists()I
    .locals 2

    .line 1068
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1069
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    .line 1070
    iget-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1072
    :try_start_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->getVideoFileExists()I

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    .line 1074
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "MediaDataManager"

    const-string v1, "getVideoFileExists: the car music service not started!!!"

    .line 1077
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    :goto_0
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

.method private getVideoFileSize(I)I
    .locals 1

    .line 996
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    .line 997
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    if-eqz v0, :cond_0

    .line 999
    :try_start_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->getVideoFileSize(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1001
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "MediaDataManager"

    const-string p1, "getVideoFileSize: the car music service not started!!!"

    .line 1004
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private isScanner(I)Z
    .locals 1

    .line 942
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    .line 943
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    if-eqz v0, :cond_0

    .line 945
    :try_start_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->isScanner(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 947
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "MediaDataManager"

    const-string p1, "isScanner: the car scanner service not started!!!"

    .line 950
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private isUsbExists(I)Z
    .locals 1

    .line 960
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    .line 961
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    if-eqz v0, :cond_0

    .line 963
    :try_start_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    invoke-interface {p0, p1}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->isUsbExists(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 965
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "MediaDataManager"

    const-string p1, "isUsbExists: the car music service not started!!!"

    .line 968
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private registerCarDataControlCallback(Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeListener;)V
    .locals 4

    if-eqz p1, :cond_5

    .line 880
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 881
    :try_start_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mControlCallbackMap:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 883
    iget-object v3, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mControlCallbackMap:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeListener;

    if-nez v3, :cond_0

    .line 885
    iget-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mControlCallbackMap:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 886
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->registerCarDataControlCallback(Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeListener;)V

    .line 887
    monitor-exit v0

    return-void

    :cond_0
    if-ne v3, p1, :cond_1

    .line 890
    iget-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mControlCallbackMap:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 895
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->connectCarMusicServiceLocked()Z

    move-result v1

    if-nez v1, :cond_3

    .line 896
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->startReconnectThread()V

    .line 898
    :cond_3
    iget-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mControlCallbackMap:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 899
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mControlCallbackMap:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 901
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 878
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "callback is null,callback Cannot be empty"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private saveFileList(Ljava/util/List;Ljava/lang/String;J)[I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J)[I"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1714
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x2

    .line 1715
    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    .line 1716
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    .line 1717
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3, p2, p3, p4}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->saveMediaFile(Ljava/lang/String;Ljava/lang/String;J)I

    move-result v3

    if-eqz v3, :cond_0

    aput v3, v0, v1

    aput v2, v0, v4

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    aput v1, v0, v1

    .line 1726
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    aput p0, v0, v4

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private saveMediaFile(Ljava/lang/String;Ljava/lang/String;J)I
    .locals 1

    .line 1696
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1700
    :cond_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->getCarMusicService()Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    .line 1701
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    if-eqz v0, :cond_1

    .line 1703
    :try_start_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->saveMediaFile(Ljava/lang/String;Ljava/lang/String;J)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1705
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string p0, "MediaDataManager"

    const-string/jumbo p1, "saveMediaFile: getMediaListPage: the car music service not started!!!"

    .line 1708
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, -0x1

    return p0

    :cond_2
    :goto_1
    const-string p0, "MediaDataManager"

    .line 1697
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "saveMediaFile: error path,filePath=="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",newPath=="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x2

    return p0
.end method

.method private saveMediaFileList(Ljava/util/List;Ljava/lang/String;J)[I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;",
            "Ljava/lang/String;",
            "J)[I"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1735
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x2

    .line 1736
    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    .line 1737
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    .line 1738
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/media/data/entity/MediaFile;

    if-eqz v3, :cond_1

    .line 1740
    invoke-virtual {v3}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p2, p3, p4}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->saveMediaFile(Ljava/lang/String;Ljava/lang/String;J)I

    move-result v3

    if-eqz v3, :cond_0

    aput v3, v0, v1

    aput v2, v0, v4

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x3

    aput p0, v0, v1

    aput v2, v0, v4

    return-object v0

    :cond_2
    aput v1, v0, v1

    .line 1754
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    aput p0, v0, v4

    return-object v0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private startReconnectThread()V
    .locals 1

    .line 905
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mConnectingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mConnectingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 906
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mConnectingThread:Ljava/lang/Thread;

    .line 907
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mConnectingThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method private unregisterCarDataControlCallback(Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeListener;)V
    .locals 1

    .line 913
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 914
    :try_start_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mControlCallbackMap:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 915
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1766
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    invoke-interface {p0}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public binderDied()V
    .locals 2

    const-string v0, "MediaDataManager"

    const-string v1, "binder died,reconnect service car_media_data after 1000ms!"

    .line 836
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 839
    :try_start_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 840
    iput-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mCarDataService:Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    .line 841
    iget-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->mControlCallbackMap:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 843
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->startReconnectThread()V

    .line 845
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

    const-string v0, "MediaDataManager"

    const-string v1, "connecting service car_media_data!"

    .line 861
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 863
    :goto_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->connectCarMusicServiceLocked()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x78

    if-ge v0, v1, :cond_0

    const-wide/16 v1, 0x3e8

    .line 865
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 867
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    const-string v1, "MediaDataManager"

    const-string/jumbo v2, "reconnecting service car_media_data!"

    .line 869
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->connectCarMusicServiceLocked()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
