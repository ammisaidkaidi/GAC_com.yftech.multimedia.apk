.class public Lcom/yftech/libmedia/player/bean/VideoListItem;
.super Lcom/yftech/libmedia/player/bean/MediaFileItem;
.source "VideoListItem.java"


# instance fields
.field private duration:J

.field private lastModify:J

.field private suffix:Ljava/lang/String;

.field private thumbData:[B

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 39
    invoke-direct {p0, v0}, Lcom/yftech/libmedia/player/bean/MediaFileItem;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/yftech/libmedia/player/bean/VideoListItem;->duration:J

    return-wide v0
.end method

.method public getLastModify()J
    .locals 2

    .line 67
    iget-wide v0, p0, Lcom/yftech/libmedia/player/bean/VideoListItem;->lastModify:J

    return-wide v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/yftech/libmedia/player/bean/VideoListItem;->suffix:Ljava/lang/String;

    return-object p0
.end method

.method public getThumbData()[B
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/yftech/libmedia/player/bean/VideoListItem;->thumbData:[B

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/yftech/libmedia/player/bean/VideoListItem;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setDuration(J)V
    .locals 0

    .line 55
    iput-wide p1, p0, Lcom/yftech/libmedia/player/bean/VideoListItem;->duration:J

    return-void
.end method

.method public setLastModify(J)V
    .locals 0

    .line 71
    iput-wide p1, p0, Lcom/yftech/libmedia/player/bean/VideoListItem;->lastModify:J

    return-void
.end method

.method public setSuffix(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/yftech/libmedia/player/bean/VideoListItem;->suffix:Ljava/lang/String;

    return-void
.end method

.method public setThumbData([B)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/yftech/libmedia/player/bean/VideoListItem;->thumbData:[B

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/yftech/libmedia/player/bean/VideoListItem;->title:Ljava/lang/String;

    return-void
.end method
