.class public Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "MusicLyricAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/yftech/libmusic/bean/LyricObject;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final indexTextColor:I

.field private final indexTextSize:F

.field private mPosition:I

.field private onItemClickListener:Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter$OnItemClickListener;

.field private final othersTextColor:I

.field private final othersTextSize:F

.field private final subTextColor:I

.field private final subTextSize:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    sget v0, Lcom/yftech/libmusic/R$layout;->item_lyric:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    const/high16 v0, 0x42600000    # 56.0f

    .line 17
    iput v0, p0, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;->indexTextSize:F

    .line 18
    sget v0, Lcom/yftech/libmusic/R$color;->colorFFFFFF:I

    iput v0, p0, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;->indexTextColor:I

    const/high16 v0, 0x42200000    # 40.0f

    .line 20
    iput v0, p0, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;->subTextSize:F

    .line 21
    sget v1, Lcom/yftech/libmusic/R$color;->colorBFFFFFFF:I

    iput v1, p0, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;->subTextColor:I

    .line 23
    iput v0, p0, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;->othersTextSize:F

    .line 24
    sget v0, Lcom/yftech/libmusic/R$color;->colorBFFFFFFF:I

    iput v0, p0, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;->othersTextColor:I

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;->mPosition:I

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;)Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter$OnItemClickListener;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;->onItemClickListener:Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter$OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/yftech/libmusic/bean/LyricObject;)V
    .locals 4

    .line 75
    sget v0, Lcom/yftech/libmusic/R$id;->tv_lyric:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yftech/libmusic/widget/SongTextView;

    .line 77
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/media/music/CarMusicManager;->isPlaying()Z

    move-result v1

    .line 79
    invoke-virtual {v0, p2}, Lcom/yftech/libmusic/widget/SongTextView;->setLyricObject(Lcom/yftech/libmusic/bean/LyricObject;)V

    .line 80
    invoke-virtual {v0, v1}, Lcom/yftech/libmusic/widget/SongTextView;->setMusicPlaying(Z)V

    .line 82
    new-instance p2, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter$1;

    invoke-direct {p2, p0, p1}, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter$1;-><init>(Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;)V

    invoke-virtual {v0, p2}, Lcom/yftech/libmusic/widget/SongTextView;->setOnTextItemClickListener(Lcom/yftech/libmusic/widget/SongTextView$OnTextItemClickListener;)V

    .line 90
    iget p2, p0, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;->mPosition:I

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p2, v1, :cond_0

    .line 91
    invoke-virtual {v0, v2}, Lcom/yftech/libmusic/widget/SongTextView;->setThePlayingLyric(Z)V

    const/high16 p1, 0x42600000    # 56.0f

    .line 92
    invoke-virtual {v0, p1, v3}, Lcom/yftech/libmusic/widget/SongTextView;->setTextSize(FZ)V

    .line 93
    iget p0, p0, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;->indexTextColor:I

    invoke-virtual {v0, p0, v3}, Lcom/yftech/libmusic/widget/SongTextView;->setTextColor(IZ)V

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {v0, v3}, Lcom/yftech/libmusic/widget/SongTextView;->setThePlayingLyric(Z)V

    .line 98
    iget p2, p0, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;->mPosition:I

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result p1

    sub-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/high16 p2, 0x42200000    # 40.0f

    if-ne p1, v2, :cond_1

    .line 100
    invoke-virtual {v0, p2, v3}, Lcom/yftech/libmusic/widget/SongTextView;->setTextSize(FZ)V

    .line 101
    iget p0, p0, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;->subTextColor:I

    invoke-virtual {v0, p0, v3}, Lcom/yftech/libmusic/widget/SongTextView;->setTextColor(IZ)V

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {v0, p2, v3}, Lcom/yftech/libmusic/widget/SongTextView;->setTextSize(FZ)V

    .line 106
    iget p0, p0, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;->othersTextColor:I

    invoke-virtual {v0, p0, v3}, Lcom/yftech/libmusic/widget/SongTextView;->setTextColor(IZ)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p2, Lcom/yftech/libmusic/bean/LyricObject;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/yftech/libmusic/bean/LyricObject;)V

    return-void
.end method

.method public getmPosition()I
    .locals 0

    .line 69
    iget p0, p0, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;->mPosition:I

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 15
    check-cast p1, Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;->onBindViewHolder(Lcom/chad/library/adapter/base/BaseViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chad/library/adapter/base/BaseViewHolder;ILjava/util/List;)V
    .locals 3
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 114
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->onBindViewHolder(Lcom/chad/library/adapter/base/BaseViewHolder;I)V

    goto :goto_0

    .line 117
    :cond_0
    sget v0, Lcom/yftech/libmusic/R$id;->tv_lyric:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/yftech/libmusic/widget/SongTextView;

    const/4 v0, 0x0

    .line 120
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 121
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 123
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/media/common/util/ValueUtil;->parseInt(Ljava/lang/String;)I

    .line 127
    iget p3, p0, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;->mPosition:I

    if-ne p2, p3, :cond_1

    const/high16 p2, 0x42600000    # 56.0f

    .line 131
    invoke-virtual {p1, p2, v0}, Lcom/yftech/libmusic/widget/SongTextView;->setTextSize(FZ)V

    .line 132
    iget p0, p0, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;->indexTextColor:I

    invoke-virtual {p1, p0, v0}, Lcom/yftech/libmusic/widget/SongTextView;->setTextColor(IZ)V

    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {p1, v0}, Lcom/yftech/libmusic/widget/SongTextView;->setThePlayingLyric(Z)V

    .line 136
    iget p3, p0, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;->mPosition:I

    sub-int/2addr p3, p2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    const/4 p3, 0x1

    const/high16 v1, 0x42200000    # 40.0f

    if-ne p2, p3, :cond_2

    .line 138
    invoke-virtual {p1, v1, v0}, Lcom/yftech/libmusic/widget/SongTextView;->setTextSize(FZ)V

    .line 139
    iget p0, p0, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;->subTextColor:I

    invoke-virtual {p1, p0, v0}, Lcom/yftech/libmusic/widget/SongTextView;->setTextColor(IZ)V

    goto :goto_0

    .line 143
    :cond_2
    invoke-virtual {p1, v1, v0}, Lcom/yftech/libmusic/widget/SongTextView;->setTextSize(FZ)V

    .line 144
    iget p0, p0, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;->othersTextColor:I

    invoke-virtual {p1, p0, v0}, Lcom/yftech/libmusic/widget/SongTextView;->setTextColor(IZ)V

    goto :goto_0

    .line 147
    :cond_3
    instance-of p0, v1, Ljava/lang/Boolean;

    if-eqz p0, :cond_4

    .line 149
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 151
    invoke-virtual {p1, p0}, Lcom/yftech/libmusic/widget/SongTextView;->setMusicPlaying(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setMusicPlaying(Z)V
    .locals 1

    .line 62
    iget v0, p0, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;->mPosition:I

    if-ltz v0, :cond_0

    .line 64
    iget v0, p0, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;->mPosition:I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter$OnItemClickListener;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;->onItemClickListener:Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter$OnItemClickListener;

    return-void
.end method

.method public setPlayIndex(I)V
    .locals 1

    .line 38
    iget v0, p0, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;->mPosition:I

    if-ne v0, p1, :cond_0

    return-void

    .line 41
    :cond_0
    iget v0, p0, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;->mPosition:I

    .line 42
    iput p1, p0, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;->mPosition:I

    .line 44
    iget p1, p0, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;->mPosition:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 45
    iget p1, p0, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;->mPosition:I

    iget v0, p0, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;->mPosition:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    return-void
.end method

.method public setPlayIndex(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 51
    invoke-virtual {p0, p1}, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;->setPlayIndex(I)V

    goto :goto_0

    .line 55
    :cond_0
    iput p1, p0, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;->mPosition:I

    :goto_0
    return-void
.end method
