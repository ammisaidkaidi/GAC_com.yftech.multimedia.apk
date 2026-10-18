.class Landroid/gesture/Instance;
.super Ljava/lang/Object;
.source "Instance.java"


# static fields
.field private static final ORIENTATIONS:[F

.field private static final PATCH_SAMPLE_SIZE:I = 0x10

.field private static final SEQUENCE_SAMPLE_SIZE:I = 0x10


# instance fields
.field final id:J

.field final label:Ljava/lang/String;

.field final vector:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    .line 29
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Landroid/gesture/Instance;->ORIENTATIONS:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f490fdb
        0x3fc90fdb
        0x4016cbe4
        0x40490fdb    # (float)Math.PI
        0x0
        -0x40b6f025
        -0x4036f025
        -0x3fe9341c
        -0x3fb6f025
    .end array-data
.end method

.method private constructor <init>(J[FLjava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-wide p1, p0, Landroid/gesture/Instance;->id:J

    .line 46
    iput-object p3, p0, Landroid/gesture/Instance;->vector:[F

    .line 47
    iput-object p4, p0, Landroid/gesture/Instance;->label:Ljava/lang/String;

    return-void
.end method

.method static createInstance(IILandroid/gesture/Gesture;Ljava/lang/String;)Landroid/gesture/Instance;
    .locals 2

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 76
    invoke-static {p1, p2}, Landroid/gesture/Instance;->temporalSampler(ILandroid/gesture/Gesture;)[F

    move-result-object p0

    .line 77
    new-instance p1, Landroid/gesture/Instance;

    invoke-virtual {p2}, Landroid/gesture/Gesture;->getID()J

    move-result-wide v0

    invoke-direct {p1, v0, v1, p0, p3}, Landroid/gesture/Instance;-><init>(J[FLjava/lang/String;)V

    .line 78
    invoke-direct {p1}, Landroid/gesture/Instance;->normalize()V

    goto :goto_0

    .line 80
    :cond_0
    invoke-static {p2}, Landroid/gesture/Instance;->spatialSampler(Landroid/gesture/Gesture;)[F

    move-result-object p0

    .line 81
    new-instance p1, Landroid/gesture/Instance;

    invoke-virtual {p2}, Landroid/gesture/Gesture;->getID()J

    move-result-wide v0

    invoke-direct {p1, v0, v1, p0, p3}, Landroid/gesture/Instance;-><init>(J[FLjava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method private normalize()V
    .locals 6

    .line 51
    iget-object p0, p0, Landroid/gesture/Instance;->vector:[F

    .line 54
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 56
    aget v4, p0, v2

    aget v5, p0, v2

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    float-to-double v2, v3

    .line 59
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    :goto_1
    if-ge v1, v0, :cond_1

    .line 61
    aget v3, p0, v1

    div-float/2addr v3, v2

    aput v3, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static spatialSampler(Landroid/gesture/Gesture;)[F
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x0

    .line 87
    invoke-static {p0, v0, v1}, Landroid/gesture/GestureUtils;->spatialSampling(Landroid/gesture/Gesture;IZ)[F

    move-result-object p0

    return-object p0
.end method

.method private static temporalSampler(ILandroid/gesture/Gesture;)[F
    .locals 9

    .line 91
    invoke-virtual {p1}, Landroid/gesture/Gesture;->getStrokes()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/gesture/GestureStroke;

    const/16 v1, 0x10

    invoke-static {p1, v1}, Landroid/gesture/GestureUtils;->temporalSampling(Landroid/gesture/GestureStroke;I)[F

    move-result-object p1

    .line 93
    invoke-static {p1}, Landroid/gesture/GestureUtils;->computeCentroid([F)[F

    move-result-object v1

    const/4 v2, 0x1

    .line 94
    aget v3, p1, v2

    aget v4, v1, v2

    sub-float/2addr v3, v4

    float-to-double v3, v3

    aget v5, p1, v0

    aget v6, v1, v0

    sub-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    double-to-float v3, v3

    neg-float v4, v3

    if-eq p0, v2, :cond_2

    .line 98
    sget-object p0, Landroid/gesture/Instance;->ORIENTATIONS:[F

    array-length p0, p0

    move v5, v4

    move v4, v0

    :goto_0
    if-ge v4, p0, :cond_1

    .line 100
    sget-object v6, Landroid/gesture/Instance;->ORIENTATIONS:[F

    aget v6, v6, v4

    sub-float/2addr v6, v3

    .line 101
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_0

    move v5, v6

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v5

    .line 107
    :cond_2
    aget p0, v1, v0

    neg-float p0, p0

    aget v0, v1, v2

    neg-float v0, v0

    invoke-static {p1, p0, v0}, Landroid/gesture/GestureUtils;->translate([FFF)[F

    .line 108
    invoke-static {p1, v4}, Landroid/gesture/GestureUtils;->rotate([FF)[F

    return-object p1
.end method
