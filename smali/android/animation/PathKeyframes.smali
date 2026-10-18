.class public Landroid/animation/PathKeyframes;
.super Ljava/lang/Object;
.source "PathKeyframes.java"

# interfaces
.implements Landroid/animation/Keyframes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/PathKeyframes$FloatKeyframesBase;,
        Landroid/animation/PathKeyframes$IntKeyframesBase;,
        Landroid/animation/PathKeyframes$SimpleKeyframes;
    }
.end annotation


# static fields
.field private static final EMPTY_KEYFRAMES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Keyframe;",
            ">;"
        }
    .end annotation
.end field

.field private static final FRACTION_OFFSET:I = 0x0

.field private static final NUM_COMPONENTS:I = 0x3

.field private static final X_OFFSET:I = 0x1

.field private static final Y_OFFSET:I = 0x2


# instance fields
.field private mKeyframeData:[F

.field private mTempPointF:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/animation/PathKeyframes;->EMPTY_KEYFRAMES:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    .line 50
    invoke-direct {p0, p1, v0}, Landroid/animation/PathKeyframes;-><init>(Landroid/graphics/Path;F)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;F)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/animation/PathKeyframes;->mTempPointF:Landroid/graphics/PointF;

    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    invoke-virtual {p1, p2}, Landroid/graphics/Path;->approximate(F)[F

    move-result-object p1

    iput-object p1, p0, Landroid/animation/PathKeyframes;->mKeyframeData:[F

    return-void

    .line 55
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The path must not be null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .line 39
    sget-object v0, Landroid/animation/PathKeyframes;->EMPTY_KEYFRAMES:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static interpolate(FFF)F
    .locals 0

    sub-float/2addr p2, p1

    mul-float/2addr p2, p0

    add-float/2addr p1, p2

    return p1
.end method

.method private interpolateInRange(FII)Landroid/graphics/PointF;
    .locals 3

    mul-int/lit8 p2, p2, 0x3

    mul-int/lit8 p3, p3, 0x3

    .line 103
    iget-object v0, p0, Landroid/animation/PathKeyframes;->mKeyframeData:[F

    add-int/lit8 v1, p2, 0x0

    aget v0, v0, v1

    .line 104
    iget-object v1, p0, Landroid/animation/PathKeyframes;->mKeyframeData:[F

    add-int/lit8 v2, p3, 0x0

    aget v1, v1, v2

    sub-float/2addr p1, v0

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    .line 108
    iget-object v0, p0, Landroid/animation/PathKeyframes;->mKeyframeData:[F

    add-int/lit8 v1, p2, 0x1

    aget v0, v0, v1

    .line 109
    iget-object v1, p0, Landroid/animation/PathKeyframes;->mKeyframeData:[F

    add-int/lit8 v2, p3, 0x1

    aget v1, v1, v2

    .line 110
    iget-object v2, p0, Landroid/animation/PathKeyframes;->mKeyframeData:[F

    add-int/lit8 p2, p2, 0x2

    aget p2, v2, p2

    .line 111
    iget-object v2, p0, Landroid/animation/PathKeyframes;->mKeyframeData:[F

    add-int/lit8 p3, p3, 0x2

    aget p3, v2, p3

    .line 113
    invoke-static {p1, v0, v1}, Landroid/animation/PathKeyframes;->interpolate(FFF)F

    move-result v0

    .line 114
    invoke-static {p1, p2, p3}, Landroid/animation/PathKeyframes;->interpolate(FFF)F

    move-result p1

    .line 116
    iget-object p2, p0, Landroid/animation/PathKeyframes;->mTempPointF:Landroid/graphics/PointF;

    invoke-virtual {p2, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 117
    iget-object p0, p0, Landroid/animation/PathKeyframes;->mTempPointF:Landroid/graphics/PointF;

    return-object p0
.end method

.method private pointForIndex(I)Landroid/graphics/PointF;
    .locals 3

    mul-int/lit8 p1, p1, 0x3

    add-int/lit8 v0, p1, 0x1

    add-int/lit8 p1, p1, 0x2

    .line 142
    iget-object v1, p0, Landroid/animation/PathKeyframes;->mTempPointF:Landroid/graphics/PointF;

    iget-object v2, p0, Landroid/animation/PathKeyframes;->mKeyframeData:[F

    aget v0, v2, v0

    iget-object v2, p0, Landroid/animation/PathKeyframes;->mKeyframeData:[F

    aget p1, v2, p1

    invoke-virtual {v1, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 143
    iget-object p0, p0, Landroid/animation/PathKeyframes;->mTempPointF:Landroid/graphics/PointF;

    return-object p0
.end method


# virtual methods
.method public clone()Landroid/animation/Keyframes;
    .locals 0

    .line 133
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/Keyframes;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Landroid/animation/PathKeyframes;->clone()Landroid/animation/Keyframes;

    move-result-object p0

    return-object p0
.end method

.method public createXFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;
    .locals 1

    .line 156
    new-instance v0, Landroid/animation/PathKeyframes$1;

    invoke-direct {v0, p0}, Landroid/animation/PathKeyframes$1;-><init>(Landroid/animation/PathKeyframes;)V

    return-object v0
.end method

.method public createXIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;
    .locals 1

    .line 184
    new-instance v0, Landroid/animation/PathKeyframes$3;

    invoke-direct {v0, p0}, Landroid/animation/PathKeyframes$3;-><init>(Landroid/animation/PathKeyframes;)V

    return-object v0
.end method

.method public createYFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;
    .locals 1

    .line 170
    new-instance v0, Landroid/animation/PathKeyframes$2;

    invoke-direct {v0, p0}, Landroid/animation/PathKeyframes$2;-><init>(Landroid/animation/PathKeyframes;)V

    return-object v0
.end method

.method public createYIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;
    .locals 1

    .line 198
    new-instance v0, Landroid/animation/PathKeyframes$4;

    invoke-direct {v0, p0}, Landroid/animation/PathKeyframes$4;-><init>(Landroid/animation/PathKeyframes;)V

    return-object v0
.end method

.method public getKeyframes()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Keyframe;",
            ">;"
        }
    .end annotation

    .line 62
    sget-object p0, Landroid/animation/PathKeyframes;->EMPTY_KEYFRAMES:Ljava/util/ArrayList;

    return-object p0
.end method

.method public bridge synthetic getKeyframes()Ljava/util/List;
    .locals 0

    .line 39
    invoke-virtual {p0}, Landroid/animation/PathKeyframes;->getKeyframes()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .locals 0

    .line 126
    const-class p0, Landroid/graphics/PointF;

    return-object p0
.end method

.method public getValue(F)Ljava/lang/Object;
    .locals 6

    .line 67
    iget-object v0, p0, Landroid/animation/PathKeyframes;->mKeyframeData:[F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_0

    .line 69
    invoke-direct {p0, p1, v3, v4}, Landroid/animation/PathKeyframes;->interpolateInRange(FII)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    add-int/lit8 v1, v0, -0x2

    sub-int/2addr v0, v4

    .line 71
    invoke-direct {p0, p1, v1, v0}, Landroid/animation/PathKeyframes;->interpolateInRange(FII)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    :cond_1
    cmpl-float v1, p1, v1

    if-nez v1, :cond_2

    .line 73
    invoke-direct {p0, v3}, Landroid/animation/PathKeyframes;->pointForIndex(I)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    :cond_2
    if-nez v2, :cond_3

    sub-int/2addr v0, v4

    .line 75
    invoke-direct {p0, v0}, Landroid/animation/PathKeyframes;->pointForIndex(I)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    :cond_3
    sub-int/2addr v0, v4

    move v1, v0

    move v0, v3

    :goto_0
    if-gt v0, v1, :cond_6

    add-int v2, v0, v1

    .line 82
    div-int/lit8 v2, v2, 0x2

    .line 83
    iget-object v4, p0, Landroid/animation/PathKeyframes;->mKeyframeData:[F

    mul-int/lit8 v5, v2, 0x3

    add-int/2addr v5, v3

    aget v4, v4, v5

    cmpg-float v5, p1, v4

    if-gez v5, :cond_4

    add-int/lit8 v2, v2, -0x1

    move v1, v2

    goto :goto_0

    :cond_4
    cmpl-float v0, p1, v4

    if-lez v0, :cond_5

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    goto :goto_0

    .line 90
    :cond_5
    invoke-direct {p0, v2}, Landroid/animation/PathKeyframes;->pointForIndex(I)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    .line 95
    :cond_6
    invoke-direct {p0, p1, v1, v0}, Landroid/animation/PathKeyframes;->interpolateInRange(FII)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public setEvaluator(Landroid/animation/TypeEvaluator;)V
    .locals 0

    return-void
.end method
