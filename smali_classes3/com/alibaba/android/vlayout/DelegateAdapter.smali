.class public Lcom/alibaba/android/vlayout/DelegateAdapter;
.super Lcom/alibaba/android/vlayout/VirtualLayoutAdapter;
.source "DelegateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;,
        Lcom/alibaba/android/vlayout/DelegateAdapter$SimpleViewAdapter;,
        Lcom/alibaba/android/vlayout/DelegateAdapter$SimpleViewHolder;,
        Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/vlayout/VirtualLayoutAdapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private cantorReverse:[J

.field private final mAdapters:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;",
            "Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mHasConsistItemType:Z

.field private mIndex:I

.field private final mIndexAry:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;",
            "Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIndexGen:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mItemTypeAry:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;",
            ">;"
        }
    .end annotation
.end field

.field private mTotal:I


# direct methods
.method public constructor <init>(Lcom/alibaba/android/vlayout/VirtualLayoutManager;)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, v0, v0}, Lcom/alibaba/android/vlayout/DelegateAdapter;-><init>(Lcom/alibaba/android/vlayout/VirtualLayoutManager;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/vlayout/VirtualLayoutManager;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/vlayout/DelegateAdapter;-><init>(Lcom/alibaba/android/vlayout/VirtualLayoutManager;ZZ)V

    return-void
.end method

.method constructor <init>(Lcom/alibaba/android/vlayout/VirtualLayoutManager;ZZ)V
    .locals 1

    .line 95
    invoke-direct {p0, p1}, Lcom/alibaba/android/vlayout/VirtualLayoutAdapter;-><init>(Lcom/alibaba/android/vlayout/VirtualLayoutManager;)V

    const/4 p1, 0x0

    .line 57
    iput p1, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mIndex:I

    .line 61
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mItemTypeAry:Landroid/util/SparseArray;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mAdapters:Ljava/util/List;

    .line 66
    iput p1, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mTotal:I

    .line 68
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mIndexAry:Landroid/util/SparseArray;

    const/4 v0, 0x2

    .line 70
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->cantorReverse:[J

    if-eqz p3, :cond_0

    .line 97
    new-instance p3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p3, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mIndexGen:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 100
    :cond_0
    iput-boolean p2, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mHasConsistItemType:Z

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/vlayout/DelegateAdapter;)Ljava/util/List;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mAdapters:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/android/vlayout/DelegateAdapter;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mTotal:I

    return p0
.end method

.method static synthetic access$102(Lcom/alibaba/android/vlayout/DelegateAdapter;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mTotal:I

    return p1
.end method

.method static synthetic access$201(Lcom/alibaba/android/vlayout/DelegateAdapter;Ljava/util/List;)V
    .locals 0

    .line 52
    invoke-super {p0, p1}, Lcom/alibaba/android/vlayout/VirtualLayoutAdapter;->setLayoutHelpers(Ljava/util/List;)V

    return-void
.end method

.method public static simpleAdapter(Landroid/view/View;)Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .line 595
    new-instance v0, Lcom/alibaba/android/vlayout/DelegateAdapter$SimpleViewAdapter;

    invoke-direct {v0, p0}, Lcom/alibaba/android/vlayout/DelegateAdapter$SimpleViewAdapter;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static simpleAdapter(Landroid/view/View;Lcom/alibaba/android/vlayout/LayoutHelper;)Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/alibaba/android/vlayout/LayoutHelper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/alibaba/android/vlayout/LayoutHelper;",
            ")",
            "Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .line 606
    new-instance v0, Lcom/alibaba/android/vlayout/DelegateAdapter$SimpleViewAdapter;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/vlayout/DelegateAdapter$SimpleViewAdapter;-><init>(Landroid/view/View;Lcom/alibaba/android/vlayout/LayoutHelper;)V

    return-object v0
.end method


# virtual methods
.method public addAdapter(ILcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V
    .locals 0
    .param p2    # Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 341
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/vlayout/DelegateAdapter;->addAdapters(ILjava/util/List;)V

    return-void
.end method

.method public addAdapter(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V
    .locals 0
    .param p1    # Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 345
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/DelegateAdapter;->addAdapters(Ljava/util/List;)V

    return-void
.end method

.method public addAdapters(ILjava/util/List;)V
    .locals 3
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_5

    .line 306
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_2

    .line 314
    iget-object p1, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 317
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 318
    iget-object v1, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 319
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 320
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 321
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;

    .line 322
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 324
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;

    .line 325
    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 328
    :cond_4
    invoke-virtual {p0, v0}, Lcom/alibaba/android/vlayout/DelegateAdapter;->setAdapters(Ljava/util/List;)V

    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method public addAdapters(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;",
            ">;)V"
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/android/vlayout/DelegateAdapter;->addAdapters(ILjava/util/List;)V

    return-void
.end method

.method public clear()V
    .locals 3

    const/4 v0, 0x0

    .line 408
    iput v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mTotal:I

    .line 409
    iput v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mIndex:I

    .line 410
    iget-object v1, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mIndexGen:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v1, :cond_0

    .line 411
    iget-object v1, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mIndexGen:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mLayoutManager:Lcom/alibaba/android/vlayout/VirtualLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->setLayoutHelpers(Ljava/util/List;)V

    .line 415
    iget-object v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 416
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    goto :goto_0

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mItemTypeAry:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 421
    iget-object v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 422
    iget-object p0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mIndexAry:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public findAdapterByIndex(I)Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;
    .locals 0

    .line 479
    iget-object p0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mIndexAry:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    .line 480
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;

    return-object p0
.end method

.method public findAdapterByPosition(I)Landroid/util/Pair;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;",
            "Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;",
            ">;"
        }
    .end annotation

    .line 444
    iget-object v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    add-int/lit8 v0, v0, -0x1

    :cond_1
    :goto_0
    if-gt v2, v0, :cond_4

    add-int v3, v2, v0

    .line 454
    div-int/lit8 v3, v3, 0x2

    .line 455
    iget-object v4, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 456
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;

    iget v5, v5, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->mStartPosition:I

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;

    invoke-virtual {v6}, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;->getItemCount()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    .line 458
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;

    iget v6, v6, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->mStartPosition:I

    if-le v6, p1, :cond_2

    add-int/lit8 v3, v3, -0x1

    move v0, v3

    goto :goto_0

    :cond_2
    if-ge v5, p1, :cond_3

    add-int/lit8 v3, v3, 0x1

    move v2, v3

    goto :goto_0

    .line 462
    :cond_3
    iget-object v3, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;

    iget v3, v3, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->mStartPosition:I

    if-gt v3, p1, :cond_1

    if-lt v5, p1, :cond_1

    move-object v1, v4

    :cond_4
    return-object v1
.end method

.method public findAdapterPositionByIndex(I)I
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mIndexAry:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    if-nez p1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 475
    :cond_0
    iget-object p0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public findOffsetPosition(I)I
    .locals 0

    .line 434
    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/DelegateAdapter;->findAdapterByPosition(I)Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 438
    :cond_0
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;

    iget p0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->mStartPosition:I

    sub-int/2addr p1, p0

    return p1
.end method

.method public getAdaptersCount()I
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mAdapters:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getItemCount()I
    .locals 0

    .line 152
    iget p0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mTotal:I

    return p0
.end method

.method public getItemId(I)J
    .locals 6

    .line 189
    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/DelegateAdapter;->findAdapterByPosition(I)Landroid/util/Pair;

    move-result-object p0

    const-wide/16 v0, -0x1

    if-nez p0, :cond_0

    return-wide v0

    .line 195
    :cond_0
    iget-object v2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;

    iget-object v3, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;

    iget v3, v3, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->mStartPosition:I

    sub-int/2addr p1, v3

    invoke-virtual {v2, p1}, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;->getItemId(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-gez p1, :cond_1

    return-wide v0

    .line 201
    :cond_1
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;

    iget p0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->mIndex:I

    int-to-long p0, p0

    .line 205
    invoke-static {p0, p1, v2, v3}, Lcom/alibaba/android/vlayout/Cantor;->getCantor(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 163
    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/DelegateAdapter;->findAdapterByPosition(I)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 168
    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;

    iget v2, v2, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->mStartPosition:I

    sub-int/2addr p1, v2

    invoke-virtual {v1, p1}, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;->getItemViewType(I)I

    move-result p1

    if-gez p1, :cond_1

    return p1

    .line 175
    :cond_1
    iget-boolean v1, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mHasConsistItemType:Z

    if-eqz v1, :cond_2

    .line 176
    iget-object p0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mItemTypeAry:Landroid/util/SparseArray;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return p1

    .line 181
    :cond_2
    iget-object p0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;

    iget p0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->mIndex:I

    int-to-long v0, p1

    int-to-long p0, p0

    .line 183
    invoke-static {v0, v1, p0, p1}, Lcom/alibaba/android/vlayout/Cantor;->getCantor(JJ)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 140
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/vlayout/VirtualLayoutAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 141
    invoke-virtual {p0, p2}, Lcom/alibaba/android/vlayout/DelegateAdapter;->findAdapterByPosition(I)Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;

    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;

    iget v1, v1, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->mStartPosition:I

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 146
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;

    iget p0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->mStartPosition:I

    sub-int p0, p2, p0

    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;->onBindViewHolderWithOffset(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IILjava/util/List;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4

    .line 107
    iget-boolean v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mHasConsistItemType:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 108
    iget-object p0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mItemTypeAry:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;

    if-eqz p0, :cond_0

    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1

    :cond_1
    int-to-long v2, p2

    .line 118
    iget-object p2, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->cantorReverse:[J

    invoke-static {v2, v3, p2}, Lcom/alibaba/android/vlayout/Cantor;->reverseCantor(J[J)V

    .line 120
    iget-object p2, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->cantorReverse:[J

    const/4 v0, 0x1

    aget-wide v2, p2, v0

    long-to-int p2, v2

    .line 121
    iget-object v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->cantorReverse:[J

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    long-to-int v0, v2

    .line 123
    invoke-virtual {p0, p2}, Lcom/alibaba/android/vlayout/DelegateAdapter;->findAdapterByIndex(I)Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v1

    .line 128
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 231
    invoke-super {p0, p1}, Lcom/alibaba/android/vlayout/VirtualLayoutAdapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 232
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getPosition()I

    move-result v0

    if-lez v0, :cond_0

    .line 234
    invoke-virtual {p0, v0}, Lcom/alibaba/android/vlayout/DelegateAdapter;->findAdapterByPosition(I)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 236
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 244
    invoke-super {p0, p1}, Lcom/alibaba/android/vlayout/VirtualLayoutAdapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 245
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getPosition()I

    move-result v0

    if-lez v0, :cond_0

    .line 247
    invoke-virtual {p0, v0}, Lcom/alibaba/android/vlayout/DelegateAdapter;->findAdapterByPosition(I)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 249
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 216
    invoke-super {p0, p1}, Lcom/alibaba/android/vlayout/VirtualLayoutAdapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 218
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getPosition()I

    move-result v0

    if-lez v0, :cond_0

    .line 220
    invoke-virtual {p0, v0}, Lcom/alibaba/android/vlayout/DelegateAdapter;->findAdapterByPosition(I)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 222
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public removeAdapter(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 363
    iget-object v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;

    .line 365
    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/DelegateAdapter;->removeAdapter(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    :cond_0
    return-void
.end method

.method public removeAdapter(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V
    .locals 0
    .param p1    # Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 373
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/DelegateAdapter;->removeAdapters(Ljava/util/List;)V

    return-void
.end method

.method public removeAdapters(Ljava/util/List;)V
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 377
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 380
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-super {p0}, Lcom/alibaba/android/vlayout/VirtualLayoutAdapter;->getLayoutHelpers()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    .line 381
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_4

    .line 382
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;

    .line 383
    iget-object v4, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 384
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 385
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 386
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;

    .line 387
    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 388
    iget-object v3, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v6, v3}, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 389
    iget-object v3, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;

    iget v3, v3, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->mIndex:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/vlayout/DelegateAdapter;->findAdapterPositionByIndex(I)I

    move-result v3

    if-ltz v3, :cond_2

    .line 390
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 391
    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 393
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 399
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 400
    iget-object v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 401
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 402
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 404
    :cond_5
    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/DelegateAdapter;->setAdapters(Ljava/util/List;)V

    return-void

    :cond_6
    :goto_2
    return-void
.end method

.method public removeFirstAdapter()V
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mAdapters:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mAdapters:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;

    .line 351
    invoke-virtual {p0, v0}, Lcom/alibaba/android/vlayout/DelegateAdapter;->removeAdapter(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    :cond_0
    return-void
.end method

.method public removeLastAdapter()V
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mAdapters:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mAdapters:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;

    .line 358
    invoke-virtual {p0, v0}, Lcom/alibaba/android/vlayout/DelegateAdapter;->removeAdapter(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    :cond_0
    return-void
.end method

.method public setAdapters(Ljava/util/List;)V
    .locals 9
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;",
            ">;)V"
        }
    .end annotation

    .line 266
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/DelegateAdapter;->clear()V

    if-nez p1, :cond_0

    .line 269
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 272
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    .line 275
    iput v1, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mTotal:I

    .line 278
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;

    .line 280
    new-instance v5, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;

    iget v6, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mTotal:I

    iget-object v7, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mIndexGen:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v7, :cond_1

    iget v7, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mIndex:I

    goto :goto_1

    :cond_1
    iget-object v7, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mIndexGen:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v7

    :goto_1
    invoke-direct {v5, p0, v6, v7}, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;-><init>(Lcom/alibaba/android/vlayout/DelegateAdapter;II)V

    .line 281
    invoke-virtual {v4, v5}, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    if-eqz v3, :cond_2

    .line 282
    invoke-virtual {v4}, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    .line 283
    :goto_2
    invoke-virtual {v4}, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;->onCreateLayoutHelper()Lcom/alibaba/android/vlayout/LayoutHelper;

    move-result-object v6

    .line 285
    invoke-virtual {v4}, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;->getItemCount()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/alibaba/android/vlayout/LayoutHelper;->setItemCount(I)V

    .line 286
    iget v7, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mTotal:I

    invoke-virtual {v6}, Lcom/alibaba/android/vlayout/LayoutHelper;->getItemCount()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mTotal:I

    .line 287
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    invoke-static {v5, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 289
    iget-object v6, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mIndexAry:Landroid/util/SparseArray;

    iget v5, v5, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->mIndex:I

    invoke-virtual {v6, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 290
    iget-object v5, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 293
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/DelegateAdapter;->hasObservers()Z

    move-result p1

    if-nez p1, :cond_4

    .line 294
    invoke-super {p0, v3}, Lcom/alibaba/android/vlayout/VirtualLayoutAdapter;->setHasStableIds(Z)V

    .line 296
    :cond_4
    invoke-super {p0, v0}, Lcom/alibaba/android/vlayout/VirtualLayoutAdapter;->setLayoutHelpers(Ljava/util/List;)V

    return-void
.end method

.method public setHasStableIds(Z)V
    .locals 0

    return-void
.end method

.method public setLayoutHelpers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/android/vlayout/LayoutHelper;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 261
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "DelegateAdapter doesn\'t support setLayoutHelpers directly"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
