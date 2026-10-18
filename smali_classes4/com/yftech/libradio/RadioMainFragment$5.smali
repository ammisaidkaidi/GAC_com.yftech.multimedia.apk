.class Lcom/yftech/libradio/RadioMainFragment$5;
.super Ljava/lang/Object;
.source "RadioMainFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/RadioMainFragment;->setFmScaleView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/RadioMainFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/RadioMainFragment;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/yftech/libradio/RadioMainFragment$5;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 425
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment$5;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {p1}, Lcom/yftech/libradio/RadioMainFragment;->access$1000(Lcom/yftech/libradio/RadioMainFragment;)F

    move-result p1

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 427
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainFragment$5;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-static {p0, p1}, Lcom/yftech/libradio/RadioMainFragment;->access$1002(Lcom/yftech/libradio/RadioMainFragment;F)F

    goto/16 :goto_1

    .line 428
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v3, 0x1

    if-ne p1, v1, :cond_4

    .line 431
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment$5;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {p1}, Lcom/yftech/libradio/RadioMainFragment;->access$1000(Lcom/yftech/libradio/RadioMainFragment;)F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x41000000    # 8.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    .line 432
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment$5;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {p1, v2}, Lcom/yftech/libradio/RadioMainFragment;->access$1500(Lcom/yftech/libradio/RadioMainFragment;Z)V

    .line 435
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment$5;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {v0}, Lcom/yftech/libradio/RadioMainFragment;->access$1000(Lcom/yftech/libradio/RadioMainFragment;)F

    move-result v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment$5;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {v0}, Lcom/yftech/libradio/RadioMainFragment;->access$1900(Lcom/yftech/libradio/RadioMainFragment;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment$5;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {v0}, Lcom/yftech/libradio/RadioMainFragment;->access$1900(Lcom/yftech/libradio/RadioMainFragment;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment$5;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {v0}, Lcom/yftech/libradio/RadioMainFragment;->access$1000(Lcom/yftech/libradio/RadioMainFragment;)F

    move-result v0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_2

    const/4 v3, -0x1

    :cond_2
    mul-int/2addr p1, v3

    .line 437
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTouch:positionOffset="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 440
    iget-object p2, p0, Lcom/yftech/libradio/RadioMainFragment$5;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {p2}, Lcom/yftech/libradio/RadioMainFragment;->access$2000(Lcom/yftech/libradio/RadioMainFragment;)I

    move-result p2

    add-int/2addr p2, p1

    if-gez p2, :cond_3

    .line 441
    iget-object p2, p0, Lcom/yftech/libradio/RadioMainFragment$5;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {p2}, Lcom/yftech/libradio/RadioMainFragment;->access$2100(Lcom/yftech/libradio/RadioMainFragment;)Lcom/yftech/libradio/ui/adapter/RadioFreqAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yftech/libradio/ui/adapter/RadioFreqAdapter;->getItemCount()I

    move-result p2

    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment$5;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {v0}, Lcom/yftech/libradio/RadioMainFragment;->access$2000(Lcom/yftech/libradio/RadioMainFragment;)I

    move-result v0

    add-int/2addr p2, v0

    add-int/2addr p2, p1

    goto :goto_0

    .line 443
    :cond_3
    iget-object p2, p0, Lcom/yftech/libradio/RadioMainFragment$5;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {p2}, Lcom/yftech/libradio/RadioMainFragment;->access$2000(Lcom/yftech/libradio/RadioMainFragment;)I

    move-result p2

    add-int/2addr p2, p1

    .line 446
    :goto_0
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment$5;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {p1}, Lcom/yftech/libradio/RadioMainFragment;->access$2100(Lcom/yftech/libradio/RadioMainFragment;)Lcom/yftech/libradio/ui/adapter/RadioFreqAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment$5;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {v0}, Lcom/yftech/libradio/RadioMainFragment;->access$2100(Lcom/yftech/libradio/RadioMainFragment;)Lcom/yftech/libradio/ui/adapter/RadioFreqAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/libradio/ui/adapter/RadioFreqAdapter;->getItemCount()I

    move-result v0

    rem-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/yftech/libradio/ui/adapter/RadioFreqAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 447
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainFragment$5;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, v2, p1}, Lcom/yftech/libradio/RadioMainFragment;->access$2200(Lcom/yftech/libradio/RadioMainFragment;II)V

    goto :goto_1

    .line 449
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v3, :cond_5

    .line 451
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainFragment$5;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {p0, v0}, Lcom/yftech/libradio/RadioMainFragment;->access$1002(Lcom/yftech/libradio/RadioMainFragment;F)F

    :cond_5
    :goto_1
    return v2
.end method
