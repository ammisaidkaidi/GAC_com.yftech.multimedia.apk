.class public Lcom/android/internal/widget/ScrollBarUtils;
.super Ljava/lang/Object;
.source "ScrollBarUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getThumbLength(IIII)I
    .locals 0

    mul-int/lit8 p1, p1, 0x2

    int-to-float p0, p0

    int-to-float p2, p2

    mul-float/2addr p0, p2

    int-to-float p2, p3

    div-float/2addr p0, p2

    .line 24
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    if-ge p0, p1, :cond_0

    move p0, p1

    :cond_0
    return p0
.end method

.method public static getThumbOffset(IIIII)I
    .locals 0

    sub-int/2addr p0, p1

    int-to-float p1, p0

    int-to-float p4, p4

    mul-float/2addr p1, p4

    sub-int/2addr p3, p2

    int-to-float p2, p3

    div-float/2addr p1, p2

    .line 33
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-le p1, p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    return p0
.end method
