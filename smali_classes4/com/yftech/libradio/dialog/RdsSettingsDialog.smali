.class public Lcom/yftech/libradio/dialog/RdsSettingsDialog;
.super Landroid/app/Dialog;
.source "RdsSettingsDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;,
        Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchListCallback;,
        Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder;,
        Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchRvAdapter;
    }
.end annotation


# static fields
.field public static final ACTION_RDS_SETTINGS:Ljava/lang/String; = "yf.action.rds.settings"

.field public static final DEFUALT_VALUE_PTY:Z = false

.field public static final DEFUALT_VALUE_TP:Z = true

.field public static final EXTR_KEY_PTY_SHOW:Ljava/lang/String; = "extr_pty_show"

.field public static final EXTR_KEY_TP_SHOW:Ljava/lang/String; = "extr_tp_show"

.field public static final SP_KEY_PTY_SHOW:Ljava/lang/String; = "yf_sp_pty_show"

.field public static final SP_KEY_TP_SHOW:Ljava/lang/String; = "yf_sp_tp_show"


# instance fields
.field private carRadioControlCallback:Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;

.field private ivBack:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private rvAdapter:Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchRvAdapter;

.field private rvSwitchList:Landroidx/recyclerview/widget/RecyclerView;

.field private switchDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 67
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->switchDataList:Ljava/util/List;

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->mHandler:Landroid/os/Handler;

    .line 81
    new-instance v0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$1;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$1;-><init>(Lcom/yftech/libradio/dialog/RdsSettingsDialog;)V

    iput-object v0, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->carRadioControlCallback:Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;

    .line 68
    iput-object p1, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 63
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->switchDataList:Ljava/util/List;

    .line 64
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->mHandler:Landroid/os/Handler;

    .line 81
    new-instance p2, Lcom/yftech/libradio/dialog/RdsSettingsDialog$1;

    invoke-direct {p2, p0}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$1;-><init>(Lcom/yftech/libradio/dialog/RdsSettingsDialog;)V

    iput-object p2, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->carRadioControlCallback:Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;

    .line 73
    iput-object p1, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->mContext:Landroid/content/Context;

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

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 63
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->switchDataList:Ljava/util/List;

    .line 64
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->mHandler:Landroid/os/Handler;

    .line 81
    new-instance p2, Lcom/yftech/libradio/dialog/RdsSettingsDialog$1;

    invoke-direct {p2, p0}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$1;-><init>(Lcom/yftech/libradio/dialog/RdsSettingsDialog;)V

    iput-object p2, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->carRadioControlCallback:Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;

    .line 78
    iput-object p1, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/libradio/dialog/RdsSettingsDialog;)Ljava/util/List;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->switchDataList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/libradio/dialog/RdsSettingsDialog;)Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchRvAdapter;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->rvAdapter:Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchRvAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/libradio/dialog/RdsSettingsDialog;)Landroid/os/Handler;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/libradio/dialog/RdsSettingsDialog;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->rvSwitchList:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/yftech/libradio/dialog/RdsSettingsDialog;Ljava/lang/String;Z)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->saveSharedRadioData(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/yftech/libradio/dialog/RdsSettingsDialog;)Landroid/content/Context;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getSharedRadioData(Ljava/lang/String;Z)Z
    .locals 2

    .line 310
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "yf_radio_app_data"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private saveSharedRadioData(Ljava/lang/String;Z)V
    .locals 2

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveSharedRadioData() key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "yf_radio_app_data"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 113
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 114
    sget p1, Lcom/yftech/libradio/R$layout;->dialog_rds_settings:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->setContentView(I)V

    .line 115
    sget p1, Lcom/yftech/libradio/R$id;->tv_control:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$2;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$2;-><init>(Lcom/yftech/libradio/dialog/RdsSettingsDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    sget p1, Lcom/yftech/libradio/R$id;->rv_rds_settings_switch_list:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->rvSwitchList:Landroidx/recyclerview/widget/RecyclerView;

    .line 122
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->rvSwitchList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 123
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/yftech/car/media/radio/CarRadioManager;->isRdsCommonStatusEnable(I)Z

    move-result p1

    .line 124
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/yftech/car/media/radio/CarRadioManager;->isRdsCommonStatusEnable(I)Z

    move-result v0

    .line 125
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/yftech/car/media/radio/CarRadioManager;->isRdsCommonStatusEnable(I)Z

    move-result v1

    .line 126
    new-instance v4, Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/yftech/libradio/R$string;->rds_settings_switch:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p1, v3}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;-><init>(Ljava/lang/String;ZZ)V

    .line 127
    new-instance p1, Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/yftech/libradio/R$string;->rds_settings_pty_show:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "yf_sp_pty_show"

    invoke-direct {p0, v6, v2}, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->getSharedRadioData(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v4}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;->access$300(Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;)Z

    move-result v6

    invoke-direct {p1, v5, v2, v6}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;-><init>(Ljava/lang/String;ZZ)V

    .line 128
    new-instance v2, Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/yftech/libradio/R$string;->rds_settings_ta:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;->access$300(Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;)Z

    move-result v6

    invoke-direct {v2, v5, v0, v6}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;-><init>(Ljava/lang/String;ZZ)V

    .line 129
    new-instance v0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/yftech/libradio/R$string;->rds_settings_tp:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "yf_sp_tp_show"

    invoke-direct {p0, v6, v3}, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->getSharedRadioData(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v4}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;->access$300(Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;)Z

    move-result v6

    invoke-direct {v0, v5, v3, v6}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;-><init>(Ljava/lang/String;ZZ)V

    .line 130
    new-instance v3, Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/yftech/libradio/R$string;->rds_settings_af:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;->access$300(Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;)Z

    move-result v6

    invoke-direct {v3, v5, v1, v6}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;-><init>(Ljava/lang/String;ZZ)V

    .line 132
    iget-object v1, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->switchDataList:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v1, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->switchDataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->switchDataList:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->switchDataList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->switchDataList:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance p1, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchRvAdapter;

    new-instance v0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$3;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$3;-><init>(Lcom/yftech/libradio/dialog/RdsSettingsDialog;)V

    invoke-direct {p1, v0}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchRvAdapter;-><init>(Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchListCallback;)V

    iput-object p1, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->rvAdapter:Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchRvAdapter;

    .line 172
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->rvAdapter:Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchRvAdapter;

    iget-object v0, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->switchDataList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchRvAdapter;->setDataList(Ljava/util/List;)V

    .line 173
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->rvSwitchList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->rvAdapter:Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchRvAdapter;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 184
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 185
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    iget-object v0, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->carRadioControlCallback:Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;

    invoke-static {v0}, Lcom/yftech/car/media/radio/CarRadioManager;->registerRadioControlCallback(Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;)V

    const-string v0, "onStart()"

    .line 186
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x106000d

    .line 189
    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 190
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    .line 191
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/16 v1, 0x436

    .line 192
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v1, 0x2a6

    .line 193
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const v1, 0x800033

    .line 194
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x1b1

    .line 195
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    const/16 v1, 0x15

    .line 196
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 197
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 178
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 179
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    iget-object p0, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->carRadioControlCallback:Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;

    invoke-static {p0}, Lcom/yftech/car/media/radio/CarRadioManager;->unregisterRadioControlCallback(Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;)V

    return-void
.end method
