.class Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;
.super Ljava/lang/Object;
.source "ConcatAdapterController.java"

# interfaces
.implements Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;
    }
.end annotation


# instance fields
.field private mAttachedRecyclerViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mBinderLookup:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;",
            "Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mConcatAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter;

.field private mReusableHolder:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;

.field private final mStableIdMode:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config$StableIdMode;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mStableIdStorage:Lcom/yftech/car/widget/media/recyclerview/widget/StableIdStorage;

.field private final mViewTypeStorage:Lcom/yftech/car/widget/media/recyclerview/widget/ViewTypeStorage;

.field private mWrappers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter;Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mAttachedRecyclerViews:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mBinderLookup:Ljava/util/IdentityHashMap;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mWrappers:Ljava/util/List;

    .line 73
    new-instance v0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;

    invoke-direct {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mReusableHolder:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;

    .line 86
    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mConcatAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter;

    .line 89
    iget-boolean p1, p2, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config;->isolateViewTypes:Z

    if-eqz p1, :cond_0

    .line 90
    new-instance p1, Lcom/yftech/car/widget/media/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage;

    invoke-direct {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mViewTypeStorage:Lcom/yftech/car/widget/media/recyclerview/widget/ViewTypeStorage;

    goto :goto_0

    .line 92
    :cond_0
    new-instance p1, Lcom/yftech/car/widget/media/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage;

    invoke-direct {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mViewTypeStorage:Lcom/yftech/car/widget/media/recyclerview/widget/ViewTypeStorage;

    .line 96
    :goto_0
    iget-object p1, p2, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config;->stableIdMode:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mStableIdMode:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    .line 97
    iget-object p1, p2, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config;->stableIdMode:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    sget-object v0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config$StableIdMode;->NO_STABLE_IDS:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    if-ne p1, v0, :cond_1

    .line 98
    new-instance p1, Lcom/yftech/car/widget/media/recyclerview/widget/StableIdStorage$NoStableIdStorage;

    invoke-direct {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/StableIdStorage$NoStableIdStorage;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mStableIdStorage:Lcom/yftech/car/widget/media/recyclerview/widget/StableIdStorage;

    goto :goto_1

    .line 99
    :cond_1
    iget-object p1, p2, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config;->stableIdMode:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    sget-object v0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config$StableIdMode;->ISOLATED_STABLE_IDS:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    if-ne p1, v0, :cond_2

    .line 100
    new-instance p1, Lcom/yftech/car/widget/media/recyclerview/widget/StableIdStorage$IsolatedStableIdStorage;

    invoke-direct {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/StableIdStorage$IsolatedStableIdStorage;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mStableIdStorage:Lcom/yftech/car/widget/media/recyclerview/widget/StableIdStorage;

    goto :goto_1

    .line 101
    :cond_2
    iget-object p1, p2, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config;->stableIdMode:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    sget-object p2, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config$StableIdMode;->SHARED_STABLE_IDS:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    if-ne p1, p2, :cond_3

    .line 102
    new-instance p1, Lcom/yftech/car/widget/media/recyclerview/widget/StableIdStorage$SharedPoolStableIdStorage;

    invoke-direct {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/StableIdStorage$SharedPoolStableIdStorage;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mStableIdStorage:Lcom/yftech/car/widget/media/recyclerview/widget/StableIdStorage;

    :goto_1
    return-void

    .line 104
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "unknown stable id mode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private calculateAndUpdateStateRestorationPolicy()V
    .locals 2

    .line 287
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->computeStateRestorationPolicy()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    move-result-object v0

    .line 288
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mConcatAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter;

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter;->getStateRestorationPolicy()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 289
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mConcatAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter;->internalSetStateRestorationPolicy(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;)V

    :cond_0
    return-void
.end method

.method private computeStateRestorationPolicy()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;
    .locals 3

    .line 294
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;

    .line 295
    iget-object v1, v0, Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;->adapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    .line 296
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->getStateRestorationPolicy()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    move-result-object v1

    .line 297
    sget-object v2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    if-ne v1, v2, :cond_1

    .line 299
    sget-object p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    return-object p0

    .line 300
    :cond_1
    sget-object v2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT_WHEN_EMPTY:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;->getCachedItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 302
    sget-object p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    return-object p0

    .line 305
    :cond_2
    sget-object p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->ALLOW:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    return-object p0
.end method

.method private countItemsBefore(Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;)I
    .locals 2

    .line 206
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;

    if-eq v1, p1, :cond_0

    .line 208
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;->getCachedItemCount()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private findWrapperAndLocalPosition(I)Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mReusableHolder:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;->mInUse:Z

    if-eqz v0, :cond_0

    .line 339
    new-instance v0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;

    invoke-direct {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;-><init>()V

    goto :goto_0

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mReusableHolder:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;->mInUse:Z

    .line 342
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mReusableHolder:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;

    .line 345
    :goto_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v1, p1

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;

    .line 346
    invoke-virtual {v2}, Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;->getCachedItemCount()I

    move-result v3

    if-le v3, v1, :cond_1

    .line 347
    iput-object v2, v0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;->mWrapper:Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;

    .line 348
    iput v1, v0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;->mLocalPosition:I

    goto :goto_2

    .line 351
    :cond_1
    invoke-virtual {v2}, Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;->getCachedItemCount()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_1

    .line 353
    :cond_2
    :goto_2
    iget-object p0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;->mWrapper:Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;

    if-eqz p0, :cond_3

    return-object v0

    .line 354
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find wrapper for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private findWrapperFor(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter<",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)",
            "Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;"
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->indexOfWrapper(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 114
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;

    return-object p0
.end method

.method private getWrapper(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 415
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mBinderLookup:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;

    if-eqz v0, :cond_0

    return-object v0

    .line 417
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find wrapper for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", seems like it is not bound by this adapter: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private indexOfWrapper(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter<",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)I"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 120
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;

    iget-object v2, v2, Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;->adapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private isAttachedTo(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)Z
    .locals 1

    .line 424
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mAttachedRecyclerViews:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 425
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private releaseWrapperAndLocalPosition(Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;)V
    .locals 1

    const/4 v0, 0x0

    .line 360
    iput-boolean v0, p1, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;->mInUse:Z

    const/4 v0, 0x0

    .line 361
    iput-object v0, p1, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;->mWrapper:Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;

    const/4 v0, -0x1

    .line 362
    iput v0, p1, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;->mLocalPosition:I

    .line 363
    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mReusableHolder:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;

    return-void
.end method


# virtual methods
.method addAdapter(ILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter<",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)Z"
        }
    .end annotation

    if-ltz p1, :cond_6

    .line 143
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_6

    .line 147
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    const-string v1, "All sub adapters must have stable ids when stable id mode is ISOLATED_STABLE_IDS or SHARED_STABLE_IDS"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ConcatAdapter"

    const-string v1, "Stable ids in the adapter will be ignored as the ConcatAdapter is configured not to have stable ids"

    .line 153
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->findWrapperFor(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    return p0

    .line 161
    :cond_2
    new-instance v0, Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;

    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mViewTypeStorage:Lcom/yftech/car/widget/media/recyclerview/widget/ViewTypeStorage;

    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mStableIdStorage:Lcom/yftech/car/widget/media/recyclerview/widget/StableIdStorage;

    .line 162
    invoke-interface {v2}, Lcom/yftech/car/widget/media/recyclerview/widget/StableIdStorage;->createStableIdLookup()Lcom/yftech/car/widget/media/recyclerview/widget/StableIdStorage$StableIdLookup;

    move-result-object v2

    invoke-direct {v0, p2, p0, v1, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;-><init>(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper$Callback;Lcom/yftech/car/widget/media/recyclerview/widget/ViewTypeStorage;Lcom/yftech/car/widget/media/recyclerview/widget/StableIdStorage$StableIdLookup;)V

    .line 163
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 165
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mAttachedRecyclerViews:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 166
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_3

    .line 168
    invoke-virtual {p2, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V

    goto :goto_1

    .line 172
    :cond_4
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;->getCachedItemCount()I

    move-result p1

    if-lez p1, :cond_5

    .line 173
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mConcatAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter;

    .line 174
    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->countItemsBefore(Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;)I

    move-result p2

    .line 175
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;->getCachedItemCount()I

    move-result v0

    .line 173
    invoke-virtual {p1, p2, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter;->notifyItemRangeInserted(II)V

    .line 179
    :cond_5
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->calculateAndUpdateStateRestorationPolicy()V

    const/4 p0, 0x1

    return p0

    .line 144
    :cond_6
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index must be between 0 and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mWrappers:Ljava/util/List;

    .line 145
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ". Given:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method addAdapter(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter<",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)Z"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->addAdapter(ILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)Z

    move-result p0

    return p0
.end method

.method public canRestoreState()Z
    .locals 1

    .line 374
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;

    .line 375
    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;->adapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->canRestoreState()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public getBoundAdapter(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;",
            ")",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .line 487
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mBinderLookup:Ljava/util/IdentityHashMap;

    invoke-virtual {p0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 491
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;->adapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method public getCopyOfAdapters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation

    .line 496
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 499
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 500
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;

    .line 501
    iget-object v1, v1, Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;->adapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 217
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->findWrapperAndLocalPosition(I)Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;

    move-result-object p1

    .line 218
    iget-object v0, p1, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;->mWrapper:Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;

    iget v1, p1, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;->mLocalPosition:I

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;->getItemId(I)J

    move-result-wide v0

    .line 219
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->releaseWrapperAndLocalPosition(Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;)V

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 318
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->findWrapperAndLocalPosition(I)Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;

    move-result-object p1

    .line 319
    iget-object v0, p1, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;->mWrapper:Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;

    iget v1, p1, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;->mLocalPosition:I

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;->getItemViewType(I)I

    move-result v0

    .line 320
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->releaseWrapperAndLocalPosition(Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;)V

    return v0
.end method

.method public getLocalAdapterPosition(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;",
            "I)I"
        }
    .end annotation

    .line 462
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mBinderLookup:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 466
    :cond_0
    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->countItemsBefore(Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;)I

    move-result p0

    sub-int/2addr p3, p0

    .line 470
    iget-object p0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;->adapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p0

    if-ltz p3, :cond_1

    if-ge p3, p0, :cond_1

    .line 481
    iget-object p0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;->adapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->findRelativeAdapterPositionIn(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;I)I

    move-result p0

    return p0

    .line 472
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detected inconsistent adapter updates. The local position of the view holder maps to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " which is out of bounds for the adapter with size "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".Make sure to immediately call notify methods in your adapter when you change the backing dataviewHolder:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "adapter:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTotalCount()I
    .locals 2

    .line 311
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;

    .line 312
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;->getCachedItemCount()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 507
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mStableIdMode:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    sget-object v0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config$StableIdMode;->NO_STABLE_IDS:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAttachedToRecyclerView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 433
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->isAttachedTo(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mAttachedRecyclerViews:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;

    .line 438
    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;->adapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onBindViewHolder(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 367
    invoke-direct {p0, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->findWrapperAndLocalPosition(I)Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;

    move-result-object p2

    .line 368
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mBinderLookup:Ljava/util/IdentityHashMap;

    iget-object v1, p2, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;->mWrapper:Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;

    invoke-virtual {v0, p1, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    iget-object v0, p2, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;->mWrapper:Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;

    iget v1, p2, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;->mLocalPosition:I

    invoke-virtual {v0, p1, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;->onBindViewHolder(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 370
    invoke-direct {p0, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->releaseWrapperAndLocalPosition(Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;)V

    return-void
.end method

.method public onChanged(Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 226
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mConcatAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter;->notifyDataSetChanged()V

    .line 227
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->calculateAndUpdateStateRestorationPolicy()V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 325
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mViewTypeStorage:Lcom/yftech/car/widget/media/recyclerview/widget/ViewTypeStorage;

    invoke-interface {p0, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/ViewTypeStorage;->getWrapperForGlobalType(I)Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;

    move-result-object p0

    .line 326
    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onDetachedFromRecyclerView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V
    .locals 3

    .line 443
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mAttachedRecyclerViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 444
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mAttachedRecyclerViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 445
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 446
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mAttachedRecyclerViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 447
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 448
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mAttachedRecyclerViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 452
    :cond_2
    :goto_2
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;

    .line 453
    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;->adapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V

    goto :goto_3

    :cond_3
    return-void
.end method

.method public onFailedToRecycleView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 3

    .line 403
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mBinderLookup:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;->adapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->onFailedToRecycleView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    .line 409
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mBinderLookup:Ljava/util/IdentityHashMap;

    invoke-virtual {p0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    .line 405
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find wrapper for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", seems like it is not bound by this adapter: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onItemRangeChanged(Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;II)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 233
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->countItemsBefore(Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;)I

    move-result p1

    .line 234
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mConcatAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter;

    add-int/2addr p2, p1

    invoke-virtual {p0, p2, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onItemRangeChanged(Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;IILjava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 243
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->countItemsBefore(Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;)I

    move-result p1

    .line 244
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mConcatAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter;

    add-int/2addr p2, p1

    invoke-virtual {p0, p2, p3, p4}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public onItemRangeInserted(Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;II)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 254
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->countItemsBefore(Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;)I

    move-result p1

    .line 255
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mConcatAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter;

    add-int/2addr p2, p1

    invoke-virtual {p0, p2, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public onItemRangeMoved(Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;II)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 274
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->countItemsBefore(Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;)I

    move-result p1

    .line 275
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mConcatAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter;

    add-int/2addr p2, p1

    add-int/2addr p3, p1

    invoke-virtual {p0, p2, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter;->notifyItemMoved(II)V

    return-void
.end method

.method public onItemRangeRemoved(Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;II)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 264
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->countItemsBefore(Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;)I

    move-result p1

    .line 265
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mConcatAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter;

    add-int/2addr p2, p1

    invoke-virtual {p0, p2, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public onStateRestorationPolicyChanged(Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;)V
    .locals 0

    .line 283
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->calculateAndUpdateStateRestorationPolicy()V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 383
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->getWrapper(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;

    move-result-object p0

    .line 384
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;->adapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 388
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->getWrapper(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;

    move-result-object p0

    .line 389
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;->adapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .line 393
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mBinderLookup:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;->adapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 399
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mBinderLookup:Ljava/util/IdentityHashMap;

    invoke-virtual {p0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 395
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find wrapper for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", seems like it is not bound by this adapter: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method removeAdapter(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter<",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)Z"
        }
    .end annotation

    .line 184
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->indexOfWrapper(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;

    .line 189
    invoke-direct {p0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->countItemsBefore(Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;)I

    move-result v2

    .line 190
    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mConcatAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter;

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;->getCachedItemCount()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter;->notifyItemRangeRemoved(II)V

    .line 193
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->mAttachedRecyclerViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 194
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_1

    .line 196
    invoke-virtual {p1, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V

    goto :goto_0

    .line 199
    :cond_2
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;->dispose()V

    .line 200
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapterController;->calculateAndUpdateStateRestorationPolicy()V

    const/4 p0, 0x1

    return p0
.end method
