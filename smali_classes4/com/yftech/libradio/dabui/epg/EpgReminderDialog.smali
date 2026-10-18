.class public Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;
.super Landroid/app/Dialog;
.source "EpgReminderDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MSG_HIDE_DIALOG:I = 0x5bf9

.field private static final TIME_OUT:I = 0x2710


# instance fields
.field private final mCarDabRadioControlCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

.field private mEnsembleId:I

.field private mFrequency:J

.field private mHandler:Landroid/os/Handler;

.field private mProgrammeName:Ljava/lang/String;

.field private mServiceId:J

.field private tv_content:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 45
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance p1, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog$1;

    invoke-direct {p1, p0}, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog$1;-><init>(Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;)V

    iput-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;->mHandler:Landroid/os/Handler;

    .line 133
    new-instance p1, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog$2;

    invoke-direct {p1, p0}, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog$2;-><init>(Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;)V

    iput-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;->mCarDabRadioControlCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

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

    .line 35
    new-instance p1, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog$1;

    invoke-direct {p1, p0}, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog$1;-><init>(Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;)V

    iput-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;->mHandler:Landroid/os/Handler;

    .line 133
    new-instance p1, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog$2;

    invoke-direct {p1, p0}, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog$2;-><init>(Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;)V

    iput-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;->mCarDabRadioControlCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

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

    .line 35
    new-instance p1, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog$1;

    invoke-direct {p1, p0}, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog$1;-><init>(Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;)V

    iput-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;->mHandler:Landroid/os/Handler;

    .line 133
    new-instance p1, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog$2;

    invoke-direct {p1, p0}, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog$2;-><init>(Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;)V

    iput-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;->mCarDabRadioControlCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 123
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libradio/R$id;->tv_litener:I

    if-ne v0, v1, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;->dismiss()V

    .line 107
    iget-wide v0, p0, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;->mServiceId:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;->mEnsembleId:I

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;->mFrequency:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    .line 108
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    iget-wide v1, p0, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;->mFrequency:J

    iget v3, p0, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;->mEnsembleId:I

    iget-wide v4, p0, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;->mServiceId:J

    invoke-virtual/range {v0 .. v5}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->setFreq(JIJ)V

    const-string p1, "startDab"

    .line 109
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    .line 110
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.yftech.intent.action.start.dabradio"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "isAutoPlay"

    const/4 v1, 0x1

    .line 111
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 112
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 113
    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 116
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/yftech/libradio/R$id;->tv_cancel:I

    if-ne p1, v0, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 60
    sget p1, Lcom/yftech/libradio/R$layout;->dialog_epg_reminder:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;->setContentView(I)V

    .line 62
    sget p1, Lcom/yftech/libradio/R$id;->dialog_rootview:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x42480000    # 50.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 63
    sget p1, Lcom/yftech/libradio/R$id;->tv_litener:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    sget p1, Lcom/yftech/libradio/R$id;->tv_cancel:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    sget p1, Lcom/yftech/libradio/R$id;->tv_content:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;->tv_content:Landroid/widget/TextView;

    return-void
.end method

.method public onStart()V
    .locals 6

    .line 71
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    const-string v0, "onStart()"

    .line 72
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p0, v0}, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;->setCanceledOnTouchOutside(Z)V

    .line 74
    invoke-virtual {p0, v0}, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;->setCancelable(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x7f6

    .line 77
    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    const/16 v2, 0x400

    .line 78
    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    const v2, 0x106000d

    .line 79
    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 80
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 81
    sget v3, Lcom/yftech/libradio/R$style;->DialogFadeAnimation:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v3, 0x344

    .line 82
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v3, 0x1d8

    .line 83
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v3, 0x11

    .line 84
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 85
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 87
    :cond_0
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;->mCarDabRadioControlCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

    invoke-virtual {v1, v2}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->registerRadioControlCallback(Lcom/yftech/car/media/radio/dab/CarDabRadioManager$OnDabRadioControlListener;)V

    .line 89
    iget-object v1, p0, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;->mProgrammeName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;->tv_content:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/yftech/libradio/R$string;->epg_reminder_content1:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;->mProgrammeName:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :cond_1
    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x5bf9

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 97
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    const-string v0, "onStop()"

    .line 98
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;->mCarDabRadioControlCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->unregisterRadioControlCallback(Lcom/yftech/car/media/radio/dab/CarDabRadioManager$OnDabRadioControlListener;)V

    .line 100
    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x5bf9

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public setParams(Ljava/lang/String;JIJ)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;->mProgrammeName:Ljava/lang/String;

    .line 128
    iput-wide p2, p0, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;->mFrequency:J

    .line 129
    iput p4, p0, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;->mEnsembleId:I

    .line 130
    iput-wide p5, p0, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;->mServiceId:J

    return-void
.end method
