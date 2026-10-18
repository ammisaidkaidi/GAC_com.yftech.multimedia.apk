.class public Lcom/media/common/ui/widget/TipsExtraDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "TipsExtraDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/media/common/ui/widget/TipsExtraDialog$OnButtonClickListener;
    }
.end annotation


# static fields
.field private static final ARG_PARAM1:Ljava/lang/String; = "content"


# instance fields
.field private content:Ljava/lang/String;

.field private onButtonClickListener:Lcom/media/common/ui/widget/TipsExtraDialog$OnButtonClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/media/common/ui/widget/TipsExtraDialog;)Lcom/media/common/ui/widget/TipsExtraDialog$OnButtonClickListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/media/common/ui/widget/TipsExtraDialog;->onButtonClickListener:Lcom/media/common/ui/widget/TipsExtraDialog$OnButtonClickListener;

    return-object p0
.end method

.method private initW(Landroid/view/View;)V
    .locals 2

    .line 58
    sget v0, Lcom/media/common/ui/widget/R$id;->tv_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 59
    iget-object v1, p0, Lcom/media/common/ui/widget/TipsExtraDialog;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    sget v0, Lcom/media/common/ui/widget/R$id;->tv_confirm:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/media/common/ui/widget/TipsExtraDialog$1;

    invoke-direct {v1, p0}, Lcom/media/common/ui/widget/TipsExtraDialog$1;-><init>(Lcom/media/common/ui/widget/TipsExtraDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    sget v0, Lcom/media/common/ui/widget/R$id;->tv_cancel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/media/common/ui/widget/TipsExtraDialog$2;

    invoke-direct {v0, p0}, Lcom/media/common/ui/widget/TipsExtraDialog$2;-><init>(Lcom/media/common/ui/widget/TipsExtraDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/media/common/ui/widget/TipsExtraDialog;
    .locals 3

    .line 32
    new-instance v0, Lcom/media/common/ui/widget/TipsExtraDialog;

    invoke-direct {v0}, Lcom/media/common/ui/widget/TipsExtraDialog;-><init>()V

    .line 33
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "content"

    .line 34
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0, v1}, Lcom/media/common/ui/widget/TipsExtraDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 41
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/media/common/ui/widget/TipsExtraDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/media/common/ui/widget/TipsExtraDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "content"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/media/common/ui/widget/TipsExtraDialog;->content:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 51
    sget p3, Lcom/media/common/ui/widget/R$layout;->dialog_tips_extra:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 52
    invoke-direct {p0, p1}, Lcom/media/common/ui/widget/TipsExtraDialog;->initW(Landroid/view/View;)V

    return-object p1
.end method

.method public onStart()V
    .locals 3

    .line 86
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 87
    invoke-virtual {p0}, Lcom/media/common/ui/widget/TipsExtraDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 89
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x106000d

    .line 91
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 92
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 94
    sget v2, Lcom/media/common/ui/widget/R$style;->DialogFadeAnimation:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v2, 0x2e4

    .line 95
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v2, 0x106

    .line 96
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v2, 0x31

    .line 97
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v2, 0xc8

    .line 98
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 99
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    const/4 v0, 0x0

    .line 102
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 103
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_1
    return-void
.end method

.method public setOnButtonClickListener(Lcom/media/common/ui/widget/TipsExtraDialog$OnButtonClickListener;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/media/common/ui/widget/TipsExtraDialog;->onButtonClickListener:Lcom/media/common/ui/widget/TipsExtraDialog$OnButtonClickListener;

    return-void
.end method
