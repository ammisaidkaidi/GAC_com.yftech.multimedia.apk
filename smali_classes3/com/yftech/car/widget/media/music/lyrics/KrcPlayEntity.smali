.class public Lcom/yftech/car/widget/media/music/lyrics/KrcPlayEntity;
.super Ljava/lang/Object;
.source "KrcPlayEntity.java"


# instance fields
.field private lyrics:Ljava/lang/String;

.field private playTime:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLyrics()Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/lyrics/KrcPlayEntity;->lyrics:Ljava/lang/String;

    return-object p0
.end method

.method public getPlayTime()[I
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/lyrics/KrcPlayEntity;->playTime:[I

    return-object p0
.end method

.method public setLyrics(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/yftech/car/widget/media/music/lyrics/KrcPlayEntity;->lyrics:Ljava/lang/String;

    return-void
.end method

.method public setPlayTime([I)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/yftech/car/widget/media/music/lyrics/KrcPlayEntity;->playTime:[I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KrcPlayEntity{playTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/car/widget/media/music/lyrics/KrcPlayEntity;->playTime:[I

    .line 16
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lyrics=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/car/widget/media/music/lyrics/KrcPlayEntity;->lyrics:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
