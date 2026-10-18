.class public final Landroid/widget/Editor$SelectionHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SelectionHandleView"
.end annotation


# instance fields
.field private final mHandleType:I

.field private mInWord:Z

.field private mLanguageDirectionChanged:Z

.field private mPrevX:F

.field private final mTextViewEdgeSlop:F

.field private final mTextViewLocation:[I

.field private mTouchWordDelta:F

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V
    .locals 6

    .line 5245
    iput-object p1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 5246
    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILandroid/widget/Editor$1;)V

    const/4 p2, 0x0

    .line 5231
    iput-boolean p2, p0, Landroid/widget/Editor$SelectionHandleView;->mInWord:Z

    .line 5237
    iput-boolean p2, p0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    const/4 p2, 0x2

    .line 5242
    new-array p2, p2, [I

    iput-object p2, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    .line 5247
    iput p5, p0, Landroid/widget/Editor$SelectionHandleView;->mHandleType:I

    .line 5248
    invoke-static {p1}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 5249
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    int-to-float p1, p1

    iput p1, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    return-void
.end method

.method private getHorizontal(Landroid/text/Layout;IZ)F
    .locals 2

    .line 5557
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p0

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    move p3, p2

    goto :goto_0

    :cond_0
    add-int/lit8 p3, p2, -0x1

    .line 5558
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 5559
    :goto_0
    invoke-virtual {p1, p3}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result p3

    .line 5560
    invoke-virtual {p1, p0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-ne p3, v0, :cond_2

    .line 5562
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result p0

    goto :goto_1

    :cond_2
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result p0

    :goto_1
    return p0
.end method

.method private isStartHandle()Z
    .locals 0

    .line 5253
    iget p0, p0, Landroid/widget/Editor$SelectionHandleView;->mHandleType:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private positionAndAdjustForCrossingHandles(IZ)V
    .locals 6

    .line 5498
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 5499
    :goto_0
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-ge p1, v0, :cond_2

    .line 5500
    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v1

    if-nez v1, :cond_8

    if-gt p1, v0, :cond_8

    :cond_2
    const/4 v1, 0x0

    .line 5501
    iput v1, p0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 5502
    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-eqz v1, :cond_7

    if-eq p1, v0, :cond_7

    .line 5504
    invoke-virtual {p0, v1, p1}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result p1

    .line 5506
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 5505
    invoke-direct {p0, v1, v0, v3}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;IZ)F

    move-result v3

    .line 5507
    iget v4, p0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    invoke-virtual {p0, v1, v4}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v4

    cmpg-float v5, v4, v3

    if-gez v5, :cond_3

    cmpg-float v5, p1, v3

    if-ltz v5, :cond_4

    :cond_3
    cmpl-float v4, v4, v3

    if-lez v4, :cond_7

    cmpl-float p1, p1, v3

    if-lez p1, :cond_7

    .line 5512
    :cond_4
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->getCurrentCursorOffset()I

    move-result p1

    .line 5513
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 p1, p1, -0x1

    .line 5514
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 5515
    :goto_1
    invoke-virtual {v1, p1}, Landroid/text/Layout;->getRunRange(I)J

    move-result-wide v0

    .line 5516
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 5517
    invoke-static {v0, v1}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result p1

    goto :goto_2

    .line 5519
    :cond_6
    invoke-static {v0, v1}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result p1

    .line 5521
    :goto_2
    invoke-virtual {p0, p1, v2, p2}, Landroid/widget/Editor$SelectionHandleView;->positionAtCursorOffset(IZZ)V

    return-void

    .line 5526
    :cond_7
    iget-object p1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Editor;->access$7400(Landroid/widget/Editor;IZ)I

    move-result p1

    .line 5528
    :cond_8
    invoke-virtual {p0, p1, v2, p2}, Landroid/widget/Editor$SelectionHandleView;->positionAtCursorOffset(IZZ)V

    return-void
.end method

.method private positionNearEdgeOfScrollingView(FZ)Z
    .locals 3

    .line 5532
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 5534
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_1

    .line 5535
    iget-object p2, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    aget p2, p2, v2

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    add-int/2addr p2, v0

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 5536
    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    .line 5537
    iget p0, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    sub-float/2addr p2, p0

    cmpl-float p0, p1, p2

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    .line 5539
    :cond_1
    iget-object p2, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    aget p2, p2, v2

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    add-int/2addr p2, v0

    int-to-float p2, p2

    .line 5540
    iget p0, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    add-float/2addr p2, p0

    cmpg-float p0, p1, p2

    if-gez p0, :cond_0

    :goto_0
    return v1
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .locals 1

    .line 5272
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {p0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {p0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getHorizontal(Landroid/text/Layout;I)F
    .locals 1

    .line 5553
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;IZ)F

    move-result p0

    return p0
.end method

.method protected getHorizontalGravity(Z)I
    .locals 0

    .line 5267
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    const/4 p0, 0x5

    :goto_0
    return p0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 0

    .line 5258
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result p0

    if-ne p2, p0, :cond_0

    .line 5259
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x4

    return p0

    .line 5261
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    mul-int/lit8 p0, p0, 0x3

    div-int/lit8 p0, p0, 0x4

    return p0
.end method

.method protected getMagnifierHandleTrigger()I
    .locals 0

    .line 5591
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method protected getOffsetAtCoordinate(Landroid/text/Layout;IF)I
    .locals 6

    .line 5567
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result p3

    const/4 v0, 0x1

    .line 5568
    invoke-virtual {p1, p2, p3, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    move-result v1

    .line 5569
    invoke-virtual {p1, v1}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    .line 5572
    invoke-virtual {p1, p2, p3, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    move-result p3

    .line 5573
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->getCurrentCursorOffset()I

    move-result v3

    sub-int v4, v1, v3

    .line 5574
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v5, p3, v3

    .line 5575
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v4, v5, :cond_1

    return v1

    :cond_1
    if-le v4, v5, :cond_2

    return p3

    .line 5581
    :cond_2
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v3, -0x1

    .line 5582
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 5583
    :goto_0
    invoke-virtual {p1, v3}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result p0

    .line 5584
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_4

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    if-ne p0, v0, :cond_5

    move p3, v1

    :cond_5
    return p3
.end method

.method protected isAtRtlRun(Landroid/text/Layout;I)Z
    .locals 0

    .line 5547
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, -0x1

    const/4 p0, 0x0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 5548
    :goto_0
    invoke-virtual {p1, p2}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 5472
    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 5474
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 5484
    :pswitch_0
    invoke-virtual {p0, p1}, Landroid/widget/Editor$SelectionHandleView;->updateMagnifier(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 5489
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->dismissMagnifier()V

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x0

    .line 5478
    iput v1, p0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    const/high16 v1, -0x40800000    # -1.0f

    .line 5479
    iput v1, p0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    .line 5480
    invoke-virtual {p0, p1}, Landroid/widget/Editor$SelectionHandleView;->updateMagnifier(Landroid/view/MotionEvent;)V

    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected positionAtCursorOffset(IZZ)V
    .locals 0

    .line 5466
    invoke-super {p0, p1, p2, p3}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZZ)V

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 5467
    iget-object p2, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {p2}, Landroid/widget/Editor;->access$7300(Landroid/widget/Editor;)Landroid/text/method/WordIterator;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/text/method/WordIterator;->isBoundary(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroid/widget/Editor$SelectionHandleView;->mInWord:Z

    return-void
.end method

.method protected updatePosition(FFZ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 5292
    iget-object v4, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    if-nez v4, :cond_0

    .line 5296
    iget-object v4, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v1

    invoke-direct {v0, v1, v3}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    return-void

    .line 5301
    :cond_0
    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 5302
    iget-object v5, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v5

    iput v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    .line 5307
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    goto :goto_0

    :cond_2
    iget-object v5, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    .line 5308
    :goto_0
    iget-object v7, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    iget v8, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    invoke-static {v7, v4, v8, v2}, Landroid/widget/Editor;->access$6900(Landroid/widget/Editor;Landroid/text/Layout;IF)I

    move-result v2

    .line 5309
    invoke-virtual {v0, v4, v2, v1}, Landroid/widget/Editor$SelectionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    move-result v7

    .line 5311
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v8

    if-eqz v8, :cond_3

    if-ge v7, v5, :cond_4

    .line 5312
    :cond_3
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v8

    if-nez v8, :cond_5

    if-gt v7, v5, :cond_5

    .line 5315
    :cond_4
    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 5316
    invoke-virtual {v0, v4, v2, v1}, Landroid/widget/Editor$SelectionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    move-result v7

    .line 5320
    :cond_5
    iget-object v5, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5, v7}, Landroid/widget/Editor;->access$7100(Landroid/widget/Editor;I)I

    move-result v5

    .line 5321
    iget-object v8, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v8, v7}, Landroid/widget/Editor;->access$7200(Landroid/widget/Editor;I)I

    move-result v8

    .line 5323
    iget v9, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    const/high16 v10, -0x40800000    # -1.0f

    cmpl-float v9, v9, v10

    if-nez v9, :cond_6

    .line 5324
    iput v1, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    .line 5327
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->getCurrentCursorOffset()I

    move-result v9

    .line 5328
    invoke-virtual {v0, v4, v9}, Landroid/widget/Editor$SelectionHandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v10

    .line 5329
    invoke-virtual {v0, v4, v7}, Landroid/widget/Editor$SelectionHandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v11

    .line 5330
    invoke-virtual {v4, v7}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-nez v12, :cond_34

    if-eqz v10, :cond_7

    if-eqz v11, :cond_34

    :cond_7
    if-nez v10, :cond_8

    if-eqz v11, :cond_8

    goto/16 :goto_11

    .line 5342
    :cond_8
    iget-boolean v10, v0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    const/4 v15, 0x0

    if-eqz v10, :cond_9

    if-nez v12, :cond_9

    .line 5345
    invoke-direct {v0, v7, v3}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    .line 5346
    iput v13, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 5347
    iput-boolean v15, v0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    return-void

    .line 5352
    :cond_9
    iget v10, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    sub-float v10, v1, v10

    .line 5353
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 5354
    iget v12, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    if-ge v2, v12, :cond_a

    :goto_1
    move v12, v14

    goto :goto_2

    :cond_a
    move v12, v15

    goto :goto_2

    .line 5356
    :cond_b
    iget v12, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    if-le v2, v12, :cond_a

    goto :goto_1

    .line 5358
    :goto_2
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v6

    if-ne v11, v6, :cond_d

    cmpl-float v6, v10, v13

    if-lez v6, :cond_c

    move v6, v14

    goto :goto_3

    :cond_c
    move v6, v15

    :goto_3
    or-int/2addr v6, v12

    goto :goto_5

    :cond_d
    cmpg-float v6, v10, v13

    if-gez v6, :cond_e

    move v6, v14

    goto :goto_4

    :cond_e
    move v6, v15

    :goto_4
    or-int/2addr v6, v12

    .line 5364
    :goto_5
    iget-object v10, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    move-result v10

    if-eqz v10, :cond_16

    .line 5365
    invoke-direct {v0, v1, v11}, Landroid/widget/Editor$SelectionHandleView;->positionNearEdgeOfScrollingView(FZ)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 5366
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v10

    if-eqz v10, :cond_f

    iget-object v10, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getScrollX()I

    move-result v10

    if-nez v10, :cond_11

    .line 5367
    :cond_f
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v10

    if-nez v10, :cond_16

    iget-object v10, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 5368
    invoke-static {v10}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    if-eqz v11, :cond_10

    const/4 v12, -0x1

    goto :goto_6

    :cond_10
    move v12, v14

    :goto_6
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->canScrollHorizontally(I)Z

    move-result v10

    if-eqz v10, :cond_16

    :cond_11
    if-eqz v6, :cond_13

    .line 5369
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v10

    if-eqz v10, :cond_12

    if-lt v7, v9, :cond_14

    .line 5370
    :cond_12
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v10

    if-nez v10, :cond_13

    if-gt v7, v9, :cond_14

    :cond_13
    if-nez v6, :cond_16

    .line 5375
    :cond_14
    iput v13, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 5376
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v1

    if-ne v11, v1, :cond_15

    .line 5377
    iget v1, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    invoke-virtual {v4, v1}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v1

    goto :goto_7

    .line 5378
    :cond_15
    iget v1, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    invoke-virtual {v4, v1}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v1

    .line 5379
    :goto_7
    invoke-direct {v0, v1, v3}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    return-void

    :cond_16
    if-eqz v6, :cond_26

    .line 5386
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v6

    if-eqz v6, :cond_17

    move v6, v8

    goto :goto_8

    :cond_17
    move v6, v5

    .line 5387
    :goto_8
    iget-boolean v9, v0, Landroid/widget/Editor$SelectionHandleView;->mInWord:Z

    if-eqz v9, :cond_19

    .line 5388
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v9

    if-eqz v9, :cond_18

    iget v9, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-ge v2, v9, :cond_1a

    goto :goto_9

    :cond_18
    iget v9, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-le v2, v9, :cond_1a

    .line 5389
    :cond_19
    :goto_9
    invoke-virtual {v0, v4, v6}, Landroid/widget/Editor$SelectionHandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v9

    if-ne v11, v9, :cond_1a

    move v15, v14

    :cond_1a
    if-eqz v15, :cond_21

    .line 5394
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    if-eq v9, v2, :cond_1c

    .line 5395
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 5396
    invoke-virtual {v4, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v6

    goto :goto_a

    :cond_1b
    invoke-virtual {v4, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v6

    .line 5398
    :cond_1c
    :goto_a
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v9

    if-eqz v9, :cond_1d

    sub-int v6, v5, v6

    .line 5399
    div-int/lit8 v6, v6, 0x2

    sub-int v6, v5, v6

    goto :goto_b

    :cond_1d
    sub-int/2addr v6, v8

    .line 5400
    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v8

    .line 5401
    :goto_b
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v9

    if-eqz v9, :cond_1f

    if-le v7, v6, :cond_1e

    iget v9, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-ge v2, v9, :cond_1f

    :cond_1e
    move v5, v8

    goto :goto_c

    .line 5406
    :cond_1f
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v8

    if-nez v8, :cond_20

    if-ge v7, v6, :cond_22

    iget v6, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-le v2, v6, :cond_20

    goto :goto_c

    .line 5412
    :cond_20
    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    goto :goto_c

    :cond_21
    move v5, v7

    .line 5415
    :cond_22
    :goto_c
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v6

    if-eqz v6, :cond_23

    if-lt v5, v7, :cond_24

    .line 5416
    :cond_23
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v6

    if-nez v6, :cond_25

    if-le v5, v7, :cond_25

    .line 5417
    :cond_24
    invoke-virtual {v0, v4, v5}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v4

    .line 5418
    iget-object v6, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 5419
    invoke-static {v6}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v6

    sub-float/2addr v6, v4

    iput v6, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    goto :goto_d

    .line 5421
    :cond_25
    iput v13, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    :goto_d
    move v7, v5

    goto/16 :goto_10

    .line 5425
    :cond_26
    iget v6, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    sub-float v6, v1, v6

    .line 5426
    invoke-virtual {v0, v4, v2, v6}, Landroid/widget/Editor$SelectionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    move-result v6

    .line 5427
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v9

    if-eqz v9, :cond_29

    .line 5428
    iget v9, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    if-gt v6, v9, :cond_28

    iget v9, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-le v2, v9, :cond_27

    goto :goto_e

    :cond_27
    move v9, v15

    goto :goto_f

    :cond_28
    :goto_e
    move v9, v14

    goto :goto_f

    .line 5429
    :cond_29
    iget v9, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    if-lt v6, v9, :cond_28

    iget v9, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-ge v2, v9, :cond_27

    goto :goto_e

    :goto_f
    if-eqz v9, :cond_2f

    .line 5432
    iget v9, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-eq v2, v9, :cond_2e

    .line 5434
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v6

    if-eqz v6, :cond_2a

    move v5, v8

    .line 5435
    :cond_2a
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v6

    if-eqz v6, :cond_2b

    if-lt v5, v7, :cond_2c

    .line 5436
    :cond_2b
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v6

    if-nez v6, :cond_2d

    if-le v5, v7, :cond_2d

    .line 5437
    :cond_2c
    invoke-virtual {v0, v4, v5}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v4

    .line 5438
    iget-object v6, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 5439
    invoke-static {v6}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v6

    sub-float/2addr v6, v4

    iput v6, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    goto :goto_d

    .line 5441
    :cond_2d
    iput v13, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    goto :goto_d

    :cond_2e
    move v7, v6

    goto :goto_10

    .line 5447
    :cond_2f
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-eqz v5, :cond_30

    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    if-lt v6, v5, :cond_31

    .line 5448
    :cond_30
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-nez v5, :cond_32

    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    if-le v6, v5, :cond_32

    .line 5451
    :cond_31
    iget-object v5, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v5

    iget v6, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    .line 5452
    invoke-virtual {v0, v4, v6}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v4

    sub-float/2addr v5, v4

    iput v5, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    :cond_32
    move v14, v15

    :goto_10
    if-eqz v14, :cond_33

    .line 5457
    iput v2, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    .line 5458
    invoke-direct {v0, v7, v3}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    .line 5460
    :cond_33
    iput v1, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    return-void

    .line 5338
    :cond_34
    :goto_11
    iput-boolean v14, v0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    .line 5339
    iput v13, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 5340
    invoke-direct {v0, v7, v3}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    return-void
.end method

.method protected updateSelection(I)V
    .locals 2

    .line 5277
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5278
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 5279
    invoke-static {v1}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 5278
    invoke-static {v0, p1, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0

    .line 5281
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 5282
    invoke-static {v1}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 5281
    invoke-static {v0, v1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 5284
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->updateDrawable()V

    .line 5285
    iget-object p1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {p1}, Landroid/widget/Editor;->access$500(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5286
    iget-object p0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {p0}, Landroid/widget/Editor;->access$7000(Landroid/widget/Editor;)V

    :cond_1
    return-void
.end method
