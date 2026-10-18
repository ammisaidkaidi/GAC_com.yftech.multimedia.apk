.class public Lcom/yftech/libradio/dialog/RadioSearchingDialog;
.super Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;
.source "RadioSearchingDialog.java"

# interfaces
.implements Lcom/yftech/libradio/view/IRadioSearchingDialogView;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/libradio/dialog/RadioSearchingDialog$CarplayShowUIReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment<",
        "Lcom/yftech/libradio/presenter/RadioSearchingPresenter;",
        ">;",
        "Lcom/yftech/libradio/view/IRadioSearchingDialogView;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final ACTION_CARPLAY_EVENT_SHOW_UI:Ljava/lang/String; = "com.autochips.carplay.event.show_ui"

.field private static final ARG_PARAM1:Ljava/lang/String; = "content"

.field private static final ARG_PARAM2:Ljava/lang/String; = "band"

.field private static final KEY_CARPLAY_EVENT_SHOW_UI:Ljava/lang/String; = "ui_show"


# instance fields
.field private band:I

.field private bluetoothPhoneCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;

.field private content:Ljava/lang/String;

.field private isScanResult:Z

.field private iv_tag:Landroid/widget/ImageView;

.field private mCarPhoneLinkCallback:Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;

.field private final mCarRadioControlCallback:Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;

.field private mCarplayShowUIReceiver:Lcom/yftech/libradio/dialog/RadioSearchingDialog$CarplayShowUIReceiver;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private pb_loading:Landroid/widget/ProgressBar;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private rl_result:Landroid/widget/RelativeLayout;

.field private tv_content:Landroid/widget/TextView;

.field private tv_control:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->isScanResult:Z

    .line 304
    new-instance v0, Lcom/yftech/libradio/dialog/RadioSearchingDialog$2;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dialog/RadioSearchingDialog$2;-><init>(Lcom/yftech/libradio/dialog/RadioSearchingDialog;)V

    iput-object v0, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->mCarRadioControlCallback:Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;

    .line 358
    new-instance v0, Lcom/yftech/libradio/dialog/RadioSearchingDialog$3;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dialog/RadioSearchingDialog$3;-><init>(Lcom/yftech/libradio/dialog/RadioSearchingDialog;)V

    iput-object v0, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->bluetoothPhoneCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;

    .line 401
    new-instance v0, Lcom/yftech/libradio/dialog/RadioSearchingDialog$4;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dialog/RadioSearchingDialog$4;-><init>(Lcom/yftech/libradio/dialog/RadioSearchingDialog;)V

    iput-object v0, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->receiver:Landroid/content/BroadcastReceiver;

    .line 418
    new-instance v0, Lcom/yftech/libradio/dialog/RadioSearchingDialog$5;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dialog/RadioSearchingDialog$5;-><init>(Lcom/yftech/libradio/dialog/RadioSearchingDialog;)V

    iput-object v0, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->mCarPhoneLinkCallback:Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/libradio/dialog/RadioSearchingDialog;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->isScanResult:Z

    return p0
.end method

.method static synthetic access$102(Lcom/yftech/libradio/dialog/RadioSearchingDialog;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->isScanResult:Z

    return p1
.end method

.method static synthetic access$200(Lcom/yftech/libradio/dialog/RadioSearchingDialog;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->band:I

    return p0
.end method

.method static synthetic access$300(Lcom/yftech/libradio/dialog/RadioSearchingDialog;)Landroid/widget/ImageView;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->iv_tag:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/libradio/dialog/RadioSearchingDialog;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->rl_result:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/yftech/libradio/dialog/RadioSearchingDialog;)Landroid/widget/TextView;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->tv_content:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/yftech/libradio/dialog/RadioSearchingDialog;)Landroid/widget/ProgressBar;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->pb_loading:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$700(Lcom/yftech/libradio/dialog/RadioSearchingDialog;)Landroid/widget/TextView;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->tv_control:Landroid/widget/TextView;

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;I)Lcom/yftech/libradio/dialog/RadioSearchingDialog;
    .locals 3

    .line 85
    new-instance v0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;

    invoke-direct {v0}, Lcom/yftech/libradio/dialog/RadioSearchingDialog;-><init>()V

    .line 86
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "content"

    .line 87
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "band"

    .line 88
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 89
    invoke-virtual {v0, v1}, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;
    .locals 0

    .line 50
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->createPresenter()Lcom/yftech/libradio/presenter/RadioSearchingPresenter;

    move-result-object p0

    return-object p0
.end method

.method protected createPresenter()Lcom/yftech/libradio/presenter/RadioSearchingPresenter;
    .locals 1

    .line 81
    new-instance v0, Lcom/yftech/libradio/presenter/RadioSearchingPresenter;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yftech/libradio/presenter/RadioSearchingPresenter;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public dismiss()V
    .locals 0

    .line 238
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->dismiss()V

    .line 239
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/media/radio/CarRadioManager;->stop()I

    return-void
.end method

.method public displaySearchResult(Z)V
    .locals 0

    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 3

    .line 177
    sget v0, Lcom/yftech/libradio/R$id;->pb_loading:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->pb_loading:Landroid/widget/ProgressBar;

    .line 178
    sget v0, Lcom/yftech/libradio/R$id;->tv_control:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->tv_control:Landroid/widget/TextView;

    .line 179
    iget-object v0, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->tv_control:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    sget v0, Lcom/yftech/libradio/R$id;->iv_tag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->iv_tag:Landroid/widget/ImageView;

    .line 182
    sget v0, Lcom/yftech/libradio/R$id;->rl_result:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->rl_result:Landroid/widget/RelativeLayout;

    .line 183
    sget v0, Lcom/yftech/libradio/R$id;->tv_retry:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    sget v0, Lcom/yftech/libradio/R$id;->tv_cancel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    sget v0, Lcom/yftech/libradio/R$id;->tv_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->tv_content:Landroid/widget/TextView;

    .line 187
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->tv_content:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 190
    iput-boolean p1, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->isScanResult:Z

    .line 191
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/yftech/libradio/presenter/RadioSearchingPresenter;

    iget v1, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->band:I

    invoke-virtual {v0, v1}, Lcom/yftech/libradio/presenter/RadioSearchingPresenter;->scanSave(I)V

    .line 193
    invoke-static {}, Lcom/yftech/libradio/RadioMainFragment;->getRadioAutoSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-static {p1}, Lcom/yftech/libradio/RadioMainFragment;->setRadioAutoSearch(Z)V

    .line 195
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/yftech/libradio/dialog/RadioSearchingDialog$1;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dialog/RadioSearchingDialog$1;-><init>(Lcom/yftech/libradio/dialog/RadioSearchingDialog;)V

    const-wide/16 v1, 0x258

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected onBindView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 171
    sget p0, Lcom/yftech/libradio/R$layout;->dialog_radio_searching:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libradio/R$id;->tv_retry:I

    if-ne v0, v1, :cond_0

    .line 211
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->pb_loading:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 212
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->tv_control:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->tv_content:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->iv_tag:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 217
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->rl_result:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 220
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p1

    check-cast p1, Lcom/yftech/libradio/presenter/RadioSearchingPresenter;

    iget p0, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->band:I

    invoke-virtual {p1, p0}, Lcom/yftech/libradio/presenter/RadioSearchingPresenter;->scanSave(I)V

    goto :goto_0

    .line 223
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libradio/R$id;->tv_cancel:I

    if-ne v0, v1, :cond_1

    const-string p1, "tv_cancel dismiss"

    .line 224
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->dismiss()V

    goto :goto_0

    .line 226
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/yftech/libradio/R$id;->tv_control:I

    if-ne p1, v0, :cond_3

    .line 227
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/CarRadioManager;->isScanStatus()Z

    move-result p1

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tv_control isScanStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 230
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/CarRadioManager;->stop()I

    .line 232
    :cond_2
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->dismiss()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 95
    invoke-super {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "content"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->content:Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "band"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->band:I

    .line 100
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate() content:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " band:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->band:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 102
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->mCarRadioControlCallback:Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;

    invoke-static {p1}, Lcom/yftech/car/media/radio/CarRadioManager;->registerRadioControlCallback(Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;)V

    .line 104
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->mIntentFilter:Landroid/content/IntentFilter;

    .line 105
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "com.autochips.carplay.event.show_ui"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "com.yftech.avmservice.SHOW_STATE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "com.yftech.hicar.show"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    new-instance p1, Lcom/yftech/libradio/dialog/RadioSearchingDialog$CarplayShowUIReceiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/yftech/libradio/dialog/RadioSearchingDialog$CarplayShowUIReceiver;-><init>(Lcom/yftech/libradio/dialog/RadioSearchingDialog;Lcom/yftech/libradio/dialog/RadioSearchingDialog$1;)V

    iput-object p1, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->mCarplayShowUIReceiver:Lcom/yftech/libradio/dialog/RadioSearchingDialog$CarplayShowUIReceiver;

    .line 110
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p1

    iget-object v1, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->bluetoothPhoneCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;

    invoke-virtual {p1, v1, v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->registerBluetoothPhoneCallback(Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;Landroid/os/Handler;)V

    .line 111
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->mCarPhoneLinkCallback:Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->registerCarPhoneLinkCallback(Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;Landroid/os/Handler;)V

    .line 112
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->mCarplayShowUIReceiver:Lcom/yftech/libradio/dialog/RadioSearchingDialog$CarplayShowUIReceiver;

    iget-object v1, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 113
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->receiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 118
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->onDestroy()V

    const-string v0, "onDestroy()"

    .line 119
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/CarRadioManager;->isScanStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/CarRadioManager;->stop()I

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->mCarRadioControlCallback:Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;

    invoke-static {v0}, Lcom/yftech/car/media/radio/CarRadioManager;->unregisterRadioControlCallback(Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;)V

    .line 127
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->bluetoothPhoneCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->unregisterBluetoothPhoneCallback(Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;)V

    .line 128
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->mCarPhoneLinkCallback:Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->unregisterCarPhoneLinkCallback(Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;)V

    .line 129
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->mCarplayShowUIReceiver:Lcom/yftech/libradio/dialog/RadioSearchingDialog$CarplayShowUIReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 130
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 164
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->onPause()V

    const-string v0, "onPause()"

    .line 165
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->dismiss()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 135
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->onStart()V

    const-string v0, "onStart()"

    .line 136
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 142
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x106000d

    .line 144
    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 145
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 147
    sget v1, Lcom/yftech/libradio/R$style;->DialogFadeAnimation:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v1, 0x35a

    .line 148
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v1, 0x174

    .line 149
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x11

    .line 150
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 151
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 158
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->onStop()V

    const-string p0, "onStop()"

    .line 159
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method
