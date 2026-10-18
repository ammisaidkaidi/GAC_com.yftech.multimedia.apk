.class public Landroid/widget/TableRow;
.super Landroid/widget/LinearLayout;
.source "TableRow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TableRow$ChildrenTracker;,
        Landroid/widget/TableRow$LayoutParams;
    }
.end annotation


# instance fields
.field private mChildrenTracker:Landroid/widget/TableRow$ChildrenTracker;

.field private mColumnToChildIndex:Landroid/util/SparseIntArray;

.field private mColumnWidths:[I

.field private mConstrainedColumnWidths:[I

.field private mNumColumns:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 47
    iput p1, p0, Landroid/widget/TableRow;->mNumColumns:I

    .line 61
    invoke-direct {p0}, Landroid/widget/TableRow;->initTableRow()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 47
    iput p1, p0, Landroid/widget/TableRow;->mNumColumns:I

    .line 73
    invoke-direct {p0}, Landroid/widget/TableRow;->initTableRow()V

    return-void
.end method

.method static synthetic access$302(Landroid/widget/TableRow;Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;
    .locals 0

    .line 46
    iput-object p1, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    return-object p1
.end method

.method private initTableRow()V
    .locals 3

    .line 77
    iget-object v0, p0, Landroid/widget/TableRow;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 78
    new-instance v1, Landroid/widget/TableRow$ChildrenTracker;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/TableRow$ChildrenTracker;-><init>(Landroid/widget/TableRow;Landroid/widget/TableRow$1;)V

    iput-object v1, p0, Landroid/widget/TableRow;->mChildrenTracker:Landroid/widget/TableRow$ChildrenTracker;

    if-eqz v0, :cond_0

    .line 80
    iget-object v1, p0, Landroid/widget/TableRow;->mChildrenTracker:Landroid/widget/TableRow$ChildrenTracker;

    invoke-static {v1, v0}, Landroid/widget/TableRow$ChildrenTracker;->access$100(Landroid/widget/TableRow$ChildrenTracker;Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 82
    :cond_0
    iget-object v0, p0, Landroid/widget/TableRow;->mChildrenTracker:Landroid/widget/TableRow$ChildrenTracker;

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method private mapIndexAndColumns()V
    .locals 8

    .line 154
    iget-object v0, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    if-nez v0, :cond_3

    .line 156
    invoke-virtual {p0}, Landroid/widget/TableRow;->getChildCount()I

    move-result v0

    .line 158
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    .line 159
    iget-object v1, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_2

    .line 162
    invoke-virtual {p0, v3}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 163
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/TableRow$LayoutParams;

    .line 165
    iget v6, v5, Landroid/widget/TableRow$LayoutParams;->column:I

    if-lt v6, v4, :cond_0

    .line 166
    iget v4, v5, Landroid/widget/TableRow$LayoutParams;->column:I

    :cond_0
    move v6, v4

    move v4, v2

    .line 169
    :goto_1
    iget v7, v5, Landroid/widget/TableRow$LayoutParams;->span:I

    if-ge v4, v7, :cond_1

    add-int/lit8 v7, v6, 0x1

    .line 170
    invoke-virtual {v1, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v4, v4, 0x1

    move v6, v7

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_0

    .line 174
    :cond_2
    iput v4, p0, Landroid/widget/TableRow;->mNumColumns:I

    :cond_3
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 372
    instance-of p0, p1, Landroid/widget/TableRow$LayoutParams;

    return p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 46
    invoke-virtual {p0}, Landroid/widget/TableRow;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 364
    new-instance p0, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {p0}, Landroid/widget/TableRow$LayoutParams;-><init>()V

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Landroid/widget/TableRow;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableRow$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Landroid/widget/TableRow;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Landroid/widget/TableRow;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableRow$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 380
    new-instance p0, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {p0, p1}, Landroid/widget/TableRow$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableRow$LayoutParams;
    .locals 1

    .line 354
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/TableRow;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/widget/TableRow$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    .line 385
    const-class p0, Landroid/widget/TableRow;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .locals 0

    .line 256
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/TableRow$LayoutParams;

    .line 259
    iget p0, p0, Landroid/widget/TableRow$LayoutParams;->span:I

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method getColumnsWidths(II)[I
    .locals 8

    .line 288
    invoke-virtual {p0}, Landroid/widget/TableRow;->getVirtualChildCount()I

    move-result v0

    .line 289
    iget-object v1, p0, Landroid/widget/TableRow;->mColumnWidths:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TableRow;->mColumnWidths:[I

    array-length v1, v1

    if-eq v0, v1, :cond_1

    .line 290
    :cond_0
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/TableRow;->mColumnWidths:[I

    .line 293
    :cond_1
    iget-object v1, p0, Landroid/widget/TableRow;->mColumnWidths:[I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    .line 296
    invoke-virtual {p0, v3}, Landroid/widget/TableRow;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 297
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_3

    .line 298
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/TableRow$LayoutParams;

    .line 299
    iget v6, v5, Landroid/widget/TableRow$LayoutParams;->span:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 301
    iget v6, v5, Landroid/widget/TableRow$LayoutParams;->width:I

    packed-switch v6, :pswitch_data_0

    .line 311
    iget v6, v5, Landroid/widget/TableRow$LayoutParams;->width:I

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_1

    .line 307
    :pswitch_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 306
    invoke-static {v6, v2}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v6

    goto :goto_1

    :pswitch_1
    const/4 v6, -0x2

    .line 303
    invoke-static {p1, v2, v6}, Landroid/widget/TableRow;->getChildMeasureSpec(III)I

    move-result v6

    .line 313
    :goto_1
    invoke-virtual {v4, v6, v6}, Landroid/view/View;->measure(II)V

    .line 315
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget v6, v5, Landroid/widget/TableRow$LayoutParams;->leftMargin:I

    add-int/2addr v4, v6

    iget v5, v5, Landroid/widget/TableRow$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 317
    aput v4, v1, v3

    goto :goto_2

    .line 319
    :cond_2
    aput v2, v1, v3

    goto :goto_2

    .line 322
    :cond_3
    aput v2, v1, v3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getLocationOffset(Landroid/view/View;)I
    .locals 0

    .line 267
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/TableRow$LayoutParams;

    invoke-static {p0}, Landroid/widget/TableRow$LayoutParams;->access$200(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object p0

    const/4 p1, 0x0

    aget p0, p0, p1

    return p0
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .locals 0

    .line 275
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/TableRow$LayoutParams;

    invoke-static {p0}, Landroid/widget/TableRow$LayoutParams;->access$200(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object p0

    const/4 p1, 0x1

    aget p0, p0, p1

    return p0
.end method

.method public getVirtualChildAt(I)Landroid/view/View;
    .locals 2

    .line 130
    iget-object v0, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 131
    invoke-direct {p0}, Landroid/widget/TableRow;->mapIndexAndColumns()V

    .line 134
    :cond_0
    iget-object v0, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-eq p1, v1, :cond_1

    .line 136
    invoke-virtual {p0, p1}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVirtualChildCount()I
    .locals 1

    .line 147
    iget-object v0, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 148
    invoke-direct {p0}, Landroid/widget/TableRow;->mapIndexAndColumns()V

    .line 150
    :cond_0
    iget p0, p0, Landroid/widget/TableRow;->mNumColumns:I

    return p0
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 6

    .line 193
    iget-object v0, p0, Landroid/widget/TableRow;->mConstrainedColumnWidths:[I

    if-eqz v0, :cond_5

    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/TableRow$LayoutParams;

    const/high16 p4, 0x40000000    # 2.0f

    .line 199
    iget v0, p3, Landroid/widget/TableRow$LayoutParams;->span:I

    .line 200
    iget-object v1, p0, Landroid/widget/TableRow;->mConstrainedColumnWidths:[I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_0

    add-int v5, p2, v3

    .line 202
    aget v5, v1, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 205
    :cond_0
    iget p2, p3, Landroid/widget/TableRow$LayoutParams;->gravity:I

    .line 206
    invoke-static {p2}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 p4, -0x80000000

    .line 215
    :cond_1
    iget v1, p3, Landroid/widget/TableRow$LayoutParams;->leftMargin:I

    sub-int v1, v4, v1

    iget v3, p3, Landroid/widget/TableRow$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v3

    .line 216
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 215
    invoke-static {v1, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p4

    .line 218
    iget v1, p0, Landroid/widget/TableRow;->mPaddingTop:I

    iget v3, p0, Landroid/widget/TableRow;->mPaddingBottom:I

    add-int/2addr v1, v3

    iget v3, p3, Landroid/widget/TableRow$LayoutParams;->topMargin:I

    add-int/2addr v1, v3

    iget v3, p3, Landroid/widget/TableRow$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v3

    add-int/2addr v1, p6

    iget p6, p3, Landroid/widget/TableRow$LayoutParams;->height:I

    invoke-static {p5, v1, p6}, Landroid/widget/TableRow;->getChildMeasureSpec(III)I

    move-result p5

    .line 222
    invoke-virtual {p1, p4, p5}, Landroid/view/View;->measure(II)V

    const/4 p4, 0x1

    if-eqz v0, :cond_4

    .line 225
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    .line 226
    invoke-static {p3}, Landroid/widget/TableRow$LayoutParams;->access$200(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object p5

    sub-int/2addr v4, p1

    aput v4, p5, p4

    .line 228
    invoke-virtual {p0}, Landroid/widget/TableRow;->getLayoutDirection()I

    move-result p0

    .line 229
    invoke-static {p2, p0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p0

    and-int/lit8 p0, p0, 0x7

    if-eq p0, p4, :cond_3

    const/4 p1, 0x3

    if-eq p0, p1, :cond_6

    const/4 p1, 0x5

    if-eq p0, p1, :cond_2

    goto :goto_1

    .line 235
    :cond_2
    invoke-static {p3}, Landroid/widget/TableRow$LayoutParams;->access$200(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object p0

    invoke-static {p3}, Landroid/widget/TableRow$LayoutParams;->access$200(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object p1

    aget p1, p1, p4

    aput p1, p0, v2

    goto :goto_1

    .line 238
    :cond_3
    invoke-static {p3}, Landroid/widget/TableRow$LayoutParams;->access$200(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object p0

    invoke-static {p3}, Landroid/widget/TableRow$LayoutParams;->access$200(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object p1

    aget p1, p1, p4

    div-int/lit8 p1, p1, 0x2

    aput p1, p0, v2

    goto :goto_1

    .line 242
    :cond_4
    invoke-static {p3}, Landroid/widget/TableRow$LayoutParams;->access$200(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object p0

    invoke-static {p3}, Landroid/widget/TableRow$LayoutParams;->access$200(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object p1

    aput v2, p1, p4

    aput v2, p0, v2

    goto :goto_1

    .line 246
    :cond_5
    invoke-super/range {p0 .. p6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    :cond_6
    :goto_1
    return-void
.end method

.method measureNullChild(I)I
    .locals 0

    .line 183
    iget-object p0, p0, Landroid/widget/TableRow;->mConstrainedColumnWidths:[I

    aget p0, p0, p1

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 122
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/TableRow;->layoutHorizontal(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 113
    invoke-virtual {p0, p1, p2}, Landroid/widget/TableRow;->measureHorizontal(II)V

    return-void
.end method

.method setColumnCollapsed(IZ)V
    .locals 0

    .line 101
    invoke-virtual {p0, p1}, Landroid/widget/TableRow;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 103
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method setColumnsWidthConstraints([I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 341
    array-length v0, p1

    invoke-virtual {p0}, Landroid/widget/TableRow;->getVirtualChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 346
    iput-object p1, p0, Landroid/widget/TableRow;->mConstrainedColumnWidths:[I

    return-void

    .line 342
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "columnWidths should be >= getVirtualChildCount()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0

    .line 90
    iget-object p0, p0, Landroid/widget/TableRow;->mChildrenTracker:Landroid/widget/TableRow$ChildrenTracker;

    invoke-static {p0, p1}, Landroid/widget/TableRow$ChildrenTracker;->access$100(Landroid/widget/TableRow$ChildrenTracker;Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method
