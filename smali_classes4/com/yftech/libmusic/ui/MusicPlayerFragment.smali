.class public Lcom/yftech/libmusic/ui/MusicPlayerFragment;
.super Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;
.source "MusicPlayerFragment.java"

# interfaces
.implements Lcom/yftech/libmusic/view/IMusicPlayerFragmentView;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment<",
        "Lcom/yftech/libmusic/presenter/MusicPlayerPresenter;",
        ">;",
        "Lcom/yftech/libmusic/view/IMusicPlayerFragmentView;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final ARG_PARAM1:Ljava/lang/String; = "MUSIC_SOURCE"


# instance fields
.field private final INTERVAL:I

.field private final RC_DURATION_BAR:I

.field private final RC_HICar:I

.field private final RC_LYRIC:I

.field private final RC_LYRIC_POSITION:I

.field private final RC_PLAY_ERROR:I

.field private final bluetoothPhoneCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;

.field private final callback:Lcom/yftech/car/media/music/CarMusicManager$CarMusicControlCallback;

.field private final carAudioCallback:Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;

.field private final carLifeDataChangedCallback:Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback;

.field private final carPlayMusicListener:Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;

.field private hiCarReceiver:Landroid/content/BroadcastReceiver;

.field private final interval:I

.field public isNeedToPlay:Z

.field private isPressing:Z

.field private isRightStart:Z

.field private final itemPlaceHolder:I

.field private iv_func_1:Landroid/widget/ImageView;

.field private iv_func_2:Landroid/widget/ImageView;

.field private iv_func_3:Landroid/widget/ImageView;

.field private iv_last:Landroid/widget/ImageView;

.field private iv_next:Landroid/widget/ImageView;

.field private iv_play:Landroid/widget/ImageView;

.field private mCheckBtMusicStateRunable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private final musicCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;

.field private musicLyricFragment:Lcom/yftech/libmusic/ui/MusicLyricFragment;

.field private musicSongListDialog:Lcom/yftech/libmusic/dialog/MediaDataListDialog;

.field private musicSourceDialog:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

.field private music_play_lyrics:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

.field private music_source:Ljava/lang/String;

.field private progress_index:Landroid/widget/FrameLayout;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/libmusic/bean/LyricObject;",
            ">;"
        }
    .end annotation
.end field

.field private sb_music:Landroid/widget/SeekBar;

.field private setMusicProgressRunnable:Ljava/lang/Runnable;

.field private tv_artist:Landroid/widget/TextView;

.field private tv_blue_tips:Landroid/widget/TextView;

.field private tv_music_duration:Landroid/widget/TextView;

.field private tv_music_progress:Landroid/widget/TextView;

.field private tv_music_source:Landroid/widget/TextView;

.field private tv_seekBar_max:Landroid/widget/TextView;

.field private tv_seekBar_progress:Landroid/widget/TextView;

.field private tv_title:Landroid/widget/TextView;

.field private v_cover:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 193
    invoke-direct {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;-><init>()V

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->isPressing:Z

    const/16 v0, 0xa

    .line 123
    iput v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->RC_DURATION_BAR:I

    const/16 v0, 0x7d0

    .line 125
    iput v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->INTERVAL:I

    const/16 v0, 0x14

    .line 127
    iput v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->RC_PLAY_ERROR:I

    const/16 v0, 0x1e

    .line 129
    iput v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->RC_LYRIC:I

    const/16 v0, 0x12c

    .line 131
    iput v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->interval:I

    const/16 v0, 0x28

    .line 135
    iput v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->RC_LYRIC_POSITION:I

    const/4 v0, 0x2

    .line 136
    iput v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->itemPlaceHolder:I

    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->isNeedToPlay:Z

    const/16 v0, 0x50

    .line 140
    iput v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->RC_HICar:I

    .line 143
    new-instance v0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment$1;-><init>(Lcom/yftech/libmusic/ui/MusicPlayerFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->mHandler:Landroid/os/Handler;

    .line 178
    new-instance v0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$2;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment$2;-><init>(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)V

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->setMusicProgressRunnable:Ljava/lang/Runnable;

    .line 259
    new-instance v0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$3;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment$3;-><init>(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)V

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 284
    new-instance v0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$4;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment$4;-><init>(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)V

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->hiCarReceiver:Landroid/content/BroadcastReceiver;

    .line 425
    new-instance v0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$5;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment$5;-><init>(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)V

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->bluetoothPhoneCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;

    .line 459
    new-instance v0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$6;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment$6;-><init>(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)V

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->callback:Lcom/yftech/car/media/music/CarMusicManager$CarMusicControlCallback;

    .line 618
    new-instance v0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$7;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment$7;-><init>(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)V

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->mCheckBtMusicStateRunable:Ljava/lang/Runnable;

    .line 639
    new-instance v0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$8;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment$8;-><init>(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)V

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->musicCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;

    .line 765
    new-instance v0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$9;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment$9;-><init>(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)V

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->carLifeDataChangedCallback:Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback;

    .line 853
    new-instance v0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$10;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment$10;-><init>(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)V

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->carPlayMusicListener:Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;

    .line 971
    new-instance v0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$11;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment$11;-><init>(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)V

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->carAudioCallback:Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Z
    .locals 0

    .line 92
    iget-boolean p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->isPressing:Z

    return p0
.end method

.method static synthetic access$002(Lcom/yftech/libmusic/ui/MusicPlayerFragment;Z)Z
    .locals 0

    .line 92
    iput-boolean p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->isPressing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/FrameLayout;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->progress_index:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_next:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_last:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Ljava/lang/String;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/yftech/libmusic/ui/MusicPlayerFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_artist:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_func_2:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->setMusicProgressRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_blue_tips:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->mCheckBtMusicStateRunable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/app/Activity;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_music_progress:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/app/Activity;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/app/Activity;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/app/Activity;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/app/Activity;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/app/Activity;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Lcom/yftech/libmusic/dialog/MediaDataListDialog;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->musicSongListDialog:Lcom/yftech/libmusic/dialog/MediaDataListDialog;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->setMusicSourceStyleWithoutPlay()V

    return-void
.end method

.method static synthetic access$2700(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Z
    .locals 0

    .line 92
    iget-boolean p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->isRightStart:Z

    return p0
.end method

.method static synthetic access$2800(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_seekBar_progress:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_seekBar_max:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_music_duration:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_play:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/SeekBar;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->sb_music:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$600(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Lcom/yftech/car/widget/media/music/lyrics/LyricView;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_play_lyrics:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Lcom/yftech/libmusic/ui/MusicLyricFragment;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->musicLyricFragment:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    return-object p0
.end method

.method static synthetic access$800(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/os/Handler;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->carLifeDataChangedCallback:Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback;

    return-object p0
.end method

.method private closeMusicSoundEffectsDialog()V
    .locals 1

    .line 2031
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/yftech/libmusic/MusicMainActivity;

    if-eqz v0, :cond_0

    .line 2033
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/yftech/libmusic/MusicMainActivity;

    .line 2034
    invoke-virtual {p0}, Lcom/yftech/libmusic/MusicMainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    .line 2035
    instance-of v0, p0, Landroidx/fragment/app/DialogFragment;

    if-eqz v0, :cond_0

    .line 2037
    check-cast p0, Landroidx/fragment/app/DialogFragment;

    .line 2039
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method private getIndexByProgress(I)I
    .locals 5

    .line 2269
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->result:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->result:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 2272
    :cond_0
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->result:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    .line 2274
    iget-object v2, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->result:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_2

    .line 2277
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->result:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/libmusic/bean/LyricObject;

    iget v3, v3, Lcom/yftech/libmusic/bean/LyricObject;->begintime:I

    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->result:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yftech/libmusic/bean/LyricObject;

    iget v4, v4, Lcom/yftech/libmusic/bean/LyricObject;->timeline:I

    add-int/2addr v3, v4

    if-le v3, p1, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    add-int v0, v1, v2

    .line 2283
    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 2286
    :cond_2
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->result:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/libmusic/bean/LyricObject;

    iget v3, v3, Lcom/yftech/libmusic/bean/LyricObject;->begintime:I

    if-gt v3, p1, :cond_3

    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->result:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/libmusic/bean/LyricObject;

    iget v3, v3, Lcom/yftech/libmusic/bean/LyricObject;->begintime:I

    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->result:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/libmusic/bean/LyricObject;

    iget p0, p0, Lcom/yftech/libmusic/bean/LyricObject;->timeline:I

    add-int/2addr v3, p0

    if-le v3, p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    return v1

    :cond_4
    :goto_3
    const/4 p0, -0x1

    return p0
.end method

.method public static synthetic lambda$setMusicSourceStyle$0(Lcom/yftech/libmusic/ui/MusicPlayerFragment;Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 1408
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getInstance(Landroid/content/Context;)Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->play()V

    :cond_0
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/yftech/libmusic/ui/MusicPlayerFragment;
    .locals 3

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newInstance:music_source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 205
    new-instance v0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-direct {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;-><init>()V

    .line 206
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "MUSIC_SOURCE"

    .line 207
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0, v1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private registerHiCarReceiver()V
    .locals 2

    .line 251
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.yftech.hicar.show"

    .line 252
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->hiCarReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private registerTestReceiver()V
    .locals 2

    .line 243
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "test"

    .line 244
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setLyricData(Lcom/yftech/car/media/data/entity/MediaFile;)V
    .locals 1

    .line 1855
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter;

    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter;->getLyricFromFile(Ljava/lang/String;Lcom/yftech/car/media/data/entity/MediaFile;)V

    return-void
.end method

.method private setMusicSourceStyle()V
    .locals 15

    .line 1184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMusicSourceStyle:music_source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v0, "MUSIC_SOURCE_OF_BLUETOOTH"

    .line 1186
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1188
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_blue_tips:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1189
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_artist:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1190
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1191
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->sb_music:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1192
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_music_progress:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1193
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_music_duration:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1194
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_last:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1195
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_next:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1196
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_play:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1200
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object v0

    const-string v3, "TAG_MUSIC_SOURCE_PLAYING"

    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/media/common/util/SharedPrefsUtil;->save(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1203
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "MUSIC_SOURCE_OF_USB2"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v4, "MUSIC_SOURCE_OF_USB1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :sswitch_2
    const-string v4, "MUSIC_SOURCE_OF_CARPLAY"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v4, "MUSIC_SOURCE_OF_CARLIFE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v5

    goto :goto_1

    :sswitch_4
    const-string v4, "MUSIC_SOURCE_OF_BLUETOOTH"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    const/high16 v3, 0x447a0000    # 1000.0f

    const-wide/16 v6, 0x0

    const/16 v4, 0x4b

    const/high16 v8, 0x42100000    # 36.0f

    const-wide/16 v9, 0xc8

    const/high16 v11, 0x42600000    # 56.0f

    packed-switch v0, :pswitch_data_0

    move v0, v2

    goto/16 :goto_2f

    .line 1412
    :pswitch_0
    sget v0, Lcom/yftech/libmusic/R$mipmap;->audio_icon_carlife_36:I

    .line 1414
    invoke-static {}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getInstance()Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getCarLifeMusicInformation()Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;

    move-result-object v3

    .line 1420
    iget-object v6, v3, Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;->title:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v3, Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;->title:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    move v6, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v6, v1

    .line 1421
    :goto_3
    iget-object v7, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    move v8, v11

    :goto_4
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1423
    iget-object v7, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    if-eqz v6, :cond_5

    iget-object v8, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->mActivity:Landroid/app/Activity;

    sget v11, Lcom/yftech/libmusic/R$color;->colorB3FFFFFF:I

    :goto_5
    invoke-virtual {v8, v11}, Landroid/app/Activity;->getColor(I)I

    move-result v8

    goto :goto_6

    :cond_5
    iget-object v8, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->mActivity:Landroid/app/Activity;

    sget v11, Lcom/yftech/libmusic/R$color;->colorFFFFFF:I

    goto :goto_5

    :goto_6
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1424
    iget-object v7, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v6, :cond_6

    goto :goto_7

    :cond_6
    move v4, v2

    .line 1425
    :goto_7
    iput v4, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1426
    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->requestLayout()V

    .line 1427
    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    if-eqz v6, :cond_7

    sget v7, Lcom/yftech/libmusic/R$string;->no_content_play:I

    invoke-virtual {p0, v7}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    :cond_7
    iget-object v7, v3, Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;->title:Ljava/lang/String;

    :goto_8
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1428
    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_artist:Landroid/widget/TextView;

    if-eqz v6, :cond_8

    sget v3, Lcom/yftech/libmusic/R$string;->select_music_play_phone:I

    invoke-virtual {p0, v3}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :cond_8
    iget-object v3, v3, Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;->artist:Ljava/lang/String;

    :goto_9
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1430
    invoke-static {}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getInstance()Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getCarLifeMusicDuration()I

    move-result v3

    .line 1431
    invoke-static {}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getInstance()Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getCarLifeMusicProgress()I

    move-result v4

    .line 1432
    iget-object v6, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_music_duration:Landroid/widget/TextView;

    mul-int/lit16 v7, v3, 0x3e8

    int-to-long v7, v7

    invoke-static {v7, v8}, Lcom/media/common/util/DateUtil;->getMusicTime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1433
    iget-object v6, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_music_progress:Landroid/widget/TextView;

    mul-int/lit16 v7, v4, 0x3e8

    int-to-long v7, v7

    invoke-static {v7, v8}, Lcom/media/common/util/DateUtil;->getMusicTime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez v3, :cond_9

    .line 1446
    iget-object v6, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->sb_music:Landroid/widget/SeekBar;

    invoke-virtual {v6, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1447
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->sb_music:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_a

    .line 1454
    :cond_9
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->sb_music:Landroid/widget/SeekBar;

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1455
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->sb_music:Landroid/widget/SeekBar;

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1462
    :goto_a
    invoke-static {}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getInstance()Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getCarLifeMusicPlayStatus()I

    move-result v3

    if-eq v3, v1, :cond_a

    .line 1463
    invoke-static {}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getInstance()Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->setMusicControl(I)V

    goto :goto_b

    .line 1465
    :cond_a
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_play:Landroid/widget/ImageView;

    sget v4, Lcom/yftech/libmusic/R$drawable;->music_main_icon_playing:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1468
    :goto_b
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    instance-of v3, v3, Lcom/yftech/libmusic/MusicMainActivity;

    if-eqz v3, :cond_b

    .line 1469
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/yftech/libmusic/MusicMainActivity;

    .line 1470
    sget v4, Lcom/yftech/libmusic/R$mipmap;->music_main_pic_cover:I

    invoke-virtual {v3, v4}, Lcom/yftech/libmusic/MusicMainActivity;->setAlbumCover(I)V

    .line 1474
    :cond_b
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/yftech/libmusic/ui/MusicPlayerFragment$17;

    invoke-direct {v4, p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment$17;-><init>(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)V

    invoke-virtual {v3, v4, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1482
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v3

    new-instance v4, Lcom/yftech/libmusic/event/MusicPlayStatusEvent;

    invoke-static {}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getInstance()Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getCarLifeMusicPlayStatus()I

    move-result v6

    if-ne v6, v1, :cond_c

    move v6, v1

    goto :goto_c

    :cond_c
    move v6, v2

    :goto_c
    invoke-direct {v4, v6}, Lcom/yftech/libmusic/event/MusicPlayStatusEvent;-><init>(Z)V

    invoke-virtual {v3, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_2f

    .line 1355
    :pswitch_1
    sget v0, Lcom/yftech/libmusic/R$mipmap;->audio_icon_carplay_36:I

    .line 1357
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getInstance(Landroid/content/Context;)Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 1358
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getInstance(Landroid/content/Context;)Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getArtist()Ljava/lang/String;

    move-result-object v6

    .line 1362
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_e

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_d

    goto :goto_d

    :cond_d
    move v7, v2

    goto :goto_e

    :cond_e
    :goto_d
    move v7, v1

    .line 1364
    :goto_e
    iget-object v12, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    if-eqz v7, :cond_f

    goto :goto_f

    :cond_f
    move v8, v11

    :goto_f
    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1366
    iget-object v8, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    if-eqz v7, :cond_10

    iget-object v11, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->mActivity:Landroid/app/Activity;

    sget v12, Lcom/yftech/libmusic/R$color;->colorB3FFFFFF:I

    :goto_10
    invoke-virtual {v11, v12}, Landroid/app/Activity;->getColor(I)I

    move-result v11

    goto :goto_11

    :cond_10
    iget-object v11, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->mActivity:Landroid/app/Activity;

    sget v12, Lcom/yftech/libmusic/R$color;->colorFFFFFF:I

    goto :goto_10

    :goto_11
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1367
    iget-object v8, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v7, :cond_11

    goto :goto_12

    :cond_11
    move v4, v2

    .line 1368
    :goto_12
    iput v4, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1369
    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->requestLayout()V

    .line 1370
    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    if-eqz v7, :cond_12

    sget v8, Lcom/yftech/libmusic/R$string;->no_content_play:I

    invoke-virtual {p0, v8}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_13

    :cond_12
    move-object v8, v3

    :goto_13
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1371
    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_artist:Landroid/widget/TextView;

    if-eqz v7, :cond_13

    sget v6, Lcom/yftech/libmusic/R$string;->select_music_play_phone:I

    invoke-virtual {p0, v6}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_13
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1375
    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_last:Landroid/widget/ImageView;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v6, v1

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1376
    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_next:Landroid/widget/ImageView;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v6, v1

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1377
    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_play:Landroid/widget/ImageView;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v6, v1

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1379
    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->sb_music:Landroid/widget/SeekBar;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_14

    move v6, v2

    goto :goto_14

    :cond_14
    move v6, v5

    :goto_14
    invoke-virtual {v4, v6}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1380
    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_music_progress:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_15

    move v6, v2

    goto :goto_15

    :cond_15
    move v6, v5

    :goto_15
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1381
    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_music_duration:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_16

    move v3, v2

    goto :goto_16

    :cond_16
    move v3, v5

    :goto_16
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1384
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getInstance(Landroid/content/Context;)Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getProgress()I

    move-result v3

    .line 1385
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getInstance(Landroid/content/Context;)Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getTotalDuration()I

    move-result v4

    .line 1387
    iget-object v6, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->sb_music:Landroid/widget/SeekBar;

    div-int/lit16 v7, v4, 0x3e8

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1388
    iget-object v6, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->sb_music:Landroid/widget/SeekBar;

    div-int/lit16 v7, v3, 0x3e8

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1389
    iget-object v6, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_music_duration:Landroid/widget/TextView;

    int-to-long v7, v4

    invoke-static {v7, v8}, Lcom/media/common/util/DateUtil;->getMusicTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1390
    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_music_progress:Landroid/widget/TextView;

    int-to-long v6, v3

    invoke-static {v6, v7}, Lcom/media/common/util/DateUtil;->getMusicTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1393
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    instance-of v3, v3, Lcom/yftech/libmusic/MusicMainActivity;

    if-eqz v3, :cond_17

    .line 1394
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/yftech/libmusic/MusicMainActivity;

    .line 1395
    sget v4, Lcom/yftech/libmusic/R$mipmap;->music_main_pic_cover:I

    invoke-virtual {v3, v4}, Lcom/yftech/libmusic/MusicMainActivity;->setAlbumCover(I)V

    .line 1401
    :cond_17
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getInstance(Landroid/content/Context;)Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->isPlaying()Z

    move-result v3

    .line 1402
    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_play:Landroid/widget/ImageView;

    if-eqz v3, :cond_18

    sget v6, Lcom/yftech/libmusic/R$drawable;->music_main_icon_playing:I

    goto :goto_17

    :cond_18
    sget v6, Lcom/yftech/libmusic/R$drawable;->music_main_icon_pause:I

    :goto_17
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1404
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v4

    new-instance v6, Lcom/yftech/libmusic/event/MusicPlayStatusEvent;

    invoke-direct {v6, v3}, Lcom/yftech/libmusic/event/MusicPlayStatusEvent;-><init>(Z)V

    invoke-virtual {v4, v6}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1406
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v6, Lcom/yftech/libmusic/ui/-$$Lambda$MusicPlayerFragment$jWVcBTo48BJ2EaePvEE9AZfeawo;

    invoke-direct {v6, p0, v3}, Lcom/yftech/libmusic/ui/-$$Lambda$MusicPlayerFragment$jWVcBTo48BJ2EaePvEE9AZfeawo;-><init>(Lcom/yftech/libmusic/ui/MusicPlayerFragment;Z)V

    invoke-virtual {v4, v6, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2f

    .line 1313
    :pswitch_2
    sget v0, Lcom/yftech/libmusic/R$mipmap;->audio_icon_usb2:I

    .line 1314
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object v4

    invoke-virtual {v4, v1, v1}, Lcom/yftech/car/media/music/CarMusicManager;->setCurrentUSB(BZ)V

    .line 1316
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yftech/car/media/music/CarMusicManager;->getPlayMusic()Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object v4

    if-eqz v4, :cond_1e

    .line 1318
    iget-object v8, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 1319
    iput v2, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1320
    iget-object v8, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->requestLayout()V

    .line 1321
    iget-object v8, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1322
    iget-object v8, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->mActivity:Landroid/app/Activity;

    sget v12, Lcom/yftech/libmusic/R$color;->colorFFFFFF:I

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getColor(I)I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1323
    iget-object v8, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/yftech/car/media/data/entity/MediaFile;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1a

    invoke-virtual {v4}, Lcom/yftech/car/media/data/entity/MediaFile;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_19

    goto :goto_18

    :cond_19
    invoke-virtual {v4}, Lcom/yftech/car/media/data/entity/MediaFile;->getTitle()Ljava/lang/String;

    move-result-object v11

    goto :goto_19

    :cond_1a
    :goto_18
    sget v11, Lcom/yftech/libmusic/R$string;->common_unknown:I

    invoke-virtual {p0, v11}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    :goto_19
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1324
    iget-object v8, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_artist:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/yftech/car/media/data/entity/MediaFile;->getArtist()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1c

    invoke-virtual {v4}, Lcom/yftech/car/media/data/entity/MediaFile;->getArtist()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_1b

    goto :goto_1a

    :cond_1b
    invoke-virtual {v4}, Lcom/yftech/car/media/data/entity/MediaFile;->getArtist()Ljava/lang/String;

    move-result-object v11

    goto :goto_1b

    :cond_1c
    :goto_1a
    sget v11, Lcom/yftech/libmusic/R$string;->common_unknown:I

    invoke-virtual {p0, v11}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    :goto_1b
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1326
    invoke-virtual {v4}, Lcom/yftech/car/media/data/entity/MediaFile;->getDuration()J

    move-result-wide v11

    cmp-long v6, v11, v6

    if-nez v6, :cond_1d

    .line 1328
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_play:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1329
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->sb_music:Landroid/widget/SeekBar;

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1330
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_music_progress:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1331
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_music_duration:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1c

    .line 1334
    :cond_1d
    iget-object v6, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->sb_music:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Lcom/yftech/car/media/data/entity/MediaFile;->getDuration()J

    move-result-wide v7

    long-to-float v7, v7

    div-float/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1335
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_music_duration:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/yftech/car/media/data/entity/MediaFile;->getDuration()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/media/common/util/DateUtil;->getMusicTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1339
    :goto_1c
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object v3

    check-cast v3, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter;

    invoke-virtual {v4}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter;->getThumbDataByPath(Ljava/lang/String;)V

    .line 1342
    :cond_1e
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_play:Landroid/widget/ImageView;

    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yftech/car/media/music/CarMusicManager;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_1f

    sget v4, Lcom/yftech/libmusic/R$drawable;->music_main_icon_playing:I

    goto :goto_1d

    :cond_1f
    sget v4, Lcom/yftech/libmusic/R$drawable;->music_main_icon_pause:I

    :goto_1d
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1344
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v3

    new-instance v4, Lcom/yftech/libmusic/event/MusicPlayStatusEvent;

    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yftech/car/media/music/CarMusicManager;->isPlaying()Z

    move-result v6

    invoke-direct {v4, v6}, Lcom/yftech/libmusic/event/MusicPlayStatusEvent;-><init>(Z)V

    invoke-virtual {v3, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1347
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/yftech/libmusic/ui/MusicPlayerFragment$16;

    invoke-direct {v4, p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment$16;-><init>(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)V

    invoke-virtual {v3, v4, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2f

    .line 1275
    :pswitch_3
    sget v0, Lcom/yftech/libmusic/R$mipmap;->audio_icon_usb_36_36:I

    .line 1276
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Lcom/yftech/car/media/music/CarMusicManager;->setCurrentUSB(BZ)V

    .line 1278
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yftech/car/media/music/CarMusicManager;->getPlayMusic()Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object v4

    .line 1279
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yftech/car/media/music/CarMusicManager;->getCurrentPlayDuration()J

    move-result-wide v12

    if-eqz v4, :cond_25

    .line 1281
    iget-object v8, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1282
    iget-object v8, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->mActivity:Landroid/app/Activity;

    sget v14, Lcom/yftech/libmusic/R$color;->colorFFFFFF:I

    invoke-virtual {v11, v14}, Landroid/app/Activity;->getColor(I)I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1283
    iget-object v8, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/yftech/car/media/data/entity/MediaFile;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_21

    invoke-virtual {v4}, Lcom/yftech/car/media/data/entity/MediaFile;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_20

    goto :goto_1e

    :cond_20
    invoke-virtual {v4}, Lcom/yftech/car/media/data/entity/MediaFile;->getTitle()Ljava/lang/String;

    move-result-object v11

    goto :goto_1f

    :cond_21
    :goto_1e
    sget v11, Lcom/yftech/libmusic/R$string;->common_unknown:I

    invoke-virtual {p0, v11}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    :goto_1f
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1284
    iget-object v8, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_artist:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/yftech/car/media/data/entity/MediaFile;->getArtist()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_23

    invoke-virtual {v4}, Lcom/yftech/car/media/data/entity/MediaFile;->getArtist()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_22

    goto :goto_20

    :cond_22
    invoke-virtual {v4}, Lcom/yftech/car/media/data/entity/MediaFile;->getArtist()Ljava/lang/String;

    move-result-object v11

    goto :goto_21

    :cond_23
    :goto_20
    sget v11, Lcom/yftech/libmusic/R$string;->common_unknown:I

    invoke-virtual {p0, v11}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    :goto_21
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    cmp-long v6, v12, v6

    if-nez v6, :cond_24

    .line 1287
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_play:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1288
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->sb_music:Landroid/widget/SeekBar;

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1289
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_music_progress:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1290
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_music_duration:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_22

    .line 1292
    :cond_24
    iget-object v6, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->sb_music:Landroid/widget/SeekBar;

    long-to-float v7, v12

    div-float/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1293
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_music_duration:Landroid/widget/TextView;

    invoke-static {v12, v13}, Lcom/media/common/util/DateUtil;->getMusicTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1297
    :goto_22
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object v3

    check-cast v3, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter;

    invoke-virtual {v4}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter;->getThumbDataByPath(Ljava/lang/String;)V

    .line 1300
    :cond_25
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_play:Landroid/widget/ImageView;

    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yftech/car/media/music/CarMusicManager;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_26

    sget v4, Lcom/yftech/libmusic/R$drawable;->music_main_icon_playing:I

    goto :goto_23

    :cond_26
    sget v4, Lcom/yftech/libmusic/R$drawable;->music_main_icon_pause:I

    :goto_23
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1302
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v3

    new-instance v4, Lcom/yftech/libmusic/event/MusicPlayStatusEvent;

    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yftech/car/media/music/CarMusicManager;->isPlaying()Z

    move-result v6

    invoke-direct {v4, v6}, Lcom/yftech/libmusic/event/MusicPlayStatusEvent;-><init>(Z)V

    invoke-virtual {v3, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1305
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/yftech/libmusic/ui/MusicPlayerFragment$15;

    invoke-direct {v4, p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment$15;-><init>(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)V

    invoke-virtual {v3, v4, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2f

    .line 1205
    :pswitch_4
    sget v0, Lcom/yftech/libmusic/R$mipmap;->audio_icon_bluetooth_36:I

    .line 1208
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getBluetoothMusicInfo()Landroid/media/MediaMetadata;

    move-result-object v3

    if-eqz v3, :cond_31

    const-string v6, "android.media.metadata.TITLE"

    .line 1210
    invoke-virtual {v3, v6}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.media.metadata.ARTIST"

    .line 1211
    invoke-virtual {v3, v7}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1213
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_28

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_27

    goto :goto_24

    :cond_27
    move v12, v2

    goto :goto_25

    :cond_28
    :goto_24
    move v12, v1

    .line 1214
    :goto_25
    iget-object v13, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    if-eqz v12, :cond_29

    goto :goto_26

    :cond_29
    move v8, v11

    :goto_26
    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1216
    iget-object v8, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    if-eqz v12, :cond_2a

    iget-object v11, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->mActivity:Landroid/app/Activity;

    sget v13, Lcom/yftech/libmusic/R$color;->colorB3FFFFFF:I

    :goto_27
    invoke-virtual {v11, v13}, Landroid/app/Activity;->getColor(I)I

    move-result v11

    goto :goto_28

    :cond_2a
    iget-object v11, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->mActivity:Landroid/app/Activity;

    sget v13, Lcom/yftech/libmusic/R$color;->colorFFFFFF:I

    goto :goto_27

    :goto_28
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1217
    iget-object v8, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v12, :cond_2b

    goto :goto_29

    :cond_2b
    move v4, v2

    .line 1218
    :goto_29
    iput v4, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1219
    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->requestLayout()V

    .line 1220
    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    if-eqz v12, :cond_2c

    sget v6, Lcom/yftech/libmusic/R$string;->no_content_play:I

    invoke-virtual {p0, v6}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_2c
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1221
    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_artist:Landroid/widget/TextView;

    if-eqz v12, :cond_2d

    sget v6, Lcom/yftech/libmusic/R$string;->select_play_on_bt:I

    invoke-virtual {p0, v6}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    :cond_2d
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1222
    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_music_duration:Landroid/widget/TextView;

    const-string v6, "android.media.metadata.DURATION"

    invoke-virtual {v3, v6}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/media/common/util/DateUtil;->getMusicTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1223
    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->sb_music:Landroid/widget/SeekBar;

    const-string v6, "android.media.metadata.DURATION"

    invoke-virtual {v3, v6}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-float v3, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1226
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_last:Landroid/widget/ImageView;

    xor-int/lit8 v4, v12, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1227
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_next:Landroid/widget/ImageView;

    xor-int/lit8 v4, v12, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1228
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_play:Landroid/widget/ImageView;

    xor-int/lit8 v4, v12, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1230
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->sb_music:Landroid/widget/SeekBar;

    if-nez v12, :cond_2e

    move v4, v2

    goto :goto_2a

    :cond_2e
    move v4, v5

    :goto_2a
    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1231
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_music_progress:Landroid/widget/TextView;

    if-nez v12, :cond_2f

    move v4, v2

    goto :goto_2b

    :cond_2f
    move v4, v5

    :goto_2b
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1232
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_music_duration:Landroid/widget/TextView;

    if-nez v12, :cond_30

    move v4, v2

    goto :goto_2c

    :cond_30
    move v4, v5

    :goto_2c
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1236
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    instance-of v3, v3, Lcom/yftech/libmusic/MusicMainActivity;

    if-eqz v3, :cond_32

    .line 1237
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/yftech/libmusic/MusicMainActivity;

    .line 1238
    sget v4, Lcom/yftech/libmusic/R$mipmap;->music_main_pic_cover:I

    invoke-virtual {v3, v4}, Lcom/yftech/libmusic/MusicMainActivity;->setAlbumCover(I)V

    goto :goto_2d

    .line 1242
    :cond_31
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_blue_tips:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1243
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_artist:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1244
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1245
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->sb_music:Landroid/widget/SeekBar;

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1246
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_music_progress:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1247
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_music_duration:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1248
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_last:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1249
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_next:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1250
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_play:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1254
    :cond_32
    :goto_2d
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    instance-of v3, v3, Lcom/yftech/libmusic/MusicMainActivity;

    if-eqz v3, :cond_33

    .line 1255
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/yftech/libmusic/MusicMainActivity;

    .line 1256
    sget v4, Lcom/yftech/libmusic/R$mipmap;->music_main_pic_cover:I

    invoke-virtual {v3, v4}, Lcom/yftech/libmusic/MusicMainActivity;->setAlbumCover(I)V

    .line 1260
    :cond_33
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->isPlayingBluetoothMusic()Z

    move-result v3

    .line 1261
    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_play:Landroid/widget/ImageView;

    if-nez v3, :cond_34

    sget v6, Lcom/yftech/libmusic/R$drawable;->music_main_icon_pause:I

    goto :goto_2e

    :cond_34
    sget v6, Lcom/yftech/libmusic/R$drawable;->music_main_icon_playing:I

    :goto_2e
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1264
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v4

    new-instance v6, Lcom/yftech/libmusic/event/MusicPlayStatusEvent;

    invoke-direct {v6, v3}, Lcom/yftech/libmusic/event/MusicPlayStatusEvent;-><init>(Z)V

    invoke-virtual {v4, v6}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1267
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/yftech/libmusic/ui/MusicPlayerFragment$14;

    invoke-direct {v4, p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment$14;-><init>(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)V

    invoke-virtual {v3, v4, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2f
    const/4 v3, 0x0

    if-eqz v0, :cond_35

    .line 1487
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-static {v4, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_35

    const/16 v4, 0x28

    .line 1489
    invoke-virtual {v0, v2, v2, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1490
    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_music_source:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v3, v0, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1494
    :cond_35
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    const-string v4, "MUSIC_SOURCE_OF_BLUETOOTH"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    const-string v4, "MUSIC_SOURCE_OF_CARLIFE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    const-string v4, "MUSIC_SOURCE_OF_CARPLAY"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    goto :goto_30

    .line 1506
    :cond_36
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_func_1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1507
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_func_2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1508
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_func_3:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1510
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_play_lyrics:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    invoke-virtual {v0, v2}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->setVisibility(I)V

    .line 1511
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->v_cover:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1512
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1514
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->sb_music:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1515
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->sb_music:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/yftech/libmusic/R$drawable;->seekbar_for_music_thumb:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_31

    .line 1495
    :cond_37
    :goto_30
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_func_1:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1496
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_func_2:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1497
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_func_3:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1499
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_play_lyrics:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    invoke-virtual {v0, v5}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->setVisibility(I)V

    .line 1500
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->v_cover:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1501
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1503
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->sb_music:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1504
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->sb_music:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/yftech/libmusic/R$color;->transparent:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    :goto_31
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x3b9dd690 -> :sswitch_4
        0x5b93cd32 -> :sswitch_3
        0x5b95a96a -> :sswitch_2
        0x6946e60b -> :sswitch_1
        0x6946e60c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setMusicSourceStyleWithoutPlay()V
    .locals 13

    .line 1522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMusicSourceStyleWithoutPlay:music_source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1524
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/yftech/libmusic/event/MusicSourceChangedEvent;

    iget-object v2, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/yftech/libmusic/event/MusicSourceChangedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    const-string v0, "MUSIC_SOURCE_OF_BLUETOOTH"

    .line 1526
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1528
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_blue_tips:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1529
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_artist:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1530
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1531
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->sb_music:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1532
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_music_progress:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1533
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_music_duration:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1534
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_last:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1535
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_next:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1536
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_play:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1540
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object v0

    const-string v3, "TAG_MUSIC_SOURCE_PLAYING"

    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/media/common/util/SharedPrefsUtil;->save(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1543
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "MUSIC_SOURCE_OF_USB2"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v4, "MUSIC_SOURCE_OF_USB1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :sswitch_2
    const-string v4, "MUSIC_SOURCE_OF_CARPLAY"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v4, "MUSIC_SOURCE_OF_CARLIFE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v5

    goto :goto_1

    :sswitch_4
    const-string v4, "MUSIC_SOURCE_OF_BLUETOOTH"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    const-wide/16 v3, 0x0

    const/16 v6, 0x4b

    const/high16 v7, 0x447a0000    # 1000.0f

    const/high16 v8, 0x42600000    # 56.0f

    const/high16 v9, 0x42100000    # 36.0f

    packed-switch v0, :pswitch_data_0

    move v0, v2

    goto/16 :goto_22

    .line 1757
    :pswitch_0
    sget v0, Lcom/yftech/libmusic/R$mipmap;->audio_icon_carlife_36:I

    .line 1759
    invoke-static {}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getInstance()Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getCarLifeMusicInformation()Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;

    move-result-object v3

    .line 1762
    iget-object v4, v3, Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;->title:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v3, Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;->title:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    move v4, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v4, v1

    .line 1763
    :goto_3
    iget-object v7, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    move v8, v9

    :cond_4
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1765
    iget-object v7, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    if-eqz v4, :cond_5

    iget-object v8, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->mActivity:Landroid/app/Activity;

    sget v9, Lcom/yftech/libmusic/R$color;->colorB3FFFFFF:I

    :goto_4
    invoke-virtual {v8, v9}, Landroid/app/Activity;->getColor(I)I

    move-result v8

    goto :goto_5

    :cond_5
    iget-object v8, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->mActivity:Landroid/app/Activity;

    sget v9, Lcom/yftech/libmusic/R$color;->colorFFFFFF:I

    goto :goto_4

    :goto_5
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1766
    iget-object v7, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v4, :cond_6

    goto :goto_6

    :cond_6
    move v6, v2

    .line 1767
    :goto_6
    iput v6, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1768
    iget-object v6, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->requestLayout()V

    .line 1769
    iget-object v6, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    if-eqz v4, :cond_7

    sget v7, Lcom/yftech/libmusic/R$string;->no_content_play:I

    invoke-virtual {p0, v7}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    :cond_7
    iget-object v7, v3, Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;->title:Ljava/lang/String;

    :goto_7
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1770
    iget-object v6, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_artist:Landroid/widget/TextView;

    if-eqz v4, :cond_8

    sget v3, Lcom/yftech/libmusic/R$string;->select_music_play_phone:I

    invoke-virtual {p0, v3}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :cond_8
    iget-object v3, v3, Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;->artist:Ljava/lang/String;

    :goto_8
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1772
    invoke-static {}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getInstance()Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getCarLifeMusicDuration()I

    move-result v3

    .line 1773
    invoke-static {}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getInstance()Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getCarLifeMusicProgress()I

    move-result v4

    .line 1774
    iget-object v6, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_music_duration:Landroid/widget/TextView;

    mul-int/lit16 v7, v3, 0x3e8

    int-to-long v7, v7

    invoke-static {v7, v8}, Lcom/media/common/util/DateUtil;->getMusicTime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1775
    iget-object v6, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_music_progress:Landroid/widget/TextView;

    mul-int/lit16 v7, v4, 0x3e8

    int-to-long v7, v7

    invoke-static {v7, v8}, Lcom/media/common/util/DateUtil;->getMusicTime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez v3, :cond_9

    .line 1778
    iget-object v6, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->sb_music:Landroid/widget/SeekBar;

    invoke-virtual {v6, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1779
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->sb_music:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_9

    .line 1786
    :cond_9
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->sb_music:Landroid/widget/SeekBar;

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1787
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->sb_music:Landroid/widget/SeekBar;

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1795
    :goto_9
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    instance-of v3, v3, Lcom/yftech/libmusic/MusicMainActivity;

    if-eqz v3, :cond_b

    .line 1796
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/yftech/libmusic/MusicMainActivity;

    .line 1797
    sget v4, Lcom/yftech/libmusic/R$mipmap;->music_main_pic_cover:I

    invoke-virtual {v3, v4}, Lcom/yftech/libmusic/MusicMainActivity;->setAlbumCover(I)V

    .line 1800
    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->musicLyricFragment:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->musicLyricFragment:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-virtual {v4}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1802
    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->musicLyricFragment:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-virtual {v4}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->getFrontFragment()Landroidx/fragment/app/Fragment;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yftech/libmusic/MusicMainActivity;->switchContent(Landroidx/fragment/app/Fragment;)V

    .line 1805
    :cond_a
    invoke-virtual {v3, v1}, Lcom/yftech/libmusic/MusicMainActivity;->setSoundEffectVisible(Z)V

    .line 1809
    :cond_b
    invoke-static {}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getInstance()Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getCarLifeMusicPlayStatus()I

    move-result v3

    if-ne v3, v1, :cond_c

    move v3, v1

    goto :goto_a

    :cond_c
    move v3, v2

    .line 1810
    :goto_a
    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_play:Landroid/widget/ImageView;

    if-nez v3, :cond_d

    sget v6, Lcom/yftech/libmusic/R$drawable;->music_main_icon_pause:I

    goto :goto_b

    :cond_d
    sget v6, Lcom/yftech/libmusic/R$drawable;->music_main_icon_playing:I

    :goto_b
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1813
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v4

    new-instance v6, Lcom/yftech/libmusic/event/MusicPlayStatusEvent;

    invoke-direct {v6, v3}, Lcom/yftech/libmusic/event/MusicPlayStatusEvent;-><init>(Z)V

    invoke-virtual {v4, v6}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_22

    .line 1701
    :pswitch_1
    sget v0, Lcom/yftech/libmusic/R$mipmap;->audio_icon_carplay_36:I

    .line 1703
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getInstance(Landroid/content/Context;)Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 1704
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getInstance(Landroid/content/Context;)Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getArtist()Ljava/lang/String;

    move-result-object v4

    .line 1705
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_f

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_e

    goto :goto_c

    :cond_e
    move v7, v2

    goto :goto_d

    :cond_f
    :goto_c
    move v7, v1

    .line 1707
    :goto_d
    iget-object v10, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    if-eqz v7, :cond_10

    move v8, v9

    :cond_10
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1709
    iget-object v8, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    if-eqz v7, :cond_11

    iget-object v9, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->mActivity:Landroid/app/Activity;

    sget v10, Lcom/yftech/libmusic/R$color;->colorB3FFFFFF:I

    :goto_e
    invoke-virtual {v9, v10}, Landroid/app/Activity;->getColor(I)I

    move-result v9

    goto :goto_f

    :cond_11
    iget-object v9, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->mActivity:Landroid/app/Activity;

    sget v10, Lcom/yftech/libmusic/R$color;->colorFFFFFF:I

    goto :goto_e

    :goto_f
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1710
    iget-object v8, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v7, :cond_12

    goto :goto_10

    :cond_12
    move v6, v2

    .line 1711
    :goto_10
    iput v6, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1712
    iget-object v6, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->requestLayout()V

    .line 1713
    iget-object v6, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    if-eqz v7, :cond_13

    sget v8, Lcom/yftech/libmusic/R$string;->no_content_play:I

    invoke-virtual {p0, v8}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_11

    :cond_13
    move-object v8, v3

    :goto_11
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1714
    iget-object v6, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_artist:Landroid/widget/TextView;

    if-eqz v7, :cond_14

    sget v4, Lcom/yftech/libmusic/R$string;->select_music_play_phone:I

    invoke-virtual {p0, v4}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_14
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1717
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v3, v1

    .line 1718
    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_last:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1719
    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_next:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1720
    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_play:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1721
    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->sb_music:Landroid/widget/SeekBar;

    if-eqz v3, :cond_15

    move v6, v2

    goto :goto_12

    :cond_15
    move v6, v5

    :goto_12
    invoke-virtual {v4, v6}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1722
    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_music_progress:Landroid/widget/TextView;

    if-eqz v3, :cond_16

    move v6, v2

    goto :goto_13

    :cond_16
    move v6, v5

    :goto_13
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1723
    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_music_duration:Landroid/widget/TextView;

    if-eqz v3, :cond_17

    move v3, v2

    goto :goto_14

    :cond_17
    move v3, v5

    :goto_14
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1726
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getInstance(Landroid/content/Context;)Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getProgress()I

    move-result v3

    .line 1727
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getInstance(Landroid/content/Context;)Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getTotalDuration()I

    move-result v4

    .line 1729
    iget-object v6, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->sb_music:Landroid/widget/SeekBar;

    div-int/lit16 v7, v4, 0x3e8

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1730
    iget-object v6, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->sb_music:Landroid/widget/SeekBar;

    div-int/lit16 v7, v3, 0x3e8

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1731
    iget-object v6, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_music_duration:Landroid/widget/TextView;

    int-to-long v7, v4

    invoke-static {v7, v8}, Lcom/media/common/util/DateUtil;->getMusicTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1732
    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_music_progress:Landroid/widget/TextView;

    int-to-long v6, v3

    invoke-static {v6, v7}, Lcom/media/common/util/DateUtil;->getMusicTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1735
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    instance-of v3, v3, Lcom/yftech/libmusic/MusicMainActivity;

    if-eqz v3, :cond_19

    .line 1736
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/yftech/libmusic/MusicMainActivity;

    .line 1737
    sget v4, Lcom/yftech/libmusic/R$mipmap;->music_main_pic_cover:I

    invoke-virtual {v3, v4}, Lcom/yftech/libmusic/MusicMainActivity;->setAlbumCover(I)V

    .line 1740
    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->musicLyricFragment:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    if-eqz v4, :cond_18

    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->musicLyricFragment:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-virtual {v4}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1742
    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->musicLyricFragment:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-virtual {v4}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->getFrontFragment()Landroidx/fragment/app/Fragment;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yftech/libmusic/MusicMainActivity;->switchContent(Landroidx/fragment/app/Fragment;)V

    .line 1745
    :cond_18
    invoke-virtual {v3, v1}, Lcom/yftech/libmusic/MusicMainActivity;->setSoundEffectVisible(Z)V

    .line 1749
    :cond_19
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getInstance(Landroid/content/Context;)Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->isPlaying()Z

    move-result v3

    .line 1750
    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_play:Landroid/widget/ImageView;

    if-nez v3, :cond_1a

    sget v6, Lcom/yftech/libmusic/R$drawable;->music_main_icon_pause:I

    goto :goto_15

    :cond_1a
    sget v6, Lcom/yftech/libmusic/R$drawable;->music_main_icon_playing:I

    :goto_15
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1753
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v4

    new-instance v6, Lcom/yftech/libmusic/event/MusicPlayStatusEvent;

    invoke-direct {v6, v3}, Lcom/yftech/libmusic/event/MusicPlayStatusEvent;-><init>(Z)V

    invoke-virtual {v4, v6}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_22

    .line 1657
    :pswitch_2
    sget v0, Lcom/yftech/libmusic/R$mipmap;->audio_icon_usb2:I

    const-string v6, ""

    const-string v8, ""

    .line 1660
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/yftech/car/media/music/CarMusicManager;->getPlayMusic()Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object v9

    if-eqz v9, :cond_1b

    .line 1661
    invoke-virtual {v9}, Lcom/yftech/car/media/data/entity/MediaFile;->getDuration()J

    move-result-wide v10

    cmp-long v3, v10, v3

    if-nez v3, :cond_1b

    .line 1664
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_play:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1665
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->sb_music:Landroid/widget/SeekBar;

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1666
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_music_progress:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1667
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_music_duration:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1670
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object v3

    check-cast v3, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter;

    invoke-virtual {v9}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter;->getThumbDataByPath(Ljava/lang/String;)V

    :cond_1b
    if-eqz v9, :cond_1c

    .line 1673
    invoke-virtual {v9}, Lcom/yftech/car/media/data/entity/MediaFile;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 1674
    invoke-virtual {v9}, Lcom/yftech/car/media/data/entity/MediaFile;->getArtist()Ljava/lang/String;

    move-result-object v8

    .line 1676
    :cond_1c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USB2 title = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "   artist = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    .line 1677
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1678
    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1679
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->requestLayout()V

    .line 1680
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1d

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1e

    :cond_1d
    sget v4, Lcom/yftech/libmusic/R$string;->common_unknown:I

    invoke-virtual {p0, v4}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_1e
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1681
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_artist:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1f

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_20

    :cond_1f
    sget v4, Lcom/yftech/libmusic/R$string;->common_unknown:I

    invoke-virtual {p0, v4}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_20
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1682
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->sb_music:Landroid/widget/SeekBar;

    invoke-virtual {v9}, Lcom/yftech/car/media/data/entity/MediaFile;->getDuration()J

    move-result-wide v10

    long-to-float v4, v10

    div-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1683
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_music_duration:Landroid/widget/TextView;

    invoke-virtual {v9}, Lcom/yftech/car/media/data/entity/MediaFile;->getDuration()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/media/common/util/DateUtil;->getMusicTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1686
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    instance-of v3, v3, Lcom/yftech/libmusic/MusicMainActivity;

    if-eqz v3, :cond_21

    .line 1687
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/yftech/libmusic/MusicMainActivity;

    .line 1689
    invoke-virtual {v3, v1}, Lcom/yftech/libmusic/MusicMainActivity;->setSoundEffectVisible(Z)V

    .line 1693
    :cond_21
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/car/media/music/CarMusicManager;->isPlaying()Z

    move-result v3

    .line 1694
    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_play:Landroid/widget/ImageView;

    if-nez v3, :cond_22

    sget v6, Lcom/yftech/libmusic/R$drawable;->music_main_icon_pause:I

    goto :goto_16

    :cond_22
    sget v6, Lcom/yftech/libmusic/R$drawable;->music_main_icon_playing:I

    :goto_16
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1696
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v4

    new-instance v6, Lcom/yftech/libmusic/event/MusicPlayStatusEvent;

    invoke-direct {v6, v3}, Lcom/yftech/libmusic/event/MusicPlayStatusEvent;-><init>(Z)V

    invoke-virtual {v4, v6}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_22

    .line 1612
    :pswitch_3
    sget v0, Lcom/yftech/libmusic/R$mipmap;->audio_icon_usb_36_36:I

    const-string v6, ""

    const-string v8, ""

    .line 1615
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/yftech/car/media/music/CarMusicManager;->getPlayMusic()Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object v9

    .line 1616
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/yftech/car/media/music/CarMusicManager;->getCurrentPlayDuration()J

    move-result-wide v10

    if-eqz v9, :cond_23

    cmp-long v3, v10, v3

    if-nez v3, :cond_23

    .line 1620
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_play:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1621
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->sb_music:Landroid/widget/SeekBar;

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1622
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_music_progress:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1623
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_music_duration:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1626
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object v3

    check-cast v3, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter;

    invoke-virtual {v9}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter;->getThumbDataByPath(Ljava/lang/String;)V

    :cond_23
    if-eqz v9, :cond_24

    .line 1629
    invoke-virtual {v9}, Lcom/yftech/car/media/data/entity/MediaFile;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 1630
    invoke-virtual {v9}, Lcom/yftech/car/media/data/entity/MediaFile;->getArtist()Ljava/lang/String;

    move-result-object v8

    .line 1633
    :cond_24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USB1 title = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "   artist = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    .line 1634
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1635
    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1636
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->requestLayout()V

    .line 1637
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_25

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_26

    :cond_25
    sget v4, Lcom/yftech/libmusic/R$string;->common_unknown:I

    invoke-virtual {p0, v4}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_26
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1638
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_artist:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_27

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_28

    :cond_27
    sget v4, Lcom/yftech/libmusic/R$string;->common_unknown:I

    invoke-virtual {p0, v4}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_28
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1639
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->sb_music:Landroid/widget/SeekBar;

    long-to-float v4, v10

    div-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1640
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_music_duration:Landroid/widget/TextView;

    invoke-static {v10, v11}, Lcom/media/common/util/DateUtil;->getMusicTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1641
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->sb_music:Landroid/widget/SeekBar;

    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yftech/car/media/music/CarMusicManager;->getCurrentPlayProgress()I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1643
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    instance-of v3, v3, Lcom/yftech/libmusic/MusicMainActivity;

    if-eqz v3, :cond_29

    .line 1644
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/yftech/libmusic/MusicMainActivity;

    .line 1646
    invoke-virtual {v3, v1}, Lcom/yftech/libmusic/MusicMainActivity;->setSoundEffectVisible(Z)V

    .line 1650
    :cond_29
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/car/media/music/CarMusicManager;->isPlaying()Z

    move-result v3

    .line 1651
    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_play:Landroid/widget/ImageView;

    if-nez v3, :cond_2a

    sget v6, Lcom/yftech/libmusic/R$drawable;->music_main_icon_pause:I

    goto :goto_17

    :cond_2a
    sget v6, Lcom/yftech/libmusic/R$drawable;->music_main_icon_playing:I

    :goto_17
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1653
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v4

    new-instance v6, Lcom/yftech/libmusic/event/MusicPlayStatusEvent;

    invoke-direct {v6, v3}, Lcom/yftech/libmusic/event/MusicPlayStatusEvent;-><init>(Z)V

    invoke-virtual {v4, v6}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_22

    .line 1545
    :pswitch_4
    sget v0, Lcom/yftech/libmusic/R$mipmap;->audio_icon_bluetooth_36:I

    .line 1548
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getBluetoothMusicInfo()Landroid/media/MediaMetadata;

    move-result-object v3

    if-eqz v3, :cond_35

    const-string v4, "android.media.metadata.TITLE"

    .line 1550
    invoke-virtual {v3, v4}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v10, "android.media.metadata.ARTIST"

    .line 1551
    invoke-virtual {v3, v10}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1553
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setMusicSourceStyleWithoutPlay: MUSIC_SOURCE_OF_BLUETOOTH title=="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ",artist=="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1555
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2c

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_2b

    goto :goto_18

    :cond_2b
    move v11, v2

    goto :goto_19

    :cond_2c
    :goto_18
    move v11, v1

    .line 1556
    :goto_19
    iget-object v12, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    if-eqz v11, :cond_2d

    move v8, v9

    :cond_2d
    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1558
    iget-object v8, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    if-eqz v11, :cond_2e

    iget-object v9, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->mActivity:Landroid/app/Activity;

    sget v12, Lcom/yftech/libmusic/R$color;->colorB3FFFFFF:I

    :goto_1a
    invoke-virtual {v9, v12}, Landroid/app/Activity;->getColor(I)I

    move-result v9

    goto :goto_1b

    :cond_2e
    iget-object v9, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->mActivity:Landroid/app/Activity;

    sget v12, Lcom/yftech/libmusic/R$color;->colorFFFFFF:I

    goto :goto_1a

    :goto_1b
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1559
    iget-object v8, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v11, :cond_2f

    goto :goto_1c

    :cond_2f
    move v6, v2

    .line 1560
    :goto_1c
    iput v6, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1561
    iget-object v6, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->requestLayout()V

    .line 1562
    iget-object v6, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    if-eqz v11, :cond_30

    sget v4, Lcom/yftech/libmusic/R$string;->no_content_play:I

    invoke-virtual {p0, v4}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_30
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1563
    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_artist:Landroid/widget/TextView;

    if-eqz v11, :cond_31

    sget v6, Lcom/yftech/libmusic/R$string;->select_play_on_bt:I

    invoke-virtual {p0, v6}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    :cond_31
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1564
    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_music_duration:Landroid/widget/TextView;

    const-string v6, "android.media.metadata.DURATION"

    invoke-virtual {v3, v6}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/media/common/util/DateUtil;->getMusicTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1565
    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->sb_music:Landroid/widget/SeekBar;

    const-string v6, "android.media.metadata.DURATION"

    invoke-virtual {v3, v6}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    long-to-float v3, v8

    div-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1568
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_last:Landroid/widget/ImageView;

    xor-int/lit8 v4, v11, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1569
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_next:Landroid/widget/ImageView;

    xor-int/lit8 v4, v11, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1570
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_play:Landroid/widget/ImageView;

    xor-int/lit8 v4, v11, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1572
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->sb_music:Landroid/widget/SeekBar;

    if-nez v11, :cond_32

    move v4, v2

    goto :goto_1d

    :cond_32
    move v4, v5

    :goto_1d
    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1573
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_music_progress:Landroid/widget/TextView;

    if-nez v11, :cond_33

    move v4, v2

    goto :goto_1e

    :cond_33
    move v4, v5

    :goto_1e
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1574
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_music_duration:Landroid/widget/TextView;

    if-nez v11, :cond_34

    move v4, v2

    goto :goto_1f

    :cond_34
    move v4, v5

    :goto_1f
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_20

    .line 1578
    :cond_35
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_blue_tips:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1579
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_artist:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1580
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1581
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->sb_music:Landroid/widget/SeekBar;

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1582
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_music_progress:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1583
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_music_duration:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1584
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_last:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1585
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_next:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1586
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_play:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1590
    :goto_20
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    instance-of v3, v3, Lcom/yftech/libmusic/MusicMainActivity;

    if-eqz v3, :cond_37

    .line 1591
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/yftech/libmusic/MusicMainActivity;

    .line 1592
    sget v4, Lcom/yftech/libmusic/R$mipmap;->music_main_pic_cover:I

    invoke-virtual {v3, v4}, Lcom/yftech/libmusic/MusicMainActivity;->setAlbumCover(I)V

    .line 1595
    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->musicLyricFragment:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    if-eqz v4, :cond_36

    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->musicLyricFragment:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-virtual {v4}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1597
    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->musicLyricFragment:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-virtual {v4}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->getFrontFragment()Landroidx/fragment/app/Fragment;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yftech/libmusic/MusicMainActivity;->switchContent(Landroidx/fragment/app/Fragment;)V

    .line 1600
    :cond_36
    invoke-virtual {v3, v1}, Lcom/yftech/libmusic/MusicMainActivity;->setSoundEffectVisible(Z)V

    .line 1604
    :cond_37
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->isPlayingBluetoothMusic()Z

    move-result v3

    .line 1605
    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_play:Landroid/widget/ImageView;

    if-nez v3, :cond_38

    sget v6, Lcom/yftech/libmusic/R$drawable;->music_main_icon_pause:I

    goto :goto_21

    :cond_38
    sget v6, Lcom/yftech/libmusic/R$drawable;->music_main_icon_playing:I

    :goto_21
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1608
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v4

    new-instance v6, Lcom/yftech/libmusic/event/MusicPlayStatusEvent;

    invoke-direct {v6, v3}, Lcom/yftech/libmusic/event/MusicPlayStatusEvent;-><init>(Z)V

    invoke-virtual {v4, v6}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :goto_22
    const/4 v3, 0x0

    if-eqz v0, :cond_39

    .line 1819
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-static {v4, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_39

    const/16 v4, 0x28

    .line 1821
    invoke-virtual {v0, v2, v2, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1822
    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_music_source:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v3, v0, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1826
    :cond_39
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    const-string v4, "MUSIC_SOURCE_OF_BLUETOOTH"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    const-string v4, "MUSIC_SOURCE_OF_CARLIFE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    const-string v4, "MUSIC_SOURCE_OF_CARPLAY"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    goto :goto_23

    .line 1838
    :cond_3a
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_func_1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1839
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_func_2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1840
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_func_3:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1842
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_play_lyrics:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    invoke-virtual {v0, v2}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->setVisibility(I)V

    .line 1843
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->v_cover:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1844
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1846
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->sb_music:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1847
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->sb_music:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/yftech/libmusic/R$drawable;->seekbar_for_music_thumb:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_24

    .line 1827
    :cond_3b
    :goto_23
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_func_1:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1828
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_func_2:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1829
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_func_3:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1831
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_play_lyrics:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    invoke-virtual {v0, v5}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->setVisibility(I)V

    .line 1832
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->v_cover:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1833
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1835
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->sb_music:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1836
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->sb_music:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/yftech/libmusic/R$color;->transparent:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    :goto_24
    return-void

    :sswitch_data_0
    .sparse-switch
        0x3b9dd690 -> :sswitch_4
        0x5b93cd32 -> :sswitch_3
        0x5b95a96a -> :sswitch_2
        0x6946e60b -> :sswitch_1
        0x6946e60c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected createPresenter()Lcom/yftech/libmusic/presenter/MusicPlayerPresenter;
    .locals 1

    .line 199
    new-instance v0, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter;

    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method protected bridge synthetic createPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;
    .locals 0

    .line 92
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->createPresenter()Lcom/yftech/libmusic/presenter/MusicPlayerPresenter;

    move-result-object p0

    return-object p0
.end method

.method public displayMusicFiles(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public displayMusicLyricPath(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/libmusic/bean/LyricObject;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public displayThumbDataByPath(Ljava/lang/String;[B)V
    .locals 1

    .line 2261
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/yftech/libmusic/MusicMainActivity;

    if-eqz v0, :cond_0

    .line 2262
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/yftech/libmusic/MusicMainActivity;

    .line 2263
    invoke-virtual {p0, p1, p2}, Lcom/yftech/libmusic/MusicMainActivity;->setAlbumCover(Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method

.method public getMusic_source()Ljava/lang/String;
    .locals 0

    .line 2299
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    return-object p0
.end method

.method protected initListener()V
    .locals 3

    .line 223
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 226
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->callback:Lcom/yftech/car/media/music/CarMusicManager$CarMusicControlCallback;

    invoke-static {v0}, Lcom/yftech/car/media/music/CarMusicManager;->registerMusicControlCallback(Lcom/yftech/car/media/music/CarMusicManager$CarMusicControlCallback;)V

    .line 229
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->musicCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->registerBluetoothMusicCallback(Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;Landroid/os/Handler;)V

    .line 230
    invoke-static {}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getInstance()Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->carLifeDataChangedCallback:Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->registerMusicControlCallback(Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback;)V

    .line 231
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getInstance(Landroid/content/Context;)Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->carPlayMusicListener:Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;

    invoke-virtual {v0, v1}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->registerCarPlayMusicListener(Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;)V

    .line 232
    invoke-static {}, Lcom/yftech/car/audio/CarAudioManager;->getInstance()Lcom/yftech/car/audio/CarAudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->carAudioCallback:Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;

    invoke-virtual {v0, v1, v2}, Lcom/yftech/car/audio/CarAudioManager;->registerCarAudioCallback(Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;Landroid/os/Handler;)V

    .line 235
    invoke-direct {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->registerTestReceiver()V

    .line 238
    invoke-direct {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->registerHiCarReceiver()V

    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1046
    sget v0, Lcom/yftech/libmusic/R$id;->tv_music_progress:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_music_progress:Landroid/widget/TextView;

    .line 1047
    sget v0, Lcom/yftech/libmusic/R$id;->tv_music_duration:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_music_duration:Landroid/widget/TextView;

    .line 1050
    sget v0, Lcom/yftech/libmusic/R$id;->tv_seekBar_progress:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_seekBar_progress:Landroid/widget/TextView;

    .line 1051
    sget v0, Lcom/yftech/libmusic/R$id;->tv_seekBar_max:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_seekBar_max:Landroid/widget/TextView;

    .line 1052
    sget v0, Lcom/yftech/libmusic/R$id;->progress_index:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->progress_index:Landroid/widget/FrameLayout;

    .line 1054
    sget v0, Lcom/yftech/libmusic/R$id;->tv_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    .line 1055
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1056
    sget v0, Lcom/yftech/libmusic/R$id;->tv_artist:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_artist:Landroid/widget/TextView;

    .line 1057
    sget v0, Lcom/yftech/libmusic/R$id;->tv_blue_tips:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_blue_tips:Landroid/widget/TextView;

    .line 1060
    sget v0, Lcom/yftech/libmusic/R$id;->iv_music_play:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_play:Landroid/widget/ImageView;

    .line 1061
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_play:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1062
    sget v0, Lcom/yftech/libmusic/R$id;->iv_last:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_last:Landroid/widget/ImageView;

    .line 1063
    sget v0, Lcom/yftech/libmusic/R$id;->iv_next:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_next:Landroid/widget/ImageView;

    .line 1064
    sget v0, Lcom/yftech/libmusic/R$id;->iv_func_1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_func_1:Landroid/widget/ImageView;

    .line 1065
    sget v0, Lcom/yftech/libmusic/R$id;->iv_func_2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_func_2:Landroid/widget/ImageView;

    .line 1066
    sget v0, Lcom/yftech/libmusic/R$id;->iv_func_3:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_func_3:Landroid/widget/ImageView;

    .line 1067
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_last:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1068
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_next:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1069
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_func_1:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1070
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_func_2:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1071
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_func_3:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1073
    sget v0, Lcom/yftech/libmusic/R$id;->music_play_lyrics:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_play_lyrics:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    .line 1074
    sget v0, Lcom/yftech/libmusic/R$id;->v_cover:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->v_cover:Landroid/view/View;

    .line 1076
    sget v0, Lcom/yftech/libmusic/R$id;->sb_music:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->sb_music:Landroid/widget/SeekBar;

    .line 1077
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->sb_music:Landroid/widget/SeekBar;

    new-instance v1, Lcom/yftech/libmusic/ui/MusicPlayerFragment$12;

    invoke-direct {v1, p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment$12;-><init>(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1088
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->sb_music:Landroid/widget/SeekBar;

    new-instance v1, Lcom/yftech/libmusic/ui/MusicPlayerFragment$13;

    invoke-direct {v1, p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment$13;-><init>(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1162
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/music/CarMusicManager;->getPlayMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1171
    :pswitch_0
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_func_2:Landroid/widget/ImageView;

    sget v1, Lcom/yftech/libmusic/R$drawable;->music_main_icon_random:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1168
    :pswitch_1
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_func_2:Landroid/widget/ImageView;

    sget v1, Lcom/yftech/libmusic/R$drawable;->music_main_icon_single:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1165
    :pswitch_2
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->iv_func_2:Landroid/widget/ImageView;

    sget v1, Lcom/yftech/libmusic/R$drawable;->music_main_icon_loop:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1176
    :goto_0
    sget v0, Lcom/yftech/libmusic/R$id;->tv_music_source:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_music_source:Landroid/widget/TextView;

    .line 1177
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_music_source:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1178
    invoke-direct {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->setMusicSourceStyle()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onBindView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1039
    sget p0, Lcom/yftech/libmusic/R$layout;->fragment_music_player:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onBluetoothStatusChange(Lcom/yftech/libmusic/event/BluetoothStateEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothStatusChange:event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/libmusic/event/BluetoothStateEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", music_source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 1931
    iget p1, p1, Lcom/yftech/libmusic/event/BluetoothStateEvent;->state:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const-string p1, "MUSIC_SOURCE_OF_BLUETOOTH"

    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1933
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 1934
    instance-of v0, p1, Lcom/yftech/libmusic/MusicMainActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1935
    check-cast p1, Lcom/yftech/libmusic/MusicMainActivity;

    .line 1939
    invoke-virtual {p1, v1}, Lcom/yftech/libmusic/MusicMainActivity;->setSoundEffectVisible(Z)V

    .line 1941
    invoke-virtual {p1}, Lcom/yftech/libmusic/MusicMainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v2, Lcom/yftech/libmusic/ui/MusicMainFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1943
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicMainFragment;->newInstance(Ljava/lang/String;)Lcom/yftech/libmusic/ui/MusicMainFragment;

    move-result-object v0

    .line 1944
    :cond_0
    invoke-virtual {p1}, Lcom/yftech/libmusic/MusicMainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1945
    iput-object v0, p1, Lcom/yftech/libmusic/MusicMainActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    .line 1947
    sget v0, Lcom/yftech/libmusic/R$mipmap;->music_main_pic_cover:I

    invoke-virtual {p1, v0}, Lcom/yftech/libmusic/MusicMainActivity;->setAlbumCover(I)V

    .line 1951
    :cond_1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/yftech/libmusic/event/MusicPlayStatusEvent;

    invoke-direct {v0, v1}, Lcom/yftech/libmusic/event/MusicPlayStatusEvent;-><init>(Z)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1954
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object p1

    const-string v0, "TAG_MUSIC_SOURCE_PLAYING"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/media/common/util/SharedPrefsUtil;->save(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1957
    invoke-direct {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->closeMusicSoundEffectsDialog()V

    :cond_2
    return-void
.end method

.method public onCarPlayStatusChange(Lcom/yftech/libmusic/event/CarPlayStateEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "onCarPlayStatusChange:receiveBroadCast"

    .line 1995
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 1998
    iget p1, p1, Lcom/yftech/libmusic/event/CarPlayStateEvent;->status:I

    if-nez p1, :cond_2

    const-string p1, "MUSIC_SOURCE_OF_CARPLAY"

    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2000
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 2001
    instance-of v0, p1, Lcom/yftech/libmusic/MusicMainActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2002
    check-cast p1, Lcom/yftech/libmusic/MusicMainActivity;

    .line 2005
    invoke-virtual {p1}, Lcom/yftech/libmusic/MusicMainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 2006
    iput-object p0, p1, Lcom/yftech/libmusic/MusicMainActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    .line 2007
    invoke-virtual {p1, v1}, Lcom/yftech/libmusic/MusicMainActivity;->setSoundEffectVisible(Z)V

    .line 2009
    invoke-virtual {p1}, Lcom/yftech/libmusic/MusicMainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v2, Lcom/yftech/libmusic/ui/MusicMainFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2011
    invoke-virtual {p1, v0}, Lcom/yftech/libmusic/MusicMainActivity;->switchContent(Landroidx/fragment/app/Fragment;)V

    .line 2013
    :cond_0
    sget v0, Lcom/yftech/libmusic/R$mipmap;->music_main_pic_cover:I

    invoke-virtual {p1, v0}, Lcom/yftech/libmusic/MusicMainActivity;->setAlbumCover(I)V

    .line 2017
    :cond_1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/yftech/libmusic/event/MusicPlayStatusEvent;

    invoke-direct {v0, v1}, Lcom/yftech/libmusic/event/MusicPlayStatusEvent;-><init>(Z)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 2020
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object p1

    const-string v0, "TAG_MUSIC_SOURCE_PLAYING"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/media/common/util/SharedPrefsUtil;->save(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2022
    invoke-direct {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->closeMusicSoundEffectsDialog()V

    :cond_2
    return-void
.end method

.method public onCarlifeStatusChange(Lcom/yftech/libmusic/event/CarLifeStatusEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "onCarlifeStatusChange:receiveBroadCast"

    .line 1963
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 1966
    iget-boolean p1, p1, Lcom/yftech/libmusic/event/CarLifeStatusEvent;->mIsCarLifeConnect:Z

    if-nez p1, :cond_3

    const-string p1, "MUSIC_SOURCE_OF_CARLIFE"

    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1967
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 1968
    instance-of v0, p1, Lcom/yftech/libmusic/MusicMainActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1969
    check-cast p1, Lcom/yftech/libmusic/MusicMainActivity;

    .line 1971
    invoke-virtual {p1}, Lcom/yftech/libmusic/MusicMainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v2, Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1973
    iput-object v0, p1, Lcom/yftech/libmusic/MusicMainActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    .line 1975
    :cond_0
    invoke-virtual {p1}, Lcom/yftech/libmusic/MusicMainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v2, Lcom/yftech/libmusic/ui/MusicMainFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1977
    invoke-virtual {p1, v0}, Lcom/yftech/libmusic/MusicMainActivity;->switchContent(Landroidx/fragment/app/Fragment;)V

    .line 1979
    :cond_1
    invoke-virtual {p1, v1}, Lcom/yftech/libmusic/MusicMainActivity;->setSoundEffectVisible(Z)V

    .line 1980
    sget v0, Lcom/yftech/libmusic/R$mipmap;->music_main_pic_cover:I

    invoke-virtual {p1, v0}, Lcom/yftech/libmusic/MusicMainActivity;->setAlbumCover(I)V

    .line 1984
    :cond_2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/yftech/libmusic/event/MusicPlayStatusEvent;

    invoke-direct {v0, v1}, Lcom/yftech/libmusic/event/MusicPlayStatusEvent;-><init>(Z)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1987
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object p1

    const-string v0, "TAG_MUSIC_SOURCE_PLAYING"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/media/common/util/SharedPrefsUtil;->save(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1989
    invoke-direct {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->closeMusicSoundEffectsDialog()V

    :cond_3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 2047
    invoke-static {}, Lcom/media/common/util/SystemUtil;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2050
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libmusic/R$id;->tv_music_source:I

    if-ne v0, v1, :cond_1

    .line 2052
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/yftech/libmusic/event/MusicSourceDialogOpenEvent;

    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/event/MusicSourceDialogOpenEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2055
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libmusic/R$id;->iv_music_play:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ne v0, v1, :cond_a

    const-string p1, "MUSIC_SOURCE_OF_USB1"

    .line 2057
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "MUSIC_SOURCE_OF_USB2"

    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const-string p1, "MUSIC_SOURCE_OF_BLUETOOTH"

    .line 2077
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2078
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->isPlayingBluetoothMusic()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 2081
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->pauseBluetoothMusic()Z

    goto/16 :goto_4

    .line 2083
    :cond_3
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->startBluetoothMusic(Z)Z

    goto/16 :goto_4

    :cond_4
    const-string p1, "MUSIC_SOURCE_OF_CARLIFE"

    .line 2084
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2086
    invoke-static {}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getInstance()Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getCarLifeMusicPlayStatus()I

    move-result p0

    if-ne p0, v5, :cond_5

    move v2, v5

    .line 2087
    :cond_5
    invoke-static {}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getInstance()Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    move-result-object p0

    xor-int/lit8 p1, v2, 0x1

    invoke-virtual {p0, p1}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->setMusicControl(I)V

    goto/16 :goto_4

    :cond_6
    const-string p1, "MUSIC_SOURCE_OF_CARPLAY"

    .line 2088
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 2090
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getInstance(Landroid/content/Context;)Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 2093
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getInstance(Landroid/content/Context;)Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->pause()V

    goto/16 :goto_4

    .line 2095
    :cond_7
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getInstance(Landroid/content/Context;)Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->play()V

    goto/16 :goto_4

    .line 2059
    :cond_8
    :goto_0
    invoke-static {}, Lcom/yftech/car/audio/CarAudioManager;->getInstance()Lcom/yftech/car/audio/CarAudioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/audio/CarAudioManager;->getCurrentMediaSource()Ljava/lang/String;

    move-result-object p0

    .line 2060
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1d

    const-string p1, ","

    .line 2061
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2062
    array-length p1, p0

    if-lt p1, v4, :cond_1d

    .line 2063
    aget-object p0, p0, v3

    invoke-static {p0}, Lcom/media/common/util/AudioSettingUtil;->getCurrentSourceByClientId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "MUSIC_SOURCE_OF_USB1"

    .line 2066
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    const-string p1, "MUSIC_SOURCE_OF_USB2"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    .line 2068
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/media/music/CarMusicManager;->play()V

    goto/16 :goto_4

    .line 2071
    :cond_9
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/media/music/CarMusicManager;->switchPlayPause()V

    goto/16 :goto_4

    .line 2099
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libmusic/R$id;->iv_last:I

    if-ne v0, v1, :cond_f

    const-string p1, "MUSIC_SOURCE_OF_USB1"

    .line 2101
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    const-string p1, "MUSIC_SOURCE_OF_USB2"

    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_1

    :cond_b
    const-string p1, "MUSIC_SOURCE_OF_BLUETOOTH"

    .line 2119
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 2120
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->previousBluetoothMusic()Z

    goto/16 :goto_4

    :cond_c
    const-string p1, "MUSIC_SOURCE_OF_CARLIFE"

    .line 2121
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 2122
    invoke-static {}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getInstance()Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->setMusicControl(I)V

    goto/16 :goto_4

    :cond_d
    const-string p1, "MUSIC_SOURCE_OF_CARPLAY"

    .line 2123
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 2124
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getInstance(Landroid/content/Context;)Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->previous()I

    goto/16 :goto_4

    .line 2115
    :cond_e
    :goto_1
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/media/music/CarMusicManager;->previous()V

    goto/16 :goto_4

    .line 2127
    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libmusic/R$id;->iv_next:I

    if-ne v0, v1, :cond_14

    const-string p1, "MUSIC_SOURCE_OF_USB1"

    .line 2129
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    const-string p1, "MUSIC_SOURCE_OF_USB2"

    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_2

    :cond_10
    const-string p1, "MUSIC_SOURCE_OF_BLUETOOTH"

    .line 2147
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 2148
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->nextBluetoothMusic()Z

    goto/16 :goto_4

    :cond_11
    const-string p1, "MUSIC_SOURCE_OF_CARLIFE"

    .line 2149
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 2150
    invoke-static {}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getInstance()Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->setMusicControl(I)V

    goto/16 :goto_4

    :cond_12
    const-string p1, "MUSIC_SOURCE_OF_CARPLAY"

    .line 2151
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 2152
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getInstance(Landroid/content/Context;)Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->next()I

    goto/16 :goto_4

    .line 2143
    :cond_13
    :goto_2
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/media/music/CarMusicManager;->next()V

    goto/16 :goto_4

    .line 2155
    :cond_14
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libmusic/R$id;->iv_func_1:I

    if-ne v0, v1, :cond_17

    const-string p1, "MUSIC_SOURCE_OF_USB1"

    .line 2157
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    const-string p1, "MUSIC_SOURCE_OF_USB2"

    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    return-void

    .line 2161
    :cond_15
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->musicSongListDialog:Lcom/yftech/libmusic/dialog/MediaDataListDialog;

    if-nez p1, :cond_16

    const-string p1, "MUSIC_SOURCE_OF_USB1"

    .line 2162
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v5

    invoke-static {p1}, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->newInstance(I)Lcom/yftech/libmusic/dialog/MediaDataListDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->musicSongListDialog:Lcom/yftech/libmusic/dialog/MediaDataListDialog;

    .line 2164
    :cond_16
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->musicSongListDialog:Lcom/yftech/libmusic/dialog/MediaDataListDialog;

    invoke-virtual {p1}, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->isAdded()Z

    move-result p1

    if-nez p1, :cond_1d

    .line 2165
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->musicSongListDialog:Lcom/yftech/libmusic/dialog/MediaDataListDialog;

    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2169
    :cond_17
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libmusic/R$id;->iv_func_2:I

    if-ne v0, v1, :cond_18

    .line 2172
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/media/music/CarMusicManager;->switchPlayMode()V

    goto/16 :goto_4

    .line 2175
    :cond_18
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libmusic/R$id;->iv_func_3:I

    if-ne v0, v1, :cond_19

    .line 2177
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2179
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroidx/core/content/ContextCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_4

    .line 2182
    :cond_19
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libmusic/R$id;->v_cover:I

    if-eq v0, v1, :cond_1a

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/yftech/libmusic/R$id;->tv_title:I

    if-ne p1, v0, :cond_1d

    .line 2183
    :cond_1a
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/yftech/libmusic/MusicMainActivity;

    if-eqz p1, :cond_1d

    .line 2184
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/yftech/libmusic/MusicMainActivity;

    .line 2186
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/music/CarMusicManager;->getPlayMusic()Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object v0

    .line 2188
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->musicLyricFragment:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    if-nez v1, :cond_1b

    .line 2189
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->newInstance(Lcom/yftech/car/media/data/entity/MediaFile;Ljava/lang/String;)Lcom/yftech/libmusic/ui/MusicLyricFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->musicLyricFragment:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    goto :goto_3

    .line 2192
    :cond_1b
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->musicLyricFragment:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-virtual {v1, v0}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->setMediaFile(Lcom/yftech/car/media/data/entity/MediaFile;)V

    .line 2195
    :goto_3
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->musicLyricFragment:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-virtual {v0, p0}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->setFrontFragment(Landroidx/fragment/app/Fragment;)V

    .line 2198
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/music/CarMusicManager;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2199
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->setMusicProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2201
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->setMusicProgressRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2204
    :cond_1c
    iput-object p0, p1, Lcom/yftech/libmusic/MusicMainActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    .line 2205
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->musicLyricFragment:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-virtual {p1, p0}, Lcom/yftech/libmusic/MusicMainActivity;->switchContent(Landroidx/fragment/app/Fragment;)V

    .line 2207
    invoke-virtual {p1, v2}, Lcom/yftech/libmusic/MusicMainActivity;->setSoundEffectVisible(Z)V

    :cond_1d
    :goto_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 214
    invoke-super {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onCreate(Landroid/os/Bundle;)V

    .line 215
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "MUSIC_SOURCE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 402
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onDestroyView()V

    const-string v0, "onDestroyView"

    .line 404
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 407
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 410
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->callback:Lcom/yftech/car/media/music/CarMusicManager$CarMusicControlCallback;

    invoke-static {v0}, Lcom/yftech/car/media/music/CarMusicManager;->unregisterMusicControlCallback(Lcom/yftech/car/media/music/CarMusicManager$CarMusicControlCallback;)V

    .line 413
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->musicCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->unregisterBluetoothMusicCallback(Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;)V

    .line 414
    invoke-static {}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getInstance()Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->carLifeDataChangedCallback:Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->unregisterMusicControlCallback(Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback;)V

    .line 415
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getInstance(Landroid/content/Context;)Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->carPlayMusicListener:Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;

    invoke-virtual {v0, v1}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->unregisterCarPlayMusicListener(Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;)V

    .line 416
    invoke-static {}, Lcom/yftech/car/audio/CarAudioManager;->getInstance()Lcom/yftech/car/audio/CarAudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->carAudioCallback:Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/audio/CarAudioManager;->unregisterCarAudioCallback(Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;)V

    .line 418
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->setMusicProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 420
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 421
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->hiCarReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 326
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onResume()V

    .line 329
    invoke-static {}, Lcom/yftech/car/audio/CarAudioManager;->getInstance()Lcom/yftech/car/audio/CarAudioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/audio/CarAudioManager;->getCurrentMediaSource()Ljava/lang/String;

    move-result-object v0

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MusicPlayer onResume:music_source="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", needPlay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->isNeedToPlay:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",currentMediaSource=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v2, "com.yftech.media.radio"

    .line 331
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iput-boolean v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->isNeedToPlay:Z

    .line 335
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "he"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->isRightStart:Z

    .line 337
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 338
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->tv_artist:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 340
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    const-string v0, "MUSIC_SOURCE_OF_BLUETOOTH"

    .line 345
    iget-object v2, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->isConnected(I)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_4
    const-string v0, "MUSIC_SOURCE_OF_USB1"

    iget-object v2, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    .line 346
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/yftech/car/media/data/CarMediaDataManager;->isUsbExists(I)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/yftech/car/media/data/CarMediaDataManager;->getMusicFileSize(I)I

    move-result v0

    if-lez v0, :cond_8

    :cond_5
    const-string v0, "MUSIC_SOURCE_OF_USB2"

    iget-object v2, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    .line 347
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/data/CarMediaDataManager;->isUsbExists(I)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/data/CarMediaDataManager;->getMusicFileSize(I)I

    move-result v0

    if-lez v0, :cond_8

    :cond_6
    const-string v0, "MUSIC_SOURCE_OF_CARLIFE"

    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    .line 348
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getInstance()Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getCarLifeConnectionStatus()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    const-string v0, "MUSIC_SOURCE_OF_CARPLAY"

    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    .line 349
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getInstance(Landroid/content/Context;)Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getConnectStatus()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    :cond_8
    const-string p0, "the source is not available!!!!!!"

    .line 351
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->e(Ljava/lang/String;)V

    return-void

    .line 355
    :cond_9
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/yftech/libmusic/MusicMainActivity;

    if-eqz v0, :cond_a

    .line 356
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yftech/libmusic/MusicMainActivity;

    .line 357
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->musicLyricFragment:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->musicLyricFragment:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-virtual {v1}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 358
    invoke-virtual {v0}, Lcom/yftech/libmusic/MusicMainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->musicLyricFragment:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->musicLyricFragment:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-virtual {v2}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->getFrontFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 359
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->musicLyricFragment:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-virtual {v1}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->getFrontFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    iput-object v1, v0, Lcom/yftech/libmusic/MusicMainActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    const/4 v0, 0x0

    .line 360
    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->musicLyricFragment:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    .line 365
    :cond_a
    iget-boolean v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->isNeedToPlay:Z

    if-eqz v0, :cond_b

    .line 366
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->isResumeByPowerOn()Z

    move-result v0

    if-nez v0, :cond_c

    .line 367
    invoke-direct {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->setMusicSourceStyle()V

    goto :goto_2

    .line 370
    :cond_b
    invoke-direct {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->setMusicSourceStyleWithoutPlay()V

    :cond_c
    :goto_2
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 376
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onStop()V

    const-string v0, "onStop"

    .line 378
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/yftech/libmusic/MusicMainActivity;

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yftech/libmusic/MusicMainActivity;

    .line 385
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->musicLyricFragment:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->musicLyricFragment:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-virtual {v1}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    invoke-virtual {v0}, Lcom/yftech/libmusic/MusicMainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->musicLyricFragment:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->musicLyricFragment:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-virtual {v2}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->getFrontFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 388
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->musicLyricFragment:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-virtual {v1}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->getFrontFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    iput-object v1, v0, Lcom/yftech/libmusic/MusicMainActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    const/4 v0, 0x0

    .line 389
    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->musicLyricFragment:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->musicSongListDialog:Lcom/yftech/libmusic/dialog/MediaDataListDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->musicSongListDialog:Lcom/yftech/libmusic/dialog/MediaDataListDialog;

    invoke-virtual {v0}, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->musicSongListDialog:Lcom/yftech/libmusic/dialog/MediaDataListDialog;

    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->dismissCustom()V

    :cond_1
    return-void
.end method

.method public onUSBStatusChange(Lcom/media/common/event/USBStateEvent;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUSBStatusChange:event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/media/common/event/USBStateEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 1878
    iget-boolean v0, p1, Lcom/media/common/event/USBStateEvent;->isUsbExists:Z

    if-nez v0, :cond_6

    .line 1880
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->musicSongListDialog:Lcom/yftech/libmusic/dialog/MediaDataListDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->musicSongListDialog:Lcom/yftech/libmusic/dialog/MediaDataListDialog;

    invoke-virtual {v0}, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1881
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->musicSongListDialog:Lcom/yftech/libmusic/dialog/MediaDataListDialog;

    invoke-virtual {v0}, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->dismissCustom()V

    :cond_0
    const/4 v0, -0x1

    const-string v1, "MUSIC_SOURCE_OF_USB1"

    .line 1885
    iget-object v2, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const-string v1, "MUSIC_SOURCE_OF_USB2"

    .line 1887
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 1890
    :cond_2
    :goto_0
    iget p1, p1, Lcom/media/common/event/USBStateEvent;->usbIndex:I

    if-ne v0, p1, :cond_6

    .line 1892
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 1893
    instance-of v0, p1, Lcom/yftech/libmusic/MusicMainActivity;

    if-eqz v0, :cond_5

    .line 1894
    move-object v0, p1

    check-cast v0, Lcom/yftech/libmusic/MusicMainActivity;

    .line 1897
    invoke-virtual {v0}, Lcom/yftech/libmusic/MusicMainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1898
    iput-object p0, v0, Lcom/yftech/libmusic/MusicMainActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    .line 1899
    invoke-virtual {v0, v2}, Lcom/yftech/libmusic/MusicMainActivity;->setSoundEffectVisible(Z)V

    .line 1902
    invoke-virtual {v0}, Lcom/yftech/libmusic/MusicMainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-class v3, Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1905
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    .line 1908
    :cond_3
    invoke-virtual {v0}, Lcom/yftech/libmusic/MusicMainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-class v1, Lcom/yftech/libmusic/ui/MusicMainFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1910
    invoke-virtual {v0, p1}, Lcom/yftech/libmusic/MusicMainActivity;->switchContent(Landroidx/fragment/app/Fragment;)V

    .line 1912
    :cond_4
    sget p1, Lcom/yftech/libmusic/R$mipmap;->music_main_pic_cover:I

    invoke-virtual {v0, p1}, Lcom/yftech/libmusic/MusicMainActivity;->setAlbumCover(I)V

    .line 1916
    :cond_5
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/yftech/libmusic/event/MusicPlayStatusEvent;

    invoke-direct {v0, v2}, Lcom/yftech/libmusic/event/MusicPlayStatusEvent;-><init>(Z)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1919
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object p1

    const-string v0, "TAG_MUSIC_SOURCE_PLAYING"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/media/common/util/SharedPrefsUtil;->save(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1921
    invoke-direct {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->closeMusicSoundEffectsDialog()V

    :cond_6
    return-void
.end method

.method public setLyricProgress(I)V
    .locals 3

    .line 1861
    invoke-direct {p0, p1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getIndexByProgress(I)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 1866
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLyricProgress:progress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1867
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x28

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 1868
    iput v0, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x1

    .line 1869
    iput v0, p1, Landroid/os/Message;->arg2:I

    .line 1870
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public setMusic_source(Ljava/lang/String;)V
    .locals 2

    .line 2304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMusic_source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isNeedToPlay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->isNeedToPlay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 2305
    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    const/4 p1, 0x0

    .line 2306
    iput-boolean p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->isNeedToPlay:Z

    return-void
.end method

.method public setMusic_source(Ljava/lang/String;Z)V
    .locals 2

    .line 2311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMusic_source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isNeedToPlay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 2312
    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->music_source:Ljava/lang/String;

    .line 2313
    iput-boolean p2, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->isNeedToPlay:Z

    return-void
.end method
