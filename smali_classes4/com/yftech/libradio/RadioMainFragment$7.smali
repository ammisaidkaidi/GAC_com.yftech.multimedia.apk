.class Lcom/yftech/libradio/RadioMainFragment$7;
.super Ljava/lang/Object;
.source "RadioMainFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;


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

    .line 515
    iput-object p1, p0, Lcom/yftech/libradio/RadioMainFragment$7;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemChildClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 3

    .line 518
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onItemChildClick() FM position:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 519
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    sget p2, Lcom/yftech/libradio/R$id;->layout_freq:I

    if-ne p1, p2, :cond_2

    .line 520
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment$7;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {p1}, Lcom/yftech/libradio/RadioMainFragment;->access$2100(Lcom/yftech/libradio/RadioMainFragment;)Lcom/yftech/libradio/ui/adapter/RadioFreqAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/yftech/libradio/ui/adapter/RadioFreqAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 521
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yftech/car/media/radio/CarRadioManager;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object p2

    .line 522
    invoke-virtual {p2}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result v0

    .line 523
    invoke-virtual {p2}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result p2

    .line 524
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemChildClick() FM position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " freq:"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " curFreq:"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " curBand:"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-eq p1, v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 528
    :cond_0
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainFragment$7;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    const/4 p2, -0x1

    invoke-static {p0, p1, p2}, Lcom/yftech/libradio/RadioMainFragment;->access$2300(Lcom/yftech/libradio/RadioMainFragment;II)V

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method
