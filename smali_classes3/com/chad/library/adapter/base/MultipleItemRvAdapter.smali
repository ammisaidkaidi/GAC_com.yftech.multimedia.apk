.class public abstract Lcom/chad/library/adapter/base/MultipleItemRvAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "MultipleItemRvAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "TT;TV;>;"
    }
.end annotation


# instance fields
.field private mItemProviders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/chad/library/adapter/base/provider/BaseItemProvider;",
            ">;"
        }
    .end annotation
.end field

.field protected mProviderDelegate:Lcom/chad/library/adapter/base/util/ProviderDelegate;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(Ljava/util/List;)V

    return-void
.end method

.method private bindClick(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;ILcom/chad/library/adapter/base/provider/BaseItemProvider;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TT;I",
            "Lcom/chad/library/adapter/base/provider/BaseItemProvider;",
            ")V"
        }
    .end annotation

    .line 76
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/MultipleItemRvAdapter;->getOnItemClickListener()Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;

    move-result-object v0

    .line 77
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/MultipleItemRvAdapter;->getOnItemLongClickListener()Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemLongClickListener;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    return-void

    .line 85
    :cond_0
    iget-object v2, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 90
    new-instance v0, Lcom/chad/library/adapter/base/MultipleItemRvAdapter$2;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p4

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/chad/library/adapter/base/MultipleItemRvAdapter$2;-><init>(Lcom/chad/library/adapter/base/MultipleItemRvAdapter;Lcom/chad/library/adapter/base/provider/BaseItemProvider;Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;I)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-nez v1, :cond_2

    .line 101
    new-instance v0, Lcom/chad/library/adapter/base/MultipleItemRvAdapter$3;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p4

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/chad/library/adapter/base/MultipleItemRvAdapter$3;-><init>(Lcom/chad/library/adapter/base/MultipleItemRvAdapter;Lcom/chad/library/adapter/base/provider/BaseItemProvider;Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;I)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TT;)V"
        }
    .end annotation

    .line 64
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getItemViewType()I

    move-result v0

    .line 65
    iget-object v1, p0, Lcom/chad/library/adapter/base/MultipleItemRvAdapter;->mItemProviders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    .line 67
    iget-object v1, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->mContext:Landroid/content/Context;

    .line 69
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/MultipleItemRvAdapter;->getHeaderLayoutCount()I

    move-result v2

    sub-int/2addr v1, v2

    .line 70
    invoke-virtual {v0, p1, p2, v1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;I)V

    .line 72
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/chad/library/adapter/base/MultipleItemRvAdapter;->bindClick(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;ILcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    return-void
.end method

.method public finishInitialize()V
    .locals 4

    .line 36
    new-instance v0, Lcom/chad/library/adapter/base/util/ProviderDelegate;

    invoke-direct {v0}, Lcom/chad/library/adapter/base/util/ProviderDelegate;-><init>()V

    iput-object v0, p0, Lcom/chad/library/adapter/base/MultipleItemRvAdapter;->mProviderDelegate:Lcom/chad/library/adapter/base/util/ProviderDelegate;

    .line 38
    new-instance v0, Lcom/chad/library/adapter/base/MultipleItemRvAdapter$1;

    invoke-direct {v0, p0}, Lcom/chad/library/adapter/base/MultipleItemRvAdapter$1;-><init>(Lcom/chad/library/adapter/base/MultipleItemRvAdapter;)V

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/MultipleItemRvAdapter;->setMultiTypeDelegate(Lcom/chad/library/adapter/base/util/MultiTypeDelegate;)V

    .line 46
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/MultipleItemRvAdapter;->registerItemProvider()V

    .line 48
    iget-object v0, p0, Lcom/chad/library/adapter/base/MultipleItemRvAdapter;->mProviderDelegate:Lcom/chad/library/adapter/base/util/ProviderDelegate;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/util/ProviderDelegate;->getItemProviders()Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/chad/library/adapter/base/MultipleItemRvAdapter;->mItemProviders:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 50
    :goto_0
    iget-object v1, p0, Lcom/chad/library/adapter/base/MultipleItemRvAdapter;->mItemProviders:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/chad/library/adapter/base/MultipleItemRvAdapter;->mItemProviders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 52
    iget-object v2, p0, Lcom/chad/library/adapter/base/MultipleItemRvAdapter;->mItemProviders:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    .line 53
    iget-object v3, p0, Lcom/chad/library/adapter/base/MultipleItemRvAdapter;->mData:Ljava/util/List;

    iput-object v3, v2, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->mData:Ljava/util/List;

    .line 54
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/MultipleItemRvAdapter;->getMultiTypeDelegate()Lcom/chad/library/adapter/base/util/MultiTypeDelegate;

    move-result-object v3

    invoke-virtual {v2}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->layout()I

    move-result v2

    invoke-virtual {v3, v1, v2}, Lcom/chad/library/adapter/base/util/MultiTypeDelegate;->registerItemType(II)Lcom/chad/library/adapter/base/util/MultiTypeDelegate;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected abstract getViewType(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public abstract registerItemProvider()V
.end method
