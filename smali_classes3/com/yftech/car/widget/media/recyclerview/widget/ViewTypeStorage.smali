.class interface abstract Lcom/yftech/car/widget/media/recyclerview/widget/ViewTypeStorage;
.super Ljava/lang/Object;
.source "ViewTypeStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage;,
        Lcom/yftech/car/widget/media/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage;,
        Lcom/yftech/car/widget/media/recyclerview/widget/ViewTypeStorage$ViewTypeLookup;
    }
.end annotation


# virtual methods
.method public abstract createViewTypeWrapper(Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;)Lcom/yftech/car/widget/media/recyclerview/widget/ViewTypeStorage$ViewTypeLookup;
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getWrapperForGlobalType(I)Lcom/yftech/car/widget/media/recyclerview/widget/NestedAdapterWrapper;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
