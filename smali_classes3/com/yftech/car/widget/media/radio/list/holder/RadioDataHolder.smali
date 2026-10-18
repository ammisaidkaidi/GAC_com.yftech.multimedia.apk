.class public Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;
.super Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
.source "RadioDataHolder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RadioDataHolder"


# instance fields
.field private mDataOfRadio:Lcom/yftech/car/media/radio/entity/DataOfRadio;

.field private mFavorStatus:Lcom/yftech/car/widget/media/radio/text/FavorStatus;

.field private mPlayAnimation:Lcom/yftech/car/widget/media/view/PlayAnimation;

.field private mPlayStatus:Lcom/yftech/car/widget/media/text/PlayStatus;

.field private final mRadioTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/radio/text/RadioText;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedFrameLayout:Lcom/yftech/car/widget/media/layout/SelectedFrameLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 53
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->mRadioTextList:Ljava/util/List;

    .line 54
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->mRadioTextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 55
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    .line 57
    check-cast p1, Landroid/view/ViewGroup;

    .line 59
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 60
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b

    .line 62
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 63
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 64
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 65
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 66
    instance-of v3, v2, Lcom/yftech/car/widget/media/layout/SelectedFrameLayout;

    if-eqz v3, :cond_1

    .line 67
    move-object v3, v2

    check-cast v3, Lcom/yftech/car/widget/media/layout/SelectedFrameLayout;

    iput-object v3, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->mSelectedFrameLayout:Lcom/yftech/car/widget/media/layout/SelectedFrameLayout;

    .line 69
    :cond_1
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 71
    :cond_2
    instance-of v3, v2, Lcom/yftech/car/widget/media/radio/text/RadioText;

    if-eqz v3, :cond_3

    .line 72
    iget-object v3, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->mRadioTextList:Ljava/util/List;

    check-cast v2, Lcom/yftech/car/widget/media/radio/text/RadioText;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 73
    :cond_3
    instance-of v3, v2, Lcom/yftech/car/widget/media/view/PlayAnimation;

    if-eqz v3, :cond_4

    .line 74
    check-cast v2, Lcom/yftech/car/widget/media/view/PlayAnimation;

    iput-object v2, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->mPlayAnimation:Lcom/yftech/car/widget/media/view/PlayAnimation;

    goto :goto_1

    .line 75
    :cond_4
    instance-of v3, v2, Lcom/yftech/car/widget/media/radio/text/FavorStatus;

    if-eqz v3, :cond_5

    .line 76
    check-cast v2, Lcom/yftech/car/widget/media/radio/text/FavorStatus;

    iput-object v2, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->mFavorStatus:Lcom/yftech/car/widget/media/radio/text/FavorStatus;

    goto :goto_1

    .line 77
    :cond_5
    instance-of v3, v2, Lcom/yftech/car/widget/media/text/PlayStatus;

    if-eqz v3, :cond_6

    .line 78
    check-cast v2, Lcom/yftech/car/widget/media/text/PlayStatus;

    iput-object v2, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->mPlayStatus:Lcom/yftech/car/widget/media/text/PlayStatus;

    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    :cond_7
    instance-of v0, p1, Lcom/yftech/car/widget/media/radio/text/RadioText;

    if-eqz v0, :cond_8

    .line 85
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->mRadioTextList:Ljava/util/List;

    check-cast p1, Lcom/yftech/car/widget/media/radio/text/RadioText;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 86
    :cond_8
    instance-of v0, p1, Lcom/yftech/car/widget/media/view/PlayAnimation;

    if-eqz v0, :cond_9

    .line 87
    check-cast p1, Lcom/yftech/car/widget/media/view/PlayAnimation;

    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->mPlayAnimation:Lcom/yftech/car/widget/media/view/PlayAnimation;

    goto :goto_2

    .line 88
    :cond_9
    instance-of v0, p1, Lcom/yftech/car/widget/media/radio/text/FavorStatus;

    if-eqz v0, :cond_a

    .line 89
    check-cast p1, Lcom/yftech/car/widget/media/radio/text/FavorStatus;

    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->mFavorStatus:Lcom/yftech/car/widget/media/radio/text/FavorStatus;

    goto :goto_2

    .line 90
    :cond_a
    instance-of v0, p1, Lcom/yftech/car/widget/media/text/PlayStatus;

    if-eqz v0, :cond_b

    .line 91
    check-cast p1, Lcom/yftech/car/widget/media/text/PlayStatus;

    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->mPlayStatus:Lcom/yftech/car/widget/media/text/PlayStatus;

    .line 94
    :cond_b
    :goto_2
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->mFavorStatus:Lcom/yftech/car/widget/media/radio/text/FavorStatus;

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->mFavorStatus:Lcom/yftech/car/widget/media/radio/text/FavorStatus;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->getClickFunction()I

    move-result p1

    if-lez p1, :cond_c

    .line 95
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->mFavorStatus:Lcom/yftech/car/widget/media/radio/text/FavorStatus;

    iget-object p2, p2, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mOnFavorClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    :cond_c
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->mPlayStatus:Lcom/yftech/car/widget/media/text/PlayStatus;

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->mPlayStatus:Lcom/yftech/car/widget/media/text/PlayStatus;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/text/PlayStatus;->getClickFunction()I

    move-result p1

    if-lez p1, :cond_d

    .line 99
    new-instance p1, Lcom/yftech/car/widget/media/radio/list/holder/-$$Lambda$RadioDataHolder$iBRsJEVmN9zWw6fPtr_LptE9e1Q;

    invoke-direct {p1, p0}, Lcom/yftech/car/widget/media/radio/list/holder/-$$Lambda$RadioDataHolder$iBRsJEVmN9zWw6fPtr_LptE9e1Q;-><init>(Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;)V

    .line 123
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->mPlayStatus:Lcom/yftech/car/widget/media/text/PlayStatus;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/text/PlayStatus;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_d
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;Landroid/view/View;)V
    .locals 2

    .line 100
    invoke-static {}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->getDataOfRadio()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object p1

    .line 101
    invoke-static {}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->isPlaying()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result p1

    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->mDataOfRadio:Lcom/yftech/car/media/radio/entity/DataOfRadio;

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 103
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->mPlayStatus:Lcom/yftech/car/widget/media/text/PlayStatus;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/text/PlayStatus;->isClickFunction(I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 104
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->pause()V

    goto :goto_0

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->mPlayStatus:Lcom/yftech/car/widget/media/text/PlayStatus;

    invoke-virtual {p1, v1}, Lcom/yftech/car/widget/media/text/PlayStatus;->isClickFunction(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 108
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->mDataOfRadio:Lcom/yftech/car/media/radio/entity/DataOfRadio;

    invoke-virtual {p0}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->setFreq(I)I

    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result p1

    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->mDataOfRadio:Lcom/yftech/car/media/radio/entity/DataOfRadio;

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 113
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->mPlayStatus:Lcom/yftech/car/widget/media/text/PlayStatus;

    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/text/PlayStatus;->isClickFunction(I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 114
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->play()V

    goto :goto_0

    .line 117
    :cond_2
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->mPlayStatus:Lcom/yftech/car/widget/media/text/PlayStatus;

    invoke-virtual {p1, v1}, Lcom/yftech/car/widget/media/text/PlayStatus;->isClickFunction(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 118
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->mDataOfRadio:Lcom/yftech/car/media/radio/entity/DataOfRadio;

    invoke-virtual {p0}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->setFreq(I)I

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public isFavorStatus()Z
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->mFavorStatus:Lcom/yftech/car/widget/media/radio/text/FavorStatus;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setRadioData(Lcom/yftech/car/media/radio/entity/DataOfRadio;I)V
    .locals 5

    .line 140
    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->mDataOfRadio:Lcom/yftech/car/media/radio/entity/DataOfRadio;

    .line 141
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 142
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setId(I)V

    .line 144
    invoke-static {}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->getDataOfRadio()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 146
    iget v0, v0, Lcom/yftech/car/media/radio/entity/DataOfRadio;->Freq:I

    iget v3, p1, Lcom/yftech/car/media/radio/entity/DataOfRadio;->Freq:I

    if-ne v0, v3, :cond_3

    .line 148
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->mRadioTextList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/radio/text/RadioText;

    .line 149
    invoke-virtual {v0, v2}, Lcom/yftech/car/widget/media/radio/text/RadioText;->setSelected(Z)V

    .line 150
    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/radio/text/RadioText;->setRadioText(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V

    goto :goto_0

    .line 153
    :cond_0
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->mPlayAnimation:Lcom/yftech/car/widget/media/view/PlayAnimation;

    if-eqz p2, :cond_1

    .line 154
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->mPlayAnimation:Lcom/yftech/car/widget/media/view/PlayAnimation;

    invoke-virtual {p2, v1}, Lcom/yftech/car/widget/media/view/PlayAnimation;->setMediaType(I)V

    .line 155
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->mPlayAnimation:Lcom/yftech/car/widget/media/view/PlayAnimation;

    invoke-virtual {p2, v2}, Lcom/yftech/car/widget/media/view/PlayAnimation;->setSelectedPlay(Z)V

    .line 156
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->mPlayAnimation:Lcom/yftech/car/widget/media/view/PlayAnimation;

    const-string v0, ""

    invoke-virtual {p2, v0}, Lcom/yftech/car/widget/media/view/PlayAnimation;->setNumberText(Ljava/lang/String;)V

    .line 158
    :cond_1
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->mSelectedFrameLayout:Lcom/yftech/car/widget/media/layout/SelectedFrameLayout;

    if-eqz p2, :cond_2

    .line 159
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->mSelectedFrameLayout:Lcom/yftech/car/widget/media/layout/SelectedFrameLayout;

    invoke-virtual {p2, v2}, Lcom/yftech/car/widget/media/layout/SelectedFrameLayout;->setSelected(Z)V

    .line 161
    :cond_2
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setSelected(Z)V

    .line 162
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->mPlayStatus:Lcom/yftech/car/widget/media/text/PlayStatus;

    if-eqz p2, :cond_7

    .line 163
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->mPlayStatus:Lcom/yftech/car/widget/media/text/PlayStatus;

    invoke-static {}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->isPlaying()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/yftech/car/widget/media/text/PlayStatus;->setPlayStatus(Z)V

    goto :goto_2

    .line 167
    :cond_3
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->mRadioTextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/widget/media/radio/text/RadioText;

    .line 168
    invoke-virtual {v3, v4}, Lcom/yftech/car/widget/media/radio/text/RadioText;->setSelected(Z)V

    .line 169
    invoke-virtual {v3, p1}, Lcom/yftech/car/widget/media/radio/text/RadioText;->setRadioText(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V

    goto :goto_1

    .line 172
    :cond_4
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->mPlayAnimation:Lcom/yftech/car/widget/media/view/PlayAnimation;

    if-eqz v0, :cond_5

    .line 173
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->mPlayAnimation:Lcom/yftech/car/widget/media/view/PlayAnimation;

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/view/PlayAnimation;->setMediaType(I)V

    .line 174
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->mPlayAnimation:Lcom/yftech/car/widget/media/view/PlayAnimation;

    invoke-virtual {v0, v4}, Lcom/yftech/car/widget/media/view/PlayAnimation;->setSelectedPlay(Z)V

    .line 175
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->mPlayAnimation:Lcom/yftech/car/widget/media/view/PlayAnimation;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr p2, v2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/yftech/car/widget/media/view/PlayAnimation;->setNumberText(Ljava/lang/String;)V

    .line 177
    :cond_5
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->mSelectedFrameLayout:Lcom/yftech/car/widget/media/layout/SelectedFrameLayout;

    if-eqz p2, :cond_6

    .line 178
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->mSelectedFrameLayout:Lcom/yftech/car/widget/media/layout/SelectedFrameLayout;

    invoke-virtual {p2, v4}, Lcom/yftech/car/widget/media/layout/SelectedFrameLayout;->setSelected(Z)V

    .line 181
    :cond_6
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v4}, Landroid/view/View;->setSelected(Z)V

    .line 182
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->mPlayStatus:Lcom/yftech/car/widget/media/text/PlayStatus;

    if-eqz p2, :cond_7

    .line 183
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->mPlayStatus:Lcom/yftech/car/widget/media/text/PlayStatus;

    invoke-virtual {p2, v4}, Lcom/yftech/car/widget/media/text/PlayStatus;->setPlayStatus(Z)V

    .line 187
    :cond_7
    :goto_2
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->mFavorStatus:Lcom/yftech/car/widget/media/radio/text/FavorStatus;

    if-eqz p2, :cond_8

    .line 188
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->mFavorStatus:Lcom/yftech/car/widget/media/radio/text/FavorStatus;

    invoke-virtual {p2, p1}, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->setTag(Ljava/lang/Object;)V

    .line 189
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/yftech/car/widget/media/manager/RadioManager;->isFreqFavored(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    move-result p1

    .line 191
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->mFavorStatus:Lcom/yftech/car/widget/media/radio/text/FavorStatus;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->setSelected(Z)V

    :cond_8
    return-void
.end method
