.class public Lcom/yftech/libmedia/player/bean/MediaFileItem;
.super Lcom/yftech/car/media/data/entity/MediaFile;
.source "MediaFileItem.java"


# instance fields
.field private information:Lcom/yftech/libmedia/player/bean/VideoListItem;

.field private isViewed:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/yftech/car/media/data/entity/MediaFile;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/yftech/car/media/data/entity/MediaFile;)V
    .locals 2

    .line 24
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yftech/car/media/data/entity/MediaFile;-><init>(I)V

    .line 26
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getAlbum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libmedia/player/bean/MediaFileItem;->setAlbum(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getArtist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libmedia/player/bean/MediaFileItem;->setArtist(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getCurrentTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yftech/libmedia/player/bean/MediaFileItem;->setCurrentTime(I)V

    .line 29
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libmedia/player/bean/MediaFileItem;->setData(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getDuration()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/yftech/libmedia/player/bean/MediaFileItem;->setDuration(J)V

    .line 31
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libmedia/player/bean/MediaFileItem;->setFileName(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getFolder()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libmedia/player/bean/MediaFileItem;->setFolder(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getGenre()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libmedia/player/bean/MediaFileItem;->setGenre(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libmedia/player/bean/MediaFileItem;->setFileName(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/yftech/libmedia/player/bean/MediaFileItem;->setSize(J)V

    return-void
.end method

.method public constructor <init>(Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;)V
    .locals 2

    const/4 v0, 0x1

    .line 39
    invoke-direct {p0, v0}, Lcom/yftech/car/media/data/entity/MediaFile;-><init>(I)V

    .line 41
    invoke-virtual {p1}, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->getAlbum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libmedia/player/bean/MediaFileItem;->setAlbum(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->getArtist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libmedia/player/bean/MediaFileItem;->setArtist(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->getCurrentTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yftech/libmedia/player/bean/MediaFileItem;->setCurrentTime(I)V

    .line 44
    invoke-virtual {p1}, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libmedia/player/bean/MediaFileItem;->setData(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->getDuration()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/yftech/libmedia/player/bean/MediaFileItem;->setDuration(J)V

    .line 46
    invoke-virtual {p1}, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libmedia/player/bean/MediaFileItem;->setFileName(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->getFolder()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libmedia/player/bean/MediaFileItem;->setFolder(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->getGenre()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libmedia/player/bean/MediaFileItem;->setGenre(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libmedia/player/bean/MediaFileItem;->setFileName(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->getSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/yftech/libmedia/player/bean/MediaFileItem;->setSize(J)V

    return-void
.end method


# virtual methods
.method public getInformation()Lcom/yftech/libmedia/player/bean/VideoListItem;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/yftech/libmedia/player/bean/MediaFileItem;->information:Lcom/yftech/libmedia/player/bean/VideoListItem;

    return-object p0
.end method

.method public isViewed()Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/yftech/libmedia/player/bean/MediaFileItem;->isViewed:Z

    return p0
.end method

.method public setInformation(Lcom/yftech/libmedia/player/bean/VideoListItem;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/yftech/libmedia/player/bean/MediaFileItem;->information:Lcom/yftech/libmedia/player/bean/VideoListItem;

    return-void
.end method

.method public setViewed(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/yftech/libmedia/player/bean/MediaFileItem;->isViewed:Z

    return-void
.end method
