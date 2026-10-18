.class Lcom/yftech/libradio/dabui/DabMainFragment$2;
.super Landroid/os/Handler;
.source "DabMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dabui/DabMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dabui/DabMainFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dabui/DabMainFragment;Landroid/os/Looper;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment$2;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 119
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 120
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2714

    if-ne v0, v1, :cond_0

    .line 121
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment$2;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {p0}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$400(Lcom/yftech/libradio/dabui/DabMainFragment;)V

    goto/16 :goto_3

    .line 122
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x2715

    if-ne p1, v0, :cond_5

    .line 123
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getPlayInfo()Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    move v1, v0

    .line 126
    :goto_0
    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabMainFragment$2;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {v2}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$500(Lcom/yftech/libradio/dabui/DabMainFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 127
    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabMainFragment$2;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {v2}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$500(Lcom/yftech/libradio/dabui/DabMainFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/yftech/libradio/bean/InvalidDabChannelInfo;

    if-eqz v2, :cond_1

    goto :goto_1

    .line 130
    :cond_1
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getFrequency()J

    move-result-wide v2

    iget-object v4, p0, Lcom/yftech/libradio/dabui/DabMainFragment$2;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {v4}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$500(Lcom/yftech/libradio/dabui/DabMainFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yftech/libradio/bean/DabChannelInfo;

    invoke-virtual {v4}, Lcom/yftech/libradio/bean/DabChannelInfo;->getFrequency()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 131
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getServiceId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/yftech/libradio/dabui/DabMainFragment$2;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {v4}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$500(Lcom/yftech/libradio/dabui/DabMainFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yftech/libradio/bean/DabChannelInfo;

    invoke-virtual {v4}, Lcom/yftech/libradio/bean/DabChannelInfo;->getServiceId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 132
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getEnsembleId()I

    move-result v2

    iget-object v3, p0, Lcom/yftech/libradio/dabui/DabMainFragment$2;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {v3}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$500(Lcom/yftech/libradio/dabui/DabMainFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/libradio/bean/DabChannelInfo;

    invoke-virtual {v3}, Lcom/yftech/libradio/bean/DabChannelInfo;->getEnsembleId()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 133
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment$2;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$600(Lcom/yftech/libradio/dabui/DabMainFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 134
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment$2;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {p1, v1}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$700(Lcom/yftech/libradio/dabui/DabMainFragment;I)V

    .line 135
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment$2;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {p1, v1}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$800(Lcom/yftech/libradio/dabui/DabMainFragment;I)V

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-nez v0, :cond_5

    .line 141
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment$2;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment$2;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {v0}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$900(Lcom/yftech/libradio/dabui/DabMainFragment;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$700(Lcom/yftech/libradio/dabui/DabMainFragment;I)V

    .line 142
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment$2;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment$2;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {p0}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$900(Lcom/yftech/libradio/dabui/DabMainFragment;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$800(Lcom/yftech/libradio/dabui/DabMainFragment;I)V

    goto :goto_3

    :cond_4
    const-string p1, "update playUI,playinfo is null ----"

    .line 145
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 146
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment$2;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment$2;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {v0}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$900(Lcom/yftech/libradio/dabui/DabMainFragment;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$700(Lcom/yftech/libradio/dabui/DabMainFragment;I)V

    .line 147
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment$2;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment$2;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {p0}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$900(Lcom/yftech/libradio/dabui/DabMainFragment;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$800(Lcom/yftech/libradio/dabui/DabMainFragment;I)V

    :cond_5
    :goto_3
    return-void
.end method
