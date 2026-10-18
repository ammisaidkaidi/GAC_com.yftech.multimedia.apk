.class public Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycledViewPool"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_SCRAP:I = 0x5


# instance fields
.field private mAttachCount:I

.field mScrap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5827
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5851
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 5853
    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    return-void
.end method

.method private getScrapDataForType(I)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;
    .locals 1

    .line 6008
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    if-nez v0, :cond_0

    .line 6010
    new-instance v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    invoke-direct {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;-><init>()V

    .line 6011
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method attach()V
    .locals 1

    .line 5975
    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 5859
    :goto_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 5860
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 5861
    iget-object v1, v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method detach()V
    .locals 1

    .line 5979
    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    return-void
.end method

.method factorInBindTime(IJ)V
    .locals 2

    .line 5959
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object p1

    .line 5960
    iget-wide v0, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;->runningAverage(JJ)J

    move-result-wide p2

    iput-wide p2, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    return-void
.end method

.method factorInCreateTime(IJ)V
    .locals 2

    .line 5953
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object p1

    .line 5954
    iget-wide v0, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;->runningAverage(JJ)J

    move-result-wide p2

    iput-wide p2, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    return-void
.end method

.method public getRecycledView(I)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 5897
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    if-eqz p0, :cond_1

    .line 5898
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 5899
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 5900
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    .line 5901
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isAttachedToTransitionOverlay()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5902
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRecycledViewCount(I)I
    .locals 0

    .line 5884
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object p0

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method onAdapterChanged(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 5997
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;->detach()V

    :cond_0
    if-nez p3, :cond_1

    .line 5999
    iget p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    if-nez p1, :cond_1

    .line 6000
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;->clear()V

    :cond_1
    if-eqz p2, :cond_2

    .line 6003
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;->attach()V

    :cond_2
    return-void
.end method

.method public putRecycledView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 5933
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 5934
    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v1

    iget-object v1, v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 5935
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mMaxScrap:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p0, v0, :cond_0

    return-void

    .line 5941
    :cond_0
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->resetInternal()V

    .line 5942
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method runningAverage(JJ)J
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-nez p0, :cond_0

    return-wide p3

    :cond_0
    const-wide/16 v0, 0x4

    .line 5949
    div-long/2addr p1, v0

    const-wide/16 v2, 0x3

    mul-long/2addr p1, v2

    div-long/2addr p3, v0

    add-long/2addr p1, p3

    return-wide p1
.end method

.method public setMaxRecycledViews(II)V
    .locals 0

    .line 5872
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object p0

    .line 5873
    iput p2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mMaxScrap:I

    .line 5874
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 5875
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, p2, :cond_0

    .line 5876
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method size()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 5916
    :goto_0
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 5917
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    iget-object v2, v2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 5919
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method willBindInTime(IJJ)Z
    .locals 2

    .line 5970
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object p0

    iget-wide p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    add-long/2addr p2, p0

    cmp-long p0, p2, p4

    if-gez p0, :cond_0

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

.method willCreateInTime(IJJ)Z
    .locals 2

    .line 5965
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object p0

    iget-wide p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    add-long/2addr p2, p0

    cmp-long p0, p2, p4

    if-gez p0, :cond_0

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
