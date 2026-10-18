.class public Landroid/filterfw/format/PrimitiveFormat;
.super Ljava/lang/Object;
.source "PrimitiveFormat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createByteFormat(I)Landroid/filterfw/core/MutableFrameFormat;
    .locals 1

    const/4 v0, 0x2

    .line 49
    invoke-static {v0, p0}, Landroid/filterfw/format/PrimitiveFormat;->createFormat(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object p0

    return-object p0
.end method

.method public static createByteFormat(II)Landroid/filterfw/core/MutableFrameFormat;
    .locals 1

    const/4 v0, 0x2

    .line 29
    invoke-static {v0, p0, p1}, Landroid/filterfw/format/PrimitiveFormat;->createFormat(III)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object p0

    return-object p0
.end method

.method public static createDoubleFormat(I)Landroid/filterfw/core/MutableFrameFormat;
    .locals 1

    const/4 v0, 0x6

    .line 65
    invoke-static {v0, p0}, Landroid/filterfw/format/PrimitiveFormat;->createFormat(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object p0

    return-object p0
.end method

.method public static createDoubleFormat(II)Landroid/filterfw/core/MutableFrameFormat;
    .locals 1

    const/4 v0, 0x6

    .line 45
    invoke-static {v0, p0, p1}, Landroid/filterfw/format/PrimitiveFormat;->createFormat(III)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object p0

    return-object p0
.end method

.method public static createFloatFormat(I)Landroid/filterfw/core/MutableFrameFormat;
    .locals 1

    const/4 v0, 0x5

    .line 61
    invoke-static {v0, p0}, Landroid/filterfw/format/PrimitiveFormat;->createFormat(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object p0

    return-object p0
.end method

.method public static createFloatFormat(II)Landroid/filterfw/core/MutableFrameFormat;
    .locals 1

    const/4 v0, 0x5

    .line 41
    invoke-static {v0, p0, p1}, Landroid/filterfw/format/PrimitiveFormat;->createFormat(III)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object p0

    return-object p0
.end method

.method private static createFormat(II)Landroid/filterfw/core/MutableFrameFormat;
    .locals 1

    .line 75
    new-instance v0, Landroid/filterfw/core/MutableFrameFormat;

    invoke-direct {v0, p0, p1}, Landroid/filterfw/core/MutableFrameFormat;-><init>(II)V

    const/4 p0, 0x1

    .line 76
    invoke-virtual {v0, p0}, Landroid/filterfw/core/MutableFrameFormat;->setDimensionCount(I)V

    return-object v0
.end method

.method private static createFormat(III)Landroid/filterfw/core/MutableFrameFormat;
    .locals 1

    .line 69
    new-instance v0, Landroid/filterfw/core/MutableFrameFormat;

    invoke-direct {v0, p0, p2}, Landroid/filterfw/core/MutableFrameFormat;-><init>(II)V

    .line 70
    invoke-virtual {v0, p1}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(I)V

    return-object v0
.end method

.method public static createInt16Format(I)Landroid/filterfw/core/MutableFrameFormat;
    .locals 1

    const/4 v0, 0x3

    .line 53
    invoke-static {v0, p0}, Landroid/filterfw/format/PrimitiveFormat;->createFormat(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object p0

    return-object p0
.end method

.method public static createInt16Format(II)Landroid/filterfw/core/MutableFrameFormat;
    .locals 1

    const/4 v0, 0x3

    .line 33
    invoke-static {v0, p0, p1}, Landroid/filterfw/format/PrimitiveFormat;->createFormat(III)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object p0

    return-object p0
.end method

.method public static createInt32Format(I)Landroid/filterfw/core/MutableFrameFormat;
    .locals 1

    const/4 v0, 0x4

    .line 57
    invoke-static {v0, p0}, Landroid/filterfw/format/PrimitiveFormat;->createFormat(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object p0

    return-object p0
.end method

.method public static createInt32Format(II)Landroid/filterfw/core/MutableFrameFormat;
    .locals 1

    const/4 v0, 0x4

    .line 37
    invoke-static {v0, p0, p1}, Landroid/filterfw/format/PrimitiveFormat;->createFormat(III)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object p0

    return-object p0
.end method
