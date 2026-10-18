.class public Landroid/renderscript/Type;
.super Landroid/renderscript/BaseObj;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Type$Builder;,
        Landroid/renderscript/Type$CubemapFace;
    }
.end annotation


# static fields
.field static final mMaxArrays:I = 0x4


# instance fields
.field mArrays:[I

.field mDimFaces:Z

.field mDimMipmaps:Z

.field mDimX:I

.field mDimY:I

.field mDimYuv:I

.field mDimZ:I

.field mElement:Landroid/renderscript/Element;

.field mElementCount:I


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 0

    .line 229
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    return-void
.end method

.method public static createX(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Type;
    .locals 10

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    .line 268
    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move v4, p2

    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    move-result-wide v0

    .line 269
    new-instance v2, Landroid/renderscript/Type;

    invoke-direct {v2, v0, v1, p0}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 270
    iput-object p1, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 271
    iput p2, v2, Landroid/renderscript/Type;->mDimX:I

    .line 272
    invoke-virtual {v2}, Landroid/renderscript/Type;->calcElementCount()V

    return-object v2

    .line 265
    :cond_0
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    const-string p1, "Dimension must be >= 1."

    invoke-direct {p0, p1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createXY(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Type;
    .locals 10

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    if-lt p3, v0, :cond_0

    .line 292
    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    move-result-wide v0

    .line 293
    new-instance v2, Landroid/renderscript/Type;

    invoke-direct {v2, v0, v1, p0}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 294
    iput-object p1, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 295
    iput p2, v2, Landroid/renderscript/Type;->mDimX:I

    .line 296
    iput p3, v2, Landroid/renderscript/Type;->mDimY:I

    .line 297
    invoke-virtual {v2}, Landroid/renderscript/Type;->calcElementCount()V

    return-object v2

    .line 289
    :cond_0
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    const-string p1, "Dimension must be >= 1."

    invoke-direct {p0, p1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createXYZ(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;III)Landroid/renderscript/Type;
    .locals 10

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    if-lt p3, v0, :cond_0

    if-lt p4, v0, :cond_0

    .line 318
    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    move-result-wide v0

    .line 319
    new-instance v2, Landroid/renderscript/Type;

    invoke-direct {v2, v0, v1, p0}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 320
    iput-object p1, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 321
    iput p2, v2, Landroid/renderscript/Type;->mDimX:I

    .line 322
    iput p3, v2, Landroid/renderscript/Type;->mDimY:I

    .line 323
    iput p4, v2, Landroid/renderscript/Type;->mDimZ:I

    .line 324
    invoke-virtual {v2}, Landroid/renderscript/Type;->calcElementCount()V

    return-object v2

    .line 315
    :cond_0
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    const-string p1, "Dimension must be >= 1."

    invoke-direct {p0, p1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method calcElementCount()V
    .locals 8

    .line 184
    invoke-virtual {p0}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v0

    .line 185
    invoke-virtual {p0}, Landroid/renderscript/Type;->getX()I

    move-result v1

    .line 186
    invoke-virtual {p0}, Landroid/renderscript/Type;->getY()I

    move-result v2

    .line 187
    invoke-virtual {p0}, Landroid/renderscript/Type;->getZ()I

    move-result v3

    .line 189
    invoke-virtual {p0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    const/4 v4, 0x6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    if-nez v1, :cond_1

    move v1, v5

    :cond_1
    if-nez v2, :cond_2

    move v2, v5

    :cond_2
    if-nez v3, :cond_3

    move v3, v5

    :cond_3
    mul-int v6, v1, v2

    mul-int/2addr v6, v3

    mul-int/2addr v6, v4

    :goto_1
    if-eqz v0, :cond_8

    if-gt v1, v5, :cond_4

    if-gt v2, v5, :cond_4

    if-le v3, v5, :cond_8

    :cond_4
    if-le v1, v5, :cond_5

    shr-int/lit8 v1, v1, 0x1

    :cond_5
    if-le v2, v5, :cond_6

    shr-int/lit8 v2, v2, 0x1

    :cond_6
    if-le v3, v5, :cond_7

    shr-int/lit8 v3, v3, 0x1

    :cond_7
    mul-int v7, v1, v2

    mul-int/2addr v7, v3

    mul-int/2addr v7, v4

    add-int/2addr v6, v7

    goto :goto_1

    .line 218
    :cond_8
    iget-object v0, p0, Landroid/renderscript/Type;->mArrays:[I

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    .line 219
    :goto_2
    iget-object v1, p0, Landroid/renderscript/Type;->mArrays:[I

    array-length v1, v1

    if-ge v0, v1, :cond_9

    .line 220
    iget-object v1, p0, Landroid/renderscript/Type;->mArrays:[I

    aget v1, v1, v0

    mul-int/2addr v6, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 224
    :cond_9
    iput v6, p0, Landroid/renderscript/Type;->mElementCount:I

    return-void
.end method

.method public getArray(I)I
    .locals 1

    if-ltz p1, :cond_2

    const/4 v0, 0x4

    if-ge p1, v0, :cond_2

    .line 164
    iget-object v0, p0, Landroid/renderscript/Type;->mArrays:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/renderscript/Type;->mArrays:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    iget-object p0, p0, Landroid/renderscript/Type;->mArrays:[I

    aget p0, p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0

    .line 161
    :cond_2
    new-instance p0, Landroid/renderscript/RSIllegalArgumentException;

    const-string p1, "Array dimension out of range."

    invoke-direct {p0, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getArrayCount()I
    .locals 1

    .line 179
    iget-object v0, p0, Landroid/renderscript/Type;->mArrays:[I

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/renderscript/Type;->mArrays:[I

    array-length p0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCount()I
    .locals 0

    .line 149
    iget p0, p0, Landroid/renderscript/Type;->mElementCount:I

    return p0
.end method

.method public getElement()Landroid/renderscript/Element;
    .locals 0

    .line 85
    iget-object p0, p0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    return-object p0
.end method

.method public getX()I
    .locals 0

    .line 94
    iget p0, p0, Landroid/renderscript/Type;->mDimX:I

    return p0
.end method

.method public getY()I
    .locals 0

    .line 103
    iget p0, p0, Landroid/renderscript/Type;->mDimY:I

    return p0
.end method

.method public getYuv()I
    .locals 0

    .line 122
    iget p0, p0, Landroid/renderscript/Type;->mDimYuv:I

    return p0
.end method

.method public getZ()I
    .locals 0

    .line 112
    iget p0, p0, Landroid/renderscript/Type;->mDimZ:I

    return p0
.end method

.method public hasFaces()Z
    .locals 0

    .line 140
    iget-boolean p0, p0, Landroid/renderscript/Type;->mDimFaces:Z

    return p0
.end method

.method public hasMipmaps()Z
    .locals 0

    .line 131
    iget-boolean p0, p0, Landroid/renderscript/Type;->mDimMipmaps:Z

    return p0
.end method

.method updateFromNative()V
    .locals 7

    const/4 v0, 0x6

    .line 236
    new-array v0, v0, [J

    .line 237
    iget-object v1, p0, Landroid/renderscript/Type;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/Type;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/renderscript/RenderScript;->nTypeGetNativeData(J[J)V

    const/4 v1, 0x0

    .line 239
    aget-wide v2, v0, v1

    long-to-int v2, v2

    iput v2, p0, Landroid/renderscript/Type;->mDimX:I

    const/4 v2, 0x1

    .line 240
    aget-wide v3, v0, v2

    long-to-int v3, v3

    iput v3, p0, Landroid/renderscript/Type;->mDimY:I

    const/4 v3, 0x2

    .line 241
    aget-wide v3, v0, v3

    long-to-int v3, v3

    iput v3, p0, Landroid/renderscript/Type;->mDimZ:I

    const/4 v3, 0x3

    .line 242
    aget-wide v3, v0, v3

    const-wide/16 v5, 0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Landroid/renderscript/Type;->mDimMipmaps:Z

    const/4 v3, 0x4

    .line 243
    aget-wide v3, v0, v3

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Landroid/renderscript/Type;->mDimFaces:Z

    const/4 v1, 0x5

    .line 245
    aget-wide v1, v0, v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_2

    .line 247
    new-instance v0, Landroid/renderscript/Element;

    iget-object v3, p0, Landroid/renderscript/Type;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/Element;-><init>(JLandroid/renderscript/RenderScript;)V

    iput-object v0, p0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 248
    iget-object v0, p0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v0}, Landroid/renderscript/Element;->updateFromNative()V

    .line 250
    :cond_2
    invoke-virtual {p0}, Landroid/renderscript/Type;->calcElementCount()V

    return-void
.end method
