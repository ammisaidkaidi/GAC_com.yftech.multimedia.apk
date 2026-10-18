.class public Lcom/media/common/ui/widget/TipsDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "TipsDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/media/common/ui/widget/TipsDialog$OnConfirmClickListener;
    }
.end annotation


# static fields
.field private static final ARG_PARAM1:Ljava/lang/String; = "content"

.field private static final ARG_PARAM2:Ljava/lang/String; = "isDarkMode"


# instance fields
.field private content:Ljava/lang/String;

.field private isDarkMode:Z

.field private onConfirmClickListener:Lcom/media/common/ui/widget/TipsDialog$OnConfirmClickListener;

.field private tv_content:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/media/common/ui/widget/TipsDialog;)Lcom/media/common/ui/widget/TipsDialog$OnConfirmClickListener;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/media/common/ui/widget/TipsDialog;->onConfirmClickListener:Lcom/media/common/ui/widget/TipsDialog$OnConfirmClickListener;

    return-object p0
.end method

.method private initW(Landroid/view/View;)V
    .locals 2

    .line 68
    sget v0, Lcom/media/common/ui/widget/R$id;->tv_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/media/common/ui/widget/TipsDialog;->tv_content:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lcom/media/common/ui/widget/TipsDialog;->tv_content:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/media/common/ui/widget/TipsDialog;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    sget v0, Lcom/media/common/ui/widget/R$id;->tv_confirm:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/media/common/ui/widget/TipsDialog$1;

    invoke-direct {v0, p0}, Lcom/media/common/ui/widget/TipsDialog$1;-><init>(Lcom/media/common/ui/widget/TipsDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/media/common/ui/widget/TipsDialog;
    .locals 3

    .line 34
    new-instance v0, Lcom/media/common/ui/widget/TipsDialog;

    invoke-direct {v0}, Lcom/media/common/ui/widget/TipsDialog;-><init>()V

    .line 35
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "content"

    .line 36
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0, v1}, Lcom/media/common/ui/widget/TipsDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Z)Lcom/media/common/ui/widget/TipsDialog;
    .locals 3

    .line 42
    new-instance v0, Lcom/media/common/ui/widget/TipsDialog;

    invoke-direct {v0}, Lcom/media/common/ui/widget/TipsDialog;-><init>()V

    .line 43
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "content"

    .line 44
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "isDarkMode"

    .line 45
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 46
    invoke-virtual {v0, v1}, Lcom/media/common/ui/widget/TipsDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 52
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/media/common/ui/widget/TipsDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/media/common/ui/widget/TipsDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "content"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/media/common/ui/widget/TipsDialog;->content:Ljava/lang/String;

    .line 55
    invoke-virtual {p0}, Lcom/media/common/ui/widget/TipsDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "isDarkMode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/media/common/ui/widget/TipsDialog;->isDarkMode:Z

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 62
    sget p3, Lcom/media/common/ui/widget/R$layout;->dialog_tips:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 63
    invoke-direct {p0, p1}, Lcom/media/common/ui/widget/TipsDialog;->initW(Landroid/view/View;)V

    return-object p1
.end method

.method public onStart()V
    .locals 3

    .line 85
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 86
    invoke-virtual {p0}, Lcom/media/common/ui/widget/TipsDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 88
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x106000d

    .line 90
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 91
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 93
    sget v2, Lcom/media/common/ui/widget/R$style;->DialogFadeAnimation:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v2, 0x2fc

    .line 94
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v2, 0x12c

    .line 95
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v2, 0x31

    .line 96
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v2, 0xc8

    .line 97
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 98
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    const/4 v0, 0x0

    .line 101
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 102
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_1
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcom/media/common/ui/widget/TipsDialog;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/media/common/ui/widget/TipsDialog;->tv_content:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 108
    iget-object p0, p0, Lcom/media/common/ui/widget/TipsDialog;->tv_content:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setOnConfirmClickListener(Lcom/media/common/ui/widget/TipsDialog$OnConfirmClickListener;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/media/common/ui/widget/TipsDialog;->onConfirmClickListener:Lcom/media/common/ui/widget/TipsDialog$OnConfirmClickListener;

    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 0

    .line 115
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 117
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 118
    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 119
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method
