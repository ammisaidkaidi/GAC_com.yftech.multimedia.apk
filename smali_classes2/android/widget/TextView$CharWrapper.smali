.class Landroid/widget/TextView$CharWrapper;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;
.implements Landroid/text/GraphicsOperations;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharWrapper"
.end annotation


# instance fields
.field private mChars:[C

.field private mLength:I

.field private mStart:I


# direct methods
.method public constructor <init>([CII)V
    .locals 0

    .line 12305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12306
    iput-object p1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    .line 12307
    iput p2, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    .line 12308
    iput p3, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    return-void
.end method

.method static synthetic access$202(Landroid/widget/TextView$CharWrapper;[C)[C
    .locals 0

    .line 12301
    iput-object p1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    return-object p1
.end method


# virtual methods
.method public charAt(I)C
    .locals 1

    .line 12322
    iget-object v0, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget p0, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr p1, p0

    aget-char p0, v0, p1

    return p0
.end method

.method public drawText(Landroid/graphics/BaseCanvas;IIFFLandroid/graphics/Paint;)V
    .locals 7

    .line 12349
    iget-object v1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget p0, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int v2, p2, p0

    sub-int v3, p3, p2

    move-object v0, p1

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/BaseCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawTextRun(Landroid/graphics/BaseCanvas;IIIIFFZLandroid/graphics/Paint;)V
    .locals 10

    move-object v0, p0

    sub-int v3, p3, p2

    sub-int v5, p5, p4

    .line 12357
    iget-object v4, v0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v6, v0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr v6, p2

    iget v0, v0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int v7, p4, v0

    move-object v0, p1

    move-object v1, v4

    move v2, v6

    move v4, v7

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/BaseCanvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public getChars(II[CI)V
    .locals 1

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 12339
    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    if-gt p1, v0, :cond_0

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    if-gt p2, v0, :cond_0

    .line 12343
    iget-object v0, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget p0, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr p0, p1

    sub-int/2addr p2, p1

    invoke-static {v0, p0, p3, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 12340
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getTextRunAdvances(IIIIZ[FILandroid/graphics/Paint;)F
    .locals 9

    move-object v0, p0

    sub-int v3, p2, p1

    sub-int v5, p4, p3

    .line 12374
    iget-object v4, v0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v6, v0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr v6, p1

    iget v0, v0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int v7, p3, v0

    move-object/from16 v0, p8

    move-object v1, v4

    move v2, v6

    move v4, v7

    move v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v0

    return v0
.end method

.method public getTextRunCursor(IIIIILandroid/graphics/Paint;)I
    .locals 7

    sub-int v3, p2, p1

    .line 12382
    iget-object v1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget p2, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int v2, p1, p2

    iget p0, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int v5, p4, p0

    move-object v0, p6

    move v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    move-result p0

    return p0
.end method

.method public getTextWidths(II[FLandroid/graphics/Paint;)I
    .locals 1

    .line 12366
    iget-object v0, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget p0, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr p0, p1

    sub-int/2addr p2, p1

    invoke-virtual {p4, v0, p0, p2, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result p0

    return p0
.end method

.method public length()I
    .locals 0

    .line 12318
    iget p0, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    return p0
.end method

.method public measureText(IILandroid/graphics/Paint;)F
    .locals 1

    .line 12362
    iget-object v0, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget p0, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr p0, p1

    sub-int/2addr p2, p1

    invoke-virtual {p3, v0, p0, p2}, Landroid/graphics/Paint;->measureText([CII)F

    move-result p0

    return p0
.end method

.method set([CII)V
    .locals 0

    .line 12312
    iput-object p1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    .line 12313
    iput p2, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    .line 12314
    iput p3, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 12331
    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    if-gt p1, v0, :cond_0

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    if-gt p2, v0, :cond_0

    .line 12335
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget p0, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr p0, p1

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, p0, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 12332
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 12327
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v2, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    iget p0, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    invoke-direct {v0, v1, v2, p0}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
