.class public Landroid/graphics/SweepGradient;
.super Landroid/graphics/Shader;
.source "SweepGradient.java"


# static fields
.field private static final TYPE_COLORS_AND_POSITIONS:I = 0x1

.field private static final TYPE_COLOR_START_AND_COLOR_END:I = 0x2


# instance fields
.field private mColor0:I

.field private mColor1:I

.field private mColors:[I

.field private mCx:F

.field private mCy:F

.field private mPositions:[F

.field private mType:I


# direct methods
.method public constructor <init>(FFII)V
    .locals 1

    .line 79
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    const/4 v0, 0x2

    .line 80
    iput v0, p0, Landroid/graphics/SweepGradient;->mType:I

    .line 81
    iput p1, p0, Landroid/graphics/SweepGradient;->mCx:F

    .line 82
    iput p2, p0, Landroid/graphics/SweepGradient;->mCy:F

    .line 83
    iput p3, p0, Landroid/graphics/SweepGradient;->mColor0:I

    .line 84
    iput p4, p0, Landroid/graphics/SweepGradient;->mColor1:I

    const/4 p1, 0x0

    .line 85
    iput-object p1, p0, Landroid/graphics/SweepGradient;->mColors:[I

    .line 86
    iput-object p1, p0, Landroid/graphics/SweepGradient;->mPositions:[F

    return-void
.end method

.method public constructor <init>(FF[I[F)V
    .locals 2

    .line 56
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    .line 57
    array-length v0, p3

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    if-eqz p4, :cond_1

    .line 60
    array-length v0, p3

    array-length v1, p4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "color and position arrays must be of equal length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 64
    iput v0, p0, Landroid/graphics/SweepGradient;->mType:I

    .line 65
    iput p1, p0, Landroid/graphics/SweepGradient;->mCx:F

    .line 66
    iput p2, p0, Landroid/graphics/SweepGradient;->mCy:F

    .line 67
    invoke-virtual {p3}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Landroid/graphics/SweepGradient;->mColors:[I

    if-eqz p4, :cond_2

    .line 68
    invoke-virtual {p4}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Landroid/graphics/SweepGradient;->mPositions:[F

    return-void

    .line 58
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "needs >= 2 number of colors"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native nativeCreate1(JFF[I[F)J
.end method

.method private static native nativeCreate2(JFFII)J
.end method


# virtual methods
.method protected copy()Landroid/graphics/Shader;
    .locals 5

    .line 104
    iget v0, p0, Landroid/graphics/SweepGradient;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 105
    new-instance v0, Landroid/graphics/SweepGradient;

    iget v1, p0, Landroid/graphics/SweepGradient;->mCx:F

    iget v2, p0, Landroid/graphics/SweepGradient;->mCy:F

    iget-object v3, p0, Landroid/graphics/SweepGradient;->mColors:[I

    invoke-virtual {v3}, [I->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 106
    iget-object v4, p0, Landroid/graphics/SweepGradient;->mPositions:[F

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/graphics/SweepGradient;->mPositions:[F

    invoke-virtual {v4}, [F->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    goto :goto_1

    .line 108
    :cond_1
    new-instance v0, Landroid/graphics/SweepGradient;

    iget v1, p0, Landroid/graphics/SweepGradient;->mCx:F

    iget v2, p0, Landroid/graphics/SweepGradient;->mCy:F

    iget v3, p0, Landroid/graphics/SweepGradient;->mColor0:I

    iget v4, p0, Landroid/graphics/SweepGradient;->mColor1:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/SweepGradient;-><init>(FFII)V

    .line 110
    :goto_1
    invoke-virtual {p0, v0}, Landroid/graphics/SweepGradient;->copyLocalMatrix(Landroid/graphics/Shader;)V

    return-object v0
.end method

.method createNativeInstance(J)J
    .locals 8

    .line 91
    iget v0, p0, Landroid/graphics/SweepGradient;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 92
    iget v4, p0, Landroid/graphics/SweepGradient;->mCx:F

    iget v5, p0, Landroid/graphics/SweepGradient;->mCy:F

    iget-object v6, p0, Landroid/graphics/SweepGradient;->mColors:[I

    iget-object v7, p0, Landroid/graphics/SweepGradient;->mPositions:[F

    move-wide v2, p1

    invoke-static/range {v2 .. v7}, Landroid/graphics/SweepGradient;->nativeCreate1(JFF[I[F)J

    move-result-wide p0

    return-wide p0

    .line 94
    :cond_0
    iget v2, p0, Landroid/graphics/SweepGradient;->mCx:F

    iget v3, p0, Landroid/graphics/SweepGradient;->mCy:F

    iget v4, p0, Landroid/graphics/SweepGradient;->mColor0:I

    iget v5, p0, Landroid/graphics/SweepGradient;->mColor1:I

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Landroid/graphics/SweepGradient;->nativeCreate2(JFFII)J

    move-result-wide p0

    return-wide p0
.end method
