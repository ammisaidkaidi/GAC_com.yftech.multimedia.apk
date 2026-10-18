.class public Lcom/media/common/entity/MediaFileInfo;
.super Lcom/yftech/car/media/data/entity/MediaFile;
.source "MediaFileInfo.java"


# instance fields
.field private thumbData:[B


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/yftech/car/media/data/entity/MediaFile;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/yftech/car/media/data/entity/MediaFile;)V
    .locals 2

    .line 23
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yftech/car/media/data/entity/MediaFile;-><init>(I)V

    .line 25
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/media/common/entity/MediaFileInfo;->setTitle(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getAlbum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/media/common/entity/MediaFileInfo;->setAlbum(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getArtist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/media/common/entity/MediaFileInfo;->setArtist(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getCurrentTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/media/common/entity/MediaFileInfo;->setCurrentTime(I)V

    .line 29
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/media/common/entity/MediaFileInfo;->setData(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getDuration()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/media/common/entity/MediaFileInfo;->setDuration(J)V

    .line 31
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/media/common/entity/MediaFileInfo;->setFileName(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getFolder()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/media/common/entity/MediaFileInfo;->setFolder(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/media/common/entity/MediaFileInfo;->setId(J)V

    .line 35
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getGenre()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/media/common/entity/MediaFileInfo;->setGenre(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/media/common/entity/MediaFileInfo;->setFileName(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/media/common/entity/MediaFileInfo;->setSize(J)V

    .line 38
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getLastModified()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/media/common/entity/MediaFileInfo;->setLastModified(J)V

    return-void
.end method


# virtual methods
.method public getThumbData()[B
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/media/common/entity/MediaFileInfo;->thumbData:[B

    return-object p0
.end method

.method public setThumbData([B)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/media/common/entity/MediaFileInfo;->thumbData:[B

    return-void
.end method
