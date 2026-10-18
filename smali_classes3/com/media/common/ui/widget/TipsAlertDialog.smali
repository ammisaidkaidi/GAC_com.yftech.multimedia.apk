.class public Lcom/media/common/ui/widget/TipsAlertDialog;
.super Landroid/app/Dialog;
.source "TipsAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 13
    sget v0, Lcom/media/common/ui/widget/R$style;->MyDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 36
    invoke-virtual {p0}, Lcom/media/common/ui/widget/TipsAlertDialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 18
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 20
    sget p1, Lcom/media/common/ui/widget/R$layout;->dialog_tips:I

    invoke-virtual {p0, p1}, Lcom/media/common/ui/widget/TipsAlertDialog;->setContentView(I)V

    .line 22
    invoke-virtual {p0}, Lcom/media/common/ui/widget/TipsAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/media/common/ui/widget/TipsAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/16 v0, 0x2e4

    .line 24
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v0, 0x106

    .line 25
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v0, 0x11

    .line 26
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 27
    invoke-virtual {p0}, Lcom/media/common/ui/widget/TipsAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 30
    :cond_0
    sget p1, Lcom/media/common/ui/widget/R$id;->tv_confirm:I

    invoke-virtual {p0, p1}, Lcom/media/common/ui/widget/TipsAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
