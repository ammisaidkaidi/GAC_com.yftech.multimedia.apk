.class public Lcom/yftech/libradio/rds/RdsDataManager;
.super Ljava/lang/Object;
.source "RdsDataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/libradio/rds/RdsDataManager$RdsDataManagerCallback;,
        Lcom/yftech/libradio/rds/RdsDataManager$UpdateRdsTast;
    }
.end annotation


# static fields
.field private static final instance:Lcom/yftech/libradio/rds/RdsDataManager;

.field private static final observors:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/yftech/libradio/rds/RdsDataManager$RdsDataManagerCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private callback:Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;

.field private isInitialized:Z

.field private mRdsInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/yftech/car/media/radio/rds/entity/RdsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mScanStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/yftech/libradio/rds/RdsDataManager;

    invoke-direct {v0}, Lcom/yftech/libradio/rds/RdsDataManager;-><init>()V

    sput-object v0, Lcom/yftech/libradio/rds/RdsDataManager;->instance:Lcom/yftech/libradio/rds/RdsDataManager;

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/yftech/libradio/rds/RdsDataManager;->observors:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yftech/libradio/rds/RdsDataManager;->mRdsInfoMap:Ljava/util/Map;

    .line 90
    new-instance v0, Lcom/yftech/libradio/rds/RdsDataManager$1;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/rds/RdsDataManager$1;-><init>(Lcom/yftech/libradio/rds/RdsDataManager;)V

    iput-object v0, p0, Lcom/yftech/libradio/rds/RdsDataManager;->callback:Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;

    .line 25
    invoke-virtual {p0}, Lcom/yftech/libradio/rds/RdsDataManager;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/libradio/rds/RdsDataManager;)Ljava/util/Map;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/yftech/libradio/rds/RdsDataManager;->mRdsInfoMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200()Ljava/util/HashSet;
    .locals 1

    .line 17
    sget-object v0, Lcom/yftech/libradio/rds/RdsDataManager;->observors:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$300(Lcom/yftech/libradio/rds/RdsDataManager;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/yftech/libradio/rds/RdsDataManager;->mScanStatus:I

    return p0
.end method

.method static synthetic access$302(Lcom/yftech/libradio/rds/RdsDataManager;I)I
    .locals 0

    .line 17
    iput p1, p0, Lcom/yftech/libradio/rds/RdsDataManager;->mScanStatus:I

    return p1
.end method

.method public static getInstance()Lcom/yftech/libradio/rds/RdsDataManager;
    .locals 1

    .line 29
    sget-object v0, Lcom/yftech/libradio/rds/RdsDataManager;->instance:Lcom/yftech/libradio/rds/RdsDataManager;

    return-object v0
.end method


# virtual methods
.method public getRdsInfoList()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/yftech/car/media/radio/rds/entity/RdsInfo;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/yftech/libradio/rds/RdsDataManager;->mRdsInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Lcom/yftech/libradio/rds/RdsDataManager$UpdateRdsTast;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yftech/libradio/rds/RdsDataManager$UpdateRdsTast;-><init>(Lcom/yftech/libradio/rds/RdsDataManager;Lcom/yftech/libradio/rds/RdsDataManager$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/yftech/libradio/rds/RdsDataManager$UpdateRdsTast;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 64
    :cond_0
    iget-object p0, p0, Lcom/yftech/libradio/rds/RdsDataManager;->mRdsInfoMap:Ljava/util/Map;

    return-object p0
.end method

.method public init()V
    .locals 1

    const-string v0, "initialize  RdsDataManager ---"

    .line 32
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    iget-object v0, p0, Lcom/yftech/libradio/rds/RdsDataManager;->callback:Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;

    invoke-static {v0}, Lcom/yftech/car/media/radio/CarRadioManager;->registerRadioControlCallback(Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;)V

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/yftech/libradio/rds/RdsDataManager;->isInitialized:Z

    return-void
.end method

.method public isInitialized()Z
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isInitialized: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/libradio/rds/RdsDataManager;->isInitialized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 46
    iget-boolean p0, p0, Lcom/yftech/libradio/rds/RdsDataManager;->isInitialized:Z

    return p0
.end method

.method public isRegisterObservor(Lcom/yftech/libradio/rds/RdsDataManager$RdsDataManagerCallback;)Z
    .locals 0

    .line 57
    sget-object p0, Lcom/yftech/libradio/rds/RdsDataManager;->observors:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public registerObservor(Lcom/yftech/libradio/rds/RdsDataManager$RdsDataManagerCallback;)V
    .locals 0

    .line 49
    sget-object p0, Lcom/yftech/libradio/rds/RdsDataManager;->observors:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unInit()V
    .locals 1

    .line 38
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    iget-object v0, p0, Lcom/yftech/libradio/rds/RdsDataManager;->callback:Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;

    invoke-static {v0}, Lcom/yftech/car/media/radio/CarRadioManager;->unregisterRadioControlCallback(Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;)V

    .line 39
    iget-object v0, p0, Lcom/yftech/libradio/rds/RdsDataManager;->mRdsInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/yftech/libradio/rds/RdsDataManager;->isInitialized:Z

    const-string p0, "uninitialize  RdsDataManager ---"

    .line 41
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public unregisterObservor(Lcom/yftech/libradio/rds/RdsDataManager$RdsDataManagerCallback;)V
    .locals 0

    .line 53
    sget-object p0, Lcom/yftech/libradio/rds/RdsDataManager;->observors:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
