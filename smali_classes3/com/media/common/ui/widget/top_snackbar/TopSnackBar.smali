.class public final Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;
.super Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;
.source "TopSnackBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/media/common/ui/widget/top_snackbar/TopSnackBar$SnackBarLayout;,
        Lcom/media/common/ui/widget/top_snackbar/TopSnackBar$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar<",
        "Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;",
        ">;"
    }
.end annotation


# static fields
.field public static final LENGTH_INDEFINITE:I = -0x2

.field public static final LENGTH_LONG:I = 0x0

.field public static final LENGTH_SHORT:I = -0x1


# instance fields
.field private mCallback:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$BaseCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$BaseCallback<",
            "Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$ContentViewCallback;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$ContentViewCallback;)V

    return-void
.end method

.method private static findSuitableParent(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 3

    const/4 v0, 0x0

    move-object v1, v0

    .line 237
    :cond_0
    instance-of v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v2, :cond_1

    .line 239
    check-cast p0, Landroid/view/ViewGroup;

    return-object p0

    .line 240
    :cond_1
    instance-of v2, p0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_3

    .line 241
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x1020002

    if-ne v1, v2, :cond_2

    .line 244
    check-cast p0, Landroid/view/ViewGroup;

    return-object p0

    .line 247
    :cond_2
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    :cond_3
    if-eqz p0, :cond_5

    .line 253
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 254
    instance-of v2, p0, Landroid/view/View;

    if-eqz v2, :cond_4

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_4
    move-object p0, v0

    :cond_5
    :goto_0
    if-nez p0, :cond_0

    return-object v1
.end method

.method public static make(Landroid/view/View;II)Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 231
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;

    move-result-object p0

    return-object p0
.end method

.method public static make(Landroid/view/View;III)Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 209
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;->make(Landroid/view/View;ILjava/lang/CharSequence;I)Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;

    move-result-object p0

    return-object p0
.end method

.method public static make(Landroid/view/View;ILjava/lang/CharSequence;I)Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 173
    invoke-static {p0}, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;->findSuitableParent(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 179
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 181
    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/media/common/ui/widget/top_snackbar/SnackbarContentLayout;

    .line 183
    new-instance v0, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;

    invoke-direct {v0, p0, p1, p1}, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$ContentViewCallback;)V

    .line 184
    invoke-virtual {v0, p2}, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;->setText(Ljava/lang/CharSequence;)Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;

    .line 185
    invoke-virtual {v0, p3}, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;->setDuration(I)Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;

    return-object v0

    .line 175
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No suitable parent found from the given view. Please provide a valid view."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 136
    invoke-static {p0}, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;->findSuitableParent(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 142
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 143
    sget v1, Lcom/media/common/ui/widget/R$layout;->design_layout_top_snackbar_include:I

    const/4 v2, 0x0

    .line 144
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/media/common/ui/widget/top_snackbar/SnackbarContentLayout;

    .line 146
    new-instance v1, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;

    invoke-direct {v1, p0, v0, v0}, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$ContentViewCallback;)V

    .line 147
    invoke-virtual {v1, p1}, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;->setText(Ljava/lang/CharSequence;)Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;

    .line 148
    invoke-virtual {v1, p2}, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;->setDuration(I)Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;

    return-object v1

    .line 138
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No suitable parent found from the given view. Please provide a valid view."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public setAction(ILandroid/view/View$OnClickListener;)Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 293
    invoke-virtual {p0}, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;

    move-result-object p0

    return-object p0
.end method

.method public setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;->mView:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/media/common/ui/widget/top_snackbar/SnackbarContentLayout;

    .line 305
    invoke-virtual {v0}, Lcom/media/common/ui/widget/top_snackbar/SnackbarContentLayout;->getActionView()Landroid/widget/Button;

    move-result-object v0

    .line 307
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 311
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    new-instance p1, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar$1;

    invoke-direct {p1, p0, p2}, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar$1;-><init>(Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p1, 0x8

    .line 308
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x0

    .line 309
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-object p0
.end method

.method public setActionTextColor(I)Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 343
    iget-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;->mView:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/media/common/ui/widget/top_snackbar/SnackbarContentLayout;

    .line 344
    invoke-virtual {v0}, Lcom/media/common/ui/widget/top_snackbar/SnackbarContentLayout;->getActionView()Landroid/widget/Button;

    move-result-object v0

    .line 345
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p0
.end method

.method public setActionTextColor(Landroid/content/res/ColorStateList;)Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;->mView:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/media/common/ui/widget/top_snackbar/SnackbarContentLayout;

    .line 332
    invoke-virtual {v0}, Lcom/media/common/ui/widget/top_snackbar/SnackbarContentLayout;->getActionView()Landroid/widget/Button;

    move-result-object v0

    .line 333
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-object p0
.end method

.method public setCallback(Lcom/media/common/ui/widget/top_snackbar/TopSnackBar$Callback;)Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 366
    iget-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;->mCallback:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$BaseCallback;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;->mCallback:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$BaseCallback;

    invoke-virtual {p0, v0}, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;->removeCallback(Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$BaseCallback;)Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;

    :cond_0
    if-eqz p1, :cond_1

    .line 370
    invoke-virtual {p0, p1}, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;->addCallback(Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$BaseCallback;)Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;

    .line 374
    :cond_1
    iput-object p1, p0, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;->mCallback:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$BaseCallback;

    return-object p0
.end method

.method public setText(I)Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 282
    invoke-virtual {p0}, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;->setText(Ljava/lang/CharSequence;)Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;

    move-result-object p0

    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;->mView:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/media/common/ui/widget/top_snackbar/SnackbarContentLayout;

    .line 270
    invoke-virtual {v0}, Lcom/media/common/ui/widget/top_snackbar/SnackbarContentLayout;->getMessageView()Landroid/widget/TextView;

    move-result-object v0

    .line 271
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method
