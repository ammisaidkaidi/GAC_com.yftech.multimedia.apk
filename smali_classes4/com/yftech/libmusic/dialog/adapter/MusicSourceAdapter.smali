.class public Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;
.super Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;
.source "MusicSourceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter<",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private blueToothEnable:Z

.field private mContext:Landroid/content/Context;

.field private mPosition:I

.field private onItemClickListener:Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter$OnItemClickListener;

.field private sourceEnableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private type_Tag_Resource:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private types_name:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 72
    invoke-direct {p0}, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->mPosition:I

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->blueToothEnable:Z

    .line 73
    iput-object p1, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->mContext:Landroid/content/Context;

    .line 74
    invoke-static {}, Lcom/yftech/vehicle/sdk/HostConfig;->isCarplayPresent()Z

    move-result v0

    .line 75
    invoke-static {}, Lcom/yftech/vehicle/sdk/HostConfig;->isCarlifePresent()Z

    move-result v1

    .line 76
    invoke-static {}, Lcom/yftech/libmusic/utils/MediaUtils;->isCarplayCertificate()Z

    move-result v2

    .line 78
    sget-object v3, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Usb;->ONE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Usb;

    .line 81
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " USB number :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "   isCarplayPresent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "   isCarlifePresent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "   isCarplayCertificate = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->types:Ljava/util/List;

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->types_name:Ljava/util/List;

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->type_Tag_Resource:Ljava/util/List;

    .line 86
    iget-object v1, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->types:Ljava/util/List;

    const-string v2, "MUSIC_SOURCE_OF_BLUETOOTH"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v1, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->types_name:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/yftech/libmusic/R$string;->music_source_blueTooth_enable:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v1, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->type_Tag_Resource:Ljava/util/List;

    sget v2, Lcom/yftech/libmusic/R$mipmap;->audio_icon_bluetooth_norm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Usb;->ONE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Usb;

    if-ne v3, v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->types:Ljava/util/List;

    const-string v2, "MUSIC_SOURCE_OF_USB1"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v1, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->types_name:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yftech/libmusic/R$string;->music_source_selection_1:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v1, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->type_Tag_Resource:Ljava/util/List;

    sget v2, Lcom/yftech/libmusic/R$drawable;->music_source_for_usb_selector:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_0
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Usb;->TWO:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Usb;

    if-eq v3, v1, :cond_1

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Usb;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Usb;

    if-ne v3, v1, :cond_2

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->types:Ljava/util/List;

    const-string v2, "MUSIC_SOURCE_OF_USB1"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v1, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->types:Ljava/util/List;

    const-string v2, "MUSIC_SOURCE_OF_USB2"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v1, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->types_name:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yftech/libmusic/R$string;->music_source_selection_1:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v1, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->types_name:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yftech/libmusic/R$string;->music_source_selection_2:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v1, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->type_Tag_Resource:Ljava/util/List;

    sget v2, Lcom/yftech/libmusic/R$drawable;->music_source_for_usb_selector:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v1, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->type_Tag_Resource:Ljava/util/List;

    sget v2, Lcom/yftech/libmusic/R$drawable;->music_source_for_usb_selector:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 102
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->types:Ljava/util/List;

    const-string v1, "MUSIC_SOURCE_OF_CARPLAY"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->types_name:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/yftech/libmusic/R$string;->music_source_selection_carplay:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->type_Tag_Resource:Ljava/util/List;

    sget v0, Lcom/yftech/libmusic/R$drawable;->music_source_for_carplay_selector:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_3
    invoke-direct {p0}, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->initEnable()V

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;)Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter$OnItemClickListener;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->onItemClickListener:Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;)Ljava/util/List;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->types:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;)Ljava/util/Map;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->sourceEnableMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;)Ljava/util/List;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->types_name:Ljava/util/List;

    return-object p0
.end method

.method private initEnable()V
    .locals 11

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->sourceEnableMap:Ljava/util/Map;

    .line 121
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/data/CarMediaDataManager;->getMusicFileExists()I

    move-result v0

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "musicFileExists="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getInstance()Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getCarLifeConnectionStatus()Z

    move-result v1

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CarLifeStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 130
    iget-object v2, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getInstance(Landroid/content/Context;)Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getConnectStatus()I

    move-result v2

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CarPlayStatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 134
    iget-object v3, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->types:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, -0x1

    .line 136
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x2

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v6, "MUSIC_SOURCE_OF_USB2"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v10

    goto :goto_1

    :sswitch_1
    const-string v6, "MUSIC_SOURCE_OF_USB1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v8

    goto :goto_1

    :sswitch_2
    const-string v6, "MUSIC_SOURCE_OF_CARPLAY"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x4

    goto :goto_1

    :sswitch_3
    const-string v6, "MUSIC_SOURCE_OF_CARLIFE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v7

    goto :goto_1

    :sswitch_4
    const-string v6, "MUSIC_SOURCE_OF_BLUETOOTH"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v9

    :cond_0
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 176
    iget-object v5, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->sourceEnableMap:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 173
    :pswitch_0
    iget-object v5, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->sourceEnableMap:Ljava/util/Map;

    if-ne v2, v10, :cond_1

    goto :goto_2

    :cond_1
    move v9, v10

    :goto_2
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 170
    :pswitch_1
    iget-object v5, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->sourceEnableMap:Ljava/util/Map;

    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    move v9, v10

    :goto_3
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 157
    :pswitch_2
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/yftech/car/media/data/CarMediaDataManager;->isUsbExists(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 160
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/yftech/car/media/data/CarMediaDataManager;->isScanner(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 162
    iget-object v5, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->sourceEnableMap:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 164
    :cond_3
    iget-object v5, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->sourceEnableMap:Ljava/util/Map;

    if-eq v0, v10, :cond_4

    if-ne v0, v7, :cond_5

    :cond_4
    move v7, v9

    :cond_5
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 167
    :cond_6
    iget-object v5, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->sourceEnableMap:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 143
    :pswitch_3
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/yftech/car/media/data/CarMediaDataManager;->isUsbExists(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 146
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/yftech/car/media/data/CarMediaDataManager;->isScanner(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 148
    iget-object v5, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->sourceEnableMap:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 150
    :cond_7
    iget-object v5, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->sourceEnableMap:Ljava/util/Map;

    if-eq v0, v8, :cond_8

    if-ne v0, v7, :cond_9

    :cond_8
    move v7, v9

    :cond_9
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 153
    :cond_a
    iget-object v5, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->sourceEnableMap:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 139
    :pswitch_4
    iget-object v5, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->sourceEnableMap:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_b
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
.method public findPositionBySource(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 185
    :goto_0
    iget-object v1, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->types:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 187
    iget-object v1, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->types:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method public getEnable(Ljava/lang/String;)I
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->sourceEnableMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getItemCount()I
    .locals 0

    .line 335
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->types:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getSelection()I
    .locals 0

    .line 321
    iget p0, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->mPosition:I

    return p0
.end method

.method public getTypeBySelection()Ljava/lang/String;
    .locals 2

    .line 325
    iget v0, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->mPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->mPosition:I

    iget-object v1, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->types:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->types:Ljava/util/List;

    iget p0, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->mPosition:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isBlueToothEnable()Z
    .locals 0

    .line 317
    iget-boolean p0, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->blueToothEnable:Z

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 42
    check-cast p1, Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->onBindViewHolder(Lcom/chad/library/adapter/base/BaseViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 42
    check-cast p1, Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->onBindViewHolder(Lcom/chad/library/adapter/base/BaseViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chad/library/adapter/base/BaseViewHolder;I)V
    .locals 9
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 226
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->types:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "MUSIC_SOURCE_OF_BLUETOOTH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 229
    iget-boolean v2, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->blueToothEnable:Z

    if-eqz v2, :cond_0

    .line 230
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getRemoteDevices()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 232
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 233
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/yftech/libmusic/R$string;->music_source_blueTooth_disable:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 239
    :cond_1
    :goto_0
    sget v2, Lcom/yftech/libmusic/R$id;->tv_name:I

    invoke-virtual {p1, v2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_1

    .line 241
    :cond_2
    sget v0, Lcom/yftech/libmusic/R$id;->tv_name:I

    iget-object v2, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->types_name:Ljava/util/List;

    iget-object v3, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->types_name:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    rem-int v3, p2, v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 244
    :goto_1
    sget v0, Lcom/yftech/libmusic/R$id;->pb_loading:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 245
    sget v2, Lcom/yftech/libmusic/R$id;->iv_selector:I

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    .line 246
    sget v3, Lcom/yftech/libmusic/R$id;->iv_tag:I

    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 248
    sget v4, Lcom/yftech/libmusic/R$id;->iv_tag:I

    iget-object v5, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->type_Tag_Resource:Ljava/util/List;

    iget-object v6, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->type_Tag_Resource:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    rem-int v6, p2, v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 250
    iget-object v4, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->sourceEnableMap:Ljava/util/Map;

    iget-object v5, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->types:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    const/4 v5, 0x1

    if-eqz v4, :cond_7

    .line 252
    sget v6, Lcom/yftech/libmusic/R$id;->tv_name:I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_3

    move v7, v5

    goto :goto_2

    :cond_3
    move v7, v1

    :goto_2
    invoke-virtual {p1, v6, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->setEnabled(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v6

    sget v7, Lcom/yftech/libmusic/R$id;->iv_tag:I

    .line 253
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_4

    move v8, v5

    goto :goto_3

    :cond_4
    move v8, v1

    :goto_3
    invoke-virtual {v6, v7, v8}, Lcom/chad/library/adapter/base/BaseViewHolder;->setEnabled(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 256
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v5, :cond_5

    .line 257
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 258
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 259
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 261
    :cond_5
    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 262
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 266
    :goto_4
    iget-object v0, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter$1;

    invoke-direct {v3, p0, p2}, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter$1;-><init>(Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object p1, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    iget v0, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->mPosition:I

    if-ne v0, p2, :cond_6

    sget v0, Lcom/yftech/libmusic/R$mipmap;->music_source_pic_sel_104px:I

    goto :goto_5

    :cond_6
    const v0, 0x106000d

    :goto_5
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 280
    :cond_7
    iget p0, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->mPosition:I

    if-ne p0, p2, :cond_8

    move v1, v5

    :cond_8
    invoke-virtual {v2, v1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chad/library/adapter/base/BaseViewHolder;ILjava/util/List;)V
    .locals 2
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 285
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {p0, p1, p2}, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->onBindViewHolder(Lcom/chad/library/adapter/base/BaseViewHolder;I)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 288
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/media/common/util/ValueUtil;->parseBoolean(Ljava/lang/String;)Z

    .line 290
    sget p3, Lcom/yftech/libmusic/R$id;->iv_selector:I

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    .line 292
    iget-object p1, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    iget v1, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->mPosition:I

    if-ne v1, p2, :cond_1

    sget v1, Lcom/yftech/libmusic/R$mipmap;->music_source_pic_sel_104px:I

    goto :goto_0

    :cond_1
    const v1, 0x106000d

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 293
    iget p0, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->mPosition:I

    if-ne p2, p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {p3, v0}, Landroid/view/View;->setSelected(Z)V

    :goto_1
    return-void
.end method

.method public onCreateLayoutHelper()Lcom/alibaba/android/vlayout/LayoutHelper;
    .locals 0

    .line 214
    new-instance p0, Lcom/alibaba/android/vlayout/layout/LinearLayoutHelper;

    invoke-direct {p0}, Lcom/alibaba/android/vlayout/layout/LinearLayoutHelper;-><init>()V

    return-object p0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 220
    new-instance p2, Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object p0, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/yftech/libmusic/R$layout;->item_music_source:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setBlueToothEnable(Z)V
    .locals 0

    .line 310
    iput-boolean p1, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->blueToothEnable:Z

    const/4 p1, 0x0

    .line 313
    invoke-virtual {p0, p1}, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public setEnable(Ljava/lang/String;I)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->sourceEnableMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter$OnItemClickListener;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->onItemClickListener:Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter$OnItemClickListener;

    return-void
.end method

.method public setSelection(I)V
    .locals 2

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSelection:position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 301
    iget v0, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->mPosition:I

    .line 302
    iput p1, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->mPosition:I

    const/4 v1, 0x0

    .line 304
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    const/4 v0, 0x1

    .line 305
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    return-void
.end method
