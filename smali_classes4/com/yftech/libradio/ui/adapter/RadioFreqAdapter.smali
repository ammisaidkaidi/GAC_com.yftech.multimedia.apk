.class public Lcom/yftech/libradio/ui/adapter/RadioFreqAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "RadioFreqAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Ljava/lang/Integer;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mBand:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 23
    sget v0, Lcom/yftech/libradio/R$layout;->item_freq_control:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    .line 24
    iput-object p1, p0, Lcom/yftech/libradio/ui/adapter/RadioFreqAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 28
    sget v0, Lcom/yftech/libradio/R$layout;->item_freq_control:I

    invoke-direct {p0, v0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    .line 29
    iput-object p1, p0, Lcom/yftech/libradio/ui/adapter/RadioFreqAdapter;->mContext:Landroid/content/Context;

    .line 30
    iput p3, p0, Lcom/yftech/libradio/ui/adapter/RadioFreqAdapter;->mBand:I

    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Integer;)V
    .locals 3

    .line 35
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result v0

    rem-int/lit8 v0, v0, 0x5

    if-nez v0, :cond_1

    .line 36
    invoke-static {}, Lcom/yftech/libradio/Utils;->getInstance()Lcom/yftech/libradio/Utils;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget v1, p0, Lcom/yftech/libradio/ui/adapter/RadioFreqAdapter;->mBand:I

    invoke-virtual {v0, p2, v1}, Lcom/yftech/libradio/Utils;->formatFreq(II)Ljava/lang/String;

    move-result-object p2

    .line 38
    sget v0, Lcom/yftech/libradio/R$id;->v_tag:I

    iget-object v1, p0, Lcom/yftech/libradio/ui/adapter/RadioFreqAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/yftech/libradio/R$color;->colorFFFFFF:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setBackgroundColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/yftech/libradio/R$id;->tv_name:I

    .line 39
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result v2

    rem-int/lit8 v2, v2, 0xa

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v0, v1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 41
    iget p2, p0, Lcom/yftech/libradio/ui/adapter/RadioFreqAdapter;->mBand:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result p2

    const/16 v0, 0x78

    if-ne p2, v0, :cond_2

    .line 42
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "helper.getLayoutPosition()"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 43
    sget p2, Lcom/yftech/libradio/R$id;->v_tag:I

    iget-object v0, p0, Lcom/yftech/libradio/ui/adapter/RadioFreqAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcom/yftech/libradio/R$color;->colorFFFFFF:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setBackgroundColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p2

    sget v0, Lcom/yftech/libradio/R$id;->tv_name:I

    const-string v1, ""

    .line 44
    invoke-virtual {p2, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_1

    .line 47
    :cond_1
    sget p2, Lcom/yftech/libradio/R$id;->v_tag:I

    iget-object v0, p0, Lcom/yftech/libradio/ui/adapter/RadioFreqAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcom/yftech/libradio/R$color;->color66FFFFFF:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setBackgroundColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p2

    sget v0, Lcom/yftech/libradio/R$id;->tv_name:I

    const-string v1, ""

    .line 48
    invoke-virtual {p2, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 50
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result p2

    invoke-virtual {p0}, Lcom/yftech/libradio/ui/adapter/RadioFreqAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p2, v0, :cond_3

    .line 51
    sget p2, Lcom/yftech/libradio/R$id;->v_tag:I

    iget-object p0, p0, Lcom/yftech/libradio/ui/adapter/RadioFreqAdapter;->mContext:Landroid/content/Context;

    sget v0, Lcom/yftech/libradio/R$color;->color66FFFFFF:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setBackgroundColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    sget p2, Lcom/yftech/libradio/R$id;->tv_name:I

    const-string v0, ""

    .line 52
    invoke-virtual {p0, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 54
    :cond_3
    new-array p0, v1, [I

    const/4 p2, 0x0

    sget v0, Lcom/yftech/libradio/R$id;->layout_freq:I

    aput v0, p0, p2

    invoke-virtual {p1, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/libradio/ui/adapter/RadioFreqAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Integer;)V

    return-void
.end method
