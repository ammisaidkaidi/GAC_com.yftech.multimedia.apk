.class public Lcom/yftech/libradio/dialog/DabSettingsDialog;
.super Landroid/app/Dialog;
.source "DabSettingsDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementSwitch;,
        Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;,
        Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchListCallback;,
        Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;,
        Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementRvAdapter;,
        Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchViewHolder;,
        Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter;
    }
.end annotation


# instance fields
.field private allDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;",
            ">;"
        }
    .end annotation
.end field

.field private dabRadioControlCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

.field private mHandler:Landroid/os/Handler;

.field private rvAdapter:Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter;

.field private rvSwitchList:Landroidx/recyclerview/widget/RecyclerView;

.field private switchDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;",
            ">;"
        }
    .end annotation
.end field

.field private tvBack:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 42
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog;->allDataList:Ljava/util/List;

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog;->switchDataList:Ljava/util/List;

    .line 40
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog;->mHandler:Landroid/os/Handler;

    .line 53
    new-instance p1, Lcom/yftech/libradio/dialog/DabSettingsDialog$1;

    invoke-direct {p1, p0}, Lcom/yftech/libradio/dialog/DabSettingsDialog$1;-><init>(Lcom/yftech/libradio/dialog/DabSettingsDialog;)V

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog;->dabRadioControlCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog;->allDataList:Ljava/util/List;

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog;->switchDataList:Ljava/util/List;

    .line 40
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog;->mHandler:Landroid/os/Handler;

    .line 53
    new-instance p1, Lcom/yftech/libradio/dialog/DabSettingsDialog$1;

    invoke-direct {p1, p0}, Lcom/yftech/libradio/dialog/DabSettingsDialog$1;-><init>(Lcom/yftech/libradio/dialog/DabSettingsDialog;)V

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog;->dabRadioControlCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/DialogInterface$OnCancelListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog;->allDataList:Ljava/util/List;

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog;->switchDataList:Ljava/util/List;

    .line 40
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog;->mHandler:Landroid/os/Handler;

    .line 53
    new-instance p1, Lcom/yftech/libradio/dialog/DabSettingsDialog$1;

    invoke-direct {p1, p0}, Lcom/yftech/libradio/dialog/DabSettingsDialog$1;-><init>(Lcom/yftech/libradio/dialog/DabSettingsDialog;)V

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog;->dabRadioControlCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/libradio/dialog/DabSettingsDialog;)Ljava/util/List;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog;->switchDataList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/libradio/dialog/DabSettingsDialog;)Ljava/util/List;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog;->allDataList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/libradio/dialog/DabSettingsDialog;)Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog;->rvAdapter:Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/libradio/dialog/DabSettingsDialog;)Landroid/os/Handler;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/libradio/dialog/DabSettingsDialog;IZ)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->turnSubAnnounceSwitch(IZ)V

    return-void
.end method

.method private turnSubAnnounceSwitch(IZ)V
    .locals 2

    .line 254
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getEnableAnnounce()Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 256
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "turnON AnnounceSwitch,announceTpye: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ,enableAnnounce annotype: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->getAnnotype()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->getAnnotype()I

    move-result p0

    or-int/2addr p0, p1

    .line 258
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object p1

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isNoOff()Z

    move-result p2

    invoke-virtual {p1, p2, p0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->setEnableAnnounce(ZI)V

    goto :goto_0

    .line 260
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "turnOFF AnnounceSwitch,announceTpye: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,enableAnnounce annotype: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->getAnnotype()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->getAnnotype()I

    move-result p2

    xor-int/2addr p1, p2

    if-nez p1, :cond_1

    .line 263
    sget p1, Lcom/yftech/libradio/R$string;->announcement_set_tips_least_one_need:I

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/media/common/util/ToastUtils;->showNormalMessage(II)V

    .line 264
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog;->rvAdapter:Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 266
    :cond_1
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object p0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isNoOff()Z

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->setEnableAnnounce(ZI)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    .line 117
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 118
    sget p1, Lcom/yftech/libradio/R$layout;->dialog_dab_settings:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->setContentView(I)V

    .line 119
    sget p1, Lcom/yftech/libradio/R$id;->tv_control:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog;->tvBack:Landroid/widget/TextView;

    .line 120
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog;->tvBack:Landroid/widget/TextView;

    new-instance v0, Lcom/yftech/libradio/dialog/DabSettingsDialog$2;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dialog/DabSettingsDialog$2;-><init>(Lcom/yftech/libradio/dialog/DabSettingsDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    sget p1, Lcom/yftech/libradio/R$id;->rv_dab_settings_switch_list:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog;->rvSwitchList:Landroidx/recyclerview/widget/RecyclerView;

    .line 127
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog;->rvSwitchList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 128
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate,servicefollow: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getEnableSerFollow(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " ,servicefollow sl: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getEnableSerFollow(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 129
    new-instance p1, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/yftech/libradio/R$string;->dab_service_following:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getEnableSerFollow(I)Z

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;-><init>(Ljava/lang/String;Z)V

    .line 131
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getEnableAnnounce()Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;

    move-result-object v0

    .line 132
    new-instance v1, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lcom/yftech/libradio/R$string;->dab_announcement:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isNoOff()Z

    move-result v4

    invoke-direct {v1, v2, v4}, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;-><init>(Ljava/lang/String;Z)V

    .line 133
    iget-object v2, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog;->allDataList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v2, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog;->allDataList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v2, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog;->switchDataList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog;->switchDataList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate,enableAnnounce isNoOff: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isNoOff()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,annotype: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->getAnnotype()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 139
    new-instance p1, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementSwitch;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/yftech/libradio/R$string;->dab_announcement1:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isAnnotype(I)Z

    move-result v2

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isNoOff()Z

    move-result v3

    invoke-direct {p1, p0, v1, v2, v3}, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementSwitch;-><init>(Lcom/yftech/libradio/dialog/DabSettingsDialog;Ljava/lang/String;ZZ)V

    .line 140
    new-instance v1, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementSwitch;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/yftech/libradio/R$string;->dab_announcement2:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isAnnotype(I)Z

    move-result v3

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isNoOff()Z

    move-result v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementSwitch;-><init>(Lcom/yftech/libradio/dialog/DabSettingsDialog;Ljava/lang/String;ZZ)V

    .line 141
    new-instance v2, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementSwitch;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/yftech/libradio/R$string;->dab_announcement3:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isAnnotype(I)Z

    move-result v4

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isNoOff()Z

    move-result v5

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementSwitch;-><init>(Lcom/yftech/libradio/dialog/DabSettingsDialog;Ljava/lang/String;ZZ)V

    .line 142
    new-instance v3, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementSwitch;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/yftech/libradio/R$string;->dab_announcement4:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isAnnotype(I)Z

    move-result v5

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isNoOff()Z

    move-result v6

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementSwitch;-><init>(Lcom/yftech/libradio/dialog/DabSettingsDialog;Ljava/lang/String;ZZ)V

    .line 143
    new-instance v4, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementSwitch;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/yftech/libradio/R$string;->dab_announcement5:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-virtual {v0, v6}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isAnnotype(I)Z

    move-result v6

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isNoOff()Z

    move-result v7

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementSwitch;-><init>(Lcom/yftech/libradio/dialog/DabSettingsDialog;Ljava/lang/String;ZZ)V

    .line 144
    new-instance v5, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementSwitch;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/yftech/libradio/R$string;->dab_announcement6:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v0, v7}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isAnnotype(I)Z

    move-result v7

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isNoOff()Z

    move-result v8

    invoke-direct {v5, p0, v6, v7, v8}, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementSwitch;-><init>(Lcom/yftech/libradio/dialog/DabSettingsDialog;Ljava/lang/String;ZZ)V

    .line 145
    new-instance v6, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementSwitch;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/yftech/libradio/R$string;->dab_announcement7:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x40

    invoke-virtual {v0, v8}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isAnnotype(I)Z

    move-result v8

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isNoOff()Z

    move-result v9

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementSwitch;-><init>(Lcom/yftech/libradio/dialog/DabSettingsDialog;Ljava/lang/String;ZZ)V

    .line 146
    new-instance v7, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementSwitch;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/yftech/libradio/R$string;->dab_announcement8:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v0, v9}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isAnnotype(I)Z

    move-result v9

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isNoOff()Z

    move-result v10

    invoke-direct {v7, p0, v8, v9, v10}, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementSwitch;-><init>(Lcom/yftech/libradio/dialog/DabSettingsDialog;Ljava/lang/String;ZZ)V

    .line 147
    new-instance v8, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementSwitch;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/yftech/libradio/R$string;->dab_announcement9:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x100

    invoke-virtual {v0, v10}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isAnnotype(I)Z

    move-result v10

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isNoOff()Z

    move-result v11

    invoke-direct {v8, p0, v9, v10, v11}, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementSwitch;-><init>(Lcom/yftech/libradio/dialog/DabSettingsDialog;Ljava/lang/String;ZZ)V

    .line 148
    new-instance v9, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementSwitch;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v10

    sget v11, Lcom/yftech/libradio/R$string;->dab_announcement10:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x200

    invoke-virtual {v0, v11}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isAnnotype(I)Z

    move-result v11

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isNoOff()Z

    move-result v12

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementSwitch;-><init>(Lcom/yftech/libradio/dialog/DabSettingsDialog;Ljava/lang/String;ZZ)V

    .line 149
    new-instance v10, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementSwitch;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v11

    sget v12, Lcom/yftech/libradio/R$string;->dab_announcement11:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x400

    invoke-virtual {v0, v12}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isAnnotype(I)Z

    move-result v12

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isNoOff()Z

    move-result v13

    invoke-direct {v10, p0, v11, v12, v13}, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementSwitch;-><init>(Lcom/yftech/libradio/dialog/DabSettingsDialog;Ljava/lang/String;ZZ)V

    .line 150
    iget-object v11, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog;->allDataList:Ljava/util/List;

    invoke-interface {v11, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog;->allDataList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog;->allDataList:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog;->allDataList:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog;->allDataList:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog;->allDataList:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog;->allDataList:Ljava/util/List;

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog;->allDataList:Ljava/util/List;

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog;->allDataList:Ljava/util/List;

    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog;->allDataList:Ljava/util/List;

    invoke-interface {p1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog;->allDataList:Ljava/util/List;

    invoke-interface {p1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance p1, Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter;

    new-instance v1, Lcom/yftech/libradio/dialog/DabSettingsDialog$3;

    invoke-direct {v1, p0}, Lcom/yftech/libradio/dialog/DabSettingsDialog$3;-><init>(Lcom/yftech/libradio/dialog/DabSettingsDialog;)V

    invoke-direct {p1, v1}, Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter;-><init>(Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchListCallback;)V

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog;->rvAdapter:Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter;

    .line 218
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog;->rvAdapter:Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter;

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isNoOff()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog;->allDataList:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog;->switchDataList:Ljava/util/List;

    :goto_0
    invoke-virtual {p1, v0}, Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter;->setDataList(Ljava/util/List;)V

    .line 219
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog;->rvSwitchList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog;->rvAdapter:Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 230
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 231
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog;->dabRadioControlCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->registerRadioControlCallback(Lcom/yftech/car/media/radio/dab/CarDabRadioManager$OnDabRadioControlListener;)V

    const-string v0, "onStart()"

    .line 232
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x106000d

    .line 235
    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 236
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    .line 237
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/16 v1, 0x436

    .line 238
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v1, 0x2a6

    .line 239
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const v1, 0x800033

    .line 240
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x1b1

    .line 241
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    const/16 v1, 0x15

    .line 242
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 243
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 224
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 225
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog;->dabRadioControlCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->unregisterRadioControlCallback(Lcom/yftech/car/media/radio/dab/CarDabRadioManager$OnDabRadioControlListener;)V

    return-void
.end method
