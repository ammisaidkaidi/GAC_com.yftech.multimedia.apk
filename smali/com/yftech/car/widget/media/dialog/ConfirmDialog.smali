.class public Lcom/yftech/car/widget/media/dialog/ConfirmDialog;
.super Landroid/app/Dialog;
.source "ConfirmDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/dialog/ConfirmDialog$OnConfirmDialogListener;
    }
.end annotation


# instance fields
.field private final mCancelOnClickListener:Landroid/view/View$OnClickListener;

.field private final mConfirmOnClickListener:Landroid/view/View$OnClickListener;

.field private mDismissLoad:Z

.field private mOnConfirmDialogListener:Lcom/yftech/car/widget/media/dialog/ConfirmDialog$OnConfirmDialogListener;

.field private final mRootView:Landroid/view/View;

.field private mText:Ljava/lang/String;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x1030048

    .line 54
    invoke-direct {p0, p1, v0, p2}, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x0

    .line 46
    iput-object p2, p0, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->mText:Ljava/lang/String;

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->mDismissLoad:Z

    .line 157
    new-instance v1, Lcom/yftech/car/widget/media/dialog/ConfirmDialog$1;

    invoke-direct {v1, p0}, Lcom/yftech/car/widget/media/dialog/ConfirmDialog$1;-><init>(Lcom/yftech/car/widget/media/dialog/ConfirmDialog;)V

    iput-object v1, p0, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->mConfirmOnClickListener:Landroid/view/View$OnClickListener;

    .line 168
    new-instance v1, Lcom/yftech/car/widget/media/dialog/ConfirmDialog$2;

    invoke-direct {v1, p0}, Lcom/yftech/car/widget/media/dialog/ConfirmDialog$2;-><init>(Lcom/yftech/car/widget/media/dialog/ConfirmDialog;)V

    iput-object v1, p0, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->mCancelOnClickListener:Landroid/view/View$OnClickListener;

    .line 59
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->mRootView:Landroid/view/View;

    .line 61
    iget-object p1, p0, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->mRootView:Landroid/view/View;

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_c

    .line 62
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 63
    iget-object p2, p0, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->mRootView:Landroid/view/View;

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object p2, p0, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->mRootView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string/jumbo p3, "user_cancel"

    .line 66
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 67
    iget-object p2, p0, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->mRootView:Landroid/view/View;

    iget-object p3, p0, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->mCancelOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const-string/jumbo p3, "user_confirm"

    .line 68
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 69
    iget-object p2, p0, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->mRootView:Landroid/view/View;

    iget-object p3, p0, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->mConfirmOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    move p2, v0

    .line 73
    :goto_1
    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_a

    .line 74
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    move v1, p2

    move p2, v0

    .line 75
    :goto_2
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge p2, v2, :cond_9

    .line 76
    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 78
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string/jumbo v4, "user_cancel"

    .line 80
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 81
    iget-object v3, p0, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->mCancelOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    move v3, v0

    goto :goto_4

    :cond_2
    const-string/jumbo v4, "user_confirm"

    .line 83
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 84
    iget-object v3, p0, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->mConfirmOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_3
    const/4 v3, 0x1

    .line 88
    :goto_4
    instance-of v4, v2, Landroid/view/ViewGroup;

    if-eqz v4, :cond_4

    .line 89
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 90
    :cond_4
    instance-of v4, v2, Landroid/widget/Button;

    if-eqz v4, :cond_7

    if-eqz v3, :cond_6

    if-nez v1, :cond_5

    .line 93
    iget-object v3, p0, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->mConfirmOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 95
    :cond_5
    iget-object v3, p0, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->mCancelOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 99
    :cond_7
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_8

    .line 100
    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->mTextView:Landroid/widget/TextView;

    :cond_8
    :goto_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_9
    move p2, v1

    goto :goto_1

    .line 106
    :cond_a
    iget-object p1, p0, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->mRootView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->setContentView(Landroid/view/View;)V

    .line 111
    new-instance p1, Lcom/yftech/car/widget/media/dialog/-$$Lambda$ConfirmDialog$VIbAHwEpotT_uvMxjHvjrrGqrbs;

    invoke-direct {p1, p0}, Lcom/yftech/car/widget/media/dialog/-$$Lambda$ConfirmDialog$VIbAHwEpotT_uvMxjHvjrrGqrbs;-><init>(Lcom/yftech/car/widget/media/dialog/ConfirmDialog;)V

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 120
    iget-object p1, p0, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->mTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_b

    .line 121
    iget-object p1, p0, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 123
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->mText:Ljava/lang/String;

    :cond_b
    return-void

    .line 108
    :cond_c
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "dialog_layout_id \u7236\u5e03\u5c40\u5fc5\u987b\u662flayout\uff08\u7ee7\u627fViewGroup\u7684\u5e03\u5c40\uff09"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$000(Lcom/yftech/car/widget/media/dialog/ConfirmDialog;)Lcom/yftech/car/widget/media/dialog/ConfirmDialog$OnConfirmDialogListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->mOnConfirmDialogListener:Lcom/yftech/car/widget/media/dialog/ConfirmDialog$OnConfirmDialogListener;

    return-object p0
.end method

.method static synthetic access$102(Lcom/yftech/car/widget/media/dialog/ConfirmDialog;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->mDismissLoad:Z

    return p1
.end method

.method private getToastContent(Ljava/lang/String;IJ)Ljava/lang/String;
    .locals 3

    const-string v0, "<selected_size>"

    .line 180
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "<selected_size>"

    .line 181
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "<selected_size>"

    .line 182
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0xf

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "<selected_size>"

    .line 184
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->getToastContent(Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "<file_size>"

    .line 189
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "<file_size>"

    .line 190
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<file_size>"

    .line 191
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0xb

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    invoke-static {p3, p4, v0}, Lcom/yftech/car/widget/media/utils/FileUtil;->fileSize(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "<file_size>"

    .line 193
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->getToastContent(Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public static synthetic lambda$new$0(Lcom/yftech/car/widget/media/dialog/ConfirmDialog;Landroid/content/DialogInterface;)V
    .locals 1

    .line 112
    iget-boolean p1, p0, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->mDismissLoad:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 113
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->mDismissLoad:Z

    return-void

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->mOnConfirmDialogListener:Lcom/yftech/car/widget/media/dialog/ConfirmDialog$OnConfirmDialogListener;

    if-eqz p1, :cond_1

    .line 117
    iget-object p0, p0, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->mOnConfirmDialogListener:Lcom/yftech/car/widget/media/dialog/ConfirmDialog$OnConfirmDialogListener;

    invoke-interface {p0, v0}, Lcom/yftech/car/widget/media/dialog/ConfirmDialog$OnConfirmDialogListener;->onConfirm(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public setOnConfirmDialogListener(Lcom/yftech/car/widget/media/dialog/ConfirmDialog$OnConfirmDialogListener;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->mOnConfirmDialogListener:Lcom/yftech/car/widget/media/dialog/ConfirmDialog$OnConfirmDialogListener;

    return-void
.end method

.method public show(IIJLandroid/util/Size;)V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->mText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->mText:Ljava/lang/String;

    invoke-direct {p0, v1, p2, p3, p4}, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->getToastContent(Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :cond_0
    invoke-virtual {p0, p1, p5}, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->show(ILandroid/util/Size;)V

    return-void
.end method

.method public show(ILandroid/util/Size;)V
    .locals 2

    .line 144
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x11

    .line 146
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 147
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 148
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 149
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 150
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 154
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public show(ILjava/lang/String;Landroid/util/Size;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 130
    iget-object v0, p0, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->show(ILandroid/util/Size;)V

    return-void
.end method
