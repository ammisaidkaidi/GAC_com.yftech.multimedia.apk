.class public Landroid/graphics/NinePatch$InsetStruct;
.super Ljava/lang/Object;
.source "NinePatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/NinePatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InsetStruct"
.end annotation


# instance fields
.field public final opticalRect:Landroid/graphics/Rect;

.field public final outlineAlpha:F

.field public final outlineRadius:F

.field public final outlineRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(IIIIIIIIFIF)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/graphics/NinePatch$InsetStruct;->opticalRect:Landroid/graphics/Rect;

    .line 48
    iget-object p1, p0, Landroid/graphics/NinePatch$InsetStruct;->opticalRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p11}, Landroid/graphics/Rect;->scale(F)V

    .line 50
    invoke-static {p5, p6, p7, p8, p11}, Landroid/graphics/NinePatch$InsetStruct;->scaleInsets(IIIIF)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Landroid/graphics/NinePatch$InsetStruct;->outlineRect:Landroid/graphics/Rect;

    mul-float/2addr p9, p11

    .line 53
    iput p9, p0, Landroid/graphics/NinePatch$InsetStruct;->outlineRadius:F

    int-to-float p1, p10

    const/high16 p2, 0x437f0000    # 255.0f

    div-float/2addr p1, p2

    .line 54
    iput p1, p0, Landroid/graphics/NinePatch$InsetStruct;->outlineAlpha:F

    return-void
.end method

.method public static scaleInsets(IIIIF)Landroid/graphics/Rect;
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p4, v0

    if-nez v0, :cond_0

    .line 68
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4, p0, p1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p4

    .line 71
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    int-to-float p0, p0

    mul-float/2addr p0, p4

    float-to-double v1, p0

    .line 72
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p0, v1

    iput p0, v0, Landroid/graphics/Rect;->left:I

    int-to-float p0, p1

    mul-float/2addr p0, p4

    float-to-double p0, p0

    .line 73
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    iput p0, v0, Landroid/graphics/Rect;->top:I

    int-to-float p0, p2

    mul-float/2addr p0, p4

    float-to-double p0, p0

    .line 74
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    iput p0, v0, Landroid/graphics/Rect;->right:I

    int-to-float p0, p3

    mul-float/2addr p0, p4

    float-to-double p0, p0

    .line 75
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method
