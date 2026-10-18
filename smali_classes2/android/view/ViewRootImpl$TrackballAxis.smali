.class final Landroid/view/ViewRootImpl$TrackballAxis;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TrackballAxis"
.end annotation


# static fields
.field static final ACCEL_MOVE_SCALING_FACTOR:F = 0.025f

.field static final FAST_MOVE_TIME:J = 0x96L

.field static final FIRST_MOVEMENT_THRESHOLD:F = 0.5f

.field static final MAX_ACCELERATION:F = 20.0f

.field static final SECOND_CUMULATIVE_MOVEMENT_THRESHOLD:F = 2.0f

.field static final SUBSEQUENT_INCREMENTAL_MOVEMENT_THRESHOLD:F = 1.0f


# instance fields
.field acceleration:F

.field dir:I

.field lastMoveTime:J

.field nonAccelMovement:I

.field position:F

.field step:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 5425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5451
    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    const-wide/16 v0, 0x0

    .line 5452
    iput-wide v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    return-void
.end method


# virtual methods
.method collect(FJLjava/lang/String;)F
    .locals 8

    const/4 p4, 0x0

    cmpl-float v0, p1, p4

    const/4 v1, 0x0

    const/high16 v2, 0x43160000    # 150.0f

    const-wide/16 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-lez v0, :cond_1

    mul-float/2addr v2, p1

    float-to-long v6, v2

    .line 5479
    iget v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    if-gez v0, :cond_0

    .line 5481
    iput p4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 5482
    iput v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 5483
    iput v5, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 5484
    iput-wide v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    :cond_0
    const/4 p4, 0x1

    .line 5486
    iput p4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    goto :goto_0

    :cond_1
    cmpg-float v0, p1, p4

    if-gez v0, :cond_3

    neg-float v0, p1

    mul-float/2addr v0, v2

    float-to-long v6, v0

    .line 5489
    iget v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    if-lez v0, :cond_2

    .line 5491
    iput p4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 5492
    iput v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 5493
    iput v5, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 5494
    iput-wide v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    :cond_2
    const/4 p4, -0x1

    .line 5496
    iput p4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    goto :goto_0

    :cond_3
    move-wide v6, v3

    :goto_0
    cmp-long p4, v6, v3

    if-lez p4, :cond_9

    .line 5505
    iget-wide v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    sub-long v0, p2, v0

    .line 5506
    iput-wide p2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 5507
    iget p2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    cmp-long p3, v0, v6

    const p4, 0x3ccccccd    # 0.025f

    if-gez p3, :cond_6

    sub-long/2addr v6, v0

    long-to-float p3, v6

    mul-float/2addr p3, p4

    cmpl-float p4, p3, v5

    if-lez p4, :cond_4

    mul-float/2addr p2, p3

    :cond_4
    const/high16 p3, 0x41a00000    # 20.0f

    cmpg-float p4, p2, p3

    if-gez p4, :cond_5

    goto :goto_1

    :cond_5
    move p2, p3

    .line 5515
    :goto_1
    iput p2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    goto :goto_3

    :cond_6
    sub-long/2addr v0, v6

    long-to-float p3, v0

    mul-float/2addr p3, p4

    cmpl-float p4, p3, v5

    if-lez p4, :cond_7

    div-float/2addr p2, p3

    :cond_7
    cmpl-float p3, p2, v5

    if-lez p3, :cond_8

    goto :goto_2

    :cond_8
    move p2, v5

    .line 5523
    :goto_2
    iput p2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 5526
    :cond_9
    :goto_3
    iget p2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    add-float/2addr p2, p1

    iput p2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 5527
    iget p0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0
.end method

.method generate()I
    .locals 5

    const/4 v0, 0x0

    .line 5540
    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    .line 5542
    :goto_0
    iget v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v2, 0x1

    if-ltz v1, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    const/4 v1, -0x1

    .line 5543
    :goto_1
    iget v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    packed-switch v3, :pswitch_data_0

    .line 5575
    iget v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    return v0

    .line 5559
    :pswitch_0
    iget v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    return v0

    :cond_1
    add-int/2addr v0, v1

    .line 5563
    iget v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    .line 5564
    iget v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    int-to-float v1, v1

    mul-float/2addr v1, v3

    sub-float/2addr v2, v1

    iput v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    const/4 v1, 0x2

    .line 5565
    iput v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    goto :goto_0

    .line 5548
    :pswitch_1
    iget v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    return v0

    :cond_2
    add-int/2addr v0, v1

    .line 5552
    iget v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    add-int/2addr v3, v1

    iput v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    .line 5553
    iput v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    goto :goto_0

    :cond_3
    add-int/2addr v0, v1

    .line 5579
    iget v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    int-to-float v1, v1

    mul-float/2addr v1, v3

    sub-float/2addr v2, v1

    iput v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 5580
    iget v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    const v2, 0x3f8ccccd    # 1.1f

    mul-float/2addr v1, v2

    const/high16 v2, 0x41a00000    # 20.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_4

    goto :goto_2

    .line 5582
    :cond_4
    iget v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    :goto_2
    iput v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method reset(I)V
    .locals 2

    const/4 v0, 0x0

    .line 5458
    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5459
    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    const-wide/16 v0, 0x0

    .line 5460
    iput-wide v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 5461
    iput p1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    const/4 p1, 0x0

    .line 5462
    iput p1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    return-void
.end method
