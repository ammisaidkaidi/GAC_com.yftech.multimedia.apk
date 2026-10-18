.class public Landroid/graphics/SumPathEffect;
.super Landroid/graphics/PathEffect;
.source "SumPathEffect.java"


# direct methods
.method public constructor <init>(Landroid/graphics/PathEffect;Landroid/graphics/PathEffect;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Landroid/graphics/PathEffect;-><init>()V

    .line 26
    iget-wide v0, p1, Landroid/graphics/PathEffect;->native_instance:J

    iget-wide p1, p2, Landroid/graphics/PathEffect;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/SumPathEffect;->nativeCreate(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/graphics/SumPathEffect;->native_instance:J

    return-void
.end method

.method private static native nativeCreate(JJ)J
.end method
