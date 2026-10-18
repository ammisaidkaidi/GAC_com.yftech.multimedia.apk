.class public Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;
.super Landroid/app/Dialog;
.source "EpgSubcribeConflictDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog$EpgSubcribeConfirmCallBack;
    }
.end annotation


# instance fields
.field private confirmCallBack:Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog$EpgSubcribeConfirmCallBack;

.field private final mCarDabRadioControlCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

.field private mConflictPrograme:Lcom/yftech/car/media/radio/dab/entity/epg/Programme;

.field private mTargetPrograme:Lcom/yftech/car/media/radio/dab/entity/epg/Programme;

.field private tvCancle:Landroid/widget/TextView;

.field private tvReplace:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;

.field private tv_content:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 34
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 138
    new-instance p1, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog$1;

    invoke-direct {p1, p0}, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog$1;-><init>(Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;)V

    iput-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;->mCarDabRadioControlCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 138
    new-instance p1, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog$1;

    invoke-direct {p1, p0}, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog$1;-><init>(Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;)V

    iput-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;->mCarDabRadioControlCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

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

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 138
    new-instance p1, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog$1;

    invoke-direct {p1, p0}, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog$1;-><init>(Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;)V

    iput-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;->mCarDabRadioControlCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 126
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libradio/R$id;->tv_litener:I

    if-ne v0, v1, :cond_4

    .line 96
    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;->dismiss()V

    .line 97
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;->mTargetPrograme:Lcom/yftech/car/media/radio/dab/entity/epg/Programme;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;->mConflictPrograme:Lcom/yftech/car/media/radio/dab/entity/epg/Programme;

    if-eqz p1, :cond_5

    .line 98
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;->mConflictPrograme:Lcom/yftech/car/media/radio/dab/entity/epg/Programme;

    invoke-virtual {p1, v0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->removeEpgProgramme(Lcom/yftech/car/media/radio/dab/entity/epg/Programme;)I

    move-result p1

    if-gtz p1, :cond_1

    .line 100
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;->confirmCallBack:Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog$EpgSubcribeConfirmCallBack;

    if-eqz p1, :cond_0

    .line 101
    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;->confirmCallBack:Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog$EpgSubcribeConfirmCallBack;

    invoke-interface {p0}, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog$EpgSubcribeConfirmCallBack;->onSubcribeFaile()V

    :cond_0
    return-void

    .line 105
    :cond_1
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;->mTargetPrograme:Lcom/yftech/car/media/radio/dab/entity/epg/Programme;

    invoke-virtual {p1, v0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->addEpgProgramme(Lcom/yftech/car/media/radio/dab/entity/epg/Programme;)I

    move-result p1

    if-lez p1, :cond_2

    .line 106
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;->confirmCallBack:Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog$EpgSubcribeConfirmCallBack;

    if-eqz p1, :cond_3

    .line 107
    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;->confirmCallBack:Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog$EpgSubcribeConfirmCallBack;

    invoke-interface {p0}, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog$EpgSubcribeConfirmCallBack;->onSubcribeSuccess()V

    goto :goto_0

    .line 110
    :cond_2
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;->confirmCallBack:Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog$EpgSubcribeConfirmCallBack;

    if-eqz p1, :cond_3

    .line 111
    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;->confirmCallBack:Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog$EpgSubcribeConfirmCallBack;

    invoke-interface {p0}, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog$EpgSubcribeConfirmCallBack;->onSubcribeFaile()V

    :cond_3
    :goto_0
    return-void

    .line 116
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/yftech/libradio/R$id;->tv_cancel:I

    if-ne p1, v0, :cond_5

    .line 117
    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;->dismiss()V

    .line 118
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;->confirmCallBack:Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog$EpgSubcribeConfirmCallBack;

    if-eqz p1, :cond_5

    .line 119
    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;->confirmCallBack:Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog$EpgSubcribeConfirmCallBack;

    invoke-interface {p0}, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog$EpgSubcribeConfirmCallBack;->onCancle()V

    :cond_5
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 48
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget p1, Lcom/yftech/libradio/R$layout;->dialog_epg_reminder:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;->setContentView(I)V

    .line 52
    sget p1, Lcom/yftech/libradio/R$id;->tv_litener:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;->tvReplace:Landroid/widget/TextView;

    .line 53
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;->tvReplace:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;->tvReplace:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/yftech/libradio/R$string;->epg_reminder_confirm2:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    sget p1, Lcom/yftech/libradio/R$id;->tv_cancel:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;->tvCancle:Landroid/widget/TextView;

    .line 56
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;->tvCancle:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    sget p1, Lcom/yftech/libradio/R$id;->tv_title:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;->tvTitle:Landroid/widget/TextView;

    .line 58
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/yftech/libradio/R$string;->epg_reminder_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    sget p1, Lcom/yftech/libradio/R$id;->tv_content:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;->tv_content:Landroid/widget/TextView;

    return-void
.end method

.method public onStart()V
    .locals 5

    .line 65
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    const-string v0, "onStart()"

    .line 66
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p0, v0}, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;->setCanceledOnTouchOutside(Z)V

    .line 68
    invoke-virtual {p0, v0}, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;->setCancelable(Z)V

    .line 69
    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    const v2, 0x106000d

    .line 71
    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 72
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 73
    sget v3, Lcom/yftech/libradio/R$style;->DialogFadeAnimation:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v3, 0x344

    .line 74
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v3, 0x174

    .line 75
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v3, 0x11

    .line 76
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 77
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 79
    :cond_0
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;->mCarDabRadioControlCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

    invoke-virtual {v1, v2}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->registerRadioControlCallback(Lcom/yftech/car/media/radio/dab/CarDabRadioManager$OnDabRadioControlListener;)V

    .line 81
    iget-object v1, p0, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;->mConflictPrograme:Lcom/yftech/car/media/radio/dab/entity/epg/Programme;

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;->tv_content:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/yftech/libradio/R$string;->epg_reminder_content2:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;->mConflictPrograme:Lcom/yftech/car/media/radio/dab/entity/epg/Programme;

    iget-object p0, p0, Lcom/yftech/car/media/radio/dab/entity/epg/Programme;->name:Ljava/lang/String;

    aput-object p0, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 88
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    const-string v0, "onStop()"

    .line 89
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;->mCarDabRadioControlCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->unregisterRadioControlCallback(Lcom/yftech/car/media/radio/dab/CarDabRadioManager$OnDabRadioControlListener;)V

    return-void
.end method

.method public setConfirmCallBack(Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog$EpgSubcribeConfirmCallBack;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;->confirmCallBack:Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog$EpgSubcribeConfirmCallBack;

    return-void
.end method

.method public setParams(Lcom/yftech/car/media/radio/dab/entity/epg/Programme;Lcom/yftech/car/media/radio/dab/entity/epg/Programme;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;->mTargetPrograme:Lcom/yftech/car/media/radio/dab/entity/epg/Programme;

    .line 131
    iput-object p2, p0, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;->mConflictPrograme:Lcom/yftech/car/media/radio/dab/entity/epg/Programme;

    return-void
.end method
