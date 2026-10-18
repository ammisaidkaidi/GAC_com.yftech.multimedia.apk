.class public Landroid/graphics/RegionIterator;
.super Ljava/lang/Object;
.source "RegionIterator.java"


# instance fields
.field private mNativeIter:J


# direct methods
.method public constructor <init>(Landroid/graphics/Region;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/graphics/Region;->ni()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/graphics/RegionIterator;->nativeConstructor(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/RegionIterator;->mNativeIter:J

    return-void
.end method

.method private static native nativeConstructor(J)J
.end method

.method private static native nativeDestructor(J)V
.end method

.method private static native nativeNext(JLandroid/graphics/Rect;)Z
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 45
    iget-wide v0, p0, Landroid/graphics/RegionIterator;->mNativeIter:J

    invoke-static {v0, v1}, Landroid/graphics/RegionIterator;->nativeDestructor(J)V

    const-wide/16 v0, 0x0

    .line 46
    iput-wide v0, p0, Landroid/graphics/RegionIterator;->mNativeIter:J

    return-void
.end method

.method public final next(Landroid/graphics/Rect;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 41
    iget-wide v0, p0, Landroid/graphics/RegionIterator;->mNativeIter:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RegionIterator;->nativeNext(JLandroid/graphics/Rect;)Z

    move-result p0

    return p0

    .line 39
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "The Rect must be provided"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
