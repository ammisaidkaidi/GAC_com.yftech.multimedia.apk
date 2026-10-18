.class public Lcom/yftech/libradio/rds/RdsViewControler;
.super Ljava/lang/Object;
.source "RdsViewControler.java"


# instance fields
.field private afEnable:Z

.field private isRdsAnnouncementPlaying:Z

.field private ivAf:Landroid/widget/ImageView;

.field private ivTa:Landroid/widget/ImageView;

.field private ivTp:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mRdsSettingsDialog:Lcom/yftech/libradio/dialog/RdsSettingsDialog;

.field private mRootView:Landroid/view/View;

.field private mRtInfoDialog:Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;

.field private mTpEnable:Z

.field private mTvChannel:Landroid/widget/TextView;

.field private mTvChannelTag:Landroid/widget/TextView;

.field private ptyEnable:Z

.field private ptyStrs:[Ljava/lang/String;

.field private radioMainFragment:Lcom/yftech/libradio/RadioMainFragment;

.field private rdsDataManagerCallback:Lcom/yftech/libradio/rds/RdsDataManager$RdsDataManagerCallback;

.field private rdsEnable:Z

.field private tvPs:Landroid/widget/TextView;

.field private tvPty:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/yftech/libradio/RadioMainFragment;Landroid/view/View;)V
    .locals 4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->mHandler:Landroid/os/Handler;

    .line 323
    new-instance v0, Lcom/yftech/libradio/rds/RdsViewControler$3;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/rds/RdsViewControler$3;-><init>(Lcom/yftech/libradio/rds/RdsViewControler;)V

    iput-object v0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->rdsDataManagerCallback:Lcom/yftech/libradio/rds/RdsDataManager$RdsDataManagerCallback;

    .line 51
    iput-object p1, p0, Lcom/yftech/libradio/rds/RdsViewControler;->radioMainFragment:Lcom/yftech/libradio/RadioMainFragment;

    .line 52
    iput-object p2, p0, Lcom/yftech/libradio/rds/RdsViewControler;->mRootView:Landroid/view/View;

    .line 53
    invoke-virtual {p1}, Lcom/yftech/libradio/RadioMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/yftech/libradio/R$array;->dab_ptys:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->ptyStrs:[Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->mRootView:Landroid/view/View;

    sget v1, Lcom/yftech/libradio/R$id;->iv_rds_set:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/yftech/libradio/Utils;->isRdsPresent()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->mRootView:Landroid/view/View;

    sget v1, Lcom/yftech/libradio/R$id;->iv_rds_set:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yftech/libradio/rds/RdsViewControler$1;

    invoke-direct {v1, p0, p2}, Lcom/yftech/libradio/rds/RdsViewControler$1;-><init>(Lcom/yftech/libradio/rds/RdsViewControler;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object p2, p0, Lcom/yftech/libradio/rds/RdsViewControler;->mRootView:Landroid/view/View;

    sget v0, Lcom/yftech/libradio/R$id;->iv_ta:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/yftech/libradio/rds/RdsViewControler;->ivTa:Landroid/widget/ImageView;

    .line 66
    iget-object p2, p0, Lcom/yftech/libradio/rds/RdsViewControler;->mRootView:Landroid/view/View;

    sget v0, Lcom/yftech/libradio/R$id;->iv_tp:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/yftech/libradio/rds/RdsViewControler;->ivTp:Landroid/widget/ImageView;

    .line 67
    iget-object p2, p0, Lcom/yftech/libradio/rds/RdsViewControler;->mRootView:Landroid/view/View;

    sget v0, Lcom/yftech/libradio/R$id;->iv_af:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/yftech/libradio/rds/RdsViewControler;->ivAf:Landroid/widget/ImageView;

    .line 68
    iget-object p2, p0, Lcom/yftech/libradio/rds/RdsViewControler;->mRootView:Landroid/view/View;

    sget v0, Lcom/yftech/libradio/R$id;->tv_rds_pty:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/yftech/libradio/rds/RdsViewControler;->tvPty:Landroid/widget/TextView;

    .line 69
    iget-object p2, p0, Lcom/yftech/libradio/rds/RdsViewControler;->mRootView:Landroid/view/View;

    sget v0, Lcom/yftech/libradio/R$id;->tv_channel:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/yftech/libradio/rds/RdsViewControler;->mTvChannel:Landroid/widget/TextView;

    .line 70
    iget-object p2, p0, Lcom/yftech/libradio/rds/RdsViewControler;->mRootView:Landroid/view/View;

    sget v0, Lcom/yftech/libradio/R$id;->tv_channel_tag:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/yftech/libradio/rds/RdsViewControler;->mTvChannelTag:Landroid/widget/TextView;

    .line 71
    iget-object p2, p0, Lcom/yftech/libradio/rds/RdsViewControler;->mRootView:Landroid/view/View;

    sget v0, Lcom/yftech/libradio/R$id;->tv_ps:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/yftech/libradio/rds/RdsViewControler;->tvPs:Landroid/widget/TextView;

    .line 72
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yftech/car/media/radio/CarRadioManager;->getBand()I

    move-result p2

    if-nez p2, :cond_1

    .line 74
    iget-object p2, p0, Lcom/yftech/libradio/rds/RdsViewControler;->mRootView:Landroid/view/View;

    sget v0, Lcom/yftech/libradio/R$id;->layout_rds:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 76
    :cond_1
    iget-object p2, p0, Lcom/yftech/libradio/rds/RdsViewControler;->mRootView:Landroid/view/View;

    sget v0, Lcom/yftech/libradio/R$id;->layout_rds:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 79
    :goto_1
    iget-object p2, p0, Lcom/yftech/libradio/rds/RdsViewControler;->tvPs:Landroid/widget/TextView;

    new-instance v0, Lcom/yftech/libradio/rds/RdsViewControler$2;

    invoke-direct {v0, p0, p1}, Lcom/yftech/libradio/rds/RdsViewControler$2;-><init>(Lcom/yftech/libradio/rds/RdsViewControler;Lcom/yftech/libradio/RadioMainFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    invoke-static {}, Lcom/yftech/libradio/rds/RdsDataManager;->getInstance()Lcom/yftech/libradio/rds/RdsDataManager;

    move-result-object p2

    iget-object v0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->rdsDataManagerCallback:Lcom/yftech/libradio/rds/RdsDataManager$RdsDataManagerCallback;

    invoke-virtual {p2, v0}, Lcom/yftech/libradio/rds/RdsDataManager;->registerObservor(Lcom/yftech/libradio/rds/RdsDataManager$RdsDataManagerCallback;)V

    .line 104
    invoke-static {}, Lcom/yftech/libradio/rds/RdsDataManager;->getInstance()Lcom/yftech/libradio/rds/RdsDataManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yftech/libradio/rds/RdsDataManager;->getRdsInfoList()Ljava/util/Map;

    .line 107
    invoke-static {}, Lcom/yftech/libradio/Utils;->isRdsPresent()Z

    move-result p2

    if-nez p2, :cond_2

    .line 108
    iput-boolean v3, p0, Lcom/yftech/libradio/rds/RdsViewControler;->rdsEnable:Z

    goto :goto_2

    .line 110
    :cond_2
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/yftech/car/media/radio/CarRadioManager;->isRdsCommonStatusEnable(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/yftech/libradio/rds/RdsViewControler;->rdsEnable:Z

    .line 111
    invoke-virtual {p1}, Lcom/yftech/libradio/RadioMainFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "yf_radio_app_data"

    invoke-virtual {p2, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v0, "yf_sp_pty_show"

    invoke-interface {p2, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/yftech/libradio/rds/RdsViewControler;->ptyEnable:Z

    .line 112
    invoke-virtual {p1}, Lcom/yftech/libradio/RadioMainFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "yf_radio_app_data"

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "yf_sp_tp_show"

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/yftech/libradio/rds/RdsViewControler;->mTpEnable:Z

    .line 113
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/yftech/car/media/radio/CarRadioManager;->isRdsCommonStatusEnable(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/yftech/libradio/rds/RdsViewControler;->afEnable:Z

    .line 114
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p1

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Lcom/yftech/car/media/radio/CarRadioManager;->isRdsCommonStatusEnable(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/yftech/libradio/rds/RdsViewControler;->isRdsAnnouncementPlaying:Z

    :goto_2
    return-void
.end method

.method static synthetic access$000(Lcom/yftech/libradio/rds/RdsViewControler;)Lcom/yftech/libradio/dialog/RdsSettingsDialog;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->mRdsSettingsDialog:Lcom/yftech/libradio/dialog/RdsSettingsDialog;

    return-object p0
.end method

.method static synthetic access$002(Lcom/yftech/libradio/rds/RdsViewControler;Lcom/yftech/libradio/dialog/RdsSettingsDialog;)Lcom/yftech/libradio/dialog/RdsSettingsDialog;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/yftech/libradio/rds/RdsViewControler;->mRdsSettingsDialog:Lcom/yftech/libradio/dialog/RdsSettingsDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/yftech/libradio/rds/RdsViewControler;)Landroid/widget/TextView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->tvPs:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/libradio/rds/RdsViewControler;)Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->mRtInfoDialog:Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;

    return-object p0
.end method

.method static synthetic access$202(Lcom/yftech/libradio/rds/RdsViewControler;Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;)Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/yftech/libradio/rds/RdsViewControler;->mRtInfoDialog:Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/yftech/libradio/rds/RdsViewControler;Lcom/yftech/car/media/radio/entity/DataOfRadio;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/yftech/libradio/rds/RdsViewControler;->updateTaTpAf(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V

    return-void
.end method

.method static synthetic access$400(Lcom/yftech/libradio/rds/RdsViewControler;)Landroid/os/Handler;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private updateTaTpAf(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V
    .locals 6

    if-nez p1, :cond_0

    const-string p0, "dataOfRadio is null ---"

    .line 173
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->w(Ljava/lang/String;)V

    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->radioMainFragment:Lcom/yftech/libradio/RadioMainFragment;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->radioMainFragment:Lcom/yftech/libradio/RadioMainFragment;

    invoke-virtual {v0}, Lcom/yftech/libradio/RadioMainFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_9

    .line 181
    :cond_1
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->rdsEnable:Z

    if-eqz v0, :cond_d

    .line 182
    iget-object v0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->mRootView:Landroid/view/View;

    sget v3, Lcom/yftech/libradio/R$id;->layout_rds:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 183
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/CarRadioManager;->getRdsPS()Ljava/lang/String;

    move-result-object v0

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "psString: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, "null"

    goto :goto_0

    :cond_2
    move-object v3, v0

    :goto_0
    invoke-static {v3}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 185
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 186
    iget-object v3, p0, Lcom/yftech/libradio/rds/RdsViewControler;->tvPs:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yftech/libradio/Utils;->convertStationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->tvPs:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->mTvChannel:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->mTvChannelTag:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 191
    :cond_3
    iget-object v0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->tvPs:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->tvPs:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->mTvChannel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->mTvChannelTag:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    :goto_1
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v0

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Lcom/yftech/car/media/radio/CarRadioManager;->isRdsCommonStatusEnable(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->isRdsAnnouncementPlaying:Z

    .line 201
    iget-boolean v0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->isRdsAnnouncementPlaying:Z

    if-eqz v0, :cond_4

    .line 202
    iget-object v0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->tvPty:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->tvPty:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yftech/libradio/rds/RdsViewControler;->radioMainFragment:Lcom/yftech/libradio/RadioMainFragment;

    sget v4, Lcom/yftech/libradio/R$string;->traffic_announcement:I

    invoke-virtual {v3, v4}, Lcom/yftech/libradio/RadioMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yftech/libradio/Utils;->convertStationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 205
    :cond_4
    iget-object v0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->tvPty:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/yftech/libradio/rds/RdsViewControler;->ptyEnable:Z

    if-eqz v3, :cond_5

    move v3, v2

    goto :goto_2

    :cond_5
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->radioMainFragment:Lcom/yftech/libradio/RadioMainFragment;

    invoke-virtual {v0}, Lcom/yftech/libradio/RadioMainFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 207
    iget-object v0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->radioMainFragment:Lcom/yftech/libradio/RadioMainFragment;

    invoke-virtual {v0}, Lcom/yftech/libradio/RadioMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/yftech/libradio/R$string;->radio_unknown:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/car/media/radio/CarRadioManager;->getRdsPty()I

    move-result v3

    .line 209
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pty: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-ltz v3, :cond_6

    .line 210
    iget-object v4, p0, Lcom/yftech/libradio/rds/RdsViewControler;->ptyStrs:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_6

    .line 211
    iget-object v0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->ptyStrs:[Ljava/lang/String;

    aget-object v0, v0, v3

    .line 213
    :cond_6
    iget-object v3, p0, Lcom/yftech/libradio/rds/RdsViewControler;->tvPty:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/yftech/libradio/Utils;->convertStationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_3
    const/4 v0, 0x0

    .line 219
    invoke-static {}, Lcom/yftech/libradio/rds/RdsDataManager;->getInstance()Lcom/yftech/libradio/rds/RdsDataManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/libradio/rds/RdsDataManager;->getRdsInfoList()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 220
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 221
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/yftech/car/media/radio/rds/entity/RdsInfo;

    goto :goto_4

    :cond_8
    const-string p1, "rdsInfoMap is empty ----"

    .line 223
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    :goto_4
    if-eqz v0, :cond_9

    .line 226
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rdsInfo: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0}, Lcom/yftech/car/media/radio/rds/entity/RdsInfo;->isTpValid()Z

    move-result p1

    .line 228
    invoke-virtual {v0}, Lcom/yftech/car/media/radio/rds/entity/RdsInfo;->isAfValid()Z

    move-result v0

    goto :goto_5

    :cond_9
    const-string p1, "rdsInfo is null ----"

    .line 230
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    move p1, v2

    move v0, p1

    .line 232
    :goto_5
    iget-object v3, p0, Lcom/yftech/libradio/rds/RdsViewControler;->ivTa:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/yftech/libradio/rds/RdsViewControler;->isRdsAnnouncementPlaying:Z

    if-eqz v4, :cond_a

    move v4, v2

    goto :goto_6

    :cond_a
    move v4, v1

    :goto_6
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    iget-object v3, p0, Lcom/yftech/libradio/rds/RdsViewControler;->ivTp:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/yftech/libradio/rds/RdsViewControler;->mTpEnable:Z

    if-eqz v4, :cond_b

    if-eqz p1, :cond_b

    move p1, v2

    goto :goto_7

    :cond_b
    move p1, v1

    :goto_7
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 234
    iget-object p1, p0, Lcom/yftech/libradio/rds/RdsViewControler;->ivAf:Landroid/widget/ImageView;

    iget-boolean p0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->afEnable:Z

    if-eqz p0, :cond_c

    if-eqz v0, :cond_c

    move v1, v2

    :cond_c
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    .line 236
    :cond_d
    iget-object p1, p0, Lcom/yftech/libradio/rds/RdsViewControler;->mRootView:Landroid/view/View;

    sget v0, Lcom/yftech/libradio/R$id;->layout_rds:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 237
    iget-object p1, p0, Lcom/yftech/libradio/rds/RdsViewControler;->tvPty:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    iget-object p1, p0, Lcom/yftech/libradio/rds/RdsViewControler;->ivTa:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 239
    iget-object p1, p0, Lcom/yftech/libradio/rds/RdsViewControler;->ivTp:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 240
    iget-object p1, p0, Lcom/yftech/libradio/rds/RdsViewControler;->ivAf:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 241
    iget-object p1, p0, Lcom/yftech/libradio/rds/RdsViewControler;->tvPs:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    iget-object p1, p0, Lcom/yftech/libradio/rds/RdsViewControler;->mTvChannel:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    iget-object p0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->mTvChannelTag:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_8
    return-void

    :cond_e
    :goto_9
    const-string p0, "updateTaTpAf radioMainFragment is null ---"

    .line 177
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->e(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public changeRdsShowStatus()V
    .locals 4

    .line 143
    iget-object v0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->radioMainFragment:Lcom/yftech/libradio/RadioMainFragment;

    invoke-virtual {v0}, Lcom/yftech/libradio/RadioMainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "yf_radio_app_data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "yf_sp_tp_show"

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->mTpEnable:Z

    .line 144
    iget-object v0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->radioMainFragment:Lcom/yftech/libradio/RadioMainFragment;

    invoke-virtual {v0}, Lcom/yftech/libradio/RadioMainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "yf_radio_app_data"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "yf_sp_pty_show"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->ptyEnable:Z

    .line 145
    iget-boolean v0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->mTpEnable:Z

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->ivTp:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    :cond_0
    iget-boolean v0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->isRdsAnnouncementPlaying:Z

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->tvPty:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->tvPty:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->radioMainFragment:Lcom/yftech/libradio/RadioMainFragment;

    sget v1, Lcom/yftech/libradio/R$string;->traffic_announcement:I

    invoke-virtual {p0, v1}, Lcom/yftech/libradio/RadioMainFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/libradio/Utils;->convertStationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->tvPty:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/yftech/libradio/rds/RdsViewControler;->ptyEnable:Z

    if-eqz v3, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->radioMainFragment:Lcom/yftech/libradio/RadioMainFragment;

    invoke-virtual {v0}, Lcom/yftech/libradio/RadioMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/yftech/libradio/R$string;->radio_unknown:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/media/radio/CarRadioManager;->getRdsPty()I

    move-result v1

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pty: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-ltz v1, :cond_3

    .line 157
    iget-object v2, p0, Lcom/yftech/libradio/rds/RdsViewControler;->ptyStrs:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 158
    iget-object v0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->ptyStrs:[Ljava/lang/String;

    aget-object v0, v0, v1

    .line 160
    :cond_3
    iget-object p0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->tvPty:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/yftech/libradio/Utils;->convertStationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public hideRdsRtDialog()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->mRtInfoDialog:Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->mRtInfoDialog:Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;

    invoke-virtual {v0}, Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;->dismiss()V

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->mRtInfoDialog:Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;

    :cond_0
    return-void
.end method

.method public hideRdsSettingsDialog()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->mRdsSettingsDialog:Lcom/yftech/libradio/dialog/RdsSettingsDialog;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->mRdsSettingsDialog:Lcom/yftech/libradio/dialog/RdsSettingsDialog;

    invoke-virtual {v0}, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->hide()V

    const/4 v0, 0x0

    .line 125
    iput-object v0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->mRdsSettingsDialog:Lcom/yftech/libradio/dialog/RdsSettingsDialog;

    :cond_0
    return-void
.end method

.method public onRdsCommonStatusChange(IZ)V
    .locals 2

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    iput-boolean p2, p0, Lcom/yftech/libradio/rds/RdsViewControler;->isRdsAnnouncementPlaying:Z

    .line 265
    iget-boolean p1, p0, Lcom/yftech/libradio/rds/RdsViewControler;->isRdsAnnouncementPlaying:Z

    if-eqz p1, :cond_3

    const-string p1, "rds announcement start play ---"

    .line 266
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 267
    iget-object p1, p0, Lcom/yftech/libradio/rds/RdsViewControler;->tvPty:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/yftech/libradio/rds/RdsViewControler;->radioMainFragment:Lcom/yftech/libradio/RadioMainFragment;

    sget v0, Lcom/yftech/libradio/R$string;->traffic_announcement:I

    invoke-virtual {p2, v0}, Lcom/yftech/libradio/RadioMainFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/yftech/libradio/Utils;->convertStationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 260
    :cond_1
    iput-boolean p2, p0, Lcom/yftech/libradio/rds/RdsViewControler;->afEnable:Z

    goto :goto_0

    .line 257
    :cond_2
    iput-boolean p2, p0, Lcom/yftech/libradio/rds/RdsViewControler;->rdsEnable:Z

    .line 271
    :cond_3
    :goto_0
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/CarRadioManager;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object p1

    .line 272
    invoke-direct {p0, p1}, Lcom/yftech/libradio/rds/RdsViewControler;->updateTaTpAf(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V

    return-void
.end method

.method public onRdsCommonStringChange(ILjava/lang/String;)V
    .locals 3

    .line 281
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "value is empty ----"

    .line 282
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void

    .line 285
    :cond_0
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/CarRadioManager;->getBand()I

    move-result v0

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "band: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const/16 v1, 0x8

    if-ne p1, v1, :cond_2

    if-nez v0, :cond_2

    .line 288
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 289
    iget-object p1, p0, Lcom/yftech/libradio/rds/RdsViewControler;->tvPs:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/yftech/libradio/Utils;->convertStationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object p1, p0, Lcom/yftech/libradio/rds/RdsViewControler;->tvPs:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    iget-object p1, p0, Lcom/yftech/libradio/rds/RdsViewControler;->mTvChannel:Landroid/widget/TextView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 292
    iget-object p0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->mTvChannelTag:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 294
    :cond_1
    iget-object p1, p0, Lcom/yftech/libradio/rds/RdsViewControler;->tvPs:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object p1, p0, Lcom/yftech/libradio/rds/RdsViewControler;->tvPs:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 296
    iget-object p1, p0, Lcom/yftech/libradio/rds/RdsViewControler;->mTvChannel:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    iget-object p0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->mTvChannelTag:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onRdsPtyStatusChange(I)V
    .locals 3

    .line 307
    iget-boolean v0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->isRdsAnnouncementPlaying:Z

    if-eqz v0, :cond_0

    const-string p0, "rds announcement is playing "

    .line 308
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void

    .line 311
    :cond_0
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/CarRadioManager;->getBand()I

    move-result v0

    .line 312
    iget-object v1, p0, Lcom/yftech/libradio/rds/RdsViewControler;->tvPty:Landroid/widget/TextView;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->ptyEnable:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->radioMainFragment:Lcom/yftech/libradio/RadioMainFragment;

    sget v1, Lcom/yftech/libradio/R$string;->radio_unknown:I

    invoke-virtual {v0, v1}, Lcom/yftech/libradio/RadioMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 314
    iget-object v1, p0, Lcom/yftech/libradio/rds/RdsViewControler;->radioMainFragment:Lcom/yftech/libradio/RadioMainFragment;

    invoke-virtual {v1}, Lcom/yftech/libradio/RadioMainFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 315
    iget-object v1, p0, Lcom/yftech/libradio/rds/RdsViewControler;->radioMainFragment:Lcom/yftech/libradio/RadioMainFragment;

    invoke-virtual {v1}, Lcom/yftech/libradio/RadioMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yftech/libradio/R$array;->dab_ptys:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    if-ltz p1, :cond_2

    .line 316
    array-length v2, v1

    if-ge p1, v2, :cond_2

    .line 317
    aget-object v0, v1, p1

    .line 320
    :cond_2
    iget-object p0, p0, Lcom/yftech/libradio/rds/RdsViewControler;->tvPty:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/yftech/libradio/Utils;->convertStationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateFreq(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V
    .locals 0

    .line 165
    invoke-direct {p0, p1}, Lcom/yftech/libradio/rds/RdsViewControler;->updateTaTpAf(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V

    return-void
.end method
