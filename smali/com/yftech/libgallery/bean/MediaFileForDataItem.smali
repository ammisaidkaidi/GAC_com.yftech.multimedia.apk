.class public Lcom/yftech/libgallery/bean/MediaFileForDataItem;
.super Lcom/media/common/entity/QuickMultipleEntity;
.source "MediaFileForDataItem.java"


# instance fields
.field private album:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private currentTime:I

.field private data:Ljava/lang/String;

.field private duration:J

.field private fileName:Ljava/lang/String;

.field private folder:Ljava/lang/String;

.field private genre:Ljava/lang/String;

.field private lastModified:J

.field private size:J

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/media/common/entity/QuickMultipleEntity;-><init>()V

    const-string/jumbo v0, "null"

    .line 18
    iput-object v0, p0, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->folder:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/yftech/car/media/data/entity/MediaFile;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Lcom/media/common/entity/QuickMultipleEntity;-><init>()V

    const-string/jumbo v0, "null"

    .line 18
    iput-object v0, p0, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->folder:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getAlbum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->setAlbum(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getArtist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->setArtist(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getCurrentTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->setCurrentTime(I)V

    .line 28
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->setData(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getDuration()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->setDuration(J)V

    .line 30
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->setFileName(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getFolder()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->setFolder(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getGenre()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->setGenre(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->setFileName(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->setSize(J)V

    return-void
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->album:Ljava/lang/String;

    return-object p0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->artist:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentTime()I
    .locals 0

    .line 86
    iget p0, p0, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->currentTime:I

    return p0
.end method

.method public getData()Ljava/lang/String;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->data:Ljava/lang/String;

    return-object p0
.end method

.method public getDuration()J
    .locals 2

    .line 78
    iget-wide v0, p0, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->duration:J

    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method public getFolder()Ljava/lang/String;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->folder:Ljava/lang/String;

    return-object p0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->genre:Ljava/lang/String;

    return-object p0
.end method

.method public getItemType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getLastModified()J
    .locals 2

    .line 102
    iget-wide v0, p0, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->lastModified:J

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    .line 94
    iget-wide v0, p0, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->size:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->album:Ljava/lang/String;

    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->artist:Ljava/lang/String;

    return-void
.end method

.method public setCurrentTime(I)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->currentTime:I

    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->data:Ljava/lang/String;

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    .line 82
    iput-wide p1, p0, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->duration:J

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setFolder(Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->folder:Ljava/lang/String;

    return-void
.end method

.method public setGenre(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->genre:Ljava/lang/String;

    return-void
.end method

.method public setLastModified(J)V
    .locals 0

    .line 106
    iput-wide p1, p0, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->lastModified:J

    return-void
.end method

.method public setSize(J)V
    .locals 0

    .line 98
    iput-wide p1, p0, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->size:J

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->title:Ljava/lang/String;

    return-void
.end method
