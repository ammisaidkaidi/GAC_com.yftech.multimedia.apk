.class public Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;
.super Landroid/view/ViewGroup;
.source "FlexboxLayout.java"

# interfaces
.implements Lcom/yftech/car/widget/media/flexbox/FlexContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;,
        Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$DividerMode;
    }
.end annotation


# static fields
.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I


# instance fields
.field private mAlignContent:I

.field private mAlignItems:I

.field private mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mDividerHorizontalHeight:I

.field private mDividerVerticalWidth:I

.field private mFlexDirection:I

.field private mFlexLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/flexbox/FlexLine;",
            ">;"
        }
    .end annotation
.end field

.field private mFlexLinesResult:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;

.field private mFlexWrap:I

.field private mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

.field private mJustifyContent:I

.field private mMaxLine:I

.field private mOrderCache:Landroid/util/SparseIntArray;

.field private mReorderedIndices:[I

.field private mShowDividerHorizontal:I

.field private mShowDividerVertical:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 212
    invoke-direct {p0, p1, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 216
    invoke-direct {p0, p1, p2, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 220
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    .line 125
    iput v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mMaxLine:I

    .line 201
    new-instance v1, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    invoke-direct {v1, p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;-><init>(Lcom/yftech/car/widget/media/flexbox/FlexContainer;)V

    iput-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    .line 203
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 209
    new-instance v1, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;

    invoke-direct {v1}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;-><init>()V

    iput-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexLinesResult:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;

    .line 222
    sget-object v1, Lcom/yftech/car/widget/media/R$styleable;->FlexboxLayout:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 224
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->FlexboxLayout_flexDirection:I

    .line 225
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexDirection:I

    .line 226
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->FlexboxLayout_flexWrap:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexWrap:I

    .line 227
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->FlexboxLayout_justifyContent:I

    .line 228
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mJustifyContent:I

    .line 229
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->FlexboxLayout_alignItems:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mAlignItems:I

    .line 230
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->FlexboxLayout_alignContent:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mAlignContent:I

    .line 231
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->FlexboxLayout_maxLine:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mMaxLine:I

    .line 232
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->FlexboxLayout_dividerDrawable:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 234
    invoke-virtual {p0, p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V

    .line 235
    invoke-virtual {p0, p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V

    .line 237
    :cond_0
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->FlexboxLayout_dividerDrawableHorizontal:I

    .line 238
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 240
    invoke-virtual {p0, p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V

    .line 242
    :cond_1
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->FlexboxLayout_dividerDrawableVertical:I

    .line 243
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 245
    invoke-virtual {p0, p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V

    .line 247
    :cond_2
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->FlexboxLayout_showDivider:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eqz p2, :cond_3

    .line 249
    iput p2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mShowDividerVertical:I

    .line 250
    iput p2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    .line 252
    :cond_3
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->FlexboxLayout_showDividerVertical:I

    .line 253
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eqz p2, :cond_4

    .line 255
    iput p2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mShowDividerVertical:I

    .line 257
    :cond_4
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->FlexboxLayout_showDividerHorizontal:I

    .line 258
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eqz p2, :cond_5

    .line 260
    iput p2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    .line 262
    :cond_5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private allFlexLinesAreDummyBefore(I)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 1536
    iget-object v2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/flexbox/FlexLine;

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/flexbox/FlexLine;->getItemCountNotGone()I

    move-result v2

    if-lez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private allViewsAreGoneBefore(II)Z
    .locals 4

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-gt v1, p2, :cond_1

    sub-int v2, p1, v1

    .line 1501
    invoke-virtual {p0, v2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1502
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private drawDividersHorizontal(Landroid/graphics/Canvas;ZZ)V
    .locals 12

    .line 963
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->getPaddingLeft()I

    move-result v0

    .line 964
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->getPaddingRight()I

    move-result v1

    .line 965
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    sub-int/2addr v2, v0

    const/4 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 966
    iget-object v3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_a

    .line 967
    iget-object v5, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yftech/car/widget/media/flexbox/FlexLine;

    move v6, v1

    .line 968
    :goto_1
    iget v7, v5, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mItemCount:I

    if-ge v6, v7, :cond_5

    .line 969
    iget v7, v5, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mFirstIndex:I

    add-int/2addr v7, v6

    .line 970
    invoke-virtual {p0, v7}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 971
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    goto :goto_4

    .line 974
    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;

    .line 977
    invoke-direct {p0, v7, v6}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz p2, :cond_1

    .line 980
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v7

    iget v10, v9, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->rightMargin:I

    add-int/2addr v7, v10

    goto :goto_2

    .line 982
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v7

    iget v10, v9, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v7, v10

    iget v10, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    sub-int/2addr v7, v10

    .line 985
    :goto_2
    iget v10, v5, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mTop:I

    iget v11, v5, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mCrossSize:I

    invoke-direct {p0, p1, v7, v10, v11}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->drawVerticalDivider(Landroid/graphics/Canvas;III)V

    .line 989
    :cond_2
    iget v7, v5, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_4

    .line 990
    iget v7, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mShowDividerVertical:I

    and-int/lit8 v7, v7, 0x4

    if-lez v7, :cond_4

    if-eqz p2, :cond_3

    .line 993
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v7

    iget v8, v9, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    sub-int/2addr v7, v8

    goto :goto_3

    .line 995
    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v7

    iget v8, v9, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->rightMargin:I

    add-int/2addr v7, v8

    .line 998
    :goto_3
    iget v8, v5, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mTop:I

    iget v9, v5, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mCrossSize:I

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->drawVerticalDivider(Landroid/graphics/Canvas;III)V

    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1005
    :cond_5
    invoke-direct {p0, v4}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->hasDividerBeforeFlexLine(I)Z

    move-result v6

    if-eqz v6, :cond_7

    if-eqz p3, :cond_6

    .line 1008
    iget v6, v5, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mBottom:I

    goto :goto_5

    .line 1010
    :cond_6
    iget v6, v5, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mTop:I

    iget v7, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    sub-int/2addr v6, v7

    .line 1012
    :goto_5
    invoke-direct {p0, p1, v0, v6, v2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;III)V

    .line 1016
    :cond_7
    invoke-direct {p0, v4}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->hasEndDividerAfterFlexLine(I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1017
    iget v6, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    and-int/lit8 v6, v6, 0x4

    if-lez v6, :cond_9

    if-eqz p3, :cond_8

    .line 1020
    iget v5, v5, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mTop:I

    iget v6, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    sub-int/2addr v5, v6

    goto :goto_6

    .line 1022
    :cond_8
    iget v5, v5, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mBottom:I

    .line 1024
    :goto_6
    invoke-direct {p0, p1, v0, v5, v2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;III)V

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private drawDividersVertical(Landroid/graphics/Canvas;ZZ)V
    .locals 12

    .line 1043
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->getPaddingTop()I

    move-result v0

    .line 1044
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->getPaddingBottom()I

    move-result v1

    .line 1045
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    sub-int/2addr v2, v0

    const/4 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1046
    iget-object v3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_a

    .line 1047
    iget-object v5, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yftech/car/widget/media/flexbox/FlexLine;

    move v6, v1

    .line 1050
    :goto_1
    iget v7, v5, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mItemCount:I

    if-ge v6, v7, :cond_5

    .line 1051
    iget v7, v5, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mFirstIndex:I

    add-int/2addr v7, v6

    .line 1052
    invoke-virtual {p0, v7}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 1053
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    goto :goto_4

    .line 1056
    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;

    .line 1059
    invoke-direct {p0, v7, v6}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz p3, :cond_1

    .line 1062
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v7

    iget v10, v9, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v10

    goto :goto_2

    .line 1064
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v7

    iget v10, v9, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->topMargin:I

    sub-int/2addr v7, v10

    iget v10, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    sub-int/2addr v7, v10

    .line 1067
    :goto_2
    iget v10, v5, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mLeft:I

    iget v11, v5, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mCrossSize:I

    invoke-direct {p0, p1, v10, v7, v11}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;III)V

    .line 1071
    :cond_2
    iget v7, v5, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_4

    .line 1072
    iget v7, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    and-int/lit8 v7, v7, 0x4

    if-lez v7, :cond_4

    if-eqz p3, :cond_3

    .line 1075
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v7

    iget v8, v9, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->topMargin:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    sub-int/2addr v7, v8

    goto :goto_3

    .line 1077
    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v7

    iget v8, v9, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    .line 1080
    :goto_3
    iget v8, v5, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mLeft:I

    iget v9, v5, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mCrossSize:I

    invoke-direct {p0, p1, v8, v7, v9}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;III)V

    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1087
    :cond_5
    invoke-direct {p0, v4}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->hasDividerBeforeFlexLine(I)Z

    move-result v6

    if-eqz v6, :cond_7

    if-eqz p2, :cond_6

    .line 1090
    iget v6, v5, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mRight:I

    goto :goto_5

    .line 1092
    :cond_6
    iget v6, v5, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mLeft:I

    iget v7, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    sub-int/2addr v6, v7

    .line 1094
    :goto_5
    invoke-direct {p0, p1, v6, v0, v2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->drawVerticalDivider(Landroid/graphics/Canvas;III)V

    .line 1097
    :cond_7
    invoke-direct {p0, v4}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->hasEndDividerAfterFlexLine(I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1098
    iget v6, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mShowDividerVertical:I

    and-int/lit8 v6, v6, 0x4

    if-lez v6, :cond_9

    if-eqz p2, :cond_8

    .line 1101
    iget v5, v5, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mLeft:I

    iget v6, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    sub-int/2addr v5, v6

    goto :goto_6

    .line 1103
    :cond_8
    iget v5, v5, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mRight:I

    .line 1105
    :goto_6
    invoke-direct {p0, p1, v5, v0, v2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->drawVerticalDivider(Landroid/graphics/Canvas;III)V

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private drawHorizontalDivider(Landroid/graphics/Canvas;III)V
    .locals 2

    .line 1121
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 1124
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    add-int/2addr p4, p2

    iget v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    add-int/2addr v1, p3

    .line 1125
    invoke-virtual {v0, p2, p3, p4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1126
    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawVerticalDivider(Landroid/graphics/Canvas;III)V
    .locals 2

    .line 1113
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 1116
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    add-int/2addr v1, p2

    add-int/2addr p4, p3

    invoke-virtual {v0, p2, p3, v1, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1117
    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private hasDividerBeforeChildAtAlongMainAxis(II)Z
    .locals 1

    .line 1484
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->allViewsAreGoneBefore(II)Z

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 1485
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1486
    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mShowDividerVertical:I

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    move p2, v0

    :cond_0
    return p2

    .line 1488
    :cond_1
    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    and-int/2addr p0, v0

    if-eqz p0, :cond_2

    move p2, v0

    :cond_2
    return p2

    .line 1491
    :cond_3
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1492
    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mShowDividerVertical:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_4

    move p2, v0

    :cond_4
    return p2

    .line 1494
    :cond_5
    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_6

    move p2, v0

    :cond_6
    return p2
.end method

.method private hasDividerBeforeFlexLine(I)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_8

    .line 1516
    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 1519
    :cond_0
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->allFlexLinesAreDummyBefore(I)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    .line 1520
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1521
    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    and-int/2addr p0, v1

    if-eqz p0, :cond_1

    move v0, v1

    :cond_1
    return v0

    .line 1523
    :cond_2
    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mShowDividerVertical:I

    and-int/2addr p0, v1

    if-eqz p0, :cond_3

    move v0, v1

    :cond_3
    return v0

    .line 1526
    :cond_4
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1527
    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_5

    move v0, v1

    :cond_5
    return v0

    .line 1529
    :cond_6
    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mShowDividerVertical:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_7

    move v0, v1

    :cond_7
    return v0

    :cond_8
    :goto_0
    return v0
.end method

.method private hasEndDividerAfterFlexLine(I)Z
    .locals 3

    const/4 v0, 0x0

    if-ltz p1, :cond_6

    .line 1550
    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    add-int/2addr p1, v1

    .line 1554
    :goto_0
    iget-object v2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 1555
    iget-object v2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/flexbox/FlexLine;

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/flexbox/FlexLine;->getItemCountNotGone()I

    move-result v2

    if-lez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1559
    :cond_2
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1560
    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_3

    move v0, v1

    :cond_3
    return v0

    .line 1562
    :cond_4
    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mShowDividerVertical:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_5

    move v0, v1

    :cond_5
    return v0

    :cond_6
    :goto_1
    return v0
.end method

.method private layoutHorizontal(ZIIII)V
    .locals 27

    move-object/from16 v0, p0

    .line 618
    invoke-virtual/range {p0 .. p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->getPaddingLeft()I

    move-result v2

    .line 619
    invoke-virtual/range {p0 .. p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->getPaddingRight()I

    move-result v3

    sub-int v4, p5, p3

    sub-int v5, p4, p2

    .line 628
    invoke-virtual/range {p0 .. p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v4, v6

    .line 629
    invoke-virtual/range {p0 .. p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->getPaddingTop()I

    move-result v6

    .line 635
    iget-object v7, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move v9, v6

    move v6, v4

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v7, :cond_d

    .line 636
    iget-object v10, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/yftech/car/widget/media/flexbox/FlexLine;

    .line 637
    invoke-direct {v0, v4}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->hasDividerBeforeFlexLine(I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 638
    iget v11, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    sub-int/2addr v6, v11

    .line 639
    iget v11, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    add-int/2addr v9, v11

    .line 642
    :cond_0
    iget v11, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mJustifyContent:I

    const/4 v12, 0x0

    const/high16 v13, 0x40000000    # 2.0f

    const/4 v15, 0x1

    packed-switch v11, :pswitch_data_0

    .line 684
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid justifyContent is set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mJustifyContent:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 674
    :pswitch_0
    invoke-virtual {v10}, Lcom/yftech/car/widget/media/flexbox/FlexLine;->getItemCountNotGone()I

    move-result v11

    if-eqz v11, :cond_1

    .line 676
    iget v13, v10, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mMainSize:I

    sub-int v13, v5, v13

    int-to-float v13, v13

    add-int/lit8 v11, v11, 0x1

    int-to-float v11, v11

    div-float v11, v13, v11

    goto :goto_1

    :cond_1
    move v11, v12

    :goto_1
    int-to-float v13, v2

    add-float/2addr v13, v11

    sub-int v14, v5, v3

    int-to-float v14, v14

    sub-float/2addr v14, v11

    goto :goto_5

    .line 656
    :pswitch_1
    invoke-virtual {v10}, Lcom/yftech/car/widget/media/flexbox/FlexLine;->getItemCountNotGone()I

    move-result v11

    if-eqz v11, :cond_2

    .line 658
    iget v14, v10, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mMainSize:I

    sub-int v14, v5, v14

    int-to-float v14, v14

    int-to-float v11, v11

    div-float v11, v14, v11

    goto :goto_2

    :cond_2
    move v11, v12

    :goto_2
    int-to-float v14, v2

    div-float v13, v11, v13

    add-float/2addr v14, v13

    sub-int v8, v5, v3

    int-to-float v8, v8

    sub-float/2addr v8, v13

    move v13, v14

    move v14, v8

    goto :goto_5

    :pswitch_2
    int-to-float v13, v2

    .line 667
    invoke-virtual {v10}, Lcom/yftech/car/widget/media/flexbox/FlexLine;->getItemCountNotGone()I

    move-result v8

    if-eq v8, v15, :cond_3

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    goto :goto_3

    :cond_3
    const/high16 v8, 0x3f800000    # 1.0f

    .line 669
    :goto_3
    iget v11, v10, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mMainSize:I

    sub-int v11, v5, v11

    int-to-float v11, v11

    div-float v8, v11, v8

    sub-int v11, v5, v3

    int-to-float v14, v11

    move v11, v8

    goto :goto_5

    :pswitch_3
    int-to-float v8, v2

    .line 652
    iget v11, v10, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mMainSize:I

    sub-int v11, v5, v11

    int-to-float v11, v11

    div-float/2addr v11, v13

    add-float/2addr v8, v11

    sub-int v11, v5, v3

    int-to-float v11, v11

    .line 653
    iget v14, v10, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mMainSize:I

    sub-int v14, v5, v14

    int-to-float v14, v14

    div-float/2addr v14, v13

    sub-float v14, v11, v14

    move v13, v8

    goto :goto_4

    .line 648
    :pswitch_4
    iget v8, v10, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mMainSize:I

    sub-int v8, v5, v8

    add-int/2addr v8, v3

    int-to-float v13, v8

    .line 649
    iget v8, v10, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mMainSize:I

    sub-int/2addr v8, v2

    int-to-float v14, v8

    goto :goto_4

    :pswitch_5
    int-to-float v13, v2

    sub-int v8, v5, v3

    int-to-float v14, v8

    :goto_4
    move v11, v12

    .line 687
    :goto_5
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v8

    move v11, v14

    const/4 v14, 0x0

    .line 689
    :goto_6
    iget v12, v10, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mItemCount:I

    if-ge v14, v12, :cond_c

    .line 690
    iget v12, v10, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mFirstIndex:I

    add-int/2addr v12, v14

    .line 691
    invoke-virtual {v0, v12}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    move-result-object v18

    if-eqz v18, :cond_b

    .line 692
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v15

    move/from16 v20, v2

    const/16 v2, 0x8

    if-ne v15, v2, :cond_4

    move/from16 v25, v14

    const/16 v26, 0x1

    goto/16 :goto_b

    .line 695
    :cond_4
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;

    .line 696
    iget v15, v2, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->leftMargin:I

    int-to-float v15, v15

    add-float/2addr v13, v15

    .line 697
    iget v15, v2, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->rightMargin:I

    int-to-float v15, v15

    sub-float/2addr v11, v15

    .line 700
    invoke-direct {v0, v12, v14}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 701
    iget v12, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    int-to-float v15, v12

    add-float/2addr v13, v15

    sub-float/2addr v11, v15

    move/from16 v21, v11

    move/from16 v23, v12

    move/from16 v22, v13

    goto :goto_7

    :cond_5
    move/from16 v21, v11

    move/from16 v22, v13

    const/16 v23, 0x0

    .line 705
    :goto_7
    iget v11, v10, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mItemCount:I

    const/4 v15, 0x1

    sub-int/2addr v11, v15

    if-ne v14, v11, :cond_6

    iget v11, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mShowDividerVertical:I

    and-int/lit8 v11, v11, 0x4

    if-lez v11, :cond_6

    .line 706
    iget v11, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    move/from16 v19, v11

    goto :goto_8

    :cond_6
    const/16 v19, 0x0

    .line 709
    :goto_8
    iget v11, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexWrap:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_8

    if-eqz p1, :cond_7

    .line 711
    iget-object v11, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    .line 712
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    sub-int v16, v12, v13

    .line 713
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int v17, v6, v12

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v24

    move-object/from16 v12, v18

    move-object v13, v10

    move/from16 v25, v14

    move/from16 v14, v16

    move/from16 v26, v15

    move/from16 v15, v17

    move/from16 v16, v24

    move/from16 v17, v6

    .line 711
    invoke-virtual/range {v11 .. v17}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->layoutSingleChildHorizontal(Landroid/view/View;Lcom/yftech/car/widget/media/flexbox/FlexLine;IIII)V

    goto :goto_9

    :cond_7
    move/from16 v25, v14

    move/from16 v26, v15

    .line 716
    iget-object v11, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    .line 717
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v14

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int v15, v6, v12

    .line 718
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int v16, v12, v13

    move-object/from16 v12, v18

    move-object v13, v10

    move/from16 v17, v6

    .line 716
    invoke-virtual/range {v11 .. v17}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->layoutSingleChildHorizontal(Landroid/view/View;Lcom/yftech/car/widget/media/flexbox/FlexLine;IIII)V

    goto :goto_9

    :cond_8
    move/from16 v25, v14

    move/from16 v26, v15

    if-eqz p1, :cond_9

    .line 722
    iget-object v11, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    .line 723
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    sub-int v14, v12, v13

    .line 724
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v16

    .line 725
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int v17, v9, v12

    move-object/from16 v12, v18

    move-object v13, v10

    move v15, v9

    .line 722
    invoke-virtual/range {v11 .. v17}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->layoutSingleChildHorizontal(Landroid/view/View;Lcom/yftech/car/widget/media/flexbox/FlexLine;IIII)V

    goto :goto_9

    .line 727
    :cond_9
    iget-object v11, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    .line 728
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 729
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int v16, v12, v13

    .line 730
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int v17, v9, v12

    move-object/from16 v12, v18

    move-object v13, v10

    move v15, v9

    .line 727
    invoke-virtual/range {v11 .. v17}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->layoutSingleChildHorizontal(Landroid/view/View;Lcom/yftech/car/widget/media/flexbox/FlexLine;IIII)V

    .line 733
    :goto_9
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v11, v8

    iget v12, v2, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->rightMargin:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    add-float v22, v22, v11

    .line 734
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v11, v8

    iget v2, v2, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->leftMargin:I

    int-to-float v2, v2

    add-float/2addr v11, v2

    sub-float v21, v21, v11

    if-eqz p1, :cond_a

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v11, v10

    move-object/from16 v12, v18

    move/from16 v13, v19

    move/from16 v15, v23

    .line 737
    invoke-virtual/range {v11 .. v16}, Lcom/yftech/car/widget/media/flexbox/FlexLine;->updatePositionFromView(Landroid/view/View;IIII)V

    goto :goto_a

    :cond_a
    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v11, v10

    move-object/from16 v12, v18

    move/from16 v13, v23

    move/from16 v15, v19

    .line 740
    invoke-virtual/range {v11 .. v16}, Lcom/yftech/car/widget/media/flexbox/FlexLine;->updatePositionFromView(Landroid/view/View;IIII)V

    :goto_a
    move/from16 v11, v21

    move/from16 v13, v22

    goto :goto_b

    :cond_b
    move/from16 v20, v2

    move/from16 v25, v14

    move/from16 v26, v15

    :goto_b
    add-int/lit8 v14, v25, 0x1

    move/from16 v2, v20

    move/from16 v15, v26

    goto/16 :goto_6

    :cond_c
    move/from16 v20, v2

    .line 744
    iget v2, v10, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mCrossSize:I

    add-int/2addr v9, v2

    .line 745
    iget v2, v10, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mCrossSize:I

    sub-int/2addr v6, v2

    add-int/lit8 v4, v4, 0x1

    move/from16 v2, v20

    goto/16 :goto_0

    :cond_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private layoutVertical(ZZIIII)V
    .locals 28

    move-object/from16 v0, p0

    .line 773
    invoke-virtual/range {p0 .. p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->getPaddingTop()I

    move-result v2

    .line 774
    invoke-virtual/range {p0 .. p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->getPaddingBottom()I

    move-result v3

    .line 776
    invoke-virtual/range {p0 .. p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->getPaddingRight()I

    move-result v4

    .line 777
    invoke-virtual/range {p0 .. p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->getPaddingLeft()I

    move-result v5

    sub-int v6, p5, p3

    sub-int v7, p6, p4

    sub-int/2addr v6, v4

    .line 792
    iget-object v4, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v9, v6

    move v6, v5

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_d

    .line 793
    iget-object v10, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/yftech/car/widget/media/flexbox/FlexLine;

    .line 794
    invoke-direct {v0, v5}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->hasDividerBeforeFlexLine(I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 795
    iget v11, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    add-int/2addr v6, v11

    .line 796
    iget v11, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    sub-int/2addr v9, v11

    .line 799
    :cond_0
    iget v11, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mJustifyContent:I

    const/4 v12, 0x0

    const/high16 v13, 0x40000000    # 2.0f

    const/4 v15, 0x1

    packed-switch v11, :pswitch_data_0

    .line 841
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid justifyContent is set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mJustifyContent:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 831
    :pswitch_0
    invoke-virtual {v10}, Lcom/yftech/car/widget/media/flexbox/FlexLine;->getItemCountNotGone()I

    move-result v11

    if-eqz v11, :cond_1

    .line 833
    iget v13, v10, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mMainSize:I

    sub-int v13, v7, v13

    int-to-float v13, v13

    add-int/lit8 v11, v11, 0x1

    int-to-float v11, v11

    div-float v11, v13, v11

    goto :goto_1

    :cond_1
    move v11, v12

    :goto_1
    int-to-float v13, v2

    add-float/2addr v13, v11

    sub-int v14, v7, v3

    int-to-float v14, v14

    sub-float/2addr v14, v11

    goto :goto_5

    .line 813
    :pswitch_1
    invoke-virtual {v10}, Lcom/yftech/car/widget/media/flexbox/FlexLine;->getItemCountNotGone()I

    move-result v11

    if-eqz v11, :cond_2

    .line 815
    iget v14, v10, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mMainSize:I

    sub-int v14, v7, v14

    int-to-float v14, v14

    int-to-float v11, v11

    div-float v11, v14, v11

    goto :goto_2

    :cond_2
    move v11, v12

    :goto_2
    int-to-float v14, v2

    div-float v13, v11, v13

    add-float/2addr v14, v13

    sub-int v8, v7, v3

    int-to-float v8, v8

    sub-float/2addr v8, v13

    move v13, v14

    move v14, v8

    goto :goto_5

    :pswitch_2
    int-to-float v13, v2

    .line 824
    invoke-virtual {v10}, Lcom/yftech/car/widget/media/flexbox/FlexLine;->getItemCountNotGone()I

    move-result v8

    if-eq v8, v15, :cond_3

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    goto :goto_3

    :cond_3
    const/high16 v8, 0x3f800000    # 1.0f

    .line 826
    :goto_3
    iget v11, v10, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mMainSize:I

    sub-int v11, v7, v11

    int-to-float v11, v11

    div-float v8, v11, v8

    sub-int v11, v7, v3

    int-to-float v14, v11

    move v11, v8

    goto :goto_5

    :pswitch_3
    int-to-float v8, v2

    .line 809
    iget v11, v10, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mMainSize:I

    sub-int v11, v7, v11

    int-to-float v11, v11

    div-float/2addr v11, v13

    add-float/2addr v8, v11

    sub-int v11, v7, v3

    int-to-float v11, v11

    .line 810
    iget v14, v10, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mMainSize:I

    sub-int v14, v7, v14

    int-to-float v14, v14

    div-float/2addr v14, v13

    sub-float v14, v11, v14

    move v13, v8

    goto :goto_4

    .line 805
    :pswitch_4
    iget v8, v10, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mMainSize:I

    sub-int v8, v7, v8

    add-int/2addr v8, v3

    int-to-float v13, v8

    .line 806
    iget v8, v10, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mMainSize:I

    sub-int/2addr v8, v2

    int-to-float v14, v8

    goto :goto_4

    :pswitch_5
    int-to-float v13, v2

    sub-int v8, v7, v3

    int-to-float v14, v8

    :goto_4
    move v11, v12

    .line 844
    :goto_5
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v8

    move v11, v14

    const/4 v14, 0x0

    .line 846
    :goto_6
    iget v12, v10, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mItemCount:I

    if-ge v14, v12, :cond_c

    .line 847
    iget v12, v10, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mFirstIndex:I

    add-int/2addr v12, v14

    .line 848
    invoke-virtual {v0, v12}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    move-result-object v19

    if-eqz v19, :cond_b

    .line 849
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getVisibility()I

    move-result v15

    move/from16 v20, v2

    const/16 v2, 0x8

    if-ne v15, v2, :cond_4

    move/from16 v26, v14

    const/16 v27, 0x1

    goto/16 :goto_b

    .line 852
    :cond_4
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;

    .line 853
    iget v15, v2, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->topMargin:I

    int-to-float v15, v15

    add-float/2addr v13, v15

    .line 854
    iget v15, v2, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->bottomMargin:I

    int-to-float v15, v15

    sub-float/2addr v11, v15

    .line 857
    invoke-direct {v0, v12, v14}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 858
    iget v12, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    int-to-float v15, v12

    add-float/2addr v13, v15

    sub-float/2addr v11, v15

    move/from16 v21, v11

    move/from16 v23, v12

    move/from16 v22, v13

    goto :goto_7

    :cond_5
    move/from16 v21, v11

    move/from16 v22, v13

    const/16 v23, 0x0

    .line 862
    :goto_7
    iget v11, v10, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mItemCount:I

    const/4 v15, 0x1

    sub-int/2addr v11, v15

    if-ne v14, v11, :cond_6

    iget v11, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    and-int/lit8 v11, v11, 0x4

    if-lez v11, :cond_6

    .line 864
    iget v11, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    move/from16 v24, v11

    goto :goto_8

    :cond_6
    const/16 v24, 0x0

    :goto_8
    if-eqz p1, :cond_8

    if-eqz p2, :cond_7

    .line 868
    iget-object v11, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    const/16 v16, 0x1

    .line 869
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    sub-int v17, v9, v12

    .line 870
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    sub-int v18, v12, v13

    .line 871
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v25

    move-object/from16 v12, v19

    move-object v13, v10

    move/from16 v26, v14

    move/from16 v14, v16

    move/from16 v27, v15

    move/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v9

    move/from16 v18, v25

    .line 868
    invoke-virtual/range {v11 .. v18}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->layoutSingleChildVertical(Landroid/view/View;Lcom/yftech/car/widget/media/flexbox/FlexLine;ZIIII)V

    goto/16 :goto_9

    :cond_7
    move/from16 v26, v14

    move/from16 v27, v15

    .line 873
    iget-object v11, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    const/4 v14, 0x1

    .line 874
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    sub-int v15, v9, v12

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v16

    .line 875
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int v18, v12, v13

    move-object/from16 v12, v19

    move-object v13, v10

    move/from16 v17, v9

    .line 873
    invoke-virtual/range {v11 .. v18}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->layoutSingleChildVertical(Landroid/view/View;Lcom/yftech/car/widget/media/flexbox/FlexLine;ZIIII)V

    goto :goto_9

    :cond_8
    move/from16 v26, v14

    move/from16 v27, v15

    if-eqz p2, :cond_9

    .line 879
    iget-object v11, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    const/4 v14, 0x0

    .line 880
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    sub-int v16, v12, v13

    .line 881
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int v17, v6, v12

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v18

    move-object/from16 v12, v19

    move-object v13, v10

    move v15, v6

    .line 879
    invoke-virtual/range {v11 .. v18}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->layoutSingleChildVertical(Landroid/view/View;Lcom/yftech/car/widget/media/flexbox/FlexLine;ZIIII)V

    goto :goto_9

    .line 883
    :cond_9
    iget-object v11, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    const/4 v14, 0x0

    .line 884
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v16

    .line 885
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int v17, v6, v12

    .line 886
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int v18, v12, v13

    move-object/from16 v12, v19

    move-object v13, v10

    move v15, v6

    .line 883
    invoke-virtual/range {v11 .. v18}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->layoutSingleChildVertical(Landroid/view/View;Lcom/yftech/car/widget/media/flexbox/FlexLine;ZIIII)V

    .line 889
    :goto_9
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v11, v8

    iget v12, v2, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->bottomMargin:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    add-float v22, v22, v11

    .line 890
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v11, v8

    iget v2, v2, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->topMargin:I

    int-to-float v2, v2

    add-float/2addr v11, v2

    sub-float v21, v21, v11

    if-eqz p2, :cond_a

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object v11, v10

    move-object/from16 v12, v19

    move/from16 v14, v24

    move/from16 v16, v23

    .line 893
    invoke-virtual/range {v11 .. v16}, Lcom/yftech/car/widget/media/flexbox/FlexLine;->updatePositionFromView(Landroid/view/View;IIII)V

    goto :goto_a

    :cond_a
    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object v11, v10

    move-object/from16 v12, v19

    move/from16 v14, v23

    move/from16 v16, v24

    .line 896
    invoke-virtual/range {v11 .. v16}, Lcom/yftech/car/widget/media/flexbox/FlexLine;->updatePositionFromView(Landroid/view/View;IIII)V

    :goto_a
    move/from16 v11, v21

    move/from16 v13, v22

    goto :goto_b

    :cond_b
    move/from16 v20, v2

    move/from16 v26, v14

    move/from16 v27, v15

    :goto_b
    add-int/lit8 v14, v26, 0x1

    move/from16 v2, v20

    move/from16 v15, v27

    goto/16 :goto_6

    :cond_c
    move/from16 v20, v2

    .line 900
    iget v2, v10, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mCrossSize:I

    add-int/2addr v6, v2

    .line 901
    iget v2, v10, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mCrossSize:I

    sub-int/2addr v9, v2

    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v20

    goto/16 :goto_0

    :cond_d
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private measureHorizontal(II)V
    .locals 8

    .line 349
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 351
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexLinesResult:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;->reset()V

    .line 352
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexLinesResult:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;

    .line 353
    invoke-virtual {v0, v1, p1, p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->calculateHorizontalFlexLines(Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;II)V

    .line 355
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexLinesResult:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;

    iget-object v0, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;->mFlexLines:Ljava/util/List;

    iput-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 357
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    invoke-virtual {v0, p1, p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->determineMainSize(II)V

    .line 360
    iget v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mAlignItems:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 361
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/flexbox/FlexLine;

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    .line 364
    :goto_1
    iget v4, v1, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mItemCount:I

    if-ge v3, v4, :cond_3

    .line 365
    iget v4, v1, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mFirstIndex:I

    add-int/2addr v4, v3

    .line 366
    invoke-virtual {p0, v4}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 367
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    goto :goto_2

    .line 370
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;

    .line 371
    iget v6, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexWrap:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    .line 372
    iget v6, v1, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mMaxBaseline:I

    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v7

    sub-int/2addr v6, v7

    .line 373
    iget v7, v5, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->topMargin:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 375
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v6

    iget v5, v5, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    .line 374
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_2

    .line 377
    :cond_1
    iget v6, v1, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mMaxBaseline:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v6, v7

    .line 378
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v7

    add-int/2addr v6, v7

    .line 379
    iget v7, v5, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->bottomMargin:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 381
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, v5, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    add-int/2addr v4, v6

    .line 380
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 384
    :cond_3
    iput v2, v1, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mCrossSize:I

    goto :goto_0

    .line 388
    :cond_4
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    .line 389
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 388
    invoke-virtual {v0, p1, p2, v1}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->determineCrossSize(III)V

    .line 392
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->stretchViews()V

    .line 393
    iget v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexDirection:I

    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexLinesResult:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;

    iget v1, v1, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;->mChildState:I

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->setMeasuredDimensionForFlex(IIII)V

    return-void
.end method

.method private measureVertical(II)V
    .locals 3

    .line 410
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 411
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexLinesResult:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;->reset()V

    .line 412
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexLinesResult:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;

    invoke-virtual {v0, v1, p1, p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->calculateVerticalFlexLines(Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;II)V

    .line 414
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexLinesResult:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;

    iget-object v0, v0, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;->mFlexLines:Ljava/util/List;

    iput-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 416
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    invoke-virtual {v0, p1, p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->determineMainSize(II)V

    .line 417
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    .line 418
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    .line 417
    invoke-virtual {v0, p1, p2, v1}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->determineCrossSize(III)V

    .line 421
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->stretchViews()V

    .line 422
    iget v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexDirection:I

    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexLinesResult:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;

    iget v1, v1, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper$FlexLinesResult;->mChildState:I

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->setMeasuredDimensionForFlex(IIII)V

    return-void
.end method

.method private setMeasuredDimensionForFlex(IIII)V
    .locals 8

    .line 439
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 440
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 441
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 442
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    packed-switch p1, :pswitch_data_0

    .line 458
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid flex direction: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 454
    :pswitch_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->getLargestMainSize()I

    move-result p1

    .line 455
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->getSumOfCrossSize()I

    move-result v4

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_0

    .line 448
    :pswitch_1
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->getSumOfCrossSize()I

    move-result p1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->getPaddingTop()I

    move-result v4

    add-int/2addr p1, v4

    .line 449
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr p1, v4

    .line 450
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->getLargestMainSize()I

    move-result v4

    :goto_0
    const/high16 v5, 0x1000000

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, -0x80000000

    if-eq v0, v7, :cond_3

    if-eqz v0, :cond_2

    if-ne v0, v6, :cond_1

    if-ge v1, v4, :cond_0

    .line 466
    invoke-static {p4, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result p4

    .line 468
    :cond_0
    invoke-static {v1, p2, p4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    goto :goto_2

    .line 488
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown width mode is set: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 484
    :cond_2
    invoke-static {v4, p2, p4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    goto :goto_2

    :cond_3
    if-ge v1, v4, :cond_4

    .line 474
    invoke-static {p4, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result p4

    goto :goto_1

    :cond_4
    move v1, v4

    .line 478
    :goto_1
    invoke-static {v1, p2, p4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    :goto_2
    const/16 v0, 0x100

    if-eq v2, v7, :cond_8

    if-eqz v2, :cond_7

    if-ne v2, v6, :cond_6

    if-ge v3, p1, :cond_5

    .line 494
    invoke-static {p4, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result p4

    .line 498
    :cond_5
    invoke-static {v3, p3, p4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    goto :goto_3

    .line 519
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown height mode is set: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 514
    :cond_7
    invoke-static {p1, p3, p4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    goto :goto_3

    :cond_8
    if-ge v3, p1, :cond_9

    .line 503
    invoke-static {p4, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result p4

    move p1, v3

    .line 509
    :cond_9
    invoke-static {p1, p3, p4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    .line 521
    :goto_3
    invoke-virtual {p0, p2, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->setMeasuredDimension(II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setWillNotDrawFlag()V
    .locals 1

    .line 1468
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1469
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->setWillNotDraw(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1471
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->setWillNotDraw(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mOrderCache:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 325
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->getChildCount()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mOrderCache:Landroid/util/SparseIntArray;

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mOrderCache:Landroid/util/SparseIntArray;

    .line 332
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->createReorderedIndices(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Landroid/util/SparseIntArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mReorderedIndices:[I

    .line 333
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1131
    instance-of p0, p1, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;

    return p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 81
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1141
    instance-of p0, p1, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;

    if-eqz p0, :cond_0

    .line 1142
    new-instance p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;

    check-cast p1, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;

    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;-><init>(Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;)V

    return-object p0

    .line 1143
    :cond_0
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_1

    .line 1144
    new-instance p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object p0

    .line 1146
    :cond_1
    new-instance p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;

    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;
    .locals 1

    .line 1136
    new-instance v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getAlignContent()I
    .locals 0

    .line 1208
    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mAlignContent:I

    return p0
.end method

.method public getAlignItems()I
    .locals 0

    .line 1194
    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mAlignItems:I

    return p0
.end method

.method public getChildHeightMeasureSpec(III)I
    .locals 0

    .line 1302
    invoke-static {p1, p2, p3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->getChildMeasureSpec(III)I

    move-result p0

    return p0
.end method

.method public getChildWidthMeasureSpec(III)I
    .locals 0

    .line 1297
    invoke-static {p1, p2, p3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->getChildMeasureSpec(III)I

    move-result p0

    return p0
.end method

.method public getDecorationLengthCrossAxis(Landroid/view/View;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDecorationLengthMainAxis(Landroid/view/View;II)I
    .locals 1

    .line 1253
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1254
    invoke-direct {p0, p2, p3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1255
    iget p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    add-int/2addr v0, p1

    .line 1257
    :cond_0
    iget p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mShowDividerVertical:I

    and-int/lit8 p1, p1, 0x4

    if-lez p1, :cond_3

    .line 1258
    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    add-int/2addr v0, p0

    goto :goto_0

    .line 1261
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1262
    iget p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    add-int/2addr v0, p1

    .line 1264
    :cond_2
    iget p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    and-int/lit8 p1, p1, 0x4

    if-lez p1, :cond_3

    .line 1265
    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    add-int/2addr v0, p0

    :cond_3
    :goto_0
    return v0
.end method

.method public getDividerDrawableHorizontal()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1342
    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getDividerDrawableVertical()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1353
    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getFlexDirection()I
    .locals 0

    .line 1152
    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexDirection:I

    return p0
.end method

.method public getFlexItemAt(I)Landroid/view/View;
    .locals 0

    .line 298
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getFlexItemCount()I
    .locals 0

    .line 293
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->getChildCount()I

    move-result p0

    return p0
.end method

.method public getFlexLines()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/flexbox/FlexLine;",
            ">;"
        }
    .end annotation

    .line 1240
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1241
    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/flexbox/FlexLine;

    .line 1242
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/flexbox/FlexLine;->getItemCountNotGone()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1245
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getFlexLinesInternal()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/flexbox/FlexLine;",
            ">;"
        }
    .end annotation

    .line 1326
    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    return-object p0
.end method

.method public getFlexWrap()I
    .locals 0

    .line 1166
    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexWrap:I

    return p0
.end method

.method public getJustifyContent()I
    .locals 0

    .line 1180
    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mJustifyContent:I

    return p0
.end method

.method public getLargestMainSize()I
    .locals 2

    .line 527
    iget-object p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/high16 v0, -0x80000000

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/flexbox/FlexLine;

    .line 528
    iget v1, v1, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mMainSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getMaxLine()I
    .locals 0

    .line 1221
    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mMaxLine:I

    return p0
.end method

.method public getReorderedChildAt(I)Landroid/view/View;
    .locals 1

    if-ltz p1, :cond_1

    .line 311
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mReorderedIndices:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mReorderedIndices:[I

    aget p1, v0, p1

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getReorderedFlexItemAt(I)Landroid/view/View;
    .locals 0

    .line 319
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getShowDividerHorizontal()I
    .locals 0

    .line 1419
    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    return p0
.end method

.method public getShowDividerVertical()I
    .locals 0

    .line 1414
    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mShowDividerVertical:I

    return p0
.end method

.method public getSumOfCrossSize()I
    .locals 5

    .line 536
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_4

    .line 537
    iget-object v3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/widget/media/flexbox/FlexLine;

    .line 540
    invoke-direct {p0, v1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->hasDividerBeforeFlexLine(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 541
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 542
    iget v4, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    add-int/2addr v2, v4

    goto :goto_1

    .line 544
    :cond_0
    iget v4, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    add-int/2addr v2, v4

    .line 549
    :cond_1
    :goto_1
    invoke-direct {p0, v1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->hasEndDividerAfterFlexLine(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 550
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 551
    iget v4, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    add-int/2addr v2, v4

    goto :goto_2

    .line 553
    :cond_2
    iget v4, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    add-int/2addr v2, v4

    .line 556
    :cond_3
    :goto_2
    iget v3, v3, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mCrossSize:I

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public isMainAxisDirectionHorizontal()Z
    .locals 2

    .line 563
    iget v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexDirection:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexDirection:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 908
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 911
    :cond_0
    iget v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mShowDividerVertical:I

    if-nez v0, :cond_1

    return-void

    .line 916
    :cond_1
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 919
    iget v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexDirection:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    if-ne v0, v4, :cond_2

    move v3, v4

    .line 943
    :cond_2
    iget v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexWrap:I

    if-ne v0, v2, :cond_3

    xor-int/lit8 v3, v3, 0x1

    .line 946
    :cond_3
    invoke-direct {p0, p1, v3, v4}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->drawDividersVertical(Landroid/graphics/Canvas;ZZ)V

    goto :goto_3

    :pswitch_1
    if-ne v0, v4, :cond_4

    goto :goto_0

    :cond_4
    move v4, v3

    .line 936
    :goto_0
    iget v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexWrap:I

    if-ne v0, v2, :cond_5

    xor-int/lit8 v4, v4, 0x1

    .line 939
    :cond_5
    invoke-direct {p0, p1, v4, v3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->drawDividersVertical(Landroid/graphics/Canvas;ZZ)V

    goto :goto_3

    :pswitch_2
    if-eq v0, v4, :cond_6

    move v0, v4

    goto :goto_1

    :cond_6
    move v0, v3

    .line 929
    :goto_1
    iget v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexWrap:I

    if-ne v1, v2, :cond_7

    move v3, v4

    .line 932
    :cond_7
    invoke-direct {p0, p1, v0, v3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->drawDividersHorizontal(Landroid/graphics/Canvas;ZZ)V

    goto :goto_3

    :pswitch_3
    if-ne v0, v4, :cond_8

    move v0, v4

    goto :goto_2

    :cond_8
    move v0, v3

    .line 922
    :goto_2
    iget v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexWrap:I

    if-ne v1, v2, :cond_9

    move v3, v4

    .line 925
    :cond_9
    invoke-direct {p0, p1, v0, v3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->drawDividersHorizontal(Landroid/graphics/Canvas;ZZ)V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .line 568
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    .line 570
    iget v2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexDirection:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v2, :pswitch_data_0

    .line 594
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid flex direction is set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexDirection:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    if-ne v1, v5, :cond_0

    move v4, v5

    .line 588
    :cond_0
    iget v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexWrap:I

    if-ne v1, v3, :cond_1

    xor-int/lit8 v1, v4, 0x1

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    const/4 v2, 0x1

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 591
    invoke-direct/range {v0 .. v6}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->layoutVertical(ZZIIII)V

    goto :goto_4

    :pswitch_1
    if-ne v1, v5, :cond_2

    move v4, v5

    .line 581
    :cond_2
    iget v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexWrap:I

    if-ne v1, v3, :cond_3

    xor-int/lit8 v1, v4, 0x1

    goto :goto_1

    :cond_3
    move v1, v4

    :goto_1
    const/4 v2, 0x0

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 584
    invoke-direct/range {v0 .. v6}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->layoutVertical(ZZIIII)V

    goto :goto_4

    :pswitch_2
    if-eq v1, v5, :cond_4

    move v1, v5

    goto :goto_2

    :cond_4
    move v1, v4

    :goto_2
    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 577
    invoke-direct/range {v0 .. v5}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->layoutHorizontal(ZIIII)V

    goto :goto_4

    :pswitch_3
    if-ne v1, v5, :cond_5

    move v1, v5

    goto :goto_3

    :cond_5
    move v1, v4

    :goto_3
    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 573
    invoke-direct/range {v0 .. v5}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->layoutHorizontal(ZIIII)V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mOrderCache:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->getChildCount()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mOrderCache:Landroid/util/SparseIntArray;

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mOrderCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->isOrderChangedFromLastMeasurement(Landroid/util/SparseIntArray;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;

    iget-object v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mOrderCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/flexbox/FlexboxHelper;->createReorderedIndices(Landroid/util/SparseIntArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mReorderedIndices:[I

    .line 276
    :cond_1
    iget v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexDirection:I

    packed-switch v0, :pswitch_data_0

    .line 286
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid value for the flex direction is set: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexDirection:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 283
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->measureVertical(II)V

    goto :goto_0

    .line 279
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->measureHorizontal(II)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onNewFlexItemAdded(Landroid/view/View;IILcom/yftech/car/widget/media/flexbox/FlexLine;)V
    .locals 0

    .line 1308
    invoke-direct {p0, p2, p3}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1309
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1310
    iget p1, p4, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mMainSize:I

    iget p2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    add-int/2addr p1, p2

    iput p1, p4, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mMainSize:I

    .line 1311
    iget p1, p4, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mDividerLengthInMainSize:I

    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    add-int/2addr p1, p0

    iput p1, p4, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mDividerLengthInMainSize:I

    goto :goto_0

    .line 1313
    :cond_0
    iget p1, p4, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mMainSize:I

    iget p2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    add-int/2addr p1, p2

    iput p1, p4, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mMainSize:I

    .line 1314
    iget p1, p4, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mDividerLengthInMainSize:I

    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    add-int/2addr p1, p0

    iput p1, p4, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mDividerLengthInMainSize:I

    :cond_1
    :goto_0
    return-void
.end method

.method public onNewFlexLineAdded(Lcom/yftech/car/widget/media/flexbox/FlexLine;)V
    .locals 2

    .line 1282
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1283
    iget v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mShowDividerVertical:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_1

    .line 1284
    iget v0, p1, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mMainSize:I

    iget v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mMainSize:I

    .line 1285
    iget v0, p1, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mDividerLengthInMainSize:I

    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    add-int/2addr v0, p0

    iput v0, p1, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mDividerLengthInMainSize:I

    goto :goto_0

    .line 1288
    :cond_0
    iget v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_1

    .line 1289
    iget v0, p1, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mMainSize:I

    iget v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mMainSize:I

    .line 1290
    iget v0, p1, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mDividerLengthInMainSize:I

    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    add-int/2addr v0, p0

    iput v0, p1, Lcom/yftech/car/widget/media/flexbox/FlexLine;->mDividerLengthInMainSize:I

    :cond_1
    :goto_0
    return-void
.end method

.method public setAlignContent(I)V
    .locals 1

    .line 1213
    iget v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mAlignContent:I

    if-eq v0, p1, :cond_0

    .line 1214
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mAlignContent:I

    .line 1215
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setAlignItems(I)V
    .locals 1

    .line 1199
    iget v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mAlignItems:I

    if-eq v0, p1, :cond_0

    .line 1200
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mAlignItems:I

    .line 1201
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1364
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V

    .line 1365
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1377
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    return-void

    .line 1380
    :cond_0
    iput-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 1382
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1384
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    .line 1386
    :goto_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->setWillNotDrawFlag()V

    .line 1387
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->requestLayout()V

    return-void
.end method

.method public setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1399
    iget-object v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    return-void

    .line 1402
    :cond_0
    iput-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 1404
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1406
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    .line 1408
    :goto_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->setWillNotDrawFlag()V

    .line 1409
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->requestLayout()V

    return-void
.end method

.method public setFlexDirection(I)V
    .locals 1

    .line 1157
    iget v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexDirection:I

    if-eq v0, p1, :cond_0

    .line 1158
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexDirection:I

    .line 1159
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setFlexLines(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/flexbox/FlexLine;",
            ">;)V"
        }
    .end annotation

    .line 1321
    iput-object p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    return-void
.end method

.method public setFlexWrap(I)V
    .locals 1

    .line 1171
    iget v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexWrap:I

    if-eq v0, p1, :cond_0

    .line 1172
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mFlexWrap:I

    .line 1173
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setJustifyContent(I)V
    .locals 1

    .line 1185
    iget v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mJustifyContent:I

    if-eq v0, p1, :cond_0

    .line 1186
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mJustifyContent:I

    .line 1187
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setMaxLine(I)V
    .locals 1

    .line 1226
    iget v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mMaxLine:I

    if-eq v0, p1, :cond_0

    .line 1227
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mMaxLine:I

    .line 1228
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setShowDivider(I)V
    .locals 0

    .line 1433
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->setShowDividerVertical(I)V

    .line 1434
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->setShowDividerHorizontal(I)V

    return-void
.end method

.method public setShowDividerHorizontal(I)V
    .locals 1

    .line 1461
    iget v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    if-eq p1, v0, :cond_0

    .line 1462
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    .line 1463
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setShowDividerVertical(I)V
    .locals 1

    .line 1446
    iget v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mShowDividerVertical:I

    if-eq p1, v0, :cond_0

    .line 1447
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->mShowDividerVertical:I

    .line 1448
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public updateViewCache(ILandroid/view/View;)V
    .locals 0

    return-void
.end method
