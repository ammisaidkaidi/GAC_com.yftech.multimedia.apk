.class public Lcom/yftech/car/widget/media/flexbox/FlexboxItemDecoration;
.super Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;
.source "FlexboxItemDecoration.java"


# static fields
.field public static final BOTH:I = 0x3

.field public static final HORIZONTAL:I = 0x1

.field private static final LIST_DIVIDER_ATTRS:[I

.field public static final VERTICAL:I = 0x2


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 53
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010214

    aput v2, v0, v1

    sput-object v0, Lcom/yftech/car/widget/media/flexbox/FlexboxItemDecoration;->LIST_DIVIDER_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 60
    sget-object v0, Lcom/yftech/car/widget/media/flexbox/FlexboxItemDecoration;->LIST_DIVIDER_ATTRS:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 62
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x3

    .line 63
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxItemDecoration;->setOrientation(I)V

    return-void
.end method

.method private drawHorizontalDecorations(Landroid/graphics/Canvas;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V
    .locals 13

    .line 235
    invoke-direct {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxItemDecoration;->needsHorizontalDecoration()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 238
    :cond_0
    invoke-virtual {p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getLayoutManager()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;

    .line 239
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getFlexDirection()I

    move-result v1

    .line 240
    invoke-virtual {p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    .line 241
    invoke-virtual {p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getRight()I

    move-result v3

    invoke-virtual {p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    .line 242
    invoke-virtual {p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    .line 244
    invoke-virtual {p2, v5}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 245
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v8, 0x3

    if-ne v1, v8, :cond_1

    .line 249
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v8

    iget v9, v7, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    .line 250
    iget-object v9, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    add-int/2addr v9, v8

    goto :goto_1

    .line 252
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v8

    iget v9, v7, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int v9, v8, v9

    .line 253
    iget-object v8, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    sub-int v8, v9, v8

    .line 257
    :goto_1
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 258
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->isLayoutRtl()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 259
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v10

    iget v11, v7, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    add-int/2addr v10, v11

    .line 260
    invoke-static {v10, v3}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 261
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, v7, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr v6, v7

    move v12, v10

    move v10, v6

    move v6, v12

    goto :goto_2

    .line 263
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v10

    iget v11, v7, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    sub-int/2addr v10, v11

    .line 264
    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 265
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    iget v7, v7, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    goto :goto_2

    .line 268
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v10

    iget v11, v7, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr v10, v11

    .line 269
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    iget v7, v7, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    .line 271
    :goto_2
    iget-object v7, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v10, v8, v6, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 272
    iget-object v6, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private drawVerticalDecorations(Landroid/graphics/Canvas;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V
    .locals 13

    .line 191
    invoke-direct {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxItemDecoration;->needsVerticalDecoration()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 194
    :cond_0
    invoke-virtual {p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getLayoutManager()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;

    .line 195
    invoke-virtual {p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getTop()I

    move-result v1

    invoke-virtual {p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 196
    invoke-virtual {p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getBottom()I

    move-result v2

    invoke-virtual {p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    .line 197
    invoke-virtual {p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v3

    .line 198
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getFlexDirection()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_4

    .line 200
    invoke-virtual {p2, v5}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 202
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    .line 205
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 206
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v8

    iget v9, v7, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v8, v9

    .line 207
    iget-object v9, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    add-int/2addr v9, v8

    goto :goto_1

    .line 209
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v8

    iget v9, v7, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int v9, v8, v9

    .line 210
    iget-object v8, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    sub-int v8, v9, v8

    .line 214
    :goto_1
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 215
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v10

    iget v11, v7, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v10, v11

    .line 216
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v7, v7, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    goto :goto_2

    :cond_2
    const/4 v10, 0x3

    if-ne v4, v10, :cond_3

    .line 219
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v10

    iget v11, v7, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    add-int/2addr v10, v11

    .line 220
    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 221
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, v7, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v6, v7

    move v12, v10

    move v10, v6

    move v6, v12

    goto :goto_2

    .line 223
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v10

    iget v11, v7, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    sub-int/2addr v10, v11

    .line 224
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 225
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v7, v7, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    .line 229
    :goto_2
    iget-object v7, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8, v10, v9, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 230
    iget-object v6, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private isFirstItemInLine(ILjava/util/List;Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/flexbox/FlexLine;",
            ">;",
            "Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;",
            ")Z"
        }
    .end annotation

    .line 289
    invoke-virtual {p3, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getPositionToFlexLineIndex(I)I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    .line 291
    invoke-virtual {p3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getFlexLinesInternal()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 292
    invoke-virtual {p3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getFlexLinesInternal()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/car/widget/media/flexbox/FlexLine;

    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mFirstIndex:I

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    return v0

    .line 298
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    const/4 p3, 0x0

    if-nez p0, :cond_2

    return p3

    .line 304
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v0

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/car/widget/media/flexbox/FlexLine;

    .line 305
    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mLastIndex:I

    sub-int/2addr p1, v0

    if-ne p0, p1, :cond_3

    move p3, v0

    :cond_3
    return p3
.end method

.method private needsHorizontalDecoration()Z
    .locals 1

    .line 277
    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxItemDecoration;->mOrientation:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private needsVerticalDecoration()Z
    .locals 0

    .line 281
    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxItemDecoration;->mOrientation:I

    and-int/lit8 p0, p0, 0x2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setOffsetAlongCrossAxis(Landroid/graphics/Rect;ILcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "I",
            "Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;",
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/flexbox/FlexLine;",
            ">;)V"
        }
    .end annotation

    .line 123
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-nez p4, :cond_0

    return-void

    .line 126
    :cond_0
    invoke-virtual {p3, p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getPositionToFlexLineIndex(I)I

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 131
    :cond_1
    invoke-virtual {p3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result p2

    const/4 p4, 0x0

    if-eqz p2, :cond_3

    .line 132
    invoke-direct {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxItemDecoration;->needsHorizontalDecoration()Z

    move-result p2

    if-nez p2, :cond_2

    .line 133
    iput p4, p1, Landroid/graphics/Rect;->top:I

    .line 134
    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    return-void

    .line 137
    :cond_2
    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->top:I

    .line 138
    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 140
    :cond_3
    invoke-direct {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxItemDecoration;->needsVerticalDecoration()Z

    move-result p2

    if-nez p2, :cond_4

    return-void

    .line 143
    :cond_4
    invoke-virtual {p3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->isLayoutRtl()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 144
    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    .line 145
    iput p4, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 147
    :cond_5
    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->left:I

    .line 148
    iput p4, p1, Landroid/graphics/Rect;->right:I

    :goto_0
    return-void
.end method

.method private setOffsetAlongMainAxis(Landroid/graphics/Rect;ILcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "I",
            "Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;",
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/flexbox/FlexLine;",
            ">;I)V"
        }
    .end annotation

    .line 156
    invoke-direct {p0, p2, p4, p3}, Lcom/yftech/car/widget/media/flexbox/FlexboxItemDecoration;->isFirstItemInLine(ILjava/util/List;Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 160
    :cond_0
    invoke-virtual {p3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result p2

    const/4 p4, 0x0

    if-eqz p2, :cond_3

    .line 161
    invoke-direct {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxItemDecoration;->needsVerticalDecoration()Z

    move-result p2

    if-nez p2, :cond_1

    .line 162
    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 163
    iput p4, p1, Landroid/graphics/Rect;->right:I

    return-void

    .line 166
    :cond_1
    invoke-virtual {p3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->isLayoutRtl()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 167
    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    .line 168
    iput p4, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 170
    :cond_2
    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->left:I

    .line 171
    iput p4, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 174
    :cond_3
    invoke-direct {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxItemDecoration;->needsHorizontalDecoration()Z

    move-result p2

    if-nez p2, :cond_4

    .line 175
    iput p4, p1, Landroid/graphics/Rect;->top:I

    .line 176
    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    return-void

    :cond_4
    const/4 p2, 0x3

    if-ne p5, p2, :cond_5

    .line 180
    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 181
    iput p4, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 183
    :cond_5
    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->top:I

    .line 184
    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    :goto_0
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)V
    .locals 6
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 106
    invoke-virtual {p3, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 110
    :cond_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxItemDecoration;->needsHorizontalDecoration()Z

    move-result p4

    if-nez p4, :cond_1

    invoke-direct {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxItemDecoration;->needsVerticalDecoration()Z

    move-result p4

    if-nez p4, :cond_1

    const/4 p0, 0x0

    .line 111
    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 114
    :cond_1
    invoke-virtual {p3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getLayoutManager()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    check-cast p3, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;

    .line 115
    invoke-virtual {p3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getFlexLines()Ljava/util/List;

    move-result-object p4

    .line 116
    invoke-virtual {p3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;->getFlexDirection()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 117
    invoke-direct/range {v0 .. v5}, Lcom/yftech/car/widget/media/flexbox/FlexboxItemDecoration;->setOffsetAlongMainAxis(Landroid/graphics/Rect;ILcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;Ljava/util/List;I)V

    .line 118
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yftech/car/widget/media/flexbox/FlexboxItemDecoration;->setOffsetAlongCrossAxis(Landroid/graphics/Rect;ILcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;Ljava/util/List;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)V
    .locals 0
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxItemDecoration;->drawHorizontalDecorations(Landroid/graphics/Canvas;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxItemDecoration;->drawVerticalDecorations(Landroid/graphics/Canvas;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 75
    iput-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void

    .line 73
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Drawable cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOrientation(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxItemDecoration;->mOrientation:I

    return-void
.end method
