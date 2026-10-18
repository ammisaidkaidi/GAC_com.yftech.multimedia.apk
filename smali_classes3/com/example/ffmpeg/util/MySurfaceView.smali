.class public Lcom/example/ffmpeg/util/MySurfaceView;
.super Landroid/view/SurfaceView;
.source "MySurfaceView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MySurfaceView"


# instance fields
.field private mRatioHeight:I

.field private mRatioWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, v0}, Lcom/example/ffmpeg/util/MySurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/example/ffmpeg/util/MySurfaceView;->mRatioWidth:I

    .line 11
    iput p1, p0, Lcom/example/ffmpeg/util/MySurfaceView;->mRatioHeight:I

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .line 23
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    .line 24
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 25
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 27
    iget v0, p0, Lcom/example/ffmpeg/util/MySurfaceView;->mRatioWidth:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/example/ffmpeg/util/MySurfaceView;->mRatioHeight:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    iget v0, p0, Lcom/example/ffmpeg/util/MySurfaceView;->mRatioWidth:I

    mul-int/2addr v0, p2

    iget v1, p0, Lcom/example/ffmpeg/util/MySurfaceView;->mRatioHeight:I

    div-int/2addr v0, v1

    if-ge p1, v0, :cond_1

    .line 31
    iget p2, p0, Lcom/example/ffmpeg/util/MySurfaceView;->mRatioHeight:I

    mul-int/2addr p2, p1

    iget v0, p0, Lcom/example/ffmpeg/util/MySurfaceView;->mRatioWidth:I

    div-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/example/ffmpeg/util/MySurfaceView;->setMeasuredDimension(II)V

    goto :goto_1

    .line 33
    :cond_1
    iget p1, p0, Lcom/example/ffmpeg/util/MySurfaceView;->mRatioWidth:I

    mul-int/2addr p1, p2

    iget v0, p0, Lcom/example/ffmpeg/util/MySurfaceView;->mRatioHeight:I

    div-int/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/example/ffmpeg/util/MySurfaceView;->setMeasuredDimension(II)V

    goto :goto_1

    .line 28
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/example/ffmpeg/util/MySurfaceView;->setMeasuredDimension(II)V

    :goto_1
    return-void
.end method

.method public setAspectRatio(II)V
    .locals 3

    const-string v0, "MySurfaceView"

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAspectRatio() called with: width = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], height = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 44
    iput p1, p0, Lcom/example/ffmpeg/util/MySurfaceView;->mRatioWidth:I

    .line 45
    iput p2, p0, Lcom/example/ffmpeg/util/MySurfaceView;->mRatioHeight:I

    .line 46
    invoke-virtual {p0}, Lcom/example/ffmpeg/util/MySurfaceView;->requestLayout()V

    return-void

    .line 41
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Size cannot be negative."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
