.class public final Landroid/view/VelocityTracker;
.super Ljava/lang/Object;
.source "VelocityTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/VelocityTracker$Estimator;
    }
.end annotation


# static fields
.field private static final ACTIVE_POINTER_ID:I = -0x1

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/view/VelocityTracker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mPtr:J

.field private final mStrategy:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-static {p1}, Landroid/view/VelocityTracker;->nativeInitialize(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    .line 91
    iput-object p1, p0, Landroid/view/VelocityTracker;->mStrategy:Ljava/lang/String;

    return-void
.end method

.method private static native nativeAddMovement(JLandroid/view/MotionEvent;)V
.end method

.method private static native nativeClear(J)V
.end method

.method private static native nativeComputeCurrentVelocity(JIF)V
.end method

.method private static native nativeDispose(J)V
.end method

.method private static native nativeGetEstimator(JILandroid/view/VelocityTracker$Estimator;)Z
.end method

.method private static native nativeGetXVelocity(JI)F
.end method

.method private static native nativeGetYVelocity(JI)F
.end method

.method private static native nativeInitialize(Ljava/lang/String;)J
.end method

.method public static obtain()Landroid/view/VelocityTracker;
    .locals 2

    .line 58
    sget-object v0, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    new-instance v0, Landroid/view/VelocityTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/VelocityTracker;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public static obtain(Ljava/lang/String;)Landroid/view/VelocityTracker;
    .locals 1

    if-nez p0, :cond_0

    .line 73
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p0

    return-object p0

    .line 75
    :cond_0
    new-instance v0, Landroid/view/VelocityTracker;

    invoke-direct {v0, p0}, Landroid/view/VelocityTracker;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 126
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/VelocityTracker;->nativeAddMovement(JLandroid/view/MotionEvent;)V

    return-void

    .line 124
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "event must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clear()V
    .locals 2

    .line 110
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    invoke-static {v0, v1}, Landroid/view/VelocityTracker;->nativeClear(J)V

    return-void
.end method

.method public computeCurrentVelocity(I)V
    .locals 2

    .line 136
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    const p0, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v0, v1, p1, p0}, Landroid/view/VelocityTracker;->nativeComputeCurrentVelocity(JIF)V

    return-void
.end method

.method public computeCurrentVelocity(IF)V
    .locals 2

    .line 153
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/VelocityTracker;->nativeComputeCurrentVelocity(JIF)V

    return-void
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 97
    :try_start_0
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 98
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    invoke-static {v0, v1}, Landroid/view/VelocityTracker;->nativeDispose(J)V

    .line 99
    iput-wide v2, p0, Landroid/view/VelocityTracker;->mPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getEstimator(ILandroid/view/VelocityTracker$Estimator;)Z
    .locals 2

    if-eqz p2, :cond_0

    .line 216
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/VelocityTracker;->nativeGetEstimator(JILandroid/view/VelocityTracker$Estimator;)Z

    move-result p0

    return p0

    .line 214
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "outEstimator must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getXVelocity()F
    .locals 2

    .line 163
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    const/4 p0, -0x1

    invoke-static {v0, v1, p0}, Landroid/view/VelocityTracker;->nativeGetXVelocity(JI)F

    move-result p0

    return p0
.end method

.method public getXVelocity(I)F
    .locals 2

    .line 184
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/VelocityTracker;->nativeGetXVelocity(JI)F

    move-result p0

    return p0
.end method

.method public getYVelocity()F
    .locals 2

    .line 173
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    const/4 p0, -0x1

    invoke-static {v0, v1, p0}, Landroid/view/VelocityTracker;->nativeGetYVelocity(JI)F

    move-result p0

    return p0
.end method

.method public getYVelocity(I)F
    .locals 2

    .line 195
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/VelocityTracker;->nativeGetYVelocity(JI)F

    move-result p0

    return p0
.end method

.method public recycle()V
    .locals 1

    .line 83
    iget-object v0, p0, Landroid/view/VelocityTracker;->mStrategy:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    .line 85
    sget-object v0, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
