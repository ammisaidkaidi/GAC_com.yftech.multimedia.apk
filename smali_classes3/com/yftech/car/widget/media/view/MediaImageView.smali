.class public Lcom/yftech/car/widget/media/view/MediaImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "MediaImageView.java"


# static fields
.field private static final BODER_RADIUS_DEFAULT:I = 0xa

.field private static final STATE_BORDER_RADIUS:Ljava/lang/String; = "state_border_radius"

.field private static final STATE_INSTANCE:Ljava/lang/String; = "state_instance"

.field private static final STATE_TYPE:Ljava/lang/String; = "state_type"

.field private static final TAG:Ljava/lang/String; = "RoundImageView"

.field public static final TYPE_CIRCLE:I = 0x0

.field public static final TYPE_ROUND:I = 0x1


# instance fields
.field private final mAlbumPicturesExistHideId:[I

.field private final mAlbumPicturesExistShowId:[I

.field private final mAlbumPicturesNoHideId:[I

.field private final mAlbumPicturesNoShowId:[I

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mBorderRadius:I

.field private mDirectoryDrawableId:I

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mFailedResDrawable:I

.field private mLoadFileBitmap:I

.field private mMatrix:Landroid/graphics/Matrix;

.field private mRadius:I

.field private mRoundRect:Landroid/graphics/RectF;

.field private mWidth:I

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 146
    invoke-direct {p0, p1, v0}, Lcom/yftech/car/widget/media/view/MediaImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 98
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x5

    .line 89
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mAlbumPicturesExistShowId:[I

    .line 90
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mAlbumPicturesExistHideId:[I

    .line 92
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mAlbumPicturesNoShowId:[I

    .line 93
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mAlbumPicturesNoHideId:[I

    .line 99
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 100
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 101
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    if-eqz p2, :cond_0

    .line 104
    sget-object v0, Lcom/yftech/car/widget/media/R$styleable;->MediaImageView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 106
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaImageView_borderRadius:I

    const/high16 v0, 0x41200000    # 10.0f

    .line 107
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/MediaImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 106
    invoke-static {v1, v0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mBorderRadius:I

    .line 108
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaImageView_border_radius_type:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->type:I

    .line 110
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaImageView_directory_drawable:I

    const/4 v2, -0x1

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mDirectoryDrawableId:I

    .line 112
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaImageView_failed_res_drawable:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mFailedResDrawable:I

    .line 114
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaImageView_load_file_bitmap:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mLoadFileBitmap:I

    .line 116
    iget-object p2, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mAlbumPicturesExistShowId:[I

    sget v3, Lcom/yftech/car/widget/media/R$styleable;->MediaImageView_album_pictures_exist_show1_id:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, p2, v0

    .line 117
    iget-object p2, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mAlbumPicturesExistShowId:[I

    sget v3, Lcom/yftech/car/widget/media/R$styleable;->MediaImageView_album_pictures_exist_show2_id:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, p2, v1

    .line 118
    iget-object p2, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mAlbumPicturesExistShowId:[I

    sget v3, Lcom/yftech/car/widget/media/R$styleable;->MediaImageView_album_pictures_exist_show3_id:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    const/4 v4, 0x2

    aput v3, p2, v4

    .line 119
    iget-object p2, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mAlbumPicturesExistShowId:[I

    sget v3, Lcom/yftech/car/widget/media/R$styleable;->MediaImageView_album_pictures_exist_show4_id:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    const/4 v5, 0x3

    aput v3, p2, v5

    .line 120
    iget-object p2, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mAlbumPicturesExistShowId:[I

    sget v3, Lcom/yftech/car/widget/media/R$styleable;->MediaImageView_album_pictures_exist_show5_id:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    const/4 v6, 0x4

    aput v3, p2, v6

    .line 122
    iget-object p2, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mAlbumPicturesExistHideId:[I

    sget v3, Lcom/yftech/car/widget/media/R$styleable;->MediaImageView_album_pictures_exist_hide1_id:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, p2, v0

    .line 123
    iget-object p2, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mAlbumPicturesExistHideId:[I

    sget v3, Lcom/yftech/car/widget/media/R$styleable;->MediaImageView_album_pictures_exist_hide2_id:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, p2, v1

    .line 124
    iget-object p2, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mAlbumPicturesExistHideId:[I

    sget v3, Lcom/yftech/car/widget/media/R$styleable;->MediaImageView_album_pictures_exist_hide3_id:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, p2, v4

    .line 125
    iget-object p2, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mAlbumPicturesExistHideId:[I

    sget v3, Lcom/yftech/car/widget/media/R$styleable;->MediaImageView_album_pictures_exist_hide4_id:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, p2, v5

    .line 126
    iget-object p2, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mAlbumPicturesExistHideId:[I

    sget v3, Lcom/yftech/car/widget/media/R$styleable;->MediaImageView_album_pictures_exist_hide5_id:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, p2, v6

    .line 128
    iget-object p2, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mAlbumPicturesNoShowId:[I

    sget v3, Lcom/yftech/car/widget/media/R$styleable;->MediaImageView_album_pictures_no_show1_id:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, p2, v0

    .line 129
    iget-object p2, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mAlbumPicturesNoShowId:[I

    sget v3, Lcom/yftech/car/widget/media/R$styleable;->MediaImageView_album_pictures_no_show2_id:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, p2, v1

    .line 130
    iget-object p2, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mAlbumPicturesNoShowId:[I

    sget v3, Lcom/yftech/car/widget/media/R$styleable;->MediaImageView_album_pictures_no_show3_id:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, p2, v4

    .line 131
    iget-object p2, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mAlbumPicturesNoShowId:[I

    sget v3, Lcom/yftech/car/widget/media/R$styleable;->MediaImageView_album_pictures_no_show4_id:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, p2, v5

    .line 132
    iget-object p2, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mAlbumPicturesNoShowId:[I

    sget v3, Lcom/yftech/car/widget/media/R$styleable;->MediaImageView_album_pictures_no_show5_id:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, p2, v6

    .line 134
    iget-object p2, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mAlbumPicturesNoHideId:[I

    sget v3, Lcom/yftech/car/widget/media/R$styleable;->MediaImageView_album_pictures_no_hide1_id:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, p2, v0

    .line 135
    iget-object p2, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mAlbumPicturesNoHideId:[I

    sget v0, Lcom/yftech/car/widget/media/R$styleable;->MediaImageView_album_pictures_no_hide2_id:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    aput v0, p2, v1

    .line 136
    iget-object p2, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mAlbumPicturesNoHideId:[I

    sget v0, Lcom/yftech/car/widget/media/R$styleable;->MediaImageView_album_pictures_no_hide3_id:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    aput v0, p2, v4

    .line 137
    iget-object p2, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mAlbumPicturesNoHideId:[I

    sget v0, Lcom/yftech/car/widget/media/R$styleable;->MediaImageView_album_pictures_no_hide4_id:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    aput v0, p2, v5

    .line 138
    iget-object p0, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mAlbumPicturesNoHideId:[I

    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaImageView_album_pictures_no_hide5_id:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    aput p2, p0, v6

    .line 140
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method private drawableToBitamp(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 4

    .line 279
    instance-of p0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p0, :cond_0

    .line 281
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 282
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 284
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    .line 285
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 286
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 287
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    .line 288
    invoke-virtual {p1, v3, v3, p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 289
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v1
.end method

.method private setUpShader()V
    .locals 4

    .line 204
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/MediaImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 210
    :cond_0
    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/view/MediaImageView;->drawableToBitamp(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 212
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 214
    iget v1, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->type:I

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_1

    .line 217
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 218
    iget v1, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    int-to-float v0, v0

    div-float v2, v1, v0

    goto :goto_0

    .line 220
    :cond_1
    iget v1, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->type:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 225
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/MediaImageView;->getWidth()I

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/MediaImageView;->getHeight()I

    move-result v3

    if-eq v1, v3, :cond_3

    .line 228
    :cond_2
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/MediaImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 229
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/MediaImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v3, v0

    .line 228
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 233
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 235
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 237
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object p0, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method


# virtual methods
.method public dp2px(I)I
    .locals 1

    int-to-float p1, p1

    .line 375
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/MediaImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    .line 374
    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public getImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getLoadFileBitmap()I
    .locals 0

    .line 196
    iget p0, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mLoadFileBitmap:I

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 244
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/MediaImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 248
    :cond_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/view/MediaImageView;->setUpShader()V

    .line 250
    iget v0, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 252
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mRoundRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mBorderRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mBorderRadius:I

    int-to-float v2, v2

    iget-object p0, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 256
    :cond_1
    iget v0, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mRadius:I

    int-to-float v0, v0

    iget v1, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mRadius:I

    int-to-float v2, v2

    iget-object p0, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 187
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onFinishInflate()V

    .line 188
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/MediaImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 152
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->onMeasure(II)V

    .line 157
    iget p1, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->type:I

    if-nez p1, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/MediaImageView;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/MediaImageView;->getMeasuredHeight()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mWidth:I

    .line 160
    iget p1, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mWidth:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mRadius:I

    .line 161
    iget p1, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mWidth:I

    iget p2, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mWidth:I

    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/view/MediaImageView;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 264
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatImageView;->onSizeChanged(IIII)V

    .line 267
    iget p3, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->type:I

    const/4 p4, 0x1

    if-ne p3, p4, :cond_0

    .line 268
    new-instance p3, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p4, 0x0

    invoke-direct {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p3, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mRoundRect:Landroid/graphics/RectF;

    :cond_0
    return-void
.end method

.method public setAlbumPicturesExist(Landroid/view/View;Z)V
    .locals 6

    const/4 v0, 0x4

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    .line 347
    iget-object p2, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mAlbumPicturesExistShowId:[I

    array-length v3, p2

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    aget v5, p2, v4

    if-eq v5, v1, :cond_0

    .line 349
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 352
    :cond_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mAlbumPicturesExistHideId:[I

    array-length p2, p0

    :goto_1
    if-ge v2, p2, :cond_7

    aget v3, p0, v2

    if-eq v3, v1, :cond_2

    .line 354
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 359
    :cond_3
    iget-object p2, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mAlbumPicturesNoShowId:[I

    array-length v3, p2

    move v4, v2

    :goto_2
    if-ge v4, v3, :cond_5

    aget v5, p2, v4

    if-eq v5, v1, :cond_4

    .line 361
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 364
    :cond_5
    iget-object p0, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mAlbumPicturesNoHideId:[I

    array-length p2, p0

    :goto_3
    if-ge v2, p2, :cond_7

    aget v3, p0, v2

    if-eq v3, v1, :cond_6

    .line 366
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method

.method public setBorderRadius(I)V
    .locals 1

    .line 323
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/view/MediaImageView;->dp2px(I)I

    move-result p1

    .line 324
    iget v0, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mBorderRadius:I

    if-eq v0, p1, :cond_0

    .line 326
    iput p1, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mBorderRadius:I

    .line 327
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/MediaImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setDirectoryDrawable()V
    .locals 2

    const-string v0, "null"

    .line 167
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/view/MediaImageView;->setTag(Ljava/lang/Object;)V

    .line 168
    iget v0, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mDirectoryDrawableId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 169
    iget v0, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mDirectoryDrawableId:I

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/view/MediaImageView;->setImageResource(I)V

    goto :goto_0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/view/MediaImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setFailedResDrawable()V
    .locals 2

    .line 176
    iget v0, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mFailedResDrawable:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 177
    iget v0, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mFailedResDrawable:I

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/view/MediaImageView;->setImageResource(I)V

    goto :goto_0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/view/MediaImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setType(I)V
    .locals 1

    .line 333
    iget v0, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->type:I

    if-eq v0, p1, :cond_1

    .line 335
    iput p1, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->type:I

    .line 336
    iget p1, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->type:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget p1, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->type:I

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 338
    iput p1, p0, Lcom/yftech/car/widget/media/view/MediaImageView;->type:I

    .line 340
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/MediaImageView;->requestLayout()V

    :cond_1
    return-void
.end method
