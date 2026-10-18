.class public Lcom/yftech/libradio/dialog/DabAnnounceDialog;
.super Landroid/app/Dialog;
.source "DabAnnounceDialog.java"


# instance fields
.field private dabRadioControlCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

.field private mContext:Landroid/content/Context;

.field private rootView:Landroid/view/View;

.field private tvBack:Landroid/widget/TextView;

.field private tvContent:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 30
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 133
    new-instance v0, Lcom/yftech/libradio/dialog/DabAnnounceDialog$2;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dialog/DabAnnounceDialog$2;-><init>(Lcom/yftech/libradio/dialog/DabAnnounceDialog;)V

    iput-object v0, p0, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->dabRadioControlCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

    .line 31
    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 133
    new-instance p2, Lcom/yftech/libradio/dialog/DabAnnounceDialog$2;

    invoke-direct {p2, p0}, Lcom/yftech/libradio/dialog/DabAnnounceDialog$2;-><init>(Lcom/yftech/libradio/dialog/DabAnnounceDialog;)V

    iput-object p2, p0, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->dabRadioControlCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

    .line 36
    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->mContext:Landroid/content/Context;

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

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 133
    new-instance p2, Lcom/yftech/libradio/dialog/DabAnnounceDialog$2;

    invoke-direct {p2, p0}, Lcom/yftech/libradio/dialog/DabAnnounceDialog$2;-><init>(Lcom/yftech/libradio/dialog/DabAnnounceDialog;)V

    iput-object p2, p0, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->dabRadioControlCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

    .line 41
    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 46
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 47
    sget p1, Lcom/yftech/libradio/R$layout;->dialog_dab_service_txt_info:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->setContentView(I)V

    .line 48
    sget p1, Lcom/yftech/libradio/R$id;->tv_title:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->tvTitle:Landroid/widget/TextView;

    .line 49
    sget p1, Lcom/yftech/libradio/R$id;->tv_content:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->tvContent:Landroid/widget/TextView;

    .line 50
    sget p1, Lcom/yftech/libradio/R$id;->tv_control:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->tvBack:Landroid/widget/TextView;

    .line 51
    sget p1, Lcom/yftech/libradio/R$id;->dialog_rootview:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->rootView:Landroid/view/View;

    .line 52
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->tvBack:Landroid/widget/TextView;

    new-instance v0, Lcom/yftech/libradio/dialog/DabAnnounceDialog$1;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dialog/DabAnnounceDialog$1;-><init>(Lcom/yftech/libradio/dialog/DabAnnounceDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->tvContent:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 60
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->tvTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/yftech/libradio/R$string;->dab_announcement:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->rootView:Landroid/view/View;

    const/high16 p1, -0x3e580000    # -21.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 108
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    const-string v0, "onStart()"

    .line 109
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->dabRadioControlCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->registerRadioControlCallback(Lcom/yftech/car/media/radio/dab/CarDabRadioManager$OnDabRadioControlListener;)V

    const/4 v0, 0x0

    .line 111
    invoke-virtual {p0, v0}, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->setCanceledOnTouchOutside(Z)V

    .line 112
    invoke-virtual {p0, v0}, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->setCancelable(Z)V

    .line 113
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0x7f6

    .line 115
    invoke-virtual {p0, v0}, Landroid/view/Window;->setType(I)V

    const/16 v0, 0x400

    .line 116
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x106000d

    .line 117
    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 118
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 119
    sget v1, Lcom/yftech/libradio/R$style;->DialogFadeAnimation:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v1, 0x436

    .line 120
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v1, 0x2d0

    .line 121
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x11

    .line 122
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 123
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 129
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 130
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->dabRadioControlCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->unregisterRadioControlCallback(Lcom/yftech/car/media/radio/dab/CarDabRadioManager$OnDabRadioControlListener;)V

    return-void
.end method

.method public setData(I)V
    .locals 2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_8

    const/16 v0, 0x8

    if-eq p1, v0, :cond_7

    const/16 v0, 0x10

    if-eq p1, v0, :cond_6

    const/16 v0, 0x20

    if-eq p1, v0, :cond_5

    const/16 v0, 0x40

    if-eq p1, v0, :cond_4

    const/16 v0, 0x80

    if-eq p1, v0, :cond_3

    const/16 v0, 0x100

    if-eq p1, v0, :cond_2

    const/16 v0, 0x200

    if-eq p1, v0, :cond_1

    const/16 v0, 0x400

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto/16 :goto_0

    .line 71
    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/yftech/libradio/R$string;->announcement_play_front:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/yftech/libradio/R$string;->dab_announcement2:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 68
    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/yftech/libradio/R$string;->announcement_play_front:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/yftech/libradio/R$string;->dab_announcement1:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 98
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/yftech/libradio/R$string;->announcement_play_front:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/yftech/libradio/R$string;->dab_announcement11:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 95
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/yftech/libradio/R$string;->announcement_play_front:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/yftech/libradio/R$string;->dab_announcement10:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 92
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/yftech/libradio/R$string;->announcement_play_front:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/yftech/libradio/R$string;->dab_announcement9:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 89
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/yftech/libradio/R$string;->announcement_play_front:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/yftech/libradio/R$string;->dab_announcement8:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 86
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/yftech/libradio/R$string;->announcement_play_front:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/yftech/libradio/R$string;->dab_announcement7:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 83
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/yftech/libradio/R$string;->announcement_play_front:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/yftech/libradio/R$string;->dab_announcement6:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 80
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/yftech/libradio/R$string;->announcement_play_front:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/yftech/libradio/R$string;->dab_announcement5:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 77
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/yftech/libradio/R$string;->announcement_play_front:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/yftech/libradio/R$string;->dab_announcement4:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 74
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/yftech/libradio/R$string;->announcement_play_front:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/yftech/libradio/R$string;->dab_announcement3:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_9

    .line 102
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->tvContent:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
