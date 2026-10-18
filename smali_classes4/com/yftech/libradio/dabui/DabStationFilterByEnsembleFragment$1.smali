.class Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment$1;
.super Landroid/os/AsyncTask;
.source "DabStationFilterByEnsembleFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;->filterDabChannleList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 58
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;->access$002(Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;Z)Z

    .line 59
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;

    iget-object p1, p1, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;->mDabChannelInfoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "mDabChannelInfoList is empty ---"

    .line 60
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->w(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;

    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;->access$100(Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 63
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;

    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;->access$200(Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;)Ljava/lang/String;

    move-result-object p1

    .line 64
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;

    iget-object v0, v0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;->mDabChannelInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/libradio/bean/DabChannelInfo;

    .line 65
    invoke-virtual {v1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getEnsembleLabel()Lcom/yftech/car/media/radio/dab/entity/DabLabel;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, ""

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getEnsembleLabel()Lcom/yftech/car/media/radio/dab/entity/DabLabel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/car/media/radio/dab/entity/DabLabel;->getLabelString()Ljava/lang/String;

    move-result-object v2

    .line 66
    :goto_1
    iget-object v3, p0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;

    invoke-static {v3}, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;->access$100(Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 67
    iget-object v3, p0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;

    invoke-static {v3}, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;->access$100(Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getEnsembleLabel()Lcom/yftech/car/media/radio/dab/entity/DabLabel;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getEnsembleLabel()Lcom/yftech/car/media/radio/dab/entity/DabLabel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/media/radio/dab/entity/DabLabel;->getLabelString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshDabChannelList filterStr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;->access$002(Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;Z)Z

    goto :goto_0

    .line 74
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;

    iget-object v1, v1, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;->mDabChannelInfoList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 76
    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;

    invoke-static {v1, v0}, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;->access$300(Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;Ljava/util/List;)V

    .line 77
    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;

    invoke-virtual {v1, v0}, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;->updateLayoutWithData(Ljava/util/List;)V

    .line 78
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;

    iget-object v0, v0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;->tvLableName:Landroid/widget/TextView;

    new-instance v1, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment$1$1;

    invoke-direct {v1, p0, p1}, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment$1$1;-><init>(Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method
