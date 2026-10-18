.class public final Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;
.super Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultSpanSizeLookup"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1368
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanIndex(II)I
    .locals 0

    .line 1377
    rem-int/2addr p1, p2

    return p1
.end method

.method public getSpanSize(I)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
