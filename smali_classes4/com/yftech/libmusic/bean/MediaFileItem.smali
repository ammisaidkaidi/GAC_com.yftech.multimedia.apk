.class public Lcom/yftech/libmusic/bean/MediaFileItem;
.super Lcom/yftech/car/media/data/entity/MediaFile;
.source "MediaFileItem.java"


# instance fields
.field private isDir:Z

.field private thumbData:[B


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/yftech/car/media/data/entity/MediaFile;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/yftech/car/media/data/entity/MediaFile;)V
    .locals 2

    .line 28
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yftech/car/media/data/entity/MediaFile;-><init>(I)V

    .line 30
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libmusic/bean/MediaFileItem;->setTitle(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getAlbum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libmusic/bean/MediaFileItem;->setAlbum(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getArtist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libmusic/bean/MediaFileItem;->setArtist(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getCurrentTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yftech/libmusic/bean/MediaFileItem;->setCurrentTime(I)V

    .line 34
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libmusic/bean/MediaFileItem;->setData(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getDuration()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/yftech/libmusic/bean/MediaFileItem;->setDuration(J)V

    .line 36
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libmusic/bean/MediaFileItem;->setFileName(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getFolder()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libmusic/bean/MediaFileItem;->setFolder(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getGenre()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libmusic/bean/MediaFileItem;->setGenre(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libmusic/bean/MediaFileItem;->setFileName(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/yftech/libmusic/bean/MediaFileItem;->setSize(J)V

    return-void
.end method


# virtual methods
.method public getThumbData()[B
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/yftech/libmusic/bean/MediaFileItem;->thumbData:[B

    return-object p0
.end method

.method public isDir()Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/yftech/libmusic/bean/MediaFileItem;->isDir:Z

    return p0
.end method

.method public setDir(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/yftech/libmusic/bean/MediaFileItem;->isDir:Z

    return-void
.end method

.method public setThumbData([B)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/yftech/libmusic/bean/MediaFileItem;->thumbData:[B

    return-void
.end method
