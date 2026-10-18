.class Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;
.super Ljava/lang/Object;
.source "MusicLayoutChildManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MusicImageRunnable"
.end annotation


# instance fields
.field private isStatus:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mLayout:Landroid/view/View;

.field private final path:Ljava/lang/String;

.field final synthetic this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;


# direct methods
.method private constructor <init>(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1442
    iput-object p1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 1439
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;->isStatus:Z

    .line 1443
    iput-object p2, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;->path:Ljava/lang/String;

    .line 1444
    iput-object p3, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;->mLayout:Landroid/view/View;

    .line 1445
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;->isStatus:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;Ljava/lang/String;Landroid/view/View;Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$1;)V
    .locals 0

    .line 1435
    invoke-direct {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;-><init>(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$202(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;Z)Z
    .locals 0

    .line 1435
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;->isStatus:Z

    return p1
.end method

.method static synthetic access$3000(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1435
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;)Landroid/view/View;
    .locals 0

    .line 1435
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;->mLayout:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1461
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1462
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 1463
    iput-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;->mBitmap:Landroid/graphics/Bitmap;

    .line 1465
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;->path:Ljava/lang/String;

    invoke-static {v0}, Lcom/yftech/car/media/data/util/MusicUtils;->getEmbeddedPictureAlbum(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;->mBitmap:Landroid/graphics/Bitmap;

    .line 1467
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;->mLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;->mLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;->mLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;->mLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1468
    :goto_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-gt v1, v0, :cond_2

    iget-object v1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-le v1, v0, :cond_3

    .line 1469
    :cond_2
    iget-object v1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v0, v1}, Lcom/yftech/car/media/data/util/MusicUtils;->compress(IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;->mBitmap:Landroid/graphics/Bitmap;

    .line 1472
    :cond_3
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;->isStatus:Z

    if-eqz v0, :cond_4

    .line 1473
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1400(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable$1;

    invoke-direct {v1, p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable$1;-><init>(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method
