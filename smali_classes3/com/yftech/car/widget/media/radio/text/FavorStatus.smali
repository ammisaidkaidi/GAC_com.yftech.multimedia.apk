.class public Lcom/yftech/car/widget/media/radio/text/FavorStatus;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "FavorStatus.java"


# static fields
.field public static final ADD_FAVOR:I = 0x1

.field public static final REMOVE_FAVOR:I = 0x2


# instance fields
.field private isSelected:Z

.field private mFavorStatusAddFavorFail:Ljava/lang/String;

.field private mFavorStatusAddFavorSuccess:Ljava/lang/String;

.field private mFavorStatusAmFavorMax:I

.field private mFavorStatusClickFunction:I

.field private mFavorStatusFm1FavorMax:I

.field private mFavorStatusFmFavorMax:I

.field private mFavorStatusIncreasedMaxLimit:Ljava/lang/String;

.field private mFavorStatusMaxUpdateoldData:Z

.field private mFavorStatusRemoveFavorFail:Ljava/lang/String;

.field private mFavorStatusRemoveFavorSuccess:Ljava/lang/String;

.field private mSelectedText:Ljava/lang/String;

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 60
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getAmFavorMax()I
    .locals 0

    .line 117
    iget p0, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mFavorStatusAmFavorMax:I

    return p0
.end method

.method public getClickFunction()I
    .locals 0

    .line 181
    iget p0, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mFavorStatusClickFunction:I

    return p0
.end method

.method public getFavorMax(Lcom/yftech/car/media/radio/entity/DataOfRadio;)I
    .locals 1

    .line 210
    iget p1, p1, Lcom/yftech/car/media/radio/entity/DataOfRadio;->type:I

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 218
    iget p0, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mFavorStatusFm1FavorMax:I

    return p0

    .line 212
    :cond_0
    iget p0, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mFavorStatusAmFavorMax:I

    return p0

    .line 214
    :cond_1
    iget p0, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mFavorStatusFmFavorMax:I

    return p0
.end method

.method public getFm1FavorMax()I
    .locals 0

    .line 124
    iget p0, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mFavorStatusFm1FavorMax:I

    return p0
.end method

.method public getFmFavorMax()I
    .locals 0

    .line 121
    iget p0, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mFavorStatusFmFavorMax:I

    return p0
.end method

.method public init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 70
    sget-object v0, Lcom/yftech/car/widget/media/R$styleable;->FavorStatus:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 71
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->FavorStatus_favorStatus_selected_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mSelectedText:Ljava/lang/String;

    .line 72
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->FavorStatus_favorStatus_click_function:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mFavorStatusClickFunction:I

    .line 74
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->FavorStatus_favorStatus_fm_favor_max:I

    const/4 v1, -0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mFavorStatusFmFavorMax:I

    .line 75
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->FavorStatus_favorStatus_fm1_favor_max:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mFavorStatusFm1FavorMax:I

    .line 76
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->FavorStatus_favorStatus_fm_favor_max:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mFavorStatusAmFavorMax:I

    .line 78
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->FavorStatus_favorStatus_add_favor_success:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mFavorStatusAddFavorSuccess:Ljava/lang/String;

    .line 79
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->FavorStatus_favorStatus_add_favor_fail:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mFavorStatusAddFavorFail:Ljava/lang/String;

    .line 80
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->FavorStatus_favorStatus_remove_favor_success:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mFavorStatusRemoveFavorSuccess:Ljava/lang/String;

    .line 81
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->FavorStatus_favorStatus_remove_favor_fail:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mFavorStatusRemoveFavorFail:Ljava/lang/String;

    .line 82
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->FavorStatus_favorStatus_increased_max_limit:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mFavorStatusIncreasedMaxLimit:Ljava/lang/String;

    .line 84
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->FavorStatus_favorStatus_max_updateold_data:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mFavorStatusMaxUpdateoldData:Z

    .line 87
    iget p1, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mFavorStatusFmFavorMax:I

    if-ne p1, v1, :cond_0

    .line 88
    invoke-static {}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->getFavorStatusFmFavorMax()I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mFavorStatusFmFavorMax:I

    .line 90
    :cond_0
    iget p1, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mFavorStatusFm1FavorMax:I

    if-ne p1, v1, :cond_1

    .line 91
    invoke-static {}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->getFavorStatusFm1FavorMax()I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mFavorStatusFm1FavorMax:I

    .line 93
    :cond_1
    iget p1, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mFavorStatusAmFavorMax:I

    if-ne p1, v1, :cond_2

    .line 94
    invoke-static {}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->getFavorStatusAmFavorMax()I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mFavorStatusAmFavorMax:I

    .line 97
    :cond_2
    iget-boolean p1, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mFavorStatusMaxUpdateoldData:Z

    if-nez p1, :cond_3

    .line 98
    invoke-static {}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->isFavorStatusMaxUpdateoldData()Z

    move-result p1

    iput-boolean p1, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mFavorStatusMaxUpdateoldData:Z

    :cond_3
    return-void
.end method

.method public isFavorStatusMaxUpdateoldData()Z
    .locals 0

    .line 177
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mFavorStatusMaxUpdateoldData:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 191
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onAttachedToWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 196
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onFinishInflate()V

    .line 197
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mText:Ljava/lang/String;

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mSelectedText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setActivated(Z)V
    .locals 0

    .line 186
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setActivated(Z)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 105
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setSelected(Z)V

    .line 107
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->isSelected:Z

    if-eqz p1, :cond_0

    .line 110
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mSelectedText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public showAddFavor(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 129
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mFavorStatusAddFavorSuccess:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 130
    invoke-static {}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->getFavorStatusAddFavorSuccess()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mFavorStatusAddFavorSuccess:Ljava/lang/String;

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mFavorStatusAddFavorSuccess:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 134
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mFavorStatusAddFavorSuccess:Ljava/lang/String;

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 137
    :cond_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mFavorStatusIncreasedMaxLimit:Ljava/lang/String;

    if-nez p1, :cond_2

    .line 138
    invoke-static {}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->getFavorStatusIncreasedMaxLimit()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mFavorStatusIncreasedMaxLimit:Ljava/lang/String;

    .line 140
    :cond_2
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mFavorStatusIncreasedMaxLimit:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 141
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/media/radio/entity/DataOfRadio;

    .line 142
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/manager/RadioManager;->getFavors(I)[Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 143
    array-length v1, v1

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->getFavorMax(Lcom/yftech/car/media/radio/entity/DataOfRadio;)I

    move-result p1

    if-ne v1, p1, :cond_3

    .line 144
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mFavorStatusIncreasedMaxLimit:Ljava/lang/String;

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 149
    :cond_3
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mFavorStatusAddFavorFail:Ljava/lang/String;

    if-nez p1, :cond_4

    .line 150
    invoke-static {}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->getFavorStatusAddFavorFail()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mFavorStatusAddFavorFail:Ljava/lang/String;

    .line 152
    :cond_4
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mFavorStatusAddFavorFail:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 153
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mFavorStatusAddFavorFail:Ljava/lang/String;

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_5
    :goto_0
    return-void
.end method

.method public showRemoveFavor(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 160
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mFavorStatusRemoveFavorSuccess:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 161
    invoke-static {}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->getFavorStatusRemoveFavorSuccess()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mFavorStatusRemoveFavorSuccess:Ljava/lang/String;

    .line 163
    :cond_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mFavorStatusRemoveFavorSuccess:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 164
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mFavorStatusRemoveFavorSuccess:Ljava/lang/String;

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 167
    :cond_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mFavorStatusRemoveFavorFail:Ljava/lang/String;

    if-nez p1, :cond_2

    .line 168
    invoke-static {}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->getFavorStatusRemoveFavorFail()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mFavorStatusRemoveFavorFail:Ljava/lang/String;

    .line 170
    :cond_2
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mFavorStatusRemoveFavorFail:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 171
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->mFavorStatusRemoveFavorFail:Ljava/lang/String;

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_0
    return-void
.end method
