.class public Lcom/yftech/car/widget/media/manager/MediaDataManager;
.super Ljava/lang/Object;
.source "MediaDataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/manager/MediaDataManager$InitCallback;,
        Lcom/yftech/car/widget/media/manager/MediaDataManager$CopyFileCode;,
        Lcom/yftech/car/widget/media/manager/MediaDataManager$DeleteError;,
        Lcom/yftech/car/widget/media/manager/MediaDataManager$Constant;,
        Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeListener;,
        Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeCallback;,
        Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaDataManager"

.field private static mInstance:Lcom/yftech/car/widget/media/manager/MediaDataManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;
    .locals 2

    .line 47
    sget-object v0, Lcom/yftech/car/widget/media/manager/MediaDataManager;->mInstance:Lcom/yftech/car/widget/media/manager/MediaDataManager;

    if-nez v0, :cond_1

    .line 48
    const-class v0, Lcom/yftech/car/widget/media/manager/MediaDataManager;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v1, Lcom/yftech/car/widget/media/manager/MediaDataManager;->mInstance:Lcom/yftech/car/widget/media/manager/MediaDataManager;

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Lcom/yftech/car/widget/media/manager/MediaDataManager;

    invoke-direct {v1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;-><init>()V

    sput-object v1, Lcom/yftech/car/widget/media/manager/MediaDataManager;->mInstance:Lcom/yftech/car/widget/media/manager/MediaDataManager;

    .line 52
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 54
    :cond_1
    :goto_0
    sget-object v0, Lcom/yftech/car/widget/media/manager/MediaDataManager;->mInstance:Lcom/yftech/car/widget/media/manager/MediaDataManager;

    return-object v0
.end method


# virtual methods
.method public deleteMediaFileList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;)V"
        }
    .end annotation

    .line 632
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$3900(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;Ljava/util/List;)V

    return-void
.end method

.method public findSearchFile(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation

    .line 399
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$2800(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public findSearchFile(Ljava/lang/String;II)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation

    .line 422
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$2800(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public findSearchMusicFile(Lcom/yftech/car/media/data/entity/MediaFile;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ")",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation

    .line 377
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$2700(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;Lcom/yftech/car/media/data/entity/MediaFile;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAlbumsMusic(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFolder;",
            ">;"
        }
    .end annotation

    .line 337
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$2500(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAlbumsMusic(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFolder;",
            ">;"
        }
    .end annotation

    .line 347
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getUsbIndex(Ljava/lang/String;)I

    move-result p0

    invoke-static {v0, p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$2500(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getArtistsMusic(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFolder;",
            ">;"
        }
    .end annotation

    .line 318
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$2400(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getArtistsMusic(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFolder;",
            ">;"
        }
    .end annotation

    .line 327
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getUsbIndex(Ljava/lang/String;)I

    move-result p0

    invoke-static {v0, p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$2400(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getArtistsPhoto(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFolder;",
            ">;"
        }
    .end annotation

    .line 612
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$3800(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getArtistsPhoto(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFolder;",
            ">;"
        }
    .end annotation

    .line 622
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getUsbIndex(Ljava/lang/String;)I

    move-result p0

    invoke-static {v0, p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$3800(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getArtistsVideo(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFolder;",
            ">;"
        }
    .end annotation

    .line 514
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$3300(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getArtistsVideo(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFolder;",
            ">;"
        }
    .end annotation

    .line 523
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getUsbIndex(Ljava/lang/String;)I

    move-result p0

    invoke-static {v0, p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$3300(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getExistUdiskList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 219
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$1800(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFileMusic(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation

    .line 237
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$2000(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFileMusic(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation

    .line 247
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getUsbIndex(Ljava/lang/String;)I

    move-result p0

    invoke-static {v0, p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$2000(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFilePhoto(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation

    .line 533
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$3400(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFilePhoto(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation

    .line 542
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getUsbIndex(Ljava/lang/String;)I

    move-result p0

    invoke-static {v0, p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$3400(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFileVideo(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation

    .line 432
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$2900(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFileVideo(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation

    .line 442
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getUsbIndex(Ljava/lang/String;)I

    move-result p0

    invoke-static {v0, p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$2900(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFolderMusic(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFolder;",
            ">;"
        }
    .end annotation

    .line 299
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$2300(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFolderMusic(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFolder;",
            ">;"
        }
    .end annotation

    .line 308
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getUsbIndex(Ljava/lang/String;)I

    move-result p0

    invoke-static {v0, p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$2300(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFolderPhoto(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFolder;",
            ">;"
        }
    .end annotation

    .line 592
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$3700(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFolderPhoto(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFolder;",
            ">;"
        }
    .end annotation

    .line 602
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getUsbIndex(Ljava/lang/String;)I

    move-result p0

    invoke-static {v0, p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$3700(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFolderVideo(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFolder;",
            ">;"
        }
    .end annotation

    .line 494
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$3200(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFolderVideo(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFolder;",
            ">;"
        }
    .end annotation

    .line 504
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getUsbIndex(Ljava/lang/String;)I

    move-result p0

    invoke-static {v0, p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$3200(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getGenreMusic(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFolder;",
            ">;"
        }
    .end annotation

    .line 357
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$2600(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getGenreMusic(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFolder;",
            ">;"
        }
    .end annotation

    .line 367
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getUsbIndex(Ljava/lang/String;)I

    move-result p0

    invoke-static {v0, p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$2600(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getMediaListPage(Lcom/yftech/car/media/data/entity/MediaFile;III)Lcom/yftech/car/media/data/entity/MediaFolder;
    .locals 0

    .line 650
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$4000(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;Lcom/yftech/car/media/data/entity/MediaFile;III)Lcom/yftech/car/media/data/entity/MediaFolder;

    move-result-object p0

    return-object p0
.end method

.method public getMusicDirectory(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation

    .line 258
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$2100(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 259
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 260
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/media/data/entity/MediaFile;

    .line 261
    invoke-virtual {v1}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 262
    invoke-virtual {v1}, Lcom/yftech/car/media/data/entity/MediaFile;->getFolderPath()Ljava/lang/String;

    move-result-object v1

    move v2, v0

    .line 264
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ge v0, v3, :cond_1

    .line 265
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x2f

    if-ne v3, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    if-le v2, v4, :cond_0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-ne v2, v4, :cond_2

    .line 274
    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getMusicDirectory(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public getMusicDirectory(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation

    .line 289
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$2200(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getMusicExistsDataIndex()[B
    .locals 0

    .line 184
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$1400(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)[B

    move-result-object p0

    return-object p0
.end method

.method public getMusicFileExists()I
    .locals 0

    .line 151
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$1000(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)I

    move-result p0

    return p0
.end method

.method public getMusicFileSize(I)I
    .locals 0

    .line 116
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$600(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)I

    move-result p0

    return p0
.end method

.method public getPhotoDirectory(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation

    .line 552
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$3500(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 553
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 554
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/media/data/entity/MediaFile;

    .line 555
    invoke-virtual {v1}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 556
    invoke-virtual {v1}, Lcom/yftech/car/media/data/entity/MediaFile;->getFolderPath()Ljava/lang/String;

    move-result-object v1

    move v2, v0

    .line 558
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ge v0, v3, :cond_1

    .line 559
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x2f

    if-ne v3, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    if-le v2, v4, :cond_0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-ne v2, v4, :cond_2

    .line 568
    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getPhotoDirectory(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public getPhotoDirectory(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation

    .line 582
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$3600(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPhotoExistsDataIndex()[B
    .locals 0

    .line 202
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$1600(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)[B

    move-result-object p0

    return-object p0
.end method

.method public getPhotoFileExists()I
    .locals 0

    .line 167
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$1200(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)I

    move-result p0

    return p0
.end method

.method public getPhotoFileSize(I)I
    .locals 0

    .line 134
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$800(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)I

    move-result p0

    return p0
.end method

.method public getTextExistsDataIndex()[B
    .locals 0

    .line 211
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$1700(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)[B

    move-result-object p0

    return-object p0
.end method

.method public getTextFileExists()I
    .locals 0

    .line 175
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$1300(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)I

    move-result p0

    return p0
.end method

.method public getTextFileSize(I)I
    .locals 0

    .line 143
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$900(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)I

    move-result p0

    return p0
.end method

.method public getUdiskList()[Ljava/lang/String;
    .locals 0

    .line 227
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$1900(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUsbIndex(Ljava/lang/String;)I
    .locals 0

    .line 89
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$300(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getVideoDirectory(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation

    .line 453
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$3000(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 454
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 455
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/media/data/entity/MediaFile;

    .line 456
    invoke-virtual {v1}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 457
    invoke-virtual {v1}, Lcom/yftech/car/media/data/entity/MediaFile;->getFolderPath()Ljava/lang/String;

    move-result-object v1

    move v2, v0

    .line 459
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ge v0, v3, :cond_1

    .line 460
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x2f

    if-ne v3, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    if-le v2, v4, :cond_0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-ne v2, v4, :cond_2

    .line 469
    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getVideoDirectory(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public getVideoDirectory(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation

    .line 484
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$3100(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getVideoExistsDataIndex()[B
    .locals 0

    .line 193
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$1500(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)[B

    move-result-object p0

    return-object p0
.end method

.method public getVideoFileExists()I
    .locals 0

    .line 159
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$1100(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)I

    move-result p0

    return p0
.end method

.method public getVideoFileSize(I)I
    .locals 0

    .line 125
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$700(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)I

    move-result p0

    return p0
.end method

.method public isScanner(I)Z
    .locals 0

    .line 98
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$400(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)Z

    move-result p0

    return p0
.end method

.method public isUsbExists(I)Z
    .locals 0

    .line 107
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$500(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;I)Z

    move-result p0

    return p0
.end method

.method public registerCarDataControlCallback(Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeListener;)V
    .locals 0

    .line 69
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$100(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeListener;)V

    return-void
.end method

.method public saveFileList(Ljava/util/List;Ljava/lang/String;J)[I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J)[I"
        }
    .end annotation

    .line 663
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$4100(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;Ljava/util/List;Ljava/lang/String;J)[I

    move-result-object p0

    return-object p0
.end method

.method public saveMediaFile(Lcom/yftech/car/media/data/entity/MediaFile;Ljava/lang/String;J)I
    .locals 0

    if-nez p1, :cond_0

    const-string p0, "MediaDataManager"

    const-string/jumbo p1, "saveMediaFile: mediaFile is null"

    .line 701
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x3

    return p0

    .line 704
    :cond_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$4300(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;Ljava/lang/String;Ljava/lang/String;J)I

    move-result p0

    return p0
.end method

.method public saveMediaFile(Ljava/lang/String;Ljava/lang/String;J)I
    .locals 0

    .line 688
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$4300(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;Ljava/lang/String;Ljava/lang/String;J)I

    move-result p0

    return p0
.end method

.method public saveMediaFileList(Ljava/util/List;Ljava/lang/String;J)[I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;",
            "Ljava/lang/String;",
            "J)[I"
        }
    .end annotation

    .line 676
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$4200(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;Ljava/util/List;Ljava/lang/String;J)[I

    move-result-object p0

    return-object p0
.end method

.method public unregisterCarDataControlCallback(Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeListener;)V
    .locals 0

    .line 78
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$000()Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$200(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeListener;)V

    return-void
.end method
