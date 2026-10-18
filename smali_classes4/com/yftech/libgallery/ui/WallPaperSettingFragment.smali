.class public Lcom/yftech/libgallery/ui/WallPaperSettingFragment;
.super Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;
.source "WallPaperSettingFragment.java"

# interfaces
.implements Lcom/yftech/libgallery/view/IWallPaperSettingFragmentView;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment<",
        "Lcom/yftech/libgallery/presenter/WallPaperSettingPresenter;",
        ">;",
        "Lcom/yftech/libgallery/view/IWallPaperSettingFragmentView;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final ARG_PARAM1:Ljava/lang/String; = "imagePath"


# instance fields
.field private final RC_RESULT_FAILURE:I

.field private final RC_RESULT_SUCCESSFUL:I

.field private imagePath:Ljava/lang/String;

.field private mClipImageView:Lcom/yftech/libgallery/view/ClipImageView;

.field private final mControllerListener:Lcom/facebook/drawee/controller/ControllerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/drawee/controller/ControllerListener<",
            "Lcom/facebook/imagepipeline/image/ImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDegree:I

.field private mHandler:Landroid/os/Handler;

.field private mMaxWidth:I

.field private mOutput:Ljava/lang/String;

.field private mSampleSize:I

.field private mSourceHeight:I

.field private mSourceWidth:I

.field private mTvConfirm:Landroid/widget/TextView;

.field private wallCardBg:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 106
    invoke-direct {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;-><init>()V

    .line 67
    sget v0, Lcom/yftech/libmvpmodule/utils/Constants;->displayWidth:I

    iput v0, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->mMaxWidth:I

    const/16 v0, 0xa

    .line 79
    iput v0, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->RC_RESULT_SUCCESSFUL:I

    const/16 v0, 0x14

    .line 80
    iput v0, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->RC_RESULT_FAILURE:I

    .line 81
    new-instance v0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$1;-><init>(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->mHandler:Landroid/os/Handler;

    .line 165
    new-instance v0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$2;

    invoke-direct {v0, p0}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$2;-><init>(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;)V

    iput-object v0, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->mControllerListener:Lcom/facebook/drawee/controller/ControllerListener;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;)Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->mOutput:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->mOutput:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;)Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->imagePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->wallCardBg:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;)Landroid/graphics/Bitmap;
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->createClippedBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;)Landroid/os/Handler;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;)Landroid/widget/TextView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->mTvConfirm:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->mMaxWidth:I

    return p0
.end method

.method static synthetic access$400(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;)Lcom/yftech/libgallery/view/ClipImageView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->mClipImageView:Lcom/yftech/libgallery/view/ClipImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->mDegree:I

    return p0
.end method

.method static synthetic access$502(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->mDegree:I

    return p1
.end method

.method static synthetic access$602(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->mSourceWidth:I

    return p1
.end method

.method static synthetic access$702(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->mSourceHeight:I

    return p1
.end method

.method static synthetic access$800(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->mSampleSize:I

    return p0
.end method

.method static synthetic access$802(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->mSampleSize:I

    return p1
.end method

.method static synthetic access$900(II)I
    .locals 0

    .line 59
    invoke-static {p0, p1}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->findBestSample(II)I

    move-result p0

    return p0
.end method

.method private clipImage()V
    .locals 2

    .line 283
    sget v0, Lcom/yftech/libgallery/R$string;->generating_wallpaper:I

    invoke-virtual {p0, v0}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/media/common/util/ToastUtils;->showNormalMessage(Ljava/lang/String;I)V

    .line 285
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 289
    instance-of v1, v0, Lcom/media/common/util/BaseApplication;

    if-eqz v1, :cond_0

    .line 290
    check-cast v0, Lcom/media/common/util/BaseApplication;

    .line 291
    invoke-virtual {v0}, Lcom/media/common/util/BaseApplication;->getFixedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$4;

    invoke-direct {v1, p0}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$4;-><init>(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private createClippedBitmap()Landroid/graphics/Bitmap;
    .locals 13

    .line 331
    iget v0, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->mSampleSize:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 332
    iget-object p0, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->mClipImageView:Lcom/yftech/libgallery/view/ClipImageView;

    invoke-virtual {p0}, Lcom/yftech/libgallery/view/ClipImageView;->snapShotForViewGroup()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->mClipImageView:Lcom/yftech/libgallery/view/ClipImageView;

    invoke-virtual {v0}, Lcom/yftech/libgallery/view/ClipImageView;->getClipMatrixValues()[F

    move-result-object v0

    const/4 v1, 0x0

    .line 337
    aget v2, v0, v1

    const/4 v3, 0x2

    .line 338
    aget v3, v0, v3

    const/4 v4, 0x5

    .line 339
    aget v0, v0, v4

    .line 342
    iget-object v4, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->mClipImageView:Lcom/yftech/libgallery/view/ClipImageView;

    invoke-virtual {v4}, Lcom/yftech/libgallery/view/ClipImageView;->getClipBorder()Landroid/graphics/Rect;

    move-result-object v4

    neg-float v3, v3

    .line 343
    iget v5, v4, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    add-float/2addr v3, v5

    div-float/2addr v3, v2

    iget v5, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->mSampleSize:I

    int-to-float v5, v5

    mul-float/2addr v3, v5

    neg-float v0, v0

    .line 344
    iget v5, v4, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v0, v5

    div-float/2addr v0, v2

    iget v5, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->mSampleSize:I

    int-to-float v5, v5

    mul-float/2addr v0, v5

    .line 345
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    iget v6, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->mSampleSize:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    .line 346
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    iget v2, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->mSampleSize:I

    int-to-float v2, v2

    mul-float/2addr v4, v2

    .line 349
    new-instance v2, Landroid/graphics/RectF;

    add-float v6, v3, v5

    add-float/2addr v4, v0

    invoke-direct {v2, v3, v0, v6, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 350
    invoke-direct {p0, v2}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->getRealRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v0

    .line 352
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 353
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 355
    iget v3, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->mDegree:I

    int-to-float v3, v3

    invoke-virtual {v11, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 357
    iget v3, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->mMaxWidth:I

    if-lez v3, :cond_1

    iget v3, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->mMaxWidth:I

    int-to-float v3, v3

    cmpl-float v3, v5, v3

    if-lez v3, :cond_1

    float-to-int v3, v5

    .line 358
    iget v4, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->mMaxWidth:I

    invoke-static {v3, v4}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->findBestSample(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 360
    iget v3, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->mMaxWidth:I

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v4, v4

    div-float/2addr v5, v4

    div-float/2addr v3, v5

    .line 361
    invoke-virtual {v11, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_1
    const/4 v3, 0x0

    .line 367
    :try_start_0
    iget-object v4, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->imagePath:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 368
    :try_start_1
    invoke-virtual {v1, v0, v2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 369
    invoke-direct {p0}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->recycleImageViewBitmap()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 370
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 374
    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_2

    .line 375
    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-object v3, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v1, v3

    goto :goto_1

    .line 372
    :catch_1
    :goto_0
    :try_start_2
    iget-object p0, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->mClipImageView:Lcom/yftech/libgallery/view/ClipImageView;

    invoke-virtual {p0}, Lcom/yftech/libgallery/view/ClipImageView;->snapShotForViewGroup()Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_3

    .line 374
    invoke-virtual {v3}, Landroid/graphics/BitmapRegionDecoder;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 375
    invoke-virtual {v3}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    :cond_3
    return-object p0

    :goto_1
    if-eqz v1, :cond_4

    .line 374
    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 375
    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 377
    :cond_4
    throw p0
.end method

.method private static findBestSample(II)I
    .locals 1

    .line 272
    div-int/lit8 p0, p0, 0x2

    const/4 v0, 0x1

    :goto_0
    if-le p0, p1, :cond_0

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_0
    return v0
.end method

.method private getRealRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;
    .locals 5

    .line 381
    iget v0, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->mDegree:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_0

    .line 392
    new-instance p0, Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int p1, p1

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    .line 389
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->mSourceWidth:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget p0, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->mSourceWidth:I

    int-to-float p0, p0

    iget v3, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p0, v3

    float-to-int p0, p0

    iget p1, p1, Landroid/graphics/RectF;->right:F

    float-to-int p1, p1

    invoke-direct {v0, v1, v2, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    .line 386
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->mSourceWidth:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->mSourceHeight:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->mSourceWidth:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget p0, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->mSourceHeight:I

    int-to-float p0, p0

    iget p1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p0, p1

    float-to-int p0, p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    .line 383
    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget v2, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->mSourceHeight:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    iget p0, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->mSourceHeight:I

    int-to-float p0, p0

    iget p1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p0, p1

    float-to-int p0, p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/yftech/libgallery/ui/WallPaperSettingFragment;
    .locals 3

    .line 116
    new-instance v0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;

    invoke-direct {v0}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;-><init>()V

    .line 117
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "imagePath"

    .line 118
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0, v1}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static readPictureDegree(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 244
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p0, "Orientation"

    const/4 v2, 0x1

    .line 245
    invoke-virtual {v1, p0, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x6

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 p0, 0x10e

    goto :goto_0

    :cond_1
    const/16 p0, 0x5a

    goto :goto_0

    :cond_2
    const/16 p0, 0xb4

    :goto_0
    move v0, p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 258
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return v0
.end method

.method private recycleImageViewBitmap()V
    .locals 2

    .line 397
    iget-object v0, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->mClipImageView:Lcom/yftech/libgallery/view/ClipImageView;

    new-instance v1, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$5;

    invoke-direct {v1, p0}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$5;-><init>(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/yftech/libgallery/view/ClipImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setImageAndClipParams()V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->mClipImageView:Lcom/yftech/libgallery/view/ClipImageView;

    new-instance v1, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$3;

    invoke-direct {v1, p0}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$3;-><init>(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/yftech/libgallery/view/ClipImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected createPresenter()Lcom/yftech/libgallery/presenter/WallPaperSettingPresenter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic createPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->createPresenter()Lcom/yftech/libgallery/presenter/WallPaperSettingPresenter;

    move-result-object p0

    return-object p0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 1

    .line 139
    sget v0, Lcom/yftech/libgallery/R$id;->clip_image_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yftech/libgallery/view/ClipImageView;

    iput-object v0, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->mClipImageView:Lcom/yftech/libgallery/view/ClipImageView;

    .line 141
    sget v0, Lcom/yftech/libgallery/R$id;->btn_confirm:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->mTvConfirm:Landroid/widget/TextView;

    .line 142
    iget-object v0, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->mTvConfirm:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    sget v0, Lcom/yftech/libgallery/R$id;->btn_cancel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    sget v0, Lcom/yftech/libgallery/R$id;->wall_card_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->wallCardBg:Landroid/widget/ImageView;

    .line 149
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->imagePath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/facebook/common/util/UriUtil;->getUriForFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 151
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->newBuilderWithSource(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    .line 152
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->build()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    .line 153
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v0

    .line 154
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setImageRequest(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    const/4 v0, 0x1

    .line 155
    invoke-virtual {p1, v0}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setAutoPlayAnimations(Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    iget-object v0, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->mControllerListener:Lcom/facebook/drawee/controller/ControllerListener;

    .line 156
    invoke-virtual {p1, v0}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setControllerListener(Lcom/facebook/drawee/controller/ControllerListener;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    .line 157
    invoke-virtual {p1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->build()Lcom/facebook/drawee/controller/AbstractDraweeController;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;

    .line 158
    iget-object v0, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->mClipImageView:Lcom/yftech/libgallery/view/ClipImageView;

    invoke-virtual {v0, p1}, Lcom/yftech/libgallery/view/ClipImageView;->setController(Lcom/facebook/drawee/interfaces/DraweeController;)V

    .line 160
    iget-object p1, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->wallCardBg:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/SystemUtil;->getWallPaperOutputPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->mOutput:Ljava/lang/String;

    return-void
.end method

.method protected onBindView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 133
    sget p0, Lcom/yftech/libgallery/R$layout;->fragment_wall_paper_setting:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 407
    invoke-static {}, Lcom/media/common/util/SystemUtil;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 410
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libgallery/R$id;->btn_confirm:I

    if-ne v0, v1, :cond_1

    .line 411
    invoke-direct {p0}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->clipImage()V

    goto :goto_0

    .line 412
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/yftech/libgallery/R$id;->btn_cancel:I

    if-ne p1, v0, :cond_2

    .line 415
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 416
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 125
    invoke-super {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onCreate(Landroid/os/Bundle;)V

    .line 126
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "imagePath"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->imagePath:Ljava/lang/String;

    :cond_0
    return-void
.end method
