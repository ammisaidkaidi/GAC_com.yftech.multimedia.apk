.class public Lcom/yftech/car/widget/media/video/VideoSeekViewImage;
.super Landroid/widget/FrameLayout;
.source "VideoSeekViewImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/video/VideoSeekViewImage$JzViewOutlineProvider;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoSeekViewImage"

.field private static mVideoSeekDebug:Z = false


# instance fields
.field private isCreatedPlayer:Z

.field private isPrepared:Z

.field private isPreparedLoading:Z

.field private final mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

.field private mDefaultDrawable:Landroid/graphics/drawable/Drawable;

.field private mInitHeight:I

.field private mInitWidth:I

.field private mJzViewOutlineProvider:Lcom/yftech/car/widget/media/video/VideoSeekViewImage$JzViewOutlineProvider;

.field private mMediaImageView:Lcom/yftech/car/widget/media/view/MediaImageView;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private final mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private final mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private final mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private final mPlayTimeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/text/MediaPlayTime;",
            ">;"
        }
    .end annotation
.end field

.field private mProgress:I

.field private mSlideForward:Z

.field private mSlideForwardImage:Landroid/widget/ImageView;

.field private mSurface:Landroid/view/Surface;

.field private final mTextViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mTextureView:Landroid/view/TextureView;

.field private mVideoImageBorderRadius:I

.field private mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

.field private seekBarShowTimeDistance:F

.field private seekBarShowTimeOffset:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 78
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance p1, Lcom/yftech/car/media/data/entity/MediaFile;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/yftech/car/media/data/entity/MediaFile;-><init>(I)V

    iput-object p1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->isPrepared:Z

    .line 49
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->isPreparedLoading:Z

    .line 50
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->isCreatedPlayer:Z

    .line 64
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mPlayTimeList:Ljava/util/List;

    .line 66
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mTextViewList:Ljava/util/List;

    .line 486
    new-instance p1, Lcom/yftech/car/widget/media/video/VideoSeekViewImage$2;

    invoke-direct {p1, p0}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage$2;-><init>(Lcom/yftech/car/widget/media/video/VideoSeekViewImage;)V

    iput-object p1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 504
    new-instance p1, Lcom/yftech/car/widget/media/video/VideoSeekViewImage$3;

    invoke-direct {p1, p0}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage$3;-><init>(Lcom/yftech/car/widget/media/video/VideoSeekViewImage;)V

    iput-object p1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 514
    new-instance p1, Lcom/yftech/car/widget/media/video/VideoSeekViewImage$4;

    invoke-direct {p1, p0}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage$4;-><init>(Lcom/yftech/car/widget/media/video/VideoSeekViewImage;)V

    iput-object p1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v0, Lcom/yftech/car/media/data/entity/MediaFile;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/yftech/car/media/data/entity/MediaFile;-><init>(I)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->isPrepared:Z

    .line 49
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->isPreparedLoading:Z

    .line 50
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->isCreatedPlayer:Z

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mPlayTimeList:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mTextViewList:Ljava/util/List;

    .line 486
    new-instance v0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage$2;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage$2;-><init>(Lcom/yftech/car/widget/media/video/VideoSeekViewImage;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 504
    new-instance v0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage$3;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage$3;-><init>(Lcom/yftech/car/widget/media/video/VideoSeekViewImage;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 514
    new-instance v0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage$4;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage$4;-><init>(Lcom/yftech/car/widget/media/video/VideoSeekViewImage;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance p3, Lcom/yftech/car/media/data/entity/MediaFile;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Lcom/yftech/car/media/data/entity/MediaFile;-><init>(I)V

    iput-object p3, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    const/4 p3, 0x0

    .line 48
    iput-boolean p3, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->isPrepared:Z

    .line 49
    iput-boolean p3, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->isPreparedLoading:Z

    .line 50
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->isCreatedPlayer:Z

    .line 64
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mPlayTimeList:Ljava/util/List;

    .line 66
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mTextViewList:Ljava/util/List;

    .line 486
    new-instance p3, Lcom/yftech/car/widget/media/video/VideoSeekViewImage$2;

    invoke-direct {p3, p0}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage$2;-><init>(Lcom/yftech/car/widget/media/video/VideoSeekViewImage;)V

    iput-object p3, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 504
    new-instance p3, Lcom/yftech/car/widget/media/video/VideoSeekViewImage$3;

    invoke-direct {p3, p0}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage$3;-><init>(Lcom/yftech/car/widget/media/video/VideoSeekViewImage;)V

    iput-object p3, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 514
    new-instance p3, Lcom/yftech/car/widget/media/video/VideoSeekViewImage$4;

    invoke-direct {p3, p0}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage$4;-><init>(Lcom/yftech/car/widget/media/video/VideoSeekViewImage;)V

    iput-object p3, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/car/widget/media/video/VideoSeekViewImage;)Landroid/view/Surface;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$002(Lcom/yftech/car/widget/media/video/VideoSeekViewImage;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$100(Lcom/yftech/car/widget/media/video/VideoSeekViewImage;)Landroid/media/MediaPlayer;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 36
    sget-boolean v0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mVideoSeekDebug:Z

    return v0
.end method

.method static synthetic access$302(Lcom/yftech/car/widget/media/video/VideoSeekViewImage;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->isPrepared:Z

    return p1
.end method

.method static synthetic access$402(Lcom/yftech/car/widget/media/video/VideoSeekViewImage;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->isPreparedLoading:Z

    return p1
.end method

.method static synthetic access$500(Lcom/yftech/car/widget/media/video/VideoSeekViewImage;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mProgress:I

    return p0
.end method

.method static synthetic access$502(Lcom/yftech/car/widget/media/video/VideoSeekViewImage;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mProgress:I

    return p1
.end method

.method private createdPlayer()V
    .locals 2

    .line 221
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 222
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 223
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 224
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 225
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    sget-boolean v0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mVideoSeekDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "VideoSeekViewImage"

    const-string v1, "createdPlayer: setDisplay"

    .line 227
    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 231
    :cond_1
    sget-boolean p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mVideoSeekDebug:Z

    if-eqz p0, :cond_2

    const-string p0, "VideoSeekViewImage"

    const-string v0, "createdPlayer: --ok"

    .line 232
    invoke-static {p0, v0}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 4

    .line 180
    instance-of p0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p0, :cond_0

    .line 181
    move-object p0, p1

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 182
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 187
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    if-lez p0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    if-gtz p0, :cond_1

    goto :goto_0

    .line 191
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_1

    .line 189
    :cond_2
    :goto_0
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x1

    invoke-static {v0, v0, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 193
    :goto_1
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 194
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 195
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 92
    sget-object v0, Lcom/yftech/car/widget/media/R$styleable;->SeekViewImage:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 95
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->SeekViewImage_seek_bar_show_image_distance:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->seekBarShowTimeDistance:F

    .line 98
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->SeekViewImage_seek_bar_show_image_offset:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->seekBarShowTimeOffset:F

    .line 100
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->SeekViewImage_video_image_cache_preview:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 101
    sget v3, Lcom/yftech/car/widget/media/R$styleable;->SeekViewImage_video_image_seek_debug:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    sput-boolean v3, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mVideoSeekDebug:Z

    .line 102
    sget v3, Lcom/yftech/car/widget/media/R$styleable;->SeekViewImage_video_image_borderRadius:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mVideoImageBorderRadius:I

    .line 104
    sget v3, Lcom/yftech/car/widget/media/R$styleable;->SeekViewImage_video_image_default_drawable:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v0, 0x11

    if-eqz v1, :cond_1

    .line 108
    new-instance p2, Landroid/view/TextureView;

    invoke-direct {p2, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mTextureView:Landroid/view/TextureView;

    .line 109
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0, p1, v4}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->addView(Landroid/view/View;I)V

    .line 110
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 111
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 p2, -0x1

    .line 112
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 113
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 115
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mTextureView:Landroid/view/TextureView;

    new-instance p2, Lcom/yftech/car/widget/media/video/VideoSeekViewImage$1;

    invoke-direct {p2, p0}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage$1;-><init>(Lcom/yftech/car/widget/media/video/VideoSeekViewImage;)V

    invoke-virtual {p1, p2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 154
    iget p1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mVideoImageBorderRadius:I

    if-lez p1, :cond_3

    .line 155
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mJzViewOutlineProvider:Lcom/yftech/car/widget/media/video/VideoSeekViewImage$JzViewOutlineProvider;

    if-nez p1, :cond_0

    .line 156
    new-instance p1, Lcom/yftech/car/widget/media/video/VideoSeekViewImage$JzViewOutlineProvider;

    iget p2, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mVideoImageBorderRadius:I

    int-to-float p2, p2

    invoke-direct {p1, p2}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage$JzViewOutlineProvider;-><init>(F)V

    iput-object p1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mJzViewOutlineProvider:Lcom/yftech/car/widget/media/video/VideoSeekViewImage$JzViewOutlineProvider;

    .line 158
    :cond_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mTextureView:Landroid/view/TextureView;

    iget-object p2, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mJzViewOutlineProvider:Lcom/yftech/car/widget/media/video/VideoSeekViewImage$JzViewOutlineProvider;

    invoke-virtual {p1, p2}, Landroid/view/TextureView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 159
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0, v2}, Landroid/view/TextureView;->setClipToOutline(Z)V

    goto :goto_0

    .line 163
    :cond_1
    new-instance v1, Lcom/yftech/car/widget/media/view/MediaImageView;

    invoke-direct {v1, p1, p2}, Lcom/yftech/car/widget/media/view/MediaImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mMediaImageView:Lcom/yftech/car/widget/media/view/MediaImageView;

    .line 164
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mMediaImageView:Lcom/yftech/car/widget/media/view/MediaImageView;

    invoke-virtual {p0, p1, v4}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->addView(Landroid/view/View;I)V

    .line 165
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mMediaImageView:Lcom/yftech/car/widget/media/view/MediaImageView;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/view/MediaImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 166
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 167
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 168
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 169
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mMediaImageView:Lcom/yftech/car/widget/media/view/MediaImageView;

    invoke-virtual {p2, p1}, Lcom/yftech/car/widget/media/view/MediaImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 171
    :cond_2
    iget p1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mVideoImageBorderRadius:I

    if-lez p1, :cond_3

    .line 172
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mMediaImageView:Lcom/yftech/car/widget/media/view/MediaImageView;

    iget p0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mVideoImageBorderRadius:I

    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/view/MediaImageView;->setBorderRadius(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic lambda$setVideoPlayer$0(Lcom/yftech/car/widget/media/text/MediaPlayTime;)V
    .locals 1

    .line 271
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->setInitHeight(I)V

    const/16 v0, 0x8

    .line 272
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getInitHeight()I
    .locals 0

    .line 217
    iget p0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mInitHeight:I

    return p0
.end method

.method public getInitWidth()I
    .locals 0

    .line 391
    iget p0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mInitWidth:I

    return p0
.end method

.method public getMediaImageView()Landroid/widget/ImageView;
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mMediaImageView:Lcom/yftech/car/widget/media/view/MediaImageView;

    return-object p0
.end method

.method public getSeekBarShowDistance()F
    .locals 0

    .line 209
    iget p0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->seekBarShowTimeDistance:F

    return p0
.end method

.method public getSeekBarShowOffset()F
    .locals 0

    .line 213
    iget p0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->seekBarShowTimeOffset:F

    return p0
.end method

.method public initHeight()V
    .locals 1

    .line 204
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mInitHeight:I

    .line 205
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mInitWidth:I

    return-void
.end method

.method public isShow()Z
    .locals 2

    .line 395
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mTextureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 398
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 399
    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public loadStart()V
    .locals 4

    .line 282
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    if-eqz v0, :cond_6

    .line 283
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/BaseVideo;->getCurrentPlay()Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 288
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/video/BaseVideo;->isPlayError()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "VideoSeekViewImage"

    const-string v0, "loadStart: isPlayError"

    .line 289
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 293
    :cond_0
    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v2}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 294
    iget-boolean v1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->isPrepared:Z

    if-eqz v1, :cond_2

    .line 295
    sget-boolean p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mVideoSeekDebug:Z

    if-eqz p0, :cond_1

    const-string p0, "VideoSeekViewImage"

    const-string v0, "loadStart: isPrepared is true"

    .line 296
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 302
    :cond_2
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mTextureView:Landroid/view/TextureView;

    if-eqz v1, :cond_6

    .line 308
    sget-boolean v1, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mVideoSeekDebug:Z

    if-eqz v1, :cond_3

    const-string v1, "VideoSeekViewImage"

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadStart: start loading data path =="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_3
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yftech/car/media/data/entity/MediaFile;->setData(Ljava/lang/String;)V

    .line 312
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yftech/car/media/data/entity/MediaFile;->setTitle(Ljava/lang/String;)V

    .line 313
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getFolder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yftech/car/media/data/entity/MediaFile;->setFolder(Ljava/lang/String;)V

    .line 314
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getFolderPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yftech/car/media/data/entity/MediaFile;->setFolderPath(Ljava/lang/String;)V

    .line 315
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/yftech/car/media/data/entity/MediaFile;->setId(J)V

    const/4 v0, 0x0

    .line 317
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->isPrepared:Z

    const/4 v1, 0x1

    .line 318
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->isPreparedLoading:Z

    .line 319
    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_4

    .line 320
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->isCreatedPlayer:Z

    .line 321
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->createdPlayer()V

    goto :goto_1

    .line 323
    :cond_4
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->isCreatedPlayer:Z

    .line 325
    :try_start_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 327
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 329
    :goto_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 333
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v2}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 341
    :try_start_2
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 343
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 344
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->isPreparedLoading:Z

    .line 345
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->releaseMediaPlayer()V

    goto :goto_2

    :catch_2
    move-exception v1

    .line 335
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 336
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->isPreparedLoading:Z

    .line 337
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->releaseMediaPlayer()V

    return-void

    :cond_5
    const-string p0, "VideoSeekViewImage"

    const-string v0, "loadStart: currentPlay is null !!!"

    .line 351
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 454
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 459
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public release()V
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mPlayTimeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 480
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 482
    iput-object v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mSurface:Landroid/view/Surface;

    :cond_0
    return-void
.end method

.method public releaseMediaPlayer()V
    .locals 2

    const-string v0, "VideoSeekViewImage"

    const-string/jumbo v1, "releaseMediaPlayer: "

    .line 465
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 468
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 469
    iput-object v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    const/4 v0, 0x0

    .line 471
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->isPrepared:Z

    .line 472
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mMediaImageView:Lcom/yftech/car/widget/media/view/MediaImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 473
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 474
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mMediaImageView:Lcom/yftech/car/widget/media/view/MediaImageView;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/view/MediaImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method public setPlayProgress(I)V
    .locals 7

    const-string v0, "VideoSeekViewImage"

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPlayProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mProgress:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, p1, :cond_1

    .line 359
    iget v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mProgress:I

    if-le p1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mSlideForward:Z

    .line 360
    iput p1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mProgress:I

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/BaseVideo;->isPlayError()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->isPrepared:Z

    if-eqz v0, :cond_2

    .line 363
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 366
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mPlayTimeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/widget/media/text/MediaPlayTime;

    int-to-long v4, p1

    .line 367
    invoke-virtual {v3, v4, v5}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->updateProgress(J)V

    .line 368
    invoke-virtual {v3}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->getForwardDrawable()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 370
    iget-boolean v5, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mSlideForward:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    .line 371
    aget-object v4, v4, v2

    invoke-virtual {v3, v6, v6, v4, v6}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 373
    :cond_4
    aget-object v4, v4, v1

    invoke-virtual {v3, v4, v6, v6, v6}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 378
    :cond_5
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mSlideForwardImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    .line 379
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mSlideForwardImage:Landroid/widget/ImageView;

    iget-boolean p0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mSlideForward:Z

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_6
    return-void
.end method

.method public setVideoPlayer(Lcom/yftech/car/widget/media/video/BaseVideo;)V
    .locals 7

    .line 237
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    .line 239
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 240
    invoke-virtual {p1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 242
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 243
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 244
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 245
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 246
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 248
    :cond_1
    instance-of v3, v2, Lcom/yftech/car/widget/media/text/MediaPlayTime;

    if-eqz v3, :cond_2

    .line 249
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mPlayTimeList:Ljava/util/List;

    check-cast v2, Lcom/yftech/car/widget/media/text/MediaPlayTime;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 250
    :cond_2
    instance-of v3, v2, Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    .line 251
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mSlideForwardImage:Landroid/widget/ImageView;

    if-nez v3, :cond_4

    .line 252
    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mSlideForwardImage:Landroid/widget/ImageView;

    goto :goto_1

    .line 254
    :cond_3
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_4

    .line 255
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mTextViewList:Ljava/util/List;

    check-cast v2, Landroid/widget/TextView;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    :cond_5
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mPlayTimeList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_7

    .line 262
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/video/BaseVideo;->getDuration()I

    move-result p1

    int-to-long v2, p1

    .line 263
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/video/BaseVideo;->getProgressPosition()I

    move-result p1

    .line 264
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mPlayTimeList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/text/MediaPlayTime;

    .line 265
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->setForwardDrawable()V

    .line 266
    invoke-virtual {v0, v2, v3}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->updateDuration(J)V

    int-to-long v4, p1

    .line 267
    invoke-virtual {v0, v4, v5}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->updateProgress(J)V

    .line 268
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->isSeekBarShowScrollTime()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 269
    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->setVisibility(I)V

    .line 270
    new-instance v4, Lcom/yftech/car/widget/media/video/-$$Lambda$VideoSeekViewImage$3QMbOZqsQ494h3DjHv7ZCG56g2o;

    invoke-direct {v4, v0}, Lcom/yftech/car/widget/media/video/-$$Lambda$VideoSeekViewImage$3QMbOZqsQ494h3DjHv7ZCG56g2o;-><init>(Lcom/yftech/car/widget/media/text/MediaPlayTime;)V

    const-wide/16 v5, 0xa

    invoke-virtual {v0, v4, v5, v6}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_7
    return-void
.end method

.method public setVisibility(I)V
    .locals 7

    const/16 v0, 0x8

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 405
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 406
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mTextureView:Landroid/view/TextureView;

    if-eqz v1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1, p1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 409
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mTextViewList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 410
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 413
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 414
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mTextureView:Landroid/view/TextureView;

    if-eqz v1, :cond_7

    .line 415
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mTextureView:Landroid/view/TextureView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setVisibility(I)V

    .line 416
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 417
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v4, 0x0

    if-nez p1, :cond_4

    .line 419
    iget-object v5, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {v5}, Lcom/yftech/car/widget/media/video/BaseVideo;->isSoftSolution()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {v5}, Lcom/yftech/car/widget/media/video/BaseVideo;->isPlayError()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {v5}, Lcom/yftech/car/widget/media/video/BaseVideo;->getMediaPlayInfoNotPlaying()I

    move-result v5

    const/16 v6, 0x325

    if-ne v5, v6, :cond_2

    goto :goto_2

    .line 427
    :cond_2
    invoke-virtual {p0, v4}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 428
    iget v2, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mInitWidth:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 429
    iget v2, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mInitHeight:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 430
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mTextViewList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 431
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 420
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 421
    iget v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mInitWidth:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 422
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 423
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mTextViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 424
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 435
    :cond_4
    invoke-virtual {p0, v4}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 436
    iget v4, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mInitWidth:I

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 437
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 438
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mTextViewList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 439
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_5
    const/4 v0, 0x1

    .line 442
    :goto_5
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 443
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 445
    :cond_6
    iget p1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mInitWidth:I

    iput p1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 446
    iget p1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mInitHeight:I

    iput p1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 447
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->requestLayout()V

    :cond_7
    return-void
.end method

.method public updateDuration(J)V
    .locals 1

    .line 385
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->mPlayTimeList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/text/MediaPlayTime;

    .line 386
    invoke-virtual {v0, p1, p2}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->updateDuration(J)V

    goto :goto_0

    :cond_0
    return-void
.end method
