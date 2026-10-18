.class final Landroid/graphics/ColorSpace$Xyz;
.super Landroid/graphics/ColorSpace;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Xyz"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 1787
    sget-object v0, Landroid/graphics/ColorSpace$Model;->XYZ:Landroid/graphics/ColorSpace$Model;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/graphics/ColorSpace;-><init>(Ljava/lang/String;Landroid/graphics/ColorSpace$Model;ILandroid/graphics/ColorSpace$1;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILandroid/graphics/ColorSpace$1;)V
    .locals 0

    .line 1785
    invoke-direct {p0, p1, p2}, Landroid/graphics/ColorSpace$Xyz;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static clamp(F)F
    .locals 3

    const/high16 v0, -0x40000000    # -2.0f

    cmpg-float v1, p0, v0

    const/high16 v2, 0x40000000    # 2.0f

    if-gez v1, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    cmpl-float v0, p0, v2

    if-lez v0, :cond_1

    move p0, v2

    :cond_1
    :goto_0
    return p0
.end method


# virtual methods
.method public fromXyz([F)[F
    .locals 1

    const/4 p0, 0x0

    .line 1815
    aget v0, p1, p0

    invoke-static {v0}, Landroid/graphics/ColorSpace$Xyz;->clamp(F)F

    move-result v0

    aput v0, p1, p0

    const/4 p0, 0x1

    .line 1816
    aget v0, p1, p0

    invoke-static {v0}, Landroid/graphics/ColorSpace$Xyz;->clamp(F)F

    move-result v0

    aput v0, p1, p0

    const/4 p0, 0x2

    .line 1817
    aget v0, p1, p0

    invoke-static {v0}, Landroid/graphics/ColorSpace$Xyz;->clamp(F)F

    move-result v0

    aput v0, p1, p0

    return-object p1
.end method

.method public getMaxValue(I)F
    .locals 0

    const/high16 p0, 0x40000000    # 2.0f

    return p0
.end method

.method public getMinValue(I)F
    .locals 0

    const/high16 p0, -0x40000000    # -2.0f

    return p0
.end method

.method public isWideGamut()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public toXyz([F)[F
    .locals 1

    const/4 p0, 0x0

    .line 1807
    aget v0, p1, p0

    invoke-static {v0}, Landroid/graphics/ColorSpace$Xyz;->clamp(F)F

    move-result v0

    aput v0, p1, p0

    const/4 p0, 0x1

    .line 1808
    aget v0, p1, p0

    invoke-static {v0}, Landroid/graphics/ColorSpace$Xyz;->clamp(F)F

    move-result v0

    aput v0, p1, p0

    const/4 p0, 0x2

    .line 1809
    aget v0, p1, p0

    invoke-static {v0}, Landroid/graphics/ColorSpace$Xyz;->clamp(F)F

    move-result v0

    aput v0, p1, p0

    return-object p1
.end method
