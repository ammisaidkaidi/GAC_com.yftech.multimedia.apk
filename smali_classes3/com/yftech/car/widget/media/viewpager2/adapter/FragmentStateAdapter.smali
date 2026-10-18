.class public abstract Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;
.super Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;
.source "FragmentStateAdapter.java"

# interfaces
.implements Lcom/yftech/car/widget/media/viewpager2/adapter/StatefulAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback;,
        Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;,
        Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$DataSetChangeObserver;,
        Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentViewHolder;",
        ">;",
        "Lcom/yftech/car/widget/media/viewpager2/adapter/StatefulAdapter;"
    }
.end annotation


# static fields
.field private static final GRACE_WINDOW_TIME_MS:J = 0x2710L

.field private static final KEY_PREFIX_FRAGMENT:Ljava/lang/String; = "f#"

.field private static final KEY_PREFIX_STATE:Ljava/lang/String; = "s#"


# instance fields
.field mFragmentEventDispatcher:Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;

.field final mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private mFragmentMaxLifecycleEnforcer:Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

.field final mFragments:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mHasStaleFragments:Z

.field mIsInGracePeriod:Z

.field private final mItemIdToViewHolder:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mLifecycle:Landroidx/lifecycle/Lifecycle;

.field private final mSavedStates:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Landroidx/fragment/app/Fragment$SavedState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 121
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 111
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Lifecycle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 132
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 88
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    .line 90
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mSavedStates:Landroidx/collection/LongSparseArray;

    .line 91
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Landroidx/collection/LongSparseArray;

    .line 95
    new-instance v0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;

    invoke-direct {v0}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mFragmentEventDispatcher:Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mIsInGracePeriod:Z

    .line 101
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mHasStaleFragments:Z

    .line 133
    iput-object p1, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 134
    iput-object p2, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    const/4 p1, 0x1

    .line 135
    invoke-super {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method

.method private static createKey(Ljava/lang/String;J)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private ensureFragment(I)V
    .locals 3

    .line 275
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->getItemId(I)J

    move-result-wide v0

    .line 276
    iget-object v2, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroidx/collection/LongSparseArray;->containsKey(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 278
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->createFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 279
    iget-object v2, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mSavedStates:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment$SavedState;

    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->setInitialSavedState(Landroidx/fragment/app/Fragment$SavedState;)V

    .line 280
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    invoke-virtual {p0, v0, v1, p1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private isFragmentViewBound(J)Z
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->containsKey(J)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 247
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    invoke-virtual {p0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/Fragment;

    const/4 p1, 0x0

    if-nez p0, :cond_1

    return p1

    .line 252
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_2

    return p1

    .line 257
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_3

    move p1, v1

    :cond_3
    return p1
.end method

.method private static isValidKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 628
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private itemForViewHolder(I)Ljava/lang/Long;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 262
    :goto_0
    iget-object v2, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 263
    iget-object v2, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v1}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_1

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, v1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1

    .line 265
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Design assumption violated: a ViewHolder can only be bound to one item at a time."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static parseIdFromKey(Ljava/lang/String;Ljava/lang/String;)J
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 633
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method private removeFragment(J)V
    .locals 3

    .line 451
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_0

    return-void

    .line 457
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 458
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 460
    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 464
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->containsItem(J)Z

    move-result v1

    if-nez v1, :cond_2

    .line 465
    iget-object v1, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mSavedStates:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 468
    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_3

    .line 469
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    invoke-virtual {p0, p1, p2}, Landroidx/collection/LongSparseArray;->remove(J)V

    return-void

    .line 473
    :cond_3
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->shouldDelayFragmentTransactions()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p1, 0x1

    .line 474
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mHasStaleFragments:Z

    return-void

    .line 478
    :cond_4
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->containsItem(J)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 479
    iget-object v1, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mSavedStates:Landroidx/collection/LongSparseArray;

    iget-object v2, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentManager;->saveFragmentInstanceState(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment$SavedState;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 481
    :cond_5
    iget-object v1, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mFragmentEventDispatcher:Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;

    .line 482
    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;->dispatchPreRemoved(Landroidx/fragment/app/Fragment;)Ljava/util/List;

    move-result-object v1

    .line 484
    :try_start_0
    iget-object v2, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    .line 485
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->remove(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mFragmentEventDispatcher:Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;

    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;->dispatchPostEvents(Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mFragmentEventDispatcher:Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;

    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;->dispatchPostEvents(Ljava/util/List;)V

    .line 488
    throw p1
.end method

.method private scheduleGracePeriodEnd()V
    .locals 4

    .line 598
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 599
    new-instance v1, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$4;

    invoke-direct {v1, p0}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$4;-><init>(Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;)V

    .line 607
    iget-object v2, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    new-instance v3, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$5;

    invoke-direct {v3, p0, v0, v1}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$5;-><init>(Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;Landroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    const-wide/16 v2, 0x2710

    .line 618
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private scheduleViewAttach(Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V
    .locals 2
    .param p2    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 385
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    new-instance v1, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$3;-><init>(Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0}, Landroidx/fragment/app/FragmentManager;->registerFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    return-void
.end method


# virtual methods
.method addViewToContainer(Landroid/view/View;Landroid/widget/FrameLayout;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 403
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p0

    const/4 v0, 0x1

    if-gt p0, v0, :cond_3

    .line 407
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-ne p0, p2, :cond_0

    return-void

    .line 411
    :cond_0
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p0

    if-lez p0, :cond_1

    .line 412
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 415
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 416
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 419
    :cond_2
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void

    .line 404
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Design assumption violated."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public containsItem(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 519
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->getItemCount()I

    move-result p0

    int-to-long v0, p0

    cmp-long p0, p1, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract createFragment(I)Landroidx/fragment/app/Fragment;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method gcFragments()V
    .locals 6

    .line 211
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mHasStaleFragments:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->shouldDelayFragmentTransactions()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 216
    :cond_0
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 217
    :goto_0
    iget-object v3, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 218
    iget-object v3, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, v2}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    .line 219
    invoke-virtual {p0, v3, v4}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->containsItem(J)Z

    move-result v5

    if-nez v5, :cond_1

    .line 220
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v5, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5, v3, v4}, Landroidx/collection/LongSparseArray;->remove(J)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 226
    :cond_2
    iget-boolean v2, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mIsInGracePeriod:Z

    if-nez v2, :cond_4

    .line 227
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mHasStaleFragments:Z

    .line 229
    :goto_1
    iget-object v2, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 230
    iget-object v2, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 231
    invoke-direct {p0, v2, v3}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->isFragmentViewBound(J)Z

    move-result v4

    if-nez v4, :cond_3

    .line 232
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 237
    :cond_4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 238
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->removeFragment(J)V

    goto :goto_2

    :cond_5
    return-void

    :cond_6
    :goto_3
    return-void
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public onAttachedToRecyclerView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mFragmentMaxLifecycleEnforcer:Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 143
    new-instance v0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;-><init>(Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mFragmentMaxLifecycleEnforcer:Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    .line 144
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mFragmentMaxLifecycleEnforcer:Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->register(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 73
    check-cast p1, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->onBindViewHolder(Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentViewHolder;I)V

    return-void
.end method

.method public final onBindViewHolder(Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentViewHolder;I)V
    .locals 7
    .param p1    # Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 176
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentViewHolder;->getItemId()J

    move-result-wide v0

    .line 177
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentViewHolder;->getContainer()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getId()I

    move-result v2

    .line 178
    invoke-direct {p0, v2}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->itemForViewHolder(I)Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 179
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-eqz v4, :cond_0

    .line 180
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->removeFragment(J)V

    .line 181
    iget-object v4, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 184
    :cond_0
    iget-object v3, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Landroidx/collection/LongSparseArray;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v0, v1, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 185
    invoke-direct {p0, p2}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->ensureFragment(I)V

    .line 189
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentViewHolder;->getContainer()Landroid/widget/FrameLayout;

    move-result-object p2

    .line 190
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 194
    new-instance v0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$1;-><init>(Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;Landroid/widget/FrameLayout;Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0

    .line 192
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Design assumption violated."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 206
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->gcFragments()V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 171
    invoke-static {p1}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentViewHolder;->create(Landroid/view/ViewGroup;)Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onDetachedFromRecyclerView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mFragmentMaxLifecycleEnforcer:Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->unregister(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V

    const/4 p1, 0x0

    .line 151
    iput-object p1, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mFragmentMaxLifecycleEnforcer:Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    return-void
.end method

.method public bridge synthetic onFailedToRecycleView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 73
    check-cast p1, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentViewHolder;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->onFailedToRecycleView(Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentViewHolder;)Z

    move-result p0

    return p0
.end method

.method public final onFailedToRecycleView(Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentViewHolder;)Z
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic onViewAttachedToWindow(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 73
    check-cast p1, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentViewHolder;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->onViewAttachedToWindow(Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentViewHolder;)V

    return-void
.end method

.method public final onViewAttachedToWindow(Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentViewHolder;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 286
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->placeFragmentInViewHolder(Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentViewHolder;)V

    .line 287
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->gcFragments()V

    return-void
.end method

.method public bridge synthetic onViewRecycled(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 73
    check-cast p1, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentViewHolder;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->onViewRecycled(Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentViewHolder;)V

    return-void
.end method

.method public final onViewRecycled(Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentViewHolder;)V
    .locals 2
    .param p1    # Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 424
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentViewHolder;->getContainer()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getId()I

    move-result p1

    .line 425
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->itemForViewHolder(I)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 427
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->removeFragment(J)V

    .line 428
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/collection/LongSparseArray;->remove(J)V

    :cond_0
    return-void
.end method

.method placeFragmentInViewHolder(Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentViewHolder;)V
    .locals 7
    .param p1    # Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 295
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentViewHolder;->getItemId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_8

    .line 299
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentViewHolder;->getContainer()Landroid/widget/FrameLayout;

    move-result-object v1

    .line 300
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 321
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 322
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Design assumption violated."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 326
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v2, :cond_2

    .line 327
    invoke-direct {p0, v0, v1}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->scheduleViewAttach(Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V

    return-void

    .line 332
    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 333
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eq p1, v1, :cond_3

    .line 334
    invoke-virtual {p0, v2, v1}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->addViewToContainer(Landroid/view/View;Landroid/widget/FrameLayout;)V

    :cond_3
    return-void

    .line 340
    :cond_4
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 341
    invoke-virtual {p0, v2, v1}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->addViewToContainer(Landroid/view/View;Landroid/widget/FrameLayout;)V

    return-void

    .line 346
    :cond_5
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->shouldDelayFragmentTransactions()Z

    move-result v2

    if-nez v2, :cond_6

    .line 347
    invoke-direct {p0, v0, v1}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->scheduleViewAttach(Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V

    .line 348
    iget-object v1, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mFragmentEventDispatcher:Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;

    .line 349
    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;->dispatchPreAdded(Landroidx/fragment/app/Fragment;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 351
    :try_start_0
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 352
    iget-object v3, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentViewHolder;->getItemId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v0, p1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 354
    invoke-virtual {p1, v0, v3}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 355
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    .line 356
    iget-object p1, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mFragmentMaxLifecycleEnforcer:Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    invoke-virtual {p1, v2}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->updateFragmentMaxLifecycle(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mFragmentEventDispatcher:Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;

    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;->dispatchPostEvents(Ljava/util/List;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mFragmentEventDispatcher:Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;

    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;->dispatchPostEvents(Ljava/util/List;)V

    .line 359
    throw p1

    .line 361
    :cond_6
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 364
    :cond_7
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    new-instance v1, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$2;-><init>(Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentViewHolder;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :goto_1
    return-void

    .line 297
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Design assumption violated."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerFragmentTransactionCallback(Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 915
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mFragmentEventDispatcher:Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;->registerCallback(Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback;)V

    return-void
.end method

.method public final restoreState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1    # Landroid/os/Parcelable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 558
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mSavedStates:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 563
    check-cast p1, Landroid/os/Bundle;

    .line 564
    invoke-virtual {p1}, Landroid/os/Bundle;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_0

    .line 566
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 569
    :cond_0
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "f#"

    .line 570
    invoke-static {v1, v2}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->isValidKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "f#"

    .line 571
    invoke-static {v1, v2}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->parseIdFromKey(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 572
    iget-object v4, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v4, p1, v1}, Landroidx/fragment/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 573
    iget-object v4, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v2, v3, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "s#"

    .line 577
    invoke-static {v1, v2}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->isValidKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "s#"

    .line 578
    invoke-static {v1, v2}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->parseIdFromKey(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 579
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment$SavedState;

    .line 580
    invoke-virtual {p0, v2, v3}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->containsItem(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 581
    iget-object v4, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mSavedStates:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v2, v3, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 586
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected key in savedState: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 589
    :cond_4
    iget-object p1, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x1

    .line 590
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mHasStaleFragments:Z

    .line 591
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mIsInGracePeriod:Z

    .line 592
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->gcFragments()V

    .line 593
    invoke-direct {p0}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->scheduleGracePeriodEnd()V

    :cond_5
    return-void

    .line 559
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Expected the adapter to be \'fresh\' while restoring state."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final saveState()Landroid/os/Parcelable;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 532
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    iget-object v2, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mSavedStates:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    .line 535
    :goto_0
    iget-object v3, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 536
    iget-object v3, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, v2}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    .line 537
    iget-object v5, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5, v3, v4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_0

    .line 538
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "f#"

    .line 539
    invoke-static {v6, v3, v4}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->createKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    .line 540
    iget-object v4, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v4, v0, v3, v5}, Landroidx/fragment/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 545
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mSavedStates:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 546
    iget-object v2, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mSavedStates:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 547
    invoke-virtual {p0, v2, v3}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->containsItem(J)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "s#"

    .line 548
    invoke-static {v4, v2, v3}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->createKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    .line 549
    iget-object v5, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mSavedStates:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public final setHasStableIds(Z)V
    .locals 0

    .line 524
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Stable Ids are required for the adapter to function properly, and the adapter takes care of setting the flag."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method shouldDelayFragmentTransactions()Z
    .locals 0

    .line 493
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result p0

    return p0
.end method

.method public unregisterFragmentTransactionCallback(Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 926
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;->mFragmentEventDispatcher:Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;->unregisterCallback(Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback;)V

    return-void
.end method
