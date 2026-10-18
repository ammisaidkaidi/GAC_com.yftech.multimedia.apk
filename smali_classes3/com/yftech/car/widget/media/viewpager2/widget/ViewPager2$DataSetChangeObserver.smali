.class abstract Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$DataSetChangeObserver;
.super Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "ViewPager2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "DataSetChangeObserver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1671
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$1;)V
    .locals 0

    .line 1671
    invoke-direct {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$DataSetChangeObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onChanged()V
.end method

.method public final onItemRangeChanged(II)V
    .locals 0

    .line 1677
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$DataSetChangeObserver;->onChanged()V

    return-void
.end method

.method public final onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1683
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$DataSetChangeObserver;->onChanged()V

    return-void
.end method

.method public final onItemRangeInserted(II)V
    .locals 0

    .line 1688
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$DataSetChangeObserver;->onChanged()V

    return-void
.end method

.method public final onItemRangeMoved(III)V
    .locals 0

    .line 1698
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$DataSetChangeObserver;->onChanged()V

    return-void
.end method

.method public final onItemRangeRemoved(II)V
    .locals 0

    .line 1693
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$DataSetChangeObserver;->onChanged()V

    return-void
.end method
