.class public final Landroid/hardware/camera2/params/MeteringRectangle;
.super Ljava/lang/Object;
.source "MeteringRectangle.java"


# static fields
.field public static final METERING_WEIGHT_DONT_CARE:I = 0x0

.field public static final METERING_WEIGHT_MAX:I = 0x3e8

.field public static final METERING_WEIGHT_MIN:I


# instance fields
.field private final mHeight:I

.field private final mWeight:I

.field private final mWidth:I

.field private final mX:I

.field private final mY:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "x must be nonnegative"

    .line 92
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    const-string/jumbo p1, "y must be nonnegative"

    .line 93
    invoke-static {p2, p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    const-string/jumbo p1, "width must be nonnegative"

    .line 94
    invoke-static {p3, p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    const-string p1, "height must be nonnegative"

    .line 95
    invoke-static {p4, p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    const-string/jumbo p1, "meteringWeight"

    const/4 p2, 0x0

    const/16 p3, 0x3e8

    .line 96
    invoke-static {p5, p2, p3, p1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWeight:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Point;Landroid/util/Size;I)V
    .locals 2

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "xy must not be null"

    .line 113
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "dimensions must not be null"

    .line 114
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget v0, p1, Landroid/graphics/Point;->x:I

    const-string/jumbo v1, "x must be nonnegative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    .line 117
    iget p1, p1, Landroid/graphics/Point;->y:I

    const-string/jumbo v0, "y must be nonnegative"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    .line 118
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p1

    const-string/jumbo v0, "width must be nonnegative"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    .line 119
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p1

    const-string p2, "height must be nonnegative"

    invoke-static {p1, p2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    const-string/jumbo p1, "meteringWeight must be nonnegative"

    .line 120
    invoke-static {p3, p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWeight:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;I)V
    .locals 2

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "rect must not be null"

    .line 135
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget v0, p1, Landroid/graphics/Rect;->left:I

    const-string/jumbo v1, "rect.left must be nonnegative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    .line 138
    iget v0, p1, Landroid/graphics/Rect;->top:I

    const-string/jumbo v1, "rect.top must be nonnegative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    .line 139
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    const-string/jumbo v1, "rect.width must be nonnegative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    .line 140
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    const-string/jumbo v0, "rect.height must be nonnegative"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    const-string/jumbo p1, "meteringWeight must be nonnegative"

    .line 141
    invoke-static {p2, p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWeight:I

    return-void
.end method


# virtual methods
.method public equals(Landroid/hardware/camera2/params/MeteringRectangle;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 243
    :cond_0
    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    iget v2, p1, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    iget v2, p1, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    iget v2, p1, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    iget v2, p1, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    if-ne v1, v2, :cond_1

    iget p0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWeight:I

    iget p1, p1, Landroid/hardware/camera2/params/MeteringRectangle;->mWeight:I

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 225
    instance-of v0, p1, Landroid/hardware/camera2/params/MeteringRectangle;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/MeteringRectangle;->equals(Landroid/hardware/camera2/params/MeteringRectangle;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getHeight()I
    .locals 0

    .line 177
    iget p0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    return p0
.end method

.method public getMeteringWeight()I
    .locals 0

    .line 186
    iget p0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWeight:I

    return p0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 5

    .line 217
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    iget v2, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    iget v3, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    iget v4, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    iget p0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    add-int/2addr v4, p0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getSize()Landroid/util/Size;
    .locals 2

    .line 206
    new-instance v0, Landroid/util/Size;

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    iget p0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public getUpperLeftPoint()Landroid/graphics/Point;
    .locals 2

    .line 195
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    iget p0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getWidth()I
    .locals 0

    .line 168
    iget p0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    return p0
.end method

.method public getX()I
    .locals 0

    .line 150
    iget p0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    return p0
.end method

.method public getY()I
    .locals 0

    .line 159
    iget p0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    .line 255
    new-array v0, v0, [I

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    const/4 v2, 0x3

    aput v1, v0, v2

    iget p0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWeight:I

    const/4 v1, 0x4

    aput p0, v0, v1

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "(x:%d, y:%d, w:%d, h:%d, wt:%d)"

    const/4 v1, 0x5

    .line 267
    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget p0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWeight:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x4

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
