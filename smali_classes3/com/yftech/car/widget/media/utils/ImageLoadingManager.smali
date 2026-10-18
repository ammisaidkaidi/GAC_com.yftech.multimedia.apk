.class public Lcom/yftech/car/widget/media/utils/ImageLoadingManager;
.super Ljava/lang/Object;
.source "ImageLoadingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/utils/ImageLoadingManager$OnLoadingImageListener;,
        Lcom/yftech/car/widget/media/utils/ImageLoadingManager$CustomLoadingImage;,
        Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;
    }
.end annotation


# static fields
.field public static final CUSTOM_LOAD_IMAGE:I = 0x1

.field public static final CUSTOM_LOAD_MUSIC:I = 0x4

.field public static final CUSTOM_LOAD_VIDEO:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ImageLoadingManager"

.field private static mImageLoadingManager:Lcom/yftech/car/widget/media/utils/ImageLoadingManager;


# instance fields
.field private mCustomLoadFlags:I

.field private mCustomLoadingImage:Lcom/yftech/car/widget/media/utils/ImageLoadingManager$CustomLoadingImage;

.field private mLruCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 42
    iput v0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager;->mCustomLoadFlags:I

    return-void
.end method

.method static synthetic access$200(Lcom/yftech/car/widget/media/utils/ImageLoadingManager;)Landroid/util/LruCache;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager;->mLruCache:Landroid/util/LruCache;

    return-object p0
.end method

.method public static getInstance()Lcom/yftech/car/widget/media/utils/ImageLoadingManager;
    .locals 2

    .line 50
    sget-object v0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager;->mImageLoadingManager:Lcom/yftech/car/widget/media/utils/ImageLoadingManager;

    if-nez v0, :cond_1

    .line 51
    const-class v0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/yftech/car/widget/media/utils/ImageLoadingManager;->mImageLoadingManager:Lcom/yftech/car/widget/media/utils/ImageLoadingManager;

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Lcom/yftech/car/widget/media/utils/ImageLoadingManager;

    invoke-direct {v1}, Lcom/yftech/car/widget/media/utils/ImageLoadingManager;-><init>()V

    sput-object v1, Lcom/yftech/car/widget/media/utils/ImageLoadingManager;->mImageLoadingManager:Lcom/yftech/car/widget/media/utils/ImageLoadingManager;

    .line 55
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 57
    :cond_1
    :goto_0
    sget-object v0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager;->mImageLoadingManager:Lcom/yftech/car/widget/media/utils/ImageLoadingManager;

    return-object v0
.end method

.method private initLruCache()V
    .locals 5

    .line 61
    new-instance v0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$1;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-direct {v0, p0, v1}, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$1;-><init>(Lcom/yftech/car/widget/media/utils/ImageLoadingManager;I)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager;->mLruCache:Landroid/util/LruCache;

    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager;->mLruCache:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    .line 78
    iget-object p0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager;->mLruCache:Landroid/util/LruCache;

    invoke-virtual {p0}, Landroid/util/LruCache;->evictAll()V

    :cond_0
    return-void
.end method

.method public loadImage(Lcom/yftech/car/media/data/entity/MediaFile;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/view/View;Lcom/yftech/car/widget/media/utils/ImageLoadingManager$OnLoadingImageListener;)V
    .locals 8

    .line 118
    iget-object v0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager;->mCustomLoadingImage:Lcom/yftech/car/widget/media/utils/ImageLoadingManager$CustomLoadingImage;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 122
    :pswitch_0
    iget v0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager;->mCustomLoadFlags:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    .line 123
    iget-object v1, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager;->mCustomLoadingImage:Lcom/yftech/car/widget/media/utils/ImageLoadingManager$CustomLoadingImage;

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getId()J

    move-result-wide v4

    move-object v2, p2

    move-object v6, p3

    move-object v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$CustomLoadingImage;->onLoadingImage(Landroid/widget/ImageView;Ljava/lang/String;JLandroid/graphics/drawable/Drawable;Lcom/yftech/car/widget/media/utils/ImageLoadingManager$OnLoadingImageListener;)V

    return-void

    .line 128
    :pswitch_1
    iget v0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager;->mCustomLoadFlags:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_0

    .line 129
    iget-object v1, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager;->mCustomLoadingImage:Lcom/yftech/car/widget/media/utils/ImageLoadingManager$CustomLoadingImage;

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getId()J

    move-result-wide v4

    move-object v2, p2

    move-object v6, p3

    move-object v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$CustomLoadingImage;->onLoadingImage(Landroid/widget/ImageView;Ljava/lang/String;JLandroid/graphics/drawable/Drawable;Lcom/yftech/car/widget/media/utils/ImageLoadingManager$OnLoadingImageListener;)V

    return-void

    .line 134
    :pswitch_2
    iget v0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager;->mCustomLoadFlags:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_0

    .line 135
    iget-object v1, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager;->mCustomLoadingImage:Lcom/yftech/car/widget/media/utils/ImageLoadingManager$CustomLoadingImage;

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getId()J

    move-result-wide v4

    move-object v2, p2

    move-object v6, p3

    move-object v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$CustomLoadingImage;->onLoadingImage(Landroid/widget/ImageView;Ljava/lang/String;JLandroid/graphics/drawable/Drawable;Lcom/yftech/car/widget/media/utils/ImageLoadingManager$OnLoadingImageListener;)V

    return-void

    .line 142
    :cond_0
    :goto_0
    iget-object p5, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager;->mLruCache:Landroid/util/LruCache;

    if-nez p5, :cond_1

    .line 143
    invoke-direct {p0}, Lcom/yftech/car/widget/media/utils/ImageLoadingManager;->initLruCache()V

    .line 147
    :cond_1
    iget-object p5, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager;->mLruCache:Landroid/util/LruCache;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "page"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;

    if-eqz p5, :cond_5

    .line 149
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_2

    .line 150
    iget-wide v0, p5, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mDuration:J

    invoke-virtual {p1, v0, v1}, Lcom/yftech/car/media/data/entity/MediaFile;->setDuration(J)V

    .line 152
    :cond_2
    iget-object p0, p5, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_3

    .line 153
    iget-object p0, p5, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    .line 156
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    .line 158
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 163
    :cond_5
    iget-object p5, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager;->mLruCache:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;

    .line 164
    iget-object v0, p5, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    .line 165
    iget-object p5, p5, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2, p5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 167
    :cond_6
    invoke-static {}, Lcom/yftech/car/widget/media/utils/TaskManager;->getInstance()Lcom/yftech/car/widget/media/utils/TaskManager;

    move-result-object p5

    new-instance v7, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;-><init>(Lcom/yftech/car/widget/media/utils/ImageLoadingManager;Lcom/yftech/car/media/data/entity/MediaFile;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/view/View;Lcom/yftech/car/widget/media/utils/ImageLoadingManager$1;)V

    invoke-virtual {p5, v7}, Lcom/yftech/car/widget/media/utils/TaskManager;->threadRunnable(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public loadImage(Lcom/yftech/car/media/data/entity/MediaFile;Lcom/yftech/car/widget/media/view/MediaImageView;Landroid/view/View;)V
    .locals 8

    .line 235
    iget-object v0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager;->mLruCache:Landroid/util/LruCache;

    if-nez v0, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/yftech/car/widget/media/utils/ImageLoadingManager;->initLruCache()V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager;->mLruCache:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;

    if-eqz v0, :cond_3

    .line 256
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-nez p0, :cond_1

    .line 257
    iget-wide v1, v0, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mDuration:J

    invoke-virtual {p1, v1, v2}, Lcom/yftech/car/media/data/entity/MediaFile;->setDuration(J)V

    .line 259
    :cond_1
    iget-object p0, v0, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_2

    .line 260
    iget-object p0, v0, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2, p0}, Lcom/yftech/car/widget/media/view/MediaImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 262
    :cond_2
    invoke-virtual {p2}, Lcom/yftech/car/widget/media/view/MediaImageView;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/yftech/car/widget/media/view/MediaImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 265
    :cond_3
    invoke-virtual {p2}, Lcom/yftech/car/widget/media/view/MediaImageView;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yftech/car/widget/media/view/MediaImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 266
    invoke-static {}, Lcom/yftech/car/widget/media/utils/TaskManager;->getInstance()Lcom/yftech/car/widget/media/utils/TaskManager;

    move-result-object v0

    new-instance v7, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;-><init>(Lcom/yftech/car/widget/media/utils/ImageLoadingManager;Lcom/yftech/car/media/data/entity/MediaFile;Lcom/yftech/car/widget/media/view/MediaImageView;Landroid/view/View;Lcom/yftech/car/widget/media/utils/ImageLoadingManager$1;)V

    invoke-virtual {v0, v7}, Lcom/yftech/car/widget/media/utils/TaskManager;->threadRunnable(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public loadImage(Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;Lcom/yftech/car/widget/media/utils/ImageLoadingManager$OnLoadingImageListener;)V
    .locals 10

    .line 172
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "ImageLoadingManager"

    const-string p1, "loadImage: Inconsistency detected. Invalid view holder"

    .line 173
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 177
    :cond_0
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;->getMediaFile()Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 180
    iget-object v1, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager;->mCustomLoadingImage:Lcom/yftech/car/widget/media/utils/ImageLoadingManager$CustomLoadingImage;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 181
    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 184
    :pswitch_0
    iget v1, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager;->mCustomLoadFlags:I

    and-int/2addr v1, v2

    if-lez v1, :cond_1

    .line 185
    iget-object v3, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager;->mCustomLoadingImage:Lcom/yftech/car/widget/media/utils/ImageLoadingManager$CustomLoadingImage;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getId()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object v9, p2

    invoke-interface/range {v3 .. v9}, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$CustomLoadingImage;->onLoadingImage(Landroid/widget/ImageView;Ljava/lang/String;JLandroid/graphics/drawable/Drawable;Lcom/yftech/car/widget/media/utils/ImageLoadingManager$OnLoadingImageListener;)V

    return-void

    .line 190
    :pswitch_1
    iget v1, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager;->mCustomLoadFlags:I

    and-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_1

    .line 191
    iget-object v3, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager;->mCustomLoadingImage:Lcom/yftech/car/widget/media/utils/ImageLoadingManager$CustomLoadingImage;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getId()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object v9, p2

    invoke-interface/range {v3 .. v9}, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$CustomLoadingImage;->onLoadingImage(Landroid/widget/ImageView;Ljava/lang/String;JLandroid/graphics/drawable/Drawable;Lcom/yftech/car/widget/media/utils/ImageLoadingManager$OnLoadingImageListener;)V

    return-void

    .line 196
    :pswitch_2
    iget v1, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager;->mCustomLoadFlags:I

    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_1

    .line 197
    iget-object v3, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager;->mCustomLoadingImage:Lcom/yftech/car/widget/media/utils/ImageLoadingManager$CustomLoadingImage;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getId()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object v9, p2

    invoke-interface/range {v3 .. v9}, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$CustomLoadingImage;->onLoadingImage(Landroid/widget/ImageView;Ljava/lang/String;JLandroid/graphics/drawable/Drawable;Lcom/yftech/car/widget/media/utils/ImageLoadingManager$OnLoadingImageListener;)V

    return-void

    .line 204
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager;->mLruCache:Landroid/util/LruCache;

    if-nez p2, :cond_2

    .line 205
    invoke-direct {p0}, Lcom/yftech/car/widget/media/utils/ImageLoadingManager;->initLruCache()V

    .line 208
    :cond_2
    iget-object p2, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager;->mLruCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;

    if-eqz p2, :cond_5

    .line 210
    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-nez p0, :cond_3

    .line 211
    iget-wide v1, p2, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mDuration:J

    invoke-virtual {v0, v1, v2}, Lcom/yftech/car/media/data/entity/MediaFile;->setDuration(J)V

    .line 213
    :cond_3
    iget-object p0, p2, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_4

    .line 214
    iget-object p0, p2, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 216
    :cond_4
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;->setFailedResDrawable()V

    :goto_1
    const/4 p0, 0x0

    .line 218
    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;->setImageLoadingStatus(Z)V

    goto :goto_2

    .line 220
    :cond_5
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 221
    invoke-virtual {p1, v2}, Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;->setImageLoadingStatus(Z)V

    .line 222
    invoke-static {}, Lcom/yftech/car/widget/media/utils/TaskManager;->getInstance()Lcom/yftech/car/widget/media/utils/TaskManager;

    move-result-object p2

    new-instance v1, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;

    invoke-direct {v1, p0, p1, v0}, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;-><init>(Lcom/yftech/car/widget/media/utils/ImageLoadingManager;Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;Lcom/yftech/car/media/data/entity/MediaFile;)V

    invoke-virtual {p2, v1}, Lcom/yftech/car/widget/media/utils/TaskManager;->threadRunnable(Ljava/lang/Runnable;)V

    :cond_6
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCustomLoadingImage(Lcom/yftech/car/widget/media/utils/ImageLoadingManager$CustomLoadingImage;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager;->mCustomLoadingImage:Lcom/yftech/car/widget/media/utils/ImageLoadingManager$CustomLoadingImage;

    return-void
.end method

.method public setCustomLoadingImage(Lcom/yftech/car/widget/media/utils/ImageLoadingManager$CustomLoadingImage;I)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager;->mCustomLoadingImage:Lcom/yftech/car/widget/media/utils/ImageLoadingManager$CustomLoadingImage;

    .line 106
    iput p2, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager;->mCustomLoadFlags:I

    return-void
.end method

.method public setThreadSize(I)V
    .locals 0

    .line 87
    invoke-static {}, Lcom/yftech/car/widget/media/utils/TaskManager;->getInstance()Lcom/yftech/car/widget/media/utils/TaskManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/utils/TaskManager;->setThreadSize(I)V

    return-void
.end method
