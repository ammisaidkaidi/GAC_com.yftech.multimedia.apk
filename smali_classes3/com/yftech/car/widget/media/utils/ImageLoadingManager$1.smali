.class Lcom/yftech/car/widget/media/utils/ImageLoadingManager$1;
.super Landroid/util/LruCache;
.source "ImageLoadingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/car/widget/media/utils/ImageLoadingManager;->initLruCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/utils/ImageLoadingManager;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/utils/ImageLoadingManager;I)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$1;->this$0:Lcom/yftech/car/widget/media/utils/ImageLoadingManager;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 61
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/utils/ImageLoadingManager$1;->sizeOf(Ljava/lang/String;Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;)I

    move-result p0

    return p0
.end method

.method protected sizeOf(Ljava/lang/String;Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;)I
    .locals 0

    .line 64
    iget-object p0, p2, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_0

    .line 65
    iget-object p0, p2, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    iget-object p1, p2, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result p1

    mul-int/2addr p0, p1

    return p0

    :cond_0
    const/16 p0, 0x10

    return p0
.end method
