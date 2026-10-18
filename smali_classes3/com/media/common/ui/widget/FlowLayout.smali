.class public Lcom/media/common/ui/widget/FlowLayout;
.super Landroid/view/ViewGroup;
.source "FlowLayout.java"


# instance fields
.field private mAllViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLineHeight:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/media/common/ui/widget/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p2, v0}, Lcom/media/common/ui/widget/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/media/common/ui/widget/FlowLayout;->mAllViews:Ljava/util/List;

    .line 111
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/media/common/ui/widget/FlowLayout;->mLineHeight:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 205
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/media/common/ui/widget/FlowLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getAllViewSize()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 102
    :goto_0
    iget-object v2, p0, Lcom/media/common/ui/widget/FlowLayout;->mAllViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 103
    iget-object v2, p0, Lcom/media/common/ui/widget/FlowLayout;->mAllViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    .line 115
    iget-object p1, p0, Lcom/media/common/ui/widget/FlowLayout;->mAllViews:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 116
    iget-object p1, p0, Lcom/media/common/ui/widget/FlowLayout;->mLineHeight:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 119
    invoke-virtual {p0}, Lcom/media/common/ui/widget/FlowLayout;->getWidth()I

    move-result p1

    .line 125
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 127
    invoke-virtual {p0}, Lcom/media/common/ui/widget/FlowLayout;->getChildCount()I

    move-result p3

    const/4 p4, 0x0

    move-object v1, p2

    move p2, p4

    move p5, p2

    move v0, p5

    :goto_0
    if-ge p2, p3, :cond_1

    .line 130
    invoke-virtual {p0, p2}, Lcom/media/common/ui/widget/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 132
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 134
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 135
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int v6, v4, p5

    .line 138
    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v6, v7

    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/media/common/ui/widget/FlowLayout;->getPaddingLeft()I

    move-result v7

    sub-int v7, p1, v7

    invoke-virtual {p0}, Lcom/media/common/ui/widget/FlowLayout;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_0

    .line 140
    iget-object p5, p0, Lcom/media/common/ui/widget/FlowLayout;->mLineHeight:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object p5, p0, Lcom/media/common/ui/widget/FlowLayout;->mAllViews:Ljava/util/List;

    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget p5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p5, v5

    iget v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, p5

    .line 148
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p5

    move p5, p4

    .line 150
    :cond_0
    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v6

    add-int/2addr p5, v4

    .line 151
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v4

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v3

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 153
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 157
    :cond_1
    iget-object p1, p0, Lcom/media/common/ui/widget/FlowLayout;->mLineHeight:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object p1, p0, Lcom/media/common/ui/widget/FlowLayout;->mAllViews:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-virtual {p0}, Lcom/media/common/ui/widget/FlowLayout;->getPaddingLeft()I

    move-result p1

    .line 163
    invoke-virtual {p0}, Lcom/media/common/ui/widget/FlowLayout;->getPaddingTop()I

    move-result p2

    .line 166
    iget-object p3, p0, Lcom/media/common/ui/widget/FlowLayout;->mAllViews:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    move p5, p2

    move p2, p1

    move p1, p4

    :goto_1
    if-ge p1, p3, :cond_4

    .line 170
    iget-object v0, p0, Lcom/media/common/ui/widget/FlowLayout;->mAllViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 171
    iget-object v1, p0, Lcom/media/common/ui/widget/FlowLayout;->mLineHeight:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v2, p2

    move p2, p4

    .line 173
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge p2, v3, :cond_3

    .line 174
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 176
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    goto :goto_3

    .line 181
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 183
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, v2

    .line 184
    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v6, p5

    .line 185
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v5

    .line 186
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v6

    .line 189
    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 191
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v5

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 194
    :cond_3
    invoke-virtual {p0}, Lcom/media/common/ui/widget/FlowLayout;->getPaddingLeft()I

    move-result p2

    add-int/2addr p5, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 18

    move-object/from16 v0, p0

    .line 33
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 34
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 35
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 36
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/media/common/ui/widget/FlowLayout;->getChildCount()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    :goto_0
    if-ge v6, v5, :cond_2

    .line 51
    invoke-virtual {v0, v6}, Lcom/media/common/ui/widget/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    move/from16 v12, p1

    move/from16 v13, p2

    .line 53
    invoke-virtual {v0, v11, v12, v13}, Lcom/media/common/ui/widget/FlowLayout;->measureChild(Landroid/view/View;II)V

    .line 56
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 59
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    move/from16 v16, v3

    iget v3, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v15, v3

    iget v3, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v15, v3

    .line 62
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v11, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v11

    iget v11, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v11

    add-int v11, v7, v15

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/media/common/ui/widget/FlowLayout;->getPaddingLeft()I

    move-result v14

    sub-int v14, v1, v14

    invoke-virtual/range {p0 .. p0}, Lcom/media/common/ui/widget/FlowLayout;->getPaddingRight()I

    move-result v17

    sub-int v14, v14, v17

    if-le v11, v14, :cond_0

    .line 68
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/2addr v9, v10

    move v10, v3

    move v7, v15

    goto :goto_1

    .line 80
    :cond_0
    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v10, v3

    move v7, v11

    :goto_1
    add-int/lit8 v3, v5, -0x1

    if-ne v6, v3, :cond_1

    .line 84
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v9, v10

    move v8, v3

    :cond_1
    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v16

    goto :goto_0

    :cond_2
    move/from16 v16, v3

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v2, v3, :cond_3

    goto :goto_2

    .line 89
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/media/common/ui/widget/FlowLayout;->getPaddingLeft()I

    move-result v1

    add-int/2addr v8, v1

    invoke-virtual/range {p0 .. p0}, Lcom/media/common/ui/widget/FlowLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v8

    :goto_2
    if-ne v4, v3, :cond_4

    move/from16 v3, v16

    goto :goto_3

    .line 90
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/media/common/ui/widget/FlowLayout;->getPaddingTop()I

    move-result v2

    add-int/2addr v9, v2

    invoke-virtual/range {p0 .. p0}, Lcom/media/common/ui/widget/FlowLayout;->getPaddingBottom()I

    move-result v2

    add-int v3, v9, v2

    .line 88
    :goto_3
    invoke-virtual {v0, v1, v3}, Lcom/media/common/ui/widget/FlowLayout;->setMeasuredDimension(II)V

    return-void
.end method
