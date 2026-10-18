.class public Lcom/yftech/libradio/RadioAnnounceManager;
.super Ljava/lang/Object;
.source "RadioAnnounceManager.java"


# static fields
.field private static final DAB_ANNOUNCE:Ljava/lang/String; = "com.yftech.intent.action.dab.announce.play"

.field public static final EPG_PROGRAMME_EVENT:Ljava/lang/String; = "com.yftech.intent.action.dab.epg.play.event"

.field public static final RDS_ANNOUNCE:Ljava/lang/String; = "com.yftech.intent.action.rds.trafic.announce.play"

.field public static final ins:Lcom/yftech/libradio/RadioAnnounceManager;


# instance fields
.field private dabCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

.field private mContext:Landroid/content/Context;

.field private mEpgProgrammeId:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private rdsCallback:Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/yftech/libradio/RadioAnnounceManager;

    invoke-direct {v0}, Lcom/yftech/libradio/RadioAnnounceManager;-><init>()V

    sput-object v0, Lcom/yftech/libradio/RadioAnnounceManager;->ins:Lcom/yftech/libradio/RadioAnnounceManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yftech/libradio/RadioAnnounceManager;->mHandler:Landroid/os/Handler;

    .line 45
    new-instance v0, Lcom/yftech/libradio/RadioAnnounceManager$1;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/RadioAnnounceManager$1;-><init>(Lcom/yftech/libradio/RadioAnnounceManager;)V

    iput-object v0, p0, Lcom/yftech/libradio/RadioAnnounceManager;->dabCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

    .line 103
    new-instance v0, Lcom/yftech/libradio/RadioAnnounceManager$2;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/RadioAnnounceManager$2;-><init>(Lcom/yftech/libradio/RadioAnnounceManager;)V

    iput-object v0, p0, Lcom/yftech/libradio/RadioAnnounceManager;->rdsCallback:Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/libradio/RadioAnnounceManager;)Landroid/content/Context;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/yftech/libradio/RadioAnnounceManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/libradio/RadioAnnounceManager;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/yftech/libradio/RadioAnnounceManager;->mEpgProgrammeId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/yftech/libradio/RadioAnnounceManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/yftech/libradio/RadioAnnounceManager;->mEpgProgrammeId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/yftech/libradio/RadioAnnounceManager;)Landroid/os/Handler;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/yftech/libradio/RadioAnnounceManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 1

    .line 33
    iput-object p1, p0, Lcom/yftech/libradio/RadioAnnounceManager;->mContext:Landroid/content/Context;

    const-string p1, "init"

    .line 34
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/libradio/RadioAnnounceManager;->dabCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

    invoke-virtual {p1, v0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->registerRadioControlCallback(Lcom/yftech/car/media/radio/dab/CarDabRadioManager$OnDabRadioControlListener;)V

    .line 36
    iget-object p0, p0, Lcom/yftech/libradio/RadioAnnounceManager;->rdsCallback:Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;

    invoke-static {p0}, Lcom/yftech/car/media/radio/CarRadioManager;->registerRadioControlCallback(Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;)V

    return-void
.end method

.method public uninit()V
    .locals 2

    const-string v0, "uninit"

    .line 40
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/RadioAnnounceManager;->dabCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->unregisterRadioControlCallback(Lcom/yftech/car/media/radio/dab/CarDabRadioManager$OnDabRadioControlListener;)V

    .line 42
    iget-object p0, p0, Lcom/yftech/libradio/RadioAnnounceManager;->rdsCallback:Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;

    invoke-static {p0}, Lcom/yftech/car/media/radio/CarRadioManager;->unregisterRadioControlCallback(Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;)V

    return-void
.end method
