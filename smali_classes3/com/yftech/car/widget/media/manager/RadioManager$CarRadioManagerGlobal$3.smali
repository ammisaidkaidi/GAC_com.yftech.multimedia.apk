.class Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal$3;
.super Lcom/yftech/car/media/radio/ICarRadioCallback$Stub;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)V
    .locals 0

    .line 1999
    iput-object p1, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    invoke-direct {p0}, Lcom/yftech/car/media/radio/ICarRadioCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onAudioFocusChange(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2035
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    invoke-static {v0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$5800(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2037
    iget-object v2, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    invoke-static {v2}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$5800(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/manager/RadioManager$OnRadioControlListener;

    .line 2038
    invoke-interface {v2, p1}, Lcom/yftech/car/widget/media/manager/RadioManager$OnRadioControlListener;->onAudioFocusChange(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onFavorChange(ILcom/yftech/car/media/radio/entity/DataOfRadio;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2044
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    invoke-static {v0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$5800(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2046
    iget-object v2, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    invoke-static {v2}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$5800(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/manager/RadioManager$OnRadioControlListener;

    .line 2047
    invoke-interface {v2, p1, p2}, Lcom/yftech/car/widget/media/manager/RadioManager$OnRadioControlListener;->onFavorChange(ILcom/yftech/car/media/radio/entity/DataOfRadio;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onFreqChanage(ILcom/yftech/car/media/radio/entity/DataOfRadio;Lcom/yftech/car/media/radio/entity/DataOfRadio;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2024
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    invoke-static {v0, p2}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$5902(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;Lcom/yftech/car/media/radio/entity/DataOfRadio;)Lcom/yftech/car/media/radio/entity/DataOfRadio;

    .line 2025
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    invoke-static {v0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$5800(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2027
    iget-object v2, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    invoke-static {v2}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$5800(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/manager/RadioManager$OnRadioControlListener;

    .line 2028
    invoke-interface {v2, p2, p3}, Lcom/yftech/car/widget/media/manager/RadioManager$OnRadioControlListener;->onFreqChange(Lcom/yftech/car/media/radio/entity/DataOfRadio;Lcom/yftech/car/media/radio/entity/DataOfRadio;)V

    .line 2029
    invoke-interface {v2, p1, p2, p3}, Lcom/yftech/car/widget/media/manager/RadioManager$OnRadioControlListener;->onFreqChanage(ILcom/yftech/car/media/radio/entity/DataOfRadio;Lcom/yftech/car/media/radio/entity/DataOfRadio;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onFreqSignal(ILcom/yftech/car/media/radio/entity/DataOfRadio;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2002
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    invoke-static {v0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$5800(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2004
    iget-object v2, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    invoke-static {v2}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$5800(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/manager/RadioManager$OnRadioControlListener;

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    .line 2006
    invoke-interface {v2, p2, p3}, Lcom/yftech/car/widget/media/manager/RadioManager$OnRadioControlListener;->onPlaySignalUpdate(Lcom/yftech/car/media/radio/entity/DataOfRadio;I)V

    goto :goto_1

    .line 2008
    :cond_0
    invoke-interface {v2, p2, p3}, Lcom/yftech/car/widget/media/manager/RadioManager$OnRadioControlListener;->onScanFreqSignal(Lcom/yftech/car/media/radio/entity/DataOfRadio;I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onPlayPause(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2053
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    invoke-static {v0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$5800(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2055
    iget-object v2, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    invoke-static {v2}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$5800(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/manager/RadioManager$OnRadioControlListener;

    .line 2056
    invoke-interface {v2, p1}, Lcom/yftech/car/widget/media/manager/RadioManager$OnRadioControlListener;->onPlayPause(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRadioMute(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2108
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    invoke-static {v0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$5800(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2110
    iget-object v2, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    invoke-static {v2}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$5800(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/manager/RadioManager$OnRadioControlListener;

    .line 2111
    invoke-interface {v2, p1}, Lcom/yftech/car/widget/media/manager/RadioManager$OnRadioControlListener;->onRadioMute(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRdsCommonStatusChange(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2062
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    invoke-static {v0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$5800(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2064
    iget-object v2, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    invoke-static {v2}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$5800(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    .line 2065
    iget-object v2, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    invoke-static {v2}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$5800(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/manager/RadioManager$OnRadioControlListener;

    .line 2066
    invoke-interface {v2, p1, p2}, Lcom/yftech/car/widget/media/manager/RadioManager$OnRadioControlListener;->onRdsCommonStatusChange(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRdsCommonStringChange(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2072
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    invoke-static {v0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$5800(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2074
    iget-object v2, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    invoke-static {v2}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$5800(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/manager/RadioManager$OnRadioControlListener;

    .line 2075
    invoke-interface {v2, p1, p2}, Lcom/yftech/car/widget/media/manager/RadioManager$OnRadioControlListener;->onRdsCommonStringChange(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRdsPiFreqChange(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2099
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    invoke-static {v0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$5800(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2101
    iget-object v2, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    invoke-static {v2}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$5800(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/manager/RadioManager$OnRadioControlListener;

    .line 2102
    invoke-interface {v2, p1, p2}, Lcom/yftech/car/widget/media/manager/RadioManager$OnRadioControlListener;->onRdsPiFreqChange(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRdsPtyStatusChange(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2081
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    invoke-static {v0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$5800(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2083
    iget-object v2, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    invoke-static {v2}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$5800(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/manager/RadioManager$OnRadioControlListener;

    .line 2084
    invoke-interface {v2, p1}, Lcom/yftech/car/widget/media/manager/RadioManager$OnRadioControlListener;->onRdsPtyStatusChange(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRdsScanStatusChange(Lcom/yftech/car/media/radio/rds/entity/RdsInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2090
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    invoke-static {v0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$5800(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2092
    iget-object v2, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    invoke-static {v2}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$5800(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/manager/RadioManager$OnRadioControlListener;

    .line 2093
    invoke-interface {v2, p1}, Lcom/yftech/car/widget/media/manager/RadioManager$OnRadioControlListener;->onRdsScanStatusChange(Lcom/yftech/car/media/radio/rds/entity/RdsInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSeekStatusChange(III)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2015
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    invoke-static {v0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$5800(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2017
    iget-object v2, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    invoke-static {v2}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$5800(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/manager/RadioManager$OnRadioControlListener;

    .line 2018
    invoke-interface {v2, p1, p2, p3}, Lcom/yftech/car/widget/media/manager/RadioManager$OnRadioControlListener;->onSeekStatusChange(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
