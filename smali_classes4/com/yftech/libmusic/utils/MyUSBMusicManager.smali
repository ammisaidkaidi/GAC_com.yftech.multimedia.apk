.class public Lcom/yftech/libmusic/utils/MyUSBMusicManager;
.super Ljava/lang/Object;
.source "MyUSBMusicManager.java"


# static fields
.field private static volatile instance:Lcom/yftech/libmusic/utils/MyUSBMusicManager;


# instance fields
.field private usb1Music:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation
.end field

.field private usb2Music:Ljava/util/List;
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

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/libmusic/utils/MyUSBMusicManager;->usb1Music:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/libmusic/utils/MyUSBMusicManager;->usb2Music:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/yftech/libmusic/utils/MyUSBMusicManager;
    .locals 2

    .line 19
    sget-object v0, Lcom/yftech/libmusic/utils/MyUSBMusicManager;->instance:Lcom/yftech/libmusic/utils/MyUSBMusicManager;

    if-nez v0, :cond_1

    .line 20
    const-class v0, Lcom/yftech/libmusic/utils/MyUSBMusicManager;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcom/yftech/libmusic/utils/MyUSBMusicManager;->instance:Lcom/yftech/libmusic/utils/MyUSBMusicManager;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Lcom/yftech/libmusic/utils/MyUSBMusicManager;

    invoke-direct {v1}, Lcom/yftech/libmusic/utils/MyUSBMusicManager;-><init>()V

    sput-object v1, Lcom/yftech/libmusic/utils/MyUSBMusicManager;->instance:Lcom/yftech/libmusic/utils/MyUSBMusicManager;

    .line 24
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 26
    :cond_1
    :goto_0
    sget-object v0, Lcom/yftech/libmusic/utils/MyUSBMusicManager;->instance:Lcom/yftech/libmusic/utils/MyUSBMusicManager;

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

    .line 80
    iget-object p0, p0, Lcom/yftech/libmusic/utils/MyUSBMusicManager;->usb1Music:Ljava/util/List;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 82
    iget-object p0, p0, Lcom/yftech/libmusic/utils/MyUSBMusicManager;->usb2Music:Ljava/util/List;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public resetData(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 67
    iget-object p0, p0, Lcom/yftech/libmusic/utils/MyUSBMusicManager;->usb1Music:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 69
    iget-object p0, p0, Lcom/yftech/libmusic/utils/MyUSBMusicManager;->usb2Music:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

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

    .line 55
    iget-object p0, p0, Lcom/yftech/libmusic/utils/MyUSBMusicManager;->usb1Music:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 57
    iget-object p0, p0, Lcom/yftech/libmusic/utils/MyUSBMusicManager;->usb2Music:Ljava/util/List;

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

    .line 41
    iget-object p1, p0, Lcom/yftech/libmusic/utils/MyUSBMusicManager;->usb1Music:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 42
    iget-object p0, p0, Lcom/yftech/libmusic/utils/MyUSBMusicManager;->usb1Music:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 44
    iget-object p1, p0, Lcom/yftech/libmusic/utils/MyUSBMusicManager;->usb2Music:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 45
    iget-object p0, p0, Lcom/yftech/libmusic/utils/MyUSBMusicManager;->usb2Music:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    return-void
.end method
