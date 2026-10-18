.class public Lcom/yftech/libgallery/ui/BrowseImageFragment;
.super Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;
.source "BrowseImageFragment.java"

# interfaces
.implements Lcom/yftech/libgallery/view/IBrowseImageFragmentView;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment<",
        "Lcom/yftech/libgallery/presenter/BrowseImagePresenter;",
        ">;",
        "Lcom/yftech/libgallery/view/IBrowseImageFragmentView;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final ARG_PARAM1:Ljava/lang/String; = "path"

.field private static final ARG_PARAM2:Ljava/lang/String; = "index"


# instance fields
.field private final INTERVAL:I

.field private final RC_CONTROL_BAR:I

.field private final RC_INPUT:I

.field private actionBar:Lcom/media/common/ui/widget/MyActionBar;

.field private carInputCallback:Lcom/yftech/car/input/CarInputManager$CarInputCallback;

.field private control_bar:Landroid/widget/FrameLayout;

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

.field private iv_rotate:Landroid/widget/ImageView;

.field private iv_slide:Landroid/widget/ImageView;

.field private iv_wall_paper:Landroid/widget/ImageView;

.field private final mHandler:Landroid/os/Handler;

.field private path:Ljava/lang/String;

.field private position:I

.field private rotation:I

.field private rotation_index:I

.field private final rotation_selection:[I

.field private tv_pic_play_error:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 124
    invoke-direct {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;-><init>()V

    const/4 v0, 0x4

    .line 89
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->rotation_selection:[I

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->rotation_index:I

    .line 92
    iput v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->forward:I

    const/4 v1, 0x1

    .line 94
    iput-boolean v1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->isLoading:Z

    .line 96
    iput-boolean v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->isReturnByUser:Z

    const/16 v0, 0xa

    .line 99
    iput v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->RC_CONTROL_BAR:I

    const/16 v0, 0x1388

    .line 101
    iput v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->INTERVAL:I

    const/16 v0, 0x14

    .line 103
    iput v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->RC_INPUT:I

    .line 105
    new-instance v0, Lcom/yftech/libgallery/ui/BrowseImageFragment$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yftech/libgallery/ui/BrowseImageFragment$1;-><init>(Lcom/yftech/libgallery/ui/BrowseImageFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->mHandler:Landroid/os/Handler;

    .line 163
    new-instance v0, Lcom/yftech/libgallery/ui/BrowseImageFragment$2;

    invoke-direct {v0, p0}, Lcom/yftech/libgallery/ui/BrowseImageFragment$2;-><init>(Lcom/yftech/libgallery/ui/BrowseImageFragment;)V

    iput-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->carInputCallback:Lcom/yftech/car/input/CarInputManager$CarInputCallback;

    return-void

    :array_0
    .array-data 4
        0x0
        0x10e
        0xb4
        0x5a
    .end array-data
.end method

.method static synthetic access$000(Lcom/yftech/libgallery/ui/BrowseImageFragment;I)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->setControlBarVisible(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/libgallery/ui/BrowseImageFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->iv_next:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/yftech/libgallery/ui/BrowseImageFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->iv_wall_paper:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/libgallery/ui/BrowseImageFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->iv_previous:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/libgallery/ui/BrowseImageFragment;)Landroid/os/Handler;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/libgallery/ui/BrowseImageFragment;)Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->dv_image:Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/yftech/libgallery/ui/BrowseImageFragment;)Z
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->getControlBarVisible()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/yftech/libgallery/ui/BrowseImageFragment;)I
    .locals 0

    .line 68
    iget p0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->forward:I

    return p0
.end method

.method static synthetic access$700(Lcom/yftech/libgallery/ui/BrowseImageFragment;)Landroid/widget/TextView;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->tv_pic_play_error:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/yftech/libgallery/ui/BrowseImageFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->iv_rotate:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/yftech/libgallery/ui/BrowseImageFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->iv_slide:Landroid/widget/ImageView;

    return-object p0
.end method

.method private changeDegreeIn360(F)F
    .locals 1

    :goto_0
    const/4 p0, 0x0

    cmpg-float p0, p1, p0

    const/high16 v0, 0x43b40000    # 360.0f

    if-gez p0, :cond_0

    add-float/2addr p1, v0

    goto :goto_0

    :cond_0
    :goto_1
    cmpl-float p0, p1, v0

    if-ltz p0, :cond_1

    sub-float/2addr p1, v0

    goto :goto_1

    :cond_1
    return p1
.end method

.method private displayImage()V
    .locals 4

    .line 415
    invoke-direct {p0}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->setResetRotate()V

    .line 417
    iget-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->data:Ljava/util/List;

    iget v1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->position:I

    iget-object v2, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/media/data/entity/MediaFile;

    if-nez v0, :cond_0

    return-void

    .line 421
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayImage:path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 423
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 425
    iget-object v2, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->actionBar:Lcom/media/common/ui/widget/MyActionBar;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/media/common/ui/widget/MyActionBar;->setTitleText(Ljava/lang/String;)V

    .line 427
    invoke-static {v1}, Lcom/facebook/common/util/UriUtil;->getUriForFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 428
    new-instance v2, Lcom/yftech/libgallery/ui/BrowseImageFragment$4;

    invoke-direct {v2, p0}, Lcom/yftech/libgallery/ui/BrowseImageFragment$4;-><init>(Lcom/yftech/libgallery/ui/BrowseImageFragment;)V

    .line 498
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v3

    .line 499
    invoke-virtual {v3, v1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setUri(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v1

    const/4 v3, 0x1

    .line 500
    invoke-virtual {v1, v3}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setAutoPlayAnimations(Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    .line 501
    invoke-virtual {v1, v2}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setControllerListener(Lcom/facebook/drawee/controller/ControllerListener;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    .line 502
    invoke-virtual {v1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->build()Lcom/facebook/drawee/controller/AbstractDraweeController;

    move-result-object v1

    .line 503
    iget-object v2, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->dv_image:Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

    invoke-virtual {v2, v1}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->setController(Lcom/facebook/drawee/interfaces/DraweeController;)V

    .line 506
    iget v1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->index:I

    if-nez v1, :cond_1

    .line 507
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object p0

    const-string v1, "TAG_PHOTO_VIEWED_LAST_FOR_USB_1"

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/media/common/util/SharedPrefsUtil;->save(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 509
    :cond_1
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object p0

    const-string v1, "TAG_PHOTO_VIEWED_LAST_FOR_USB_2"

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/media/common/util/SharedPrefsUtil;->save(Ljava/lang/String;Ljava/lang/Object;)V

    .line 511
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "savePhotoLastViewed:path="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method private getControlBarVisible()Z
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->control_bar:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->actionBar:Lcom/media/common/ui/widget/MyActionBar;

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

.method public static newInstance(Ljava/lang/String;I)Lcom/yftech/libgallery/ui/BrowseImageFragment;
    .locals 3

    .line 134
    new-instance v0, Lcom/yftech/libgallery/ui/BrowseImageFragment;

    invoke-direct {v0}, Lcom/yftech/libgallery/ui/BrowseImageFragment;-><init>()V

    .line 135
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "path"

    .line 136
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "index"

    .line 137
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    invoke-virtual {v0, v1}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setControlBarVisible(I)V
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->control_bar:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 564
    iget-object p0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->actionBar:Lcom/media/common/ui/widget/MyActionBar;

    invoke-virtual {p0, p1}, Lcom/media/common/ui/widget/MyActionBar;->setVisibility(I)V

    return-void
.end method

.method private setResetRotate()V
    .locals 2

    .line 532
    iget v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->rotation:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 535
    iput v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->rotation:I

    .line 536
    iget-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->dv_image:Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

    iget v1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->rotation:I

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->changeDegreeIn360(F)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->setRotation(F)V

    return-void
.end method

.method private setRotate(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 522
    iget p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->rotation:I

    add-int/lit8 p1, p1, 0x5a

    iput p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->rotation:I

    goto :goto_0

    .line 524
    :cond_0
    iget p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->rotation:I

    add-int/lit8 p1, p1, -0x5a

    iput p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->rotation:I

    .line 526
    :goto_0
    iget-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->dv_image:Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

    iget v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->rotation:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->changeDegreeIn360(F)F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->setRotation(F)V

    return-void
.end method


# virtual methods
.method protected createPresenter()Lcom/yftech/libgallery/presenter/BrowseImagePresenter;
    .locals 1

    .line 130
    new-instance v0, Lcom/yftech/libgallery/presenter/BrowseImagePresenter;

    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yftech/libgallery/presenter/BrowseImagePresenter;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method protected bridge synthetic createPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;
    .locals 0

    .line 68
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->createPresenter()Lcom/yftech/libgallery/presenter/BrowseImagePresenter;

    move-result-object p0

    return-object p0
.end method

.method public displayImageList(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 292
    iput-boolean v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->isLoading:Z

    const/4 v1, 0x1

    if-ltz p1, :cond_2

    if-eqz p2, :cond_2

    .line 294
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 300
    :cond_0
    iput p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->position:I

    .line 301
    iput-object p2, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->data:Ljava/util/List;

    .line 302
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object p2

    iget v2, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->index:I

    invoke-virtual {p2, v2}, Lcom/yftech/car/media/data/CarMediaDataManager;->getPhotoFileSize(I)I

    move-result p2

    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayImageList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",fileSize:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-ne p2, v1, :cond_1

    .line 305
    iget-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->iv_next:Landroid/widget/ImageView;

    const p2, 0x3f19999a    # 0.6f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 306
    iget-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->iv_previous:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 307
    iget-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->iv_next:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 308
    iget-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->iv_previous:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 311
    :cond_1
    invoke-direct {p0}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->displayImage()V

    .line 314
    iget-object p0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->mHandler:Landroid/os/Handler;

    const/16 p1, 0xa

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 296
    :cond_2
    :goto_0
    sget p0, Lcom/yftech/libgallery/R$string;->picture_browse_empty_error:I

    invoke-static {p0, v1}, Lcom/media/common/util/ToastUtils;->showFailMessage(II)V

    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 3

    .line 193
    sget v0, Lcom/yftech/libgallery/R$id;->actionBar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/media/common/ui/widget/MyActionBar;

    iput-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->actionBar:Lcom/media/common/ui/widget/MyActionBar;

    .line 194
    iget-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->actionBar:Lcom/media/common/ui/widget/MyActionBar;

    sget v1, Lcom/yftech/libgallery/R$string;->pic_name:I

    invoke-virtual {p0, v1}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/media/common/ui/widget/MyActionBar;->setTitleText(Ljava/lang/String;)V

    .line 196
    sget v0, Lcom/yftech/libgallery/R$id;->control_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->control_bar:Landroid/widget/FrameLayout;

    .line 197
    sget v0, Lcom/yftech/libgallery/R$id;->tv_pic_play_error:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->tv_pic_play_error:Landroid/widget/TextView;

    .line 199
    sget v0, Lcom/yftech/libgallery/R$id;->dv_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

    iput-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->dv_image:Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

    .line 200
    iget-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->dv_image:Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->setIsLongpressEnabled(Z)V

    .line 202
    new-instance v0, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener;

    iget-object v2, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->dv_image:Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

    invoke-direct {v0, v2}, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener;-><init>(Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;)V

    .line 203
    new-instance v2, Lcom/yftech/libgallery/ui/BrowseImageFragment$3;

    invoke-direct {v2, p0}, Lcom/yftech/libgallery/ui/BrowseImageFragment$3;-><init>(Lcom/yftech/libgallery/ui/BrowseImageFragment;)V

    invoke-virtual {v0, v2}, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener;->setOnSingleClick(Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener$OnSingleClickListener;)V

    .line 267
    iget-object v2, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->dv_image:Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

    invoke-virtual {v2, v0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->setTapListener(Landroid/view/GestureDetector$SimpleOnGestureListener;)V

    .line 270
    sget v0, Lcom/yftech/libgallery/R$id;->iv_previous:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->iv_previous:Landroid/widget/ImageView;

    .line 271
    sget v0, Lcom/yftech/libgallery/R$id;->iv_next:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->iv_next:Landroid/widget/ImageView;

    .line 272
    sget v0, Lcom/yftech/libgallery/R$id;->iv_rotate:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->iv_rotate:Landroid/widget/ImageView;

    .line 273
    sget v0, Lcom/yftech/libgallery/R$id;->iv_slide:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->iv_slide:Landroid/widget/ImageView;

    .line 275
    invoke-static {}, Lcom/yftech/vehicle/sdk/HostConfig;->isWallpaperPresent()Z

    move-result v0

    .line 276
    sget v2, Lcom/yftech/libgallery/R$id;->iv_wall_paper:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->iv_wall_paper:Landroid/widget/ImageView;

    .line 277
    iget-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->iv_wall_paper:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 278
    iget-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->iv_next:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->iv_previous:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iget-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->iv_rotate:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->iv_slide:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->iv_wall_paper:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x1

    .line 285
    iput-boolean p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->isLoading:Z

    .line 286
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p1

    check-cast p1, Lcom/yftech/libgallery/presenter/BrowseImagePresenter;

    iget-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->path:Ljava/lang/String;

    iget p0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->index:I

    invoke-virtual {p1, v0, p0}, Lcom/yftech/libgallery/presenter/BrowseImagePresenter;->getImageList(Ljava/lang/String;I)V

    return-void
.end method

.method protected onBindView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 187
    sget p0, Lcom/yftech/libgallery/R$layout;->fragment_browse_image:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 321
    iget-boolean v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->isLoading:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 322
    sget p1, Lcom/yftech/libgallery/R$string;->data_loading:I

    invoke-virtual {p0, p1}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/media/common/util/ToastUtils;->showNormalMessage(Ljava/lang/String;I)V

    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 330
    iget v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->position:I

    if-ltz v0, :cond_d

    iget-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->data:Ljava/util/List;

    if-nez v0, :cond_2

    goto/16 :goto_2

    .line 337
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v5, Lcom/yftech/libgallery/R$id;->iv_rotate:I

    const/4 v6, 0x0

    if-ne v0, v5, :cond_3

    .line 339
    invoke-direct {p0, v6}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->setRotate(Z)V

    goto/16 :goto_1

    .line 342
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v5, Lcom/yftech/libgallery/R$id;->iv_previous:I

    if-ne v0, v5, :cond_5

    const/4 p1, -0x1

    .line 344
    iput p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->forward:I

    .line 347
    iput v6, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->rotation_index:I

    .line 349
    iget p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->position:I

    if-lez p1, :cond_4

    .line 350
    iget p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->position:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->position:I

    goto :goto_0

    .line 352
    :cond_4
    iget p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->position:I

    iget-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->position:I

    .line 354
    :goto_0
    invoke-direct {p0}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->displayImage()V

    goto/16 :goto_1

    .line 357
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v5, Lcom/yftech/libgallery/R$id;->iv_next:I

    if-ne v0, v5, :cond_6

    .line 359
    iput v1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->forward:I

    .line 362
    iput v6, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->rotation_index:I

    .line 364
    iget p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->position:I

    add-int/2addr p1, v1

    iget-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p1, v0

    iput p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->position:I

    .line 365
    invoke-direct {p0}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->displayImage()V

    goto/16 :goto_1

    .line 368
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libgallery/R$id;->iv_slide:I

    if-ne v0, v1, :cond_8

    .line 371
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 372
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    .line 374
    :cond_7
    iget-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->data:Ljava/util/List;

    iget v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->position:I

    iget-object v1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->index:I

    invoke-static {p1, v0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->newInstance(Ljava/lang/String;I)Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    move-result-object p1

    .line 376
    invoke-static {}, Lcom/media/common/util/MyFragmentManger;->getInstance()Lcom/media/common/util/MyFragmentManger;

    move-result-object v0

    iget p0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->index:I

    invoke-virtual {v0, p0, p1}, Lcom/media/common/util/MyFragmentManger;->pushFragment(ILandroidx/fragment/app/Fragment;)V

    .line 377
    invoke-static {}, Lcom/media/common/util/MyFragmentManger;->getInstance()Lcom/media/common/util/MyFragmentManger;

    move-result-object p0

    invoke-static {}, Lcom/media/common/util/MyFragmentManger;->getInstance()Lcom/media/common/util/MyFragmentManger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/media/common/util/MyFragmentManger;->getPhotoLayoutId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/media/common/util/MyFragmentManger;->switchContent(Landroidx/fragment/app/Fragment;I)V

    goto/16 :goto_1

    .line 380
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libgallery/R$id;->iv_wall_paper:I

    if-ne v0, v1, :cond_9

    .line 382
    iget-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->data:Ljava/util/List;

    iget v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->position:I

    iget-object v1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->newInstance(Ljava/lang/String;)Lcom/yftech/libgallery/ui/WallPaperSettingFragment;

    move-result-object p1

    .line 384
    invoke-static {}, Lcom/media/common/util/MyFragmentManger;->getInstance()Lcom/media/common/util/MyFragmentManger;

    move-result-object v0

    iget p0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->index:I

    invoke-virtual {v0, p0, p1}, Lcom/media/common/util/MyFragmentManger;->pushFragment(ILandroidx/fragment/app/Fragment;)V

    .line 385
    invoke-static {}, Lcom/media/common/util/MyFragmentManger;->getInstance()Lcom/media/common/util/MyFragmentManger;

    move-result-object p0

    invoke-static {}, Lcom/media/common/util/MyFragmentManger;->getInstance()Lcom/media/common/util/MyFragmentManger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/media/common/util/MyFragmentManger;->getPhotoLayoutId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/media/common/util/MyFragmentManger;->switchContent(Landroidx/fragment/app/Fragment;I)V

    goto :goto_1

    .line 388
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/yftech/libgallery/R$id;->dv_image:I

    if-ne p1, v0, :cond_c

    const-string p1, "onClick from image"

    .line 390
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 392
    invoke-direct {p0}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->getControlBarVisible()Z

    move-result p1

    if-nez p1, :cond_b

    .line 394
    invoke-direct {p0, v6}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->setControlBarVisible(I)V

    .line 396
    iget-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 397
    iget-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 400
    :cond_a
    iget-object p0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_b
    const/16 p1, 0x8

    .line 403
    invoke-direct {p0, p1}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->setControlBarVisible(I)V

    .line 405
    iget-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 406
    iget-object p0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_c
    :goto_1
    return-void

    .line 331
    :cond_d
    :goto_2
    sget p0, Lcom/yftech/libgallery/R$string;->picture_browse_empty_error:I

    invoke-static {p0, v1}, Lcom/media/common/util/ToastUtils;->showFailMessage(II)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 144
    invoke-super {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onCreate(Landroid/os/Bundle;)V

    .line 145
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->path:Ljava/lang/String;

    .line 147
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->index:I

    :cond_0
    const/4 p1, 0x1

    .line 150
    iput-boolean p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment;->isSplitMode:Z

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 157
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onDestroy()V

    return-void
.end method
