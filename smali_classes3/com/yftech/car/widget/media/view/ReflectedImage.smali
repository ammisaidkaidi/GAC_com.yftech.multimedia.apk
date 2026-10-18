.class public Lcom/yftech/car/widget/media/view/ReflectedImage;
.super Landroid/view/View;
.source "ReflectedImage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ReflectedImage"


# instance fields
.field private mReflectedBottomEnd:F

.field private mReflectedTopStart:F

.field private mReflectedViewId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, p2, v0}, Lcom/yftech/car/widget/media/view/ReflectedImage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 113
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    sget-object p3, Lcom/yftech/car/widget/media/R$styleable;->ReflectedImage:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 117
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->ReflectedImage_reflected_top_start:I

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/view/ReflectedImage;->mReflectedTopStart:F

    .line 118
    iget p2, p0, Lcom/yftech/car/widget/media/view/ReflectedImage;->mReflectedTopStart:F

    cmpl-float p2, p2, p3

    const/4 v0, 0x0

    if-lez p2, :cond_0

    .line 119
    iput p3, p0, Lcom/yftech/car/widget/media/view/ReflectedImage;->mReflectedTopStart:F

    goto :goto_0

    .line 120
    :cond_0
    iget p2, p0, Lcom/yftech/car/widget/media/view/ReflectedImage;->mReflectedTopStart:F

    cmpg-float p2, p2, v0

    if-gez p2, :cond_1

    .line 121
    iput v0, p0, Lcom/yftech/car/widget/media/view/ReflectedImage;->mReflectedTopStart:F

    .line 124
    :cond_1
    :goto_0
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->ReflectedImage_reflected_bottom_end:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/view/ReflectedImage;->mReflectedBottomEnd:F

    .line 125
    iget p2, p0, Lcom/yftech/car/widget/media/view/ReflectedImage;->mReflectedBottomEnd:F

    cmpl-float p2, p2, p3

    if-lez p2, :cond_2

    .line 126
    iput p3, p0, Lcom/yftech/car/widget/media/view/ReflectedImage;->mReflectedBottomEnd:F

    goto :goto_1

    .line 127
    :cond_2
    iget p2, p0, Lcom/yftech/car/widget/media/view/ReflectedImage;->mReflectedBottomEnd:F

    cmpg-float p2, p2, v0

    if-gez p2, :cond_3

    .line 128
    iput v0, p0, Lcom/yftech/car/widget/media/view/ReflectedImage;->mReflectedBottomEnd:F

    .line 131
    :cond_3
    :goto_1
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->ReflectedImage_reflected_view_id:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/view/ReflectedImage;->mReflectedViewId:I

    const-string p1, "ReflectedImage"

    .line 133
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ReflectedImage: mReflectedTopStart=="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/yftech/car/widget/media/view/ReflectedImage;->mReflectedTopStart:F

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, ",mReflectedBottomEnd=="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/yftech/car/widget/media/view/ReflectedImage;->mReflectedBottomEnd:F

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private convertViewToBitmap2(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 2

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 155
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object p0
.end method

.method private createReflectedImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v8, p2

    .line 160
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 161
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v10, 0x0

    if-gt v1, v8, :cond_0

    move-object v2, v10

    goto :goto_0

    .line 166
    :cond_0
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    .line 167
    invoke-virtual {v6, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    const/4 v2, 0x0

    sub-int v3, v1, v8

    const/4 v7, 0x1

    move-object/from16 v1, p1

    move v4, v9

    move/from16 v5, p2

    .line 168
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 169
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v8, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 170
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    .line 171
    invoke-virtual {v3, v1, v4, v4, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 173
    iget v1, v0, Lcom/yftech/car/widget/media/view/ReflectedImage;->mReflectedTopStart:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v1, v4

    const v5, 0x4b7fffff    # 1.6777215E7f

    add-float/2addr v1, v5

    float-to-int v1, v1

    .line 174
    iget v0, v0, Lcom/yftech/car/widget/media/view/ReflectedImage;->mReflectedBottomEnd:F

    mul-float/2addr v0, v4

    mul-float/2addr v0, v5

    float-to-int v0, v0

    .line 176
    new-instance v4, Landroid/graphics/LinearGradient;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v14, v5

    const/16 v5, 0xff

    invoke-static {v1, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v15

    invoke-static {v0, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v16

    sget-object v17, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v10, v4

    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 177
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 178
    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 179
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    int-to-float v6, v9

    .line 180
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v7, v0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_0
    return-object v2
.end method


# virtual methods
.method public getReflectedViewId()I
    .locals 0

    .line 137
    iget p0, p0, Lcom/yftech/car/widget/media/view/ReflectedImage;->mReflectedViewId:I

    return p0
.end method

.method public isReflectedViewId(I)Z
    .locals 2

    .line 141
    iget v0, p0, Lcom/yftech/car/widget/media/view/ReflectedImage;->mReflectedViewId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget p0, p0, Lcom/yftech/car/widget/media/view/ReflectedImage;->mReflectedViewId:I

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public setReflectedImage(Landroid/view/View;)V
    .locals 3

    .line 146
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/view/ReflectedImage;->convertViewToBitmap2(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 148
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/ReflectedImage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/ReflectedImage;->getHeight()I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/yftech/car/widget/media/view/ReflectedImage;->createReflectedImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 150
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/view/ReflectedImage;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
