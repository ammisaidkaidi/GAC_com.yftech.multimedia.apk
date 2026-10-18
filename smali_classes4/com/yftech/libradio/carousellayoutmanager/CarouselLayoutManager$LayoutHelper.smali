.class Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;
.super Ljava/lang/Object;
.source "CarouselLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LayoutHelper"
.end annotation


# instance fields
.field private mLayoutOrder:[Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

.field private mMaxVisibleItems:I

.field private final mReusedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScrollOffset:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 890
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 888
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->mReusedItems:Ljava/util/List;

    .line 891
    iput p1, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->mMaxVisibleItems:I

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)I
    .locals 0

    .line 880
    iget p0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->mMaxVisibleItems:I

    return p0
.end method

.method static synthetic access$002(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;I)I
    .locals 0

    .line 880
    iput p1, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->mMaxVisibleItems:I

    return p1
.end method

.method static synthetic access$100(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)I
    .locals 0

    .line 880
    iget p0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->mScrollOffset:I

    return p0
.end method

.method static synthetic access$102(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;I)I
    .locals 0

    .line 880
    iput p1, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->mScrollOffset:I

    return p1
.end method

.method static synthetic access$400(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;)[Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;
    .locals 0

    .line 880
    iget-object p0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->mLayoutOrder:[Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    return-object p0
.end method

.method private createLayoutOrder()Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;
    .locals 1

    .line 960
    iget-object p0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->mReusedItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 961
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 962
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 963
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    .line 964
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    if-eqz v0, :cond_0

    return-object v0

    .line 969
    :cond_1
    new-instance p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;-><init>(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$1;)V

    return-object p0
.end method

.method private fillLayoutOrder()V
    .locals 4

    .line 952
    iget-object v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->mLayoutOrder:[Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 953
    iget-object v2, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->mLayoutOrder:[Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    .line 954
    iget-object v2, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->mLayoutOrder:[Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    invoke-direct {p0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->createLayoutOrder()Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    move-result-object v3

    aput-object v3, v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private varargs recycleItems([Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;)V
    .locals 5
    .param p1    # [Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 945
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 947
    iget-object v3, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->mReusedItems:Ljava/util/List;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method hasAdapterPosition(I)Z
    .locals 4

    .line 933
    iget-object v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->mLayoutOrder:[Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 934
    iget-object p0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->mLayoutOrder:[Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 935
    invoke-static {v3}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;->access$600(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;)I

    move-result v3

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method initLayoutOrder(I)V
    .locals 1

    .line 900
    iget-object v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->mLayoutOrder:[Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->mLayoutOrder:[Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    array-length v0, v0

    if-eq v0, p1, :cond_2

    .line 901
    :cond_0
    iget-object v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->mLayoutOrder:[Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    if-eqz v0, :cond_1

    .line 902
    iget-object v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->mLayoutOrder:[Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    invoke-direct {p0, v0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->recycleItems([Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;)V

    .line 904
    :cond_1
    new-array p1, p1, [Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    iput-object p1, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->mLayoutOrder:[Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    .line 905
    invoke-direct {p0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->fillLayoutOrder()V

    :cond_2
    return-void
.end method

.method setLayoutOrder(IIF)V
    .locals 0

    .line 921
    iget-object p0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutHelper;->mLayoutOrder:[Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;

    aget-object p0, p0, p1

    .line 922
    invoke-static {p0, p2}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;->access$602(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;I)I

    .line 923
    invoke-static {p0, p3}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;->access$502(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$LayoutOrder;F)F

    return-void
.end method
