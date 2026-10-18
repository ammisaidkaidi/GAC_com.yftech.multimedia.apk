.class public Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder;
.super Lcom/alibaba/android/vlayout/LayoutHelperFinder;
.source "RangeLayoutHelperFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder$LayoutHelperItem;
    }
.end annotation


# instance fields
.field private mLayoutHelperItemComparator:Ljava/util/Comparator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder$LayoutHelperItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutHelperItems:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder$LayoutHelperItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutHelpers:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/android/vlayout/LayoutHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/alibaba/android/vlayout/LayoutHelperFinder;-><init>()V

    .line 42
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder;->mLayoutHelperItems:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder;->mLayoutHelpers:Ljava/util/List;

    .line 48
    new-instance v0, Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder$1;-><init>(Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder;)V

    iput-object v0, p0, Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder;->mLayoutHelperItemComparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public getLayoutHelper(I)Lcom/alibaba/android/vlayout/LayoutHelper;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder;->mLayoutHelperItems:Ljava/util/List;

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

    .line 120
    div-int/lit8 v3, v3, 0x2

    .line 121
    iget-object v4, p0, Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder;->mLayoutHelperItems:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder$LayoutHelperItem;

    .line 122
    invoke-virtual {v4}, Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder$LayoutHelperItem;->getStartPosition()I

    move-result v5

    if-le v5, p1, :cond_2

    add-int/lit8 v3, v3, -0x1

    move v0, v3

    goto :goto_0

    .line 124
    :cond_2
    invoke-virtual {v4}, Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder$LayoutHelperItem;->getEndPosition()I

    move-result v5

    if-ge v5, p1, :cond_3

    add-int/lit8 v3, v3, 0x1

    move v2, v3

    goto :goto_0

    .line 126
    :cond_3
    invoke-virtual {v4}, Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder$LayoutHelperItem;->getStartPosition()I

    move-result v3

    if-gt v3, p1, :cond_1

    invoke-virtual {v4}, Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder$LayoutHelperItem;->getEndPosition()I

    move-result v3

    if-lt v3, p1, :cond_1

    goto :goto_1

    :cond_4
    move-object v4, v1

    :goto_1
    if-nez v4, :cond_5

    goto :goto_2

    .line 132
    :cond_5
    iget-object v1, v4, Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder$LayoutHelperItem;->layoutHelper:Lcom/alibaba/android/vlayout/LayoutHelper;

    :goto_2
    return-object v1
.end method

.method protected getLayoutHelpers()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/android/vlayout/LayoutHelper;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object p0, p0, Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder;->mLayoutHelpers:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/alibaba/android/vlayout/LayoutHelper;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object p0, p0, Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder;->mLayoutHelpers:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method protected reverse()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/alibaba/android/vlayout/LayoutHelper;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder;->mLayoutHelpers:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder;->mLayoutHelpers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 64
    new-instance v1, Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder$2;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder$2;-><init>(Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder;Ljava/util/ListIterator;)V

    return-object v1
.end method

.method public setLayouts(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/android/vlayout/LayoutHelper;",
            ">;)V"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder;->mLayoutHelpers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 90
    iget-object v0, p0, Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder;->mLayoutHelperItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_1

    .line 92
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/vlayout/LayoutHelper;

    .line 93
    iget-object v1, p0, Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder;->mLayoutHelpers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v1, p0, Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder;->mLayoutHelperItems:Ljava/util/List;

    new-instance v2, Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder$LayoutHelperItem;

    invoke-direct {v2, v0}, Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder$LayoutHelperItem;-><init>(Lcom/alibaba/android/vlayout/LayoutHelper;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder;->mLayoutHelperItems:Ljava/util/List;

    iget-object p0, p0, Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder;->mLayoutHelperItemComparator:Ljava/util/Comparator;

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    return-void
.end method
