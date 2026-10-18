.class public Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;
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

.field private id:J

.field private lastModified:J

.field private size:J

.field private thumbData:[B

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/media/common/entity/QuickMultipleEntity;-><init>()V

    const-string v0, "null"

    .line 23
    iput-object v0, p0, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->folder:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/media/common/entity/MediaFileInfo;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Lcom/media/common/entity/QuickMultipleEntity;-><init>()V

    const-string v0, "null"

    .line 23
    iput-object v0, p0, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->folder:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Lcom/media/common/entity/MediaFileInfo;->getAlbum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->setAlbum(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Lcom/media/common/entity/MediaFileInfo;->getArtist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->setArtist(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Lcom/media/common/entity/MediaFileInfo;->getCurrentTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->setCurrentTime(I)V

    .line 35
    invoke-virtual {p1}, Lcom/media/common/entity/MediaFileInfo;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->setData(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Lcom/media/common/entity/MediaFileInfo;->getDuration()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->setDuration(J)V

    .line 37
    invoke-virtual {p1}, Lcom/media/common/entity/MediaFileInfo;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->setFileName(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Lcom/media/common/entity/MediaFileInfo;->getFolder()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->setFolder(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Lcom/media/common/entity/MediaFileInfo;->getGenre()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->setGenre(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Lcom/media/common/entity/MediaFileInfo;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->setFileName(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Lcom/media/common/entity/MediaFileInfo;->getSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->setSize(J)V

    .line 42
    invoke-virtual {p1}, Lcom/media/common/entity/MediaFileInfo;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->setId(J)V

    .line 43
    invoke-virtual {p1}, Lcom/media/common/entity/MediaFileInfo;->getLastModified()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->setLastModified(J)V

    .line 44
    invoke-virtual {p1}, Lcom/media/common/entity/MediaFileInfo;->getThumbData()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->setThumbData([B)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 154
    instance-of v0, p1, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 155
    check-cast p1, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;

    .line 157
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->getData()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->album:Ljava/lang/String;

    return-object p0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->artist:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentTime()I
    .locals 0

    .line 104
    iget p0, p0, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->currentTime:I

    return p0
.end method

.method public getData()Ljava/lang/String;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->data:Ljava/lang/String;

    return-object p0
.end method

.method public getDuration()J
    .locals 2

    .line 96
    iget-wide v0, p0, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->duration:J

    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method public getFolder()Ljava/lang/String;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->folder:Ljava/lang/String;

    return-object p0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->genre:Ljava/lang/String;

    return-object p0
.end method

.method public getId()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->id:J

    return-wide v0
.end method

.method public getItemType()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getLastModified()J
    .locals 2

    .line 120
    iget-wide v0, p0, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->lastModified:J

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    .line 112
    iget-wide v0, p0, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->size:J

    return-wide v0
.end method

.method public getThumbData()[B
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->thumbData:[B

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->album:Ljava/lang/String;

    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->artist:Ljava/lang/String;

    return-void
.end method

.method public setCurrentTime(I)V
    .locals 0

    .line 108
    iput p1, p0, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->currentTime:I

    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->data:Ljava/lang/String;

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    .line 100
    iput-wide p1, p0, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->duration:J

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setFolder(Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->folder:Ljava/lang/String;

    return-void
.end method

.method public setGenre(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->genre:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 52
    iput-wide p1, p0, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->id:J

    return-void
.end method

.method public setLastModified(J)V
    .locals 0

    .line 124
    iput-wide p1, p0, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->lastModified:J

    return-void
.end method

.method public setSize(J)V
    .locals 0

    .line 116
    iput-wide p1, p0, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->size:J

    return-void
.end method

.method public setThumbData([B)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->thumbData:[B

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->title:Ljava/lang/String;

    return-void
.end method
