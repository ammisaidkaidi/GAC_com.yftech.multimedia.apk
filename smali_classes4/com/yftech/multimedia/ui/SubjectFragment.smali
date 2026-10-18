.class public Lcom/yftech/multimedia/ui/SubjectFragment;
.super Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;
.source "SubjectFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/yftech/multimedia/view/ISubjectFragmentView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment<",
        "Lcom/yftech/multimedia/presenter/SubjectPresenter;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/yftech/multimedia/view/ISubjectFragmentView;"
    }
.end annotation


# static fields
.field private static final ARG_PARAM1:Ljava/lang/String; = "index"


# instance fields
.field private index:I

.field private isDisplayVideoFrame:Z

.field private isEmpty:Z

.field private isPhotoComplete:Z

.field private isPhotoExist:Z

.field private isVideoComplete:Z

.field private isVideoExist:Z

.field private iv_pic:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private iv_video:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private lin_pic:Landroid/widget/LinearLayout;

.field private lin_video:Landroid/widget/LinearLayout;

.field private pb_pic:Landroid/widget/ProgressBar;

.field private pb_video:Landroid/widget/ProgressBar;

.field private pictureListFragment:Lcom/yftech/libgallery/ui/PictureListFragment;

.field private tv_pic_count:Landroid/widget/TextView;

.field private tv_video_count:Landroid/widget/TextView;

.field private videoListFragment:Lcom/yftech/libmedia/player/ui/VideoListFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->isVideoExist:Z

    .line 58
    iput-boolean v0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->isVideoComplete:Z

    .line 59
    iput-boolean v0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->isPhotoExist:Z

    .line 60
    iput-boolean v0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->isPhotoComplete:Z

    .line 62
    iput-boolean v0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->isEmpty:Z

    .line 69
    iput-boolean v0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->isDisplayVideoFrame:Z

    return-void
.end method

.method public static newInstance(I)Lcom/yftech/multimedia/ui/SubjectFragment;
    .locals 3

    .line 81
    new-instance v0, Lcom/yftech/multimedia/ui/SubjectFragment;

    invoke-direct {v0}, Lcom/yftech/multimedia/ui/SubjectFragment;-><init>()V

    .line 82
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "index"

    .line 83
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 84
    invoke-virtual {v0, v1}, Lcom/yftech/multimedia/ui/SubjectFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/yftech/multimedia/ui/SubjectFragment;->createPresenter()Lcom/yftech/multimedia/presenter/SubjectPresenter;

    move-result-object p0

    return-object p0
.end method

.method protected createPresenter()Lcom/yftech/multimedia/presenter/SubjectPresenter;
    .locals 1

    .line 77
    new-instance v0, Lcom/yftech/multimedia/presenter/SubjectPresenter;

    invoke-virtual {p0}, Lcom/yftech/multimedia/ui/SubjectFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yftech/multimedia/presenter/SubjectPresenter;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public displayPhotoFileExist(I)V
    .locals 5

    .line 241
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v0

    iget v1, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->index:I

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/data/CarMediaDataManager;->isScanner(I)Z

    move-result v0

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayPhotoFileExist:isScanning="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    .line 247
    iget v3, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->index:I

    add-int/2addr v3, v1

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    move p1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    iput-boolean p1, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->isPhotoExist:Z

    if-nez v0, :cond_2

    .line 249
    iget-boolean p1, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->isPhotoExist:Z

    if-nez p1, :cond_2

    .line 250
    iget-object p1, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->pb_pic:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 253
    :cond_2
    iget-boolean p1, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->isPhotoExist:Z

    if-eqz p1, :cond_3

    .line 255
    invoke-virtual {p0}, Lcom/yftech/multimedia/ui/SubjectFragment;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p1

    check-cast p1, Lcom/yftech/multimedia/presenter/SubjectPresenter;

    iget v3, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->index:I

    invoke-virtual {p1, v3}, Lcom/yftech/multimedia/presenter/SubjectPresenter;->getPhotoFileSize(I)V

    .line 257
    :cond_3
    invoke-virtual {p0}, Lcom/yftech/multimedia/ui/SubjectFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 258
    instance-of v3, p1, Lcom/yftech/multimedia/ui/MainFragment;

    if-eqz v3, :cond_8

    .line 259
    check-cast p1, Lcom/yftech/multimedia/ui/MainFragment;

    .line 261
    invoke-virtual {p1}, Lcom/yftech/multimedia/ui/MainFragment;->getTabIndex()I

    move-result v3

    iget v4, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->index:I

    if-eq v3, v4, :cond_4

    return-void

    :cond_4
    if-eqz v0, :cond_5

    const-string v0, ""

    .line 266
    invoke-virtual {p1, v0, v2}, Lcom/yftech/multimedia/ui/MainFragment;->setTipsContent(Ljava/lang/String;I)V

    .line 267
    iput-boolean v2, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->isEmpty:Z

    goto :goto_3

    .line 270
    :cond_5
    iput-boolean v1, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->isPhotoComplete:Z

    .line 271
    iget-boolean v0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->isVideoComplete:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->isVideoExist:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->isPhotoExist:Z

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->isEmpty:Z

    .line 273
    iget-boolean v0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->isEmpty:Z

    if-eqz v0, :cond_7

    const v0, 0x7f110120

    .line 274
    invoke-virtual {p0, v0}, Lcom/yftech/multimedia/ui/SubjectFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/media/common/util/ToastUtils;->showNormalMessage(Ljava/lang/String;I)V

    :cond_7
    const-string p0, ""

    .line 277
    invoke-virtual {p1, p0, v2}, Lcom/yftech/multimedia/ui/MainFragment;->setTipsContent(Ljava/lang/String;I)V

    :cond_8
    :goto_3
    return-void
.end method

.method public displayPhotoFileFrame(Lcom/yftech/car/media/data/entity/MediaFile;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 333
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 334
    invoke-static {v0}, Lcom/facebook/common/util/UriUtil;->getUriForFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 335
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v0

    .line 336
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setUri(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object p1

    const/4 v0, 0x1

    .line 337
    invoke-virtual {p1, v0}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setAutoPlayAnimations(Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    .line 338
    invoke-virtual {p1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->build()Lcom/facebook/drawee/controller/AbstractDraweeController;

    move-result-object p1

    .line 339
    iget-object p0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->iv_pic:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p0, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setController(Lcom/facebook/drawee/interfaces/DraweeController;)V

    goto :goto_0

    .line 343
    :cond_0
    iget-object p0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->iv_pic:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p1, 0x7f0e00f0

    invoke-virtual {p0, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public displayPhotoFileSize(I)V
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->tv_pic_count:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v0

    iget v1, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->index:I

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/data/CarMediaDataManager;->isScanner(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->pb_pic:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    if-lez p1, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/yftech/multimedia/ui/SubjectFragment;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p1

    check-cast p1, Lcom/yftech/multimedia/presenter/SubjectPresenter;

    iget p0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->index:I

    invoke-virtual {p1, p0}, Lcom/yftech/multimedia/presenter/SubjectPresenter;->getPhotoFileFrame(I)V

    :cond_0
    return-void
.end method

.method public displayVideoFileExist(I)V
    .locals 4

    .line 198
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v0

    iget v1, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->index:I

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/data/CarMediaDataManager;->isScanner(I)Z

    move-result v0

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayVideoFileExist:isScanning="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    .line 205
    iget v3, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->index:I

    add-int/2addr v3, v1

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    move p1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    iput-boolean p1, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->isVideoExist:Z

    if-nez v0, :cond_2

    .line 207
    iget-boolean p1, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->isVideoExist:Z

    if-nez p1, :cond_2

    .line 208
    iget-object p1, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->pb_video:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 211
    :cond_2
    iget-boolean p1, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->isVideoExist:Z

    if-eqz p1, :cond_3

    .line 213
    invoke-virtual {p0}, Lcom/yftech/multimedia/ui/SubjectFragment;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p1

    check-cast p1, Lcom/yftech/multimedia/presenter/SubjectPresenter;

    iget v3, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->index:I

    invoke-virtual {p1, v3}, Lcom/yftech/multimedia/presenter/SubjectPresenter;->getVideoFileSize(I)V

    .line 216
    :cond_3
    invoke-virtual {p0}, Lcom/yftech/multimedia/ui/SubjectFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 217
    instance-of v3, p1, Lcom/yftech/multimedia/ui/MainFragment;

    if-eqz v3, :cond_6

    .line 218
    check-cast p1, Lcom/yftech/multimedia/ui/MainFragment;

    if-eqz v0, :cond_4

    const-string v0, ""

    .line 222
    invoke-virtual {p1, v0, v2}, Lcom/yftech/multimedia/ui/MainFragment;->setTipsContent(Ljava/lang/String;I)V

    .line 223
    iput-boolean v2, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->isEmpty:Z

    goto :goto_3

    .line 226
    :cond_4
    iput-boolean v1, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->isVideoComplete:Z

    .line 227
    iget-boolean v0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->isPhotoComplete:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->isVideoExist:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->isPhotoExist:Z

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->isEmpty:Z

    const-string p0, ""

    .line 232
    invoke-virtual {p1, p0, v2}, Lcom/yftech/multimedia/ui/MainFragment;->setTipsContent(Ljava/lang/String;I)V

    :cond_6
    :goto_3
    return-void
.end method

.method public displayVideoFileFrame(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 322
    invoke-virtual {p0}, Lcom/yftech/multimedia/ui/SubjectFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    const v0, 0x7f0e00f7

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    iget-object p0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->iv_video:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public displayVideoFileSize(I)V
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->tv_video_count:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v0

    iget v1, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->index:I

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/data/CarMediaDataManager;->isScanner(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->pb_video:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 296
    iget-boolean v0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->isDisplayVideoFrame:Z

    if-nez v0, :cond_0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 298
    iput-boolean p1, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->isDisplayVideoFrame:Z

    .line 299
    invoke-virtual {p0}, Lcom/yftech/multimedia/ui/SubjectFragment;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p1

    check-cast p1, Lcom/yftech/multimedia/presenter/SubjectPresenter;

    iget p0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->index:I

    invoke-virtual {p1, p0}, Lcom/yftech/multimedia/presenter/SubjectPresenter;->getVideoFileFrame(I)V

    :cond_0
    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a0138

    .line 134
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->iv_pic:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f0a014e

    .line 135
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->iv_video:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f0a02cc

    .line 137
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->tv_pic_count:Landroid/widget/TextView;

    const v0, 0x7f0a02ef

    .line 138
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->tv_video_count:Landroid/widget/TextView;

    const v0, 0x7f0a01c0

    .line 140
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->pb_pic:Landroid/widget/ProgressBar;

    const v0, 0x7f0a01c1

    .line 141
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->pb_video:Landroid/widget/ProgressBar;

    const v0, 0x7f0a0164

    .line 143
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->lin_pic:Landroid/widget/LinearLayout;

    .line 144
    iget-object v0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->lin_pic:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0168

    .line 146
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->lin_video:Landroid/widget/LinearLayout;

    .line 147
    iget-object p1, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->lin_video:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    invoke-virtual {p0}, Lcom/yftech/multimedia/ui/SubjectFragment;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p1

    check-cast p1, Lcom/yftech/multimedia/presenter/SubjectPresenter;

    iget v0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->index:I

    invoke-virtual {p1, v0}, Lcom/yftech/multimedia/presenter/SubjectPresenter;->getVideoFileExist(I)V

    .line 152
    invoke-virtual {p0}, Lcom/yftech/multimedia/ui/SubjectFragment;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p1

    check-cast p1, Lcom/yftech/multimedia/presenter/SubjectPresenter;

    iget p0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->index:I

    invoke-virtual {p1, p0}, Lcom/yftech/multimedia/presenter/SubjectPresenter;->getPhotoFileExist(I)V

    return-void
.end method

.method public isEmpty()Z
    .locals 0

    .line 348
    iget-boolean p0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->isEmpty:Z

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 157
    invoke-super {p0, p1, p2, p3}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 159
    iget-object v0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->pictureListFragment:Lcom/yftech/libgallery/ui/PictureListFragment;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->pictureListFragment:Lcom/yftech/libgallery/ui/PictureListFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yftech/libgallery/ui/PictureListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->videoListFragment:Lcom/yftech/libmedia/player/ui/VideoListFragment;

    if-eqz v0, :cond_1

    .line 163
    iget-object p0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->videoListFragment:Lcom/yftech/libmedia/player/ui/VideoListFragment;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yftech/libmedia/player/ui/VideoListFragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method protected onBindView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const p0, 0x7f0d005e

    const/4 p3, 0x0

    .line 128
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a01fd

    const v2, 0x7f0a0164

    if-ne v0, v2, :cond_2

    .line 170
    iget-boolean p1, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->isPhotoComplete:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->isPhotoExist:Z

    if-nez p1, :cond_0

    return-void

    .line 173
    :cond_0
    iget-object p1, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->pictureListFragment:Lcom/yftech/libgallery/ui/PictureListFragment;

    if-nez p1, :cond_1

    .line 174
    iget p1, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->index:I

    invoke-static {p1}, Lcom/yftech/libgallery/ui/PictureListFragment;->newInstance(I)Lcom/yftech/libgallery/ui/PictureListFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->pictureListFragment:Lcom/yftech/libgallery/ui/PictureListFragment;

    .line 176
    :cond_1
    invoke-static {}, Lcom/media/common/util/MyFragmentManger;->getInstance()Lcom/media/common/util/MyFragmentManger;

    move-result-object p1

    iget v0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->index:I

    iget-object v2, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->pictureListFragment:Lcom/yftech/libgallery/ui/PictureListFragment;

    invoke-virtual {p1, v0, v2}, Lcom/media/common/util/MyFragmentManger;->pushFragment(ILandroidx/fragment/app/Fragment;)V

    .line 178
    invoke-static {}, Lcom/media/common/util/MyFragmentManger;->getInstance()Lcom/media/common/util/MyFragmentManger;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->pictureListFragment:Lcom/yftech/libgallery/ui/PictureListFragment;

    invoke-virtual {p1, p0, v1}, Lcom/media/common/util/MyFragmentManger;->switchContent(Landroidx/fragment/app/Fragment;I)V

    goto :goto_0

    .line 180
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0168

    if-ne p1, v0, :cond_5

    .line 182
    iget-boolean p1, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->isVideoComplete:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->isVideoExist:Z

    if-nez p1, :cond_3

    return-void

    .line 186
    :cond_3
    iget-object p1, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->videoListFragment:Lcom/yftech/libmedia/player/ui/VideoListFragment;

    if-nez p1, :cond_4

    .line 187
    iget p1, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->index:I

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoListFragment;->newInstance(I)Lcom/yftech/libmedia/player/ui/VideoListFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->videoListFragment:Lcom/yftech/libmedia/player/ui/VideoListFragment;

    .line 189
    :cond_4
    invoke-static {}, Lcom/media/common/util/MyFragmentManger;->getInstance()Lcom/media/common/util/MyFragmentManger;

    move-result-object p1

    iget v0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->index:I

    iget-object v2, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->videoListFragment:Lcom/yftech/libmedia/player/ui/VideoListFragment;

    invoke-virtual {p1, v0, v2}, Lcom/media/common/util/MyFragmentManger;->pushFragment(ILandroidx/fragment/app/Fragment;)V

    .line 191
    invoke-static {}, Lcom/media/common/util/MyFragmentManger;->getInstance()Lcom/media/common/util/MyFragmentManger;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->videoListFragment:Lcom/yftech/libmedia/player/ui/VideoListFragment;

    invoke-virtual {p1, p0, v1}, Lcom/media/common/util/MyFragmentManger;->switchContent(Landroidx/fragment/app/Fragment;I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 90
    invoke-super {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcom/yftech/multimedia/ui/SubjectFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/yftech/multimedia/ui/SubjectFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->index:I

    :cond_0
    const-string p1, "onCreate"

    .line 95
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 117
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onDestroy()V

    const-string v0, "onDestroy"

    .line 119
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->pictureListFragment:Lcom/yftech/libgallery/ui/PictureListFragment;

    .line 122
    iput-object v0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->videoListFragment:Lcom/yftech/libmedia/player/ui/VideoListFragment;

    .line 123
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onPhotoDataChange(Lcom/media/common/event/MediaDataCallbackForPhotoDataChangedEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 385
    invoke-virtual {p0}, Lcom/yftech/multimedia/ui/SubjectFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    iget p1, p1, Lcom/media/common/event/MediaDataCallbackForPhotoDataChangedEvent;->usbIndex:I

    iget v0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->index:I

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 388
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPhotoDataChange:isPhotoExist="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->isPhotoExist:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 391
    iget-boolean p1, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->isPhotoExist:Z

    if-eqz p1, :cond_1

    .line 392
    invoke-virtual {p0}, Lcom/yftech/multimedia/ui/SubjectFragment;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p1

    check-cast p1, Lcom/yftech/multimedia/presenter/SubjectPresenter;

    iget p0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->index:I

    invoke-virtual {p1, p0}, Lcom/yftech/multimedia/presenter/SubjectPresenter;->getPhotoFileSize(I)V

    goto :goto_0

    .line 394
    :cond_1
    invoke-virtual {p0}, Lcom/yftech/multimedia/ui/SubjectFragment;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p1

    check-cast p1, Lcom/yftech/multimedia/presenter/SubjectPresenter;

    iget p0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->index:I

    invoke-virtual {p1, p0}, Lcom/yftech/multimedia/presenter/SubjectPresenter;->getPhotoFileExist(I)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public onScanStatusChange(Lcom/media/common/event/MediaDataCallbackForScanStatusChangedEvent;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 354
    invoke-virtual {p0}, Lcom/yftech/multimedia/ui/SubjectFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p1, Lcom/media/common/event/MediaDataCallbackForScanStatusChangedEvent;->usbIndex:I

    iget v1, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->index:I

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->pb_video:Landroid/widget/ProgressBar;

    iget-boolean v1, p1, Lcom/media/common/event/MediaDataCallbackForScanStatusChangedEvent;->isScanner:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->pb_pic:Landroid/widget/ProgressBar;

    iget-boolean p1, p1, Lcom/media/common/event/MediaDataCallbackForScanStatusChangedEvent;->isScanner:Z

    if-eqz p1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 361
    invoke-virtual {p0}, Lcom/yftech/multimedia/ui/SubjectFragment;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p1

    check-cast p1, Lcom/yftech/multimedia/presenter/SubjectPresenter;

    iget v0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->index:I

    invoke-virtual {p1, v0}, Lcom/yftech/multimedia/presenter/SubjectPresenter;->getVideoFileExist(I)V

    .line 362
    invoke-virtual {p0}, Lcom/yftech/multimedia/ui/SubjectFragment;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p1

    check-cast p1, Lcom/yftech/multimedia/presenter/SubjectPresenter;

    iget p0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->index:I

    invoke-virtual {p1, p0}, Lcom/yftech/multimedia/presenter/SubjectPresenter;->getPhotoFileExist(I)V

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public onVideoDataChange(Lcom/media/common/event/MediaDataCallbackForVideoDataChangedEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 368
    invoke-virtual {p0}, Lcom/yftech/multimedia/ui/SubjectFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    iget p1, p1, Lcom/media/common/event/MediaDataCallbackForVideoDataChangedEvent;->usbIndex:I

    iget v0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->index:I

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 371
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onVideoDataChange:isVideoExist="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->isVideoExist:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 374
    iget-boolean p1, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->isVideoExist:Z

    if-eqz p1, :cond_1

    .line 375
    invoke-virtual {p0}, Lcom/yftech/multimedia/ui/SubjectFragment;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p1

    check-cast p1, Lcom/yftech/multimedia/presenter/SubjectPresenter;

    iget p0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->index:I

    invoke-virtual {p1, p0}, Lcom/yftech/multimedia/presenter/SubjectPresenter;->getVideoFileSize(I)V

    goto :goto_0

    .line 377
    :cond_1
    invoke-virtual {p0}, Lcom/yftech/multimedia/ui/SubjectFragment;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p1

    check-cast p1, Lcom/yftech/multimedia/presenter/SubjectPresenter;

    iget p0, p0, Lcom/yftech/multimedia/ui/SubjectFragment;->index:I

    invoke-virtual {p1, p0}, Lcom/yftech/multimedia/presenter/SubjectPresenter;->getVideoFileExist(I)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method
