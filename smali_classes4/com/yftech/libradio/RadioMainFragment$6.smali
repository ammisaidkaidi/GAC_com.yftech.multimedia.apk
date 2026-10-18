.class Lcom/yftech/libradio/RadioMainFragment$6;
.super Ljava/lang/Object;
.source "RadioMainFragment.java"

# interfaces
.implements Lcom/wuyr/pathlayoutmanager/PathLayoutManager$OnItemSelectedListener;


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

    .line 460
    iput-object p1, p0, Lcom/yftech/libradio/RadioMainFragment$6;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(I)V
    .locals 5

    .line 463
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment$6;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {v0}, Lcom/yftech/libradio/RadioMainFragment;->access$2000(Lcom/yftech/libradio/RadioMainFragment;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 464
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment$6;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {v0, p1}, Lcom/yftech/libradio/RadioMainFragment;->access$2002(Lcom/yftech/libradio/RadioMainFragment;I)I

    .line 465
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment$6;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yftech/libradio/RadioMainFragment;->access$1500(Lcom/yftech/libradio/RadioMainFragment;Z)V

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment$6;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {v0}, Lcom/yftech/libradio/RadioMainFragment;->access$2100(Lcom/yftech/libradio/RadioMainFragment;)Lcom/yftech/libradio/ui/adapter/RadioFreqAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/libradio/ui/adapter/RadioFreqAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 469
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/media/radio/CarRadioManager;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object v1

    .line 470
    invoke-virtual {v1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result v2

    .line 471
    invoke-virtual {v1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result v1

    .line 472
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OnSelected() FM position:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " freq:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " curFreq:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " curBand:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-eq v0, v2, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    .line 476
    :cond_1
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainFragment$6;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    const/4 p1, -0x1

    invoke-static {p0, v0, p1}, Lcom/yftech/libradio/RadioMainFragment;->access$2300(Lcom/yftech/libradio/RadioMainFragment;II)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method
