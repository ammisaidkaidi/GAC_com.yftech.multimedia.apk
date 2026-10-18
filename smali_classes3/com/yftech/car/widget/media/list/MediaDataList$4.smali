.class Lcom/yftech/car/widget/media/list/MediaDataList$4;
.super Ljava/lang/Object;
.source "MediaDataList.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/list/MediaDataList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isClick:Z

.field private mDownX:I

.field private mDownY:I

.field private final mTextPaint:Landroid/text/TextPaint;

.field final synthetic this$0:Lcom/yftech/car/widget/media/list/MediaDataList;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/list/MediaDataList;)V
    .locals 0

    .line 645
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList$4;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 649
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList$4;->mTextPaint:Landroid/text/TextPaint;

    const/4 p1, 0x0

    .line 651
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList$4;->isClick:Z

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .line 654
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 662
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iget v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$4;->mDownX:I

    sub-int/2addr p1, v0

    .line 663
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    iget v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$4;->mDownY:I

    sub-int/2addr p2, v0

    .line 665
    iget v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$4;->mDownX:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    .line 666
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$4;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$1000(Lcom/yftech/car/widget/media/list/MediaDataList;)I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object p2, p0, Lcom/yftech/car/widget/media/list/MediaDataList$4;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {p2}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$1000(Lcom/yftech/car/widget/media/list/MediaDataList;)I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 667
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList$4;->isClick:Z

    goto/16 :goto_1

    .line 669
    :cond_0
    iput-boolean v2, p0, Lcom/yftech/car/widget/media/list/MediaDataList$4;->isClick:Z

    .line 670
    iput v3, p0, Lcom/yftech/car/widget/media/list/MediaDataList$4;->mDownX:I

    goto/16 :goto_1

    .line 678
    :pswitch_1
    iget-boolean p2, p0, Lcom/yftech/car/widget/media/list/MediaDataList$4;->isClick:Z

    if-eqz p2, :cond_3

    .line 679
    iput-boolean v2, p0, Lcom/yftech/car/widget/media/list/MediaDataList$4;->isClick:Z

    .line 681
    move-object p2, p1

    check-cast p2, Lcom/yftech/car/widget/media/text/MediaListFolderPath;

    .line 683
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$4;->mTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 684
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$4;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p2}, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->getSelectedColor()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 685
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$4;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p2}, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->getTextSize()F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 687
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$4;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p2}, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->getStartContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 690
    invoke-virtual {p2}, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->getCurrentPathText()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    .line 692
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_2

    .line 695
    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 697
    iget-object v4, p0, Lcom/yftech/car/widget/media/list/MediaDataList$4;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    add-float v5, v0, v4

    float-to-int v5, v5

    const-string v6, "MediaDataList"

    .line 708
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onTouch: startWidth=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ",mDownX=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/yftech/car/widget/media/list/MediaDataList$4;->mDownX:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",pathWidth=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ",width=="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",startText=="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iget v3, p0, Lcom/yftech/car/widget/media/list/MediaDataList$4;->mDownX:I

    int-to-float v3, v3

    cmpl-float v0, v3, v0

    if-lez v0, :cond_3

    iget v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$4;->mDownX:I

    if-ge v0, v5, :cond_3

    .line 713
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$4;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$1100(Lcom/yftech/car/widget/media/list/MediaDataList;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/yftech/car/widget/media/list/MediaDataList$4;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$1100(Lcom/yftech/car/widget/media/list/MediaDataList;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "MediaDataList"

    .line 715
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouch: -------------------ok  ,folderPath=="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object v3, p0, Lcom/yftech/car/widget/media/list/MediaDataList$4;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p2}, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->getTextSize()F

    move-result p2

    invoke-virtual {v3, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    :goto_0
    if-lez v5, :cond_3

    const-string p2, "/"

    .line 720
    invoke-virtual {v0, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    .line 722
    invoke-virtual {v0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 724
    iget-object v4, p0, Lcom/yftech/car/widget/media/list/MediaDataList$4;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    int-to-float v5, v5

    sub-float/2addr v5, v4

    float-to-int v5, v5

    const-string v6, "MediaDataList"

    .line 726
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onTouch: width=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",folderWidth=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ",folder=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    iget v6, p0, Lcom/yftech/car/widget/media/list/MediaDataList$4;->mDownX:I

    if-le v6, v5, :cond_1

    iget v6, p0, Lcom/yftech/car/widget/media/list/MediaDataList$4;->mDownX:I

    int-to-float v6, v6

    int-to-float v7, v5

    add-float/2addr v7, v4

    cmpg-float v4, v6, v7

    if-gez v4, :cond_1

    const-string p2, "MediaDataList"

    .line 730
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " onTouch: folder=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",folderPath=="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$4;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {p0, v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$200(Lcom/yftech/car/widget/media/list/MediaDataList;Ljava/lang/String;)V

    .line 732
    invoke-virtual {p1, v2}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_1

    .line 736
    :cond_1
    invoke-virtual {v0, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string p0, "MediaDataList"

    .line 740
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onTouch: endIndex=="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 658
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList$4;->mDownX:I

    .line 659
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList$4;->mDownY:I

    :cond_3
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
