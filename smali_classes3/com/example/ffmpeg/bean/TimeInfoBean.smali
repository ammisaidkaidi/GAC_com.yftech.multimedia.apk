.class public Lcom/example/ffmpeg/bean/TimeInfoBean;
.super Ljava/lang/Object;
.source "TimeInfoBean.java"


# instance fields
.field private currentTime:I

.field private totalTime:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentTime()I
    .locals 0

    .line 10
    iget p0, p0, Lcom/example/ffmpeg/bean/TimeInfoBean;->currentTime:I

    return p0
.end method

.method public getTotalTime()I
    .locals 0

    .line 18
    iget p0, p0, Lcom/example/ffmpeg/bean/TimeInfoBean;->totalTime:I

    return p0
.end method

.method public setCurrentTime(I)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/example/ffmpeg/bean/TimeInfoBean;->currentTime:I

    return-void
.end method

.method public setTotalTime(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/example/ffmpeg/bean/TimeInfoBean;->totalTime:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WlTimeInfoBean{currentTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/example/ffmpeg/bean/TimeInfoBean;->currentTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/example/ffmpeg/bean/TimeInfoBean;->totalTime:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
