.class Lcom/yftech/libradio/dabui/DabMainFragment$9;
.super Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;
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
.method constructor <init>(Lcom/yftech/libradio/dabui/DabMainFragment;)V
    .locals 0

    .line 937
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment$9;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-direct {p0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onPlayStatusChange$0(Lcom/yftech/libradio/dabui/DabMainFragment$9;)V
    .locals 0

    .line 973
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment$9;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {p0}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$600(Lcom/yftech/libradio/dabui/DabMainFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public onEnsembleListChange(I)V
    .locals 0

    .line 987
    invoke-super {p0, p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;->onEnsembleListChange(I)V

    const-string p0, "DabMainFragment->onEnsembleListChange"

    .line 988
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onFavorChange(I)V
    .locals 2

    .line 994
    invoke-super {p0, p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;->onFavorChange(I)V

    .line 995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFavorChange type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 996
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment$9;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$1700(Lcom/yftech/libradio/dabui/DabMainFragment;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/yftech/libradio/dabui/DabMainFragment$9$3;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dabui/DabMainFragment$9$3;-><init>(Lcom/yftech/libradio/dabui/DabMainFragment$9;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPlayPause(Z)V
    .locals 2

    .line 940
    invoke-super {p0, p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;->onPlayPause(Z)V

    .line 941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayPause isPlaying: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 942
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment$9;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$1700(Lcom/yftech/libradio/dabui/DabMainFragment;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/yftech/libradio/dabui/DabMainFragment$9$1;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dabui/DabMainFragment$9$1;-><init>(Lcom/yftech/libradio/dabui/DabMainFragment$9;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPlayStatusChange(Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;)V
    .locals 4

    .line 952
    invoke-super {p0, p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;->onPlayStatusChange(Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;)V

    .line 953
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment$9;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {v0}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$1700(Lcom/yftech/libradio/dabui/DabMainFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/yftech/libradio/dabui/DabMainFragment$9$2;

    invoke-direct {v1, p0}, Lcom/yftech/libradio/dabui/DabMainFragment$9$2;-><init>(Lcom/yftech/libradio/dabui/DabMainFragment$9;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 960
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment$9;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {v0}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$2100(Lcom/yftech/libradio/dabui/DabMainFragment;)Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment$9;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    .line 961
    invoke-static {v0}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$2100(Lcom/yftech/libradio/dabui/DabMainFragment;)Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getFrequency()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getFrequency()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment$9;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    .line 962
    invoke-static {v0}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$2100(Lcom/yftech/libradio/dabui/DabMainFragment;)Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getEnsembleId()I

    move-result v0

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getEnsembleId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment$9;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    .line 963
    invoke-static {v0}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$2100(Lcom/yftech/libradio/dabui/DabMainFragment;)Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getServiceId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getServiceId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    .line 966
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayStatusChange isPlaying: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 967
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment$9;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {v0, p1}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$2102(Lcom/yftech/libradio/dabui/DabMainFragment;Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;)Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    .line 968
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment$9;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$1700(Lcom/yftech/libradio/dabui/DabMainFragment;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x2715

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 973
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment$9;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$1700(Lcom/yftech/libradio/dabui/DabMainFragment;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/yftech/libradio/dabui/-$$Lambda$DabMainFragment$9$L-QFDUL4srnxoECkRe4DDZqChQ8;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dabui/-$$Lambda$DabMainFragment$9$L-QFDUL4srnxoECkRe4DDZqChQ8;-><init>(Lcom/yftech/libradio/dabui/DabMainFragment$9;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onScanStatusChange(Lcom/yftech/car/media/radio/dab/entity/DabScanStatus;Lcom/yftech/car/media/radio/dab/entity/DabScanStatus;)V
    .locals 1

    .line 979
    invoke-super {p0, p1, p2}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;->onScanStatusChange(Lcom/yftech/car/media/radio/dab/entity/DabScanStatus;Lcom/yftech/car/media/radio/dab/entity/DabScanStatus;)V

    if-eqz p1, :cond_0

    .line 980
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/DabScanStatus;->isRuning()Z

    move-result p0

    if-nez p0, :cond_0

    .line 981
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onScanStatusChange newDabScan: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",oldDabScan: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onUpdateEnableAnnounce(ZI)V
    .locals 2

    .line 1006
    invoke-super {p0, p1, p2}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;->onUpdateEnableAnnounce(ZI)V

    .line 1007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdateEnableAnnounce isNoOff:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,annotype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    .line 1008
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment$9;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {v0, p1}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$2202(Lcom/yftech/libradio/dabui/DabMainFragment;Z)Z

    .line 1009
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment$9;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {p0, p1, p2}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$2300(Lcom/yftech/libradio/dabui/DabMainFragment;ZI)V

    return-void
.end method

.method public onVersionNumbers(Ljava/lang/String;)V
    .locals 0

    .line 1014
    invoke-super {p0, p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;->onVersionNumbers(Ljava/lang/String;)V

    return-void
.end method
