.class public Lcom/yftech/multimedia/MediaApplication;
.super Lcom/media/common/util/BaseApplication;
.source "MediaApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/media/common/util/BaseApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/media/common/util/BaseApplication;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 38
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 18
    invoke-super {p0}, Lcom/media/common/util/BaseApplication;->onCreate()V

    const-string v0, "onCreate"

    .line 19
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 22
    invoke-static {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->newBuilder(Landroid/content/Context;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->setBitmapsConfig(Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->build()Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/drawee/backends/pipeline/Fresco;->initialize(Landroid/content/Context;Lcom/facebook/imagepipeline/core/ImagePipelineConfig;)V

    return-void
.end method

.method public onTerminate()V
    .locals 1

    .line 27
    invoke-super {p0}, Lcom/media/common/util/BaseApplication;->onTerminate()V

    const-string v0, "onTerminate"

    .line 28
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getInstance()Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->release()V

    .line 31
    invoke-static {p0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getInstance(Landroid/content/Context;)Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->release()V

    return-void
.end method
