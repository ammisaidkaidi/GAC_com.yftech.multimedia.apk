.class final Lcom/media/common/util/TestUtils$1;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "TestUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/media/common/util/TestUtils;->getTestAdapter()Lcom/chad/library/adapter/base/BaseQuickAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Ljava/lang/String;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field r:[I


# direct methods
.method constructor <init>(I)V
    .locals 2

    .line 36
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    const/4 p1, 0x4

    .line 38
    new-array p1, p1, [I

    sget v0, Lcom/media/common/ui/widget/R$color;->color6466E9:I

    const/4 v1, 0x0

    aput v0, p1, v1

    sget v0, Lcom/media/common/ui/widget/R$color;->color71D8B5:I

    const/4 v1, 0x1

    aput v0, p1, v1

    sget v0, Lcom/media/common/ui/widget/R$color;->color6CC4F8:I

    const/4 v1, 0x2

    aput v0, p1, v1

    sget v0, Lcom/media/common/ui/widget/R$color;->color0D113E:I

    const/4 v1, 0x3

    aput v0, p1, v1

    iput-object p1, p0, Lcom/media/common/util/TestUtils$1;->r:[I

    return-void
.end method


# virtual methods
.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/media/common/util/TestUtils$1;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/String;)V

    return-void
.end method

.method protected convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/String;)V
    .locals 4

    .line 42
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result v0

    .line 43
    sget v1, Lcom/media/common/ui/widget/R$id;->tv:I

    iget-object v2, p0, Lcom/media/common/util/TestUtils$1;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/media/common/util/TestUtils$1;->r:[I

    iget-object p0, p0, Lcom/media/common/util/TestUtils$1;->r:[I

    array-length p0, p0

    rem-int/2addr v0, p0

    aget p0, v3, v0

    invoke-static {v2, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p1, v1, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setBackgroundColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    sget p1, Lcom/media/common/ui/widget/R$id;->tv:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Position is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method
