.class Landroid/graphics/Matrix$1;
.super Landroid/graphics/Matrix;
.source "Matrix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Matrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    return-void
.end method


# virtual methods
.method oops()V
    .locals 1

    .line 44
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Matrix can not be modified"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public postConcat(Landroid/graphics/Matrix;)Z
    .locals 0

    .line 200
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 p0, 0x0

    return p0
.end method

.method public postRotate(F)Z
    .locals 0

    .line 182
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 p0, 0x0

    return p0
.end method

.method public postRotate(FFF)Z
    .locals 0

    .line 176
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 p0, 0x0

    return p0
.end method

.method public postScale(FF)Z
    .locals 0

    .line 170
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 p0, 0x0

    return p0
.end method

.method public postScale(FFFF)Z
    .locals 0

    .line 164
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 p0, 0x0

    return p0
.end method

.method public postSkew(FF)Z
    .locals 0

    .line 194
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 p0, 0x0

    return p0
.end method

.method public postSkew(FFFF)Z
    .locals 0

    .line 188
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 p0, 0x0

    return p0
.end method

.method public postTranslate(FF)Z
    .locals 0

    .line 158
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 p0, 0x0

    return p0
.end method

.method public preConcat(Landroid/graphics/Matrix;)Z
    .locals 0

    .line 152
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 p0, 0x0

    return p0
.end method

.method public preRotate(F)Z
    .locals 0

    .line 134
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 p0, 0x0

    return p0
.end method

.method public preRotate(FFF)Z
    .locals 0

    .line 128
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 p0, 0x0

    return p0
.end method

.method public preScale(FF)Z
    .locals 0

    .line 122
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 p0, 0x0

    return p0
.end method

.method public preScale(FFFF)Z
    .locals 0

    .line 116
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 p0, 0x0

    return p0
.end method

.method public preSkew(FF)Z
    .locals 0

    .line 146
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 p0, 0x0

    return p0
.end method

.method public preSkew(FFFF)Z
    .locals 0

    .line 140
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 p0, 0x0

    return p0
.end method

.method public preTranslate(FF)Z
    .locals 0

    .line 110
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 p0, 0x0

    return p0
.end method

.method public reset()V
    .locals 0

    .line 54
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    return-void
.end method

.method public set(Landroid/graphics/Matrix;)V
    .locals 0

    .line 49
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    return-void
.end method

.method public setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z
    .locals 0

    .line 104
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 p0, 0x0

    return p0
.end method

.method public setPolyToPoly([FI[FII)Z
    .locals 0

    .line 213
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 p0, 0x0

    return p0
.end method

.method public setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z
    .locals 0

    .line 206
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 p0, 0x0

    return p0
.end method

.method public setRotate(F)V
    .locals 0

    .line 79
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    return-void
.end method

.method public setRotate(FFF)V
    .locals 0

    .line 74
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    return-void
.end method

.method public setScale(FF)V
    .locals 0

    .line 69
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    return-void
.end method

.method public setScale(FFFF)V
    .locals 0

    .line 64
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    return-void
.end method

.method public setSinCos(FF)V
    .locals 0

    .line 89
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    return-void
.end method

.method public setSinCos(FFFF)V
    .locals 0

    .line 84
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    return-void
.end method

.method public setSkew(FF)V
    .locals 0

    .line 99
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    return-void
.end method

.method public setSkew(FFFF)V
    .locals 0

    .line 94
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    return-void
.end method

.method public setTranslate(FF)V
    .locals 0

    .line 59
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    return-void
.end method

.method public setValues([F)V
    .locals 0

    .line 219
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    return-void
.end method
