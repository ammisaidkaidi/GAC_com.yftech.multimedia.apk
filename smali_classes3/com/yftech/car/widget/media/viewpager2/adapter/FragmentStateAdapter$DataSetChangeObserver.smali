.class abstract Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$DataSetChangeObserver;
.super Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "FragmentStateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "DataSetChangeObserver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 775
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$1;)V
    .locals 0

    .line 775
    invoke-direct {p0}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$DataSetChangeObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onChanged()V
.end method

.method public final onItemRangeChanged(II)V
    .locals 0

    .line 781
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$DataSetChangeObserver;->onChanged()V

    return-void
.end method

.method public final onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 787
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$DataSetChangeObserver;->onChanged()V

    return-void
.end method

.method public final onItemRangeInserted(II)V
    .locals 0

    .line 792
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$DataSetChangeObserver;->onChanged()V

    return-void
.end method

.method public final onItemRangeMoved(III)V
    .locals 0

    .line 802
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$DataSetChangeObserver;->onChanged()V

    return-void
.end method

.method public final onItemRangeRemoved(II)V
    .locals 0

    .line 797
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$DataSetChangeObserver;->onChanged()V

    return-void
.end method
