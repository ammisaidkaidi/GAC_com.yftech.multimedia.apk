.class public Lcom/yftech/libmusic/ui/adapter/MusicPlayerLyricAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "MusicPlayerLyricAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/yftech/libmusic/bean/LyricObject;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private position:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    sget v0, Lcom/yftech/libmusic/R$layout;->item_music_player_lyric:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/yftech/libmusic/bean/LyricObject;)V
    .locals 2

    .line 31
    sget v0, Lcom/yftech/libmusic/R$id;->tv_item:I

    iget-object p2, p2, Lcom/yftech/libmusic/bean/LyricObject;->lrc:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 33
    sget p2, Lcom/yftech/libmusic/R$id;->tv_item:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 35
    iget v0, p0, Lcom/yftech/libmusic/ui/adapter/MusicPlayerLyricAdapter;->position:I

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result p1

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    .line 37
    iget-object p0, p0, Lcom/yftech/libmusic/ui/adapter/MusicPlayerLyricAdapter;->mContext:Landroid/content/Context;

    sget p1, Lcom/yftech/libmusic/R$color;->colorFFFFFF:I

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p0, 0x42100000    # 36.0f

    .line 38
    invoke-virtual {p2, v1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 42
    :cond_0
    iget-object p0, p0, Lcom/yftech/libmusic/ui/adapter/MusicPlayerLyricAdapter;->mContext:Landroid/content/Context;

    sget p1, Lcom/yftech/libmusic/R$color;->color66FFFFFF:I

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p0, 0x41f00000    # 30.0f

    .line 43
    invoke-virtual {p2, v1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p2, Lcom/yftech/libmusic/bean/LyricObject;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/libmusic/ui/adapter/MusicPlayerLyricAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/yftech/libmusic/bean/LyricObject;)V

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/yftech/libmusic/ui/adapter/MusicPlayerLyricAdapter;->position:I

    .line 24
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/adapter/MusicPlayerLyricAdapter;->notifyDataSetChanged()V

    return-void
.end method
