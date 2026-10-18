.class public Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;
.super Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
.source "MediaFolderHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder$OnClickFolderListener;
    }
.end annotation


# instance fields
.field private mImageView:Lcom/yftech/car/widget/media/view/MediaImageView;

.field private mMediaFolder:Lcom/yftech/car/media/data/entity/MediaFolder;

.field private mOnClickFolderListener:Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder$OnClickFolderListener;

.field private mPlayAnimation:Lcom/yftech/car/widget/media/view/PlayAnimation;

.field private mSelectedFrameLayout:Lcom/yftech/car/widget/media/layout/SelectedFrameLayout;

.field private final mTextViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/text/MediaFolderTextView;",
            ">;"
        }
    .end annotation
.end field

.field private position:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 52
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->mTextViewList:Ljava/util/List;

    .line 54
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 56
    check-cast p1, Landroid/view/ViewGroup;

    .line 58
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 59
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 61
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 62
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 63
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 65
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 66
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 67
    instance-of v3, v2, Lcom/yftech/car/widget/media/layout/SelectedFrameLayout;

    if-eqz v3, :cond_4

    .line 68
    check-cast v2, Lcom/yftech/car/widget/media/layout/SelectedFrameLayout;

    iput-object v2, p0, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->mSelectedFrameLayout:Lcom/yftech/car/widget/media/layout/SelectedFrameLayout;

    goto :goto_1

    .line 71
    :cond_1
    instance-of v3, v2, Lcom/yftech/car/widget/media/text/MediaFolderTextView;

    if-eqz v3, :cond_2

    .line 72
    iget-object v3, p0, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->mTextViewList:Ljava/util/List;

    check-cast v2, Lcom/yftech/car/widget/media/text/MediaFolderTextView;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 73
    :cond_2
    instance-of v3, v2, Lcom/yftech/car/widget/media/view/PlayAnimation;

    if-eqz v3, :cond_3

    .line 74
    check-cast v2, Lcom/yftech/car/widget/media/view/PlayAnimation;

    iput-object v2, p0, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->mPlayAnimation:Lcom/yftech/car/widget/media/view/PlayAnimation;

    goto :goto_1

    .line 75
    :cond_3
    instance-of v3, v2, Lcom/yftech/car/widget/media/view/MediaImageView;

    if-eqz v3, :cond_4

    .line 76
    check-cast v2, Lcom/yftech/car/widget/media/view/MediaImageView;

    iput-object v2, p0, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->mImageView:Lcom/yftech/car/widget/media/view/MediaImageView;

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    :cond_5
    instance-of v0, p1, Lcom/yftech/car/widget/media/text/MediaFolderTextView;

    if-eqz v0, :cond_6

    .line 83
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->mTextViewList:Ljava/util/List;

    check-cast p1, Lcom/yftech/car/widget/media/text/MediaFolderTextView;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 84
    :cond_6
    instance-of v0, p1, Lcom/yftech/car/widget/media/view/PlayAnimation;

    if-eqz v0, :cond_7

    .line 85
    check-cast p1, Lcom/yftech/car/widget/media/view/PlayAnimation;

    iput-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->mPlayAnimation:Lcom/yftech/car/widget/media/view/PlayAnimation;

    :cond_7
    :goto_2
    return-void
.end method

.method private setSelectedStatus(Z)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 160
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->mImageView:Lcom/yftech/car/widget/media/view/MediaImageView;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->mImageView:Lcom/yftech/car/widget/media/view/MediaImageView;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/view/MediaImageView;->setSelected(Z)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->mSelectedFrameLayout:Lcom/yftech/car/widget/media/layout/SelectedFrameLayout;

    if-eqz v0, :cond_1

    .line 164
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->mSelectedFrameLayout:Lcom/yftech/car/widget/media/layout/SelectedFrameLayout;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/layout/SelectedFrameLayout;->setSelected(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 175
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->mOnClickFolderListener:Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder$OnClickFolderListener;

    if-eqz p1, :cond_0

    .line 176
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->mOnClickFolderListener:Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder$OnClickFolderListener;

    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->mMediaFolder:Lcom/yftech/car/media/data/entity/MediaFolder;

    iget p0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->position:I

    invoke-interface {p1, v0, p0}, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder$OnClickFolderListener;->onItemFolder(Lcom/yftech/car/media/data/entity/MediaFolder;I)V

    :cond_0
    return-void
.end method

.method public setMediaFolder(Lcom/yftech/car/media/data/entity/MediaFolder;I)V
    .locals 5

    .line 91
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->mMediaFolder:Lcom/yftech/car/media/data/entity/MediaFolder;

    .line 92
    iput p2, p0, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->position:I

    .line 93
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->mTextViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/text/MediaFolderTextView;

    .line 94
    invoke-virtual {v1, p1, p2}, Lcom/yftech/car/widget/media/text/MediaFolderTextView;->updateFolder(Lcom/yftech/car/media/data/entity/MediaFolder;I)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->mPlayAnimation:Lcom/yftech/car/widget/media/view/PlayAnimation;

    if-eqz v0, :cond_5

    .line 97
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFolder;->getData()Ljava/util/List;

    move-result-object v0

    .line 98
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    const/4 v1, 0x0

    .line 99
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/media/data/entity/MediaFile;

    .line 100
    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_5

    .line 101
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/manager/MusicManager;->getPlayMusic()Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object v2

    .line 102
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFolder;->getType()I

    move-result v3

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    .line 129
    :pswitch_0
    iget-object v3, p0, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->mPlayAnimation:Lcom/yftech/car/widget/media/view/PlayAnimation;

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/yftech/car/widget/media/view/PlayAnimation;->setMediaType(I)V

    .line 130
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFolder;->getFolder()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Lcom/yftech/car/media/data/entity/MediaFile;->getGenre()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 131
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->mPlayAnimation:Lcom/yftech/car/widget/media/view/PlayAnimation;

    invoke-virtual {p1, v4}, Lcom/yftech/car/widget/media/view/PlayAnimation;->setSelectedPlay(Z)V

    .line 132
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->mPlayAnimation:Lcom/yftech/car/widget/media/view/PlayAnimation;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/view/PlayAnimation;->setNumberText(Ljava/lang/String;)V

    .line 133
    invoke-direct {p0, v4}, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->setSelectedStatus(Z)V

    goto/16 :goto_1

    .line 135
    :cond_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->mPlayAnimation:Lcom/yftech/car/widget/media/view/PlayAnimation;

    invoke-virtual {p1, v1}, Lcom/yftech/car/widget/media/view/PlayAnimation;->setSelectedPlay(Z)V

    .line 136
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->mPlayAnimation:Lcom/yftech/car/widget/media/view/PlayAnimation;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr p2, v4

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/view/PlayAnimation;->setNumberText(Ljava/lang/String;)V

    .line 137
    invoke-direct {p0, v1}, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->setSelectedStatus(Z)V

    goto/16 :goto_1

    .line 117
    :pswitch_1
    iget-object v3, p0, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->mPlayAnimation:Lcom/yftech/car/widget/media/view/PlayAnimation;

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/yftech/car/widget/media/view/PlayAnimation;->setMediaType(I)V

    .line 118
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFolder;->getFolder()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Lcom/yftech/car/media/data/entity/MediaFile;->getAlbum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 119
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->mPlayAnimation:Lcom/yftech/car/widget/media/view/PlayAnimation;

    invoke-virtual {p1, v4}, Lcom/yftech/car/widget/media/view/PlayAnimation;->setSelectedPlay(Z)V

    .line 120
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->mPlayAnimation:Lcom/yftech/car/widget/media/view/PlayAnimation;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/view/PlayAnimation;->setNumberText(Ljava/lang/String;)V

    .line 121
    invoke-direct {p0, v4}, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->setSelectedStatus(Z)V

    goto/16 :goto_1

    .line 123
    :cond_2
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->mPlayAnimation:Lcom/yftech/car/widget/media/view/PlayAnimation;

    invoke-virtual {p1, v1}, Lcom/yftech/car/widget/media/view/PlayAnimation;->setSelectedPlay(Z)V

    .line 124
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->mPlayAnimation:Lcom/yftech/car/widget/media/view/PlayAnimation;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr p2, v4

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/view/PlayAnimation;->setNumberText(Ljava/lang/String;)V

    .line 125
    invoke-direct {p0, v1}, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->setSelectedStatus(Z)V

    goto/16 :goto_1

    .line 104
    :pswitch_2
    iget-object v3, p0, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->mPlayAnimation:Lcom/yftech/car/widget/media/view/PlayAnimation;

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/yftech/car/widget/media/view/PlayAnimation;->setMediaType(I)V

    .line 105
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFolder;->getFolder()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Lcom/yftech/car/media/data/entity/MediaFile;->getArtist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 106
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->mPlayAnimation:Lcom/yftech/car/widget/media/view/PlayAnimation;

    invoke-virtual {p1, v4}, Lcom/yftech/car/widget/media/view/PlayAnimation;->setSelectedPlay(Z)V

    .line 107
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->mPlayAnimation:Lcom/yftech/car/widget/media/view/PlayAnimation;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/view/PlayAnimation;->setNumberText(Ljava/lang/String;)V

    .line 108
    invoke-direct {p0, v4}, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->setSelectedStatus(Z)V

    goto :goto_1

    .line 110
    :cond_3
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->mPlayAnimation:Lcom/yftech/car/widget/media/view/PlayAnimation;

    invoke-virtual {p1, v1}, Lcom/yftech/car/widget/media/view/PlayAnimation;->setSelectedPlay(Z)V

    .line 111
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->mPlayAnimation:Lcom/yftech/car/widget/media/view/PlayAnimation;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr p2, v4

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/view/PlayAnimation;->setNumberText(Ljava/lang/String;)V

    .line 112
    invoke-direct {p0, v1}, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->setSelectedStatus(Z)V

    goto :goto_1

    .line 141
    :pswitch_3
    iget-object v3, p0, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->mPlayAnimation:Lcom/yftech/car/widget/media/view/PlayAnimation;

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/yftech/car/widget/media/view/PlayAnimation;->setMediaType(I)V

    .line 142
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFolder;->getFolder()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Lcom/yftech/car/media/data/entity/MediaFile;->getFolder()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 143
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->mPlayAnimation:Lcom/yftech/car/widget/media/view/PlayAnimation;

    invoke-virtual {p1, v4}, Lcom/yftech/car/widget/media/view/PlayAnimation;->setSelectedPlay(Z)V

    .line 144
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->mPlayAnimation:Lcom/yftech/car/widget/media/view/PlayAnimation;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/view/PlayAnimation;->setNumberText(Ljava/lang/String;)V

    .line 145
    invoke-direct {p0, v4}, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->setSelectedStatus(Z)V

    goto :goto_1

    .line 147
    :cond_4
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->mPlayAnimation:Lcom/yftech/car/widget/media/view/PlayAnimation;

    invoke-virtual {p1, v1}, Lcom/yftech/car/widget/media/view/PlayAnimation;->setSelectedPlay(Z)V

    .line 148
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->mPlayAnimation:Lcom/yftech/car/widget/media/view/PlayAnimation;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr p2, v4

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/view/PlayAnimation;->setNumberText(Ljava/lang/String;)V

    .line 149
    invoke-direct {p0, v1}, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->setSelectedStatus(Z)V

    :cond_5
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setOnClickFolderListener(Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder$OnClickFolderListener;)V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder;->mOnClickFolderListener:Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder$OnClickFolderListener;

    return-void
.end method
