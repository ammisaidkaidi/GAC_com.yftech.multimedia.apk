.class public abstract Landroid/view/FrameStats;
.super Ljava/lang/Object;
.source "FrameStats.java"


# static fields
.field public static final UNDEFINED_TIME_NANO:J = -0x1L


# instance fields
.field protected mFramesPresentedTimeNano:[J

.field protected mRefreshPeriodNano:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEndTimeNano()J
    .locals 3

    .line 78
    invoke-virtual {p0}, Landroid/view/FrameStats;->getFrameCount()I

    move-result v0

    if-gtz v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 81
    :cond_0
    iget-object v0, p0, Landroid/view/FrameStats;->mFramesPresentedTimeNano:[J

    iget-object p0, p0, Landroid/view/FrameStats;->mFramesPresentedTimeNano:[J

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    aget-wide v1, v0, p0

    return-wide v1
.end method

.method public final getFrameCount()I
    .locals 1

    .line 50
    iget-object v0, p0, Landroid/view/FrameStats;->mFramesPresentedTimeNano:[J

    if-eqz v0, :cond_0

    .line 51
    iget-object p0, p0, Landroid/view/FrameStats;->mFramesPresentedTimeNano:[J

    array-length p0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getFramePresentedTimeNano(I)J
    .locals 2

    .line 92
    iget-object v0, p0, Landroid/view/FrameStats;->mFramesPresentedTimeNano:[J

    if-eqz v0, :cond_0

    .line 95
    iget-object p0, p0, Landroid/view/FrameStats;->mFramesPresentedTimeNano:[J

    aget-wide v0, p0, p1

    return-wide v0

    .line 93
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public final getRefreshPeriodNano()J
    .locals 2

    .line 41
    iget-wide v0, p0, Landroid/view/FrameStats;->mRefreshPeriodNano:J

    return-wide v0
.end method

.method public final getStartTimeNano()J
    .locals 2

    .line 63
    invoke-virtual {p0}, Landroid/view/FrameStats;->getFrameCount()I

    move-result v0

    if-gtz v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 66
    :cond_0
    iget-object p0, p0, Landroid/view/FrameStats;->mFramesPresentedTimeNano:[J

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    return-wide v0
.end method
