.class Landroid/content/res/StringBlock$Height;
.super Ljava/lang/Object;
.source "StringBlock.java"

# interfaces
.implements Landroid/text/style/LineHeightSpan$WithDensity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/StringBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Height"
.end annotation


# static fields
.field private static sProportion:F


# instance fields
.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    iput p1, p0, Landroid/content/res/StringBlock$Height;->mSize:I

    return-void
.end method


# virtual methods
.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 415
    invoke-virtual/range {v0 .. v7}, Landroid/content/res/StringBlock$Height;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    return-void
.end method

.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V
    .locals 0

    .line 421
    iget p0, p0, Landroid/content/res/StringBlock$Height;->mSize:I

    if-eqz p7, :cond_0

    int-to-float p0, p0

    .line 423
    iget p1, p7, Landroid/text/TextPaint;->density:F

    mul-float/2addr p0, p1

    float-to-int p0, p0

    .line 426
    :cond_0
    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget p2, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr p1, p2

    if-ge p1, p0, :cond_1

    .line 427
    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr p1, p0

    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 428
    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr p1, p0

    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    goto :goto_0

    .line 430
    :cond_1
    sget p1, Landroid/content/res/StringBlock$Height;->sProportion:F

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    const/4 p2, 0x0

    if-nez p1, :cond_2

    .line 438
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    const/high16 p3, 0x42c80000    # 100.0f

    .line 439
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 440
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    const-string p4, "ABCDEFG"

    const/4 p5, 0x7

    .line 441
    invoke-virtual {p1, p4, p2, p5, p3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 443
    iget p3, p3, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    move-result p1

    div-float/2addr p3, p1

    sput p3, Landroid/content/res/StringBlock$Height;->sProportion:F

    .line 446
    :cond_2
    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int p1, p1

    int-to-float p1, p1

    sget p3, Landroid/content/res/StringBlock$Height;->sProportion:F

    mul-float/2addr p1, p3

    float-to-double p3, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p3

    double-to-int p1, p3

    .line 448
    iget p3, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int p3, p0, p3

    if-lt p3, p1, :cond_3

    .line 453
    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr p1, p0

    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 454
    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr p1, p0

    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    goto :goto_0

    :cond_3
    if-lt p0, p1, :cond_4

    neg-int p1, p1

    .line 461
    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 462
    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr p1, p0

    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_0

    :cond_4
    neg-int p0, p0

    .line 468
    iput p0, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput p0, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 469
    iput p2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput p2, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    :goto_0
    return-void
.end method
