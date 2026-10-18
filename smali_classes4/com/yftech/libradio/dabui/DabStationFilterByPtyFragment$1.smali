.class Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment$1;
.super Landroid/os/AsyncTask;
.source "DabStationFilterByPtyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;->filterDabChannleList()V
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
.field final synthetic this$0:Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 87
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;

    iget-object p1, p1, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;->mDabChannelInfoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string p0, "mDabChannelInfoList is empty ---"

    .line 88
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->w(Ljava/lang/String;)V

    return-object v0

    .line 91
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 92
    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;

    iget-object v1, v1, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;->mDabChannelInfoList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 93
    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;

    invoke-static {v1, p1}, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;->access$000(Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;Ljava/util/List;)V

    .line 94
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;->updateLayoutWithData(Ljava/util/List;)V

    return-object v0
.end method
