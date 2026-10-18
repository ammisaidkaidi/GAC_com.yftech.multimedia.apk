.class public Landroid/util/Spline$LinearSpline;
.super Landroid/util/Spline;
.source "Spline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Spline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinearSpline"
.end annotation


# instance fields
.field private final mM:[F

.field private final mX:[F

.field private final mY:[F


# direct methods
.method public constructor <init>([F[F)V
    .locals 7

    .line 237
    invoke-direct {p0}, Landroid/util/Spline;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 238
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_1

    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 242
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 243
    new-array v1, v0, [F

    iput-object v1, p0, Landroid/util/Spline$LinearSpline;->mM:[F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 245
    iget-object v2, p0, Landroid/util/Spline$LinearSpline;->mM:[F

    add-int/lit8 v3, v1, 0x1

    aget v4, p2, v3

    aget v5, p2, v1

    sub-float/2addr v4, v5

    aget v5, p1, v3

    aget v6, p1, v1

    sub-float/2addr v5, v6

    div-float/2addr v4, v5

    aput v4, v2, v1

    move v1, v3

    goto :goto_0

    .line 247
    :cond_0
    iput-object p1, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    .line 248
    iput-object p2, p0, Landroid/util/Spline$LinearSpline;->mY:[F

    return-void

    .line 239
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "There must be at least two control points and the arrays must be of equal length."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public interpolate(F)F
    .locals 3

    .line 254
    iget-object v0, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    array-length v0, v0

    .line 255
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    return p1

    .line 258
    :cond_0
    iget-object v1, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_1

    .line 259
    iget-object p0, p0, Landroid/util/Spline$LinearSpline;->mY:[F

    aget p0, p0, v2

    return p0

    .line 261
    :cond_1
    iget-object v1, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    add-int/lit8 v0, v0, -0x1

    aget v1, v1, v0

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_2

    .line 262
    iget-object p0, p0, Landroid/util/Spline$LinearSpline;->mY:[F

    aget p0, p0, v0

    return p0

    .line 268
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v1

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_4

    .line 270
    iget-object v0, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    aget v0, v0, v1

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    .line 271
    iget-object p0, p0, Landroid/util/Spline$LinearSpline;->mY:[F

    aget p0, p0, v1

    return p0

    :cond_3
    move v2, v1

    goto :goto_0

    .line 274
    :cond_4
    iget-object v0, p0, Landroid/util/Spline$LinearSpline;->mY:[F

    aget v0, v0, v2

    iget-object v1, p0, Landroid/util/Spline$LinearSpline;->mM:[F

    aget v1, v1, v2

    iget-object p0, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    aget p0, p0, v2

    sub-float/2addr p1, p0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    iget-object v1, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    array-length v1, v1

    const-string v2, "LinearSpline{["

    .line 281
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    if-eqz v2, :cond_0

    const-string v3, ", "

    .line 284
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v3, "("

    .line 286
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", "

    .line 287
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/util/Spline$LinearSpline;->mY:[F

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_1

    const-string v3, ": "

    .line 289
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/util/Spline$LinearSpline;->mM:[F

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_1
    const-string v3, ")"

    .line 291
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "]}"

    .line 293
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
