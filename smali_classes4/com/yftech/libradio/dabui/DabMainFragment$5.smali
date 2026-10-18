.class Lcom/yftech/libradio/dabui/DabMainFragment$5;
.super Lcom/yftech/libradio/carousellayoutmanager/CenterScrollListener;
.source "DabMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dabui/DabMainFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dabui/DabMainFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dabui/DabMainFragment;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment$5;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-direct {p0}, Lcom/yftech/libradio/carousellayoutmanager/CenterScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 6
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 312
    invoke-super {p0, p1, p2}, Lcom/yftech/libradio/carousellayoutmanager/CenterScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_7

    .line 314
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment$5;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$500(Lcom/yftech/libradio/dabui/DabMainFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment$5;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$900(Lcom/yftech/libradio/dabui/DabMainFragment;)I

    move-result p1

    if-ltz p1, :cond_6

    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment$5;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$900(Lcom/yftech/libradio/dabui/DabMainFragment;)I

    move-result p1

    iget-object p2, p0, Lcom/yftech/libradio/dabui/DabMainFragment$5;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {p2}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$500(Lcom/yftech/libradio/dabui/DabMainFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lt p1, p2, :cond_0

    goto/16 :goto_4

    .line 317
    :cond_0
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getPlayInfo()Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    move-result-object p1

    .line 318
    iget-object p2, p0, Lcom/yftech/libradio/dabui/DabMainFragment$5;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {p2}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$500(Lcom/yftech/libradio/dabui/DabMainFragment;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment$5;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {v0}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$900(Lcom/yftech/libradio/dabui/DabMainFragment;)I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yftech/libradio/bean/DabChannelInfo;

    .line 319
    instance-of v0, p2, Lcom/yftech/libradio/bean/InvalidDabChannelInfo;

    if-eqz v0, :cond_3

    const-string p2, "InvalidDabChannelInfo can not play ----"

    .line 320
    invoke-static {p2}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 321
    :goto_0
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment$5;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {v0}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$500(Lcom/yftech/libradio/dabui/DabMainFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 322
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment$5;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {v0}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$500(Lcom/yftech/libradio/dabui/DabMainFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/libradio/bean/DabChannelInfo;

    if-eqz p1, :cond_1

    .line 323
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getFrequency()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getFrequency()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 324
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getEnsembleId()I

    move-result v1

    invoke-virtual {v0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getEnsembleId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 325
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getServiceId()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getServiceId()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    .line 326
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment$5;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {p0}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$600(Lcom/yftech/libradio/dabui/DabMainFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    if-eqz p1, :cond_5

    .line 331
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getFrequency()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/yftech/libradio/bean/DabChannelInfo;->getFrequency()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    .line 332
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getEnsembleId()I

    move-result v0

    invoke-virtual {p2}, Lcom/yftech/libradio/bean/DabChannelInfo;->getEnsembleId()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 333
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getServiceId()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/yftech/libradio/bean/DabChannelInfo;->getServiceId()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-eqz p1, :cond_4

    goto :goto_2

    .line 337
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "playinfo not need change,position: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/yftech/libradio/dabui/DabMainFragment$5;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {p2}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$900(Lcom/yftech/libradio/dabui/DabMainFragment;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_3

    .line 334
    :cond_5
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "playinfo need change, setFreq position: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment$5;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {v0}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$900(Lcom/yftech/libradio/dabui/DabMainFragment;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 335
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yftech/libradio/bean/DabChannelInfo;->getFrequency()J

    move-result-wide v1

    invoke-virtual {p2}, Lcom/yftech/libradio/bean/DabChannelInfo;->getEnsembleId()I

    move-result v3

    invoke-virtual {p2}, Lcom/yftech/libradio/bean/DabChannelInfo;->getServiceId()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->setFreq(JIJ)V

    .line 339
    :goto_3
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment$5;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    iget-object p2, p0, Lcom/yftech/libradio/dabui/DabMainFragment$5;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {p2}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$900(Lcom/yftech/libradio/dabui/DabMainFragment;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$700(Lcom/yftech/libradio/dabui/DabMainFragment;I)V

    .line 340
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment$5;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment$5;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {p0}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$900(Lcom/yftech/libradio/dabui/DabMainFragment;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$800(Lcom/yftech/libradio/dabui/DabMainFragment;I)V

    goto :goto_5

    :cond_6
    :goto_4
    return-void

    :cond_7
    :goto_5
    return-void
.end method
