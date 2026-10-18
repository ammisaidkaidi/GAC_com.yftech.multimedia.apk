.class public Lcom/yftech/car/widget/media/photo/photoview/scrollerproxy/PreGingerScroller;
.super Lcom/yftech/car/widget/media/photo/photoview/scrollerproxy/ScrollerProxy;
.source "PreGingerScroller.java"


# instance fields
.field private final mScroller:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/yftech/car/widget/media/photo/photoview/scrollerproxy/ScrollerProxy;-><init>()V

    .line 26
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/photo/photoview/scrollerproxy/PreGingerScroller;->mScroller:Landroid/widget/Scroller;

    return-void
.end method


# virtual methods
.method public computeScrollOffset()Z
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/scrollerproxy/PreGingerScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result p0

    return p0
.end method

.method public fling(IIIIIIIIII)V
    .locals 9

    move-object v0, p0

    .line 37
    iget-object v0, v0, Lcom/yftech/car/widget/media/photo/photoview/scrollerproxy/PreGingerScroller;->mScroller:Landroid/widget/Scroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    return-void
.end method

.method public forceFinished(Z)V
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/scrollerproxy/PreGingerScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0, p1}, Landroid/widget/Scroller;->forceFinished(Z)V

    return-void
.end method

.method public getCurrX()I
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/scrollerproxy/PreGingerScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/Scroller;->getCurrX()I

    move-result p0

    return p0
.end method

.method public getCurrY()I
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/scrollerproxy/PreGingerScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/Scroller;->getCurrY()I

    move-result p0

    return p0
.end method

.method public isFinished()Z
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/scrollerproxy/PreGingerScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/Scroller;->isFinished()Z

    move-result p0

    return p0
.end method
