.class public Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;
.super Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;
.source "DabServiceTextInfoDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ARG_PARAM1:Ljava/lang/String; = "content"

.field private static final ARG_PARAM2:Ljava/lang/String; = "title"


# instance fields
.field private content:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private tvBack:Landroid/widget/TextView;

.field private tvContent:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;
    .locals 3

    .line 44
    new-instance v0, Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;

    invoke-direct {v0}, Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;-><init>()V

    .line 45
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "content"

    .line 46
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "title"

    .line 47
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0, v1}, Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected createPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public dismiss()V
    .locals 0

    .line 128
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->dismiss()V

    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 1

    .line 104
    sget v0, Lcom/yftech/libradio/R$id;->tv_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;->tvTitle:Landroid/widget/TextView;

    .line 105
    sget v0, Lcom/yftech/libradio/R$id;->tv_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;->tvContent:Landroid/widget/TextView;

    .line 106
    sget v0, Lcom/yftech/libradio/R$id;->tv_control:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;->tvBack:Landroid/widget/TextView;

    .line 107
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;->tvBack:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;->tvContent:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 109
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;->content:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 110
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;->tvContent:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;->title:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 113
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;->tvTitle:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;->title:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method protected onBindView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 98
    sget p0, Lcom/yftech/libradio/R$layout;->dialog_dab_service_txt_info:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/yftech/libradio/R$id;->tv_control:I

    if-ne p1, v0, :cond_0

    const-string p1, "click back dismiss"

    .line 121
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 54
    invoke-super {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "content"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;->content:Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;->title:Ljava/lang/String;

    .line 59
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate() content:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;->content:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 64
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->onDestroy()V

    const-string p0, "onDestroy()"

    .line 65
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 70
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->onStart()V

    const-string v0, "onStart()"

    .line 71
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 75
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 76
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x106000d

    .line 78
    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 79
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 81
    sget v1, Lcom/yftech/libradio/R$style;->DialogFadeAnimation:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v1, 0x436

    .line 82
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v1, 0x2a6

    .line 83
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x11

    .line 84
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 85
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 92
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->onStop()V

    const-string p0, "onStop()"

    .line 93
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method
