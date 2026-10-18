.class public Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;
.super Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final INVALID_SPAN_ID:I = -0x1


# instance fields
.field mSpanIndex:I

.field mSpanSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1404
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    const/4 p1, -0x1

    .line 1395
    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    const/4 p1, 0x0

    .line 1397
    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1400
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 1395
    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    const/4 p1, 0x0

    .line 1397
    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1412
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, -0x1

    .line 1395
    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    const/4 p1, 0x0

    .line 1397
    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 1408
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, -0x1

    .line 1395
    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    const/4 p1, 0x0

    .line 1397
    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    return-void
.end method

.method public constructor <init>(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;)V
    .locals 0

    .line 1416
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;)V

    const/4 p1, -0x1

    .line 1395
    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    const/4 p1, 0x0

    .line 1397
    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    return-void
.end method


# virtual methods
.method public getSpanIndex()I
    .locals 0

    .line 1434
    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    return p0
.end method

.method public getSpanSize()I
    .locals 0

    .line 1444
    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    return p0
.end method
