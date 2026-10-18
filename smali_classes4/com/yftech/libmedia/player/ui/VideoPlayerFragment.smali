.class public Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;
.super Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;
.source "VideoPlayerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/yftech/libmedia/player/view/IPlayActivityView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment<",
        "Lcom/yftech/libmedia/player/presenter/PlayPresenter;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/yftech/libmedia/player/view/IPlayActivityView;"
    }
.end annotation


# static fields
.field private static final ARG_PARAM1:Ljava/lang/String; = "index"

.field private static final ARG_PARAM2:Ljava/lang/String; = "playIndexPath"

.field private static final ARG_PARAM3:Ljava/lang/String; = "title"

.field private static final TYPE_NORMAL:I = 0x2

.field private static final TYPE_WARNING:I = 0x1


# instance fields
.field private final ACTION_SOURCE_WINDOW_START:Ljava/lang/String;

.field private final INTERVAL:I

.field private final MSG_RESET_TYPE:I

.field private final RC_CARPLAY:I

.field private final RC_CONTROL_BAR:I

.field private final RC_FRAME:I

.field private final RC_HICar:I

.field private final RC_INPUT:I

.field private final RC_PLAY:I

.field private final RC_PLAY_ERROR:I

.field private final RC_POWER_OFF:I

.field private final RC_SPEED_OVERFLOW:I

.field private actionBar:Lcom/media/common/ui/widget/MyActionBar;

.field private audioCallback:Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;

.field private final callback:Lcom/yftech/car/widget/media/video/VideoPlayer$VideoCallback;

.field private carInfoListener:Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;

.field private carInputCallback:Lcom/yftech/car/input/CarInputManager$CarInputCallback;

.field private carPlayMusicListener:Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;

.field private carScreenCallback:Lcom/yftech/car/screen/CarScreenManager$CarScreenCallback;

.field private control_bar:Landroid/widget/LinearLayout;

.field private dialog:Lcom/media/common/ui/widget/TipsDialog;

.field private frameCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation
.end field

.field private hiCarReceiver:Landroid/content/BroadcastReceiver;

.field private index:I

.field private isAudioChanged:Z

.field private isBackCarToPause:Z

.field private isChangedByUser:Z

.field private isClickTheSame:Z

.field private isConfirm:Z

.field private isControlByClicking:Z

.field private isError:Z

.field private isFinish:Z

.field private isOpen:Z

.field private isPagePlaying:Z

.field private isPauseByHiCar:Z

.field private isPlayingBeforeSwitchPage:Z

.field private isPressing:Z

.field private isPreview:Z

.field private volatile isScreenSaver:Z

.field private isSpeedOverFlow:Z

.field private iv_control:Landroid/widget/ImageView;

.field private iv_volume:Landroid/widget/ImageView;

.field private mBackCarStatusRec:Landroid/content/BroadcastReceiver;

.field private mCurrType:I

.field private final mHandler:Landroid/os/Handler;

.field private mIsShowCarPlayOfPause:Z

.field private mStartSeek:I

.field private main:Landroid/widget/FrameLayout;

.field private playIndexPath:Ljava/lang/String;

.field private play_error_prompt:Landroid/widget/ImageView;

.field private player:Lcom/yftech/car/widget/media/video/VideoPlayer;

.field private playingStatus:Z

.field private progressBar:Landroid/widget/ProgressBar;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private sb_video:Landroid/widget/SeekBar;

.field private sb_volume:Landroid/widget/SeekBar;

.field private screenSaverReceiver:Landroid/content/BroadcastReceiver;

.field private tempSpeed:I

.field private title:Ljava/lang/String;

.field private tv_time_index:Landroid/widget/TextView;

.field private tv_time_total:Landroid/widget/TextView;

.field private tv_video_play_error:Landroid/widget/TextView;

.field private tv_volume_percent:Landroid/widget/TextView;

.field private video_duration:I

.field private volumeCallbackListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 534
    invoke-direct {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;-><init>()V

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isPagePlaying:Z

    const/4 v1, 0x0

    .line 95
    iput-boolean v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isControlByClicking:Z

    .line 97
    iput-boolean v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isPlayingBeforeSwitchPage:Z

    const/16 v2, 0xa

    .line 120
    iput v2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->RC_CONTROL_BAR:I

    const/16 v2, 0xb

    .line 123
    iput v2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->MSG_RESET_TYPE:I

    const/16 v2, 0x1388

    .line 125
    iput v2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->INTERVAL:I

    const/16 v2, 0x14

    .line 127
    iput v2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->RC_FRAME:I

    .line 129
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->frameCache:Landroid/util/SparseArray;

    .line 131
    iput-boolean v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isChangedByUser:Z

    const/16 v2, 0x1e

    .line 135
    iput v2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->RC_SPEED_OVERFLOW:I

    .line 137
    iput-boolean v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isSpeedOverFlow:Z

    const/16 v2, 0x28

    .line 139
    iput v2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->RC_PLAY_ERROR:I

    const/16 v2, 0x32

    .line 141
    iput v2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->RC_CARPLAY:I

    .line 143
    iput-boolean v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->playingStatus:Z

    const/16 v2, 0x3c

    .line 145
    iput v2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->RC_INPUT:I

    const/16 v2, 0x46

    .line 147
    iput v2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->RC_PLAY:I

    .line 148
    iput-boolean v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isError:Z

    .line 149
    iput-boolean v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isConfirm:Z

    const/16 v2, 0x50

    .line 151
    iput v2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->RC_HICar:I

    .line 153
    iput-boolean v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isPauseByHiCar:Z

    .line 155
    iput v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->tempSpeed:I

    .line 156
    iput-boolean v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isAudioChanged:Z

    .line 158
    iput-boolean v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isPreview:Z

    const/16 v2, 0x5a

    .line 160
    iput v2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->RC_POWER_OFF:I

    .line 161
    iput-boolean v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->mIsShowCarPlayOfPause:Z

    .line 162
    iput-boolean v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isOpen:Z

    .line 164
    new-instance v2, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;-><init>(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->mHandler:Landroid/os/Handler;

    .line 403
    iput-boolean v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isScreenSaver:Z

    .line 404
    new-instance v2, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$2;

    invoke-direct {v2, p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$2;-><init>(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)V

    iput-object v2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->screenSaverReceiver:Landroid/content/BroadcastReceiver;

    .line 439
    new-instance v2, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$3;

    invoke-direct {v2, p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$3;-><init>(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)V

    iput-object v2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->hiCarReceiver:Landroid/content/BroadcastReceiver;

    .line 495
    new-instance v2, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$4;

    invoke-direct {v2, p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$4;-><init>(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)V

    iput-object v2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 621
    iput-boolean v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isClickTheSame:Z

    .line 698
    iput-boolean v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isBackCarToPause:Z

    .line 700
    new-instance v2, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$6;

    invoke-direct {v2, p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$6;-><init>(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)V

    iput-object v2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->mBackCarStatusRec:Landroid/content/BroadcastReceiver;

    .line 853
    new-instance v2, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$7;

    invoke-direct {v2, p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$7;-><init>(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)V

    iput-object v2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->carInputCallback:Lcom/yftech/car/input/CarInputManager$CarInputCallback;

    .line 879
    new-instance v2, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$8;

    invoke-direct {v2, p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$8;-><init>(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)V

    iput-object v2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->audioCallback:Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;

    .line 929
    new-instance v2, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$9;

    invoke-direct {v2, p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$9;-><init>(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)V

    iput-object v2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->carInfoListener:Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;

    .line 962
    new-instance v2, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$10;

    invoke-direct {v2, p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$10;-><init>(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)V

    iput-object v2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->carPlayMusicListener:Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;

    .line 1160
    iput v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->video_duration:I

    .line 1161
    iput-boolean v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isFinish:Z

    .line 1162
    new-instance v2, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;

    invoke-direct {v2, p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;-><init>(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)V

    iput-object v2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->callback:Lcom/yftech/car/widget/media/video/VideoPlayer$VideoCallback;

    .line 1551
    iput-boolean v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isPressing:Z

    .line 1660
    iput v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->mCurrType:I

    .line 1664
    new-instance v0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$14;

    invoke-direct {v0, p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$14;-><init>(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)V

    iput-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->volumeCallbackListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 1770
    new-instance v0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$15;

    invoke-direct {v0, p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$15;-><init>(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)V

    iput-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->carScreenCallback:Lcom/yftech/car/screen/CarScreenManager$CarScreenCallback;

    const-string v0, "video_window_start"

    .line 1808
    iput-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->ACTION_SOURCE_WINDOW_START:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;I)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->setControlBarVisible(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/yftech/car/widget/media/video/VideoPlayer;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->player:Lcom/yftech/car/widget/media/video/VideoPlayer;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isScreenSaver:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Z)Z
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isScreenSaver:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isOpen:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Z)Z
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isOpen:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isBackCarToPause:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Z)Z
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isBackCarToPause:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isPreview:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Z)Z
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isPreview:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->iv_control:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isConfirm:Z

    return p0
.end method

.method static synthetic access$1502(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Z)Z
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isConfirm:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isPauseByHiCar:Z

    return p0
.end method

.method static synthetic access$1602(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Z)Z
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isPauseByHiCar:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)I
    .locals 0

    .line 84
    iget p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->mCurrType:I

    return p0
.end method

.method static synthetic access$1702(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;I)I
    .locals 0

    .line 84
    iput p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->mCurrType:I

    return p1
.end method

.method static synthetic access$1800(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isBtCall()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/os/Handler;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/media/common/ui/widget/TipsDialog;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->dialog:Lcom/media/common/ui/widget/TipsDialog;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->carInfoListener:Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;

    return-object p0
.end method

.method static synthetic access$202(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Lcom/media/common/ui/widget/TipsDialog;)Lcom/media/common/ui/widget/TipsDialog;
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->dialog:Lcom/media/common/ui/widget/TipsDialog;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;I)I
    .locals 0

    .line 84
    iput p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->tempSpeed:I

    return p1
.end method

.method static synthetic access$2200(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/yftech/car/input/CarInputManager$CarInputCallback;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->carInputCallback:Lcom/yftech/car/input/CarInputManager$CarInputCallback;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/widget/SeekBar;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->sb_volume:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/widget/TextView;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->tv_volume_percent:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->iv_volume:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->play_error_prompt:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/widget/TextView;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->tv_video_play_error:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/media/common/ui/widget/MyActionBar;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->actionBar:Lcom/media/common/ui/widget/MyActionBar;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)I
    .locals 0

    .line 84
    iget p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->index:I

    return p0
.end method

.method static synthetic access$300(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isSpeedOverFlow:Z

    return p0
.end method

.method static synthetic access$3000(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Z)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->setControlEnable(Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Z)Z
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isSpeedOverFlow:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/widget/ProgressBar;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isFinish:Z

    return p0
.end method

.method static synthetic access$3202(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Z)Z
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isFinish:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/util/SparseArray;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->frameCache:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$3402(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;I)I
    .locals 0

    .line 84
    iput p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->video_duration:I

    return p1
.end method

.method static synthetic access$3500(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/widget/TextView;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->tv_time_total:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isPressing:Z

    return p0
.end method

.method static synthetic access$3700(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/widget/TextView;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->tv_time_index:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isControlByClicking:Z

    return p0
.end method

.method static synthetic access$3802(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Z)Z
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isControlByClicking:Z

    return p1
.end method

.method static synthetic access$3902(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Z)Z
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isAudioChanged:Z

    return p1
.end method

.method static synthetic access$400(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->mIsShowCarPlayOfPause:Z

    return p0
.end method

.method static synthetic access$4000(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getControlBarVisible()Z

    move-result p0

    return p0
.end method

.method static synthetic access$402(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Z)Z
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->mIsShowCarPlayOfPause:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Ljava/lang/String;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->playIndexPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;IZIZ)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->freezeFrameSet(IZIZ)V

    return-void
.end method

.method static synthetic access$4300(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)I
    .locals 0

    .line 84
    iget p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->mStartSeek:I

    return p0
.end method

.method static synthetic access$4302(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;I)I
    .locals 0

    .line 84
    iput p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->mStartSeek:I

    return p1
.end method

.method static synthetic access$500(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isCanReplayVideo()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isPagePlaying:Z

    return p0
.end method

.method static synthetic access$602(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Z)Z
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isPagePlaying:Z

    return p1
.end method

.method static synthetic access$700(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isClickTheSame:Z

    return p0
.end method

.method static synthetic access$702(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Z)Z
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isClickTheSame:Z

    return p1
.end method

.method static synthetic access$800(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isPlayingBeforeSwitchPage:Z

    return p0
.end method

.method static synthetic access$900(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isError:Z

    return p0
.end method

.method static synthetic access$902(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Z)Z
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isError:Z

    return p1
.end method

.method private freezeFrameSet(IZIZ)V
    .locals 0

    return-void
.end method

.method private getControlBarVisible()Z
    .locals 1

    .line 1497
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->control_bar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->actionBar:Lcom/media/common/ui/widget/MyActionBar;

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

.method private isBtCall()Z
    .locals 0

    .line 434
    invoke-static {}, Lcom/yftech/car/bluetooth/manager/CarBluetoothManagerGlobal;->getInstance()Lcom/yftech/car/bluetooth/manager/CarBluetoothManagerGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/bluetooth/manager/CarBluetoothManagerGlobal;->getPhoneCalls()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 435
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isCanReplayVideo()Z
    .locals 9

    const-string v0, "screen_view_show"

    const/4 v1, 0x0

    .line 675
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "sys.atc.carplay.app.show_ui"

    .line 676
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 677
    invoke-static {}, Lcom/yftech/car/screen/CarScreenManager;->getInstance()Lcom/yftech/car/screen/CarScreenManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/car/screen/CarScreenManager;->isOpenScreenBrightness()Z

    move-result v3

    .line 679
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarInfoManager;->get()Lcom/yftech/vehicle/sdk/CarInfoManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yftech/vehicle/sdk/CarInfoManager;->getVehicleSpeed()I

    move-result v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v1

    .line 682
    :goto_0
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;

    if-eqz p0, :cond_1

    .line 684
    iget-boolean p0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->isDisplaying:Z

    goto :goto_1

    :cond_1
    move p0, v1

    .line 686
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isCanReplayVideo isScreenSaverState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ",isCarPlayDisplaying:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ",isActivityDisplaying:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ",speed:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",openScreenBrightness:"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-nez v0, :cond_2

    if-nez v2, :cond_2

    if-eqz p0, :cond_2

    if-eqz v3, :cond_2

    if-nez v6, :cond_2

    return v5

    :cond_2
    return v1
.end method

.method public static newInstance(ILjava/lang/String;Ljava/lang/String;)Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;
    .locals 3

    .line 544
    new-instance v0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-direct {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;-><init>()V

    .line 545
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "index"

    .line 546
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "playIndexPath"

    .line 547
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "title"

    .line 548
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    invoke-virtual {v0, v1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private registerBackCarReceiver()V
    .locals 2

    .line 584
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.yftech.avmservice.SHOW_STATE"

    .line 585
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "air_control_show"

    .line 586
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 587
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 588
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->mBackCarStatusRec:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private registerHiCarReceiver()V
    .locals 2

    .line 606
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.yftech.hicar.show"

    .line 607
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 609
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 610
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->hiCarReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private registerScreenSaverReceiver()V
    .locals 2

    .line 614
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.systemui.screenview"

    .line 615
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 617
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 618
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->screenSaverReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private registerTestReceiver()V
    .locals 2

    .line 594
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "test"

    .line 595
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "aaaa"

    .line 596
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "bbbb"

    .line 597
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "cccc"

    .line 598
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "dddd"

    .line 599
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setControlBarVisible(I)V
    .locals 0

    return-void
.end method

.method private setControlEnable(Z)V
    .locals 1

    .line 1763
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->iv_control:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1766
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->iv_control:Landroid/widget/ImageView;

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

    .line 540
    new-instance v0, Lcom/yftech/libmedia/player/presenter/PlayPresenter;

    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yftech/libmedia/player/presenter/PlayPresenter;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method protected bridge synthetic createPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;
    .locals 0

    .line 84
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->createPresenter()Lcom/yftech/libmedia/player/presenter/PlayPresenter;

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

    .line 1758
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->player:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-virtual {p0, p2, p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->startPlayList(Ljava/util/List;I)Z

    :cond_0
    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1032
    sget v0, Lcom/yftech/libmedia/R$id;->actionBar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/media/common/ui/widget/MyActionBar;

    iput-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->actionBar:Lcom/media/common/ui/widget/MyActionBar;

    .line 1033
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->actionBar:Lcom/media/common/ui/widget/MyActionBar;

    iget-object v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/media/common/ui/widget/MyActionBar;->setTitleText(Ljava/lang/String;)V

    .line 1035
    sget v0, Lcom/yftech/libmedia/R$id;->sb_video:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->sb_video:Landroid/widget/SeekBar;

    .line 1036
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->sb_video:Landroid/widget/SeekBar;

    new-instance v1, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$11;

    invoke-direct {v1, p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$11;-><init>(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1050
    sget v0, Lcom/yftech/libmedia/R$id;->sb_volume:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->sb_volume:Landroid/widget/SeekBar;

    .line 1051
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->sb_volume:Landroid/widget/SeekBar;

    new-instance v1, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$12;

    invoke-direct {v1, p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$12;-><init>(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1063
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->sb_volume:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->volumeCallbackListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1064
    sget v0, Lcom/yftech/libmedia/R$id;->control_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->control_bar:Landroid/widget/LinearLayout;

    .line 1065
    sget v0, Lcom/yftech/libmedia/R$id;->iv_control:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->iv_control:Landroid/widget/ImageView;

    .line 1066
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->iv_control:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1067
    sget v0, Lcom/yftech/libmedia/R$id;->iv_next:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1068
    sget v0, Lcom/yftech/libmedia/R$id;->iv_volume:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->iv_volume:Landroid/widget/ImageView;

    .line 1069
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->iv_volume:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1070
    sget v0, Lcom/yftech/libmedia/R$id;->iv_full_screen:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1076
    sget v0, Lcom/yftech/libmedia/R$id;->tv_time_total:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->tv_time_total:Landroid/widget/TextView;

    .line 1077
    sget v0, Lcom/yftech/libmedia/R$id;->tv_time_index:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->tv_time_index:Landroid/widget/TextView;

    .line 1078
    sget v0, Lcom/yftech/libmedia/R$id;->play_error_prompt:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->play_error_prompt:Landroid/widget/ImageView;

    .line 1079
    sget v0, Lcom/yftech/libmedia/R$id;->tv_video_play_error:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->tv_video_play_error:Landroid/widget/TextView;

    .line 1080
    sget v0, Lcom/yftech/libmedia/R$id;->tv_volume_percent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->tv_volume_percent:Landroid/widget/TextView;

    .line 1082
    sget v0, Lcom/yftech/libmedia/R$id;->main:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->main:Landroid/widget/FrameLayout;

    .line 1084
    sget v0, Lcom/yftech/libmedia/R$id;->progressBar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 1085
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1087
    sget v0, Lcom/yftech/libmedia/R$id;->player:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/widget/media/video/VideoPlayer;

    iput-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->player:Lcom/yftech/car/widget/media/video/VideoPlayer;

    .line 1088
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initView:playerId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->player:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1090
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->player:Lcom/yftech/car/widget/media/video/VideoPlayer;

    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->callback:Lcom/yftech/car/widget/media/video/VideoPlayer$VideoCallback;

    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->addVideoCallback(Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;)V

    .line 1091
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->player:Lcom/yftech/car/widget/media/video/VideoPlayer;

    const/16 v0, 0x1f4

    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setErrorAutoNextDelayMillis(I)V

    .line 1092
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->player:Lcom/yftech/car/widget/media/video/VideoPlayer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setSpeedLimitPlayback(I)V

    .line 1094
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->player:Lcom/yftech/car/widget/media/video/VideoPlayer;

    const/16 v2, 0x64

    invoke-virtual {p1, v2}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setPlayMode(I)V

    .line 1096
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->player:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setOnTouchGesture(Z)V

    const-string p1, "initView"

    .line 1121
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1122
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    const-wide/16 v3, 0x1388

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1124
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/media/common/util/AudioSettingUtil;->isMasterMute(Landroid/content/Context;)Z

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eqz p1, :cond_0

    .line 1126
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, v3}, Lcom/media/common/util/AudioSettingUtil;->getStreamMaxVolume(Landroid/content/Context;I)I

    move-result p1

    .line 1127
    iget-object v3, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->sb_volume:Landroid/widget/SeekBar;

    invoke-virtual {v3, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1128
    iget-object v3, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->sb_volume:Landroid/widget/SeekBar;

    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1129
    iget-object v3, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->tv_volume_percent:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "%d%%"

    new-array v0, v0, [Ljava/lang/Object;

    int-to-float p1, p1

    div-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v4, v5, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1131
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->iv_volume:Landroid/widget/ImageView;

    sget v0, Lcom/yftech/libmedia/R$drawable;->imgvideo_icon_volume_off:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 1134
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, v3}, Lcom/media/common/util/AudioSettingUtil;->getStreamMaxVolume(Landroid/content/Context;I)I

    move-result p1

    .line 1135
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/media/common/util/AudioSettingUtil;->getStreamVolume(Landroid/content/Context;I)I

    move-result v3

    .line 1136
    iget-object v4, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->sb_volume:Landroid/widget/SeekBar;

    invoke-virtual {v4, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1137
    iget-object v4, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->sb_volume:Landroid/widget/SeekBar;

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1138
    iget-object v4, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->tv_volume_percent:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string v6, "%d%%"

    new-array v0, v0, [Ljava/lang/Object;

    int-to-float v3, v3

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v3, v7

    int-to-float p1, p1

    div-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v5, v6, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    cmpl-float p1, v3, v2

    if-nez p1, :cond_1

    .line 1143
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->iv_volume:Landroid/widget/ImageView;

    sget v0, Lcom/yftech/libmedia/R$drawable;->imgvideo_icon_volume_off:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const/high16 v0, 0x41f00000    # 30.0f

    if-lez p1, :cond_2

    cmpg-float p1, v3, v0

    if-gez p1, :cond_2

    .line 1145
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->iv_volume:Landroid/widget/ImageView;

    sget v0, Lcom/yftech/libmedia/R$drawable;->imgvideo_icon_volume_on_01:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    cmpl-float p1, v3, v0

    const/high16 v0, 0x42700000    # 60.0f

    if-ltz p1, :cond_3

    cmpg-float p1, v3, v0

    if-gez p1, :cond_3

    .line 1147
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->iv_volume:Landroid/widget/ImageView;

    sget v0, Lcom/yftech/libmedia/R$drawable;->imgvideo_icon_volume_on_02:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    cmpl-float p1, v3, v0

    if-ltz p1, :cond_4

    cmpg-float p1, v3, v7

    if-gtz p1, :cond_4

    .line 1149
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->iv_volume:Landroid/widget/ImageView;

    sget v0, Lcom/yftech/libmedia/R$drawable;->imgvideo_icon_volume_on_03:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    :goto_0
    const/4 p1, 0x4

    .line 1153
    invoke-direct {p0, p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->setControlBarVisible(I)V

    return-void
.end method

.method protected onBindView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1025
    sget p0, Lcom/yftech/libmedia/R$layout;->fragment_video_player:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1503
    invoke-static {}, Lcom/media/common/util/SystemUtil;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1507
    :cond_0
    iget-boolean v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isError:Z

    if-nez v0, :cond_2

    .line 1508
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1509
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1512
    :cond_1
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1515
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libmedia/R$id;->iv_control:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_3

    .line 1518
    iput-boolean v2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isControlByClicking:Z

    .line 1521
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->player:Lcom/yftech/car/widget/media/video/VideoPlayer;

    if-eqz p1, :cond_8

    .line 1522
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->player:Lcom/yftech/car/widget/media/video/VideoPlayer;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setPlayState(I)Z

    goto :goto_0

    .line 1523
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libmedia/R$id;->iv_next:I

    if-ne v0, v1, :cond_4

    .line 1526
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->player:Lcom/yftech/car/widget/media/video/VideoPlayer;

    if-eqz p1, :cond_8

    .line 1527
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->player:Lcom/yftech/car/widget/media/video/VideoPlayer;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setPlayState(I)Z

    goto :goto_0

    .line 1528
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libmedia/R$id;->iv_volume:I

    const/4 v3, 0x0

    if-ne v0, v1, :cond_6

    .line 1530
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/media/common/util/AudioSettingUtil;->isMasterMute(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 1532
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/media/common/util/AudioSettingUtil;->setMasterMute(Landroid/content/Context;Z)V

    goto :goto_0

    .line 1534
    :cond_5
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v3}, Lcom/media/common/util/AudioSettingUtil;->setMasterMute(Landroid/content/Context;Z)V

    goto :goto_0

    .line 1536
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/yftech/libmedia/R$id;->iv_full_screen:I

    if-ne p1, v0, :cond_8

    .line 1538
    iget-boolean p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isFullScreen:Z

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isFullScreen:Z

    .line 1539
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iget-boolean v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isFullScreen:Z

    invoke-static {p1, v0}, Lcom/media/common/util/SystemUtil;->setSysFullScreen(Landroid/app/Activity;Z)V

    .line 1542
    iget-boolean p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isFullScreen:Z

    if-eqz p1, :cond_7

    .line 1543
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->main:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v3, v3, v3, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_0

    .line 1545
    :cond_7
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->main:Landroid/widget/FrameLayout;

    const/16 p1, 0x4e

    invoke-virtual {p0, v3, v3, v3, p1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_8
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 555
    invoke-super {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onCreate(Landroid/os/Bundle;)V

    .line 556
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 557
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->index:I

    .line 558
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "playIndexPath"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->playIndexPath:Ljava/lang/String;

    .line 559
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->title:Ljava/lang/String;

    .line 563
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->init(Landroid/content/Context;)V

    .line 566
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarInfoManager;->get()Lcom/yftech/vehicle/sdk/CarInfoManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->carInfoListener:Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;

    invoke-virtual {p1, v0}, Lcom/yftech/vehicle/sdk/CarInfoManager;->registerListener(Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;)V

    .line 568
    invoke-static {}, Lcom/yftech/car/audio/CarAudioManager;->getInstance()Lcom/yftech/car/audio/CarAudioManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->audioCallback:Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/yftech/car/audio/CarAudioManager;->registerCarAudioCallback(Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;Landroid/os/Handler;)V

    .line 569
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getInstance(Landroid/content/Context;)Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->carPlayMusicListener:Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;

    invoke-virtual {p1, v0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->registerCarPlayMusicListener(Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;)V

    .line 570
    invoke-static {}, Lcom/yftech/car/screen/CarScreenManager;->getInstance()Lcom/yftech/car/screen/CarScreenManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->carScreenCallback:Lcom/yftech/car/screen/CarScreenManager$CarScreenCallback;

    invoke-virtual {p1, v0, v1}, Lcom/yftech/car/screen/CarScreenManager;->registerCarScreenCallback(Lcom/yftech/car/screen/CarScreenManager$CarScreenCallback;Landroid/os/Handler;)V

    .line 572
    invoke-direct {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->registerBackCarReceiver()V

    .line 573
    invoke-direct {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->registerTestReceiver()V

    .line 575
    invoke-direct {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->registerHiCarReceiver()V

    .line 577
    invoke-direct {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->registerScreenSaverReceiver()V

    .line 579
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 826
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onDestroy()V

    const-string v0, "onDestroy"

    .line 828
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 830
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->player:Lcom/yftech/car/widget/media/video/VideoPlayer;

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->player:Lcom/yftech/car/widget/media/video/VideoPlayer;

    iget-object v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->callback:Lcom/yftech/car/widget/media/video/VideoPlayer$VideoCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->removeVideoCallback(Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;)V

    .line 832
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->player:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->release()V

    const/4 v0, 0x0

    .line 833
    iput-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->player:Lcom/yftech/car/widget/media/video/VideoPlayer;

    .line 836
    :cond_0
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarInfoManager;->get()Lcom/yftech/vehicle/sdk/CarInfoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->carInfoListener:Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;

    invoke-virtual {v0, v1}, Lcom/yftech/vehicle/sdk/CarInfoManager;->unregisterListener(Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;)V

    .line 837
    invoke-static {}, Lcom/yftech/car/audio/CarAudioManager;->getInstance()Lcom/yftech/car/audio/CarAudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->audioCallback:Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/audio/CarAudioManager;->unregisterCarAudioCallback(Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;)V

    .line 838
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getInstance(Landroid/content/Context;)Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->carPlayMusicListener:Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;

    invoke-virtual {v0, v1}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->unregisterCarPlayMusicListener(Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;)V

    .line 839
    invoke-static {}, Lcom/yftech/car/screen/CarScreenManager;->getInstance()Lcom/yftech/car/screen/CarScreenManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->carScreenCallback:Lcom/yftech/car/screen/CarScreenManager$CarScreenCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/screen/CarScreenManager;->unregisterCarScreenCallback(Lcom/yftech/car/screen/CarScreenManager$CarScreenCallback;)V

    .line 841
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 842
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->hiCarReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 843
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->screenSaverReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 844
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->mBackCarStatusRec:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 845
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 848
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/media/common/util/SystemUtil;->setSysFullScreen(Landroid/app/Activity;Z)V

    return-void
.end method

.method public onMediaSourceWindowChanged(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMediaSourceWindowChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v0, "video_window_start"

    .line 1812
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "onMediaSourceWindowChanged=finish VideoActivity"

    .line 1814
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1815
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1817
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 4

    .line 625
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onPause()V

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause:isPlaying="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isPagePlaying:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 629
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->dialog:Lcom/media/common/ui/widget/TipsDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->dialog:Lcom/media/common/ui/widget/TipsDialog;

    invoke-virtual {v0}, Lcom/media/common/ui/widget/TipsDialog;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->dialog:Lcom/media/common/ui/widget/TipsDialog;

    invoke-virtual {v0}, Lcom/media/common/ui/widget/TipsDialog;->dismissAllowingStateLoss()V

    const/4 v0, 0x0

    .line 631
    iput-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->dialog:Lcom/media/common/ui/widget/TipsDialog;

    .line 635
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;

    if-eqz v0, :cond_1

    .line 637
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;

    const/4 v1, 0x0

    .line 638
    iput-boolean v1, v0, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->isDisplaying:Z

    .line 642
    :cond_1
    invoke-static {}, Lcom/yftech/car/input/CarInputManager;->getInstance()Lcom/yftech/car/input/CarInputManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->carInputCallback:Lcom/yftech/car/input/CarInputManager$CarInputCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/input/CarInputManager;->unregisterCarInputCallback(Lcom/yftech/car/input/CarInputManager$CarInputCallback;)V

    .line 646
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$5;

    invoke-direct {v1, p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$5;-><init>(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 726
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onResume()V

    .line 727
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const-string v1, "video_window_start"

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 730
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 732
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;

    .line 733
    iput-boolean v1, v0, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->isDisplaying:Z

    .line 739
    :cond_0
    invoke-static {}, Lcom/yftech/car/input/CarInputManager;->getInstance()Lcom/yftech/car/input/CarInputManager;

    move-result-object v0

    iget-object v2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->carInputCallback:Lcom/yftech/car/input/CarInputManager$CarInputCallback;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/yftech/car/input/CarInputManager;->registerCarInputCallback(Lcom/yftech/car/input/CarInputManager$CarInputCallback;Landroid/os/Handler;)V

    const-string v0, "sys.atc.carplay.app.show_ui"

    const/4 v2, 0x0

    .line 743
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 744
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume:isCarPlayDisplaying="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isPauseByHiCar="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isPauseByHiCar:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    return-void

    .line 751
    :cond_1
    invoke-static {}, Lcom/media/common/util/AudioSettingUtil;->getCurrentMediaSource()Ljava/lang/String;

    move-result-object v0

    .line 752
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, -0x1

    .line 753
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "MUSIC_SOURCE_OF_USB2"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v4, "MUSIC_SOURCE_OF_USB1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :sswitch_2
    const-string v4, "MUSIC_SOURCE_OF_CARLIFE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v4, "MUSIC_SOURCE_OF_BLUETOOTH"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :sswitch_4
    const-string v4, "com.autochips.carplay.resourcemanagerment"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 765
    :pswitch_0
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getInstance(Landroid/content/Context;)Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->pause()V

    goto :goto_2

    .line 762
    :pswitch_1
    invoke-static {}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getInstance()Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->setMusicControl(I)V

    goto :goto_2

    .line 759
    :pswitch_2
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/music/CarMusicManager;->pause()V

    goto :goto_2

    .line 755
    :pswitch_3
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->pauseBluetoothMusic()Z

    .line 769
    :cond_3
    :goto_2
    iput-boolean v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isClickTheSame:Z

    .line 771
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->player:Lcom/yftech/car/widget/media/video/VideoPlayer;

    if-eqz v0, :cond_c

    .line 774
    iget-boolean v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isPauseByHiCar:Z

    if-eqz v0, :cond_4

    .line 775
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->player:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setPlayState(I)Z

    .line 776
    iput-boolean v2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isPauseByHiCar:Z

    return-void

    .line 782
    :cond_4
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarInfoManager;->get()Lcom/yftech/vehicle/sdk/CarInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarInfoManager;->getVehicleSpeed()I

    move-result v0

    .line 784
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CarSpeedCheck:speed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isSpeedOverFlow="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isSpeedOverFlow:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 786
    iget-boolean v3, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isSpeedOverFlow:Z

    const/16 v4, 0x1e

    if-eqz v3, :cond_5

    if-eqz v0, :cond_6

    :cond_5
    iget-boolean v3, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isSpeedOverFlow:Z

    if-nez v3, :cond_7

    if-lt v0, v1, :cond_7

    .line 787
    :cond_6
    iget-object v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 788
    iput v4, v1, Landroid/os/Message;->what:I

    .line 789
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 790
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_7
    if-lt v0, v1, :cond_9

    .line 795
    iget-object v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->dialog:Lcom/media/common/ui/widget/TipsDialog;

    if-nez v1, :cond_8

    .line 796
    iget-object v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 797
    iput v4, v1, Landroid/os/Message;->what:I

    .line 798
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 799
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_8
    return-void

    .line 805
    :cond_9
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->player:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->getCurrentPlay()Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object v0

    .line 806
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume:playerId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->player:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-virtual {v3}, Lcom/yftech/car/widget/media/video/VideoPlayer;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", getCurrentPlay="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_a

    const-string v3, "null"

    goto :goto_3

    :cond_a
    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-nez v0, :cond_b

    .line 809
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/yftech/libmedia/player/presenter/PlayPresenter;

    iget v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->index:I

    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->playIndexPath:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/yftech/libmedia/player/presenter/PlayPresenter;->getVideoPlayList(ILjava/lang/String;)V

    goto :goto_4

    .line 811
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume:isAudioChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isAudioChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPagePlaying="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isPagePlaying:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 818
    iput-boolean v2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isAudioChanged:Z

    :cond_c
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x74d2d66c -> :sswitch_4
        0x3b9dd690 -> :sswitch_3
        0x5b93cd32 -> :sswitch_2
        0x6946e60b -> :sswitch_1
        0x6946e60c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onUSBStatusChange(Lcom/media/common/event/USBStateEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "onUSBStatusChange:receiveBroadCast"

    .line 1555
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1558
    iget-boolean v0, p1, Lcom/media/common/event/USBStateEvent;->isUsbExists:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->index:I

    iget p1, p1, Lcom/media/common/event/USBStateEvent;->usbIndex:I

    if-ne v0, p1, :cond_0

    .line 1561
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->player:Lcom/yftech/car/widget/media/video/VideoPlayer;

    if-eqz p1, :cond_0

    .line 1562
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->player:Lcom/yftech/car/widget/media/video/VideoPlayer;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setPlayState(I)Z

    :cond_0
    return-void
.end method
