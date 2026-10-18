.class public Landroid/print/pdf/PrintedPdfDocument;
.super Landroid/graphics/pdf/PdfDocument;
.source "PrintedPdfDocument.java"


# static fields
.field private static final MILS_PER_INCH:I = 0x3e8

.field private static final POINTS_IN_INCH:I = 0x48


# instance fields
.field private final mContentRect:Landroid/graphics/Rect;

.field private final mPageHeight:I

.field private final mPageWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V
    .locals 4

    .line 83
    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;-><init>()V

    .line 84
    invoke-virtual {p2}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    move-result-object p1

    .line 87
    invoke-virtual {p1}, Landroid/print/PrintAttributes$MediaSize;->getWidthMils()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    const/high16 v2, 0x42900000    # 72.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroid/print/pdf/PrintedPdfDocument;->mPageWidth:I

    .line 89
    invoke-virtual {p1}, Landroid/print/PrintAttributes$MediaSize;->getHeightMils()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    mul-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Landroid/print/pdf/PrintedPdfDocument;->mPageHeight:I

    .line 93
    invoke-virtual {p2}, Landroid/print/PrintAttributes;->getMinMargins()Landroid/print/PrintAttributes$Margins;

    move-result-object p1

    .line 94
    invoke-virtual {p1}, Landroid/print/PrintAttributes$Margins;->getLeftMils()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v1

    mul-float/2addr p2, v2

    float-to-int p2, p2

    .line 96
    invoke-virtual {p1}, Landroid/print/PrintAttributes$Margins;->getTopMils()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 98
    invoke-virtual {p1}, Landroid/print/PrintAttributes$Margins;->getRightMils()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    mul-float/2addr v3, v2

    float-to-int v3, v3

    .line 100
    invoke-virtual {p1}, Landroid/print/PrintAttributes$Margins;->getBottomMils()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    mul-float/2addr p1, v2

    float-to-int p1, p1

    .line 102
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Landroid/print/pdf/PrintedPdfDocument;->mPageWidth:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/print/pdf/PrintedPdfDocument;->mPageHeight:I

    sub-int/2addr v3, p1

    invoke-direct {v1, p2, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroid/print/pdf/PrintedPdfDocument;->mContentRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getPageContentRect()Landroid/graphics/Rect;
    .locals 0

    .line 161
    iget-object p0, p0, Landroid/print/pdf/PrintedPdfDocument;->mContentRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getPageHeight()I
    .locals 0

    .line 151
    iget p0, p0, Landroid/print/pdf/PrintedPdfDocument;->mPageHeight:I

    return p0
.end method

.method public getPageWidth()I
    .locals 0

    .line 142
    iget p0, p0, Landroid/print/pdf/PrintedPdfDocument;->mPageWidth:I

    return p0
.end method

.method public startPage(I)Landroid/graphics/pdf/PdfDocument$Page;
    .locals 3

    .line 129
    new-instance v0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;

    iget v1, p0, Landroid/print/pdf/PrintedPdfDocument;->mPageWidth:I

    iget v2, p0, Landroid/print/pdf/PrintedPdfDocument;->mPageHeight:I

    invoke-direct {v0, v1, v2, p1}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;-><init>(III)V

    iget-object p1, p0, Landroid/print/pdf/PrintedPdfDocument;->mContentRect:Landroid/graphics/Rect;

    .line 131
    invoke-virtual {v0, p1}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->setContentRect(Landroid/graphics/Rect;)Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;

    move-result-object p1

    .line 132
    invoke-virtual {p1}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->create()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object p1

    .line 133
    invoke-virtual {p0, p1}, Landroid/print/pdf/PrintedPdfDocument;->startPage(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object p0

    return-object p0
.end method
