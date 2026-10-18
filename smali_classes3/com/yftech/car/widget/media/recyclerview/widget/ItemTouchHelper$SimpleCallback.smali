.class public abstract Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$SimpleCallback;
.super Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$Callback;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleCallback"
.end annotation


# instance fields
.field private mDefaultDragDirs:I

.field private mDefaultSwipeDirs:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 2237
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    .line 2238
    iput p2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    .line 2239
    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$SimpleCallback;->mDefaultDragDirs:I

    return-void
.end method


# virtual methods
.method public getDragDirs(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2291
    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$SimpleCallback;->mDefaultDragDirs:I

    return p0
.end method

.method public getMovementFlags(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 1
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2297
    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$SimpleCallback;->getDragDirs(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 2298
    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$SimpleCallback;->getSwipeDirs(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result p0

    .line 2297
    invoke-static {v0, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$SimpleCallback;->makeMovementFlags(II)I

    move-result p0

    return p0
.end method

.method public getSwipeDirs(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2276
    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    return p0
.end method

.method public setDefaultDragDirs(I)V
    .locals 0

    .line 2261
    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$SimpleCallback;->mDefaultDragDirs:I

    return-void
.end method

.method public setDefaultSwipeDirs(I)V
    .locals 0

    .line 2250
    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    return-void
.end method
