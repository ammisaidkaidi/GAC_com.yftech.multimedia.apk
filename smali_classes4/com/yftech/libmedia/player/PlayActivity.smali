.class public Lcom/yftech/libmedia/player/PlayActivity;
.super Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;
.source "PlayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/yftech/libmedia/player/view/IPlayActivityView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity<",
        "Lcom/yftech/libmedia/player/presenter/PlayPresenter;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/yftech/libmedia/player/view/IPlayActivityView;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final INTERVAL:I

.field private final RC_CONTROL_BAR:I

.field private final RC_FRAME:I

.field private final RC_SPEED_ORVERFLOW:I

.field private actionBar:Lcom/media/common/ui/widget/MyActionBar;

.field private audioCallback:Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;

.field private bluetoothPhoneCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;

.field private final callback:Lcom/yftech/car/media/video/VideoPlayer$VideoCallback;

.field private carInfoListener:Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;

.field private carPlayMusicListener:Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;

.field private control_bar:Landroid/widget/LinearLayout;

.field private dialog:Lcom/media/common/ui/widget/TipsDialog;

.field private fl_progress:Landroid/widget/FrameLayout;

.field private frameCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation
.end field

.field private index:I

.field private isControlByClicking:Z

.field private isFinish:Z

.field private isFullScreen:Z

.field private isPagePlaying:Z

.field private isPlayingBeforeSwitchPage:Z

.field private isPressing:Z

.field private iv_behind:Landroid/widget/ImageView;

.field private iv_control:Landroid/widget/ImageView;

.field private iv_frame:Landroid/widget/ImageView;

.field private iv_front:Landroid/widget/ImageView;

.field private iv_volume:Landroid/widget/ImageView;

.field private final mHandler:Landroid/os/Handler;

.field private playIndexPath:Ljava/lang/String;

.field private player:Lcom/yftech/car/media/video/VideoPlayer;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private sb_video:Landroid/widget/SeekBar;

.field private sb_volume:Landroid/widget/SeekBar;

.field private tv_progress:Landroid/widget/TextView;

.field private tv_time_index:Landroid/widget/TextView;

.field private tv_time_total:Landroid/widget/TextView;

.field private v_cover:Landroid/view/View;

.field private vehicleSpeedLimit:I

.field private vehicleSpeedResume:I

.field private videoCallbackListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private video_duration:I

.field private volumeCallbackListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 69
    invoke-direct {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;-><init>()V

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->isPagePlaying:Z

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->isControlByClicking:Z

    .line 77
    iput-boolean v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->isPlayingBeforeSwitchPage:Z

    const/16 v1, 0xa

    .line 96
    iput v1, p0, Lcom/yftech/libmedia/player/PlayActivity;->RC_CONTROL_BAR:I

    const/16 v1, 0x1388

    .line 98
    iput v1, p0, Lcom/yftech/libmedia/player/PlayActivity;->INTERVAL:I

    const/16 v1, 0x14

    .line 100
    iput v1, p0, Lcom/yftech/libmedia/player/PlayActivity;->RC_FRAME:I

    .line 102
    iput-boolean v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->isFullScreen:Z

    .line 104
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/yftech/libmedia/player/PlayActivity;->frameCache:Landroid/util/SparseArray;

    const/16 v2, 0x1e

    .line 108
    iput v2, p0, Lcom/yftech/libmedia/player/PlayActivity;->RC_SPEED_ORVERFLOW:I

    .line 110
    iput v1, p0, Lcom/yftech/libmedia/player/PlayActivity;->vehicleSpeedLimit:I

    .line 112
    iput v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->vehicleSpeedResume:I

    .line 114
    new-instance v1, Lcom/yftech/libmedia/player/PlayActivity$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/yftech/libmedia/player/PlayActivity$1;-><init>(Lcom/yftech/libmedia/player/PlayActivity;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/yftech/libmedia/player/PlayActivity;->mHandler:Landroid/os/Handler;

    .line 169
    new-instance v1, Lcom/yftech/libmedia/player/PlayActivity$2;

    invoke-direct {v1, p0}, Lcom/yftech/libmedia/player/PlayActivity$2;-><init>(Lcom/yftech/libmedia/player/PlayActivity;)V

    iput-object v1, p0, Lcom/yftech/libmedia/player/PlayActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 361
    new-instance v1, Lcom/yftech/libmedia/player/PlayActivity$5;

    invoke-direct {v1, p0}, Lcom/yftech/libmedia/player/PlayActivity$5;-><init>(Lcom/yftech/libmedia/player/PlayActivity;)V

    iput-object v1, p0, Lcom/yftech/libmedia/player/PlayActivity;->bluetoothPhoneCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;

    .line 388
    new-instance v1, Lcom/yftech/libmedia/player/PlayActivity$6;

    invoke-direct {v1, p0}, Lcom/yftech/libmedia/player/PlayActivity$6;-><init>(Lcom/yftech/libmedia/player/PlayActivity;)V

    iput-object v1, p0, Lcom/yftech/libmedia/player/PlayActivity;->audioCallback:Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;

    .line 421
    new-instance v1, Lcom/yftech/libmedia/player/PlayActivity$7;

    invoke-direct {v1, p0}, Lcom/yftech/libmedia/player/PlayActivity$7;-><init>(Lcom/yftech/libmedia/player/PlayActivity;)V

    iput-object v1, p0, Lcom/yftech/libmedia/player/PlayActivity;->carInfoListener:Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;

    .line 435
    new-instance v1, Lcom/yftech/libmedia/player/PlayActivity$8;

    invoke-direct {v1, p0}, Lcom/yftech/libmedia/player/PlayActivity$8;-><init>(Lcom/yftech/libmedia/player/PlayActivity;)V

    iput-object v1, p0, Lcom/yftech/libmedia/player/PlayActivity;->carPlayMusicListener:Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;

    .line 555
    iput v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->video_duration:I

    .line 556
    iput-boolean v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->isFinish:Z

    .line 557
    new-instance v1, Lcom/yftech/libmedia/player/PlayActivity$10;

    invoke-direct {v1, p0}, Lcom/yftech/libmedia/player/PlayActivity$10;-><init>(Lcom/yftech/libmedia/player/PlayActivity;)V

    iput-object v1, p0, Lcom/yftech/libmedia/player/PlayActivity;->callback:Lcom/yftech/car/media/video/VideoPlayer$VideoCallback;

    .line 812
    iput-boolean v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->isPressing:Z

    .line 833
    new-instance v0, Lcom/yftech/libmedia/player/PlayActivity$11;

    invoke-direct {v0, p0}, Lcom/yftech/libmedia/player/PlayActivity$11;-><init>(Lcom/yftech/libmedia/player/PlayActivity;)V

    iput-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->videoCallbackListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 990
    new-instance v0, Lcom/yftech/libmedia/player/PlayActivity$12;

    invoke-direct {v0, p0}, Lcom/yftech/libmedia/player/PlayActivity$12;-><init>(Lcom/yftech/libmedia/player/PlayActivity;)V

    iput-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->volumeCallbackListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/libmedia/player/PlayActivity;I)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/yftech/libmedia/player/PlayActivity;->setControlBarVisible(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity;->iv_frame:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/yftech/libmedia/player/PlayActivity;)Z
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/yftech/libmedia/player/PlayActivity;->getControlBarVisible()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/yftech/libmedia/player/PlayActivity;)Lcom/media/common/ui/widget/MyActionBar;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity;->actionBar:Lcom/media/common/ui/widget/MyActionBar;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/yftech/libmedia/player/PlayActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/yftech/libmedia/player/PlayActivity;->index:I

    return p0
.end method

.method static synthetic access$1300(Lcom/yftech/libmedia/player/PlayActivity;Z)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/yftech/libmedia/player/PlayActivity;->setControlEnable(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/yftech/libmedia/player/PlayActivity;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/yftech/libmedia/player/PlayActivity;->isFinish:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/yftech/libmedia/player/PlayActivity;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/yftech/libmedia/player/PlayActivity;->isFinish:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/util/SparseArray;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity;->frameCache:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/yftech/libmedia/player/PlayActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/yftech/libmedia/player/PlayActivity;->video_duration:I

    return p0
.end method

.method static synthetic access$1602(Lcom/yftech/libmedia/player/PlayActivity;I)I
    .locals 0

    .line 69
    iput p1, p0, Lcom/yftech/libmedia/player/PlayActivity;->video_duration:I

    return p1
.end method

.method static synthetic access$1700(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/widget/TextView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity;->tv_time_total:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/yftech/libmedia/player/PlayActivity;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/yftech/libmedia/player/PlayActivity;->isPressing:Z

    return p0
.end method

.method static synthetic access$1802(Lcom/yftech/libmedia/player/PlayActivity;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/yftech/libmedia/player/PlayActivity;->isPressing:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/widget/TextView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity;->tv_time_index:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/libmedia/player/PlayActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/yftech/libmedia/player/PlayActivity;->vehicleSpeedLimit:I

    return p0
.end method

.method static synthetic access$2000(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/widget/SeekBar;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity;->sb_video:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity;->iv_control:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/yftech/libmedia/player/PlayActivity;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/yftech/libmedia/player/PlayActivity;->isControlByClicking:Z

    return p0
.end method

.method static synthetic access$2202(Lcom/yftech/libmedia/player/PlayActivity;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/yftech/libmedia/player/PlayActivity;->isControlByClicking:Z

    return p1
.end method

.method static synthetic access$2302(Lcom/yftech/libmedia/player/PlayActivity;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/yftech/libmedia/player/PlayActivity;->isPagePlaying:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/yftech/libmedia/player/PlayActivity;)Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity;->playIndexPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity;->fl_progress:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/widget/TextView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity;->tv_progress:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity;->iv_front:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity;->iv_behind:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/libmedia/player/PlayActivity;)Lcom/yftech/car/media/video/VideoPlayer;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity;->player:Lcom/yftech/car/media/video/VideoPlayer;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/libmedia/player/PlayActivity;)Lcom/media/common/ui/widget/TipsDialog;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity;->dialog:Lcom/media/common/ui/widget/TipsDialog;

    return-object p0
.end method

.method static synthetic access$402(Lcom/yftech/libmedia/player/PlayActivity;Lcom/media/common/ui/widget/TipsDialog;)Lcom/media/common/ui/widget/TipsDialog;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity;->dialog:Lcom/media/common/ui/widget/TipsDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/yftech/libmedia/player/PlayActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/yftech/libmedia/player/PlayActivity;->vehicleSpeedResume:I

    return p0
.end method

.method static synthetic access$600(Lcom/yftech/libmedia/player/PlayActivity;)Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity;->carInfoListener:Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/widget/SeekBar;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity;->sb_volume:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$800(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity;->iv_volume:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/os/Handler;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private getControlBarVisible()Z
    .locals 1

    .line 727
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->control_bar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity;->actionBar:Lcom/media/common/ui/widget/MyActionBar;

    invoke-virtual {p0}, Lcom/media/common/ui/widget/MyActionBar;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private initW()V
    .locals 4

    .line 476
    sget v0, Lcom/yftech/libmedia/R$id;->actionBar:I

    invoke-virtual {p0, v0}, Lcom/yftech/libmedia/player/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/media/common/ui/widget/MyActionBar;

    iput-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->actionBar:Lcom/media/common/ui/widget/MyActionBar;

    .line 477
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->actionBar:Lcom/media/common/ui/widget/MyActionBar;

    sget v1, Lcom/yftech/libmedia/R$string;->video_name:I

    invoke-virtual {p0, v1}, Lcom/yftech/libmedia/player/PlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/media/common/ui/widget/MyActionBar;->setTitleText(Ljava/lang/String;)V

    .line 479
    sget v0, Lcom/yftech/libmedia/R$id;->v_cover:I

    invoke-virtual {p0, v0}, Lcom/yftech/libmedia/player/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->v_cover:Landroid/view/View;

    .line 480
    sget v0, Lcom/yftech/libmedia/R$id;->sb_video:I

    invoke-virtual {p0, v0}, Lcom/yftech/libmedia/player/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->sb_video:Landroid/widget/SeekBar;

    .line 482
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->sb_video:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/yftech/libmedia/player/PlayActivity;->videoCallbackListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 483
    sget v0, Lcom/yftech/libmedia/R$id;->sb_volume:I

    invoke-virtual {p0, v0}, Lcom/yftech/libmedia/player/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->sb_volume:Landroid/widget/SeekBar;

    .line 485
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->sb_volume:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/yftech/libmedia/player/PlayActivity;->volumeCallbackListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 486
    sget v0, Lcom/yftech/libmedia/R$id;->control_bar:I

    invoke-virtual {p0, v0}, Lcom/yftech/libmedia/player/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->control_bar:Landroid/widget/LinearLayout;

    .line 487
    sget v0, Lcom/yftech/libmedia/R$id;->iv_control:I

    invoke-virtual {p0, v0}, Lcom/yftech/libmedia/player/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->iv_control:Landroid/widget/ImageView;

    .line 488
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->iv_control:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 489
    sget v0, Lcom/yftech/libmedia/R$id;->iv_next:I

    invoke-virtual {p0, v0}, Lcom/yftech/libmedia/player/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    sget v0, Lcom/yftech/libmedia/R$id;->iv_volume:I

    invoke-virtual {p0, v0}, Lcom/yftech/libmedia/player/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->iv_volume:Landroid/widget/ImageView;

    .line 491
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->iv_volume:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    sget v0, Lcom/yftech/libmedia/R$id;->iv_full_screen:I

    invoke-virtual {p0, v0}, Lcom/yftech/libmedia/player/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 493
    sget v0, Lcom/yftech/libmedia/R$id;->fl_progress:I

    invoke-virtual {p0, v0}, Lcom/yftech/libmedia/player/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->fl_progress:Landroid/widget/FrameLayout;

    .line 494
    sget v0, Lcom/yftech/libmedia/R$id;->iv_front:I

    invoke-virtual {p0, v0}, Lcom/yftech/libmedia/player/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->iv_front:Landroid/widget/ImageView;

    .line 495
    sget v0, Lcom/yftech/libmedia/R$id;->iv_behind:I

    invoke-virtual {p0, v0}, Lcom/yftech/libmedia/player/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->iv_behind:Landroid/widget/ImageView;

    .line 496
    sget v0, Lcom/yftech/libmedia/R$id;->iv_frame:I

    invoke-virtual {p0, v0}, Lcom/yftech/libmedia/player/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->iv_frame:Landroid/widget/ImageView;

    .line 497
    sget v0, Lcom/yftech/libmedia/R$id;->tv_progress:I

    invoke-virtual {p0, v0}, Lcom/yftech/libmedia/player/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->tv_progress:Landroid/widget/TextView;

    .line 498
    sget v0, Lcom/yftech/libmedia/R$id;->tv_time_total:I

    invoke-virtual {p0, v0}, Lcom/yftech/libmedia/player/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->tv_time_total:Landroid/widget/TextView;

    .line 499
    sget v0, Lcom/yftech/libmedia/R$id;->tv_time_index:I

    invoke-virtual {p0, v0}, Lcom/yftech/libmedia/player/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->tv_time_index:Landroid/widget/TextView;

    .line 501
    sget v0, Lcom/yftech/libmedia/R$id;->player:I

    invoke-virtual {p0, v0}, Lcom/yftech/libmedia/player/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/media/video/VideoPlayer;

    iput-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->player:Lcom/yftech/car/media/video/VideoPlayer;

    .line 503
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->player:Lcom/yftech/car/media/video/VideoPlayer;

    iget-object v1, p0, Lcom/yftech/libmedia/player/PlayActivity;->callback:Lcom/yftech/car/media/video/VideoPlayer$VideoCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/video/VideoPlayer;->setVideoCallback(Lcom/yftech/car/media/video/VideoPlayer$VideoCallback;)V

    .line 505
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->player:Lcom/yftech/car/media/video/VideoPlayer;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/video/VideoPlayer;->setPlayMode(I)V

    .line 507
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->player:Lcom/yftech/car/media/video/VideoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/video/VideoPlayer;->setOnTouchGesture(Z)V

    .line 508
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->player:Lcom/yftech/car/media/video/VideoPlayer;

    new-instance v1, Lcom/yftech/libmedia/player/PlayActivity$9;

    invoke-direct {v1, p0}, Lcom/yftech/libmedia/player/PlayActivity$9;-><init>(Lcom/yftech/libmedia/player/PlayActivity;)V

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/video/VideoPlayer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 533
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 536
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/PlayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/media/common/util/AudioSettingUtil;->getStreamMaxVolume(Landroid/content/Context;I)I

    move-result v0

    .line 537
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/PlayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/media/common/util/AudioSettingUtil;->getStreamVolume(Landroid/content/Context;I)I

    move-result v1

    .line 538
    iget-object v2, p0, Lcom/yftech/libmedia/player/PlayActivity;->sb_volume:Landroid/widget/SeekBar;

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 539
    iget-object v2, p0, Lcom/yftech/libmedia/player/PlayActivity;->sb_volume:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-nez v0, :cond_0

    .line 544
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity;->iv_volume:Landroid/widget/ImageView;

    sget v0, Lcom/yftech/libmedia/R$mipmap;->pv_icon_volume_off:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/high16 v3, 0x41f00000    # 30.0f

    if-ltz v0, :cond_1

    cmpg-float v0, v1, v3

    if-gez v0, :cond_1

    .line 546
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity;->iv_volume:Landroid/widget/ImageView;

    sget v0, Lcom/yftech/libmedia/R$mipmap;->pv_icon_volume_on_01:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    cmpl-float v0, v1, v3

    const/high16 v3, 0x42700000    # 60.0f

    if-ltz v0, :cond_2

    cmpg-float v0, v1, v3

    if-gez v0, :cond_2

    .line 548
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity;->iv_volume:Landroid/widget/ImageView;

    sget v0, Lcom/yftech/libmedia/R$mipmap;->pv_icon_volume_on_02:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    cmpl-float v0, v1, v3

    if-ltz v0, :cond_3

    cmpg-float v0, v1, v2

    if-gez v0, :cond_3

    .line 550
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity;->iv_volume:Landroid/widget/ImageView;

    sget v0, Lcom/yftech/libmedia/R$mipmap;->pv_icon_volume_on_03:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private registerTestReceiver()V
    .locals 2

    .line 237
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "test"

    .line 238
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/yftech/libmedia/player/PlayActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/yftech/libmedia/player/PlayActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setControlBarVisible(I)V
    .locals 1

    .line 721
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->control_bar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 722
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity;->actionBar:Lcom/media/common/ui/widget/MyActionBar;

    invoke-virtual {p0, p1}, Lcom/media/common/ui/widget/MyActionBar;->setVisibility(I)V

    return-void
.end method

.method private setControlEnable(Z)V
    .locals 1

    .line 1074
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->iv_control:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1075
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->sb_video:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1077
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity;->iv_control:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3f19999a    # 0.6f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method protected createPresenter()Lcom/yftech/libmedia/player/presenter/PlayPresenter;
    .locals 1

    .line 189
    new-instance v0, Lcom/yftech/libmedia/player/presenter/PlayPresenter;

    invoke-direct {v0, p0}, Lcom/yftech/libmedia/player/presenter/PlayPresenter;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method protected bridge synthetic createPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;
    .locals 0

    .line 68
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/PlayActivity;->createPresenter()Lcom/yftech/libmedia/player/presenter/PlayPresenter;

    move-result-object p0

    return-object p0
.end method

.method public displayVideoPlayList(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;)V"
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 1069
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity;->player:Lcom/yftech/car/media/video/VideoPlayer;

    invoke-virtual {p0, p2, p1}, Lcom/yftech/car/media/video/VideoPlayer;->startPlayList(Ljava/util/List;I)Z

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 256
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onBackPressed()V

    const/4 v0, 0x1

    .line 258
    iput-boolean v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->isPlayingBeforeSwitchPage:Z

    .line 261
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/PlayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object p0

    const-string v1, "TAG_VIDEO_ON_BACK_PRESS_BY_USER_BEFORE_SWITCH_PAGE"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/media/common/util/SharedPrefsUtil;->save(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 734
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 738
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libmedia/R$id;->iv_control:I

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ne v0, v1, :cond_1

    .line 741
    iput-boolean v2, p0, Lcom/yftech/libmedia/player/PlayActivity;->isControlByClicking:Z

    .line 744
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity;->player:Lcom/yftech/car/media/video/VideoPlayer;

    if-eqz p1, :cond_5

    .line 745
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity;->player:Lcom/yftech/car/media/video/VideoPlayer;

    invoke-virtual {p0, v3}, Lcom/yftech/car/media/video/VideoPlayer;->setPlayState(I)Z

    goto :goto_0

    .line 746
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libmedia/R$id;->iv_next:I

    if-ne v0, v1, :cond_2

    .line 749
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity;->player:Lcom/yftech/car/media/video/VideoPlayer;

    if-eqz p1, :cond_5

    .line 750
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity;->player:Lcom/yftech/car/media/video/VideoPlayer;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/yftech/car/media/video/VideoPlayer;->setPlayState(I)Z

    goto :goto_0

    .line 751
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libmedia/R$id;->iv_volume:I

    if-ne v0, v1, :cond_4

    .line 754
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/PlayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/media/common/util/AudioSettingUtil;->getStreamVolume(Landroid/content/Context;I)I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_3

    .line 757
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/PlayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object v1

    const-string v2, "TAG_VOLUME_BEFORE_MUTE"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/media/common/util/SharedPrefsUtil;->save(Ljava/lang/String;Ljava/lang/Object;)V

    .line 759
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/PlayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v3, v0}, Lcom/media/common/util/AudioSettingUtil;->setStreamVolume(Landroid/content/Context;II)V

    goto :goto_0

    .line 763
    :cond_3
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/PlayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object p1

    const-string v1, "TAG_VOLUME_BEFORE_MUTE"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/media/common/util/SharedPrefsUtil;->getInt(Ljava/lang/String;Ljava/lang/Integer;)I

    move-result p1

    .line 765
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/PlayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v3, p1}, Lcom/media/common/util/AudioSettingUtil;->setStreamVolume(Landroid/content/Context;II)V

    goto :goto_0

    .line 801
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/yftech/libmedia/R$id;->iv_full_screen:I

    if-ne p1, v0, :cond_5

    .line 807
    iget-boolean p1, p0, Lcom/yftech/libmedia/player/PlayActivity;->isFullScreen:Z

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/yftech/libmedia/player/PlayActivity;->isFullScreen:Z

    .line 808
    iget-boolean p1, p0, Lcom/yftech/libmedia/player/PlayActivity;->isFullScreen:Z

    invoke-static {p0, p1}, Lcom/media/common/util/SystemUtil;->setSysFullScreen(Landroid/app/Activity;Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 194
    invoke-super {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 195
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/PlayActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 197
    sget p1, Lcom/yftech/libmedia/R$layout;->activity_play:I

    invoke-virtual {p0, p1}, Lcom/yftech/libmedia/player/PlayActivity;->setContentView(I)V

    const-string p1, "onCreate"

    .line 199
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/PlayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->init(Landroid/content/Context;)V

    .line 204
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/PlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "index"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/yftech/libmedia/player/PlayActivity;->index:I

    .line 205
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/PlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "playIndexPath"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity;->playIndexPath:Ljava/lang/String;

    .line 207
    invoke-direct {p0}, Lcom/yftech/libmedia/player/PlayActivity;->initW()V

    .line 211
    invoke-static {}, Lcom/yftech/car/audio/CarAudioManager;->getInstance()Lcom/yftech/car/audio/CarAudioManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->audioCallback:Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/yftech/car/audio/CarAudioManager;->registerCarAudioCallback(Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;Landroid/os/Handler;)V

    .line 212
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarInfoManager;->get()Lcom/yftech/vehicle/sdk/CarInfoManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->carInfoListener:Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;

    invoke-virtual {p1, v0}, Lcom/yftech/vehicle/sdk/CarInfoManager;->registerListener(Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;)V

    .line 213
    invoke-static {p0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getInstance(Landroid/content/Context;)Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->carPlayMusicListener:Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;

    invoke-virtual {p1, v0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->registerCarPlayMusicListener(Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;)V

    .line 215
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 218
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/PlayActivity;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p1

    check-cast p1, Lcom/yftech/libmedia/player/presenter/PlayPresenter;

    iget v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->index:I

    iget-object v1, p0, Lcom/yftech/libmedia/player/PlayActivity;->playIndexPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/yftech/libmedia/player/presenter/PlayPresenter;->getVideoPlayList(ILjava/lang/String;)V

    .line 221
    invoke-direct {p0}, Lcom/yftech/libmedia/player/PlayActivity;->registerTestReceiver()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 345
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onDestroy()V

    .line 346
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->player:Lcom/yftech/car/media/video/VideoPlayer;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->player:Lcom/yftech/car/media/video/VideoPlayer;

    invoke-virtual {v0}, Lcom/yftech/car/media/video/VideoPlayer;->release()V

    const/4 v0, 0x0

    .line 348
    iput-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->player:Lcom/yftech/car/media/video/VideoPlayer;

    .line 352
    :cond_0
    invoke-static {}, Lcom/yftech/car/audio/CarAudioManager;->getInstance()Lcom/yftech/car/audio/CarAudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libmedia/player/PlayActivity;->audioCallback:Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/audio/CarAudioManager;->unregisterCarAudioCallback(Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;)V

    .line 353
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarInfoManager;->get()Lcom/yftech/vehicle/sdk/CarInfoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libmedia/player/PlayActivity;->carInfoListener:Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;

    invoke-virtual {v0, v1}, Lcom/yftech/vehicle/sdk/CarInfoManager;->unregisterListener(Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;)V

    .line 354
    invoke-static {p0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getInstance(Landroid/content/Context;)Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libmedia/player/PlayActivity;->carPlayMusicListener:Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;

    invoke-virtual {v0, v1}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->unregisterCarPlayMusicListener(Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;)V

    .line 355
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 357
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/yftech/libmedia/player/PlayActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 226
    invoke-super {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 227
    invoke-virtual {p0, p1}, Lcom/yftech/libmedia/player/PlayActivity;->setIntent(Landroid/content/Intent;)V

    const-string p1, "onNewIntent"

    .line 229
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/PlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "index"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/yftech/libmedia/player/PlayActivity;->index:I

    .line 232
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/PlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "playIndexPath"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity;->playIndexPath:Ljava/lang/String;

    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 267
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onPause()V

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause:isPlaying="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/libmedia/player/PlayActivity;->isPagePlaying:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->player:Lcom/yftech/car/media/video/VideoPlayer;

    if-eqz v0, :cond_1

    .line 274
    iget-boolean v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->isPlayingBeforeSwitchPage:Z

    if-nez v0, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/PlayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object v0

    const-string v1, "TAG_VIDEO_ON_BACK_PRESS_BY_USER_BEFORE_SWITCH_PAGE"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/media/common/util/SharedPrefsUtil;->save(Ljava/lang/String;Ljava/lang/Object;)V

    .line 279
    :cond_0
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity;->player:Lcom/yftech/car/media/video/VideoPlayer;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/yftech/car/media/video/VideoPlayer;->setPlayState(I)Z

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 286
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onResume()V

    const-string v0, "sys.atc.carplay.app.show_ui"

    const/4 v1, 0x0

    .line 289
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume:isCarPlayDisplaying="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x1e

    .line 297
    iget v2, p0, Lcom/yftech/libmedia/player/PlayActivity;->vehicleSpeedLimit:I

    if-lt v0, v2, :cond_4

    .line 299
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/PlayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object v0

    const-string v2, "TAG_VIDEO_VECHICLE_OVERFLOW_HOLDING"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/media/common/util/SharedPrefsUtil;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 302
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->dialog:Lcom/media/common/ui/widget/TipsDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->dialog:Lcom/media/common/ui/widget/TipsDialog;

    invoke-virtual {v0}, Lcom/media/common/ui/widget/TipsDialog;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 303
    :cond_1
    sget v0, Lcom/yftech/libmedia/R$string;->video_play_speed_overflow_tips:I

    invoke-virtual {p0, v0}, Lcom/yftech/libmedia/player/PlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/ui/widget/TipsDialog;->newInstance(Ljava/lang/String;)Lcom/media/common/ui/widget/TipsDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->dialog:Lcom/media/common/ui/widget/TipsDialog;

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->dialog:Lcom/media/common/ui/widget/TipsDialog;

    new-instance v1, Lcom/yftech/libmedia/player/PlayActivity$3;

    invoke-direct {v1, p0}, Lcom/yftech/libmedia/player/PlayActivity$3;-><init>(Lcom/yftech/libmedia/player/PlayActivity;)V

    invoke-virtual {v0, v1}, Lcom/media/common/ui/widget/TipsDialog;->setOnConfirmClickListener(Lcom/media/common/ui/widget/TipsDialog$OnConfirmClickListener;)V

    .line 314
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->dialog:Lcom/media/common/ui/widget/TipsDialog;

    invoke-virtual {p0}, Lcom/yftech/libmedia/player/PlayActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v1, Lcom/media/common/ui/widget/TipsDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/media/common/ui/widget/TipsDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 318
    :cond_3
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/PlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xd05

    .line 319
    invoke-virtual {p0, v1, v0}, Lcom/yftech/libmedia/player/PlayActivity;->setResult(ILandroid/content/Intent;)V

    .line 321
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/PlayActivity;->onBackPressed()V

    :goto_0
    return-void

    .line 325
    :cond_4
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/PlayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object v0

    const-string v2, "TAG_VIDEO_VECHICLE_OVERFLOW_HOLDING"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/media/common/util/SharedPrefsUtil;->save(Ljava/lang/String;Ljava/lang/Object;)V

    .line 331
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->player:Lcom/yftech/car/media/video/VideoPlayer;

    if-eqz v0, :cond_5

    .line 333
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/yftech/libmedia/player/PlayActivity$4;

    invoke-direct {v1, p0}, Lcom/yftech/libmedia/player/PlayActivity$4;-><init>(Lcom/yftech/libmedia/player/PlayActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void
.end method

.method public onUSBStatusChange(Lcom/media/common/event/USBStateForPhotoAndVideoEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "onUSBStatusChange:receiveBroadCast"

    .line 816
    invoke-static {v0}, Lcom/media/common/util/DebugLog;->e(Ljava/lang/String;)V

    .line 819
    iget-boolean v0, p1, Lcom/media/common/event/USBStateForPhotoAndVideoEvent;->isUsbExists:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/yftech/libmedia/player/PlayActivity;->index:I

    iget p1, p1, Lcom/media/common/event/USBStateForPhotoAndVideoEvent;->usbIndex:I

    if-ne v0, p1, :cond_1

    .line 822
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity;->player:Lcom/yftech/car/media/video/VideoPlayer;

    if-eqz p1, :cond_0

    .line 823
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity;->player:Lcom/yftech/car/media/video/VideoPlayer;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/yftech/car/media/video/VideoPlayer;->setPlayState(I)Z

    .line 826
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/PlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x8ae

    .line 827
    invoke-virtual {p0, v0, p1}, Lcom/yftech/libmedia/player/PlayActivity;->setResult(ILandroid/content/Intent;)V

    .line 828
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/PlayActivity;->onBackPressed()V

    :cond_1
    return-void
.end method
