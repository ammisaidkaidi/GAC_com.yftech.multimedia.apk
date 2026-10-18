.class public Lcom/yftech/libradio/dialog/RdsAnnounceDialog;
.super Landroid/app/Dialog;
.source "RdsAnnounceDialog.java"


# instance fields
.field private callback:Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;

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

    .line 91
    new-instance v0, Lcom/yftech/libradio/dialog/RdsAnnounceDialog$2;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dialog/RdsAnnounceDialog$2;-><init>(Lcom/yftech/libradio/dialog/RdsAnnounceDialog;)V

    iput-object v0, p0, Lcom/yftech/libradio/dialog/RdsAnnounceDialog;->callback:Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;

    .line 31
    iput-object p1, p0, Lcom/yftech/libradio/dialog/RdsAnnounceDialog;->mContext:Landroid/content/Context;

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

    .line 91
    new-instance p2, Lcom/yftech/libradio/dialog/RdsAnnounceDialog$2;

    invoke-direct {p2, p0}, Lcom/yftech/libradio/dialog/RdsAnnounceDialog$2;-><init>(Lcom/yftech/libradio/dialog/RdsAnnounceDialog;)V

    iput-object p2, p0, Lcom/yftech/libradio/dialog/RdsAnnounceDialog;->callback:Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;

    .line 36
    iput-object p1, p0, Lcom/yftech/libradio/dialog/RdsAnnounceDialog;->mContext:Landroid/content/Context;

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

    .line 91
    new-instance p2, Lcom/yftech/libradio/dialog/RdsAnnounceDialog$2;

    invoke-direct {p2, p0}, Lcom/yftech/libradio/dialog/RdsAnnounceDialog$2;-><init>(Lcom/yftech/libradio/dialog/RdsAnnounceDialog;)V

    iput-object p2, p0, Lcom/yftech/libradio/dialog/RdsAnnounceDialog;->callback:Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;

    .line 41
    iput-object p1, p0, Lcom/yftech/libradio/dialog/RdsAnnounceDialog;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 46
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 47
    sget p1, Lcom/yftech/libradio/R$layout;->dialog_dab_service_txt_info:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dialog/RdsAnnounceDialog;->setContentView(I)V

    .line 48
    sget p1, Lcom/yftech/libradio/R$id;->tv_title:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dialog/RdsAnnounceDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yftech/libradio/dialog/RdsAnnounceDialog;->tvTitle:Landroid/widget/TextView;

    .line 49
    sget p1, Lcom/yftech/libradio/R$id;->tv_content:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dialog/RdsAnnounceDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yftech/libradio/dialog/RdsAnnounceDialog;->tvContent:Landroid/widget/TextView;

    .line 50
    sget p1, Lcom/yftech/libradio/R$id;->tv_control:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dialog/RdsAnnounceDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yftech/libradio/dialog/RdsAnnounceDialog;->tvBack:Landroid/widget/TextView;

    .line 51
    sget p1, Lcom/yftech/libradio/R$id;->dialog_rootview:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dialog/RdsAnnounceDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/libradio/dialog/RdsAnnounceDialog;->rootView:Landroid/view/View;

    .line 52
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RdsAnnounceDialog;->tvBack:Landroid/widget/TextView;

    new-instance v0, Lcom/yftech/libradio/dialog/RdsAnnounceDialog$1;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dialog/RdsAnnounceDialog$1;-><init>(Lcom/yftech/libradio/dialog/RdsAnnounceDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RdsAnnounceDialog;->tvContent:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 59
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RdsAnnounceDialog;->tvTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/yftech/libradio/dialog/RdsAnnounceDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/yftech/libradio/R$string;->traffic_announcement:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RdsAnnounceDialog;->tvContent:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yftech/libradio/dialog/RdsAnnounceDialog;->mContext:Landroid/content/Context;

    sget v2, Lcom/yftech/libradio/R$string;->announcement_play_front:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/libradio/dialog/RdsAnnounceDialog;->mContext:Landroid/content/Context;

    sget v2, Lcom/yftech/libradio/R$string;->traffic_announcement:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RdsAnnounceDialog;->rootView:Landroid/view/View;

    const/high16 p1, 0x42480000    # 50.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 66
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    const-string v0, "onStart()"

    .line 67
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    iget-object v0, p0, Lcom/yftech/libradio/dialog/RdsAnnounceDialog;->callback:Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;

    invoke-static {v0}, Lcom/yftech/car/media/radio/CarRadioManager;->registerRadioControlCallback(Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;)V

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0, v0}, Lcom/yftech/libradio/dialog/RdsAnnounceDialog;->setCanceledOnTouchOutside(Z)V

    .line 70
    invoke-virtual {p0, v0}, Lcom/yftech/libradio/dialog/RdsAnnounceDialog;->setCancelable(Z)V

    .line 71
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RdsAnnounceDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0x7d3

    .line 73
    invoke-virtual {p0, v0}, Landroid/view/Window;->setType(I)V

    const/16 v0, 0x400

    .line 74
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x106000d

    .line 75
    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 76
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 77
    sget v1, Lcom/yftech/libradio/R$style;->DialogFadeAnimation:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v1, 0x344

    .line 78
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v1, 0x258

    .line 79
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x11

    .line 80
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 81
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 87
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 88
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    iget-object p0, p0, Lcom/yftech/libradio/dialog/RdsAnnounceDialog;->callback:Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;

    invoke-static {p0}, Lcom/yftech/car/media/radio/CarRadioManager;->unregisterRadioControlCallback(Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;)V

    return-void
.end method
