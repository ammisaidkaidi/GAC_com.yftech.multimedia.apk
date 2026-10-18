.class public Lcom/yftech/libgallery/ui/FullScreenImageActivity;
.super Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;
.source "FullScreenImageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/yftech/libgallery/view/IFullScreenImageActivityView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity<",
        "Lcom/yftech/libgallery/presenter/FullScreenImagePresenter;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/yftech/libgallery/view/IFullScreenImageActivityView;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final IMAGE_INTERVAL:I

.field private final INTERVAL:I

.field private final RC_CONTROL_BAR:I

.field private final RC_IMAGE_SWITCH:I

.field private final RC_INPUT:I

.field private actionBar:Lcom/media/common/ui/widget/MyActionBar;

.field private callback:Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;

.field private carInputCallback:Lcom/yftech/car/input/CarInputManager$CarInputCallback;

.field private control_bar:Landroid/widget/LinearLayout;

.field private dv_image:Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

.field private forward:I

.field private imagePath:Ljava/lang/String;

.field private index:I

.field private isLoading:Z

.field private isPlaying:Z

.field private isReturnByUser:Z

.field private iv_next:Landroid/widget/ImageView;

.field private iv_previous:Landroid/widget/ImageView;

.field private iv_slide:Landroid/widget/ImageView;

.field private final mHandler:Landroid/os/Handler;

.field private paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation
.end field

.field private position:I

.field private receiver:Landroid/content/BroadcastReceiver;

.field private rotation_index:I

.field private final rotation_selection:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 71
    invoke-direct {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;-><init>()V

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->isPlaying:Z

    .line 86
    iput-boolean v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->isLoading:Z

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->isReturnByUser:Z

    const/4 v1, 0x4

    .line 90
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->rotation_selection:[I

    .line 91
    iput v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->rotation_index:I

    .line 93
    iput v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->forward:I

    const/16 v0, 0xa

    .line 95
    iput v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->RC_CONTROL_BAR:I

    const/16 v0, 0x63

    .line 97
    iput v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->RC_IMAGE_SWITCH:I

    const/16 v0, 0x1388

    .line 99
    iput v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->INTERVAL:I

    .line 101
    iput v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->IMAGE_INTERVAL:I

    const/16 v0, 0x14

    .line 103
    iput v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->RC_INPUT:I

    .line 104
    new-instance v0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yftech/libgallery/ui/FullScreenImageActivity$1;-><init>(Lcom/yftech/libgallery/ui/FullScreenImageActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->mHandler:Landroid/os/Handler;

    .line 131
    new-instance v0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$2;

    invoke-direct {v0, p0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity$2;-><init>(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)V

    iput-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 194
    new-instance v0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$3;

    invoke-direct {v0, p0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity$3;-><init>(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)V

    iput-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->carInputCallback:Lcom/yftech/car/input/CarInputManager$CarInputCallback;

    .line 304
    new-instance v0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$5;

    invoke-direct {v0, p0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity$5;-><init>(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)V

    iput-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->callback:Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;

    return-void

    :array_0
    .array-data 4
        0x0
        0x10e
        0xb4
        0x5a
    .end array-data
.end method

.method static synthetic access$000(Lcom/yftech/libgallery/ui/FullScreenImageActivity;I)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->setControlBarVisible(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->forward:I

    return p0
.end method

.method static synthetic access$1000(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->iv_slide:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/yftech/libgallery/ui/FullScreenImageActivity;I)I
    .locals 0

    .line 71
    iput p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->forward:I

    return p1
.end method

.method static synthetic access$1100(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)Z
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->getControlBarVisible()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1202(Lcom/yftech/libgallery/ui/FullScreenImageActivity;I)I
    .locals 0

    .line 71
    iput p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->rotation_index:I

    return p1
.end method

.method static synthetic access$200(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->position:I

    return p0
.end method

.method static synthetic access$202(Lcom/yftech/libgallery/ui/FullScreenImageActivity;I)I
    .locals 0

    .line 71
    iput p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->position:I

    return p1
.end method

.method static synthetic access$210(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)I
    .locals 2

    .line 71
    iget v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->position:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->position:I

    return v0
.end method

.method static synthetic access$300(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)Ljava/util/List;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->paths:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->displayImage()V

    return-void
.end method

.method static synthetic access$500(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)Landroid/os/Handler;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->iv_next:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->iv_previous:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$802(Lcom/yftech/libgallery/ui/FullScreenImageActivity;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->isReturnByUser:Z

    return p1
.end method

.method static synthetic access$900(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->isPlaying:Z

    return p0
.end method

.method private displayImage()V
    .locals 4

    .line 443
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->paths:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->paths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_1

    .line 446
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->paths:Ljava/util/List;

    iget v2, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->position:I

    iget-object v3, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->paths:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    rem-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 447
    iget-object v1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->actionBar:Lcom/media/common/ui/widget/MyActionBar;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/media/common/ui/widget/MyActionBar;->setTitleText(Ljava/lang/String;)V

    .line 449
    invoke-static {v0}, Lcom/facebook/common/util/UriUtil;->getUriForFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 450
    new-instance v1, Lcom/yftech/libgallery/ui/FullScreenImageActivity$7;

    invoke-direct {v1, p0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity$7;-><init>(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)V

    .line 472
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v2

    .line 473
    invoke-virtual {v2, v0}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setUri(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v0

    const/4 v2, 0x1

    .line 474
    invoke-virtual {v0, v2}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setAutoPlayAnimations(Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    .line 475
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setControllerListener(Lcom/facebook/drawee/controller/ControllerListener;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    .line 476
    invoke-virtual {v0}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->build()Lcom/facebook/drawee/controller/AbstractDraweeController;

    move-result-object v0

    .line 477
    iget-object v1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->dv_image:Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

    invoke-virtual {v1, v0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->setController(Lcom/facebook/drawee/interfaces/DraweeController;)V

    .line 480
    iget-boolean v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->isPlaying:Z

    if-eqz v0, :cond_2

    .line 481
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 482
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 484
    :cond_1
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 488
    :cond_2
    iget v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->index:I

    if-nez v0, :cond_3

    .line 489
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object v0

    const-string v1, "TAG_PHOTO_VIEWED_LAST_FOR_USB_1"

    iget-object v2, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->paths:Ljava/util/List;

    iget v3, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->position:I

    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->paths:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    rem-int/2addr v3, p0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {p0}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/media/common/util/SharedPrefsUtil;->save(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 491
    :cond_3
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object v0

    const-string v1, "TAG_PHOTO_VIEWED_LAST_FOR_USB_2"

    iget-object v2, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->paths:Ljava/util/List;

    iget v3, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->position:I

    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->paths:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    rem-int/2addr v3, p0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {p0}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/media/common/util/SharedPrefsUtil;->save(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method private getControlBarVisible()Z
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->control_bar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->actionBar:Lcom/media/common/ui/widget/MyActionBar;

    invoke-virtual {p0}, Lcom/media/common/ui/widget/MyActionBar;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

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

.method private initW()V
    .locals 2

    .line 356
    sget v0, Lcom/yftech/libgallery/R$id;->actionBar:I

    invoke-virtual {p0, v0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/media/common/ui/widget/MyActionBar;

    iput-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->actionBar:Lcom/media/common/ui/widget/MyActionBar;

    .line 357
    sget v0, Lcom/yftech/libgallery/R$id;->control_bar:I

    invoke-virtual {p0, v0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->control_bar:Landroid/widget/LinearLayout;

    .line 359
    sget v0, Lcom/yftech/libgallery/R$id;->dv_image:I

    invoke-virtual {p0, v0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

    iput-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->dv_image:Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

    .line 360
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->dv_image:Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->setIsLongpressEnabled(Z)V

    .line 361
    new-instance v0, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener;

    iget-object v1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->dv_image:Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

    invoke-direct {v0, v1}, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener;-><init>(Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;)V

    .line 362
    new-instance v1, Lcom/yftech/libgallery/ui/FullScreenImageActivity$6;

    invoke-direct {v1, p0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity$6;-><init>(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)V

    invoke-virtual {v0, v1}, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener;->setOnSingleClick(Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener$OnSingleClickListener;)V

    .line 426
    iget-object v1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->dv_image:Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

    invoke-virtual {v1, v0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->setTapListener(Landroid/view/GestureDetector$SimpleOnGestureListener;)V

    .line 428
    sget v0, Lcom/yftech/libgallery/R$id;->iv_rotate:I

    invoke-virtual {p0, v0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    sget v0, Lcom/yftech/libgallery/R$id;->iv_previous:I

    invoke-virtual {p0, v0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->iv_previous:Landroid/widget/ImageView;

    .line 430
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->iv_previous:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    sget v0, Lcom/yftech/libgallery/R$id;->iv_next:I

    invoke-virtual {p0, v0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->iv_next:Landroid/widget/ImageView;

    .line 432
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->iv_next:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    sget v0, Lcom/yftech/libgallery/R$id;->iv_slide:I

    invoke-virtual {p0, v0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->iv_slide:Landroid/widget/ImageView;

    .line 436
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->iv_slide:Landroid/widget/ImageView;

    sget v1, Lcom/yftech/libgallery/R$drawable;->picture_play_state_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 437
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->iv_slide:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private registerReceiver()V
    .locals 2

    .line 187
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.yftech.avmservice.SHOW_STATE"

    .line 188
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setControlBarVisible(I)V
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->control_bar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 606
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->actionBar:Lcom/media/common/ui/widget/MyActionBar;

    invoke-virtual {p0, p1}, Lcom/media/common/ui/widget/MyActionBar;->setVisibility(I)V

    return-void
.end method

.method public static statusBarHide(Landroid/app/Activity;)V
    .locals 2

    .line 337
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x400

    .line 339
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 340
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 341
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 343
    invoke-virtual {p0}, Landroid/app/ActionBar;->hide()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected createPresenter()Lcom/yftech/libgallery/presenter/FullScreenImagePresenter;
    .locals 1

    .line 154
    new-instance v0, Lcom/yftech/libgallery/presenter/FullScreenImagePresenter;

    invoke-direct {v0, p0}, Lcom/yftech/libgallery/presenter/FullScreenImagePresenter;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method protected bridge synthetic createPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->createPresenter()Lcom/yftech/libgallery/presenter/FullScreenImagePresenter;

    move-result-object p0

    return-object p0
.end method

.method public displayImages(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 612
    iput-boolean v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->isLoading:Z

    .line 614
    iput p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->position:I

    .line 615
    iput-object p2, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->paths:Ljava/util/List;

    const/16 p1, 0x8

    .line 617
    invoke-direct {p0, p1}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->setControlBarVisible(I)V

    .line 619
    invoke-direct {p0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->displayImage()V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 295
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->setResult(ILandroid/content/Intent;)V

    const/4 v0, 0x1

    .line 297
    iput-boolean v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->isReturnByUser:Z

    .line 299
    invoke-static {}, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->getInstance()Lcom/yftech/libgallery/utils/MyPhotoDataManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->setPhotoPlayingBeforeSwitchPage(Z)V

    .line 300
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onBackPressed()V

    return-void
.end method

.method public onCarPlayUIStateChanged(Lcom/yftech/libmusic/event/CarPlayUIStateEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "onCarPlayUIStateChanged"

    .line 663
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 666
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->onResume()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 497
    iget-boolean v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->isLoading:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 498
    sget p1, Lcom/yftech/libgallery/R$string;->data_loading:I

    invoke-virtual {p0, p1}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/media/common/util/ToastUtils;->showNormalMessage(Ljava/lang/String;I)V

    return-void

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 504
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 508
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v2, Lcom/yftech/libgallery/R$id;->iv_rotate:I

    const/4 v5, 0x0

    if-ne v0, v2, :cond_3

    .line 511
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->paths:Ljava/util/List;

    iget v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->position:I

    iget-object v2, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->paths:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v0, v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/media/data/entity/MediaFile;

    .line 513
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/FileTypeUtils;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 515
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mimeType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v2, "image/gif"

    .line 518
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 519
    sget p1, Lcom/yftech/libgallery/R$string;->picture_not_support_rotation:I

    invoke-virtual {p0, p1}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Lcom/media/common/util/ToastUtils;->showNormalMessage(Ljava/lang/String;I)V

    return-void

    .line 524
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/common/util/UriUtil;->getUriForFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 526
    iget v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->rotation_index:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->rotation_index:I

    iget-object v1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->rotation_selection:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->rotation_index:I

    .line 527
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->rotation_selection:[I

    iget v1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->rotation_index:I

    aget v0, v0, v1

    invoke-static {v0}, Lcom/facebook/imagepipeline/common/RotationOptions;->forceRotation(I)Lcom/facebook/imagepipeline/common/RotationOptions;

    move-result-object v0

    .line 528
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->newBuilderWithSource(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    .line 529
    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->setRotationOptions(Lcom/facebook/imagepipeline/common/RotationOptions;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    .line 530
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->build()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    .line 531
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v0

    .line 532
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setImageRequest(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    .line 533
    invoke-virtual {p1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->build()Lcom/facebook/drawee/controller/AbstractDraweeController;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;

    .line 534
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->dv_image:Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

    invoke-virtual {v0, p1}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->setController(Lcom/facebook/drawee/interfaces/DraweeController;)V

    .line 537
    iget-boolean p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->isPlaying:Z

    if-eqz p1, :cond_8

    .line 538
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->iv_slide:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->callOnClick()Z

    goto/16 :goto_1

    .line 541
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v2, Lcom/yftech/libgallery/R$id;->iv_previous:I

    if-ne v0, v2, :cond_5

    .line 544
    iput v5, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->rotation_index:I

    const/4 p1, -0x1

    .line 546
    iput p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->forward:I

    .line 548
    iget p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->position:I

    if-lez p1, :cond_4

    .line 549
    iget p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->position:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->position:I

    goto :goto_0

    .line 551
    :cond_4
    iget p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->position:I

    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->paths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->position:I

    .line 553
    :goto_0
    invoke-direct {p0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->displayImage()V

    .line 556
    iget-boolean p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->isPlaying:Z

    if-eqz p1, :cond_8

    .line 557
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->iv_slide:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->callOnClick()Z

    goto :goto_1

    .line 560
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v2, Lcom/yftech/libgallery/R$id;->iv_next:I

    if-ne v0, v2, :cond_6

    .line 563
    iput v5, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->rotation_index:I

    .line 565
    iput v1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->forward:I

    .line 567
    iget p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->position:I

    add-int/2addr p1, v1

    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->paths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p1, v0

    iput p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->position:I

    .line 568
    invoke-direct {p0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->displayImage()V

    .line 571
    iget-boolean p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->isPlaying:Z

    if-eqz p1, :cond_8

    .line 572
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->iv_slide:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->callOnClick()Z

    goto :goto_1

    .line 575
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/yftech/libgallery/R$id;->iv_slide:I

    if-ne p1, v0, :cond_8

    .line 577
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->iv_slide:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->isPlaying:Z

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 579
    iget-boolean p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->isPlaying:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->isPlaying:Z

    .line 581
    iget-boolean p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->isPlaying:Z

    const/16 v0, 0x63

    if-nez p1, :cond_7

    .line 587
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 588
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1

    .line 593
    :cond_7
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_8
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 159
    invoke-super {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 161
    sget p1, Lcom/yftech/libgallery/R$layout;->activity_full_screen_image:I

    invoke-virtual {p0, p1}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->setContentView(I)V

    .line 163
    invoke-static {p0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->statusBarHide(Landroid/app/Activity;)V

    const/4 p1, 0x1

    .line 166
    invoke-static {p0, p1}, Lcom/media/common/util/SystemUtil;->setSysFullScreen(Landroid/app/Activity;Z)V

    .line 169
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "imagePath"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->imagePath:Ljava/lang/String;

    .line 170
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "index"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->index:I

    .line 172
    invoke-direct {p0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->initW()V

    .line 174
    iput-boolean p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->isLoading:Z

    .line 175
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p1

    check-cast p1, Lcom/yftech/libgallery/presenter/FullScreenImagePresenter;

    iget v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->index:I

    iget-object v1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/yftech/libgallery/presenter/FullScreenImagePresenter;->getImagesByIndex(ILjava/lang/String;)V

    .line 177
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->callback:Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->registerBluetoothPhoneCallback(Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;Landroid/os/Handler;)V

    .line 178
    invoke-static {}, Lcom/yftech/car/input/CarInputManager;->getInstance()Lcom/yftech/car/input/CarInputManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->carInputCallback:Lcom/yftech/car/input/CarInputManager$CarInputCallback;

    invoke-virtual {p1, v0, v1}, Lcom/yftech/car/input/CarInputManager;->registerCarInputCallback(Lcom/yftech/car/input/CarInputManager$CarInputCallback;Landroid/os/Handler;)V

    .line 180
    invoke-direct {p0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->registerReceiver()V

    .line 181
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 281
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onDestroy()V

    .line 283
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->callback:Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->unregisterBluetoothPhoneCallback(Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;)V

    .line 284
    invoke-static {}, Lcom/yftech/car/input/CarInputManager;->getInstance()Lcom/yftech/car/input/CarInputManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->carInputCallback:Lcom/yftech/car/input/CarInputManager$CarInputCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/input/CarInputManager;->unregisterCarInputCallback(Lcom/yftech/car/input/CarInputManager$CarInputCallback;)V

    .line 287
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 288
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPause()V
    .locals 4

    .line 215
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onPause()V

    .line 217
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/yftech/libgallery/ui/FullScreenImageActivity$4;

    invoke-direct {v1, p0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity$4;-><init>(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)V

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 257
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onResume()V

    const-string v0, "onResume"

    .line 259
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 261
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getPhoneCalls()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 263
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 264
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/bluetooth/model/PhoneCall;

    .line 267
    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallState()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    return-void

    .line 274
    :cond_0
    invoke-static {}, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->getInstance()Lcom/yftech/libgallery/utils/MyPhotoDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->isPhotoPlayingBeforeSwitchPage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->iv_slide:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->callOnClick()Z

    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 240
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onStop()V

    const-string v0, "onStop"

    .line 242
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 245
    iget-boolean v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->isReturnByUser:Z

    if-nez v0, :cond_0

    .line 246
    invoke-static {}, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->getInstance()Lcom/yftech/libgallery/utils/MyPhotoDataManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->isPlaying:Z

    invoke-virtual {v0, v1}, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->setPhotoPlayingBeforeSwitchPage(Z)V

    .line 250
    :cond_0
    iget-boolean v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->isPlaying:Z

    if-eqz v0, :cond_1

    .line 251
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->iv_slide:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->callOnClick()Z

    :cond_1
    return-void
.end method

.method public onUSBStatusChange(Lcom/media/common/event/USBStateForPhotoAndVideoEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "onUSBStatusChange:receiveBroadCast"

    .line 624
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 627
    iget-boolean v0, p1, Lcom/media/common/event/USBStateForPhotoAndVideoEvent;->isUsbExists:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->index:I

    iget p1, p1, Lcom/media/common/event/USBStateForPhotoAndVideoEvent;->usbIndex:I

    if-ne v0, p1, :cond_1

    .line 630
    iget-boolean p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->isPlaying:Z

    if-eqz p1, :cond_0

    .line 631
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->iv_slide:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->callOnClick()Z

    :cond_0
    const/4 p1, 0x1

    .line 653
    iput-boolean p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->isReturnByUser:Z

    .line 654
    invoke-static {}, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->getInstance()Lcom/yftech/libgallery/utils/MyPhotoDataManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->setPhotoPlayingBeforeSwitchPage(Z)V

    .line 655
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/media/common/event/USBPushOutInPhotoDisplayingEvent;

    invoke-direct {v0}, Lcom/media/common/event/USBPushOutInPhotoDisplayingEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 656
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->finish()V

    :cond_1
    return-void
.end method
