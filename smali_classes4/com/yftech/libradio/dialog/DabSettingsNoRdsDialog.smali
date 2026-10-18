.class public Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;
.super Landroid/app/Dialog;
.source "DabSettingsNoRdsDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementSwitch;,
        Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;,
        Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchListCallback;,
        Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;,
        Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementRvAdapter;,
        Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchViewHolder;,
        Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchRvAdapter;
    }
.end annotation


# instance fields
.field private allDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;",
            ">;"
        }
    .end annotation
.end field

.field private dabRadioControlCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

.field private mHandler:Landroid/os/Handler;

.field private rvAdapter:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchRvAdapter;

.field private rvSwitchList:Landroidx/recyclerview/widget/RecyclerView;

.field private switchDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;",
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

    .line 45
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->allDataList:Ljava/util/List;

    .line 42
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->switchDataList:Ljava/util/List;

    .line 43
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->mHandler:Landroid/os/Handler;

    .line 56
    new-instance p1, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;

    invoke-direct {p1, p0}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;-><init>(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;)V

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->dabRadioControlCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->allDataList:Ljava/util/List;

    .line 42
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->switchDataList:Ljava/util/List;

    .line 43
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->mHandler:Landroid/os/Handler;

    .line 56
    new-instance p1, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;

    invoke-direct {p1, p0}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;-><init>(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;)V

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->dabRadioControlCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

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

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->allDataList:Ljava/util/List;

    .line 42
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->switchDataList:Ljava/util/List;

    .line 43
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->mHandler:Landroid/os/Handler;

    .line 56
    new-instance p1, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;

    invoke-direct {p1, p0}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;-><init>(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;)V

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->dabRadioControlCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->allDataList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->switchDataList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;)Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchRvAdapter;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->rvAdapter:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchRvAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;IZ)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->turnSubAnnounceSwitch(IZ)V

    return-void
.end method

.method private turnSubAnnounceSwitch(IZ)V
    .locals 2

    .line 227
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getEnableAnnounce()Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 229
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

    .line 230
    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->getAnnotype()I

    move-result p0

    or-int/2addr p0, p1

    .line 231
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object p1

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isNoOff()Z

    move-result p2

    invoke-virtual {p1, p2, p0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->setEnableAnnounce(ZI)V

    goto :goto_0

    .line 233
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

    .line 234
    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->getAnnotype()I

    move-result p2

    xor-int/2addr p1, p2

    if-nez p1, :cond_1

    .line 236
    sget p1, Lcom/yftech/libradio/R$string;->announcement_set_tips_least_one_need:I

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/media/common/util/ToastUtils;->showNormalMessage(II)V

    .line 237
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->rvAdapter:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchRvAdapter;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchRvAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 239
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

    .line 100
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 101
    sget p1, Lcom/yftech/libradio/R$layout;->dialog_dab_settings:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->setContentView(I)V

    .line 102
    sget p1, Lcom/yftech/libradio/R$id;->tv_control:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->tvBack:Landroid/widget/TextView;

    .line 103
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->tvBack:Landroid/widget/TextView;

    new-instance v0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$2;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$2;-><init>(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    sget p1, Lcom/yftech/libradio/R$id;->rv_dab_settings_switch_list:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->rvSwitchList:Landroidx/recyclerview/widget/RecyclerView;

    .line 110
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->rvSwitchList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 111
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getEnableAnnounce()Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;

    move-result-object p1

    .line 112
    new-instance v0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/yftech/libradio/R$string;->dab_announcement:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isNoOff()Z

    move-result v3

    invoke-direct {v0, v1, v3}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;-><init>(Ljava/lang/String;Z)V

    .line 113
    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->allDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->switchDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate,enableAnnounce isNoOff: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isNoOff()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,annotype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->getAnnotype()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 116
    new-instance v0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementSwitch;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/yftech/libradio/R$string;->dab_announcement1:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isAnnotype(I)Z

    move-result v2

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isNoOff()Z

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementSwitch;-><init>(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;Ljava/lang/String;ZZ)V

    .line 117
    new-instance v1, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementSwitch;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/yftech/libradio/R$string;->dab_announcement2:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isAnnotype(I)Z

    move-result v3

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isNoOff()Z

    move-result v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementSwitch;-><init>(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;Ljava/lang/String;ZZ)V

    .line 118
    new-instance v2, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementSwitch;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/yftech/libradio/R$string;->dab_announcement3:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isAnnotype(I)Z

    move-result v4

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isNoOff()Z

    move-result v5

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementSwitch;-><init>(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;Ljava/lang/String;ZZ)V

    .line 119
    new-instance v3, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementSwitch;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/yftech/libradio/R$string;->dab_announcement4:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {p1, v5}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isAnnotype(I)Z

    move-result v5

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isNoOff()Z

    move-result v6

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementSwitch;-><init>(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;Ljava/lang/String;ZZ)V

    .line 120
    new-instance v4, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementSwitch;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/yftech/libradio/R$string;->dab_announcement5:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-virtual {p1, v6}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isAnnotype(I)Z

    move-result v6

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isNoOff()Z

    move-result v7

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementSwitch;-><init>(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;Ljava/lang/String;ZZ)V

    .line 121
    new-instance v5, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementSwitch;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/yftech/libradio/R$string;->dab_announcement6:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {p1, v7}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isAnnotype(I)Z

    move-result v7

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isNoOff()Z

    move-result v8

    invoke-direct {v5, p0, v6, v7, v8}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementSwitch;-><init>(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;Ljava/lang/String;ZZ)V

    .line 122
    new-instance v6, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementSwitch;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/yftech/libradio/R$string;->dab_announcement7:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x40

    invoke-virtual {p1, v8}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isAnnotype(I)Z

    move-result v8

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isNoOff()Z

    move-result v9

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementSwitch;-><init>(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;Ljava/lang/String;ZZ)V

    .line 123
    new-instance v7, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementSwitch;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/yftech/libradio/R$string;->dab_announcement8:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {p1, v9}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isAnnotype(I)Z

    move-result v9

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isNoOff()Z

    move-result v10

    invoke-direct {v7, p0, v8, v9, v10}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementSwitch;-><init>(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;Ljava/lang/String;ZZ)V

    .line 124
    new-instance v8, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementSwitch;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/yftech/libradio/R$string;->dab_announcement9:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x100

    invoke-virtual {p1, v10}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isAnnotype(I)Z

    move-result v10

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isNoOff()Z

    move-result v11

    invoke-direct {v8, p0, v9, v10, v11}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementSwitch;-><init>(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;Ljava/lang/String;ZZ)V

    .line 125
    new-instance v9, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementSwitch;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->getContext()Landroid/content/Context;

    move-result-object v10

    sget v11, Lcom/yftech/libradio/R$string;->dab_announcement10:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x200

    invoke-virtual {p1, v11}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isAnnotype(I)Z

    move-result v11

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isNoOff()Z

    move-result v12

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementSwitch;-><init>(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;Ljava/lang/String;ZZ)V

    .line 126
    new-instance v10, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementSwitch;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->getContext()Landroid/content/Context;

    move-result-object v11

    sget v12, Lcom/yftech/libradio/R$string;->dab_announcement11:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x400

    invoke-virtual {p1, v12}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isAnnotype(I)Z

    move-result v12

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isNoOff()Z

    move-result v13

    invoke-direct {v10, p0, v11, v12, v13}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementSwitch;-><init>(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;Ljava/lang/String;ZZ)V

    .line 127
    iget-object v11, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->allDataList:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->allDataList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->allDataList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->allDataList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->allDataList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->allDataList:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->allDataList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->allDataList:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->allDataList:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->allDataList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->allDataList:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchRvAdapter;

    new-instance v1, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$3;

    invoke-direct {v1, p0}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$3;-><init>(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;)V

    invoke-direct {v0, v1}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchRvAdapter;-><init>(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchListCallback;)V

    iput-object v0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->rvAdapter:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchRvAdapter;

    .line 191
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->rvAdapter:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchRvAdapter;

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isNoOff()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->allDataList:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->switchDataList:Ljava/util/List;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchRvAdapter;->setDataList(Ljava/util/List;)V

    .line 192
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->rvSwitchList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->rvAdapter:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchRvAdapter;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 203
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 204
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->dabRadioControlCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->registerRadioControlCallback(Lcom/yftech/car/media/radio/dab/CarDabRadioManager$OnDabRadioControlListener;)V

    const-string v0, "onStart()"

    .line 205
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x106000d

    .line 208
    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 209
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    .line 210
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/16 v1, 0x436

    .line 211
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v1, 0x2a6

    .line 212
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const v1, 0x800033

    .line 213
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x1b1

    .line 214
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    const/16 v1, 0x15

    .line 215
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 216
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 197
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 198
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->dabRadioControlCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->unregisterRadioControlCallback(Lcom/yftech/car/media/radio/dab/CarDabRadioManager$OnDabRadioControlListener;)V

    return-void
.end method
