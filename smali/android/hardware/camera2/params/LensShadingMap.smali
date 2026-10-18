.class public final Landroid/hardware/camera2/params/LensShadingMap;
.super Ljava/lang/Object;
.source "LensShadingMap.java"


# static fields
.field public static final MINIMUM_GAIN_FACTOR:F = 1.0f


# instance fields
.field private final mColumns:I

.field private final mElements:[F

.field private final mRows:I


# direct methods
.method public constructor <init>([FII)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "rows must be positive"

    .line 63
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    move-result p2

    iput p2, p0, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    const-string p2, "columns must be positive"

    .line 64
    invoke-static {p3, p2}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    move-result p2

    iput p2, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    const-string p2, "elements must not be null"

    .line 65
    invoke-static {p1, p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [F

    iput-object p2, p0, Landroid/hardware/camera2/params/LensShadingMap;->mElements:[F

    .line 67
    array-length p2, p1

    invoke-virtual {p0}, Landroid/hardware/camera2/params/LensShadingMap;->getGainFactorCount()I

    move-result p3

    if-ne p2, p3, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    const p2, 0x7f7fffff    # Float.MAX_VALUE

    const-string p3, "elements"

    .line 73
    invoke-static {p1, p0, p2, p3}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    return-void

    .line 68
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "elements must be "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/camera2/params/LensShadingMap;->getGainFactorCount()I

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " length, received "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p1

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public copyGainFactors([FI)V
    .locals 2

    const-string/jumbo v0, "offset must not be negative"

    .line 197
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    const-string v0, "destination must not be null"

    .line 198
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    array-length v0, p1

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/hardware/camera2/params/LensShadingMap;->getGainFactorCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 203
    iget-object v0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mElements:[F

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/hardware/camera2/params/LensShadingMap;->getGainFactorCount()I

    move-result p0

    invoke-static {v0, v1, p1, p2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 200
    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "destination too small to fit elements"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 222
    :cond_1
    instance-of v2, p1, Landroid/hardware/camera2/params/LensShadingMap;

    if-eqz v2, :cond_3

    .line 223
    check-cast p1, Landroid/hardware/camera2/params/LensShadingMap;

    .line 224
    iget v2, p0, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    iget v3, p1, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    iget v3, p1, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mElements:[F

    iget-object p1, p1, Landroid/hardware/camera2/params/LensShadingMap;->mElements:[F

    .line 226
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p0

    if-eqz p0, :cond_2

    move v0, v1

    :cond_2
    return v0

    :cond_3
    return v0
.end method

.method public getColumnCount()I
    .locals 0

    .line 87
    iget p0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    return p0
.end method

.method public getGainFactor(III)F
    .locals 2

    if-ltz p1, :cond_2

    const/4 v0, 0x4

    if-gt p1, v0, :cond_2

    if-ltz p2, :cond_1

    .line 130
    iget v1, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    if-ge p2, v1, :cond_1

    if-ltz p3, :cond_0

    .line 132
    iget v1, p0, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    if-ge p3, v1, :cond_0

    .line 136
    iget-object v1, p0, Landroid/hardware/camera2/params/LensShadingMap;->mElements:[F

    iget p0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    mul-int/2addr p3, p0

    add-int/2addr p3, p2

    mul-int/2addr p3, v0

    add-int/2addr p1, p3

    aget p0, v1, p1

    return p0

    .line 133
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "row out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 131
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "column out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 129
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "colorChannel out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getGainFactorCount()I
    .locals 1

    .line 97
    iget v0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    iget p0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    mul-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getGainFactorVector(II)Landroid/hardware/camera2/params/RggbChannelVector;
    .locals 3

    if-ltz p1, :cond_1

    .line 156
    iget v0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    if-ge p1, v0, :cond_1

    if-ltz p2, :cond_0

    .line 158
    iget v0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    if-ge p2, v0, :cond_0

    .line 162
    iget v0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    mul-int/2addr p2, v0

    add-int/2addr p2, p1

    mul-int/lit8 p2, p2, 0x4

    .line 164
    iget-object p1, p0, Landroid/hardware/camera2/params/LensShadingMap;->mElements:[F

    add-int/lit8 v0, p2, 0x0

    aget p1, p1, v0

    .line 166
    iget-object v0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mElements:[F

    add-int/lit8 v1, p2, 0x1

    aget v0, v0, v1

    .line 168
    iget-object v1, p0, Landroid/hardware/camera2/params/LensShadingMap;->mElements:[F

    add-int/lit8 v2, p2, 0x2

    aget v1, v1, v2

    .line 170
    iget-object p0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mElements:[F

    add-int/lit8 p2, p2, 0x3

    aget p0, p0, p2

    .line 173
    new-instance p2, Landroid/hardware/camera2/params/RggbChannelVector;

    invoke-direct {p2, p1, v0, v1, p0}, Landroid/hardware/camera2/params/RggbChannelVector;-><init>(FFFF)V

    return-object p2

    .line 159
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "row out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 157
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "column out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRowCount()I
    .locals 0

    .line 80
    iget p0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    return p0
.end method

.method public hashCode()I
    .locals 4

    .line 236
    iget-object v0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mElements:[F

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([F)I

    move-result v0

    const/4 v1, 0x3

    .line 237
    new-array v1, v1, [I

    iget v2, p0, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    const/4 v3, 0x0

    aput v2, v1, v3

    iget p0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    const/4 v2, 0x1

    aput p0, v1, v2

    const/4 p0, 0x2

    aput v0, v1, p0

    invoke-static {v1}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LensShadingMap{"

    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "R:("

    const-string v2, "G_even:("

    const-string v3, "G_odd:("

    const-string v4, "B:("

    .line 256
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_5

    .line 259
    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v2

    .line 261
    :goto_1
    iget v5, p0, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    if-ge v4, v5, :cond_3

    const-string v5, "["

    .line 262
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v2

    .line 263
    :goto_2
    iget v6, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    if-ge v5, v6, :cond_1

    .line 264
    invoke-virtual {p0, v3, v5, v4}, Landroid/hardware/camera2/params/LensShadingMap;->getGainFactor(III)F

    move-result v6

    .line 265
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 266
    iget v6, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_0

    const-string v6, ", "

    .line 267
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    const-string v5, "]"

    .line 270
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    iget v5, p0, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_2

    const-string v5, ", "

    .line 272
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const-string v4, ")"

    .line 276
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    if-ge v3, v4, :cond_4

    const-string v4, ", "

    .line 278
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    const-string/jumbo p0, "}"

    .line 282
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
