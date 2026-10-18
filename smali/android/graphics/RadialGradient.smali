.class public Landroid/graphics/RadialGradient;
.super Landroid/graphics/Shader;
.source "RadialGradient.java"


# static fields
.field private static final TYPE_COLORS_AND_POSITIONS:I = 0x1

.field private static final TYPE_COLOR_CENTER_AND_COLOR_EDGE:I = 0x2


# instance fields
.field private mCenterColor:I

.field private mColors:[I

.field private mEdgeColor:I

.field private mPositions:[F

.field private mRadius:F

.field private mTileMode:Landroid/graphics/Shader$TileMode;

.field private mType:I

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>(FFFIILandroid/graphics/Shader$TileMode;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-lez v0, :cond_0

    const/4 v0, 0x2

    .line 93
    iput v0, p0, Landroid/graphics/RadialGradient;->mType:I

    .line 94
    iput p1, p0, Landroid/graphics/RadialGradient;->mX:F

    .line 95
    iput p2, p0, Landroid/graphics/RadialGradient;->mY:F

    .line 96
    iput p3, p0, Landroid/graphics/RadialGradient;->mRadius:F

    .line 97
    iput p4, p0, Landroid/graphics/RadialGradient;->mCenterColor:I

    .line 98
    iput p5, p0, Landroid/graphics/RadialGradient;->mEdgeColor:I

    .line 99
    iput-object p6, p0, Landroid/graphics/RadialGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    return-void

    .line 91
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "radius must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-lez v0, :cond_4

    .line 63
    array-length v0, p4

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    if-eqz p5, :cond_1

    .line 66
    array-length v0, p4

    array-length v1, p5

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "color and position arrays must be of equal length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 69
    iput v0, p0, Landroid/graphics/RadialGradient;->mType:I

    .line 70
    iput p1, p0, Landroid/graphics/RadialGradient;->mX:F

    .line 71
    iput p2, p0, Landroid/graphics/RadialGradient;->mY:F

    .line 72
    iput p3, p0, Landroid/graphics/RadialGradient;->mRadius:F

    .line 73
    invoke-virtual {p4}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Landroid/graphics/RadialGradient;->mColors:[I

    if-eqz p5, :cond_2

    .line 74
    invoke-virtual {p5}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Landroid/graphics/RadialGradient;->mPositions:[F

    .line 75
    iput-object p6, p0, Landroid/graphics/RadialGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    return-void

    .line 64
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "needs >= 2 number of colors"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 61
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "radius must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native nativeCreate1(JFFF[I[FI)J
.end method

.method private static native nativeCreate2(JFFFIII)J
.end method


# virtual methods
.method protected copy()Landroid/graphics/Shader;
    .locals 17

    move-object/from16 v0, p0

    .line 119
    iget v1, v0, Landroid/graphics/RadialGradient;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 120
    new-instance v1, Landroid/graphics/RadialGradient;

    iget v4, v0, Landroid/graphics/RadialGradient;->mX:F

    iget v5, v0, Landroid/graphics/RadialGradient;->mY:F

    iget v6, v0, Landroid/graphics/RadialGradient;->mRadius:F

    iget-object v2, v0, Landroid/graphics/RadialGradient;->mColors:[I

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, [I

    .line 121
    iget-object v2, v0, Landroid/graphics/RadialGradient;->mPositions:[F

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/graphics/RadialGradient;->mPositions:[F

    invoke-virtual {v2}, [F->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    :goto_0
    move-object v8, v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    iget-object v9, v0, Landroid/graphics/RadialGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto :goto_2

    .line 123
    :cond_1
    new-instance v1, Landroid/graphics/RadialGradient;

    iget v11, v0, Landroid/graphics/RadialGradient;->mX:F

    iget v12, v0, Landroid/graphics/RadialGradient;->mY:F

    iget v13, v0, Landroid/graphics/RadialGradient;->mRadius:F

    iget v14, v0, Landroid/graphics/RadialGradient;->mCenterColor:I

    iget v15, v0, Landroid/graphics/RadialGradient;->mEdgeColor:I

    iget-object v2, v0, Landroid/graphics/RadialGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    move-object v10, v1

    move-object/from16 v16, v2

    invoke-direct/range {v10 .. v16}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 125
    :goto_2
    invoke-virtual {v0, v1}, Landroid/graphics/RadialGradient;->copyLocalMatrix(Landroid/graphics/Shader;)V

    return-object v1
.end method

.method createNativeInstance(J)J
    .locals 10

    .line 104
    iget v0, p0, Landroid/graphics/RadialGradient;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 105
    iget v4, p0, Landroid/graphics/RadialGradient;->mX:F

    iget v5, p0, Landroid/graphics/RadialGradient;->mY:F

    iget v6, p0, Landroid/graphics/RadialGradient;->mRadius:F

    iget-object v7, p0, Landroid/graphics/RadialGradient;->mColors:[I

    iget-object v8, p0, Landroid/graphics/RadialGradient;->mPositions:[F

    iget-object p0, p0, Landroid/graphics/RadialGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    iget v9, p0, Landroid/graphics/Shader$TileMode;->nativeInt:I

    move-wide v2, p1

    invoke-static/range {v2 .. v9}, Landroid/graphics/RadialGradient;->nativeCreate1(JFFF[I[FI)J

    move-result-wide p0

    return-wide p0

    .line 108
    :cond_0
    iget v2, p0, Landroid/graphics/RadialGradient;->mX:F

    iget v3, p0, Landroid/graphics/RadialGradient;->mY:F

    iget v4, p0, Landroid/graphics/RadialGradient;->mRadius:F

    iget v5, p0, Landroid/graphics/RadialGradient;->mCenterColor:I

    iget v6, p0, Landroid/graphics/RadialGradient;->mEdgeColor:I

    iget-object p0, p0, Landroid/graphics/RadialGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    iget v7, p0, Landroid/graphics/Shader$TileMode;->nativeInt:I

    move-wide v0, p1

    invoke-static/range {v0 .. v7}, Landroid/graphics/RadialGradient;->nativeCreate2(JFFFIII)J

    move-result-wide p0

    return-wide p0
.end method
