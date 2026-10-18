.class Lcom/yftech/car/widget/media/video/VideoSeekViewImage$JzViewOutlineProvider;
.super Landroid/view/ViewOutlineProvider;
.source "VideoSeekViewImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/video/VideoSeekViewImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JzViewOutlineProvider"
.end annotation


# instance fields
.field private final mRadius:F


# direct methods
.method public constructor <init>(F)V
    .locals 2

    .line 528
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 529
    iput p1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage$JzViewOutlineProvider;->mRadius:F

    .line 530
    invoke-static {}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->access$200()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "VideoSeekViewImage"

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JzViewOutlineProvider: mRadius=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage$JzViewOutlineProvider;->mRadius:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 3

    .line 537
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 538
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 541
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 542
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    .line 543
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 545
    iget p0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage$JzViewOutlineProvider;->mRadius:F

    invoke-virtual {p2, v1, p0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 546
    invoke-static {}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->access$200()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "VideoSeekViewImage"

    .line 547
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOutline: selfRect=="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",width=="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",height=="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
