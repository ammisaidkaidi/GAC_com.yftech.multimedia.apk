.class public Lcom/media/common/util/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# static fields
.field private static context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static toast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelToast()V
    .locals 1

    .line 158
    sget-object v0, Lcom/media/common/util/ToastUtils;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 159
    sget-object v0, Lcom/media/common/util/ToastUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    .line 160
    sput-object v0, Lcom/media/common/util/ToastUtils;->toast:Landroid/widget/Toast;

    :cond_0
    return-void
.end method

.method static init(Landroid/content/Context;)V
    .locals 1

    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/media/common/util/ToastUtils;->context:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic lambda$showFailMessage$1(Landroid/view/View;)V
    .locals 0

    .line 125
    invoke-static {}, Lcom/media/common/util/ToastUtils;->cancelToast()V

    return-void
.end method

.method static synthetic lambda$showNormalMessage$0(Landroid/view/View;)V
    .locals 0

    .line 71
    invoke-static {}, Lcom/media/common/util/ToastUtils;->cancelToast()V

    return-void
.end method

.method public static showFailMessage(II)V
    .locals 1

    .line 145
    sget-object v0, Lcom/media/common/util/ToastUtils;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    sget-object v0, Lcom/media/common/util/ToastUtils;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 150
    invoke-static {p0, p1}, Lcom/media/common/util/ToastUtils;->showFailMessage(Ljava/lang/String;I)V

    return-void

    .line 146
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context is null!!!!!!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static showFailMessage(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    .line 101
    invoke-static {p0, p1, v0}, Lcom/media/common/util/ToastUtils;->showFailMessage(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static showFailMessage(Ljava/lang/String;IZ)V
    .locals 6

    .line 105
    sget-object v0, Lcom/media/common/util/ToastUtils;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 108
    invoke-static {}, Lcom/media/common/util/ToastUtils;->cancelToast()V

    .line 110
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 111
    new-instance p0, Landroid/text/style/ForegroundColorSpan;

    sget-object v1, Lcom/media/common/util/ToastUtils;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget v2, Lcom/media/common/ui/widget/R$color;->colorFFFFFF:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 112
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/16 v2, 0x21

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v3, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 116
    new-instance p0, Landroid/widget/Toast;

    sget-object v1, Lcom/media/common/util/ToastUtils;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {p0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    sput-object p0, Lcom/media/common/util/ToastUtils;->toast:Landroid/widget/Toast;

    .line 118
    sget-object p0, Lcom/media/common/util/ToastUtils;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v1, Lcom/media/common/ui/widget/R$layout;->view_toast_fail:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 119
    sget v1, Lcom/media/common/ui/widget/R$id;->tv_text:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 121
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    sget v4, Lcom/yftech/libmvpmodule/utils/Constants;->displayWidth:I

    const/16 v5, 0x58

    invoke-direct {v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 122
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    sget-object v2, Lcom/media/common/util/ToastUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {v2, p0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    if-eqz p2, :cond_0

    .line 125
    sget-object p2, Lcom/media/common/util/-$$Lambda$ToastUtils$QPBye5vuhXvbsOOHL1LZJy-ztys;->INSTANCE:Lcom/media/common/util/-$$Lambda$ToastUtils$QPBye5vuhXvbsOOHL1LZJy-ztys;

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    :cond_0
    sget-object p0, Lcom/media/common/util/ToastUtils;->toast:Landroid/widget/Toast;

    const/16 p2, 0x31

    invoke-virtual {p0, p2, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 133
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    sget-object p0, Lcom/media/common/util/ToastUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {p0, p1}, Landroid/widget/Toast;->setDuration(I)V

    .line 135
    sget-object p0, Lcom/media/common/util/ToastUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 106
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context is null!!!!!!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static showNormalMessage(II)V
    .locals 1

    .line 89
    sget-object v0, Lcom/media/common/util/ToastUtils;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    sget-object v0, Lcom/media/common/util/ToastUtils;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 94
    invoke-static {p0, p1}, Lcom/media/common/util/ToastUtils;->showNormalMessage(Ljava/lang/String;I)V

    return-void

    .line 90
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context is null!!!!!!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static showNormalMessage(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    .line 43
    invoke-static {p0, p1, v0}, Lcom/media/common/util/ToastUtils;->showNormalMessage(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static showNormalMessage(Ljava/lang/String;IZ)V
    .locals 6

    .line 50
    sget-object v0, Lcom/media/common/util/ToastUtils;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 53
    invoke-static {}, Lcom/media/common/util/ToastUtils;->cancelToast()V

    .line 55
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 56
    new-instance p0, Landroid/text/style/ForegroundColorSpan;

    sget-object v1, Lcom/media/common/util/ToastUtils;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget v2, Lcom/media/common/ui/widget/R$color;->colorFFFFFF:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 57
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/16 v2, 0x21

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v3, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 61
    new-instance p0, Landroid/widget/Toast;

    sget-object v1, Lcom/media/common/util/ToastUtils;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {p0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    sput-object p0, Lcom/media/common/util/ToastUtils;->toast:Landroid/widget/Toast;

    .line 63
    sget-object p0, Lcom/media/common/util/ToastUtils;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v1, Lcom/media/common/ui/widget/R$layout;->view_toast_normal:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 64
    sget v1, Lcom/media/common/ui/widget/R$id;->tv_text:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 66
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    sget v4, Lcom/yftech/libmvpmodule/utils/Constants;->displayWidth:I

    const/16 v5, 0x58

    invoke-direct {v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 67
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    sget-object v2, Lcom/media/common/util/ToastUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {v2, p0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    if-eqz p2, :cond_0

    .line 71
    sget-object p2, Lcom/media/common/util/-$$Lambda$ToastUtils$XNUclIDwnrsnm3MQBrXPkzAr08I;->INSTANCE:Lcom/media/common/util/-$$Lambda$ToastUtils$XNUclIDwnrsnm3MQBrXPkzAr08I;

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    :cond_0
    sget-object p0, Lcom/media/common/util/ToastUtils;->toast:Landroid/widget/Toast;

    const/16 p2, 0x31

    invoke-virtual {p0, p2, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 78
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    sget-object p0, Lcom/media/common/util/ToastUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {p0, p1}, Landroid/widget/Toast;->setDuration(I)V

    .line 80
    sget-object p0, Lcom/media/common/util/ToastUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 51
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context is null!!!!!!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
