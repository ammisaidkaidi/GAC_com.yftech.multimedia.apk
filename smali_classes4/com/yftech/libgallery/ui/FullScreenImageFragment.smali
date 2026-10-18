.class public Lcom/yftech/libgallery/ui/FullScreenImageFragment;
.super Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;
.source "FullScreenImageFragment.java"

# interfaces
.implements Lcom/yftech/libgallery/view/IFullScreenImageFragmentView;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment<",
        "Lcom/yftech/libgallery/presenter/FullScreenImagePresenter;",
        ">;",
        "Lcom/yftech/libgallery/view/IFullScreenImageFragmentView;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final ARG_PARAM1:Ljava/lang/String; = "imagePath"

.field private static final ARG_PARAM2:Ljava/lang/String; = "index"


# instance fields
.field private final IMAGE_INTERVAL:I

.field private final INTERVAL:I

.field private final RC_BLUETOOTH:I

.field private final RC_CONTROL_BAR:I

.field private final RC_IMAGE_SWITCH:I

.field private final RC_INPUT:I

.field private actionBar:Lcom/media/common/ui/widget/MyActionBar;

.field private callback:Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;

.field private carInputCallback:Lcom/yftech/car/input/CarInputManager$CarInputCallback;

.field private carPlayMusicListener:Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;

.field private carScreenCallback:Lcom/yftech/car/screen/CarScreenManager$CarScreenCallback;

.field private control_bar:Landroid/widget/FrameLayout;

.field private currentMillis:J

.field private dv_image:Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

.field private forward:I

.field private imagePath:Ljava/lang/String;

.field private index:I

.field private isLoading:Z

.field private isOpen:Z

.field private isPhoneDisconnected:Z

.field private isPlaying:Z

.field private isRegisterCallback:Z

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

.field private rotation:I

.field private rotation_index:I

.field private final rotation_selection:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 174
    invoke-direct {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;-><init>()V

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->isPlaying:Z

    .line 91
    iput-boolean v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->isLoading:Z

    const/4 v1, 0x0

    .line 93
    iput-boolean v1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->isReturnByUser:Z

    const/4 v2, 0x4

    .line 95
    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->rotation_selection:[I

    .line 96
    iput v1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->rotation_index:I

    .line 98
    iput v1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->forward:I

    const/16 v2, 0xa

    .line 100
    iput v2, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->RC_CONTROL_BAR:I

    const/16 v2, 0x63

    .line 102
    iput v2, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->RC_IMAGE_SWITCH:I

    const/16 v2, 0x1388

    .line 104
    iput v2, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->INTERVAL:I

    .line 106
    iput v2, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->IMAGE_INTERVAL:I

    const/16 v2, 0x14

    .line 108
    iput v2, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->RC_INPUT:I

    const/16 v2, 0x1e

    .line 110
    iput v2, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->RC_BLUETOOTH:I

    .line 111
    iput-boolean v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->isPhoneDisconnected:Z

    .line 112
    iput-boolean v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->isOpen:Z

    .line 113
    iput-boolean v1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->isRegisterCallback:Z

    .line 115
    new-instance v0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yftech/libgallery/ui/FullScreenImageFragment$1;-><init>(Lcom/yftech/libgallery/ui/FullScreenImageFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->mHandler:Landroid/os/Handler;

    .line 213
    new-instance v0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$2;

    invoke-direct {v0, p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment$2;-><init>(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)V

    iput-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->carScreenCallback:Lcom/yftech/car/screen/CarScreenManager$CarScreenCallback;

    .line 240
    new-instance v0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$3;

    invoke-direct {v0, p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment$3;-><init>(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)V

    iput-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->carPlayMusicListener:Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;

    .line 302
    new-instance v0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$4;

    invoke-direct {v0, p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment$4;-><init>(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)V

    iput-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 440
    new-instance v0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$6;

    invoke-direct {v0, p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment$6;-><init>(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)V

    iput-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->callback:Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;

    .line 459
    new-instance v0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$7;

    invoke-direct {v0, p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment$7;-><init>(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)V

    iput-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->carInputCallback:Lcom/yftech/car/input/CarInputManager$CarInputCallback;

    return-void

    :array_0
    .array-data 4
        0x0
        0x10e
        0xb4
        0x5a
    .end array-data
.end method

.method static synthetic access$000(Lcom/yftech/libgallery/ui/FullScreenImageFragment;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->setControlBarVisible(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)Ljava/util/List;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->paths:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->isOpen:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/yftech/libgallery/ui/FullScreenImageFragment;Z)Z
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->isOpen:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/yftech/libgallery/ui/FullScreenImageFragment;Z)Z
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->isReturnByUser:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->isPlaying:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/yftech/libgallery/ui/FullScreenImageFragment;Z)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->setPlaying(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)Z
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->getControlBarVisible()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1502(Lcom/yftech/libgallery/ui/FullScreenImageFragment;I)I
    .locals 0

    .line 73
    iput p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->rotation_index:I

    return p1
.end method

.method static synthetic access$1600(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->dv_image:Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)J
    .locals 2

    .line 73
    iget-wide v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->currentMillis:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/yftech/libgallery/ui/FullScreenImageFragment;J)J
    .locals 0

    .line 73
    iput-wide p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->currentMillis:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)I
    .locals 0

    .line 73
    iget p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->forward:I

    return p0
.end method

.method static synthetic access$302(Lcom/yftech/libgallery/ui/FullScreenImageFragment;I)I
    .locals 0

    .line 73
    iput p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->forward:I

    return p1
.end method

.method static synthetic access$400(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)I
    .locals 0

    .line 73
    iget p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->position:I

    return p0
.end method

.method static synthetic access$402(Lcom/yftech/libgallery/ui/FullScreenImageFragment;I)I
    .locals 0

    .line 73
    iput p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->position:I

    return p1
.end method

.method static synthetic access$410(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)I
    .locals 2

    .line 73
    iget v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->position:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->position:I

    return v0
.end method

.method static synthetic access$500(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->displayImage()V

    return-void
.end method

.method static synthetic access$600(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)Landroid/os/Handler;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->iv_next:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->iv_previous:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->isPhoneDisconnected:Z

    return p0
.end method

.method static synthetic access$902(Lcom/yftech/libgallery/ui/FullScreenImageFragment;Z)Z
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->isPhoneDisconnected:Z

    return p1
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
    .locals 5

    .line 620
    invoke-direct {p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->setResetRotate()V

    .line 622
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->paths:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->paths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_1

    .line 625
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->paths:Ljava/util/List;

    iget v2, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->position:I

    iget-object v3, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->paths:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    rem-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 626
    iget-object v1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->actionBar:Lcom/media/common/ui/widget/MyActionBar;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/media/common/ui/widget/MyActionBar;->setTitleText(Ljava/lang/String;)V

    .line 628
    invoke-static {v0}, Lcom/facebook/common/util/UriUtil;->getUriForFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 629
    new-instance v1, Lcom/yftech/libgallery/ui/FullScreenImageFragment$10;

    invoke-direct {v1, p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment$10;-><init>(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)V

    .line 682
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v2

    .line 683
    invoke-virtual {v2, v0}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setUri(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v0

    const/4 v2, 0x1

    .line 684
    invoke-virtual {v0, v2}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setAutoPlayAnimations(Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    .line 685
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setControllerListener(Lcom/facebook/drawee/controller/ControllerListener;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    .line 686
    invoke-virtual {v0}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->build()Lcom/facebook/drawee/controller/AbstractDraweeController;

    move-result-object v0

    .line 687
    iget-object v1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->dv_image:Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

    invoke-virtual {v1, v0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->setController(Lcom/facebook/drawee/interfaces/DraweeController;)V

    .line 690
    iget v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->index:I

    if-nez v0, :cond_1

    .line 691
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object v0

    const-string v1, "TAG_PHOTO_VIEWED_LAST_FOR_USB_1"

    iget-object v2, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->paths:Ljava/util/List;

    iget v3, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->position:I

    iget-object v4, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->paths:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    rem-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v2}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/media/common/util/SharedPrefsUtil;->save(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 693
    :cond_1
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object v0

    const-string v1, "TAG_PHOTO_VIEWED_LAST_FOR_USB_2"

    iget-object v2, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->paths:Ljava/util/List;

    iget v3, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->position:I

    iget-object v4, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->paths:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    rem-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v2}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/media/common/util/SharedPrefsUtil;->save(Ljava/lang/String;Ljava/lang/Object;)V

    .line 695
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "savePhotoLastViewed:path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->paths:Ljava/util/List;

    iget v2, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->position:I

    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->paths:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    rem-int/2addr v2, p0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {p0}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method private getControlBarVisible()Z
    .locals 1

    .line 848
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->control_bar:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->actionBar:Lcom/media/common/ui/widget/MyActionBar;

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

.method public static newInstance(Ljava/lang/String;I)Lcom/yftech/libgallery/ui/FullScreenImageFragment;
    .locals 3

    .line 184
    new-instance v0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-direct {v0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;-><init>()V

    .line 185
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "imagePath"

    .line 186
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "index"

    .line 187
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 188
    invoke-virtual {v0, v1}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private registerReceiver()V
    .locals 2

    .line 294
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.yftech.avmservice.SHOW_STATE"

    .line 295
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private setControlBarVisible(I)V
    .locals 1

    .line 853
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->control_bar:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 854
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->actionBar:Lcom/media/common/ui/widget/MyActionBar;

    invoke-virtual {p0, p1}, Lcom/media/common/ui/widget/MyActionBar;->setVisibility(I)V

    return-void
.end method

.method private setPlaying(Z)V
    .locals 4

    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPlaying:isPlaying="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 792
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->iv_slide:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 794
    iput-boolean p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->isPlaying:Z

    .line 796
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    if-eqz p1, :cond_1

    .line 800
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method private setResetRotate()V
    .locals 2

    .line 822
    iget v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->rotation:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 825
    iput v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->rotation:I

    .line 826
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->dv_image:Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

    iget v1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->rotation:I

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->changeDegreeIn360(F)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->setRotation(F)V

    return-void
.end method

.method private setRotate(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 812
    iget p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->rotation:I

    add-int/lit8 p1, p1, 0x5a

    iput p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->rotation:I

    goto :goto_0

    .line 814
    :cond_0
    iget p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->rotation:I

    add-int/lit8 p1, p1, -0x5a

    iput p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->rotation:I

    .line 816
    :goto_0
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->dv_image:Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

    iget v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->rotation:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->changeDegreeIn360(F)F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->setRotation(F)V

    return-void
.end method


# virtual methods
.method protected createPresenter()Lcom/yftech/libgallery/presenter/FullScreenImagePresenter;
    .locals 1

    .line 180
    new-instance v0, Lcom/yftech/libgallery/presenter/FullScreenImagePresenter;

    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yftech/libgallery/presenter/FullScreenImagePresenter;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method protected bridge synthetic createPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->createPresenter()Lcom/yftech/libgallery/presenter/FullScreenImagePresenter;

    move-result-object p0

    return-object p0
.end method

.method public displayImages(ILjava/util/List;)V
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

    .line 593
    iput-boolean v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->isLoading:Z

    .line 595
    iput p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->position:I

    .line 596
    iput-object p2, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->paths:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    .line 598
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 603
    :cond_0
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object p2

    iget v2, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->index:I

    invoke-virtual {p2, v2}, Lcom/yftech/car/media/data/CarMediaDataManager;->getPhotoFileSize(I)I

    move-result p2

    .line 604
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayImages"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",fileSize:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-ne p2, v1, :cond_1

    .line 606
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->iv_next:Landroid/widget/ImageView;

    const p2, 0x3f19999a    # 0.6f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 607
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->iv_previous:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 608
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->iv_next:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 609
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->iv_previous:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_1
    const/16 p1, 0x8

    .line 612
    invoke-direct {p0, p1}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->setControlBarVisible(I)V

    .line 614
    invoke-direct {p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->displayImage()V

    return-void

    .line 600
    :cond_2
    :goto_0
    sget p0, Lcom/yftech/libgallery/R$string;->picture_browse_empty_error:I

    invoke-static {p0, v1}, Lcom/media/common/util/ToastUtils;->showFailMessage(II)V

    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 3

    .line 489
    sget v0, Lcom/yftech/libgallery/R$id;->actionBar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/media/common/ui/widget/MyActionBar;

    iput-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->actionBar:Lcom/media/common/ui/widget/MyActionBar;

    .line 490
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->actionBar:Lcom/media/common/ui/widget/MyActionBar;

    new-instance v1, Lcom/yftech/libgallery/ui/FullScreenImageFragment$8;

    invoke-direct {v1, p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment$8;-><init>(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)V

    invoke-virtual {v0, v1}, Lcom/media/common/ui/widget/MyActionBar;->setOnBackPressClickListner(Landroid/view/View$OnClickListener;)V

    .line 503
    sget v0, Lcom/yftech/libgallery/R$id;->control_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->control_bar:Landroid/widget/FrameLayout;

    .line 505
    sget v0, Lcom/yftech/libgallery/R$id;->dv_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

    iput-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->dv_image:Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

    .line 506
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->dv_image:Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->setIsLongpressEnabled(Z)V

    .line 508
    new-instance v0, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener;

    iget-object v2, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->dv_image:Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

    invoke-direct {v0, v2}, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener;-><init>(Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;)V

    .line 509
    new-instance v2, Lcom/yftech/libgallery/ui/FullScreenImageFragment$9;

    invoke-direct {v2, p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment$9;-><init>(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)V

    invoke-virtual {v0, v2}, Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener;->setOnSingleClick(Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener$OnSingleClickListener;)V

    .line 571
    iget-object v2, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->dv_image:Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

    invoke-virtual {v2, v0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->setTapListener(Landroid/view/GestureDetector$SimpleOnGestureListener;)V

    .line 572
    invoke-static {}, Lcom/yftech/vehicle/sdk/HostConfig;->isWallpaperPresent()Z

    move-result v0

    .line 573
    sget v2, Lcom/yftech/libgallery/R$id;->iv_wall_paper:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 574
    sget v0, Lcom/yftech/libgallery/R$id;->iv_wall_paper:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 575
    sget v0, Lcom/yftech/libgallery/R$id;->iv_rotate:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 576
    sget v0, Lcom/yftech/libgallery/R$id;->iv_previous:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->iv_previous:Landroid/widget/ImageView;

    .line 577
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->iv_previous:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 578
    sget v0, Lcom/yftech/libgallery/R$id;->iv_next:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->iv_next:Landroid/widget/ImageView;

    .line 579
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->iv_next:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 582
    sget v0, Lcom/yftech/libgallery/R$id;->iv_slide:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->iv_slide:Landroid/widget/ImageView;

    .line 583
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->iv_slide:Landroid/widget/ImageView;

    sget v0, Lcom/yftech/libgallery/R$drawable;->picture_play_state_selector:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 584
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->iv_slide:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x1

    .line 586
    iput-boolean p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->isLoading:Z

    .line 587
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p1

    check-cast p1, Lcom/yftech/libgallery/presenter/FullScreenImagePresenter;

    iget v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->index:I

    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/yftech/libgallery/presenter/FullScreenImagePresenter;->getImagesByIndex(ILjava/lang/String;)V

    return-void
.end method

.method protected onBindView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 483
    sget p0, Lcom/yftech/libgallery/R$layout;->fragment_full_screen_image:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 702
    iget-boolean v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->isLoading:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 703
    sget p1, Lcom/yftech/libgallery/R$string;->data_loading:I

    invoke-virtual {p0, p1}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/media/common/util/ToastUtils;->showNormalMessage(Ljava/lang/String;I)V

    return-void

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 709
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 710
    :cond_1
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 713
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v5, Lcom/yftech/libgallery/R$id;->iv_rotate:I

    const/4 v6, 0x0

    if-ne v0, v5, :cond_2

    .line 714
    invoke-direct {p0, v6}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->setRotate(Z)V

    const-string p1, "onClick:rotate"

    .line 716
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 717
    invoke-direct {p0, v6}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->setPlaying(Z)V

    goto/16 :goto_1

    .line 720
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v5, Lcom/yftech/libgallery/R$id;->iv_wall_paper:I

    if-ne v0, v5, :cond_3

    .line 722
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->paths:Ljava/util/List;

    iget v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->position:I

    iget-object v1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->paths:Ljava/util/List;

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

    .line 724
    invoke-static {}, Lcom/media/common/util/MyFragmentManger;->getInstance()Lcom/media/common/util/MyFragmentManger;

    move-result-object v0

    iget v1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->index:I

    invoke-virtual {v0, v1, p1}, Lcom/media/common/util/MyFragmentManger;->pushFragment(ILandroidx/fragment/app/Fragment;)V

    .line 725
    invoke-static {}, Lcom/media/common/util/MyFragmentManger;->getInstance()Lcom/media/common/util/MyFragmentManger;

    move-result-object v0

    invoke-static {}, Lcom/media/common/util/MyFragmentManger;->getInstance()Lcom/media/common/util/MyFragmentManger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/media/common/util/MyFragmentManger;->getPhotoLayoutId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/media/common/util/MyFragmentManger;->switchContent(Landroidx/fragment/app/Fragment;I)V

    .line 728
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->onStop()V

    goto/16 :goto_1

    .line 731
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v5, Lcom/yftech/libgallery/R$id;->iv_previous:I

    if-ne v0, v5, :cond_5

    .line 734
    iput v6, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->rotation_index:I

    const/4 p1, -0x1

    .line 736
    iput p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->forward:I

    .line 738
    iget p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->position:I

    if-lez p1, :cond_4

    .line 739
    iget p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->position:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->position:I

    goto :goto_0

    .line 741
    :cond_4
    iget p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->position:I

    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->paths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->position:I

    .line 743
    :goto_0
    invoke-direct {p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->displayImage()V

    .line 746
    invoke-direct {p0, v6}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->setPlaying(Z)V

    goto :goto_1

    .line 749
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v5, Lcom/yftech/libgallery/R$id;->iv_next:I

    if-ne v0, v5, :cond_6

    .line 752
    iput v6, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->rotation_index:I

    .line 754
    iput v1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->forward:I

    .line 756
    iget p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->position:I

    add-int/2addr p1, v1

    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->paths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p1, v0

    iput p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->position:I

    .line 757
    invoke-direct {p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->displayImage()V

    .line 760
    invoke-direct {p0, v6}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->setPlaying(Z)V

    goto :goto_1

    .line 763
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v5, Lcom/yftech/libgallery/R$id;->iv_slide:I

    if-ne v0, v5, :cond_7

    .line 765
    iget-boolean p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->isPlaying:Z

    xor-int/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->setPlaying(Z)V

    goto :goto_1

    .line 766
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/yftech/libgallery/R$id;->dv_image:I

    if-ne p1, v0, :cond_a

    const-string p1, "onClick from image"

    .line 768
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 771
    invoke-direct {p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->getControlBarVisible()Z

    move-result p1

    if-nez p1, :cond_9

    .line 773
    invoke-direct {p0, v6}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->setControlBarVisible(I)V

    .line 775
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 776
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 777
    :cond_8
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_9
    const/16 p1, 0x8

    .line 780
    invoke-direct {p0, p1}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->setControlBarVisible(I)V

    .line 782
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 783
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_a
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 194
    invoke-super {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onCreate(Landroid/os/Bundle;)V

    .line 195
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "imagePath"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->imagePath:Ljava/lang/String;

    .line 197
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->index:I

    :cond_0
    const/4 p1, 0x1

    .line 200
    iput-boolean p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->isSplitMode:Z

    .line 201
    iput-boolean p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->isFullScreen:Z

    .line 204
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->init(Landroid/content/Context;)V

    .line 206
    invoke-direct {p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->registerReceiver()V

    .line 208
    invoke-static {}, Lcom/yftech/car/screen/CarScreenManager;->getInstance()Lcom/yftech/car/screen/CarScreenManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->carScreenCallback:Lcom/yftech/car/screen/CarScreenManager$CarScreenCallback;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/yftech/car/screen/CarScreenManager;->registerCarScreenCallback(Lcom/yftech/car/screen/CarScreenManager$CarScreenCallback;Landroid/os/Handler;)V

    .line 209
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getInstance(Landroid/content/Context;)Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->carPlayMusicListener:Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;

    invoke-virtual {p1, p0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->registerCarPlayMusicListener(Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 407
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onDestroy()V

    const-string v0, "onDestroy"

    .line 409
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 418
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 420
    :cond_2
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 421
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 425
    :cond_3
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 426
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 428
    :cond_4
    invoke-static {}, Lcom/yftech/car/screen/CarScreenManager;->getInstance()Lcom/yftech/car/screen/CarScreenManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->carScreenCallback:Lcom/yftech/car/screen/CarScreenManager$CarScreenCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/screen/CarScreenManager;->unregisterCarScreenCallback(Lcom/yftech/car/screen/CarScreenManager$CarScreenCallback;)V

    .line 429
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getInstance(Landroid/content/Context;)Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->carPlayMusicListener:Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;

    invoke-virtual {v0, p0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->unregisterCarPlayMusicListener(Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;)V

    .line 433
    invoke-static {}, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->getInstance()Lcom/yftech/libgallery/utils/MyPhotoDataManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->setPhotoPlayingBeforeSwitchPage(Z)V

    return-void
.end method

.method public onPause()V
    .locals 4

    .line 362
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onPause()V

    const-string v0, "onPause"

    .line 364
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 366
    iget-boolean v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->isRegisterCallback:Z

    if-eqz v0, :cond_0

    .line 367
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->callback:Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->unregisterBluetoothPhoneCallback(Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;)V

    const/4 v0, 0x0

    .line 368
    iput-boolean v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->isRegisterCallback:Z

    .line 371
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/yftech/libgallery/ui/FullScreenImageFragment$5;

    invoke-direct {v1, p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment$5;-><init>(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)V

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 325
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onResume()V

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume->id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 329
    iget-boolean v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->isRegisterCallback:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 330
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    iget-object v2, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->callback:Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->registerBluetoothPhoneCallback(Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;Landroid/os/Handler;)V

    .line 331
    iput-boolean v1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->isRegisterCallback:Z

    :cond_0
    const-string v0, "onResume"

    .line 337
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 339
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getPhoneCalls()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 341
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    .line 342
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/bluetooth/model/PhoneCall;

    .line 344
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume:callState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallState()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->isPhoneDisconnected:Z

    .line 348
    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallState()I

    move-result v0

    if-eq v0, v4, :cond_3

    return-void

    .line 353
    :cond_2
    iput-boolean v1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->isPhoneDisconnected:Z

    .line 356
    :cond_3
    invoke-static {}, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->getInstance()Lcom/yftech/libgallery/utils/MyPhotoDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->isPhotoPlayingBeforeSwitchPage()Z

    move-result v0

    .line 357
    invoke-direct {p0, v0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->setPlaying(Z)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 392
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onStop()V

    const-string v0, "onStop"

    .line 394
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 397
    iget-boolean v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->isReturnByUser:Z

    if-nez v0, :cond_0

    .line 398
    invoke-static {}, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->getInstance()Lcom/yftech/libgallery/utils/MyPhotoDataManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->isPlaying:Z

    invoke-virtual {v0, v1}, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->setPhotoPlayingBeforeSwitchPage(Z)V

    const/4 v0, 0x0

    .line 401
    invoke-direct {p0, v0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->setPlaying(Z)V

    :cond_0
    return-void
.end method
