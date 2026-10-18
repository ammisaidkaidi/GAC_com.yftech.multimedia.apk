.class public Lcom/yftech/libgallery/utils/MyPhotoDataManager;
.super Ljava/lang/Object;
.source "MyPhotoDataManager.java"


# static fields
.field private static volatile instance:Lcom/yftech/libgallery/utils/MyPhotoDataManager;


# instance fields
.field private isPhotoPlayingBeforeSwitchPage:Z

.field private usb1LastViewedPosition:I

.field private usb1Photos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation
.end field

.field private usb2LastViewedPosition:I

.field private usb2Photos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->usb1LastViewedPosition:I

    .line 22
    iput v0, p0, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->usb2LastViewedPosition:I

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->isPhotoPlayingBeforeSwitchPage:Z

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->usb1Photos:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->usb2Photos:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/yftech/libgallery/utils/MyPhotoDataManager;
    .locals 2

    .line 27
    sget-object v0, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->instance:Lcom/yftech/libgallery/utils/MyPhotoDataManager;

    if-nez v0, :cond_1

    .line 28
    const-class v0, Lcom/yftech/libgallery/utils/MyPhotoDataManager;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->instance:Lcom/yftech/libgallery/utils/MyPhotoDataManager;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lcom/yftech/libgallery/utils/MyPhotoDataManager;

    invoke-direct {v1}, Lcom/yftech/libgallery/utils/MyPhotoDataManager;-><init>()V

    sput-object v1, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->instance:Lcom/yftech/libgallery/utils/MyPhotoDataManager;

    .line 32
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 34
    :cond_1
    :goto_0
    sget-object v0, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->instance:Lcom/yftech/libgallery/utils/MyPhotoDataManager;

    return-object v0
.end method


# virtual methods
.method public getData(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 88
    iget-object p0, p0, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->usb1Photos:Ljava/util/List;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 90
    iget-object p0, p0, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->usb2Photos:Ljava/util/List;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLastViewedPosition(I)I
    .locals 1

    if-nez p1, :cond_0

    .line 114
    iget p0, p0, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->usb1LastViewedPosition:I

    return p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 116
    iget p0, p0, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->usb2LastViewedPosition:I

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public isPhotoPlayingBeforeSwitchPage()Z
    .locals 0

    .line 126
    iget-boolean p0, p0, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->isPhotoPlayingBeforeSwitchPage:Z

    return p0
.end method

.method public resetData(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 75
    iget-object p0, p0, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->usb1Photos:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 77
    iget-object p0, p0, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->usb2Photos:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setLastViewedPosition(II)V
    .locals 1

    if-nez p1, :cond_0

    .line 101
    iput p2, p0, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->usb1LastViewedPosition:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 103
    iput p2, p0, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->usb2LastViewedPosition:I

    :cond_1
    :goto_0
    return-void
.end method

.method public setNewData(ILcom/yftech/car/media/data/entity/MediaFile;)V
    .locals 1
    .param p2    # Lcom/yftech/car/media/data/entity/MediaFile;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 63
    iget-object p0, p0, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->usb1Photos:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 65
    iget-object p0, p0, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->usb2Photos:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setNewData(ILjava/util/List;)V
    .locals 1
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 49
    iget-object p1, p0, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->usb1Photos:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 50
    iget-object p0, p0, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->usb1Photos:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 52
    iget-object p1, p0, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->usb2Photos:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 53
    iget-object p0, p0, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->usb2Photos:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setPhotoPlayingBeforeSwitchPage(Z)V
    .locals 0

    .line 133
    iput-boolean p1, p0, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->isPhotoPlayingBeforeSwitchPage:Z

    return-void
.end method
