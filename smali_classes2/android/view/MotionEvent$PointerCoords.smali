.class public final Landroid/view/MotionEvent$PointerCoords;
.super Ljava/lang/Object;
.source "MotionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/MotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PointerCoords"
.end annotation


# static fields
.field private static final INITIAL_PACKED_AXIS_VALUES:I = 0x8


# instance fields
.field private mPackedAxisBits:J

.field private mPackedAxisValues:[F

.field public orientation:F

.field public pressure:F

.field public size:F

.field public toolMajor:F

.field public toolMinor:F

.field public touchMajor:F

.field public touchMinor:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/MotionEvent$PointerCoords;)V
    .locals 0

    .line 3485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3486
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent$PointerCoords;->copyFrom(Landroid/view/MotionEvent$PointerCoords;)V

    return-void
.end method

.method public static createArray(I)[Landroid/view/MotionEvent$PointerCoords;
    .locals 3

    .line 3491
    new-array v0, p0, [Landroid/view/MotionEvent$PointerCoords;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 3493
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 3598
    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    const/4 v0, 0x0

    .line 3600
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3601
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 3602
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 3603
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 3604
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 3605
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 3606
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 3607
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 3608
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    return-void
.end method

.method public copyFrom(Landroid/view/MotionEvent$PointerCoords;)V
    .locals 4

    .line 3617
    iget-wide v0, p1, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3618
    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 3620
    iget-object v2, p1, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3621
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    .line 3622
    iget-object v1, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    if-eqz v1, :cond_0

    .line 3623
    array-length v3, v1

    if-le v0, v3, :cond_1

    .line 3624
    :cond_0
    array-length v1, v2

    new-array v1, v1, [F

    .line 3625
    iput-object v1, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    :cond_1
    const/4 v3, 0x0

    .line 3627
    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3630
    :cond_2
    iget v0, p1, Landroid/view/MotionEvent$PointerCoords;->x:F

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3631
    iget v0, p1, Landroid/view/MotionEvent$PointerCoords;->y:F

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 3632
    iget v0, p1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 3633
    iget v0, p1, Landroid/view/MotionEvent$PointerCoords;->size:F

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 3634
    iget v0, p1, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 3635
    iget v0, p1, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 3636
    iget v0, p1, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 3637
    iget v0, p1, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 3638
    iget p1, p1, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    iput p1, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    return-void
.end method

.method public getAxisValue(I)F
    .locals 6

    packed-switch p1, :pswitch_data_0

    if-ltz p1, :cond_1

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_1

    .line 3674
    iget-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    const-wide/high16 v2, -0x8000000000000000L

    ushr-long/2addr v2, p1

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3669
    :pswitch_0
    iget p0, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    return p0

    .line 3667
    :pswitch_1
    iget p0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    return p0

    .line 3665
    :pswitch_2
    iget p0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    return p0

    .line 3663
    :pswitch_3
    iget p0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    return p0

    .line 3661
    :pswitch_4
    iget p0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    return p0

    .line 3659
    :pswitch_5
    iget p0, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    return p0

    .line 3657
    :pswitch_6
    iget p0, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    return p0

    .line 3655
    :pswitch_7
    iget p0, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    return p0

    .line 3653
    :pswitch_8
    iget p0, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    return p0

    :cond_0
    const-wide/16 v2, -0x1

    ushr-long/2addr v2, p1

    not-long v2, v2

    and-long/2addr v0, v2

    .line 3679
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result p1

    .line 3680
    iget-object p0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    aget p0, p0, p1

    return p0

    .line 3672
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Axis out of range."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAxisValue(IF)V
    .locals 9

    packed-switch p1, :pswitch_data_0

    if-ltz p1, :cond_4

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_4

    .line 3727
    iget-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    const-wide/high16 v2, -0x8000000000000000L

    ushr-long/2addr v2, p1

    const-wide/16 v4, -0x1

    ushr-long/2addr v4, p1

    not-long v4, v4

    and-long/2addr v4, v0

    .line 3729
    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    move-result p1

    .line 3730
    iget-object v4, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    and-long v5, v0, v2

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_3

    if-nez v4, :cond_0

    const/16 v4, 0x8

    .line 3733
    new-array v4, v4, [F

    .line 3734
    iput-object v4, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    goto :goto_0

    .line 3721
    :pswitch_0
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    goto :goto_1

    .line 3718
    :pswitch_1
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    goto :goto_1

    .line 3715
    :pswitch_2
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    goto :goto_1

    .line 3712
    :pswitch_3
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    goto :goto_1

    .line 3709
    :pswitch_4
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    goto :goto_1

    .line 3706
    :pswitch_5
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    goto :goto_1

    .line 3703
    :pswitch_6
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    goto :goto_1

    .line 3700
    :pswitch_7
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    goto :goto_1

    .line 3697
    :pswitch_8
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    goto :goto_1

    .line 3736
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v5

    .line 3737
    array-length v6, v4

    if-ge v5, v6, :cond_1

    if-eq p1, v5, :cond_2

    add-int/lit8 v6, p1, 0x1

    sub-int/2addr v5, p1

    .line 3739
    invoke-static {v4, p1, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    mul-int/lit8 v6, v5, 0x2

    .line 3743
    new-array v6, v6, [F

    const/4 v7, 0x0

    .line 3744
    invoke-static {v4, v7, v6, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, p1, 0x1

    sub-int/2addr v5, p1

    .line 3745
    invoke-static {v4, p1, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3748
    iput-object v6, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    move-object v4, v6

    :cond_2
    :goto_0
    or-long/2addr v0, v2

    .line 3751
    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3753
    :cond_3
    aput p2, v4, p1

    :goto_1
    return-void

    .line 3725
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Axis out of range."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
