.class public Landroid/graphics/LinearGradient;
.super Landroid/graphics/Shader;
.source "LinearGradient.java"


# static fields
.field private static final TYPE_COLORS_AND_POSITIONS:I = 0x1

.field private static final TYPE_COLOR_START_AND_COLOR_END:I = 0x2


# instance fields
.field private mColor0:I

.field private mColor1:I

.field private mColors:[I

.field private mPositions:[F

.field private mTileMode:Landroid/graphics/Shader$TileMode;

.field private mType:I

.field private mX0:F

.field private mX1:F

.field private mY0:F

.field private mY1:F


# direct methods
.method public constructor <init>(FFFFIILandroid/graphics/Shader$TileMode;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    const/4 v0, 0x2

    .line 90
    iput v0, p0, Landroid/graphics/LinearGradient;->mType:I

    .line 91
    iput p1, p0, Landroid/graphics/LinearGradient;->mX0:F

    .line 92
    iput p2, p0, Landroid/graphics/LinearGradient;->mY0:F

    .line 93
    iput p3, p0, Landroid/graphics/LinearGradient;->mX1:F

    .line 94
    iput p4, p0, Landroid/graphics/LinearGradient;->mY1:F

    .line 95
    iput p5, p0, Landroid/graphics/LinearGradient;->mColor0:I

    .line 96
    iput p6, p0, Landroid/graphics/LinearGradient;->mColor1:I

    const/4 p1, 0x0

    .line 97
    iput-object p1, p0, Landroid/graphics/LinearGradient;->mColors:[I

    .line 98
    iput-object p1, p0, Landroid/graphics/LinearGradient;->mPositions:[F

    .line 99
    iput-object p7, p0, Landroid/graphics/LinearGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    return-void
.end method

.method public constructor <init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    .line 60
    array-length v0, p5

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    if-eqz p6, :cond_1

    .line 63
    array-length v0, p5

    array-length v1, p6

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "color and position arrays must be of equal length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 66
    iput v0, p0, Landroid/graphics/LinearGradient;->mType:I

    .line 67
    iput p1, p0, Landroid/graphics/LinearGradient;->mX0:F

    .line 68
    iput p2, p0, Landroid/graphics/LinearGradient;->mY0:F

    .line 69
    iput p3, p0, Landroid/graphics/LinearGradient;->mX1:F

    .line 70
    iput p4, p0, Landroid/graphics/LinearGradient;->mY1:F

    .line 71
    invoke-virtual {p5}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Landroid/graphics/LinearGradient;->mColors:[I

    if-eqz p6, :cond_2

    .line 72
    invoke-virtual {p6}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Landroid/graphics/LinearGradient;->mPositions:[F

    .line 73
    iput-object p7, p0, Landroid/graphics/LinearGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    return-void

    .line 61
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "needs >= 2 number of colors"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private native nativeCreate1(JFFFF[I[FI)J
.end method

.method private native nativeCreate2(JFFFFIII)J
.end method


# virtual methods
.method protected copy()Landroid/graphics/Shader;
    .locals 19

    move-object/from16 v0, p0

    .line 119
    iget v1, v0, Landroid/graphics/LinearGradient;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 120
    new-instance v1, Landroid/graphics/LinearGradient;

    iget v4, v0, Landroid/graphics/LinearGradient;->mX0:F

    iget v5, v0, Landroid/graphics/LinearGradient;->mY0:F

    iget v6, v0, Landroid/graphics/LinearGradient;->mX1:F

    iget v7, v0, Landroid/graphics/LinearGradient;->mY1:F

    iget-object v2, v0, Landroid/graphics/LinearGradient;->mColors:[I

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, [I

    .line 121
    iget-object v2, v0, Landroid/graphics/LinearGradient;->mPositions:[F

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/graphics/LinearGradient;->mPositions:[F

    invoke-virtual {v2}, [F->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    :goto_0
    move-object v9, v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    iget-object v10, v0, Landroid/graphics/LinearGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto :goto_2

    .line 123
    :cond_1
    new-instance v1, Landroid/graphics/LinearGradient;

    iget v12, v0, Landroid/graphics/LinearGradient;->mX0:F

    iget v13, v0, Landroid/graphics/LinearGradient;->mY0:F

    iget v14, v0, Landroid/graphics/LinearGradient;->mX1:F

    iget v15, v0, Landroid/graphics/LinearGradient;->mY1:F

    iget v2, v0, Landroid/graphics/LinearGradient;->mColor0:I

    iget v3, v0, Landroid/graphics/LinearGradient;->mColor1:I

    iget-object v4, v0, Landroid/graphics/LinearGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    move-object v11, v1

    move/from16 v16, v2

    move/from16 v17, v3

    move-object/from16 v18, v4

    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 125
    :goto_2
    invoke-virtual {v0, v1}, Landroid/graphics/LinearGradient;->copyLocalMatrix(Landroid/graphics/Shader;)V

    return-object v1
.end method

.method createNativeInstance(J)J
    .locals 12

    .line 104
    iget v0, p0, Landroid/graphics/LinearGradient;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 105
    iget v5, p0, Landroid/graphics/LinearGradient;->mX0:F

    iget v6, p0, Landroid/graphics/LinearGradient;->mY0:F

    iget v7, p0, Landroid/graphics/LinearGradient;->mX1:F

    iget v8, p0, Landroid/graphics/LinearGradient;->mY1:F

    iget-object v9, p0, Landroid/graphics/LinearGradient;->mColors:[I

    iget-object v10, p0, Landroid/graphics/LinearGradient;->mPositions:[F

    iget-object v0, p0, Landroid/graphics/LinearGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    iget v11, v0, Landroid/graphics/Shader$TileMode;->nativeInt:I

    move-object v2, p0

    move-wide v3, p1

    invoke-direct/range {v2 .. v11}, Landroid/graphics/LinearGradient;->nativeCreate1(JFFFF[I[FI)J

    move-result-wide p0

    return-wide p0

    .line 108
    :cond_0
    iget v3, p0, Landroid/graphics/LinearGradient;->mX0:F

    iget v4, p0, Landroid/graphics/LinearGradient;->mY0:F

    iget v5, p0, Landroid/graphics/LinearGradient;->mX1:F

    iget v6, p0, Landroid/graphics/LinearGradient;->mY1:F

    iget v7, p0, Landroid/graphics/LinearGradient;->mColor0:I

    iget v8, p0, Landroid/graphics/LinearGradient;->mColor1:I

    iget-object v0, p0, Landroid/graphics/LinearGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    iget v9, v0, Landroid/graphics/Shader$TileMode;->nativeInt:I

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v9}, Landroid/graphics/LinearGradient;->nativeCreate2(JFFFFIII)J

    move-result-wide p0

    return-wide p0
.end method
