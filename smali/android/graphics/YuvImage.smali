.class public Landroid/graphics/YuvImage;
.super Ljava/lang/Object;
.source "YuvImage.java"


# static fields
.field private static final WORKING_COMPRESS_STORAGE:I = 0x1000


# instance fields
.field private mData:[B

.field private mFormat:I

.field private mHeight:I

.field private mStrides:[I

.field private mWidth:I


# direct methods
.method public constructor <init>([BIII[I)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x11

    if-eq p2, v0, :cond_1

    const/16 v0, 0x14

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "only support ImageFormat.NV21 and ImageFormat.YUY2 for now"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-lez p3, :cond_4

    if-lez p4, :cond_4

    if-eqz p1, :cond_3

    if-nez p5, :cond_2

    .line 97
    invoke-direct {p0, p3, p2}, Landroid/graphics/YuvImage;->calculateStrides(II)[I

    move-result-object p5

    iput-object p5, p0, Landroid/graphics/YuvImage;->mStrides:[I

    goto :goto_1

    .line 99
    :cond_2
    iput-object p5, p0, Landroid/graphics/YuvImage;->mStrides:[I

    .line 102
    :goto_1
    iput-object p1, p0, Landroid/graphics/YuvImage;->mData:[B

    .line 103
    iput p2, p0, Landroid/graphics/YuvImage;->mFormat:I

    .line 104
    iput p3, p0, Landroid/graphics/YuvImage;->mWidth:I

    .line 105
    iput p4, p0, Landroid/graphics/YuvImage;->mHeight:I

    return-void

    .line 93
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "yuv cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 88
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "width and height must large than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private adjustRectangle(Landroid/graphics/Rect;)V
    .locals 4

    .line 215
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 216
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 217
    iget v2, p0, Landroid/graphics/YuvImage;->mFormat:I

    const/16 v3, 0x11

    if-ne v2, v3, :cond_0

    and-int/lit8 v0, v0, -0x2

    and-int/lit8 v1, v1, -0x2

    .line 221
    iget v2, p1, Landroid/graphics/Rect;->left:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 222
    iget v2, p1, Landroid/graphics/Rect;->top:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 223
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 224
    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 227
    :cond_0
    iget p0, p0, Landroid/graphics/YuvImage;->mFormat:I

    const/16 v1, 0x14

    if-ne p0, v1, :cond_1

    and-int/lit8 p0, v0, -0x2

    .line 230
    iget v0, p1, Landroid/graphics/Rect;->left:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 231
    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    :cond_1
    return-void
.end method

.method private calculateStrides(II)[I
    .locals 3

    const/4 p0, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/16 v2, 0x11

    if-ne p2, v2, :cond_0

    .line 202
    new-array p2, v1, [I

    aput p1, p2, v0

    aput p1, p2, p0

    return-object p2

    :cond_0
    const/16 v2, 0x14

    if-ne p2, v2, :cond_1

    .line 207
    new-array p0, p0, [I

    mul-int/2addr p1, v1

    aput p1, p0, v0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static native nativeCompressToJpeg([BIII[I[IILjava/io/OutputStream;[B)Z
.end method


# virtual methods
.method calculateOffsets(II)[I
    .locals 6

    .line 184
    iget v0, p0, Landroid/graphics/YuvImage;->mFormat:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x11

    if-ne v0, v4, :cond_0

    .line 185
    new-array v0, v3, [I

    iget-object v4, p0, Landroid/graphics/YuvImage;->mStrides:[I

    aget v4, v4, v2

    mul-int/2addr v4, p2

    add-int/2addr v4, p1

    aput v4, v0, v2

    iget v4, p0, Landroid/graphics/YuvImage;->mHeight:I

    iget-object v5, p0, Landroid/graphics/YuvImage;->mStrides:[I

    aget v2, v5, v2

    mul-int/2addr v4, v2

    div-int/2addr p2, v3

    iget-object p0, p0, Landroid/graphics/YuvImage;->mStrides:[I

    aget p0, p0, v1

    mul-int/2addr p2, p0

    add-int/2addr v4, p2

    div-int/2addr p1, v3

    mul-int/2addr p1, v3

    add-int/2addr v4, p1

    aput v4, v0, v1

    return-object v0

    .line 191
    :cond_0
    iget v0, p0, Landroid/graphics/YuvImage;->mFormat:I

    const/16 v4, 0x14

    if-ne v0, v4, :cond_1

    .line 192
    new-array v0, v1, [I

    iget-object p0, p0, Landroid/graphics/YuvImage;->mStrides:[I

    aget p0, p0, v2

    mul-int/2addr p2, p0

    div-int/2addr p1, v3

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr p2, p1

    aput p2, v0, v2

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z
    .locals 11

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/YuvImage;->mWidth:I

    iget v2, p0, Landroid/graphics/YuvImage;->mHeight:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 125
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-ltz p2, :cond_1

    const/16 v0, 0x64

    if-gt p2, v0, :cond_1

    if-eqz p3, :cond_0

    .line 138
    invoke-direct {p0, p1}, Landroid/graphics/YuvImage;->adjustRectangle(Landroid/graphics/Rect;)V

    .line 139
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v0, v1}, Landroid/graphics/YuvImage;->calculateOffsets(II)[I

    move-result-object v6

    .line 141
    iget-object v2, p0, Landroid/graphics/YuvImage;->mData:[B

    iget v3, p0, Landroid/graphics/YuvImage;->mFormat:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 142
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget-object v7, p0, Landroid/graphics/YuvImage;->mStrides:[I

    const/16 p0, 0x1000

    new-array v10, p0, [B

    move v8, p2

    move-object v9, p3

    .line 141
    invoke-static/range {v2 .. v10}, Landroid/graphics/YuvImage;->nativeCompressToJpeg([BIII[I[IILjava/io/OutputStream;[B)Z

    move-result p0

    return p0

    .line 135
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "stream cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 131
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "quality must be 0..100"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 126
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "rectangle is not inside the image"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getHeight()I
    .locals 0

    .line 179
    iget p0, p0, Landroid/graphics/YuvImage;->mHeight:I

    return p0
.end method

.method public getStrides()[I
    .locals 0

    .line 165
    iget-object p0, p0, Landroid/graphics/YuvImage;->mStrides:[I

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    .line 172
    iget p0, p0, Landroid/graphics/YuvImage;->mWidth:I

    return p0
.end method

.method public getYuvData()[B
    .locals 0

    .line 151
    iget-object p0, p0, Landroid/graphics/YuvImage;->mData:[B

    return-object p0
.end method

.method public getYuvFormat()I
    .locals 0

    .line 158
    iget p0, p0, Landroid/graphics/YuvImage;->mFormat:I

    return p0
.end method
