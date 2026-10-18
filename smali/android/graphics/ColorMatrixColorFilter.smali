.class public Landroid/graphics/ColorMatrixColorFilter;
.super Landroid/graphics/ColorFilter;
.source "ColorMatrixColorFilter.java"


# instance fields
.field private final mMatrix:Landroid/graphics/ColorMatrix;


# direct methods
.method public constructor <init>(Landroid/graphics/ColorMatrix;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/graphics/ColorFilter;-><init>()V

    .line 29
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    .line 39
    iget-object p0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {p0, p1}, Landroid/graphics/ColorMatrix;->set(Landroid/graphics/ColorMatrix;)V

    return-void
.end method

.method public constructor <init>([F)V
    .locals 2

    .line 49
    invoke-direct {p0}, Landroid/graphics/ColorFilter;-><init>()V

    .line 29
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    .line 50
    array-length v0, p1

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 53
    iget-object p0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {p0, p1}, Landroid/graphics/ColorMatrix;->set([F)V

    return-void

    .line 51
    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method private static native nativeColorMatrixFilter([F)J
.end method


# virtual methods
.method createNativeInstance()J
    .locals 2

    .line 122
    iget-object p0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/ColorMatrixColorFilter;->nativeColorMatrixFilter([F)J

    move-result-wide v0

    return-wide v0
.end method

.method public getColorMatrix(Landroid/graphics/ColorMatrix;)V
    .locals 0

    .line 62
    iget-object p0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {p1, p0}, Landroid/graphics/ColorMatrix;->set(Landroid/graphics/ColorMatrix;)V

    return-void
.end method

.method public setColorMatrix(Landroid/graphics/ColorMatrix;)V
    .locals 0

    .line 80
    invoke-virtual {p0}, Landroid/graphics/ColorMatrixColorFilter;->discardNativeInstance()V

    if-nez p1, :cond_0

    .line 82
    iget-object p0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    goto :goto_0

    .line 84
    :cond_0
    iget-object p0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {p0, p1}, Landroid/graphics/ColorMatrix;->set(Landroid/graphics/ColorMatrix;)V

    :goto_0
    return-void
.end method

.method public setColorMatrixArray([F)V
    .locals 2

    .line 109
    invoke-virtual {p0}, Landroid/graphics/ColorMatrixColorFilter;->discardNativeInstance()V

    if-nez p1, :cond_0

    .line 111
    iget-object p0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    goto :goto_0

    .line 113
    :cond_0
    array-length v0, p1

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    .line 116
    iget-object p0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {p0, p1}, Landroid/graphics/ColorMatrix;->set([F)V

    :goto_0
    return-void

    .line 114
    :cond_1
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method
