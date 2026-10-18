.class public Lcom/android/internal/widget/MessagingLinearLayout;
.super Landroid/view/ViewGroup;
.source "MessagingLinearLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;,
        Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    }
.end annotation


# instance fields
.field private mMaxDisplayedLines:I

.field private mMessagingLayout:Lcom/android/internal/widget/MessagingLayout;

.field private mSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7fffffff

    .line 44
    iput v0, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mMaxDisplayedLines:I

    .line 51
    sget-object v0, Lcom/android/internal/R$styleable;->MessagingLinearLayout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    move v0, v1

    :goto_0
    if-ge v0, p2, :cond_1

    .line 57
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 60
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static isGone(Landroid/view/View;)Z
    .locals 3

    .line 236
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    return v1

    .line 239
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 240
    instance-of v0, p0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    iget-boolean p0, p0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .line 205
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    .line 206
    iget-boolean v0, v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    if-eqz v0, :cond_0

    .line 207
    move-object v0, p2

    check-cast v0, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    .line 208
    invoke-interface {v0}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->isHidingAnimated()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 212
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 36
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLinearLayout;->generateDefaultLayoutParams()Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .locals 2

    .line 222
    new-instance p0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingLinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingLinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .locals 1

    .line 217
    new-instance v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    iget-object p0, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .locals 2

    .line 228
    new-instance p0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;-><init>(II)V

    .line 229
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 230
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->copyMarginsFrom(Landroid/view/ViewGroup$MarginLayoutParams;)V

    :cond_0
    return-object p0
.end method

.method public getMessagingLayout()Lcom/android/internal/widget/MessagingLayout;
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mMessagingLayout:Lcom/android/internal/widget/MessagingLayout;

    return-object p0
.end method

.method protected onLayout(ZIIII)V
    .locals 17

    move-object/from16 v0, p0

    .line 144
    iget v1, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingLeft:I

    sub-int v2, p4, p2

    .line 150
    iget v3, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingRight:I

    sub-int/2addr v2, v3

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getLayoutDirection()I

    move-result v3

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v4

    .line 155
    iget v5, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingTop:I

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MessagingLinearLayout;->isShown()Z

    move-result v6

    const/4 v8, 0x1

    move v10, v5

    move v9, v8

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_5

    .line 160
    invoke-virtual {v0, v5}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 161
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_0

    const/4 v7, 0x0

    goto :goto_3

    .line 164
    :cond_0
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    .line 165
    move-object v13, v11

    check-cast v13, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    .line 167
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 168
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    if-ne v3, v8, :cond_1

    sub-int v16, v2, v14

    .line 172
    iget v8, v12, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->rightMargin:I

    sub-int v16, v16, v8

    :goto_1
    move/from16 v8, v16

    goto :goto_2

    .line 174
    :cond_1
    iget v8, v12, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->leftMargin:I

    add-int v16, v1, v8

    goto :goto_1

    .line 176
    :goto_2
    iget-boolean v7, v12, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    if-eqz v7, :cond_3

    if-eqz v6, :cond_2

    .line 177
    iget-boolean v7, v12, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->visibleBefore:Z

    if-eqz v7, :cond_2

    add-int/2addr v14, v8

    .line 179
    iget v7, v12, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->lastVisibleHeight:I

    add-int/2addr v7, v10

    invoke-virtual {v11, v8, v10, v14, v7}, Landroid/view/View;->layout(IIII)V

    .line 181
    invoke-interface {v13}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->hideAnimated()V

    :cond_2
    const/4 v7, 0x0

    .line 183
    iput-boolean v7, v12, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->visibleBefore:Z

    :goto_3
    const/4 v13, 0x1

    goto :goto_4

    :cond_3
    const/4 v7, 0x0

    const/4 v13, 0x1

    .line 186
    iput-boolean v13, v12, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->visibleBefore:Z

    .line 187
    iput v15, v12, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->lastVisibleHeight:I

    if-nez v9, :cond_4

    .line 191
    iget v9, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    add-int/2addr v10, v9

    .line 194
    :cond_4
    iget v9, v12, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v10, v9

    add-int/2addr v14, v8

    add-int v9, v10, v15

    .line 195
    invoke-virtual {v11, v8, v10, v14, v9}, Landroid/view/View;->layout(IIII)V

    .line 197
    iget v8, v12, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v15, v8

    add-int/2addr v10, v15

    move v9, v7

    :goto_4
    add-int/lit8 v5, v5, 0x1

    move v8, v13

    goto :goto_0

    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 18

    move-object/from16 v6, p0

    .line 72
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 73
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    move v7, v0

    goto :goto_1

    :cond_0
    const v0, 0x7fffffff

    goto :goto_0

    .line 80
    :goto_1
    iget v0, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingLeft:I

    iget v1, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingRight:I

    add-int/2addr v0, v1

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v1

    const/4 v8, 0x0

    move v2, v8

    :goto_2
    const/4 v9, 0x1

    if-ge v2, v1, :cond_1

    .line 84
    invoke-virtual {v6, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 85
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    .line 86
    iput-boolean v9, v3, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 89
    :cond_1
    iget v2, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingTop:I

    iget v3, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingBottom:I

    add-int/2addr v2, v3

    .line 91
    iget v3, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mMaxDisplayedLines:I

    sub-int/2addr v1, v9

    move v13, v0

    move v10, v1

    move v11, v2

    move v12, v3

    move v0, v9

    :goto_3
    if-ltz v10, :cond_9

    if-ge v11, v7, :cond_9

    .line 95
    invoke-virtual {v6, v10}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    goto/16 :goto_8

    .line 98
    :cond_2
    invoke-virtual {v6, v10}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 99
    invoke-virtual {v6, v10}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    const/4 v1, 0x0

    .line 101
    iget v2, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    .line 102
    instance-of v3, v14, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    if-eqz v3, :cond_3

    .line 103
    move-object v1, v14

    check-cast v1, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    .line 104
    invoke-interface {v1, v12}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->setMaxDisplayedLines(I)V

    .line 105
    invoke-interface {v1}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->getExtraSpacing()I

    move-result v3

    add-int/2addr v2, v3

    :cond_3
    move-object/from16 v16, v1

    if-eqz v0, :cond_4

    move/from16 v17, v8

    goto :goto_4

    :cond_4
    move/from16 v17, v2

    :goto_4
    const/4 v3, 0x0

    .line 108
    iget v0, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingTop:I

    sub-int v0, v11, v0

    iget v1, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingBottom:I

    sub-int/2addr v0, v1

    add-int v5, v0, v17

    move-object/from16 v0, p0

    move-object v1, v14

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/MessagingLinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 111
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v11

    .line 112
    iget v1, v15, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v1

    iget v1, v15, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    add-int v0, v0, v17

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v16, :cond_5

    .line 117
    invoke-interface/range {v16 .. v16}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->getMeasuredType()I

    move-result v1

    .line 118
    invoke-interface/range {v16 .. v16}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->getConsumedLines()I

    move-result v2

    sub-int/2addr v12, v2

    goto :goto_5

    :cond_5
    move v1, v8

    :goto_5
    if-ne v1, v9, :cond_6

    move v2, v9

    goto :goto_6

    :cond_6
    move v2, v8

    :goto_6
    const/4 v3, 0x2

    if-ne v1, v3, :cond_7

    move v1, v9

    goto :goto_7

    :cond_7
    move v1, v8

    :goto_7
    if-gt v0, v7, :cond_9

    if-nez v1, :cond_9

    .line 125
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v3, v15, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v3

    iget v3, v15, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v3

    iget v3, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingLeft:I

    add-int/2addr v1, v3

    iget v3, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingRight:I

    add-int/2addr v1, v3

    .line 124
    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 127
    iput-boolean v8, v15, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    if-nez v2, :cond_a

    if-gtz v12, :cond_8

    goto :goto_9

    :cond_8
    move v11, v0

    move v0, v8

    :goto_8
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_3

    :cond_9
    move v0, v11

    .line 137
    :cond_a
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v1, v13}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v2, p1

    invoke-static {v1, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->resolveSize(II)I

    move-result v1

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 136
    invoke-virtual {v6, v1, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public setMaxDisplayedLines(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 252
    iput p1, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mMaxDisplayedLines:I

    return-void
.end method

.method public setMessagingLayout(Lcom/android/internal/widget/MessagingLayout;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mMessagingLayout:Lcom/android/internal/widget/MessagingLayout;

    return-void
.end method
