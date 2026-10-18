.class public Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;
.super Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
.source "DynamicHolder.java"


# instance fields
.field private mBand:Landroid/widget/TextView;

.field private mDynamicAdapter:Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;

.field private mFavorStatus:Landroid/view/View;

.field private mFreq:Landroid/widget/TextView;

.field private mHertz:Landroid/widget/TextView;

.field private mNumber:Landroid/widget/TextView;

.field private mPlayStatus:Lcom/yftech/car/widget/media/view/PlayAnimation;


# direct methods
.method public constructor <init>(Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;Landroid/widget/FrameLayout;)V
    .locals 0
    .param p2    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 48
    invoke-direct {p0, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 49
    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;->mDynamicAdapter:Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;

    const/4 p1, 0x2

    .line 50
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;->mBand:Landroid/widget/TextView;

    const/4 p1, 0x1

    .line 51
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;->mFreq:Landroid/widget/TextView;

    const/4 p1, 0x4

    .line 52
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;->mHertz:Landroid/widget/TextView;

    const/16 p1, 0x8

    .line 53
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;->mNumber:Landroid/widget/TextView;

    const/16 p1, 0x20

    .line 54
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;->mFavorStatus:Landroid/view/View;

    const/16 p1, 0x10

    .line 55
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/widget/media/view/PlayAnimation;

    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;->mPlayStatus:Lcom/yftech/car/widget/media/view/PlayAnimation;

    return-void
.end method


# virtual methods
.method public setRadio(Lcom/yftech/car/media/radio/entity/DataOfRadio;I)V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setId(I)V

    .line 62
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;->mNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;->mNumber:Landroid/widget/TextView;

    add-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :cond_0
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;->mFreq:Landroid/widget/TextView;

    const/4 v0, 0x2

    if-eqz p2, :cond_2

    .line 67
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :goto_0
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 68
    iget-object v1, p0, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;->mFreq:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :cond_2
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;->mFavorStatus:Landroid/view/View;

    if-eqz p2, :cond_8

    .line 72
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;->mFavorStatus:Landroid/view/View;

    instance-of p2, p2, Landroid/widget/ImageView;

    if-eqz p2, :cond_4

    .line 73
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;->mFavorStatus:Landroid/view/View;

    check-cast p2, Landroid/widget/ImageView;

    .line 74
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/manager/RadioManager;->isFreqFavored(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 75
    iget-object v1, p0, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;->mDynamicAdapter:Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;

    iget-object v1, v1, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorDrawableCollected:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;->mDynamicAdapter:Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;

    iget-object v1, v1, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorDrawable:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 76
    :cond_4
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;->mFavorStatus:Landroid/view/View;

    instance-of p2, p2, Landroid/widget/TextView;

    if-eqz p2, :cond_7

    .line 77
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;->mFavorStatus:Landroid/view/View;

    check-cast p2, Landroid/widget/TextView;

    .line 78
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/manager/RadioManager;->isFreqFavored(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 79
    iget-object v2, p0, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;->mDynamicAdapter:Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;

    iget-object v2, v2, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorDrawableCollected:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;->mDynamicAdapter:Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;

    iget-object v2, v2, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorDrawable:Landroid/graphics/drawable/Drawable;

    :goto_2
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz v1, :cond_6

    .line 80
    iget-object v1, p0, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;->mDynamicAdapter:Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;

    iget-object v1, v1, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorTextCollected:Ljava/lang/String;

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;->mDynamicAdapter:Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;

    iget-object v1, v1, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorTextNo:Ljava/lang/String;

    :goto_3
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :cond_7
    :goto_4
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;->mFavorStatus:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 86
    :cond_8
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result p2

    if-eqz p2, :cond_c

    if-eq p2, v0, :cond_a

    .line 104
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;->mBand:Landroid/widget/TextView;

    if-eqz p2, :cond_9

    .line 105
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;->mBand:Landroid/widget/TextView;

    sget v0, Lcom/yftech/car/widget/media/R$string;->fm1:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 107
    :cond_9
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;->mHertz:Landroid/widget/TextView;

    if-eqz p2, :cond_e

    .line 108
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;->mHertz:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;->mDynamicAdapter:Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;

    iget-object v0, v0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemHertzFm1Text:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 96
    :cond_a
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;->mBand:Landroid/widget/TextView;

    if-eqz p2, :cond_b

    .line 97
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;->mBand:Landroid/widget/TextView;

    sget v0, Lcom/yftech/car/widget/media/R$string;->am:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 99
    :cond_b
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;->mHertz:Landroid/widget/TextView;

    if-eqz p2, :cond_e

    .line 100
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;->mHertz:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;->mDynamicAdapter:Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;

    iget-object v0, v0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemHertzAmText:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 88
    :cond_c
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;->mBand:Landroid/widget/TextView;

    if-eqz p2, :cond_d

    .line 89
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;->mBand:Landroid/widget/TextView;

    sget v0, Lcom/yftech/car/widget/media/R$string;->fm:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 91
    :cond_d
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;->mHertz:Landroid/widget/TextView;

    if-eqz p2, :cond_e

    .line 92
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;->mHertz:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;->mDynamicAdapter:Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;

    iget-object v0, v0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemHertzFmText:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :cond_e
    :goto_5
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;->mPlayStatus:Lcom/yftech/car/widget/media/view/PlayAnimation;

    if-eqz p2, :cond_10

    .line 114
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yftech/car/widget/media/manager/RadioManager;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object p2

    .line 115
    iget p1, p1, Lcom/yftech/car/media/radio/entity/DataOfRadio;->Freq:I

    iget p2, p2, Lcom/yftech/car/media/radio/entity/DataOfRadio;->Freq:I

    if-ne p1, p2, :cond_f

    .line 116
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;->mPlayStatus:Lcom/yftech/car/widget/media/view/PlayAnimation;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/view/PlayAnimation;->setVisibility(I)V

    .line 117
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;->mPlayStatus:Lcom/yftech/car/widget/media/view/PlayAnimation;

    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/manager/RadioManager;->isPlaying()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/view/PlayAnimation;->setPlay(Z)V

    goto :goto_6

    .line 119
    :cond_f
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;->mPlayStatus:Lcom/yftech/car/widget/media/view/PlayAnimation;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/view/PlayAnimation;->setVisibility(I)V

    :cond_10
    :goto_6
    return-void
.end method
