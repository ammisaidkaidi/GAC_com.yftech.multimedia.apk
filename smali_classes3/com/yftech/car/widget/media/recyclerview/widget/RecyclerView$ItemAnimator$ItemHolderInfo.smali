.class public Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemHolderInfo"
.end annotation


# instance fields
.field public bottom:I

.field public changeFlags:I

.field public left:I

.field public right:I

.field public top:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setFrom(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 1
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 13863
    invoke-virtual {p0, p1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->setFrom(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;I)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object p0

    return-object p0
.end method

.method public setFrom(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;I)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 13879
    iget-object p1, p1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 13880
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 13881
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    .line 13882
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->right:I

    .line 13883
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->bottom:I

    return-object p0
.end method
