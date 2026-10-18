.class public Lcom/android/internal/policy/PipSnapAlgorithm;
.super Ljava/lang/Object;
.source "PipSnapAlgorithm.java"


# static fields
.field private static final CORNER_MAGNET_THRESHOLD:F = 0.3f

.field private static final SNAP_MODE_CORNERS_AND_SIDES:I = 0x1

.field private static final SNAP_MODE_CORNERS_ONLY:I = 0x0

.field private static final SNAP_MODE_EDGE:I = 0x2

.field private static final SNAP_MODE_EDGE_MAGNET_CORNERS:I = 0x3

.field private static final SNAP_MODE_LONG_EDGE_MAGNET_CORNERS:I = 0x4


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDefaultSizePercent:F

.field private final mDefaultSnapMode:I

.field private final mFlingDeceleration:I

.field private mIsMinimized:Z

.field private final mMaxAspectRatioForMinSize:F

.field private final mMinAspectRatioForMinSize:F

.field private final mMinimizedVisibleSize:I

.field private mOrientation:I

.field private final mSnapGravities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSnapMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    const/4 v0, 0x3

    .line 58
    iput v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mDefaultSnapMode:I

    .line 59
    iput v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapMode:I

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mOrientation:I

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 73
    iput-object p1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mContext:Landroid/content/Context;

    const p1, 0x105017c

    .line 74
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMinimizedVisibleSize:I

    const p1, 0x105005c

    .line 76
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    iput p1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mDefaultSizePercent:F

    const p1, 0x105005a

    .line 78
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    iput p1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMaxAspectRatioForMinSize:F

    .line 80
    iget p1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMaxAspectRatioForMinSize:F

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    iput v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMinAspectRatioForMinSize:F

    .line 81
    iget-object p1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x105017b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mFlingDeceleration:I

    .line 83
    invoke-virtual {p0}, Lcom/android/internal/policy/PipSnapAlgorithm;->onConfigurationChanged()V

    return-void
.end method

.method private calculateSnapTargets()V
    .locals 2

    .line 440
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 441
    iget v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapMode:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 443
    :pswitch_1
    iget v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 444
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    :goto_0
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    const/16 v1, 0x53

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    iget-object p0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    const/16 v0, 0x55

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private distanceToPoint(Landroid/graphics/Point;II)F
    .locals 0

    .line 433
    iget p0, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr p0, p2

    int-to-float p0, p0

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr p1, p3

    int-to-float p1, p1

    invoke-static {p0, p1}, Landroid/graphics/PointF;->length(FF)F

    move-result p0

    return p0
.end method

.method private findClosestPoint(II[Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 7

    .line 378
    array-length v0, p3

    const/4 v1, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, p3, v3

    .line 379
    invoke-direct {p0, v4, p1, p2}, Lcom/android/internal/policy/PipSnapAlgorithm;->distanceToPoint(Landroid/graphics/Point;II)F

    move-result v5

    cmpg-float v6, v5, v2

    if-gez v6, :cond_0

    move-object v1, v4

    move v2, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private findX(FFF)I
    .locals 0

    sub-float/2addr p3, p2

    div-float/2addr p3, p1

    float-to-int p0, p3

    return p0
.end method

.method private findY(FFF)I
    .locals 0

    mul-float/2addr p1, p3

    add-float/2addr p1, p2

    float-to-int p0, p1

    return p0
.end method

.method private snapRectToClosestEdge(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7

    .line 394
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 396
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 398
    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 399
    iget-boolean v2, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mIsMinimized:Z

    if-eqz v2, :cond_0

    .line 400
    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    return-void

    .line 405
    :cond_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 406
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 407
    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 408
    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 410
    iget v5, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapMode:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 412
    iget p0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mOrientation:I

    const/4 v5, 0x2

    if-ne p0, v5, :cond_1

    .line 413
    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_0

    .line 414
    :cond_1
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_0

    .line 416
    :cond_2
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    :goto_0
    if-ne p0, v2, :cond_3

    .line 419
    iget p0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3, p0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_1

    :cond_3
    if-ne p0, v3, :cond_4

    .line 421
    iget p0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3, v0, p0}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_1

    :cond_4
    if-ne p0, v4, :cond_5

    .line 423
    iget p0, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p3, p0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_1

    .line 425
    :cond_5
    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p3, v0, p0}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_1
    return-void
.end method


# virtual methods
.method public applyMinimizedOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Rect;)V
    .locals 1

    .line 252
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    if-gt v0, p2, :cond_0

    .line 253
    iget p2, p4, Landroid/graphics/Rect;->left:I

    iget p0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMinimizedVisibleSize:I

    add-int/2addr p2, p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    sub-int/2addr p2, p0

    iget p0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    .line 256
    :cond_0
    iget p2, p3, Landroid/graphics/Point;->x:I

    iget p3, p4, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, p3

    iget p0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMinimizedVisibleSize:I

    sub-int/2addr p2, p0

    iget p0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_0
    return-void
.end method

.method public applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V
    .locals 3

    const/high16 p0, 0x3f800000    # 1.0f

    cmpg-float v0, p3, p0

    if-gez v0, :cond_0

    .line 306
    iget p0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p3, v0

    float-to-int p3, p3

    add-int/2addr p0, p3

    .line 307
    iget p2, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    cmpg-float v1, p3, v0

    if-gez v1, :cond_1

    sub-float/2addr p3, p0

    .line 310
    iget p0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p3, v0

    float-to-int p3, p3

    add-int/2addr p0, p3

    .line 311
    iget p2, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    :cond_1
    const/high16 v1, 0x40400000    # 3.0f

    cmpg-float v2, p3, v1

    if-gez v2, :cond_2

    sub-float/2addr p3, v0

    .line 314
    iget v0, p2, Landroid/graphics/Rect;->left:I

    sub-float/2addr p0, p3

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p0, p3

    float-to-int p0, p0

    add-int/2addr v0, p0

    .line 315
    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    :cond_2
    sub-float/2addr p3, v1

    .line 318
    iget v0, p2, Landroid/graphics/Rect;->top:I

    sub-float/2addr p0, p3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p0, p3

    float-to-int p0, p0

    add-int/2addr v0, p0

    .line 319
    iget p0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p2, Lcom/android/internal/policy/PipSnapAlgorithm;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 468
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mSnapMode="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapMode:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 469
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mOrientation="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mOrientation:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 470
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mMinimizedVisibleSize="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMinimizedVisibleSize:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 471
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mIsMinimized="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mIsMinimized:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public findClosestSnapBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 12

    .line 207
    new-instance v7, Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 208
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 209
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 210
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 211
    iget v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapMode:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    iget v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapMode:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 229
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 231
    invoke-direct {p0, p2, p1, v8}, Lcom/android/internal/policy/PipSnapAlgorithm;->snapRectToClosestEdge(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_3

    .line 234
    :cond_1
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 235
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v9, v0, [Landroid/graphics/Point;

    move v10, v1

    .line 236
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_2

    .line 237
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v7

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 239
    new-instance v0, Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    aput-object v0, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 241
    :cond_2
    iget p1, p2, Landroid/graphics/Rect;->left:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, p1, p2, v9}, Lcom/android/internal/policy/PipSnapAlgorithm;->findClosestPoint(II[Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p0

    .line 242
    iget p1, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {v8, p1, p0}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_3

    .line 213
    :cond_3
    :goto_1
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 214
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v10, v0, [Landroid/graphics/Point;

    move v11, v1

    .line 215
    :goto_2
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v11, v0, :cond_4

    .line 216
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v7

    move-object v6, v9

    invoke-static/range {v0 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 218
    new-instance v0, Landroid/graphics/Point;

    iget v1, v9, Landroid/graphics/Rect;->left:I

    iget v2, v9, Landroid/graphics/Rect;->top:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    aput-object v0, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 220
    :cond_4
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v0, v1, v10}, Lcom/android/internal/policy/PipSnapAlgorithm;->findClosestPoint(II[Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 221
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/policy/PipSnapAlgorithm;->distanceToPoint(Landroid/graphics/Point;II)F

    move-result v1

    .line 222
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    .line 225
    iget p0, v0, Landroid/graphics/Point;->x:I

    iget p1, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v8, p0, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_3

    .line 227
    :cond_5
    invoke-direct {p0, p2, p1, v8}, Lcom/android/internal/policy/PipSnapAlgorithm;->snapRectToClosestEdge(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_3
    return-object v8
.end method

.method public findClosestSnapBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;FFLandroid/graphics/Point;)Landroid/graphics/Rect;
    .locals 7

    .line 110
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 111
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/policy/PipSnapAlgorithm;->getEdgeIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;FFLandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p2

    .line 113
    iget p3, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, p3, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 114
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PipSnapAlgorithm;->findClosestSnapBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getEdgeIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;FFLandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    .line 124
    iget v6, v0, Lcom/android/internal/policy/PipSnapAlgorithm;->mOrientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 125
    :goto_0
    iget v8, v1, Landroid/graphics/Rect;->left:I

    .line 126
    iget v9, v1, Landroid/graphics/Rect;->top:I

    div-float v10, v4, v3

    int-to-float v11, v9

    int-to-float v12, v8

    mul-float/2addr v12, v10

    sub-float/2addr v11, v12

    .line 133
    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12}, Landroid/graphics/Point;-><init>()V

    .line 135
    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13}, Landroid/graphics/Point;-><init>()V

    const/4 v14, 0x0

    cmpl-float v15, v3, v14

    if-lez v15, :cond_1

    .line 138
    iget v7, v2, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_1
    iget v7, v2, Landroid/graphics/Rect;->left:I

    :goto_1
    iput v7, v12, Landroid/graphics/Point;->x:I

    .line 140
    iget v7, v12, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    invoke-direct {v0, v10, v11, v7}, Lcom/android/internal/policy/PipSnapAlgorithm;->findY(FFF)I

    move-result v7

    iput v7, v12, Landroid/graphics/Point;->y:I

    cmpl-float v7, v4, v14

    if-lez v7, :cond_2

    .line 143
    iget v14, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_2
    iget v14, v2, Landroid/graphics/Rect;->top:I

    :goto_2
    iput v14, v13, Landroid/graphics/Point;->y:I

    .line 145
    iget v14, v13, Landroid/graphics/Point;->y:I

    int-to-float v14, v14

    invoke-direct {v0, v10, v11, v14}, Lcom/android/internal/policy/PipSnapAlgorithm;->findX(FFF)I

    move-result v10

    iput v10, v13, Landroid/graphics/Point;->x:I

    if-eqz v6, :cond_4

    if-lez v15, :cond_3

    .line 152
    iget v10, v2, Landroid/graphics/Rect;->right:I

    iget v11, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    goto :goto_3

    .line 153
    :cond_3
    iget v10, v1, Landroid/graphics/Rect;->left:I

    iget v11, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    goto :goto_3

    :cond_4
    if-lez v7, :cond_5

    .line 156
    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    iget v11, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    goto :goto_3

    .line 157
    :cond_5
    iget v10, v1, Landroid/graphics/Rect;->top:I

    iget v11, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    :goto_3
    const-wide/16 v16, 0x0

    if-lez v10, :cond_e

    if-eqz v6, :cond_6

    .line 161
    iget v5, v5, Landroid/graphics/Point;->y:I

    goto :goto_4

    :cond_6
    iget v5, v5, Landroid/graphics/Point;->x:I

    :goto_4
    if-eqz v6, :cond_7

    .line 162
    iget v11, v13, Landroid/graphics/Point;->y:I

    goto :goto_5

    :cond_7
    iget v11, v13, Landroid/graphics/Point;->x:I

    .line 163
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    if-ge v5, v2, :cond_8

    if-lt v11, v2, :cond_9

    :cond_8
    if-le v5, v2, :cond_e

    if-le v11, v2, :cond_e

    :cond_9
    if-eqz v6, :cond_a

    float-to-double v2, v3

    goto :goto_6

    :cond_a
    float-to-double v2, v4

    :goto_6
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 168
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double v2, v16, v2

    double-to-int v2, v2

    iget v0, v0, Lcom/android/internal/policy/PipSnapAlgorithm;->mFlingDeceleration:I

    const/4 v3, 0x2

    mul-int/2addr v0, v3

    div-int/2addr v2, v0

    .line 170
    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-eqz v6, :cond_c

    .line 173
    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-lez v15, :cond_b

    goto :goto_7

    :cond_b
    neg-int v0, v0

    :goto_7
    add-int/2addr v1, v0

    iput v1, v13, Landroid/graphics/Point;->x:I

    goto :goto_9

    .line 175
    :cond_c
    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-lez v7, :cond_d

    goto :goto_8

    :cond_d
    neg-int v0, v0

    :goto_8
    add-int/2addr v1, v0

    iput v1, v13, Landroid/graphics/Point;->y:I

    :goto_9
    return-object v13

    .line 181
    :cond_e
    iget v0, v12, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v8

    int-to-double v0, v0

    iget v2, v12, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v9

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    .line 182
    iget v2, v13, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v8

    int-to-double v2, v2

    iget v4, v13, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v9

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    cmpl-double v4, v0, v16

    if-nez v4, :cond_f

    return-object v13

    :cond_f
    cmpl-double v4, v2, v16

    if-nez v4, :cond_10

    return-object v12

    .line 191
    :cond_10
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_11

    move-object v12, v13

    :cond_11
    return-object v12
.end method

.method public getMovementBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 2

    .line 330
    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 331
    iget p0, p2, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->right:I

    .line 332
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    .line 331
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, p3, Landroid/graphics/Rect;->right:I

    .line 333
    iget p0, p2, Landroid/graphics/Rect;->top:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 334
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    sub-int/2addr p2, p1

    .line 333
    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, p3, Landroid/graphics/Rect;->bottom:I

    .line 335
    iget p0, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p4

    iput p0, p3, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public getSizeForAspectRatio(FFII)Landroid/util/Size;
    .locals 1

    .line 344
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    int-to-float p3, p3

    .line 345
    iget p4, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mDefaultSizePercent:F

    mul-float/2addr p3, p4

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    float-to-int p2, p2

    .line 349
    iget p3, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMinAspectRatioForMinSize:F

    cmpg-float p3, p1, p3

    const/high16 p4, 0x3f800000    # 1.0f

    if-lez p3, :cond_1

    iget p3, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMaxAspectRatioForMinSize:F

    cmpl-float p3, p1, p3

    if-lez p3, :cond_0

    goto :goto_0

    .line 363
    :cond_0
    iget p0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMaxAspectRatioForMinSize:F

    int-to-float p2, p2

    mul-float/2addr p0, p2

    .line 364
    invoke-static {p0, p2}, Landroid/graphics/PointF;->length(FF)F

    move-result p0

    mul-float/2addr p0, p0

    mul-float p2, p1, p1

    add-float/2addr p2, p4

    div-float/2addr p0, p2

    float-to-double p2, p0

    .line 365
    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    move-result-wide p2

    long-to-int p2, p2

    int-to-float p0, p2

    mul-float/2addr p0, p1

    .line 367
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    cmpg-float p0, p1, p4

    if-gtz p0, :cond_2

    int-to-float p0, p2

    div-float/2addr p0, p1

    .line 354
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    move v0, p2

    move p2, p0

    move p0, v0

    goto :goto_1

    :cond_2
    int-to-float p0, p2

    mul-float/2addr p0, p1

    .line 358
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 369
    :goto_1
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, p0, p2}, Landroid/util/Size;-><init>(II)V

    return-object p1
.end method

.method public getSnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 4

    .line 275
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 276
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/PipSnapAlgorithm;->snapRectToClosestEdge(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 277
    iget p0, v0, Landroid/graphics/Rect;->left:I

    iget p1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, p1

    int-to-float p0, p0

    .line 278
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p0, p1

    .line 279
    iget p1, v0, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    .line 280
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    .line 281
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    if-ne v1, v2, :cond_0

    return p0

    .line 283
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    const/high16 v3, 0x3f800000    # 1.0f

    if-ne v1, v2, :cond_1

    add-float/2addr p1, v3

    return p1

    .line 285
    :cond_1
    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    if-ne v0, p2, :cond_2

    const/high16 p1, 0x40000000    # 2.0f

    sub-float/2addr v3, p0

    add-float/2addr v3, p1

    return v3

    :cond_2
    const/high16 p0, 0x40400000    # 3.0f

    sub-float/2addr v3, p1

    add-float/2addr v3, p0

    return v3
.end method

.method public onConfigurationChanged()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mOrientation:I

    const v1, 0x10e0081

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapMode:I

    .line 93
    invoke-direct {p0}, Lcom/android/internal/policy/PipSnapAlgorithm;->calculateSnapTargets()V

    return-void
.end method

.method public setMinimized(Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mIsMinimized:Z

    return-void
.end method
