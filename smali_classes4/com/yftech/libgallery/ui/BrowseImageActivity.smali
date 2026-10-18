.class public Lcom/yftech/libgallery/ui/BrowseImageActivity;
.super Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;
.source "BrowseImageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/yftech/libgallery/view/IBrowseImageActivityView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity<",
        "Lcom/yftech/libgallery/presenter/BrowseImagePresenter;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/yftech/libgallery/view/IBrowseImageActivityView;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final INTERVAL:I

.field private final RC_CONTROL_BAR:I

.field private final RC_INPUT:I

.field private actionBar:Lcom/media/common/ui/widget/MyActionBar;

.field private carInputCallback:Lcom/yftech/car/input/CarInputManager$CarInputCallback;

.field private control_bar:Landroid/widget/LinearLayout;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation
.end field

.field private dv_image:Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

.field private forward:I

.field private index:I

.field private isLoading:Z

.field private isReturnByUser:Z

.field private iv_next:Landroid/widget/ImageView;

.field private iv_previous:Landroid/widget/ImageView;

.field private final mHandler:Landroid/os/Handler;

.field private path:Ljava/lang/String;

.field private position:I

.field private receiver:Landroid/content/BroadcastReceiver;

.field private rotation_index:I

.field private final rotation_selection:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 74
    invoke-direct {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;-><init>()V

    const/4 v0, 0x4

    .line 89
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->rotation_selection:[I

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->rotation_index:I

    .line 92
    iput v0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->forward:I

    const/4 v1, 0x1

    .line 94
    iput-boolean v1, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->isLoading:Z

    .line 96
    iput-boolean v0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->isReturnByUser:Z

    const/16 v0, 0xa

    .line 99
    iput v0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->RC_CONTROL_BAR:I

    const/16 v0, 0x1388

    .line 101
    iput v0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->INTERVAL:I

    const/16 v0, 0x14

    .line 103
    iput v0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->RC_INPUT:I

    .line 105
    new-instance v0, Lcom/yftech/libgallery/ui/BrowseImageActivity$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yftech/libgallery/ui/BrowseImageActivity$1;-><init>(Lcom/yftech/libgallery/ui/BrowseImageActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->mHandler:Landroid/os/Handler;

    .line 160
    new-instance v0, Lcom/yftech/libgallery/ui/BrowseImageActivity$2;

    invoke-direct {v0, p0}, Lcom/yftech/libgallery/ui/BrowseImageActivity$2;-><init>(Lcom/yftech/libgallery/ui/BrowseImageActivity;)V

    iput-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 285
    new-instance v0, Lcom/yftech/libgallery/ui/BrowseImageActivity$4;

    invoke-direct {v0, p0}, Lcom/yftech/libgallery/ui/BrowseImageActivity$4;-><init>(Lcom/yftech/libgallery/ui/BrowseImageActivity;)V

    iput-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->carInputCallback:Lcom/yftech/car/input/CarInputManager$CarInputCallback;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x10e
        0xb4
        0x5a
    .end array-data
.end method

.method static synthetic access$000(Lcom/yftech/libgallery/ui/BrowseImageActivity;I)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/yftech/libgallery/ui/BrowseImageActivity;->setControlBarVisible(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/libgallery/ui/BrowseImageActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->iv_next:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/libgallery/ui/BrowseImageActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->iv_previous:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/libgallery/ui/BrowseImageActivity;)Lcom/yftech/car/input/CarInputManager$CarInputCallback;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->carInputCallback:Lcom/yftech/car/input/CarInputManager$CarInputCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/libgallery/ui/BrowseImageActivity;)Z
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/yftech/libgallery/ui/BrowseImageActivity;->getControlBarVisible()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/yftech/libgallery/ui/BrowseImageActivity;)Landroid/os/Handler;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/yftech/libgallery/ui/BrowseImageActivity;)I
    .locals 0

    .line 74
    iget p0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->forward:I

    return p0
.end method

.method private displayImage()V
    .locals 4

    .line 307
    iget-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->data:Ljava/util/List;

    iget v1, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->position:I

    iget-object v2, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/media/data/entity/MediaFile;

    if-nez v0, :cond_0

    return-void

    .line 311
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 313
    iget-object v2, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->actionBar:Lcom/media/common/ui/widget/MyActionBar;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/media/common/ui/widget/MyActionBar;->setTitleText(Ljava/lang/String;)V

    .line 315
    invoke-static {v1}, Lcom/facebook/common/util/UriUtil;->getUriForFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 316
    new-instance v2, Lcom/yftech/libgallery/ui/BrowseImageActivity$5;

    invoke-direct {v2, p0}, Lcom/yftech/libgallery/ui/BrowseImageActivity$5;-><init>(Lcom/yftech/libgallery/ui/BrowseImageActivity;)V

    .line 342
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v3

    .line 343
    invoke-virtual {v3, v1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setUri(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v1

    const/4 v3, 0x1

    .line 344
    invoke-virtual {v1, v3}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setAutoPlayAnimations(Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    .line 345
    invoke-virtual {v1, v2}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setControllerListener(Lcom/facebook/drawee/controller/ControllerListener;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    .line 346
    invoke-virtual {v1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->build()Lcom/facebook/drawee/controller/AbstractDraweeController;

    move-result-object v1

    .line 347
    iget-object v2, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->dv_image:Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

    invoke-virtual {v2, v1}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->setController(Lcom/facebook/drawee/interfaces/DraweeController;)V

    .line 350
    iget v1, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->index:I

    if-nez v1, :cond_1

    .line 351
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/BrowseImageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object p0

    const-string v1, "TAG_PHOTO_VIEWED_LAST_FOR_USB_1"

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/media/common/util/SharedPrefsUtil;->save(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 353
    :cond_1
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/BrowseImageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object p0

    const-string v1, "TAG_PHOTO_VIEWED_LAST_FOR_USB_2"

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/media/common/util/SharedPrefsUtil;->save(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private getControlBarVisible()Z
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->control_bar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->actionBar:Lcom/media/common/ui/widget/MyActionBar;

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

    .line 208
    sget v0, Lcom/yftech/libgallery/R$id;->actionBar:I

    invoke-virtual {p0, v0}, Lcom/yftech/libgallery/ui/BrowseImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/media/common/ui/widget/MyActionBar;

    iput-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->actionBar:Lcom/media/common/ui/widget/MyActionBar;

    .line 209
    iget-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->actionBar:Lcom/media/common/ui/widget/MyActionBar;

    sget v1, Lcom/yftech/libgallery/R$string;->pic_name:I

    invoke-virtual {p0, v1}, Lcom/yftech/libgallery/ui/BrowseImageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/media/common/ui/widget/MyActionBar;->setTitleText(Ljava/lang/String;)V

    .line 211
    sget v0, Lcom/yftech/libgallery/R$id;->control_bar:I

    invoke-virtual {p0, v0}, Lcom/yftech/libgallery/ui/BrowseImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->control_bar:Landroid/widget/LinearLayout;

    .line 213
    sget v0, Lcom/yftech/libgallery/R$id;->dv_image:I

    invoke-virtual {p0, v0}, Lcom/yftech/libgallery/ui/BrowseImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

    iput-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->dv_image:Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

    .line 214
    iget-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->dv_image:Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->setIsLongpressEnabled(Z)V

    .line 215
    new-instance v0, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener;

    iget-object v1, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->dv_image:Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

    invoke-direct {v0, v1}, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener;-><init>(Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;)V

    .line 216
    new-instance v1, Lcom/yftech/libgallery/ui/BrowseImageActivity$3;

    invoke-direct {v1, p0}, Lcom/yftech/libgallery/ui/BrowseImageActivity$3;-><init>(Lcom/yftech/libgallery/ui/BrowseImageActivity;)V

    invoke-virtual {v0, v1}, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener;->setOnSingleClick(Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener$OnSingleClickListener;)V

    .line 274
    iget-object v1, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->dv_image:Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

    invoke-virtual {v1, v0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->setTapListener(Landroid/view/GestureDetector$SimpleOnGestureListener;)V

    .line 276
    sget v0, Lcom/yftech/libgallery/R$id;->iv_rotate:I

    invoke-virtual {p0, v0}, Lcom/yftech/libgallery/ui/BrowseImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    sget v0, Lcom/yftech/libgallery/R$id;->iv_previous:I

    invoke-virtual {p0, v0}, Lcom/yftech/libgallery/ui/BrowseImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->iv_previous:Landroid/widget/ImageView;

    .line 278
    sget v0, Lcom/yftech/libgallery/R$id;->iv_slide:I

    invoke-virtual {p0, v0}, Lcom/yftech/libgallery/ui/BrowseImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    sget v0, Lcom/yftech/libgallery/R$id;->iv_next:I

    invoke-virtual {p0, v0}, Lcom/yftech/libgallery/ui/BrowseImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->iv_next:Landroid/widget/ImageView;

    .line 280
    iget-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->iv_next:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->iv_previous:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private registerTestReceiver()V
    .locals 2

    .line 154
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "test"

    .line 155
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/yftech/libgallery/ui/BrowseImageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setControlBarVisible(I)V
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->control_bar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 533
    iget-object p0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->actionBar:Lcom/media/common/ui/widget/MyActionBar;

    invoke-virtual {p0, p1}, Lcom/media/common/ui/widget/MyActionBar;->setVisibility(I)V

    return-void
.end method

.method public static statusBarHide(Landroid/app/Activity;)V
    .locals 2

    .line 455
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x400

    .line 457
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 458
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 459
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 461
    invoke-virtual {p0}, Landroid/app/ActionBar;->hide()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected createPresenter()Lcom/yftech/libgallery/presenter/BrowseImagePresenter;
    .locals 1

    .line 125
    new-instance v0, Lcom/yftech/libgallery/presenter/BrowseImagePresenter;

    invoke-direct {v0, p0}, Lcom/yftech/libgallery/presenter/BrowseImagePresenter;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method protected bridge synthetic createPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/BrowseImageActivity;->createPresenter()Lcom/yftech/libgallery/presenter/BrowseImagePresenter;

    move-result-object p0

    return-object p0
.end method

.method public displayImageList(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 475
    iput-boolean v0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->isLoading:Z

    if-ltz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 483
    :cond_0
    iput p1, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->position:I

    .line 484
    iput-object p2, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->data:Ljava/util/List;

    .line 486
    invoke-direct {p0}, Lcom/yftech/libgallery/ui/BrowseImageActivity;->displayImage()V

    .line 489
    iget-object p0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->mHandler:Landroid/os/Handler;

    const/16 p1, 0xa

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 479
    :cond_1
    :goto_0
    sget p0, Lcom/yftech/libgallery/R$string;->picture_browse_empty_error:I

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/media/common/util/ToastUtils;->showFailMessage(II)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 359
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/BrowseImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/yftech/libgallery/ui/BrowseImageActivity;->setResult(ILandroid/content/Intent;)V

    const/4 v0, 0x1

    .line 361
    iput-boolean v0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->isReturnByUser:Z

    .line 362
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 368
    iget-boolean v0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->isLoading:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 369
    sget p1, Lcom/yftech/libgallery/R$string;->data_loading:I

    invoke-virtual {p0, p1}, Lcom/yftech/libgallery/ui/BrowseImageActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/media/common/util/ToastUtils;->showNormalMessage(Ljava/lang/String;I)V

    return-void

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 377
    iget v0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->position:I

    if-ltz v0, :cond_9

    iget-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->data:Ljava/util/List;

    if-nez v0, :cond_2

    goto/16 :goto_2

    .line 383
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v2, Lcom/yftech/libgallery/R$id;->iv_rotate:I

    const/4 v3, 0x0

    if-ne v0, v2, :cond_4

    .line 385
    iget-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->data:Ljava/util/List;

    iget v0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->position:I

    iget-object v2, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v0, v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/media/data/entity/MediaFile;

    .line 387
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/FileTypeUtils;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 389
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mimeType="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v2, "image/gif"

    .line 392
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 393
    sget p1, Lcom/yftech/libgallery/R$string;->picture_not_support_rotation:I

    invoke-virtual {p0, p1}, Lcom/yftech/libgallery/ui/BrowseImageActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Lcom/media/common/util/ToastUtils;->showNormalMessage(Ljava/lang/String;I)V

    return-void

    .line 397
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/common/util/UriUtil;->getUriForFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 399
    iget v0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->rotation_index:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->rotation_index:I

    iget-object v2, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->rotation_selection:[I

    array-length v2, v2

    rem-int/2addr v0, v2

    iput v0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->rotation_index:I

    .line 400
    iget-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->rotation_selection:[I

    iget v2, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->rotation_index:I

    aget v0, v0, v2

    invoke-static {v0}, Lcom/facebook/imagepipeline/common/RotationOptions;->forceRotation(I)Lcom/facebook/imagepipeline/common/RotationOptions;

    move-result-object v0

    .line 401
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->newBuilderWithSource(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    .line 402
    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->setRotationOptions(Lcom/facebook/imagepipeline/common/RotationOptions;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    .line 403
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->build()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    .line 404
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v0

    .line 405
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setImageRequest(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    .line 406
    invoke-virtual {p1, v1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setAutoPlayAnimations(Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    .line 407
    invoke-virtual {p1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->build()Lcom/facebook/drawee/controller/AbstractDraweeController;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;

    .line 408
    iget-object p0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->dv_image:Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

    invoke-virtual {p0, p1}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->setController(Lcom/facebook/drawee/interfaces/DraweeController;)V

    goto/16 :goto_1

    .line 411
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v2, Lcom/yftech/libgallery/R$id;->iv_previous:I

    if-ne v0, v2, :cond_6

    const/4 p1, -0x1

    .line 413
    iput p1, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->forward:I

    .line 416
    iput v3, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->rotation_index:I

    .line 418
    iget p1, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->position:I

    if-lez p1, :cond_5

    .line 419
    iget p1, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->position:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->position:I

    goto :goto_0

    .line 421
    :cond_5
    iget p1, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->position:I

    iget-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->position:I

    .line 423
    :goto_0
    invoke-direct {p0}, Lcom/yftech/libgallery/ui/BrowseImageActivity;->displayImage()V

    goto :goto_1

    .line 426
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v2, Lcom/yftech/libgallery/R$id;->iv_next:I

    if-ne v0, v2, :cond_7

    .line 428
    iput v1, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->forward:I

    .line 431
    iput v3, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->rotation_index:I

    .line 433
    iget p1, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->position:I

    add-int/2addr p1, v1

    iget-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p1, v0

    iput p1, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->position:I

    .line 434
    invoke-direct {p0}, Lcom/yftech/libgallery/ui/BrowseImageActivity;->displayImage()V

    goto :goto_1

    .line 437
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/yftech/libgallery/R$id;->iv_slide:I

    if-ne p1, v0, :cond_8

    .line 440
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "index"

    .line 442
    iget v1, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->index:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "imagePath"

    .line 443
    iget-object v1, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->data:Ljava/util/List;

    iget v2, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->position:I

    iget-object v3, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->data:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    rem-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x3e9

    const/4 v1, 0x0

    .line 444
    invoke-static {p0, p1, v0, v1}, Landroidx/core/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 445
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/BrowseImageActivity;->finish()V

    :cond_8
    :goto_1
    return-void

    .line 378
    :cond_9
    :goto_2
    sget p0, Lcom/yftech/libgallery/R$string;->picture_browse_empty_error:I

    invoke-static {p0, v1}, Lcom/media/common/util/ToastUtils;->showFailMessage(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 130
    invoke-super {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 131
    sget p1, Lcom/yftech/libgallery/R$layout;->activity_browse_image:I

    invoke-virtual {p0, p1}, Lcom/yftech/libgallery/ui/BrowseImageActivity;->setContentView(I)V

    .line 134
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/BrowseImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "imagePath"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->path:Ljava/lang/String;

    .line 135
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/BrowseImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "index"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->index:I

    .line 138
    invoke-direct {p0}, Lcom/yftech/libgallery/ui/BrowseImageActivity;->initW()V

    const/4 p1, 0x1

    .line 141
    iput-boolean p1, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->isLoading:Z

    .line 142
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/BrowseImageActivity;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p1

    check-cast p1, Lcom/yftech/libgallery/presenter/BrowseImagePresenter;

    iget-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->path:Ljava/lang/String;

    iget v1, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->index:I

    invoke-virtual {p1, v0, v1}, Lcom/yftech/libgallery/presenter/BrowseImagePresenter;->getImageList(Ljava/lang/String;I)V

    .line 144
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 146
    invoke-static {}, Lcom/yftech/car/input/CarInputManager;->getInstance()Lcom/yftech/car/input/CarInputManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->carInputCallback:Lcom/yftech/car/input/CarInputManager$CarInputCallback;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/yftech/car/input/CarInputManager;->registerCarInputCallback(Lcom/yftech/car/input/CarInputManager$CarInputCallback;Landroid/os/Handler;)V

    .line 148
    invoke-direct {p0}, Lcom/yftech/libgallery/ui/BrowseImageActivity;->registerTestReceiver()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 197
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onDestroy()V

    .line 199
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 201
    invoke-static {}, Lcom/yftech/car/input/CarInputManager;->getInstance()Lcom/yftech/car/input/CarInputManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->carInputCallback:Lcom/yftech/car/input/CarInputManager$CarInputCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/input/CarInputManager;->unregisterCarInputCallback(Lcom/yftech/car/input/CarInputManager$CarInputCallback;)V

    .line 203
    iget-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/yftech/libgallery/ui/BrowseImageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 184
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onPause()V

    const-string p0, "onPause"

    .line 186
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 177
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onResume()V

    const-string p0, "onResume"

    .line 179
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 191
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onStop()V

    return-void
.end method

.method public onUSBStatusChange(Lcom/media/common/event/USBStateForPhotoAndVideoEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "onUSBStatusChange:receiveBroadCast"

    .line 494
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 497
    iget-boolean v0, p1, Lcom/media/common/event/USBStateForPhotoAndVideoEvent;->isUsbExists:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->index:I

    iget p1, p1, Lcom/media/common/event/USBStateForPhotoAndVideoEvent;->usbIndex:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    .line 519
    iput-boolean p1, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity;->isReturnByUser:Z

    .line 520
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/media/common/event/USBPushOutInPhotoDisplayingEvent;

    invoke-direct {v0}, Lcom/media/common/event/USBPushOutInPhotoDisplayingEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 521
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/BrowseImageActivity;->finish()V

    :cond_0
    return-void
.end method
