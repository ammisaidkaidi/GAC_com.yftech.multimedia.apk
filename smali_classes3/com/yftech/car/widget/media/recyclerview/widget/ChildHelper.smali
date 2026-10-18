.class Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;
.super Ljava/lang/Object;
.source "ChildHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;,
        Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Bucket;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ChildrenHelper"


# instance fields
.field final mBucket:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Bucket;

.field final mCallback:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;

.field final mHiddenViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mCallback:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;

    .line 51
    new-instance p1, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Bucket;

    invoke-direct {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Bucket;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mBucket:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Bucket;

    .line 52
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    return-void
.end method

.method private getOffset(I)I
    .locals 4

    const/4 v0, -0x1

    if-gez p1, :cond_0

    return v0

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mCallback:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;

    invoke-interface {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;->getChildCount()I

    move-result v1

    move v2, p1

    :goto_0
    if-ge v2, v1, :cond_3

    .line 121
    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mBucket:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Bucket;

    invoke-virtual {v3, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Bucket;->countOnesBefore(I)I

    move-result v3

    sub-int v3, v2, v3

    sub-int v3, p1, v3

    if-nez v3, :cond_2

    .line 124
    :goto_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mBucket:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Bucket;

    invoke-virtual {p1, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Bucket;->get(I)Z

    move-result p1

    if-eqz p1, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    add-int/2addr v2, v3

    goto :goto_0

    :cond_3
    return v0
.end method

.method private hideViewInternal(Landroid/view/View;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mCallback:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;

    invoke-interface {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;->onEnteredHiddenState(Landroid/view/View;)V

    return-void
.end method

.method private unhideViewInternal(Landroid/view/View;)Z
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mCallback:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;

    invoke-interface {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;->onLeftHiddenState(Landroid/view/View;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method addView(Landroid/view/View;IZ)V
    .locals 1

    if-gez p2, :cond_0

    .line 100
    iget-object p2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mCallback:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;

    invoke-interface {p2}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;->getChildCount()I

    move-result p2

    goto :goto_0

    .line 102
    :cond_0
    invoke-direct {p0, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getOffset(I)I

    move-result p2

    .line 104
    :goto_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mBucket:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Bucket;

    invoke-virtual {v0, p2, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Bucket;->insert(IZ)V

    if-eqz p3, :cond_1

    .line 106
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->hideViewInternal(Landroid/view/View;)V

    .line 108
    :cond_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mCallback:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;

    invoke-interface {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;->addView(Landroid/view/View;I)V

    return-void
.end method

.method addView(Landroid/view/View;Z)V
    .locals 1

    const/4 v0, -0x1

    .line 86
    invoke-virtual {p0, p1, v0, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->addView(Landroid/view/View;IZ)V

    return-void
.end method

.method attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 1

    if-gez p2, :cond_0

    .line 232
    iget-object p2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mCallback:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;

    invoke-interface {p2}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;->getChildCount()I

    move-result p2

    goto :goto_0

    .line 234
    :cond_0
    invoke-direct {p0, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getOffset(I)I

    move-result p2

    .line 236
    :goto_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mBucket:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Bucket;

    invoke-virtual {v0, p2, p4}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Bucket;->insert(IZ)V

    if-eqz p4, :cond_1

    .line 238
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->hideViewInternal(Landroid/view/View;)V

    .line 240
    :cond_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mCallback:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;

    invoke-interface {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method detachViewFromParent(I)V
    .locals 1

    .line 283
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getOffset(I)I

    move-result p1

    .line 284
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mBucket:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Bucket;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Bucket;->remove(I)Z

    .line 285
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mCallback:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;

    invoke-interface {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;->detachViewFromParent(I)V

    return-void
.end method

.method findHiddenNonRemovedView(I)Landroid/view/View;
    .locals 5

    .line 207
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 209
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 210
    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mCallback:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;

    invoke-interface {v3, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;->getChildViewHolder(Landroid/view/View;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 211
    invoke-virtual {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 212
    invoke-virtual {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_0

    .line 213
    invoke-virtual {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method getChildAt(I)Landroid/view/View;
    .locals 0

    .line 181
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getOffset(I)I

    move-result p1

    .line 182
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mCallback:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;

    invoke-interface {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method getChildCount()I
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mCallback:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;

    invoke-interface {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;->getChildCount()I

    move-result v0

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method getUnfilteredChildAt(I)Landroid/view/View;
    .locals 0

    .line 274
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mCallback:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;

    invoke-interface {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method getUnfilteredChildCount()I
    .locals 0

    .line 264
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mCallback:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;

    invoke-interface {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;->getChildCount()I

    move-result p0

    return p0
.end method

.method hide(Landroid/view/View;)V
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mCallback:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;

    invoke-interface {v0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 336
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mBucket:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Bucket;

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Bucket;->set(I)V

    .line 337
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->hideViewInternal(Landroid/view/View;)V

    return-void

    .line 331
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "view is not a child, cannot hide "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method indexOfChild(Landroid/view/View;)I
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mCallback:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;

    invoke-interface {v0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;->indexOfChild(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    .line 302
    :cond_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mBucket:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Bucket;

    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Bucket;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 310
    :cond_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mBucket:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Bucket;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Bucket;->countOnesBefore(I)I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method isHidden(Landroid/view/View;)Z
    .locals 0

    .line 320
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method removeAllViewsUnfiltered()V
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mBucket:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Bucket;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Bucket;->reset()V

    .line 190
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 191
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mCallback:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;

    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {v1, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;->onLeftHiddenState(Landroid/view/View;)V

    .line 192
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 194
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mCallback:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;

    invoke-interface {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;->removeAllViews()V

    return-void
.end method

.method removeView(Landroid/view/View;)V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mCallback:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;

    invoke-interface {v0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mBucket:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Bucket;

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Bucket;->remove(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->unhideViewInternal(Landroid/view/View;)Z

    .line 148
    :cond_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mCallback:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;

    invoke-interface {p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;->removeViewAt(I)V

    return-void
.end method

.method removeViewAt(I)V
    .locals 2

    .line 161
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->getOffset(I)I

    move-result p1

    .line 162
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mCallback:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;

    invoke-interface {v0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mBucket:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Bucket;

    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Bucket;->remove(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->unhideViewInternal(Landroid/view/View;)Z

    .line 169
    :cond_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mCallback:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;

    invoke-interface {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;->removeViewAt(I)V

    return-void
.end method

.method removeViewIfHidden(Landroid/view/View;)Z
    .locals 3

    .line 374
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mCallback:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;

    invoke-interface {v0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 376
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->unhideViewInternal(Landroid/view/View;)Z

    return v1

    .line 381
    :cond_0
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mBucket:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Bucket;

    invoke-virtual {v2, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Bucket;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 382
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mBucket:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Bucket;

    invoke-virtual {v2, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Bucket;->remove(I)Z

    .line 383
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->unhideViewInternal(Landroid/view/View;)Z

    .line 387
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mCallback:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;

    invoke-interface {p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;->removeViewAt(I)V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mBucket:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Bucket;

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Bucket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hidden list:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method unhide(Landroid/view/View;)V
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mCallback:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;

    invoke-interface {v0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Callback;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 355
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mBucket:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Bucket;

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Bucket;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->mBucket:Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Bucket;

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper$Bucket;->clear(I)V

    .line 359
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/ChildHelper;->unhideViewInternal(Landroid/view/View;)Z

    return-void

    .line 356
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "trying to unhide a view that was not hidden"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 353
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "view is not a child, cannot hide "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
