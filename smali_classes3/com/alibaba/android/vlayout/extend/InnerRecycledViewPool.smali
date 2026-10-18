.class public final Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;
.super Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
.source "InnerRecycledViewPool.java"


# static fields
.field private static final DEFAULT_MAX_SIZE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "InnerRecycledViewPool"


# instance fields
.field private mInnerPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

.field private mMaxScrap:Landroid/util/SparseIntArray;

.field private mScrapLength:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 69
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    invoke-direct {p0, v0}, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;-><init>(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    .line 55
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->mScrapLength:Landroid/util/SparseIntArray;

    .line 56
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->mMaxScrap:Landroid/util/SparseIntArray;

    .line 64
    iput-object p1, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->mInnerPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    return-void
.end method

.method private destroyViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 162
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 164
    instance-of v0, p0, Ljava/io/Closeable;

    if-eqz v0, :cond_0

    .line 166
    :try_start_0
    check-cast p0, Ljava/io/Closeable;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "InnerRecycledViewPool"

    .line 168
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    :cond_0
    :goto_0
    instance-of p0, p1, Ljava/io/Closeable;

    if-eqz p0, :cond_1

    .line 174
    :try_start_1
    check-cast p1, Ljava/io/Closeable;

    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string p1, "InnerRecycledViewPool"

    .line 176
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .line 74
    iget-object v0, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->mScrapLength:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 75
    iget-object v2, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->mScrapLength:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 76
    iget-object v3, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->mInnerPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->getRecycledView(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_0

    .line 78
    invoke-direct {p0, v3}, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->destroyViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 79
    iget-object v3, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->mInnerPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->getRecycledView(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->mScrapLength:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 84
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->clear()V

    return-void
.end method

.method public getRecycledView(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->mInnerPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->getRecycledView(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v1, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->mScrapLength:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->mScrapLength:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-lez v1, :cond_1

    .line 109
    iget-object p0, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->mScrapLength:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_1
    return-object v0
.end method

.method public putRecycledView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .line 139
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 141
    iget-object v1, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->mMaxScrap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->mMaxScrap:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 144
    invoke-virtual {p0, v0, v2}, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->setMaxRecycledViews(II)V

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->mScrapLength:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->mScrapLength:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 150
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->mMaxScrap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-le v2, v1, :cond_2

    .line 152
    iget-object v2, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->mInnerPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->putRecycledView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 153
    iget-object p0, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->mScrapLength:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    .line 156
    :cond_2
    invoke-direct {p0, p1}, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->destroyViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :goto_1
    return-void
.end method

.method public setMaxRecycledViews(II)V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->mInnerPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->getRecycledView(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    .line 93
    invoke-direct {p0, v0}, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->destroyViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 94
    iget-object v0, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->mInnerPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->getRecycledView(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->mMaxScrap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 99
    iget-object v0, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->mScrapLength:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 100
    iget-object p0, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->mInnerPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    return-void
.end method

.method public size()I
    .locals 4

    .line 124
    iget-object v0, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->mScrapLength:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 125
    iget-object v3, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->mScrapLength:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method
