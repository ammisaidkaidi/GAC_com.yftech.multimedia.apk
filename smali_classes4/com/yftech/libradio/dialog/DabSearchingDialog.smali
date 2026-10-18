.class public Lcom/yftech/libradio/dialog/DabSearchingDialog;
.super Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;
.source "DabSearchingDialog.java"

# interfaces
.implements Lcom/yftech/libradio/view/IDabSearchingDialogView;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/libradio/dialog/DabSearchingDialog$CarplayShowUIReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment<",
        "Lcom/yftech/libradio/presenter/DabSearchingPresenter;",
        ">;",
        "Lcom/yftech/libradio/view/IDabSearchingDialogView;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final ACTION_CARPLAY_EVENT_SHOW_UI:Ljava/lang/String; = "com.autochips.carplay.event.show_ui"

.field private static final ARG_PARAM1:Ljava/lang/String; = "content"

.field private static final KEY_CARPLAY_EVENT_SHOW_UI:Ljava/lang/String; = "ui_show"

.field private static final MSG_WHAT_HANDLE_SCAN_RESULT:I = 0x7617

.field private static final TRY_SCAN_SAVE_COUNT_MAX:I = 0x2


# instance fields
.field private bluetoothPhoneCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;

.field private content:Ljava/lang/String;

.field private ensembleListChangedType:I

.field private handleResultryCount:I

.field private isEnsembleListChanged:Z

.field private iv_tag:Landroid/widget/ImageView;

.field private lastTimeMillis:J

.field private final mCarDabRadioControlCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

.field private mCarPhoneLinkCallback:Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;

.field private mCarplayShowUIReceiver:Lcom/yftech/libradio/dialog/DabSearchingDialog$CarplayShowUIReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mTryScanSaveCount:I

.field private mTryScanSaveRunnable:Ljava/lang/Runnable;

.field private pb_loading:Landroid/widget/ProgressBar;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private rl_result:Landroid/widget/RelativeLayout;

.field private tv_content:Landroid/widget/TextView;

.field private tv_control:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;-><init>()V

    .line 72
    new-instance v0, Lcom/yftech/libradio/dialog/DabSearchingDialog$1;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dialog/DabSearchingDialog$1;-><init>(Lcom/yftech/libradio/dialog/DabSearchingDialog;)V

    iput-object v0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->mHandler:Landroid/os/Handler;

    .line 82
    new-instance v0, Lcom/yftech/libradio/dialog/DabSearchingDialog$2;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dialog/DabSearchingDialog$2;-><init>(Lcom/yftech/libradio/dialog/DabSearchingDialog;)V

    iput-object v0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->mTryScanSaveRunnable:Ljava/lang/Runnable;

    .line 295
    new-instance v0, Lcom/yftech/libradio/dialog/DabSearchingDialog$3;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dialog/DabSearchingDialog$3;-><init>(Lcom/yftech/libradio/dialog/DabSearchingDialog;)V

    iput-object v0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->mCarDabRadioControlCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

    .line 317
    new-instance v0, Lcom/yftech/libradio/dialog/DabSearchingDialog$4;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dialog/DabSearchingDialog$4;-><init>(Lcom/yftech/libradio/dialog/DabSearchingDialog;)V

    iput-object v0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->bluetoothPhoneCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;

    .line 363
    new-instance v0, Lcom/yftech/libradio/dialog/DabSearchingDialog$5;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dialog/DabSearchingDialog$5;-><init>(Lcom/yftech/libradio/dialog/DabSearchingDialog;)V

    iput-object v0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->receiver:Landroid/content/BroadcastReceiver;

    .line 381
    new-instance v0, Lcom/yftech/libradio/dialog/DabSearchingDialog$6;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dialog/DabSearchingDialog$6;-><init>(Lcom/yftech/libradio/dialog/DabSearchingDialog;)V

    iput-object v0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->mCarPhoneLinkCallback:Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/libradio/dialog/DabSearchingDialog;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/yftech/libradio/dialog/DabSearchingDialog;->handleScanResult()V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/libradio/dialog/DabSearchingDialog;)Z
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/yftech/libradio/dialog/DabSearchingDialog;->isScanStatus()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/yftech/libradio/dialog/DabSearchingDialog;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->mTryScanSaveCount:I

    return p0
.end method

.method static synthetic access$208(Lcom/yftech/libradio/dialog/DabSearchingDialog;)I
    .locals 2

    .line 47
    iget v0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->mTryScanSaveCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->mTryScanSaveCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/yftech/libradio/dialog/DabSearchingDialog;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/yftech/libradio/dialog/DabSearchingDialog;->startScan()V

    return-void
.end method

.method static synthetic access$400(Lcom/yftech/libradio/dialog/DabSearchingDialog;)Ljava/lang/Runnable;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->mTryScanSaveRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/yftech/libradio/dialog/DabSearchingDialog;)Landroid/os/Handler;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$702(Lcom/yftech/libradio/dialog/DabSearchingDialog;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->handleResultryCount:I

    return p1
.end method

.method static synthetic access$802(Lcom/yftech/libradio/dialog/DabSearchingDialog;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->isEnsembleListChanged:Z

    return p1
.end method

.method static synthetic access$902(Lcom/yftech/libradio/dialog/DabSearchingDialog;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->ensembleListChangedType:I

    return p1
.end method

.method private handleScanResult()V
    .locals 5

    .line 266
    iget v0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->handleResultryCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->handleResultryCount:I

    .line 267
    iget-boolean v0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->isEnsembleListChanged:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->handleResultryCount:I

    if-lez v0, :cond_0

    .line 268
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x7617

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 271
    iput v0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->handleResultryCount:I

    .line 272
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getDabEnsemble()[Lcom/yftech/car/media/radio/dab/entity/DabEnsemble;

    move-result-object v1

    .line 273
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 274
    invoke-static {v1, v2, v3}, Lcom/yftech/libradio/Utils;->convertDabInfos([Lcom/yftech/car/media/radio/dab/entity/DabEnsemble;Ljava/util/List;Ljava/util/List;)V

    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSearchResult list: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    array-length v1, v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , type: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->ensembleListChangedType:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 278
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->ensembleListChangedType:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    goto :goto_1

    .line 287
    :cond_2
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSearchingDialog;->dismissAllowingStateLoss()V

    .line 289
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->isPlaying()Z

    move-result p0

    if-nez p0, :cond_4

    .line 290
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->play()V

    goto :goto_2

    .line 279
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->iv_tag:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 280
    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->rl_result:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->tv_content:Landroid/widget/TextView;

    sget v1, Lcom/yftech/libradio/R$string;->radio_channel_search_dialog_search_fail_tips:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 284
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->pb_loading:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 285
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->tv_control:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method private isScanStatus()Z
    .locals 0

    .line 405
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getScanStatus()Lcom/yftech/car/media/radio/dab/entity/DabScanStatus;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "DabScanStatus is null "

    .line 407
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 410
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/car/media/radio/dab/entity/DabScanStatus;->isRuning()Z

    move-result p0

    return p0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/yftech/libradio/dialog/DabSearchingDialog;
    .locals 3

    .line 106
    new-instance v0, Lcom/yftech/libradio/dialog/DabSearchingDialog;

    invoke-direct {v0}, Lcom/yftech/libradio/dialog/DabSearchingDialog;-><init>()V

    .line 107
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "content"

    .line 108
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0, v1}, Lcom/yftech/libradio/dialog/DabSearchingDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private startScan()V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7617

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 255
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSearchingDialog;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/yftech/libradio/presenter/DabSearchingPresenter;

    invoke-virtual {v0}, Lcom/yftech/libradio/presenter/DabSearchingPresenter;->startScan()V

    const/4 v0, 0x0

    .line 256
    iput-boolean v0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->isEnsembleListChanged:Z

    .line 257
    iput v0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->ensembleListChangedType:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSearchingDialog;->createPresenter()Lcom/yftech/libradio/presenter/DabSearchingPresenter;

    move-result-object p0

    return-object p0
.end method

.method protected createPresenter()Lcom/yftech/libradio/presenter/DabSearchingPresenter;
    .locals 1

    .line 102
    new-instance v0, Lcom/yftech/libradio/presenter/DabSearchingPresenter;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSearchingDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yftech/libradio/presenter/DabSearchingPresenter;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public dismiss()V
    .locals 2

    .line 239
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->dismiss()V

    .line 240
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->mTryScanSaveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 241
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7617

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-string v0, "stopAllScan()"

    .line 242
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSearchingDialog;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p0

    check-cast p0, Lcom/yftech/libradio/presenter/DabSearchingPresenter;

    invoke-virtual {p0}, Lcom/yftech/libradio/presenter/DabSearchingPresenter;->stopScan()V

    return-void
.end method

.method public displaySearchResult(Z)V
    .locals 0

    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 2

    .line 187
    sget v0, Lcom/yftech/libradio/R$id;->pb_loading:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->pb_loading:Landroid/widget/ProgressBar;

    .line 188
    sget v0, Lcom/yftech/libradio/R$id;->tv_control:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->tv_control:Landroid/widget/TextView;

    .line 189
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->tv_control:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    sget v0, Lcom/yftech/libradio/R$id;->iv_tag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->iv_tag:Landroid/widget/ImageView;

    .line 192
    sget v0, Lcom/yftech/libradio/R$id;->rl_result:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->rl_result:Landroid/widget/RelativeLayout;

    .line 193
    sget v0, Lcom/yftech/libradio/R$id;->tv_retry:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    sget v0, Lcom/yftech/libradio/R$id;->tv_cancel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    sget v0, Lcom/yftech/libradio/R$id;->tv_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->tv_content:Landroid/widget/TextView;

    .line 197
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->tv_content:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    invoke-direct {p0}, Lcom/yftech/libradio/dialog/DabSearchingDialog;->startScan()V

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->lastTimeMillis:J

    const/4 p1, 0x0

    .line 202
    iput p1, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->mTryScanSaveCount:I

    .line 203
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->mTryScanSaveRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onBindView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 181
    sget p0, Lcom/yftech/libradio/R$layout;->dialog_dab_searching:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 209
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libradio/R$id;->tv_retry:I

    if-ne v0, v1, :cond_0

    .line 210
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->pb_loading:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 211
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->tv_control:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->tv_content:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->iv_tag:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->rl_result:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 219
    invoke-direct {p0}, Lcom/yftech/libradio/dialog/DabSearchingDialog;->startScan()V

    goto :goto_0

    .line 222
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libradio/R$id;->tv_cancel:I

    if-ne v0, v1, :cond_1

    const-string p1, "tv_cancel dismiss"

    .line 223
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSearchingDialog;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p1

    check-cast p1, Lcom/yftech/libradio/presenter/DabSearchingPresenter;

    invoke-virtual {p1}, Lcom/yftech/libradio/presenter/DabSearchingPresenter;->stopScan()V

    .line 225
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSearchingDialog;->dismiss()V

    goto :goto_0

    .line 226
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/yftech/libradio/R$id;->tv_control:I

    if-ne p1, v0, :cond_3

    .line 227
    invoke-direct {p0}, Lcom/yftech/libradio/dialog/DabSearchingDialog;->isScanStatus()Z

    move-result p1

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tv_control isScanStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " currentTimeMillis:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " lastTimeMillis:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->lastTimeMillis:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-nez p1, :cond_2

    .line 230
    iget-wide v2, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->lastTimeMillis:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    cmp-long p1, v0, v2

    if-lez p1, :cond_3

    .line 231
    :cond_2
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSearchingDialog;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p1

    check-cast p1, Lcom/yftech/libradio/presenter/DabSearchingPresenter;

    invoke-virtual {p1}, Lcom/yftech/libradio/presenter/DabSearchingPresenter;->stopScan()V

    .line 232
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSearchingDialog;->dismiss()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 115
    invoke-super {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSearchingDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSearchingDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "content"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->content:Ljava/lang/String;

    .line 119
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate() content:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->mCarDabRadioControlCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

    invoke-virtual {p1, v0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->registerRadioControlCallback(Lcom/yftech/car/media/radio/dab/CarDabRadioManager$OnDabRadioControlListener;)V

    .line 121
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->mIntentFilter:Landroid/content/IntentFilter;

    .line 122
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "com.autochips.carplay.event.show_ui"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "com.yftech.avmservice.SHOW_STATE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "com.yftech.hicar.show"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    new-instance p1, Lcom/yftech/libradio/dialog/DabSearchingDialog$CarplayShowUIReceiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/yftech/libradio/dialog/DabSearchingDialog$CarplayShowUIReceiver;-><init>(Lcom/yftech/libradio/dialog/DabSearchingDialog;Lcom/yftech/libradio/dialog/DabSearchingDialog$1;)V

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->mCarplayShowUIReceiver:Lcom/yftech/libradio/dialog/DabSearchingDialog$CarplayShowUIReceiver;

    .line 127
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p1

    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->bluetoothPhoneCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;

    invoke-virtual {p1, v1, v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->registerBluetoothPhoneCallback(Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;Landroid/os/Handler;)V

    .line 128
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->mCarPhoneLinkCallback:Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;

    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->registerCarPhoneLinkCallback(Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;Landroid/os/Handler;)V

    .line 129
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSearchingDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->mCarplayShowUIReceiver:Lcom/yftech/libradio/dialog/DabSearchingDialog$CarplayShowUIReceiver;

    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 130
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSearchingDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->receiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 135
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->onDestroy()V

    const-string v0, "onDestroy()"

    .line 136
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->mCarDabRadioControlCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->unregisterRadioControlCallback(Lcom/yftech/car/media/radio/dab/CarDabRadioManager$OnDabRadioControlListener;)V

    .line 138
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->mTryScanSaveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 139
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->bluetoothPhoneCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->unregisterBluetoothPhoneCallback(Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;)V

    .line 140
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->mCarPhoneLinkCallback:Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->unregisterCarPhoneLinkCallback(Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;)V

    .line 141
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSearchingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->mCarplayShowUIReceiver:Lcom/yftech/libradio/dialog/DabSearchingDialog$CarplayShowUIReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 142
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSearchingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 174
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->onPause()V

    const-string v0, "onPause()"

    .line 175
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSearchingDialog;->dismiss()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 147
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->onStart()V

    const-string v0, "onStart()"

    .line 148
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSearchingDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 151
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 152
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 153
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x106000d

    .line 155
    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 156
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 158
    sget v1, Lcom/yftech/libradio/R$style;->DialogFadeAnimation:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v1, 0x35a

    .line 159
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v1, 0x174

    .line 160
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x11

    .line 161
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 162
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 169
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->onStop()V

    return-void
.end method
