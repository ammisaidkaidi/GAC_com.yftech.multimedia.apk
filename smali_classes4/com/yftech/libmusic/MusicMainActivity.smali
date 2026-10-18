.class public Lcom/yftech/libmusic/MusicMainActivity;
.super Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;
.source "MusicMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final ACTION_SOURCE_WINDOW_START:Ljava/lang/String;

.field private albumPath:Ljava/lang/String;

.field private final bluetoothMusicCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;

.field private final carlifeDataChangedCallback:Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback;

.field public currentFragment:Landroidx/fragment/app/Fragment;

.field private final dataChangeCallback:Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;

.field private dialog:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

.field private iv_album:Landroid/widget/ImageView;

.field private iv_playing:Landroid/widget/ImageView;

.field private iv_playing_extra:Landroid/widget/ImageView;

.field private iv_playing_extra_reflection:Landroid/widget/ImageView;

.field private iv_sound_effects:Landroid/widget/ImageView;

.field private mMusicPlayingAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private mMusicPlayingExtraAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private music_source:Ljava/lang/String;

.field private onTouchListener:Landroid/view/View$OnTouchListener;

.field private final receiver:Lcom/yftech/libmusic/MusicSourceInformationReceiver;

.field private testReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;-><init>()V

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity;->albumPath:Ljava/lang/String;

    .line 96
    new-instance v0, Lcom/yftech/libmusic/MusicSourceInformationReceiver;

    invoke-direct {v0}, Lcom/yftech/libmusic/MusicSourceInformationReceiver;-><init>()V

    iput-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity;->receiver:Lcom/yftech/libmusic/MusicSourceInformationReceiver;

    .line 99
    new-instance v0, Lcom/yftech/libmusic/MusicMainActivity$1;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/MusicMainActivity$1;-><init>(Lcom/yftech/libmusic/MusicMainActivity;)V

    iput-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity;->testReceiver:Landroid/content/BroadcastReceiver;

    .line 526
    new-instance v0, Lcom/yftech/libmusic/MusicMainActivity$3;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/MusicMainActivity$3;-><init>(Lcom/yftech/libmusic/MusicMainActivity;)V

    iput-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity;->onTouchListener:Landroid/view/View$OnTouchListener;

    .line 989
    new-instance v0, Lcom/yftech/libmusic/MusicMainActivity$4;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/MusicMainActivity$4;-><init>(Lcom/yftech/libmusic/MusicMainActivity;)V

    iput-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity;->dataChangeCallback:Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;

    .line 1033
    new-instance v0, Lcom/yftech/libmusic/MusicMainActivity$5;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/MusicMainActivity$5;-><init>(Lcom/yftech/libmusic/MusicMainActivity;)V

    iput-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity;->bluetoothMusicCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;

    .line 1062
    new-instance v0, Lcom/yftech/libmusic/MusicMainActivity$6;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/MusicMainActivity$6;-><init>(Lcom/yftech/libmusic/MusicMainActivity;)V

    iput-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity;->carlifeDataChangedCallback:Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback;

    const-string v0, "media_window_start"

    .line 1107
    iput-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity;->ACTION_SOURCE_WINDOW_START:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/libmusic/MusicMainActivity;)Ljava/lang/String;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/yftech/libmusic/MusicMainActivity;->music_source:Ljava/lang/String;

    return-object p0
.end method

.method private checkAction()V
    .locals 7

    .line 173
    invoke-virtual {p0}, Lcom/yftech/libmusic/MusicMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v1, "com.yftech.intent.action.start.music.bt"

    .line 176
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->isConnected(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 181
    iput-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity;->music_source:Ljava/lang/String;

    goto/16 :goto_3

    :cond_0
    const-string v0, "MUSIC_SOURCE_OF_BLUETOOTH"

    .line 183
    iput-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity;->music_source:Ljava/lang/String;

    goto/16 :goto_3

    :cond_1
    const-string v1, "com.yftech.intent.action.start.music.usb"

    .line 184
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 186
    iget-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity;->music_source:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_7

    .line 188
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/yftech/car/media/data/CarMediaDataManager;->isUsbExists(I)Z

    move-result v0

    .line 189
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/yftech/car/media/data/CarMediaDataManager;->isScanner(I)Z

    move-result v5

    .line 190
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yftech/car/media/data/CarMediaDataManager;->getMusicFileExists()I

    move-result v6

    if-eq v6, v4, :cond_3

    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yftech/car/media/data/CarMediaDataManager;->getMusicFileExists()I

    move-result v6

    if-ne v6, v2, :cond_2

    goto :goto_0

    :cond_2
    move v6, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v6, v4

    :goto_1
    if-eqz v0, :cond_4

    if-nez v5, :cond_4

    if-eqz v6, :cond_4

    const-string v0, "MUSIC_SOURCE_OF_USB1"

    .line 192
    iput-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity;->music_source:Ljava/lang/String;

    goto/16 :goto_2

    .line 194
    :cond_4
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/yftech/car/media/data/CarMediaDataManager;->isUsbExists(I)Z

    move-result v0

    .line 195
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/yftech/car/media/data/CarMediaDataManager;->isScanner(I)Z

    move-result v5

    .line 196
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yftech/car/media/data/CarMediaDataManager;->getMusicFileExists()I

    move-result v6

    if-eq v6, v1, :cond_5

    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/media/data/CarMediaDataManager;->getMusicFileExists()I

    move-result v1

    if-ne v1, v2, :cond_6

    :cond_5
    move v3, v4

    :cond_6
    if-eqz v0, :cond_f

    if-nez v5, :cond_f

    if-eqz v3, :cond_f

    const-string v0, "MUSIC_SOURCE_OF_USB2"

    .line 198
    iput-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity;->music_source:Ljava/lang/String;

    goto/16 :goto_2

    :cond_7
    const-string v0, "MUSIC_SOURCE_OF_USB1"

    .line 202
    iget-object v5, p0, Lcom/yftech/libmusic/MusicMainActivity;->music_source:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 205
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/yftech/car/media/data/CarMediaDataManager;->isUsbExists(I)Z

    move-result v0

    .line 206
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/yftech/car/media/data/CarMediaDataManager;->isScanner(I)Z

    move-result v1

    .line 207
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yftech/car/media/data/CarMediaDataManager;->getMusicFileExists()I

    move-result v5

    if-eq v5, v4, :cond_8

    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yftech/car/media/data/CarMediaDataManager;->getMusicFileExists()I

    move-result v5

    if-ne v5, v2, :cond_9

    :cond_8
    move v3, v4

    :cond_9
    if-eqz v0, :cond_a

    if-nez v1, :cond_a

    if-nez v3, :cond_f

    :cond_a
    const-string v0, ""

    .line 209
    iput-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity;->music_source:Ljava/lang/String;

    goto :goto_2

    :cond_b
    const-string v0, "MUSIC_SOURCE_OF_USB2"

    .line 212
    iget-object v5, p0, Lcom/yftech/libmusic/MusicMainActivity;->music_source:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 214
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/yftech/car/media/data/CarMediaDataManager;->isUsbExists(I)Z

    move-result v0

    .line 215
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/yftech/car/media/data/CarMediaDataManager;->isScanner(I)Z

    move-result v5

    .line 216
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yftech/car/media/data/CarMediaDataManager;->getMusicFileExists()I

    move-result v6

    if-eq v6, v1, :cond_c

    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/media/data/CarMediaDataManager;->getMusicFileExists()I

    move-result v1

    if-ne v1, v2, :cond_d

    :cond_c
    move v3, v4

    :cond_d
    if-eqz v0, :cond_e

    if-nez v5, :cond_e

    if-nez v3, :cond_f

    :cond_e
    const-string v0, ""

    .line 218
    iput-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity;->music_source:Ljava/lang/String;

    .line 221
    :cond_f
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkUSBResult:music_source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/libmusic/MusicMainActivity;->music_source:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_3

    :cond_10
    const-string v1, "com.yftech.intent.action.start.music"

    .line 222
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity;->music_source:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 224
    invoke-direct {p0}, Lcom/yftech/libmusic/MusicMainActivity;->checkPlaying()V

    :cond_11
    :goto_3
    return-void
.end method

.method private checkPlaying()V
    .locals 5

    .line 231
    invoke-static {}, Lcom/yftech/car/audio/CarAudioManager;->getInstance()Lcom/yftech/car/audio/CarAudioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/audio/CarAudioManager;->getCurrentMediaSource()Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, ","

    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 235
    array-length v2, v1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_4

    const/4 v2, 0x2

    .line 236
    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/media/common/util/AudioSettingUtil;->getCurrentSourceByClientId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkPlaying:sourceByClientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v3, "MUSIC_SOURCE_OF_BLUETOOTH"

    .line 239
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v3

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->isConnected(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "MUSIC_SOURCE_OF_BLUETOOTH"

    .line 240
    iput-object v1, p0, Lcom/yftech/libmusic/MusicMainActivity;->music_source:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v3, "MUSIC_SOURCE_OF_CARLIFE"

    .line 241
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getInstance()Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getCarLifeConnectionStatus()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "MUSIC_SOURCE_OF_CARLIFE"

    .line 242
    iput-object v1, p0, Lcom/yftech/libmusic/MusicMainActivity;->music_source:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v3, "MUSIC_SOURCE_OF_CARPLAY"

    .line 243
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getInstance(Landroid/content/Context;)Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getConnectStatus()I

    move-result v3

    if-ne v3, v2, :cond_2

    const-string v1, "MUSIC_SOURCE_OF_CARPLAY"

    .line 244
    iput-object v1, p0, Lcom/yftech/libmusic/MusicMainActivity;->music_source:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v2, "MUSIC_SOURCE_OF_USB1"

    .line 245
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "MUSIC_SOURCE_OF_USB2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 246
    :cond_3
    iput-object v1, p0, Lcom/yftech/libmusic/MusicMainActivity;->music_source:Ljava/lang/String;

    .line 250
    :cond_4
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPlaying:mediaSource="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", music_source="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/libmusic/MusicMainActivity;->music_source:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method private getRes(I)[I
    .locals 3

    if-nez p1, :cond_0

    .line 976
    invoke-virtual {p0}, Lcom/yftech/libmusic/MusicMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/yftech/libmusic/R$array;->music_hbx:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    goto :goto_0

    .line 978
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/libmusic/MusicMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/yftech/libmusic/R$array;->music_dbx:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 979
    :goto_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result p1

    .line 980
    new-array v0, p1, [I

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_1

    const/4 v2, -0x1

    .line 982
    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 984
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method private initW()V
    .locals 2

    .line 487
    sget v0, Lcom/yftech/libmusic/R$id;->iv_sound_effects:I

    invoke-virtual {p0, v0}, Lcom/yftech/libmusic/MusicMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity;->iv_sound_effects:Landroid/widget/ImageView;

    .line 488
    iget-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity;->iv_sound_effects:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    sget v0, Lcom/yftech/libmusic/R$id;->iv_album:I

    invoke-virtual {p0, v0}, Lcom/yftech/libmusic/MusicMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity;->iv_album:Landroid/widget/ImageView;

    .line 492
    sget v0, Lcom/yftech/libmusic/R$id;->iv_playing:I

    invoke-virtual {p0, v0}, Lcom/yftech/libmusic/MusicMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity;->iv_playing:Landroid/widget/ImageView;

    .line 493
    iget-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity;->iv_playing:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity;->mMusicPlayingAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 494
    sget v0, Lcom/yftech/libmusic/R$id;->iv_playing_extra:I

    invoke-virtual {p0, v0}, Lcom/yftech/libmusic/MusicMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity;->iv_playing_extra:Landroid/widget/ImageView;

    .line 495
    iget-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity;->iv_playing_extra:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity;->mMusicPlayingExtraAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 496
    sget v0, Lcom/yftech/libmusic/R$id;->iv_playing_extra_reflection:I

    invoke-virtual {p0, v0}, Lcom/yftech/libmusic/MusicMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity;->iv_playing_extra_reflection:Landroid/widget/ImageView;

    .line 500
    iget-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity;->music_source:Ljava/lang/String;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicMainFragment;->newInstance(Ljava/lang/String;)Lcom/yftech/libmusic/ui/MusicMainFragment;

    move-result-object v0

    .line 502
    invoke-virtual {p0, v0}, Lcom/yftech/libmusic/MusicMainActivity;->switchContent(Landroidx/fragment/app/Fragment;)V

    .line 505
    invoke-virtual {p0}, Lcom/yftech/libmusic/MusicMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity;->music_source:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    invoke-direct {p0}, Lcom/yftech/libmusic/MusicMainActivity;->playLastMusicSource()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity;->music_source:Ljava/lang/String;

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity;->music_source:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 512
    iget-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity;->music_source:Ljava/lang/String;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->newInstance(Ljava/lang/String;)Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    move-result-object v0

    .line 514
    invoke-virtual {p0, v0}, Lcom/yftech/libmusic/MusicMainActivity;->switchContent(Landroidx/fragment/app/Fragment;)V

    const/4 v0, 0x1

    .line 516
    invoke-virtual {p0, v0}, Lcom/yftech/libmusic/MusicMainActivity;->setSoundEffectVisible(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 518
    invoke-virtual {p0, v0}, Lcom/yftech/libmusic/MusicMainActivity;->setSoundEffectVisible(Z)V

    .line 520
    invoke-virtual {p0}, Lcom/yftech/libmusic/MusicMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object p0

    const-string v0, "TAG_MUSIC_SOURCE_PLAYING"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/media/common/util/SharedPrefsUtil;->save(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private playLastMusicSource()Ljava/lang/String;
    .locals 7

    .line 560
    invoke-virtual {p0}, Lcom/yftech/libmusic/MusicMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object v0

    const-string v1, "TAG_MUSIC_SOURCE_PLAYING"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/media/common/util/SharedPrefsUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 563
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "last_music_source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 564
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "MUSIC_SOURCE_OF_USB2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    goto :goto_1

    :sswitch_1
    const-string v2, "MUSIC_SOURCE_OF_USB1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :sswitch_2
    const-string v2, "MUSIC_SOURCE_OF_CARPLAY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_3
    const-string v2, "MUSIC_SOURCE_OF_CARLIFE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_4
    const-string v2, "MUSIC_SOURCE_OF_BLUETOOTH"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 603
    :pswitch_0
    invoke-static {p0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getInstance(Landroid/content/Context;)Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getConnectStatus()I

    move-result p0

    if-ne p0, v4, :cond_3

    const-string v1, "MUSIC_SOURCE_OF_CARPLAY"

    goto :goto_3

    .line 597
    :pswitch_1
    invoke-static {}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getInstance()Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getCarLifeConnectionStatus()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string v1, "MUSIC_SOURCE_OF_CARLIFE"

    goto :goto_3

    .line 591
    :pswitch_2
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p0

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->isConnected(I)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string v1, "MUSIC_SOURCE_OF_BLUETOOTH"

    goto :goto_3

    .line 579
    :pswitch_3
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/yftech/car/media/data/CarMediaDataManager;->isUsbExists(I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 582
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/media/data/CarMediaDataManager;->getMusicFileExists()I

    move-result p0

    .line 584
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/yftech/car/media/data/CarMediaDataManager;->isScanner(I)Z

    move-result v0

    if-nez v0, :cond_3

    if-eq p0, v4, :cond_1

    if-ne p0, v3, :cond_3

    :cond_1
    const-string p0, "MUSIC_SOURCE_OF_USB2"

    :goto_2
    move-object v1, p0

    goto :goto_3

    .line 567
    :pswitch_4
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/yftech/car/media/data/CarMediaDataManager;->isUsbExists(I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 570
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/media/data/CarMediaDataManager;->getMusicFileExists()I

    move-result p0

    .line 572
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/yftech/car/media/data/CarMediaDataManager;->isScanner(I)Z

    move-result v0

    if-nez v0, :cond_3

    if-eq p0, v6, :cond_2

    if-ne p0, v3, :cond_3

    :cond_2
    const-string p0, "MUSIC_SOURCE_OF_USB1"

    goto :goto_2

    :cond_3
    :goto_3
    return-object v1

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

.method private registerReceiver()V
    .locals 2

    .line 614
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "ACTION_USB_STATUS_CHANGE"

    .line 615
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "ACTION_BLUETOOTH_STATUS_CHANGE"

    .line 616
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "ACTION_CARLIFE_STATUS_CHANGE"

    .line 617
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "ACTION_CARPLAY_STATUS_CHANGE"

    .line 618
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 620
    invoke-virtual {p0}, Lcom/yftech/libmusic/MusicMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object p0, p0, Lcom/yftech/libmusic/MusicMainActivity;->receiver:Lcom/yftech/libmusic/MusicSourceInformationReceiver;

    invoke-virtual {v1, p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private registerTestReceiver()V
    .locals 2

    .line 165
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "test"

    .line 166
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/yftech/libmusic/MusicMainActivity;->testReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/yftech/libmusic/MusicMainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setPlayingAnimationStatus(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 714
    iget-object p1, p0, Lcom/yftech/libmusic/MusicMainActivity;->iv_playing_extra:Landroid/widget/ImageView;

    sget v0, Lcom/yftech/libmusic/R$drawable;->music_play_status_anim_extra:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 715
    iget-object p1, p0, Lcom/yftech/libmusic/MusicMainActivity;->iv_playing_extra_reflection:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 716
    iget-object p1, p0, Lcom/yftech/libmusic/MusicMainActivity;->iv_playing_extra:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/yftech/libmusic/MusicMainActivity;->mMusicPlayingExtraAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 717
    iget-object p1, p0, Lcom/yftech/libmusic/MusicMainActivity;->mMusicPlayingAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 718
    iget-object p0, p0, Lcom/yftech/libmusic/MusicMainActivity;->mMusicPlayingExtraAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 720
    :cond_0
    iget-object p1, p0, Lcom/yftech/libmusic/MusicMainActivity;->mMusicPlayingAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 721
    iget-object p1, p0, Lcom/yftech/libmusic/MusicMainActivity;->mMusicPlayingExtraAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 722
    iget-object p1, p0, Lcom/yftech/libmusic/MusicMainActivity;->iv_playing_extra:Landroid/widget/ImageView;

    sget v0, Lcom/yftech/libmusic/R$mipmap;->music_04_djz:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 723
    iget-object p0, p0, Lcom/yftech/libmusic/MusicMainActivity;->iv_playing_extra_reflection:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected createPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public musicPlayStatusChanged(Lcom/yftech/libmusic/event/MusicPlayStatusEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "musicPlayStatusChanged:isPlaying="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/yftech/libmusic/event/MusicPlayStatusEvent;->isPlaying:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPageDisplaying="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/libmusic/MusicMainActivity;->isDisplaying:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 927
    iget-boolean v0, p0, Lcom/yftech/libmusic/MusicMainActivity;->isDisplaying:Z

    if-nez v0, :cond_0

    return-void

    .line 930
    :cond_0
    iget-boolean p1, p1, Lcom/yftech/libmusic/event/MusicPlayStatusEvent;->isPlaying:Z

    invoke-direct {p0, p1}, Lcom/yftech/libmusic/MusicMainActivity;->setPlayingAnimationStatus(Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 907
    invoke-static {}, Lcom/media/common/util/SystemUtil;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 910
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/yftech/libmusic/R$id;->iv_sound_effects:I

    if-ne p1, v0, :cond_2

    .line 912
    iget-object p1, p0, Lcom/yftech/libmusic/MusicMainActivity;->dialog:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    if-eqz p1, :cond_1

    .line 913
    iget-object p1, p0, Lcom/yftech/libmusic/MusicMainActivity;->dialog:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    invoke-virtual {p1}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->dismissAllowingStateLoss()V

    const/4 p1, 0x0

    .line 914
    iput-object p1, p0, Lcom/yftech/libmusic/MusicMainActivity;->dialog:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    .line 917
    :cond_1
    invoke-static {}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->newInstance()Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/libmusic/MusicMainActivity;->dialog:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    .line 918
    iget-object p1, p0, Lcom/yftech/libmusic/MusicMainActivity;->dialog:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    invoke-virtual {p0}, Lcom/yftech/libmusic/MusicMainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1099
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged:event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1100
    invoke-virtual {p0}, Lcom/yftech/libmusic/MusicMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, ""

    .line 1102
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "music_source"

    const-string v0, ""

    .line 1103
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 122
    invoke-super {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    sget p1, Lcom/yftech/libmusic/R$layout;->activity_music_main:I

    invoke-virtual {p0, p1}, Lcom/yftech/libmusic/MusicMainActivity;->setContentView(I)V

    const-string p1, "onCreate start"

    .line 125
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/yftech/libmusic/MusicMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->init(Landroid/content/Context;)V

    .line 132
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity;->dataChangeCallback:Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;

    invoke-virtual {p1, v0}, Lcom/yftech/car/media/data/CarMediaDataManager;->registerCarDataControlCallback(Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;)V

    .line 133
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity;->bluetoothMusicCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->registerBluetoothMusicCallback(Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;Landroid/os/Handler;)V

    .line 134
    invoke-static {}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getInstance()Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity;->carlifeDataChangedCallback:Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback;

    invoke-virtual {p1, v0}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->registerMusicControlCallback(Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback;)V

    .line 136
    invoke-virtual {p0}, Lcom/yftech/libmusic/MusicMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "music_source"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/libmusic/MusicMainActivity;->music_source:Ljava/lang/String;

    .line 139
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "music_source="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity;->music_source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 141
    invoke-direct {p0}, Lcom/yftech/libmusic/MusicMainActivity;->checkAction()V

    .line 144
    invoke-virtual {p0}, Lcom/yftech/libmusic/MusicMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/yftech/libmusic/MusicMainActivity;->music_source:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/yftech/libmusic/MusicMainActivity;->checkPlaying()V

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/yftech/libmusic/MusicMainActivity;->initW()V

    .line 151
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 154
    invoke-direct {p0}, Lcom/yftech/libmusic/MusicMainActivity;->registerReceiver()V

    .line 157
    invoke-direct {p0}, Lcom/yftech/libmusic/MusicMainActivity;->registerTestReceiver()V

    const-string p0, "onCreate end"

    .line 159
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 770
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onDestroy()V

    .line 773
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libmusic/MusicMainActivity;->dataChangeCallback:Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/data/CarMediaDataManager;->unregisterCarDataControlCallback(Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;)V

    .line 774
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libmusic/MusicMainActivity;->bluetoothMusicCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->unregisterBluetoothMusicCallback(Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;)V

    .line 775
    invoke-static {}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getInstance()Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libmusic/MusicMainActivity;->carlifeDataChangedCallback:Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->unregisterMusicControlCallback(Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback;)V

    .line 776
    invoke-static {}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getInstance()Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->release()V

    .line 779
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 782
    invoke-virtual {p0}, Lcom/yftech/libmusic/MusicMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libmusic/MusicMainActivity;->receiver:Lcom/yftech/libmusic/MusicSourceInformationReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 784
    iget-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity;->testReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/yftech/libmusic/MusicMainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 787
    invoke-virtual {p0}, Lcom/yftech/libmusic/MusicMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object p0

    const-string v0, "TAG_MUSIC_SOURCE_PLAYING"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/media/common/util/SharedPrefsUtil;->save(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 699
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 701
    invoke-virtual {p0}, Lcom/yftech/libmusic/MusicMainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 702
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "onKeyDown hide MusicLyricFragment"

    .line 703
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 705
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance p1, Lcom/yftech/libmusic/event/MusicLyricHideEvent;

    invoke-direct {p1}, Lcom/yftech/libmusic/event/MusicLyricHideEvent;-><init>()V

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    .line 709
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onMediaSourceWindowChanged(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMediaSourceWindowChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v0, "media_window_start"

    .line 1111
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "onMediaSourceWindowChanged=finish MusicActivity"

    .line 1113
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1114
    invoke-virtual {p0}, Lcom/yftech/libmusic/MusicMainActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1116
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 9

    .line 285
    invoke-super {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 286
    invoke-virtual {p0, p1}, Lcom/yftech/libmusic/MusicMainActivity;->setIntent(Landroid/content/Intent;)V

    .line 288
    invoke-virtual {p0}, Lcom/yftech/libmusic/MusicMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "music_source"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 289
    invoke-virtual {p0}, Lcom/yftech/libmusic/MusicMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-virtual {p0}, Lcom/yftech/libmusic/MusicMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object v1

    const-string v2, "TAG_MUSIC_SOURCE_PLAYING"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/media/common/util/SharedPrefsUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/libmusic/MusicMainActivity;->music_source:Ljava/lang/String;

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intent_music_source="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", music_source="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/libmusic/MusicMainActivity;->music_source:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 294
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 297
    invoke-direct {p0}, Lcom/yftech/libmusic/MusicMainActivity;->playLastMusicSource()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/libmusic/MusicMainActivity;->music_source:Ljava/lang/String;

    .line 298
    iget-object v1, p0, Lcom/yftech/libmusic/MusicMainActivity;->music_source:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 301
    invoke-static {}, Lcom/media/common/util/AudioSettingUtil;->getCurrentMediaSource()Ljava/lang/String;

    move-result-object p1

    .line 304
    invoke-virtual {p0}, Lcom/yftech/libmusic/MusicMainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 305
    instance-of v1, v0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    if-eqz v1, :cond_3

    .line 307
    check-cast v0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    .line 310
    iget-object v1, p0, Lcom/yftech/libmusic/MusicMainActivity;->music_source:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    .line 312
    iget-object v1, p0, Lcom/yftech/libmusic/MusicMainActivity;->music_source:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getMusic_source()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/yftech/libmusic/MusicMainActivity;->music_source:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->setMusic_source(Ljava/lang/String;Z)V

    .line 317
    :cond_0
    invoke-virtual {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 318
    iput-boolean p1, v0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->isNeedToPlay:Z

    .line 319
    invoke-virtual {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->onResume()V

    .line 321
    invoke-virtual {p0}, Lcom/yftech/libmusic/MusicMainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-class v1, Lcom/yftech/libmusic/ui/MusicMainFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 323
    invoke-virtual {p0}, Lcom/yftech/libmusic/MusicMainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    .line 325
    :cond_1
    iput-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    goto :goto_0

    .line 327
    :cond_2
    invoke-virtual {p0, v0}, Lcom/yftech/libmusic/MusicMainActivity;->switchContent(Landroidx/fragment/app/Fragment;)V

    .line 330
    :cond_3
    :goto_0
    invoke-virtual {p0, v2}, Lcom/yftech/libmusic/MusicMainActivity;->setSoundEffectVisible(Z)V

    return-void

    .line 336
    :cond_4
    iput-object p1, p0, Lcom/yftech/libmusic/MusicMainActivity;->music_source:Ljava/lang/String;

    .line 338
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-nez v1, :cond_6

    const-string v1, "com.yftech.intent.action.start.music.bt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 340
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p1

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->isConnected(I)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, ""

    .line 343
    iput-object p1, p0, Lcom/yftech/libmusic/MusicMainActivity;->music_source:Ljava/lang/String;

    goto/16 :goto_a

    :cond_5
    const-string p1, "MUSIC_SOURCE_OF_BLUETOOTH"

    .line 345
    iput-object p1, p0, Lcom/yftech/libmusic/MusicMainActivity;->music_source:Ljava/lang/String;

    goto/16 :goto_a

    .line 347
    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "com.yftech.intent.action.start.music.usb"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 349
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 351
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/yftech/car/media/data/CarMediaDataManager;->isUsbExists(I)Z

    move-result p1

    .line 352
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/yftech/car/media/data/CarMediaDataManager;->isScanner(I)Z

    move-result v0

    .line 353
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/media/data/CarMediaDataManager;->getMusicFileExists()I

    move-result v1

    if-eq v1, v2, :cond_8

    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/media/data/CarMediaDataManager;->getMusicFileExists()I

    move-result v1

    if-ne v1, v4, :cond_7

    goto :goto_1

    :cond_7
    move v1, v5

    goto :goto_2

    :cond_8
    :goto_1
    move v1, v2

    :goto_2
    if-eqz p1, :cond_9

    if-nez v0, :cond_9

    if-eqz v1, :cond_9

    const-string p1, "MUSIC_SOURCE_OF_USB1"

    .line 355
    iput-object p1, p0, Lcom/yftech/libmusic/MusicMainActivity;->music_source:Ljava/lang/String;

    goto/16 :goto_9

    .line 357
    :cond_9
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/yftech/car/media/data/CarMediaDataManager;->isUsbExists(I)Z

    move-result p1

    .line 358
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yftech/car/media/data/CarMediaDataManager;->isScanner(I)Z

    move-result v0

    .line 359
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/media/data/CarMediaDataManager;->getMusicFileExists()I

    move-result v1

    if-eq v1, v3, :cond_b

    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/media/data/CarMediaDataManager;->getMusicFileExists()I

    move-result v1

    if-ne v1, v4, :cond_a

    goto :goto_3

    :cond_a
    move v1, v5

    goto :goto_4

    :cond_b
    :goto_3
    move v1, v2

    :goto_4
    if-eqz p1, :cond_14

    if-nez v0, :cond_14

    if-eqz v1, :cond_14

    const-string p1, "MUSIC_SOURCE_OF_USB2"

    .line 361
    iput-object p1, p0, Lcom/yftech/libmusic/MusicMainActivity;->music_source:Ljava/lang/String;

    goto/16 :goto_9

    :cond_c
    const-string v0, "MUSIC_SOURCE_OF_USB1"

    .line 365
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 368
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/yftech/car/media/data/CarMediaDataManager;->isUsbExists(I)Z

    move-result p1

    .line 369
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/yftech/car/media/data/CarMediaDataManager;->isScanner(I)Z

    move-result v0

    .line 370
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/media/data/CarMediaDataManager;->getMusicFileExists()I

    move-result v1

    if-eq v1, v2, :cond_e

    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/media/data/CarMediaDataManager;->getMusicFileExists()I

    move-result v1

    if-ne v1, v4, :cond_d

    goto :goto_5

    :cond_d
    move v1, v5

    goto :goto_6

    :cond_e
    :goto_5
    move v1, v2

    :goto_6
    if-eqz p1, :cond_f

    if-nez v0, :cond_f

    if-nez v1, :cond_14

    :cond_f
    const-string p1, ""

    .line 372
    iput-object p1, p0, Lcom/yftech/libmusic/MusicMainActivity;->music_source:Ljava/lang/String;

    goto :goto_9

    :cond_10
    const-string v0, "MUSIC_SOURCE_OF_USB2"

    .line 375
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 377
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/yftech/car/media/data/CarMediaDataManager;->isUsbExists(I)Z

    move-result p1

    .line 378
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yftech/car/media/data/CarMediaDataManager;->isScanner(I)Z

    move-result v0

    .line 379
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/media/data/CarMediaDataManager;->getMusicFileExists()I

    move-result v1

    if-eq v1, v3, :cond_12

    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/media/data/CarMediaDataManager;->getMusicFileExists()I

    move-result v1

    if-ne v1, v4, :cond_11

    goto :goto_7

    :cond_11
    move v1, v5

    goto :goto_8

    :cond_12
    :goto_7
    move v1, v2

    :goto_8
    if-eqz p1, :cond_13

    if-nez v0, :cond_13

    if-nez v1, :cond_14

    :cond_13
    const-string p1, ""

    .line 381
    iput-object p1, p0, Lcom/yftech/libmusic/MusicMainActivity;->music_source:Ljava/lang/String;

    .line 384
    :cond_14
    :goto_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkUSBResult:music_source="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity;->music_source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_a

    .line 386
    :cond_15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/yftech/libmusic/MusicMainActivity;->music_source:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 388
    invoke-direct {p0}, Lcom/yftech/libmusic/MusicMainActivity;->checkPlaying()V

    .line 391
    :cond_16
    :goto_a
    iget-object p1, p0, Lcom/yftech/libmusic/MusicMainActivity;->music_source:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x4

    const/4 v1, -0x1

    if-nez p1, :cond_1a

    .line 393
    invoke-virtual {p0}, Lcom/yftech/libmusic/MusicMainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-class v6, Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 395
    instance-of v6, p1, Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    if-eqz v6, :cond_19

    .line 397
    move-object v6, p1

    check-cast v6, Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    .line 399
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "original music source="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getMusic_source()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", music source="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/yftech/libmusic/MusicMainActivity;->music_source:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 401
    iget-object v7, p0, Lcom/yftech/libmusic/MusicMainActivity;->music_source:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->setMusic_source(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_17

    .line 403
    invoke-virtual {v6}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->onResume()V

    goto :goto_b

    .line 405
    :cond_17
    invoke-virtual {p0, p1}, Lcom/yftech/libmusic/MusicMainActivity;->switchContent(Landroidx/fragment/app/Fragment;)V

    .line 408
    :goto_b
    iget-object p1, p0, Lcom/yftech/libmusic/MusicMainActivity;->music_source:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_c

    :sswitch_0
    const-string v0, "MUSIC_SOURCE_OF_USB2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    move v0, v2

    goto :goto_d

    :sswitch_1
    const-string v0, "MUSIC_SOURCE_OF_USB1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    move v0, v5

    goto :goto_d

    :sswitch_2
    const-string v3, "MUSIC_SOURCE_OF_CARPLAY"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    goto :goto_d

    :sswitch_3
    const-string v0, "MUSIC_SOURCE_OF_CARLIFE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    move v0, v4

    goto :goto_d

    :sswitch_4
    const-string v0, "MUSIC_SOURCE_OF_BLUETOOTH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    move v0, v3

    goto :goto_d

    :cond_18
    :goto_c
    move v0, v1

    :goto_d
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_11

    .line 422
    :pswitch_0
    invoke-static {p0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getInstance(Landroid/content/Context;)Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->play()V

    goto/16 :goto_11

    .line 419
    :pswitch_1
    invoke-static {}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getInstance()Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->setMusicControl(I)V

    goto/16 :goto_11

    .line 416
    :pswitch_2
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->startBluetoothMusic(Z)Z

    goto/16 :goto_11

    .line 413
    :pswitch_3
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object p0

    invoke-virtual {p0, v2, v2}, Lcom/yftech/car/media/music/CarMusicManager;->setCurrentUSB(BZ)V

    goto/16 :goto_11

    .line 410
    :pswitch_4
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object p0

    invoke-virtual {p0, v5, v2}, Lcom/yftech/car/media/music/CarMusicManager;->setCurrentUSB(BZ)V

    goto/16 :goto_11

    :cond_19
    if-nez p1, :cond_1e

    .line 428
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/yftech/libmusic/MusicMainActivity$2;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/MusicMainActivity$2;-><init>(Lcom/yftech/libmusic/MusicMainActivity;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_11

    .line 448
    :cond_1a
    invoke-virtual {p0}, Lcom/yftech/libmusic/MusicMainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-class v6, Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 451
    invoke-virtual {p0}, Lcom/yftech/libmusic/MusicMainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v6

    sget v7, Lcom/yftech/libmusic/R$anim;->dialog_fade_in:I

    sget v8, Lcom/yftech/libmusic/R$anim;->dialog_fade_null:I

    invoke-virtual {v6, v7, v8}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 454
    :cond_1b
    invoke-virtual {p0}, Lcom/yftech/libmusic/MusicMainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-class v6, Lcom/yftech/libmusic/ui/MusicMainFragment;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 456
    invoke-virtual {p0, p1}, Lcom/yftech/libmusic/MusicMainActivity;->switchContent(Landroidx/fragment/app/Fragment;)V

    .line 458
    :cond_1c
    sget p1, Lcom/yftech/libmusic/R$mipmap;->music_main_pic_cover:I

    invoke-virtual {p0, p1}, Lcom/yftech/libmusic/MusicMainActivity;->setAlbumCover(I)V

    .line 459
    invoke-virtual {p0, v5}, Lcom/yftech/libmusic/MusicMainActivity;->setSoundEffectVisible(Z)V

    .line 461
    invoke-direct {p0}, Lcom/yftech/libmusic/MusicMainActivity;->checkPlaying()V

    .line 462
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pauseCurrentMusic:music_source="

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/yftech/libmusic/MusicMainActivity;->music_source:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 463
    iget-object p1, p0, Lcom/yftech/libmusic/MusicMainActivity;->music_source:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_1

    goto :goto_e

    :sswitch_5
    const-string v0, "MUSIC_SOURCE_OF_USB2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    move v0, v2

    goto :goto_f

    :sswitch_6
    const-string v0, "MUSIC_SOURCE_OF_USB1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    move v0, v5

    goto :goto_f

    :sswitch_7
    const-string v2, "MUSIC_SOURCE_OF_CARPLAY"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_f

    :sswitch_8
    const-string v0, "MUSIC_SOURCE_OF_CARLIFE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    move v0, v4

    goto :goto_f

    :sswitch_9
    const-string v0, "MUSIC_SOURCE_OF_BLUETOOTH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    move v0, v3

    goto :goto_f

    :cond_1d
    :goto_e
    move v0, v1

    :goto_f
    packed-switch v0, :pswitch_data_1

    goto :goto_10

    .line 475
    :pswitch_5
    invoke-static {p0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getInstance(Landroid/content/Context;)Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->pause()V

    goto :goto_10

    .line 472
    :pswitch_6
    invoke-static {}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getInstance()Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->setMusicControl(I)V

    goto :goto_10

    .line 469
    :pswitch_7
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->pauseBluetoothMusic()Z

    goto :goto_10

    .line 466
    :pswitch_8
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/music/CarMusicManager;->pause()V

    :goto_10
    const-string p1, ""

    .line 478
    iput-object p1, p0, Lcom/yftech/libmusic/MusicMainActivity;->music_source:Ljava/lang/String;

    .line 481
    invoke-virtual {p0}, Lcom/yftech/libmusic/MusicMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object p0

    const-string p1, "TAG_MUSIC_SOURCE_PLAYING"

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/media/common/util/SharedPrefsUtil;->save(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1e
    :goto_11
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

    :sswitch_data_1
    .sparse-switch
        0x3b9dd690 -> :sswitch_9
        0x5b93cd32 -> :sswitch_8
        0x5b95a96a -> :sswitch_7
        0x6946e60b -> :sswitch_6
        0x6946e60c -> :sswitch_5
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .line 742
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onPause()V

    const-string v0, "onPause"

    .line 743
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 745
    iget-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity;->dialog:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity;->dialog:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    invoke-virtual {v0}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->dismissCustom()V

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity;->mMusicPlayingAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 751
    iget-object p0, p0, Lcom/yftech/libmusic/MusicMainActivity;->mMusicPlayingExtraAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 625
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onResume()V

    .line 626
    invoke-static {}, Lcom/yftech/car/audio/CarAudioManager;->getInstance()Lcom/yftech/car/audio/CarAudioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/audio/CarAudioManager;->getCurrentMediaSource()Ljava/lang/String;

    move-result-object v0

    .line 627
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity onResume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 629
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, ","

    .line 631
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 632
    array-length v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_5

    const/4 v1, 0x2

    .line 633
    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/media/common/util/AudioSettingUtil;->getCurrentSourceByClientId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MUSIC_SOURCE_OF_USB1"

    .line 636
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    const-string v1, "MUSIC_SOURCE_OF_USB2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "MUSIC_SOURCE_OF_BLUETOOTH"

    .line 639
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 641
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->isPlayingBluetoothMusic()Z

    move-result v2

    goto :goto_1

    :cond_1
    const-string v1, "MUSIC_SOURCE_OF_CARLIFE"

    .line 642
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 644
    invoke-static {}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getInstance()Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getCarLifeMusicPlayStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    move v2, v1

    goto :goto_1

    :cond_2
    const-string v1, "MUSIC_SOURCE_OF_CARPLAY"

    .line 645
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 647
    invoke-static {p0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getInstance(Landroid/content/Context;)Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->isPlaying()Z

    move-result v2

    goto :goto_1

    .line 638
    :cond_3
    :goto_0
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/music/CarMusicManager;->isPlaying()Z

    move-result v2

    .line 650
    :cond_4
    :goto_1
    invoke-direct {p0, v2}, Lcom/yftech/libmusic/MusicMainActivity;->setPlayingAnimationStatus(Z)V

    .line 693
    :cond_5
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    const-string v0, "media_window_start"

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 735
    invoke-super {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string p0, "android:support:fragments"

    const/4 v0, 0x0

    .line 736
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 729
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onStop()V

    const-string p0, "onStop"

    .line 730
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public setAlbumCover(I)V
    .locals 1

    const/4 v0, 0x0

    .line 889
    iput-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity;->albumPath:Ljava/lang/String;

    .line 891
    iget-object p0, p0, Lcom/yftech/libmusic/MusicMainActivity;->iv_album:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setAlbumCover(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .line 864
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity;->albumPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 868
    :cond_0
    new-instance v0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;

    invoke-direct {v0}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;->setCrossFadeEnabled(Z)Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;->build()Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;

    move-result-object v0

    .line 870
    new-instance v1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 871
    invoke-virtual {v1}, Lcom/bumptech/glide/request/RequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/RequestOptions;

    sget v2, Lcom/yftech/libmusic/R$mipmap;->music_main_pic_cover:I

    .line 873
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/RequestOptions;

    sget-object v2, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    .line 875
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/RequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/RequestOptions;

    new-instance v2, Lcom/media/common/util/GlideRoundTransform;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lcom/media/common/util/GlideRoundTransform;-><init>(I)V

    .line 876
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/RequestOptions;

    .line 878
    invoke-virtual {p0}, Lcom/yftech/libmusic/MusicMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/bumptech/glide/RequestManager;->load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    .line 879
    invoke-static {v0}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;->with(Lcom/bumptech/glide/request/transition/TransitionFactory;)Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity;->iv_album:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 881
    iput-object p1, p0, Lcom/yftech/libmusic/MusicMainActivity;->albumPath:Ljava/lang/String;

    return-void
.end method

.method public setAlbumCover(Ljava/lang/String;[B)V
    .locals 3

    .line 842
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity;->albumPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 845
    :cond_0
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 846
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    sget v1, Lcom/yftech/libmusic/R$mipmap;->music_main_pic_cover:I

    .line 848
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 849
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    sget-object v1, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    .line 850
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    new-instance v1, Lcom/media/common/util/GlideRoundTransform;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/media/common/util/GlideRoundTransform;-><init>(I)V

    .line 851
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 853
    invoke-virtual {p0}, Lcom/yftech/libmusic/MusicMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/bumptech/glide/RequestManager;->load([B)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity;->iv_album:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 855
    iput-object p1, p0, Lcom/yftech/libmusic/MusicMainActivity;->albumPath:Ljava/lang/String;

    return-void
.end method

.method public setSoundEffectVisible(Z)V
    .locals 0

    .line 833
    iget-object p0, p0, Lcom/yftech/libmusic/MusicMainActivity;->iv_sound_effects:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public declared-synchronized switchContent(Landroidx/fragment/app/Fragment;)V
    .locals 3

    monitor-enter p0

    .line 804
    :try_start_0
    invoke-virtual {p0}, Lcom/yftech/libmusic/MusicMainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 807
    iget-object v1, p0, Lcom/yftech/libmusic/MusicMainActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 809
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto/16 :goto_0

    .line 810
    :cond_0
    iget-object v1, p0, Lcom/yftech/libmusic/MusicMainActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    if-nez v1, :cond_1

    .line 812
    sget v1, Lcom/yftech/libmusic/R$id;->fl_music:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 813
    :cond_1
    iget-object v1, p0, Lcom/yftech/libmusic/MusicMainActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    if-eq v1, p1, :cond_3

    .line 817
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/yftech/libmusic/MusicMainActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 819
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchContent:add="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 820
    iget-object v1, p0, Lcom/yftech/libmusic/MusicMainActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/yftech/libmusic/R$id;->fl_music:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 822
    :cond_2
    iget-object v1, p0, Lcom/yftech/libmusic/MusicMainActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 825
    :cond_3
    :goto_0
    iput-object p1, p0, Lcom/yftech/libmusic/MusicMainActivity;->currentFragment:Landroidx/fragment/app/Fragment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 826
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 803
    monitor-exit p0

    throw p1
.end method
