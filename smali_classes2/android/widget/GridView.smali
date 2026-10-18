.class public Landroid/widget/GridView;
.super Landroid/widget/AbsListView;
.source "GridView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/GridView$StretchMode;
    }
.end annotation


# static fields
.field public static final AUTO_FIT:I = -0x1

.field public static final NO_STRETCH:I = 0x0

.field public static final STRETCH_COLUMN_WIDTH:I = 0x2

.field public static final STRETCH_SPACING:I = 0x1

.field public static final STRETCH_SPACING_UNIFORM:I = 0x3


# instance fields
.field private mColumnWidth:I

.field private mGravity:I

.field private mHorizontalSpacing:I

.field private mNumColumns:I

.field private mReferenceView:Landroid/view/View;

.field private mReferenceViewInSelectedRow:Landroid/view/View;

.field private mRequestedColumnWidth:I

.field private mRequestedHorizontalSpacing:I

.field private mRequestedNumColumns:I

.field private mStretchMode:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, p1, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010071

    .line 131
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 135
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 139
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, -0x1

    .line 109
    iput v0, p0, Landroid/widget/GridView;->mNumColumns:I

    const/4 v1, 0x0

    .line 111
    iput v1, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 113
    iput v1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    const/4 v2, 0x2

    .line 114
    iput v2, p0, Landroid/widget/GridView;->mStretchMode:I

    const/4 v3, 0x0

    .line 119
    iput-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 120
    iput-object v3, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    const v3, 0x800003

    .line 122
    iput v3, p0, Landroid/widget/GridView;->mGravity:I

    .line 124
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    .line 141
    sget-object v3, Lcom/android/internal/R$styleable;->GridView:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    .line 144
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    .line 146
    invoke-virtual {p0, p3}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 148
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    .line 150
    invoke-virtual {p0, p3}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    const/4 p3, 0x3

    .line 152
    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    if-ltz p3, :cond_0

    .line 154
    invoke-virtual {p0, p3}, Landroid/widget/GridView;->setStretchMode(I)V

    :cond_0
    const/4 p3, 0x4

    .line 157
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    if-lez p3, :cond_1

    .line 159
    invoke-virtual {p0, p3}, Landroid/widget/GridView;->setColumnWidth(I)V

    :cond_1
    const/4 p3, 0x5

    .line 162
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 163
    invoke-virtual {p0, p2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 165
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_2

    .line 167
    invoke-virtual {p0, p2}, Landroid/widget/GridView;->setGravity(I)V

    .line 170
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private adjustForBottomFadingEdge(Landroid/view/View;II)V
    .locals 1

    .line 808
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    if-le v0, p3, :cond_0

    .line 812
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, p2

    .line 816
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    sub-int/2addr p1, p3

    .line 817
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    neg-int p1, p1

    .line 820
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    :cond_0
    return-void
.end method

.method private adjustForTopFadingEdge(Landroid/view/View;II)V
    .locals 1

    .line 836
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    if-ge v0, p2, :cond_0

    .line 839
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr p2, v0

    .line 843
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    sub-int/2addr p3, p1

    .line 844
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 847
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    :cond_0
    return-void
.end method

.method private adjustViewsUpOrDown()V
    .locals 5

    .line 2240
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 2246
    iget-boolean v1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 2249
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2250
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    .line 2251
    iget v1, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-eqz v1, :cond_0

    .line 2254
    iget v1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    sub-int/2addr v0, v1

    :cond_0
    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v0, -0x1

    .line 2262
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2263
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    sub-int/2addr v1, v3

    .line 2265
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v3, v0

    iget v0, p0, Landroid/widget/GridView;->mItemCount:I

    if-ge v3, v0, :cond_3

    .line 2268
    iget v0, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int/2addr v1, v0

    :cond_3
    if-lez v1, :cond_4

    goto :goto_0

    :cond_4
    move v2, v1

    :goto_0
    if-eqz v2, :cond_5

    neg-int v0, v2

    .line 2278
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    :cond_5
    return-void
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 7

    .line 1648
    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1652
    :cond_0
    iget-boolean v0, p0, Landroid/widget/GridView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 1653
    invoke-virtual {p0}, Landroid/widget/GridView;->layoutChildren()V

    .line 1657
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1658
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 1659
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eq v0, v3, :cond_2

    .line 1660
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1661
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 1662
    invoke-virtual {p0}, Landroid/widget/GridView;->keyPressed()V

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v1

    :cond_3
    :goto_0
    if-nez v2, :cond_b

    if-eq v0, v3, :cond_b

    const/16 v4, 0x82

    const/16 v5, 0x21

    const/4 v6, 0x2

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_2

    .line 1720
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1721
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    move v2, v1

    goto/16 :goto_2

    :cond_5
    :goto_1
    move v2, v3

    goto/16 :goto_2

    .line 1714
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1715
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 1706
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1707
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 1708
    :cond_6
    invoke-virtual {p3, v6}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1709
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 1698
    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1699
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 1700
    :cond_7
    invoke-virtual {p3, v6}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1701
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 1731
    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1732
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1733
    invoke-virtual {p0, v6}, Landroid/widget/GridView;->sequenceScroll(I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 1734
    :cond_8
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1735
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1736
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->sequenceScroll(I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_1

    .line 1676
    :sswitch_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1677
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_5

    const/16 v2, 0x42

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_1

    .line 1670
    :sswitch_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1671
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_5

    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_1

    .line 1690
    :sswitch_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1691
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_1

    .line 1692
    :cond_9
    invoke-virtual {p3, v6}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1693
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_1

    .line 1682
    :sswitch_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1683
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_1

    .line 1684
    :cond_a
    invoke-virtual {p3, v6}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1685
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_1

    :cond_b
    :goto_2
    if-eqz v2, :cond_c

    return v3

    .line 1746
    :cond_c
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/GridView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_d

    return v3

    :cond_d
    packed-switch v0, :pswitch_data_0

    return v1

    .line 1756
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 1754
    :pswitch_1
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 1752
    :pswitch_2
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_8
        0x14 -> :sswitch_7
        0x15 -> :sswitch_6
        0x16 -> :sswitch_5
        0x3d -> :sswitch_4
        0x5c -> :sswitch_3
        0x5d -> :sswitch_2
        0x7a -> :sswitch_1
        0x7b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private correctTooHigh(III)V
    .locals 4

    .line 620
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v0, p3

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 621
    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_3

    if-lez p3, :cond_3

    sub-int/2addr p3, v1

    .line 623
    invoke-virtual {p0, p3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 626
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p3

    .line 628
    iget v0, p0, Landroid/widget/GridView;->mBottom:I

    iget v2, p0, Landroid/widget/GridView;->mTop:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    sub-int/2addr v0, p3

    const/4 p3, 0x0

    .line 634
    invoke-virtual {p0, p3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 635
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v2

    if-lez v0, :cond_3

    .line 639
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-gtz v3, :cond_0

    iget-object v3, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_3

    .line 640
    :cond_0
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v3, :cond_1

    .line 642
    iget-object v3, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 646
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 647
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-lez v0, :cond_3

    .line 650
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget-boolean v2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v2, :cond_2

    move p1, v1

    :cond_2
    sub-int/2addr v0, p1

    .line 651
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr p1, p2

    .line 650
    invoke-direct {p0, v0, p1}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 653
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    :cond_3
    return-void
.end method

.method private correctTooLow(III)V
    .locals 6

    .line 660
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v0, :cond_3

    if-lez p3, :cond_3

    const/4 v0, 0x0

    .line 662
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 665
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 668
    iget-object v1, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 671
    iget v2, p0, Landroid/widget/GridView;->mBottom:I

    iget v3, p0, Landroid/widget/GridView;->mTop:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    sub-int/2addr v0, v1

    add-int/lit8 v1, p3, -0x1

    .line 676
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 677
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 678
    iget v4, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v4, p3

    const/4 p3, 0x1

    sub-int/2addr v4, p3

    if-lez v0, :cond_3

    .line 682
    iget v5, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v5, p3

    if-lt v4, v5, :cond_0

    if-le v3, v2, :cond_3

    .line 683
    :cond_0
    iget v5, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v5, p3

    if-ne v4, v5, :cond_1

    sub-int/2addr v3, v2

    .line 685
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_1
    neg-int v0, v0

    .line 689
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 690
    iget v0, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v0, p3

    if-ge v4, v0, :cond_3

    .line 693
    iget-boolean v0, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v0, :cond_2

    move p1, p3

    :cond_2
    add-int/2addr v4, p1

    .line 694
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result p1

    add-int/2addr p1, p2

    .line 693
    invoke-direct {p0, v4, p1}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 696
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    :cond_3
    return-void
.end method

.method private determineColumns(I)Z
    .locals 6

    .line 969
    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    .line 970
    iget v1, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 971
    iget v2, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    .line 974
    iget v3, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    if-lez v2, :cond_0

    add-int v3, p1, v0

    add-int v4, v2, v0

    .line 977
    div-int/2addr v3, v4

    iput v3, p0, Landroid/widget/GridView;->mNumColumns:I

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    .line 981
    iput v3, p0, Landroid/widget/GridView;->mNumColumns:I

    goto :goto_0

    .line 985
    :cond_1
    iget v3, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    iput v3, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 988
    :goto_0
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    const/4 v4, 0x1

    if-gtz v3, :cond_2

    .line 989
    iput v4, p0, Landroid/widget/GridView;->mNumColumns:I

    :cond_2
    const/4 v3, 0x0

    if-eqz v1, :cond_6

    .line 1000
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    mul-int/2addr v5, v2

    sub-int/2addr p1, v5

    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int/2addr v5, v4

    mul-int/2addr v5, v0

    sub-int/2addr p1, v5

    if-gez p1, :cond_3

    move v3, v4

    :cond_3
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 1027
    :pswitch_0
    iput v2, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 1028
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    if-le v1, v4, :cond_4

    .line 1029
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/2addr v1, v4

    div-int/2addr p1, v1

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    :cond_4
    add-int/2addr v0, p1

    .line 1032
    iput v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 1010
    :pswitch_1
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int/2addr p1, v1

    add-int/2addr v2, p1

    iput v2, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 1011
    iput v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 1016
    :pswitch_2
    iput v2, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 1017
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    if-le v1, v4, :cond_5

    .line 1018
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int/2addr v1, v4

    div-int/2addr p1, v1

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    :cond_5
    add-int/2addr v0, p1

    .line 1021
    iput v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 995
    :cond_6
    iput v2, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 996
    iput v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    :goto_1
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 4

    .line 306
    iget v0, p0, Landroid/widget/GridView;->mBottom:I

    iget v1, p0, Landroid/widget/GridView;->mTop:I

    sub-int/2addr v0, v1

    .line 307
    iget v1, p0, Landroid/widget/GridView;->mGroupFlags:I

    const/16 v2, 0x22

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 308
    iget-object v1, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    :cond_0
    :goto_0
    const/4 v1, 0x1

    if-ge p2, v0, :cond_2

    .line 311
    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    if-ge p1, v2, :cond_2

    .line 312
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    move-object v3, p2

    .line 319
    :cond_1
    iget-object p2, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    iget v1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int/2addr p2, v1

    .line 321
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/2addr p1, v1

    goto :goto_0

    .line 324
    :cond_2
    iget p1, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget p2, p0, Landroid/widget/GridView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    add-int/2addr p2, v0

    sub-int/2addr p2, v1

    invoke-virtual {p0, p1, p2}, Landroid/widget/GridView;->setVisibleRangeHint(II)V

    return-object v3
.end method

.method private fillFromBottom(II)Landroid/view/View;
    .locals 2

    .line 451
    iget v0, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 452
    iget v0, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 454
    iget v0, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    .line 455
    iget p1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 p1, p1, -0x1

    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v1, v0, v1

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 457
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 7

    .line 713
    invoke-virtual {p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 714
    iget v1, p0, Landroid/widget/GridView;->mSelectedPosition:I

    .line 715
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 716
    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 721
    iget-boolean v4, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v5, 0x1

    if-nez v4, :cond_0

    .line 722
    rem-int v4, v1, v2

    sub-int/2addr v1, v4

    const/4 v4, -0x1

    goto :goto_0

    .line 724
    :cond_0
    iget v4, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    .line 726
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v1, v5

    rem-int v6, v4, v2

    sub-int/2addr v4, v6

    sub-int v4, v1, v4

    const/4 v1, 0x0

    sub-int v6, v4, v2

    add-int/2addr v6, v5

    .line 727
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 733
    :goto_0
    invoke-direct {p0, p2, v0, v1}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result p2

    .line 734
    invoke-direct {p0, p3, v0, v2, v1}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result p3

    .line 737
    iget-boolean v0, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-direct {p0, v0, p1, v5}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object p1

    .line 739
    iput v1, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 741
    iget-object v0, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 742
    invoke-direct {p0, v0, p2, p3}, Landroid/widget/GridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    .line 743
    invoke-direct {p0, v0, p2, p3}, Landroid/widget/GridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 745
    iget-boolean p2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez p2, :cond_2

    sub-int p2, v1, v2

    .line 746
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result p3

    sub-int/2addr p3, v3

    invoke-direct {p0, p2, p3}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 747
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    add-int/2addr v1, v2

    .line 748
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p2

    add-int/2addr p2, v3

    invoke-direct {p0, v1, p2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    goto :goto_2

    :cond_2
    add-int/2addr v4, v2

    .line 750
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p2

    add-int/2addr p2, v3

    invoke-direct {p0, v4, p2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 751
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    sub-int/2addr v1, v5

    .line 752
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result p2

    sub-int/2addr p2, v3

    invoke-direct {p0, v1, p2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    :goto_2
    return-object p1
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 3

    .line 441
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 442
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 443
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 444
    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 446
    :cond_0
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 447
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private fillSelection(II)Landroid/view/View;
    .locals 9

    .line 461
    invoke-virtual {p0}, Landroid/widget/GridView;->reconcileSelectedPosition()I

    move-result v0

    .line 462
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 463
    iget v2, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 468
    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 469
    rem-int v3, v0, v1

    sub-int/2addr v0, v3

    const/4 v3, -0x1

    goto :goto_0

    .line 471
    :cond_0
    iget v3, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v0

    .line 473
    iget v0, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v0, v4

    rem-int v5, v3, v1

    sub-int/2addr v3, v5

    sub-int v3, v0, v3

    const/4 v0, 0x0

    sub-int v5, v3, v1

    add-int/2addr v5, v4

    .line 474
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 477
    :goto_0
    invoke-virtual {p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v5

    .line 478
    invoke-direct {p0, p1, v5, v0}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v6

    .line 480
    iget-boolean v7, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v7, :cond_1

    move v7, v3

    goto :goto_1

    :cond_1
    move v7, v0

    :goto_1
    invoke-direct {p0, v7, v6, v4}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v6

    .line 481
    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 483
    iget-object v7, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 485
    iget-boolean v8, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v8, :cond_2

    add-int p1, v0, v1

    .line 486
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {p0, p1, v3}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 487
    invoke-direct {p0, p2}, Landroid/widget/GridView;->pinToBottom(I)V

    sub-int/2addr v0, v1

    .line 488
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-direct {p0, v0, p1}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 489
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    goto :goto_2

    .line 491
    :cond_2
    invoke-direct {p0, p2, v5, v1, v0}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result p2

    .line 493
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr p2, v5

    .line 494
    invoke-virtual {p0, p2}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    sub-int/2addr v0, v4

    .line 495
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-direct {p0, v0, p2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 496
    invoke-direct {p0, p1}, Landroid/widget/GridView;->pinToTop(I)V

    add-int/2addr v3, v1

    .line 497
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result p1

    add-int/2addr p1, v2

    invoke-direct {p0, v3, p1}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 498
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    :goto_2
    return-object v6
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 7

    .line 559
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 564
    iget-boolean v1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 565
    rem-int v1, p1, v0

    sub-int/2addr p1, v1

    const/4 v1, -0x1

    goto :goto_0

    .line 567
    :cond_0
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, p1

    .line 569
    iget p1, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr p1, v2

    rem-int v3, v1, v0

    sub-int/2addr v1, v3

    sub-int v1, p1, v1

    const/4 p1, 0x0

    sub-int v3, v1, v0

    add-int/2addr v3, v2

    .line 570
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 573
    :goto_0
    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, p1

    :goto_1
    invoke-direct {p0, v3, p2, v2}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object p2

    .line 576
    iput p1, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 578
    iget-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    if-nez v3, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 584
    :cond_2
    iget v4, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 589
    iget-boolean v5, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v5, :cond_4

    sub-int v1, p1, v0

    .line 590
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-direct {p0, v1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v1

    .line 591
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    add-int/2addr p1, v0

    .line 592
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v4

    invoke-direct {p0, p1, v2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object p1

    .line 594
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 596
    invoke-direct {p0, v0, v4, v2}, Landroid/widget/GridView;->correctTooHigh(III)V

    :cond_3
    move-object v6, v1

    move-object v1, p1

    move-object p1, v6

    goto :goto_2

    :cond_4
    add-int/2addr v1, v0

    .line 599
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {p0, v1, v5}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 600
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    sub-int/2addr p1, v2

    .line 601
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-direct {p0, p1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object p1

    .line 603
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_5

    .line 605
    invoke-direct {p0, v0, v4, v2}, Landroid/widget/GridView;->correctTooLow(III)V

    :cond_5
    :goto_2
    if-eqz p2, :cond_6

    return-object p2

    :cond_6
    if-eqz p1, :cond_7

    return-object p1

    :cond_7
    return-object v1
.end method

.method private fillUp(II)Landroid/view/View;
    .locals 4

    .line 406
    iget v0, p0, Landroid/widget/GridView;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 407
    iget-object v0, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-le p2, v0, :cond_2

    if-ltz p1, :cond_2

    .line 412
    invoke-direct {p0, p1, p2, v2}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    move-object v3, p2

    .line 417
    :cond_1
    iget-object p2, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    iget v1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    sub-int/2addr p2, v1

    .line 419
    iput p1, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 421
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int/2addr p1, v1

    goto :goto_0

    .line 424
    :cond_2
    iget-boolean p2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz p2, :cond_3

    add-int/lit8 p1, p1, 0x1

    .line 425
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 428
    :cond_3
    iget p1, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget p2, p0, Landroid/widget/GridView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    add-int/2addr p2, v0

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, p1, p2}, Landroid/widget/GridView;->setVisibleRangeHint(II)V

    return-object v3
.end method

.method private getBottomSelectionPixel(IIII)I
    .locals 0

    add-int/2addr p4, p3

    add-int/lit8 p4, p4, -0x1

    .line 772
    iget p0, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 p0, p0, -0x1

    if-ge p4, p0, :cond_0

    sub-int/2addr p1, p2

    :cond_0
    return p1
.end method

.method private getTopSelectionPixel(III)I
    .locals 0

    if-lez p3, :cond_0

    add-int/2addr p1, p2

    :cond_0
    return p1
.end method

.method private isCandidateSelection(II)Z
    .locals 6

    .line 1988
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    sub-int v2, v1, p1

    .line 1994
    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    .line 1995
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v2, p1, v2

    sub-int v2, p1, v2

    .line 1996
    iget p0, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/2addr p0, v2

    sub-int/2addr p0, v5

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_0

    .line 1998
    :cond_0
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v0, v2, v0

    sub-int/2addr v2, v0

    sub-int v0, v1, v2

    .line 1999
    iget p0, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int p0, v0, p0

    add-int/2addr p0, v5

    invoke-static {v4, p0}, Ljava/lang/Math;->max(II)I

    move-result v2

    move p0, v0

    :goto_0
    const/16 v0, 0x11

    if-eq p2, v0, :cond_9

    const/16 v0, 0x21

    if-eq p2, v0, :cond_7

    const/16 v0, 0x42

    if-eq p2, v0, :cond_5

    const/16 v0, 0x82

    if-eq p2, v0, :cond_3

    packed-switch p2, :pswitch_data_0

    .line 2023
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    if-ne p1, v2, :cond_1

    if-nez v2, :cond_1

    move v4, v5

    :cond_1
    return v4

    :pswitch_1
    if-ne p1, p0, :cond_2

    if-ne p0, v1, :cond_2

    move v4, v5

    :cond_2
    return v4

    :cond_3
    if-nez v2, :cond_4

    move v4, v5

    :cond_4
    return v4

    :cond_5
    if-ne p1, v2, :cond_6

    move v4, v5

    :cond_6
    return v4

    :cond_7
    if-ne p0, v1, :cond_8

    move v4, v5

    :cond_8
    return v4

    :cond_9
    if-ne p1, p0, :cond_a

    move v4, v5

    :cond_a
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private makeAndAddView(IIZIZI)Landroid/view/View;
    .locals 10

    move-object v0, p0

    move v2, p1

    .line 1431
    iget-boolean v1, v0, Landroid/widget/GridView;->mDataChanged:Z

    if-nez v1, :cond_0

    .line 1433
    iget-object v1, v0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1, p1}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, v9

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    .line 1437
    invoke-direct/range {v0 .. v8}, Landroid/widget/GridView;->setupChild(Landroid/view/View;IIZIZZI)V

    return-object v9

    .line 1444
    :cond_0
    iget-object v1, v0, Landroid/widget/GridView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v1}, Landroid/widget/GridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v9

    .line 1447
    iget-object v1, v0, Landroid/widget/GridView;->mIsScrap:[Z

    const/4 v3, 0x0

    aget-boolean v7, v1, v3

    move-object v0, p0

    move-object v1, v9

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/widget/GridView;->setupChild(Landroid/view/View;IIZIZZI)V

    return-object v9
.end method

.method private makeRow(IIZ)Landroid/view/View;
    .locals 23

    move-object/from16 v7, p0

    .line 329
    iget v8, v7, Landroid/widget/GridView;->mColumnWidth:I

    .line 330
    iget v9, v7, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 332
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->isLayoutRtl()Z

    move-result v1

    const/4 v2, 0x3

    const/4 v10, 0x0

    if-eqz v1, :cond_1

    .line 338
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getWidth()I

    move-result v3

    iget-object v4, v7, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v8

    .line 339
    iget v4, v7, Landroid/widget/GridView;->mStretchMode:I

    if-ne v4, v2, :cond_0

    move v2, v9

    goto :goto_0

    :cond_0
    move v2, v10

    :goto_0
    sub-int/2addr v3, v2

    goto :goto_2

    .line 341
    :cond_1
    iget-object v3, v7, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 342
    iget v4, v7, Landroid/widget/GridView;->mStretchMode:I

    if-ne v4, v2, :cond_2

    move v2, v9

    goto :goto_1

    :cond_2
    move v2, v10

    :goto_1
    add-int/2addr v3, v2

    .line 345
    :goto_2
    iget-boolean v2, v7, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v11, -0x1

    const/4 v12, 0x1

    if-nez v2, :cond_3

    .line 346
    iget v2, v7, Landroid/widget/GridView;->mNumColumns:I

    add-int v2, p1, v2

    iget v4, v7, Landroid/widget/GridView;->mItemCount:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    move/from16 v13, p1

    :goto_3
    move v14, v2

    goto :goto_5

    :cond_3
    add-int/lit8 v2, p1, 0x1

    .line 349
    iget v4, v7, Landroid/widget/GridView;->mNumColumns:I

    sub-int v0, p1, v4

    add-int/2addr v0, v12

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int v4, v2, v0

    .line 351
    iget v5, v7, Landroid/widget/GridView;->mNumColumns:I

    if-ge v4, v5, :cond_5

    .line 352
    iget v5, v7, Landroid/widget/GridView;->mNumColumns:I

    sub-int/2addr v5, v4

    add-int v4, v8, v9

    mul-int/2addr v5, v4

    if-eqz v1, :cond_4

    move v4, v11

    goto :goto_4

    :cond_4
    move v4, v12

    :goto_4
    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    :cond_5
    move v13, v0

    goto :goto_3

    .line 359
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->shouldShowSelector()Z

    move-result v15

    .line 360
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->touchModeDrawsInPressedState()Z

    move-result v16

    .line 361
    iget v6, v7, Landroid/widget/GridView;->mSelectedPosition:I

    if-eqz v1, :cond_6

    move/from16 v17, v11

    goto :goto_6

    :cond_6
    move/from16 v17, v12

    :goto_6
    const/4 v0, 0x0

    move-object/from16 v18, v0

    move/from16 v19, v3

    move v5, v13

    :goto_7
    if-ge v5, v14, :cond_c

    if-ne v5, v6, :cond_7

    move/from16 v20, v12

    goto :goto_8

    :cond_7
    move/from16 v20, v10

    :goto_8
    if-eqz p3, :cond_8

    move/from16 v21, v11

    goto :goto_9

    :cond_8
    sub-int v0, v5, v13

    move/from16 v21, v0

    :goto_9
    move-object/from16 v0, p0

    move v1, v5

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v19

    move v10, v5

    move/from16 v5, v20

    move/from16 v22, v6

    move/from16 v6, v21

    .line 371
    invoke-direct/range {v0 .. v6}, Landroid/widget/GridView;->makeAndAddView(IIZIZI)Landroid/view/View;

    move-result-object v0

    mul-int v1, v17, v8

    add-int v19, v19, v1

    add-int/lit8 v1, v14, -0x1

    if-ge v10, v1, :cond_9

    mul-int v1, v17, v9

    add-int v19, v19, v1

    :cond_9
    if-eqz v20, :cond_b

    if-nez v15, :cond_a

    if-eqz v16, :cond_b

    :cond_a
    move-object/from16 v18, v0

    :cond_b
    add-int/lit8 v5, v10, 0x1

    move/from16 v6, v22

    const/4 v10, 0x0

    goto :goto_7

    .line 383
    :cond_c
    iput-object v0, v7, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    if-eqz v18, :cond_d

    .line 386
    iget-object v0, v7, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    iput-object v0, v7, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    :cond_d
    return-object v18
.end method

.method private moveSelection(III)Landroid/view/View;
    .locals 9

    .line 885
    invoke-virtual {p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 886
    iget v1, p0, Landroid/widget/GridView;->mSelectedPosition:I

    .line 887
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 888
    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 894
    iget-boolean v4, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_0

    sub-int p1, v1, p1

    .line 895
    rem-int v4, p1, v2

    sub-int/2addr p1, v4

    .line 897
    rem-int v4, v1, v2

    sub-int/2addr v1, v4

    const/4 v4, -0x1

    goto :goto_0

    .line 899
    :cond_0
    iget v4, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v4, v6

    sub-int/2addr v4, v1

    .line 901
    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v7, v6

    rem-int v8, v4, v2

    sub-int/2addr v4, v8

    sub-int v4, v7, v4

    sub-int v7, v4, v2

    add-int/2addr v7, v6

    .line 902
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 904
    iget v8, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v8, v6

    sub-int/2addr v1, p1

    sub-int/2addr v8, v1

    .line 905
    iget p1, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr p1, v6

    rem-int v1, v8, v2

    sub-int/2addr v8, v1

    sub-int/2addr p1, v8

    sub-int/2addr p1, v2

    add-int/2addr p1, v6

    .line 906
    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    move v1, v7

    :goto_0
    sub-int p1, v1, p1

    .line 911
    invoke-direct {p0, p2, v0, v1}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result p2

    .line 912
    invoke-direct {p0, p3, v0, v2, v1}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result p3

    .line 916
    iput v1, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-lez p1, :cond_3

    .line 926
    iget-object p1, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    if-nez p1, :cond_1

    goto :goto_1

    .line 927
    :cond_1
    iget-object p1, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 929
    :goto_1
    iget-boolean p1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz p1, :cond_2

    move p1, v4

    goto :goto_2

    :cond_2
    move p1, v1

    :goto_2
    add-int/2addr v5, v3

    invoke-direct {p0, p1, v5, v6}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object p1

    .line 930
    iget-object v0, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 932
    invoke-direct {p0, v0, p2, p3}, Landroid/widget/GridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    goto :goto_7

    :cond_3
    if-gez p1, :cond_6

    .line 937
    iget-object p1, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    if-nez p1, :cond_4

    move p1, v5

    goto :goto_3

    .line 938
    :cond_4
    iget-object p1, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    .line 940
    :goto_3
    iget-boolean v0, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v0, :cond_5

    move v0, v4

    goto :goto_4

    :cond_5
    move v0, v1

    :goto_4
    sub-int/2addr p1, v3

    invoke-direct {p0, v0, p1, v5}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object p1

    .line 941
    iget-object v0, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 943
    invoke-direct {p0, v0, p2, p3}, Landroid/widget/GridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    goto :goto_7

    .line 948
    :cond_6
    iget-object p1, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    if-nez p1, :cond_7

    goto :goto_5

    .line 949
    :cond_7
    iget-object p1, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    .line 951
    :goto_5
    iget-boolean p1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz p1, :cond_8

    move p1, v4

    goto :goto_6

    :cond_8
    move p1, v1

    :goto_6
    invoke-direct {p0, p1, v5, v6}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object p1

    .line 952
    iget-object v0, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 955
    :goto_7
    iget-boolean p2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez p2, :cond_9

    sub-int p2, v1, v2

    .line 956
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result p3

    sub-int/2addr p3, v3

    invoke-direct {p0, p2, p3}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 957
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    add-int/2addr v1, v2

    .line 958
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p2

    add-int/2addr p2, v3

    invoke-direct {p0, v1, p2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    goto :goto_8

    :cond_9
    add-int/2addr v4, v2

    .line 960
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p2

    add-int/2addr p2, v3

    invoke-direct {p0, v4, p2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 961
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    sub-int/2addr v1, v6

    .line 962
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result p2

    sub-int/2addr p2, v3

    invoke-direct {p0, v1, p2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    :goto_8
    return-object p1
.end method

.method private pinToBottom(I)V
    .locals 3

    .line 515
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 516
    iget v1, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v1, v0

    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 517
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int/2addr p1, v0

    if-lez p1, :cond_0

    .line 520
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    :cond_0
    return-void
.end method

.method private pinToTop(I)V
    .locals 1

    .line 505
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 506
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr p1, v0

    if-gez p1, :cond_0

    .line 509
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    :cond_0
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZI)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v5, p8

    const-string/jumbo v6, "setupGridItem"

    const-wide/16 v7, 0x8

    .line 1472
    invoke-static {v7, v8, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v6, 0x1

    const/4 v9, 0x0

    if-eqz p6, :cond_0

    .line 1474
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->shouldShowSelector()Z

    move-result v10

    if-eqz v10, :cond_0

    move v10, v6

    goto :goto_0

    :cond_0
    move v10, v9

    .line 1475
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v11

    if-eq v10, v11, :cond_1

    move v11, v6

    goto :goto_1

    :cond_1
    move v11, v9

    .line 1476
    :goto_1
    iget v12, v0, Landroid/widget/GridView;->mTouchMode:I

    const/4 v13, 0x3

    if-lez v12, :cond_2

    if-ge v12, v13, :cond_2

    .line 1477
    iget v12, v0, Landroid/widget/GridView;->mMotionPosition:I

    if-ne v12, v2, :cond_2

    move v12, v6

    goto :goto_2

    :cond_2
    move v12, v9

    .line 1479
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v14

    if-eq v12, v14, :cond_3

    move v14, v6

    goto :goto_3

    :cond_3
    move v14, v9

    :goto_3
    if-eqz p7, :cond_5

    if-nez v11, :cond_5

    .line 1481
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v15

    if-eqz v15, :cond_4

    goto :goto_4

    :cond_4
    move v15, v9

    goto :goto_5

    :cond_5
    :goto_4
    move v15, v6

    .line 1485
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/AbsListView$LayoutParams;

    if-nez v16, :cond_6

    .line 1487
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/AbsListView$LayoutParams;

    :cond_6
    move-object/from16 v7, v16

    .line 1489
    iget-object v8, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v8

    iput v8, v7, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1490
    iget-object v8, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8, v2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v8

    iput-boolean v8, v7, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    if-eqz v11, :cond_7

    .line 1496
    invoke-virtual {v1, v10}, Landroid/view/View;->setSelected(Z)V

    if-eqz v10, :cond_7

    .line 1498
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->requestFocus()Z

    :cond_7
    if-eqz v14, :cond_8

    .line 1503
    invoke-virtual {v1, v12}, Landroid/view/View;->setPressed(Z)V

    .line 1506
    :cond_8
    iget v8, v0, Landroid/widget/GridView;->mChoiceMode:I

    if-eqz v8, :cond_a

    iget-object v8, v0, Landroid/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v8, :cond_a

    .line 1507
    instance-of v8, v1, Landroid/widget/Checkable;

    if-eqz v8, :cond_9

    .line 1508
    move-object v8, v1

    check-cast v8, Landroid/widget/Checkable;

    iget-object v10, v0, Landroid/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v10

    invoke-interface {v8, v10}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_6

    .line 1509
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v10, 0xb

    if-lt v8, v10, :cond_a

    .line 1511
    iget-object v8, v0, Landroid/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    invoke-virtual {v1, v8}, Landroid/view/View;->setActivated(Z)V

    :cond_a
    :goto_6
    if-eqz p7, :cond_c

    .line 1515
    iget-boolean v8, v7, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    if-nez v8, :cond_c

    .line 1516
    invoke-virtual {v0, v1, v5, v7}, Landroid/widget/GridView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    if-eqz p7, :cond_b

    .line 1521
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    iget v4, v4, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    if-eq v4, v2, :cond_d

    .line 1523
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    goto :goto_7

    .line 1526
    :cond_c
    iput-boolean v9, v7, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1527
    invoke-virtual {v0, v1, v5, v7, v6}, Landroid/widget/GridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    :cond_d
    :goto_7
    if-eqz v15, :cond_e

    .line 1532
    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v4, v7, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 1531
    invoke-static {v2, v9, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 1534
    iget v4, v0, Landroid/widget/GridView;->mColumnWidth:I

    const/high16 v5, 0x40000000    # 2.0f

    .line 1535
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, v7, Landroid/widget/AbsListView$LayoutParams;->width:I

    .line 1534
    invoke-static {v4, v9, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v4

    .line 1536
    invoke-virtual {v1, v4, v2}, Landroid/view/View;->measure(II)V

    goto :goto_8

    .line 1538
    :cond_e
    invoke-virtual/range {p0 .. p1}, Landroid/widget/GridView;->cleanupLayoutState(Landroid/view/View;)V

    .line 1541
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1542
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-eqz p4, :cond_f

    move/from16 v5, p3

    goto :goto_9

    :cond_f
    sub-int v5, p3, v4

    .line 1547
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getLayoutDirection()I

    move-result v7

    .line 1548
    iget v8, v0, Landroid/widget/GridView;->mGravity:I

    invoke-static {v8, v7}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v7

    and-int/lit8 v7, v7, 0x7

    if-eq v7, v6, :cond_12

    if-eq v7, v13, :cond_11

    const/4 v8, 0x5

    if-eq v7, v8, :cond_10

    goto :goto_a

    .line 1557
    :cond_10
    iget v7, v0, Landroid/widget/GridView;->mColumnWidth:I

    add-int v3, p5, v7

    sub-int/2addr v3, v2

    goto :goto_b

    :cond_11
    :goto_a
    move/from16 v3, p5

    goto :goto_b

    .line 1554
    :cond_12
    iget v7, v0, Landroid/widget/GridView;->mColumnWidth:I

    sub-int/2addr v7, v2

    div-int/lit8 v7, v7, 0x2

    add-int v3, p5, v7

    :goto_b
    if-eqz v15, :cond_13

    add-int/2addr v2, v3

    add-int/2addr v4, v5

    .line 1567
    invoke-virtual {v1, v3, v5, v2, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_c

    .line 1569
    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1570
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v5, v2

    invoke-virtual {v1, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1573
    :goto_c
    iget-boolean v0, v0, Landroid/widget/GridView;->mCachingStarted:Z

    if-eqz v0, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1574
    invoke-virtual {v1, v6}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    :cond_14
    const-wide/16 v0, 0x8

    .line 1577
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method


# virtual methods
.method arrowScroll(I)Z
    .locals 10

    .line 1824
    iget v0, p0, Landroid/widget/GridView;->mSelectedPosition:I

    .line 1825
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 1832
    iget-boolean v2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    .line 1833
    div-int v2, v0, v1

    mul-int/2addr v2, v1

    add-int v5, v2, v1

    sub-int/2addr v5, v4

    .line 1834
    iget v6, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_0

    .line 1836
    :cond_0
    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v2, v4

    sub-int/2addr v2, v0

    .line 1837
    iget v5, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v5, v4

    div-int/2addr v2, v1

    mul-int/2addr v2, v1

    sub-int/2addr v5, v2

    sub-int v2, v5, v1

    add-int/2addr v2, v4

    .line 1838
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_0
    const/16 v6, 0x21

    const/4 v7, 0x6

    if-eq p1, v6, :cond_2

    const/16 v6, 0x82

    if-eq p1, v6, :cond_1

    goto :goto_2

    .line 1850
    :cond_1
    iget v6, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v6, v4

    if-ge v5, v6, :cond_3

    .line 1851
    iput v7, p0, Landroid/widget/GridView;->mLayoutMode:I

    add-int/2addr v1, v0

    .line 1852
    iget v6, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v6, v4

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    goto :goto_1

    :cond_2
    if-lez v2, :cond_3

    .line 1844
    iput v7, p0, Landroid/widget/GridView;->mLayoutMode:I

    sub-int v1, v0, v1

    .line 1845
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    :goto_1
    move v1, v4

    goto :goto_3

    :cond_3
    :goto_2
    move v1, v3

    .line 1858
    :goto_3
    invoke-virtual {p0}, Landroid/widget/GridView;->isLayoutRtl()Z

    move-result v6

    const/16 v8, 0x42

    const/16 v9, 0x11

    if-le v0, v2, :cond_6

    if-ne p1, v9, :cond_4

    if-eqz v6, :cond_5

    :cond_4
    if-ne p1, v8, :cond_6

    if-eqz v6, :cond_6

    .line 1861
    :cond_5
    iput v7, p0, Landroid/widget/GridView;->mLayoutMode:I

    sub-int/2addr v0, v4

    .line 1862
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelectionInt(I)V

    goto :goto_4

    :cond_6
    if-ge v0, v5, :cond_9

    if-ne p1, v9, :cond_7

    if-nez v6, :cond_8

    :cond_7
    if-ne p1, v8, :cond_9

    if-nez v6, :cond_9

    .line 1866
    :cond_8
    iput v7, p0, Landroid/widget/GridView;->mLayoutMode:I

    add-int/2addr v0, v4

    .line 1867
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelectionInt(I)V

    goto :goto_4

    :cond_9
    move v4, v1

    :goto_4
    if-eqz v4, :cond_a

    .line 1872
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->playSoundEffect(I)V

    .line 1873
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    :cond_a
    if-eqz v4, :cond_b

    .line 1877
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    :cond_b
    return v4
.end method

.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 0

    .line 1135
    iget-object p1, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    check-cast p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    if-nez p1, :cond_0

    .line 1139
    new-instance p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    invoke-direct {p1}, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;-><init>()V

    .line 1140
    iput-object p1, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 1143
    :cond_0
    iput p4, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->count:I

    .line 1144
    iput p3, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->index:I

    .line 1145
    iget p2, p0, Landroid/widget/GridView;->mNumColumns:I

    iput p2, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    .line 1146
    iget p2, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int p2, p4, p2

    iput p2, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    .line 1148
    iget-boolean p2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez p2, :cond_1

    .line 1149
    iget p2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int p2, p3, p2

    iput p2, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 1150
    iget p0, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int/2addr p3, p0

    iput p3, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    goto :goto_0

    :cond_1
    add-int/lit8 p4, p4, -0x1

    sub-int/2addr p4, p3

    .line 1154
    iget p2, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/lit8 p2, p2, -0x1

    iget p3, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int p3, p4, p3

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 1155
    iget p2, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    add-int/lit8 p2, p2, -0x1

    iget p0, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int/2addr p4, p0

    sub-int/2addr p2, p4

    iput p2, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    :goto_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 4

    .line 2285
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 2287
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int v3, v0, v2

    add-int/lit8 v3, v3, -0x1

    .line 2288
    div-int/2addr v3, v2

    mul-int/lit8 v3, v3, 0x64

    .line 2292
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2293
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 2294
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    mul-int/lit8 v2, v2, 0x64

    .line 2296
    div-int/2addr v2, v1

    add-int/2addr v3, v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 2299
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2300
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 2301
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    .line 2303
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result p0

    sub-int/2addr v1, p0

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, v0

    sub-int/2addr v3, v1

    :cond_1
    return v3

    :cond_2
    return v1
.end method

.method protected computeVerticalScrollOffset()I
    .locals 7

    .line 2313
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 2314
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2315
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    .line 2316
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    .line 2318
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 2319
    iget v4, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    div-int/2addr v4, v3

    .line 2323
    invoke-virtual {p0}, Landroid/widget/GridView;->isStackFromBottom()Z

    move-result v5

    if-eqz v5, :cond_0

    mul-int v5, v4, v3

    iget v6, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v5, v6

    goto :goto_0

    :cond_0
    move v5, v1

    .line 2325
    :goto_0
    iget v6, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v6, v5

    div-int/2addr v6, v3

    mul-int/lit8 v6, v6, 0x64

    mul-int/lit8 v2, v2, 0x64

    .line 2326
    div-int/2addr v2, v0

    sub-int/2addr v6, v2

    iget v0, p0, Landroid/widget/GridView;->mScrollY:I

    int-to-float v0, v0

    .line 2327
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    int-to-float p0, v4

    mul-float/2addr v0, p0

    const/high16 p0, 0x42c80000    # 100.0f

    mul-float/2addr v0, p0

    float-to-int p0, v0

    add-int/2addr v6, p0

    .line 2326
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method protected computeVerticalScrollRange()I
    .locals 3

    .line 2336
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 2337
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v1, v0

    mul-int/lit8 v0, v1, 0x64

    const/4 v2, 0x0

    .line 2338
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2339
    iget v2, p0, Landroid/widget/GridView;->mScrollY:I

    if-eqz v2, :cond_0

    .line 2341
    iget v2, p0, Landroid/widget/GridView;->mScrollY:I

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v2, p0

    int-to-float p0, v1

    mul-float/2addr v2, p0

    const/high16 p0, 0x42c80000    # 100.0f

    mul-float/2addr v2, p0

    float-to-int p0, v2

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    add-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 1

    .line 2426
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    const-string v0, "numColumns"

    .line 2427
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    return-void
.end method

.method fillGap(Z)V
    .locals 5

    .line 256
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 257
    iget v1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 259
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x22

    if-eqz p1, :cond_3

    .line 263
    iget p1, p0, Landroid/widget/GridView;->mGroupFlags:I

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_0

    .line 264
    invoke-virtual {p0}, Landroid/widget/GridView;->getListPaddingTop()I

    move-result v3

    :cond_0
    if-lez v2, :cond_1

    add-int/lit8 p1, v2, -0x1

    .line 267
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    add-int v3, p1, v1

    .line 268
    :cond_1
    iget p1, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr p1, v2

    .line 269
    iget-boolean v2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v2, :cond_2

    add-int/lit8 v2, v0, -0x1

    add-int/2addr p1, v2

    .line 272
    :cond_2
    invoke-direct {p0, p1, v3}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 273
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Landroid/widget/GridView;->correctTooHigh(III)V

    goto :goto_3

    .line 276
    :cond_3
    iget p1, p0, Landroid/widget/GridView;->mGroupFlags:I

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_4

    .line 277
    invoke-virtual {p0}, Landroid/widget/GridView;->getListPaddingBottom()I

    move-result p1

    goto :goto_0

    :cond_4
    move p1, v3

    :goto_0
    if-lez v2, :cond_5

    .line 280
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr p1, v1

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v2

    sub-int p1, v2, p1

    .line 281
    :goto_1
    iget v2, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 282
    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v3, :cond_6

    sub-int/2addr v2, v0

    goto :goto_2

    :cond_6
    add-int/lit8 v2, v2, -0x1

    .line 287
    :goto_2
    invoke-direct {p0, v2, p1}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 288
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Landroid/widget/GridView;->correctTooLow(III)V

    :goto_3
    return-void
.end method

.method findMotionRow(I)I
    .locals 4

    .line 527
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 530
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 531
    iget-boolean v2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 533
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 534
    iget p0, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr p0, v2

    return p0

    :cond_0
    add-int/2addr v2, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 539
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt p1, v2, :cond_2

    .line 540
    iget p0, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr p0, v0

    return p0

    :cond_2
    sub-int/2addr v0, v1

    goto :goto_1

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method fullScroll(I)Z
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x21

    if-ne p1, v3, :cond_0

    .line 1797
    iput v0, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1798
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1799
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    goto :goto_0

    :cond_0
    const/16 v3, 0x82

    if-ne p1, v3, :cond_1

    .line 1802
    iput v0, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1803
    iget p1, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr p1, v2

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1804
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    .line 1809
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    :cond_2
    return v2
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    .line 2348
    const-class p0, Landroid/widget/GridView;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 0

    .line 65
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    return-object p0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 0

    .line 175
    iget-object p0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    return-object p0
.end method

.method public getColumnWidth()I
    .locals 0

    .line 2188
    iget p0, p0, Landroid/widget/GridView;->mColumnWidth:I

    return p0
.end method

.method public getGravity()I
    .locals 0

    .line 2052
    iget p0, p0, Landroid/widget/GridView;->mGravity:I

    return p0
.end method

.method public getHorizontalSpacing()I
    .locals 0

    .line 2087
    iget p0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    return p0
.end method

.method public getNumColumns()I
    .locals 0
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 2232
    iget p0, p0, Landroid/widget/GridView;->mNumColumns:I

    return p0
.end method

.method public getRequestedColumnWidth()I
    .locals 0

    .line 2205
    iget p0, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    return p0
.end method

.method public getRequestedHorizontalSpacing()I
    .locals 0

    .line 2107
    iget p0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    return p0
.end method

.method public getStretchMode()I
    .locals 0

    .line 2158
    iget p0, p0, Landroid/widget/GridView;->mStretchMode:I

    return p0
.end method

.method public getVerticalSpacing()I
    .locals 0

    .line 2138
    iget p0, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    return p0
.end method

.method protected layoutChildren()V
    .locals 19

    move-object/from16 v1, p0

    .line 1161
    iget-boolean v2, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    const/4 v0, 0x1

    if-nez v2, :cond_0

    .line 1163
    iput-boolean v0, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    :cond_0
    const/4 v3, 0x0

    .line 1167
    :try_start_0
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 1169
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invalidate()V

    .line 1171
    iget-object v4, v1, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_2

    .line 1172
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->resetList()V

    .line 1173
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_1

    .line 1408
    iput-boolean v3, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    :cond_1
    return-void

    .line 1177
    :cond_2
    :try_start_1
    iget-object v4, v1, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 1178
    iget v5, v1, Landroid/widget/GridView;->mBottom:I

    iget v6, v1, Landroid/widget/GridView;->mTop:I

    sub-int/2addr v5, v6

    iget-object v6, v1, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    .line 1180
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v6

    .line 1190
    iget v7, v1, Landroid/widget/GridView;->mLayoutMode:I

    packed-switch v7, :pswitch_data_0

    .line 1209
    iget v7, v1, Landroid/widget/GridView;->mSelectedPosition:I

    goto :goto_2

    .line 1203
    :pswitch_0
    iget v7, v1, Landroid/widget/GridView;->mNextSelectedPosition:I

    if-ltz v7, :cond_3

    .line 1204
    iget v7, v1, Landroid/widget/GridView;->mNextSelectedPosition:I

    iget v9, v1, Landroid/widget/GridView;->mSelectedPosition:I

    sub-int/2addr v7, v9

    move v9, v7

    goto :goto_0

    .line 1192
    :pswitch_1
    iget v7, v1, Landroid/widget/GridView;->mNextSelectedPosition:I

    iget v9, v1, Landroid/widget/GridView;->mFirstPosition:I

    sub-int/2addr v7, v9

    if-ltz v7, :cond_3

    if-ge v7, v6, :cond_3

    .line 1194
    invoke-virtual {v1, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move v9, v3

    goto :goto_1

    :cond_3
    :pswitch_2
    move v9, v3

    :goto_0
    const/4 v7, 0x0

    :goto_1
    const/4 v10, 0x0

    const/4 v11, 0x0

    goto :goto_4

    .line 1209
    :goto_2
    iget v9, v1, Landroid/widget/GridView;->mFirstPosition:I

    sub-int/2addr v7, v9

    if-ltz v7, :cond_4

    if-ge v7, v6, :cond_4

    .line 1211
    invoke-virtual {v1, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    .line 1215
    :goto_3
    invoke-virtual {v1, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v10, v7

    move-object v11, v9

    const/4 v7, 0x0

    move v9, v3

    .line 1218
    :goto_4
    iget-boolean v12, v1, Landroid/widget/GridView;->mDataChanged:Z

    if-eqz v12, :cond_5

    .line 1220
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->handleDataChanged()V

    .line 1225
    :cond_5
    iget v13, v1, Landroid/widget/GridView;->mItemCount:I

    if-nez v13, :cond_7

    .line 1226
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->resetList()V

    .line 1227
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_6

    .line 1408
    iput-boolean v3, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    :cond_6
    return-void

    .line 1231
    :cond_7
    :try_start_2
    iget v13, v1, Landroid/widget/GridView;->mNextSelectedPosition:I

    invoke-virtual {v1, v13}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 1240
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v13

    if-eqz v13, :cond_a

    .line 1242
    invoke-virtual {v13}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v15

    if-eqz v15, :cond_a

    .line 1244
    invoke-virtual {v1, v15}, Landroid/widget/GridView;->getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_a

    if-eqz v12, :cond_9

    .line 1246
    invoke-virtual {v8}, Landroid/view/View;->hasTransientState()Z

    move-result v16

    if-nez v16, :cond_9

    iget-boolean v14, v1, Landroid/widget/GridView;->mAdapterHasStableIds:Z

    if-eqz v14, :cond_8

    goto :goto_5

    :cond_8
    const/4 v14, 0x0

    const/4 v15, 0x0

    goto :goto_6

    .line 1252
    :cond_9
    :goto_5
    invoke-virtual {v13}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v14

    .line 1256
    :goto_6
    invoke-virtual {v1, v8}, Landroid/widget/GridView;->getPositionForView(Landroid/view/View;)I

    move-result v8

    goto :goto_7

    :cond_a
    const/4 v8, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 1263
    :goto_7
    iget v3, v1, Landroid/widget/GridView;->mFirstPosition:I

    .line 1264
    iget-object v0, v1, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v12, :cond_c

    const/4 v12, 0x0

    :goto_8
    if-ge v12, v6, :cond_b

    move/from16 v17, v2

    .line 1268
    :try_start_3
    invoke-virtual {v1, v12}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move/from16 v18, v8

    add-int v8, v3, v12

    invoke-virtual {v0, v2, v8}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    add-int/lit8 v12, v12, 0x1

    move/from16 v2, v17

    move/from16 v8, v18

    goto :goto_8

    :cond_b
    move/from16 v17, v2

    move/from16 v18, v8

    goto :goto_9

    :cond_c
    move/from16 v17, v2

    move/from16 v18, v8

    .line 1271
    invoke-virtual {v0, v6, v3}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1275
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->detachAllViewsFromParent()V

    .line 1276
    invoke-virtual {v0}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 1278
    iget v2, v1, Landroid/widget/GridView;->mLayoutMode:I

    packed-switch v2, :pswitch_data_1

    if-nez v6, :cond_13

    .line 1307
    iget-boolean v2, v1, Landroid/widget/GridView;->mStackFromBottom:Z

    goto :goto_a

    .line 1303
    :pswitch_3
    invoke-direct {v1, v9, v4, v5}, Landroid/widget/GridView;->moveSelection(III)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_11

    .line 1299
    :pswitch_4
    iget v2, v1, Landroid/widget/GridView;->mSyncPosition:I

    iget v3, v1, Landroid/widget/GridView;->mSpecificTop:I

    invoke-direct {v1, v2, v3}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_11

    .line 1296
    :pswitch_5
    iget v2, v1, Landroid/widget/GridView;->mSelectedPosition:I

    iget v3, v1, Landroid/widget/GridView;->mSpecificTop:I

    invoke-direct {v1, v2, v3}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_11

    .line 1292
    :pswitch_6
    iget v2, v1, Landroid/widget/GridView;->mItemCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-direct {v1, v2, v5}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v2

    .line 1293
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    goto/16 :goto_11

    :pswitch_7
    if-eqz v7, :cond_d

    .line 1281
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-direct {v1, v2, v4, v5}, Landroid/widget/GridView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_11

    .line 1283
    :cond_d
    invoke-direct {v1, v4, v5}, Landroid/widget/GridView;->fillSelection(II)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_11

    :pswitch_8
    const/4 v2, 0x0

    .line 1287
    iput v2, v1, Landroid/widget/GridView;->mFirstPosition:I

    .line 1288
    invoke-direct {v1, v4}, Landroid/widget/GridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v2

    .line 1289
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    goto/16 :goto_11

    :goto_a
    if-nez v2, :cond_10

    .line 1308
    iget-object v2, v1, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_b

    :cond_e
    const/4 v2, 0x0

    goto :goto_c

    :cond_f
    :goto_b
    const/4 v2, -0x1

    :goto_c
    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 1310
    invoke-direct {v1, v4}, Landroid/widget/GridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v2

    goto :goto_11

    .line 1312
    :cond_10
    iget v2, v1, Landroid/widget/GridView;->mItemCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 1313
    iget-object v3, v1, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_d

    :cond_11
    move v3, v2

    goto :goto_e

    :cond_12
    :goto_d
    const/4 v3, -0x1

    :goto_e
    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 1315
    invoke-direct {v1, v2, v5}, Landroid/widget/GridView;->fillFromBottom(II)Landroid/view/View;

    move-result-object v2

    goto :goto_11

    .line 1318
    :cond_13
    iget v2, v1, Landroid/widget/GridView;->mSelectedPosition:I

    if-ltz v2, :cond_15

    iget v2, v1, Landroid/widget/GridView;->mSelectedPosition:I

    iget v3, v1, Landroid/widget/GridView;->mItemCount:I

    if-ge v2, v3, :cond_15

    .line 1319
    iget v2, v1, Landroid/widget/GridView;->mSelectedPosition:I

    if-nez v10, :cond_14

    goto :goto_f

    .line 1320
    :cond_14
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1319
    :goto_f
    invoke-direct {v1, v2, v4}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    goto :goto_11

    .line 1321
    :cond_15
    iget v2, v1, Landroid/widget/GridView;->mFirstPosition:I

    iget v3, v1, Landroid/widget/GridView;->mItemCount:I

    if-ge v2, v3, :cond_17

    .line 1322
    iget v2, v1, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v11, :cond_16

    goto :goto_10

    .line 1323
    :cond_16
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1322
    :goto_10
    invoke-direct {v1, v2, v4}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    goto :goto_11

    :cond_17
    const/4 v2, 0x0

    .line 1325
    invoke-direct {v1, v2, v4}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 1332
    :goto_11
    invoke-virtual {v0}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    if-eqz v2, :cond_18

    const/4 v0, -0x1

    .line 1335
    invoke-virtual {v1, v0, v2}, Landroid/widget/GridView;->positionSelector(ILandroid/view/View;)V

    .line 1336
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, v1, Landroid/widget/GridView;->mSelectedTop:I

    goto :goto_13

    .line 1338
    :cond_18
    iget v0, v1, Landroid/widget/GridView;->mTouchMode:I

    if-lez v0, :cond_19

    iget v0, v1, Landroid/widget/GridView;->mTouchMode:I

    const/4 v2, 0x3

    if-ge v0, v2, :cond_19

    const/4 v0, 0x1

    goto :goto_12

    :cond_19
    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_1a

    .line 1342
    iget v0, v1, Landroid/widget/GridView;->mMotionPosition:I

    iget v2, v1, Landroid/widget/GridView;->mFirstPosition:I

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1344
    iget v2, v1, Landroid/widget/GridView;->mMotionPosition:I

    invoke-virtual {v1, v2, v0}, Landroid/widget/GridView;->positionSelector(ILandroid/view/View;)V

    goto :goto_13

    .line 1346
    :cond_1a
    iget v0, v1, Landroid/widget/GridView;->mSelectedPosition:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1b

    .line 1350
    iget v0, v1, Landroid/widget/GridView;->mSelectorPosition:I

    iget v2, v1, Landroid/widget/GridView;->mFirstPosition:I

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1352
    iget v2, v1, Landroid/widget/GridView;->mSelectorPosition:I

    invoke-virtual {v1, v2, v0}, Landroid/widget/GridView;->positionSelector(ILandroid/view/View;)V

    goto :goto_13

    :cond_1b
    const/4 v2, 0x0

    .line 1356
    iput v2, v1, Landroid/widget/GridView;->mSelectedTop:I

    .line 1357
    iget-object v0, v1, Landroid/widget/GridView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :cond_1c
    :goto_13
    if-eqz v13, :cond_1f

    .line 1363
    invoke-virtual {v13}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1f

    if-eqz v15, :cond_1e

    .line 1366
    invoke-virtual {v15}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1368
    invoke-virtual {v15}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    if-eqz v14, :cond_1d

    if-eqz v0, :cond_1d

    .line 1371
    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v2

    .line 1370
    invoke-static {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v2

    const/16 v3, 0x40

    const/4 v4, 0x0

    .line 1372
    invoke-virtual {v0, v2, v3, v4}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_14

    .line 1375
    :cond_1d
    invoke-virtual {v15}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto :goto_14

    :cond_1e
    move/from16 v8, v18

    const/4 v0, -0x1

    if-eq v8, v0, :cond_1f

    .line 1379
    iget v0, v1, Landroid/widget/GridView;->mFirstPosition:I

    sub-int/2addr v8, v0

    .line 1381
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    const/4 v2, 0x0

    .line 1379
    invoke-static {v8, v2, v0}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    .line 1382
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 1384
    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    :cond_1f
    :goto_14
    const/4 v2, 0x0

    .line 1390
    iput v2, v1, Landroid/widget/GridView;->mLayoutMode:I

    .line 1391
    iput-boolean v2, v1, Landroid/widget/GridView;->mDataChanged:Z

    .line 1392
    iget-object v0, v1, Landroid/widget/GridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    if-eqz v0, :cond_20

    .line 1393
    iget-object v0, v1, Landroid/widget/GridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 1394
    iput-object v0, v1, Landroid/widget/GridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    :cond_20
    const/4 v2, 0x0

    .line 1396
    iput-boolean v2, v1, Landroid/widget/GridView;->mNeedSync:Z

    .line 1397
    iget v0, v1, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    .line 1399
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->updateScrollIndicators()V

    .line 1401
    iget v0, v1, Landroid/widget/GridView;->mItemCount:I

    if-lez v0, :cond_21

    .line 1402
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    .line 1405
    :cond_21
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v17, :cond_22

    const/4 v2, 0x0

    .line 1408
    iput-boolean v2, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    :cond_22
    return-void

    :catchall_0
    move-exception v0

    goto :goto_15

    :catchall_1
    move-exception v0

    move/from16 v17, v2

    :goto_15
    if-nez v17, :cond_23

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    :cond_23
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 1

    .line 240
    iget-object p2, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v0, -0x1

    if-eqz p2, :cond_3

    .line 241
    invoke-virtual {p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    if-ltz p1, :cond_2

    .line 245
    iget p0, p0, Landroid/widget/GridView;->mItemCount:I

    if-lt p1, p0, :cond_1

    goto :goto_0

    :cond_1
    return p1

    :cond_2
    :goto_0
    return v0

    :cond_3
    :goto_1
    return v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 5

    .line 1943
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    .line 1947
    iget p1, p0, Landroid/widget/GridView;->mScrollX:I

    iget v1, p0, Landroid/widget/GridView;->mScrollY:I

    invoke-virtual {p3, p1, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1951
    iget-object p1, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    const v1, 0x7fffffff

    .line 1953
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 1956
    invoke-direct {p0, v3, p2}, Landroid/widget/GridView;->isCandidateSelection(II)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 1960
    :cond_0
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1961
    invoke-virtual {v4, p1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1962
    invoke-virtual {p0, v4, p1}, Landroid/widget/GridView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1963
    invoke-static {p3, p1, p2}, Landroid/widget/GridView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v4

    if-ge v4, v1, :cond_1

    move v0, v3

    move v1, v4

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-ltz v0, :cond_3

    .line 1973
    iget p1, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_2

    .line 1975
    :cond_3
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    :goto_2
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 11

    .line 2397
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2399
    invoke-virtual {p0}, Landroid/widget/GridView;->getCount()I

    move-result v0

    .line 2400
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v1

    .line 2401
    div-int v2, v0, v1

    .line 2405
    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 2406
    rem-int v0, p2, v1

    .line 2407
    div-int v1, p2, v1

    move v7, v0

    move v5, v1

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v4

    sub-int/2addr v0, p2

    add-int/lit8 v3, v1, -0x1

    .line 2411
    rem-int v5, v0, v1

    sub-int/2addr v3, v5

    sub-int/2addr v2, v4

    .line 2412
    div-int/2addr v0, v1

    sub-int v1, v2, v0

    move v5, v1

    move v7, v3

    .line 2415
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/AbsListView$LayoutParams;

    if-eqz p1, :cond_1

    .line 2416
    iget p1, p1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    move v9, v4

    .line 2417
    invoke-virtual {p0, p2}, Landroid/widget/GridView;->isItemChecked(I)Z

    move-result v10

    const/4 v6, 0x1

    const/4 v8, 0x1

    .line 2418
    invoke-static/range {v5 .. v10}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object p0

    .line 2420
    invoke-virtual {p3, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 2354
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2356
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    .line 2357
    invoke-virtual {p0}, Landroid/widget/GridView;->getCount()I

    move-result v1

    div-int/2addr v1, v0

    .line 2358
    invoke-virtual {p0}, Landroid/widget/GridView;->getSelectionModeForAccessibility()I

    move-result p0

    const/4 v2, 0x0

    .line 2359
    invoke-static {v1, v0, v2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p0

    .line 2361
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    if-gtz v0, :cond_0

    if-lez v1, :cond_1

    .line 2364
    :cond_0
    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_TO_POSITION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1634
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1639
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1644
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onMeasure(II)V
    .locals 13

    .line 1045
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    .line 1047
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1048
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1049
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1050
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    if-nez v0, :cond_1

    .line 1053
    iget v2, p0, Landroid/widget/GridView;->mColumnWidth:I

    if-lez v2, :cond_0

    .line 1054
    iget v2, p0, Landroid/widget/GridView;->mColumnWidth:I

    iget-object v4, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v4

    iget-object v4, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v4

    goto :goto_0

    .line 1056
    :cond_0
    iget-object v2, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v4

    .line 1058
    :goto_0
    invoke-virtual {p0}, Landroid/widget/GridView;->getVerticalScrollbarWidth()I

    move-result v4

    add-int/2addr v2, v4

    .line 1061
    :cond_1
    iget-object v4, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v4, v2, v4

    iget-object v5, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    .line 1062
    invoke-direct {p0, v4}, Landroid/widget/GridView;->determineColumns(I)Z

    move-result v4

    .line 1067
    iget-object v5, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v6, 0x0

    if-nez v5, :cond_2

    move v5, v6

    goto :goto_1

    :cond_2
    iget-object v5, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    :goto_1
    iput v5, p0, Landroid/widget/GridView;->mItemCount:I

    .line 1068
    iget v5, p0, Landroid/widget/GridView;->mItemCount:I

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-lez v5, :cond_4

    .line 1070
    iget-object v9, p0, Landroid/widget/GridView;->mIsScrap:[Z

    invoke-virtual {p0, v6, v9}, Landroid/widget/GridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v9

    .line 1072
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/AbsListView$LayoutParams;

    if-nez v10, :cond_3

    .line 1074
    invoke-virtual {p0}, Landroid/widget/GridView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/AbsListView$LayoutParams;

    .line 1075
    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1077
    :cond_3
    iget-object v11, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v11, v6}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v11

    iput v11, v10, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1078
    iget-object v11, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v11, v6}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v11

    iput-boolean v11, v10, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 1079
    iput-boolean v8, v10, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1082
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p2, v6}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result p2

    iget v11, v10, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 1081
    invoke-static {p2, v6, v11}, Landroid/widget/GridView;->getChildMeasureSpec(III)I

    move-result p2

    .line 1084
    iget v11, p0, Landroid/widget/GridView;->mColumnWidth:I

    const/high16 v12, 0x40000000    # 2.0f

    .line 1085
    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    iget v12, v10, Landroid/widget/AbsListView$LayoutParams;->width:I

    .line 1084
    invoke-static {v11, v6, v12}, Landroid/widget/GridView;->getChildMeasureSpec(III)I

    move-result v11

    .line 1086
    invoke-virtual {v9, v11, p2}, Landroid/view/View;->measure(II)V

    .line 1088
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    .line 1089
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredState()I

    move-result v11

    invoke-static {v6, v11}, Landroid/widget/GridView;->combineMeasuredStates(II)I

    .line 1091
    iget-object v11, p0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget v10, v10, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v11, v10}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1092
    iget-object v10, p0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v10, v9, v7}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    goto :goto_2

    :cond_4
    move p2, v6

    :cond_5
    :goto_2
    if-nez v1, :cond_6

    .line 1097
    iget-object v3, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v9

    add-int/2addr v3, p2

    .line 1098
    invoke-virtual {p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v3, v9

    :cond_6
    const/high16 v9, -0x80000000

    if-ne v1, v9, :cond_a

    .line 1102
    iget-object v1, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v10

    .line 1104
    iget v10, p0, Landroid/widget/GridView;->mNumColumns:I

    :cond_7
    if-ge v6, v5, :cond_9

    add-int/2addr v1, p2

    add-int/2addr v6, v10

    if-ge v6, v5, :cond_8

    .line 1108
    iget v11, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int/2addr v1, v11

    :cond_8
    if-lt v1, v3, :cond_7

    goto :goto_3

    :cond_9
    move v3, v1

    :cond_a
    :goto_3
    if-ne v0, v9, :cond_c

    .line 1118
    iget p2, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    if-eq p2, v7, :cond_c

    .line 1119
    iget p2, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    iget v0, p0, Landroid/widget/GridView;->mColumnWidth:I

    mul-int/2addr p2, v0

    iget v0, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    sub-int/2addr v0, v8

    iget v1, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    mul-int/2addr v0, v1

    add-int/2addr p2, v0

    iget-object v0, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, v0

    iget-object v0, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, v0

    if-gt p2, v2, :cond_b

    if-eqz v4, :cond_c

    :cond_b
    const/high16 p2, 0x1000000

    or-int/2addr v2, p2

    .line 1127
    :cond_c
    invoke-virtual {p0, v2, v3}, Landroid/widget/GridView;->setMeasuredDimension(II)V

    .line 1128
    iput p1, p0, Landroid/widget/GridView;->mWidthMeasureSpec:I

    return-void
.end method

.method pageScroll(I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x21

    if-ne p1, v2, :cond_0

    .line 1772
    iget p1, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 v2, 0x82

    if-ne p1, v2, :cond_1

    .line 1774
    iget p1, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr p1, v0

    iget v2, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    if-ltz p1, :cond_2

    .line 1778
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1779
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1780
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    return v0

    :cond_2
    return v1
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 3

    .line 2371
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const v0, 0x1020037

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 2379
    :cond_1
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result p1

    const-string v0, "android.view.accessibility.action.ARGUMENT_ROW_INT"

    const/4 v2, -0x1

    .line 2380
    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    mul-int/2addr p1, p2

    .line 2381
    invoke-virtual {p0}, Landroid/widget/GridView;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-ltz p2, :cond_2

    .line 2385
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->smoothScrollToPosition(I)V

    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method sequenceScroll(I)Z
    .locals 8

    .line 1888
    iget v0, p0, Landroid/widget/GridView;->mSelectedPosition:I

    .line 1889
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 1890
    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    .line 1894
    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    .line 1895
    div-int v3, v0, v1

    mul-int/2addr v3, v1

    add-int/2addr v1, v3

    sub-int/2addr v1, v5

    add-int/lit8 v6, v2, -0x1

    .line 1896
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v7, v3

    move v3, v1

    move v1, v7

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v2, -0x1

    sub-int v6, v3, v0

    .line 1899
    div-int/2addr v6, v1

    mul-int/2addr v6, v1

    sub-int/2addr v3, v6

    sub-int v1, v3, v1

    add-int/2addr v1, v5

    .line 1900
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_0
    const/4 v6, 0x6

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    sub-int/2addr v2, v5

    if-ge v0, v2, :cond_1

    .line 1909
    iput v6, p0, Landroid/widget/GridView;->mLayoutMode:I

    add-int/lit8 v1, v0, 0x1

    .line 1910
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    if-ne v0, v3, :cond_2

    :goto_1
    move v4, v5

    goto :goto_3

    :pswitch_1
    if-lez v0, :cond_1

    .line 1920
    iput v6, p0, Landroid/widget/GridView;->mLayoutMode:I

    add-int/lit8 v2, v0, -0x1

    .line 1921
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->setSelectionInt(I)V

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_1
    :goto_2
    move v5, v4

    :cond_2
    :goto_3
    if-eqz v5, :cond_3

    .line 1930
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->playSoundEffect(I)V

    .line 1931
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    :cond_3
    if-eqz v4, :cond_4

    .line 1935
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    :cond_4
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 65
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 195
    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 199
    :cond_0
    invoke-virtual {p0}, Landroid/widget/GridView;->resetList()V

    .line 200
    iget-object v0, p0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 201
    iput-object p1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v0, -0x1

    .line 203
    iput v0, p0, Landroid/widget/GridView;->mOldSelectedPosition:I

    const-wide/high16 v0, -0x8000000000000000L

    .line 204
    iput-wide v0, p0, Landroid/widget/GridView;->mOldSelectedRowId:J

    .line 207
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 209
    iget-object p1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_2

    .line 210
    iget p1, p0, Landroid/widget/GridView;->mItemCount:I

    iput p1, p0, Landroid/widget/GridView;->mOldItemCount:I

    .line 211
    iget-object p1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result p1

    iput p1, p0, Landroid/widget/GridView;->mItemCount:I

    const/4 p1, 0x1

    .line 212
    iput-boolean p1, p0, Landroid/widget/GridView;->mDataChanged:Z

    .line 213
    invoke-virtual {p0}, Landroid/widget/GridView;->checkFocus()V

    .line 215
    new-instance v0, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 216
    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 218
    iget-object v0, p0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget-object v1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 221
    iget-boolean v0, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 222
    iget v0, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/widget/GridView;->lookForSelectablePosition(IZ)I

    move-result p1

    goto :goto_0

    .line 224
    :cond_1
    invoke-virtual {p0, v1, p1}, Landroid/widget/GridView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 226
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 227
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    .line 228
    invoke-virtual {p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    goto :goto_1

    .line 230
    :cond_2
    invoke-virtual {p0}, Landroid/widget/GridView;->checkFocus()V

    .line 232
    invoke-virtual {p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    .line 235
    :goto_1
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    return-void
.end method

.method public setColumnWidth(I)V
    .locals 1

    .line 2169
    iget v0, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    if-eq p1, v0, :cond_0

    .line 2170
    iput p1, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    .line 2171
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 2038
    iget v0, p0, Landroid/widget/GridView;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 2039
    iput p1, p0, Landroid/widget/GridView;->mGravity:I

    .line 2040
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 1

    .line 2065
    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    if-eq p1, v0, :cond_0

    .line 2066
    iput p1, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    .line 2067
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setNumColumns(I)V
    .locals 1

    .line 2216
    iget v0, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    if-eq p1, v0, :cond_0

    .line 2217
    iput p1, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    .line 2218
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setRemoteViewsAdapterAsync"
    .end annotation

    .line 185
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    return-void
.end method

.method public setSelection(I)V
    .locals 1

    .line 1590
    invoke-virtual {p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1591
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 1593
    :cond_0
    iput p1, p0, Landroid/widget/GridView;->mResurrectToPosition:I

    :goto_0
    const/4 p1, 0x2

    .line 1595
    iput p1, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1596
    iget-object p1, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz p1, :cond_1

    .line 1597
    iget-object p1, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {p1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 1599
    :cond_1
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    return-void
.end method

.method setSelectionInt(I)V
    .locals 2

    .line 1609
    iget v0, p0, Landroid/widget/GridView;->mNextSelectedPosition:I

    .line 1611
    iget-object v1, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_0

    .line 1612
    iget-object v1, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 1615
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    .line 1616
    invoke-virtual {p0}, Landroid/widget/GridView;->layoutChildren()V

    .line 1618
    iget-boolean p1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz p1, :cond_1

    iget p1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 p1, p1, -0x1

    iget v1, p0, Landroid/widget/GridView;->mNextSelectedPosition:I

    sub-int/2addr p1, v1

    goto :goto_0

    .line 1619
    :cond_1
    iget p1, p0, Landroid/widget/GridView;->mNextSelectedPosition:I

    .line 1620
    :goto_0
    iget-boolean v1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v1, :cond_2

    .line 1621
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, v0

    .line 1623
    :cond_2
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int/2addr p1, v1

    .line 1624
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int/2addr v0, v1

    if-eq p1, v0, :cond_3

    .line 1627
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    :cond_3
    return-void
.end method

.method public setStretchMode(I)V
    .locals 1

    .line 2150
    iget v0, p0, Landroid/widget/GridView;->mStretchMode:I

    if-eq p1, v0, :cond_0

    .line 2151
    iput p1, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 2152
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 1

    .line 2122
    iget v0, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    if-eq p1, v0, :cond_0

    .line 2123
    iput p1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 2124
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public smoothScrollByOffset(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 868
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollByOffset(I)V

    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 858
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    return-void
.end method
