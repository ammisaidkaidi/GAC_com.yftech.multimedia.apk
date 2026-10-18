.class public Lcom/yftech/libmusic/bean/MusicListItem;
.super Ljava/lang/Object;
.source "MusicListItem.java"


# instance fields
.field private album:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/libmusic/bean/MusicListItem;",
            ">;"
        }
    .end annotation
.end field

.field private duration:J

.field private filePath:Ljava/lang/String;

.field private foloder:Ljava/lang/String;

.field private isDir:Z

.field private suffix:Ljava/lang/String;

.field private thumbData:[B

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/yftech/car/media/data/entity/MediaFile;)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/yftech/libmusic/bean/MusicListItem;->isDir:Z

    .line 71
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getFolder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/libmusic/bean/MusicListItem;->foloder:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yftech/libmusic/bean/MusicListItem;->duration:J

    .line 73
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/libmusic/bean/MusicListItem;->title:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getArtist()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/libmusic/bean/MusicListItem;->artist:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getAlbum()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/libmusic/bean/MusicListItem;->album:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/libmusic/bean/MusicListItem;->filePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/yftech/libmusic/bean/MusicListItem;->album:Ljava/lang/String;

    return-object p0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/yftech/libmusic/bean/MusicListItem;->artist:Ljava/lang/String;

    return-object p0
.end method

.method public getData()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yftech/libmusic/bean/MusicListItem;",
            ">;"
        }
    .end annotation

    .line 168
    iget-object p0, p0, Lcom/yftech/libmusic/bean/MusicListItem;->data:Ljava/util/List;

    return-object p0
.end method

.method public getDuration()J
    .locals 2

    .line 120
    iget-wide v0, p0, Lcom/yftech/libmusic/bean/MusicListItem;->duration:J

    return-wide v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/yftech/libmusic/bean/MusicListItem;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method public getFoloder()Ljava/lang/String;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/yftech/libmusic/bean/MusicListItem;->foloder:Ljava/lang/String;

    return-object p0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/yftech/libmusic/bean/MusicListItem;->suffix:Ljava/lang/String;

    return-object p0
.end method

.method public getThumbData()[B
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/yftech/libmusic/bean/MusicListItem;->thumbData:[B

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/yftech/libmusic/bean/MusicListItem;->title:Ljava/lang/String;

    return-object p0
.end method

.method public isDir()Z
    .locals 0

    .line 96
    iget-boolean p0, p0, Lcom/yftech/libmusic/bean/MusicListItem;->isDir:Z

    return p0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/yftech/libmusic/bean/MusicListItem;->album:Ljava/lang/String;

    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/yftech/libmusic/bean/MusicListItem;->artist:Ljava/lang/String;

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/libmusic/bean/MusicListItem;",
            ">;)V"
        }
    .end annotation

    .line 172
    iput-object p1, p0, Lcom/yftech/libmusic/bean/MusicListItem;->data:Ljava/util/List;

    return-void
.end method

.method public setDir(Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/yftech/libmusic/bean/MusicListItem;->isDir:Z

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    .line 124
    iput-wide p1, p0, Lcom/yftech/libmusic/bean/MusicListItem;->duration:J

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/yftech/libmusic/bean/MusicListItem;->filePath:Ljava/lang/String;

    return-void
.end method

.method public setFoloder(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/yftech/libmusic/bean/MusicListItem;->foloder:Ljava/lang/String;

    return-void
.end method

.method public setSuffix(Ljava/lang/String;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/yftech/libmusic/bean/MusicListItem;->suffix:Ljava/lang/String;

    return-void
.end method

.method public setThumbData([B)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/yftech/libmusic/bean/MusicListItem;->thumbData:[B

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/yftech/libmusic/bean/MusicListItem;->title:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicListItem{isDir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/libmusic/bean/MusicListItem;->isDir:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", foloder=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/libmusic/bean/MusicListItem;->foloder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", thumbData="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/libmusic/bean/MusicListItem;->thumbData:[B

    .line 84
    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", duration="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/yftech/libmusic/bean/MusicListItem;->duration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/libmusic/bean/MusicListItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", artist=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/libmusic/bean/MusicListItem;->artist:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", album=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/libmusic/bean/MusicListItem;->album:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", suffix=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/libmusic/bean/MusicListItem;->suffix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", filePath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/libmusic/bean/MusicListItem;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/libmusic/bean/MusicListItem;->data:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
