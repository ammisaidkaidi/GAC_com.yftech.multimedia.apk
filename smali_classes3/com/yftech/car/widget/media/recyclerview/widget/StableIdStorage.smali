.class interface abstract Lcom/yftech/car/widget/media/recyclerview/widget/StableIdStorage;
.super Ljava/lang/Object;
.source "StableIdStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/recyclerview/widget/StableIdStorage$IsolatedStableIdStorage;,
        Lcom/yftech/car/widget/media/recyclerview/widget/StableIdStorage$SharedPoolStableIdStorage;,
        Lcom/yftech/car/widget/media/recyclerview/widget/StableIdStorage$NoStableIdStorage;,
        Lcom/yftech/car/widget/media/recyclerview/widget/StableIdStorage$StableIdLookup;
    }
.end annotation


# virtual methods
.method public abstract createStableIdLookup()Lcom/yftech/car/widget/media/recyclerview/widget/StableIdStorage$StableIdLookup;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
