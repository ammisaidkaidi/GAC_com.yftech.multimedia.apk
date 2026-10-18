.class Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;
.super Ljava/lang/Object;
.source "ImageLoadingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/utils/ImageLoadingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageRunnable"
.end annotation


# instance fields
.field private final file:Lcom/yftech/car/media/data/entity/MediaFile;

.field private final id:J

.field private isLoadHigh:Z

.field private final mDrawable:Landroid/graphics/drawable/Drawable;

.field private final mImageView:Landroid/widget/ImageView;

.field private final mLayout:Landroid/view/View;

.field private mMediaFileHolder:Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;

.field private final mMediaMetadataReturn:Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;

.field private final path:Ljava/lang/String;

.field private final resId:I

.field final synthetic this$0:Lcom/yftech/car/widget/media/utils/ImageLoadingManager;


# direct methods
.method private constructor <init>(Lcom/yftech/car/widget/media/utils/ImageLoadingManager;Lcom/yftech/car/media/data/entity/MediaFile;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 2

    .line 295
    iput-object p1, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->this$0:Lcom/yftech/car/widget/media/utils/ImageLoadingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    new-instance p1, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;

    invoke-direct {p1}, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mMediaMetadataReturn:Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;

    const/4 p1, 0x0

    .line 282
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->isLoadHigh:Z

    .line 296
    invoke-virtual {p2}, Lcom/yftech/car/media/data/entity/MediaFile;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->id:J

    const/4 p1, -0x1

    .line 297
    iput p1, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->resId:I

    .line 298
    iput-object p2, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->file:Lcom/yftech/car/media/data/entity/MediaFile;

    .line 299
    iput-object p3, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mImageView:Landroid/widget/ImageView;

    .line 300
    iput-object p5, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mLayout:Landroid/view/View;

    .line 301
    iput-object p4, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    .line 302
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->isLoadHigh:Z

    .line 303
    invoke-virtual {p2}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->path:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/car/widget/media/utils/ImageLoadingManager;Lcom/yftech/car/media/data/entity/MediaFile;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/view/View;Lcom/yftech/car/widget/media/utils/ImageLoadingManager$1;)V
    .locals 0

    .line 271
    invoke-direct/range {p0 .. p5}, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;-><init>(Lcom/yftech/car/widget/media/utils/ImageLoadingManager;Lcom/yftech/car/media/data/entity/MediaFile;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-void
.end method

.method private constructor <init>(Lcom/yftech/car/widget/media/utils/ImageLoadingManager;Lcom/yftech/car/media/data/entity/MediaFile;Lcom/yftech/car/widget/media/view/MediaImageView;Landroid/view/View;)V
    .locals 2

    .line 284
    iput-object p1, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->this$0:Lcom/yftech/car/widget/media/utils/ImageLoadingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    new-instance p1, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;

    invoke-direct {p1}, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mMediaMetadataReturn:Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;

    const/4 p1, 0x0

    .line 282
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->isLoadHigh:Z

    .line 285
    invoke-virtual {p2}, Lcom/yftech/car/media/data/entity/MediaFile;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->id:J

    const/4 v0, -0x1

    .line 286
    iput v0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->resId:I

    .line 287
    iput-object p2, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->file:Lcom/yftech/car/media/data/entity/MediaFile;

    .line 288
    iput-object p3, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mImageView:Landroid/widget/ImageView;

    .line 289
    iput-object p4, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mLayout:Landroid/view/View;

    .line 290
    invoke-virtual {p3}, Lcom/yftech/car/widget/media/view/MediaImageView;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 291
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->isLoadHigh:Z

    .line 292
    invoke-virtual {p2}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->path:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/car/widget/media/utils/ImageLoadingManager;Lcom/yftech/car/media/data/entity/MediaFile;Lcom/yftech/car/widget/media/view/MediaImageView;Landroid/view/View;Lcom/yftech/car/widget/media/utils/ImageLoadingManager$1;)V
    .locals 0

    .line 271
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;-><init>(Lcom/yftech/car/widget/media/utils/ImageLoadingManager;Lcom/yftech/car/media/data/entity/MediaFile;Lcom/yftech/car/widget/media/view/MediaImageView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/yftech/car/widget/media/utils/ImageLoadingManager;Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;Lcom/yftech/car/media/data/entity/MediaFile;)V
    .locals 2

    .line 306
    iput-object p1, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->this$0:Lcom/yftech/car/widget/media/utils/ImageLoadingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    new-instance p1, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;

    invoke-direct {p1}, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mMediaMetadataReturn:Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;

    const/4 p1, 0x0

    .line 282
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->isLoadHigh:Z

    .line 307
    invoke-virtual {p3}, Lcom/yftech/car/media/data/entity/MediaFile;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->id:J

    const/4 p1, -0x1

    .line 308
    iput p1, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->resId:I

    .line 309
    iput-object p3, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->file:Lcom/yftech/car/media/data/entity/MediaFile;

    const/4 p1, 0x0

    .line 310
    iput-object p1, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mImageView:Landroid/widget/ImageView;

    .line 311
    invoke-virtual {p2}, Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 312
    iget-object p1, p2, Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;->itemView:Landroid/view/View;

    iput-object p1, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mLayout:Landroid/view/View;

    .line 313
    iput-object p2, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mMediaFileHolder:Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;

    .line 314
    invoke-virtual {p3}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->path:Ljava/lang/String;

    return-void
.end method

.method public static synthetic lambda$run$0(Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;)V
    .locals 6

    .line 376
    iget-object v0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->path:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 377
    iget-object v0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mImageView:Landroid/widget/ImageView;

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_3

    .line 378
    iget-object v0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/media/data/entity/MediaFile;

    if-eqz v0, :cond_8

    .line 379
    iget-object v4, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->path:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 380
    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getDuration()J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-nez v2, :cond_0

    .line 381
    iget-object v2, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mMediaMetadataReturn:Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;

    iget-wide v2, v2, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mDuration:J

    invoke-virtual {v0, v2, v3}, Lcom/yftech/car/media/data/entity/MediaFile;->setDuration(J)V

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mMediaMetadataReturn:Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;

    iget-object v0, v0, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mImageView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mMediaMetadataReturn:Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;

    iget-object p0, p0, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 386
    :cond_1
    iget v0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->resId:I

    if-ne v0, v1, :cond_2

    .line 387
    iget-object v0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mImageView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 389
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mImageView:Landroid/widget/ImageView;

    iget p0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->resId:I

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 393
    :cond_3
    iget-object v0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mMediaFileHolder:Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;

    if-eqz v0, :cond_8

    .line 396
    iget-object v0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mMediaFileHolder:Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;->isValid()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 397
    iget-object v0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mMediaFileHolder:Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;->getMediaFile()Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 398
    iget-object v4, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->path:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 399
    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getDuration()J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-nez v2, :cond_4

    .line 400
    iget-object v2, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mMediaMetadataReturn:Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;

    iget-wide v2, v2, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mDuration:J

    invoke-virtual {v0, v2, v3}, Lcom/yftech/car/media/data/entity/MediaFile;->setDuration(J)V

    .line 402
    :cond_4
    iget-object v0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mMediaMetadataReturn:Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;

    iget-object v0, v0, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 403
    iget-object v0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mMediaFileHolder:Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;

    iget-object v1, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mMediaMetadataReturn:Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;

    iget-object v1, v1, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 405
    :cond_5
    iget v0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->resId:I

    if-ne v0, v1, :cond_6

    .line 406
    iget-object v0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mMediaFileHolder:Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;->setFailedResDrawable()V

    goto :goto_0

    .line 408
    :cond_6
    iget-object v0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mMediaFileHolder:Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;

    iget v1, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->resId:I

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;->setImageResource(I)V

    .line 411
    :goto_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mMediaFileHolder:Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;->setImageLoadingStatus(Z)V

    goto :goto_1

    :cond_7
    const-string p0, "ImageLoadingManager"

    const-string v0, "loading: Inconsistency detected. Invalid view holder"

    .line 414
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 330
    iget-object v0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mMediaMetadataReturn:Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;

    iget-object v0, v0, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mMediaMetadataReturn:Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;

    iget-object v0, v0, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mMediaMetadataReturn:Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;

    iget-object v0, v0, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 332
    iget-object v0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mMediaMetadataReturn:Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mBitmap:Landroid/graphics/Bitmap;

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->file:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v0

    const/4 v1, 0x2

    packed-switch v0, :pswitch_data_0

    const-string v0, "ImageLoadingManager"

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "run: unknown type =="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->file:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {p0}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 349
    :pswitch_0
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->isLoadHigh:Z

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 351
    iget-object v2, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 352
    iget-object v3, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mMediaMetadataReturn:Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;

    iget-object v4, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->file:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v4}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v4

    mul-int/2addr v0, v1

    mul-int/2addr v2, v1

    invoke-static {v4, v0, v2}, Lcom/yftech/car/widget/media/utils/ImageBitmapUtil;->getImageBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v3, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mMediaMetadataReturn:Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;

    iget-object v2, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->file:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v2}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/yftech/car/widget/media/utils/ImageBitmapUtil;->getImageBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 343
    :pswitch_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->file:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Lcom/yftech/car/widget/media/video/util/VideoBitmapUtil;->loadVideoReturn(Ljava/lang/String;J)Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;

    move-result-object v0

    .line 344
    iget-object v2, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mMediaMetadataReturn:Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;

    iget-object v3, v0, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v3, v2, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mBitmap:Landroid/graphics/Bitmap;

    .line 345
    iget-object v2, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mMediaMetadataReturn:Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;

    iget-wide v3, v0, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mDuration:J

    iput-wide v3, v2, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mDuration:J

    goto :goto_0

    .line 337
    :pswitch_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->file:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/util/MusicUtils;->getEmbeddedPictureAlbum(Ljava/lang/String;)Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;

    move-result-object v0

    .line 338
    iget-object v2, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mMediaMetadataReturn:Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;

    iget-object v3, v0, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v3, v2, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mBitmap:Landroid/graphics/Bitmap;

    .line 339
    iget-object v2, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mMediaMetadataReturn:Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;

    iget-wide v3, v0, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mDuration:J

    iput-wide v3, v2, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mDuration:J

    .line 362
    :goto_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->file:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v0

    if-eq v0, v1, :cond_4

    .line 363
    iget-object v0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 364
    :goto_1
    iget-object v1, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mMediaMetadataReturn:Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;

    iget-object v1, v1, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mMediaMetadataReturn:Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;

    iget-object v1, v1, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-gt v1, v0, :cond_3

    iget-object v1, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mMediaMetadataReturn:Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;

    iget-object v1, v1, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-le v1, v0, :cond_4

    .line 365
    :cond_3
    iget-object v1, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mMediaMetadataReturn:Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;

    iget-object v2, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mMediaMetadataReturn:Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;

    iget-object v2, v2, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v0, v2}, Lcom/yftech/car/widget/media/music/util/MusicUtils;->compress(IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v1, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mBitmap:Landroid/graphics/Bitmap;

    .line 369
    :cond_4
    iget v0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->resId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 370
    iget-object v0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->this$0:Lcom/yftech/car/widget/media/utils/ImageLoadingManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/utils/ImageLoadingManager;->access$200(Lcom/yftech/car/widget/media/utils/ImageLoadingManager;)Landroid/util/LruCache;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "page"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mMediaMetadataReturn:Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;

    invoke-virtual {v0, v1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 372
    :cond_5
    iget-object v0, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->this$0:Lcom/yftech/car/widget/media/utils/ImageLoadingManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/utils/ImageLoadingManager;->access$200(Lcom/yftech/car/widget/media/utils/ImageLoadingManager;)Landroid/util/LruCache;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->path:Ljava/lang/String;

    iget-object v2, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;->mMediaMetadataReturn:Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;

    invoke-virtual {v0, v1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    :goto_2
    invoke-static {}, Lcom/yftech/car/widget/media/utils/TaskManager;->getInstance()Lcom/yftech/car/widget/media/utils/TaskManager;

    move-result-object v0

    new-instance v1, Lcom/yftech/car/widget/media/utils/-$$Lambda$ImageLoadingManager$ImageRunnable$rX7TAAmxsHMwRm69MTT9vB7DV1s;

    invoke-direct {v1, p0}, Lcom/yftech/car/widget/media/utils/-$$Lambda$ImageLoadingManager$ImageRunnable$rX7TAAmxsHMwRm69MTT9vB7DV1s;-><init>(Lcom/yftech/car/widget/media/utils/ImageLoadingManager$ImageRunnable;)V

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/utils/TaskManager;->ui(Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
