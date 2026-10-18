.class public Lcom/yftech/libgallery/bean/MediaFileItem;
.super Lcom/yftech/car/media/data/entity/MediaFile;
.source "MediaFileItem.java"


# instance fields
.field private isViewed:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/yftech/car/media/data/entity/MediaFile;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/yftech/car/media/data/entity/MediaFile;)V
    .locals 2

    .line 21
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yftech/car/media/data/entity/MediaFile;-><init>(I)V

    .line 23
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getAlbum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libgallery/bean/MediaFileItem;->setAlbum(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getArtist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libgallery/bean/MediaFileItem;->setArtist(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getCurrentTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yftech/libgallery/bean/MediaFileItem;->setCurrentTime(I)V

    .line 26
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libgallery/bean/MediaFileItem;->setData(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getDuration()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/yftech/libgallery/bean/MediaFileItem;->setDuration(J)V

    .line 28
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libgallery/bean/MediaFileItem;->setFileName(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getFolder()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libgallery/bean/MediaFileItem;->setFolder(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getGenre()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libgallery/bean/MediaFileItem;->setGenre(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libgallery/bean/MediaFileItem;->setFileName(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/yftech/libgallery/bean/MediaFileItem;->setSize(J)V

    .line 33
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getLastModified()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/yftech/libgallery/bean/MediaFileItem;->setLastModified(J)V

    return-void
.end method

.method public constructor <init>(Lcom/yftech/libgallery/bean/MediaFileForDataItem;)V
    .locals 2

    const/4 v0, 0x2

    .line 37
    invoke-direct {p0, v0}, Lcom/yftech/car/media/data/entity/MediaFile;-><init>(I)V

    .line 39
    invoke-virtual {p1}, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->getAlbum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libgallery/bean/MediaFileItem;->setAlbum(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->getArtist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libgallery/bean/MediaFileItem;->setArtist(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->getCurrentTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yftech/libgallery/bean/MediaFileItem;->setCurrentTime(I)V

    .line 42
    invoke-virtual {p1}, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libgallery/bean/MediaFileItem;->setData(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->getDuration()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/yftech/libgallery/bean/MediaFileItem;->setDuration(J)V

    .line 44
    invoke-virtual {p1}, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libgallery/bean/MediaFileItem;->setFileName(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->getFolder()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libgallery/bean/MediaFileItem;->setFolder(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->getGenre()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libgallery/bean/MediaFileItem;->setGenre(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libgallery/bean/MediaFileItem;->setFileName(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->getSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/yftech/libgallery/bean/MediaFileItem;->setSize(J)V

    return-void
.end method


# virtual methods
.method public isViewed()Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/yftech/libgallery/bean/MediaFileItem;->isViewed:Z

    return p0
.end method

.method public setViewed(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/yftech/libgallery/bean/MediaFileItem;->isViewed:Z

    return-void
.end method
