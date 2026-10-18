.class public Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field final mDecorInsets:Landroid/graphics/Rect;

.field mInsetsDirty:Z

.field mPendingInvalidate:Z

.field mViewHolder:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 12005
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 11993
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 11994
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    const/4 p1, 0x0

    .line 11998
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 12001
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11993
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 11994
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    const/4 p1, 0x0

    .line 11998
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 12013
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11993
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 11994
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    const/4 p1, 0x0

    .line 11998
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 12009
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 11993
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 11994
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    const/4 p1, 0x0

    .line 11998
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    return-void
.end method

.method public constructor <init>(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;)V
    .locals 0

    .line 12017
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11993
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 11994
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    const/4 p1, 0x0

    .line 11998
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    return-void
.end method


# virtual methods
.method public getAbsoluteAdapterPosition()I
    .locals 0

    .line 12103
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result p0

    return p0
.end method

.method public getBindingAdapterPosition()I
    .locals 0

    .line 12115
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p0

    return p0
.end method

.method public getViewAdapterPosition()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12088
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p0

    return p0
.end method

.method public getViewLayoutPosition()I
    .locals 0

    .line 12077
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p0

    return p0
.end method

.method public getViewPosition()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12067
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->getPosition()I

    move-result p0

    return p0
.end method

.method public isItemChanged()Z
    .locals 0

    .line 12059
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result p0

    return p0
.end method

.method public isItemRemoved()Z
    .locals 0

    .line 12048
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result p0

    return p0
.end method

.method public isViewInvalid()Z
    .locals 0

    .line 12037
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result p0

    return p0
.end method

.method public viewNeedsUpdate()Z
    .locals 0

    .line 12027
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->needsUpdate()Z

    move-result p0

    return p0
.end method
