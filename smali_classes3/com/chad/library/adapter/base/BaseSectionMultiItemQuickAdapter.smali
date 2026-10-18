.class public abstract Lcom/chad/library/adapter/base/BaseSectionMultiItemQuickAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "BaseSectionMultiItemQuickAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/chad/library/adapter/base/entity/SectionMultiEntity;",
        "K:",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "TT;TK;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_VIEW_TYPE:I = -0xff

.field protected static final SECTION_HEADER_VIEW:I = 0x444

.field public static final TYPE_NOT_FOUND:I = -0x194


# instance fields
.field private layouts:Landroid/util/SparseIntArray;

.field protected mSectionHeadResId:I


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(Ljava/util/List;)V

    .line 39
    iput p1, p0, Lcom/chad/library/adapter/base/BaseSectionMultiItemQuickAdapter;->mSectionHeadResId:I

    return-void
.end method

.method private getLayoutId(I)I
    .locals 1

    .line 67
    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseSectionMultiItemQuickAdapter;->layouts:Landroid/util/SparseIntArray;

    const/16 v0, -0x194

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method protected addItemType(II)V
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 77
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseSectionMultiItemQuickAdapter;->layouts:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/chad/library/adapter/base/BaseSectionMultiItemQuickAdapter;->layouts:Landroid/util/SparseIntArray;

    .line 80
    :cond_0
    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseSectionMultiItemQuickAdapter;->layouts:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method protected abstract convertHead(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/chad/library/adapter/base/entity/SectionMultiEntity;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TT;)V"
        }
    .end annotation
.end method

.method protected getDefItemViewType(I)I
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseSectionMultiItemQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chad/library/adapter/base/entity/SectionMultiEntity;

    if-eqz p0, :cond_1

    .line 48
    iget-boolean p1, p0, Lcom/chad/library/adapter/base/entity/SectionMultiEntity;->isHeader:Z

    if-eqz p1, :cond_0

    const/16 p0, 0x444

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/entity/SectionMultiEntity;->getItemType()I

    move-result p0

    :goto_0
    return p0

    :cond_1
    const/16 p0, -0xff

    return p0
.end method

.method protected isFixedViewType(I)Z
    .locals 0

    .line 85
    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->isFixedViewType(I)Z

    move-result p0

    if-nez p0, :cond_1

    const/16 p0, 0x444

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 17
    check-cast p1, Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseSectionMultiItemQuickAdapter;->onBindViewHolder(Lcom/chad/library/adapter/base/BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chad/library/adapter/base/BaseViewHolder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)V"
        }
    .end annotation

    .line 90
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getItemViewType()I

    move-result v0

    const/16 v1, 0x444

    if-eq v0, v1, :cond_0

    .line 96
    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->onBindViewHolder(Lcom/chad/library/adapter/base/BaseViewHolder;I)V

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseSectionMultiItemQuickAdapter;->setFullSpan(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 93
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseSectionMultiItemQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/BaseSectionMultiItemQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/chad/library/adapter/base/entity/SectionMultiEntity;

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseSectionMultiItemQuickAdapter;->convertHead(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/chad/library/adapter/base/entity/SectionMultiEntity;)V

    :goto_0
    return-void
.end method

.method protected onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TK;"
        }
    .end annotation

    const/16 v0, 0x444

    if-ne p2, v0, :cond_0

    .line 61
    iget p2, p0, Lcom/chad/library/adapter/base/BaseSectionMultiItemQuickAdapter;->mSectionHeadResId:I

    invoke-virtual {p0, p2, p1}, Lcom/chad/library/adapter/base/BaseSectionMultiItemQuickAdapter;->getItemView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseSectionMultiItemQuickAdapter;->createBaseViewHolder(Landroid/view/View;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    return-object p0

    .line 63
    :cond_0
    invoke-direct {p0, p2}, Lcom/chad/library/adapter/base/BaseSectionMultiItemQuickAdapter;->getLayoutId(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseSectionMultiItemQuickAdapter;->createBaseViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public remove(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 105
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseSectionMultiItemQuickAdapter;->mData:Ljava/util/List;

    if-eqz v0, :cond_2

    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseSectionMultiItemQuickAdapter;->mData:Ljava/util/List;

    .line 106
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseSectionMultiItemQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chad/library/adapter/base/entity/SectionMultiEntity;

    .line 109
    instance-of v1, v0, Lcom/chad/library/adapter/base/entity/IExpandable;

    if-eqz v1, :cond_1

    .line 110
    move-object v1, v0

    check-cast v1, Lcom/chad/library/adapter/base/entity/IExpandable;

    invoke-virtual {p0, v1, p1}, Lcom/chad/library/adapter/base/BaseSectionMultiItemQuickAdapter;->removeAllChild(Lcom/chad/library/adapter/base/entity/IExpandable;I)V

    .line 112
    :cond_1
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseSectionMultiItemQuickAdapter;->removeDataFromParent(Lcom/chad/library/adapter/base/entity/SectionMultiEntity;)V

    .line 113
    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->remove(I)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method protected removeAllChild(Lcom/chad/library/adapter/base/entity/IExpandable;I)V
    .locals 2

    .line 123
    invoke-interface {p1}, Lcom/chad/library/adapter/base/entity/IExpandable;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    invoke-interface {p1}, Lcom/chad/library/adapter/base/entity/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 125
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 127
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    add-int/lit8 v1, p2, 0x1

    .line 129
    invoke-virtual {p0, v1}, Lcom/chad/library/adapter/base/BaseSectionMultiItemQuickAdapter;->remove(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    return-void
.end method

.method protected removeDataFromParent(Lcom/chad/library/adapter/base/entity/SectionMultiEntity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 140
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseSectionMultiItemQuickAdapter;->getParentPosition(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 142
    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseSectionMultiItemQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chad/library/adapter/base/entity/IExpandable;

    .line 143
    invoke-interface {p0}, Lcom/chad/library/adapter/base/entity/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected setDefaultViewTypeLayout(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    const/16 v0, -0xff

    .line 54
    invoke-virtual {p0, v0, p1}, Lcom/chad/library/adapter/base/BaseSectionMultiItemQuickAdapter;->addItemType(II)V

    return-void
.end method
