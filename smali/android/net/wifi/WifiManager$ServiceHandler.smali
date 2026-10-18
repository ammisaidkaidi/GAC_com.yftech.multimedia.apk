.class Landroid/net/wifi/WifiManager$ServiceHandler;
.super Landroid/os/Handler;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiManager;Landroid/os/Looper;)V
    .locals 0

    .line 2836
    iput-object p1, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    .line 2837
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private dispatchMessageToListeners(Landroid/os/Message;)V
    .locals 3

    .line 2848
    iget-object v0, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->access$400(Landroid/net/wifi/WifiManager;I)Ljava/lang/Object;

    move-result-object v0

    .line 2849
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    if-eqz v0, :cond_2

    .line 2900
    check-cast v0, Landroid/net/wifi/WifiManager$TxPacketCountListener;

    iget p0, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p0}, Landroid/net/wifi/WifiManager$TxPacketCountListener;->onFailure(I)V

    goto :goto_1

    :sswitch_1
    if-eqz v0, :cond_2

    .line 2891
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/net/wifi/RssiPacketCountInfo;

    if-eqz p0, :cond_0

    .line 2893
    check-cast v0, Landroid/net/wifi/WifiManager$TxPacketCountListener;

    iget p1, p0, Landroid/net/wifi/RssiPacketCountInfo;->txgood:I

    iget p0, p0, Landroid/net/wifi/RssiPacketCountInfo;->txbad:I

    add-int/2addr p1, p0

    invoke-interface {v0, p1}, Landroid/net/wifi/WifiManager$TxPacketCountListener;->onSuccess(I)V

    goto :goto_1

    .line 2895
    :cond_0
    check-cast v0, Landroid/net/wifi/WifiManager$TxPacketCountListener;

    const/4 p0, 0x0

    invoke-interface {v0, p0}, Landroid/net/wifi/WifiManager$TxPacketCountListener;->onFailure(I)V

    goto :goto_1

    :sswitch_2
    if-eqz v0, :cond_2

    .line 2886
    check-cast v0, Landroid/net/wifi/WifiManager$ActionListener;

    invoke-interface {v0}, Landroid/net/wifi/WifiManager$ActionListener;->onSuccess()V

    goto :goto_1

    :sswitch_3
    if-eqz v0, :cond_2

    .line 2877
    check-cast v0, Landroid/net/wifi/WifiManager$ActionListener;

    iget p0, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p0}, Landroid/net/wifi/WifiManager$ActionListener;->onFailure(I)V

    goto :goto_1

    :sswitch_4
    const-string p1, "WifiManager"

    const-string v0, "Channel connection lost"

    .line 2865
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2868
    iget-object p1, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {p1, v2}, Landroid/net/wifi/WifiManager;->access$502(Landroid/net/wifi/WifiManager;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    .line 2869
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager$ServiceHandler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->quit()V

    goto :goto_1

    .line 2851
    :sswitch_5
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_1

    .line 2852
    iget-object p1, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {p1}, Landroid/net/wifi/WifiManager;->access$500(Landroid/net/wifi/WifiManager;)Lcom/android/internal/util/AsyncChannel;

    move-result-object p1

    const v0, 0x11001

    invoke-virtual {p1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_0

    :cond_1
    const-string p1, "WifiManager"

    const-string v0, "Failed to set up channel connection"

    .line 2854
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2857
    iget-object p1, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {p1, v2}, Landroid/net/wifi/WifiManager;->access$502(Landroid/net/wifi/WifiManager;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    .line 2859
    :goto_0
    iget-object p0, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {p0}, Landroid/net/wifi/WifiManager;->access$600(Landroid/net/wifi/WifiManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_2
    :goto_1
    :sswitch_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_5
        0x11002 -> :sswitch_6
        0x11004 -> :sswitch_4
        0x25002 -> :sswitch_3
        0x25003 -> :sswitch_2
        0x25005 -> :sswitch_3
        0x25006 -> :sswitch_2
        0x25008 -> :sswitch_3
        0x25009 -> :sswitch_2
        0x25012 -> :sswitch_3
        0x25013 -> :sswitch_2
        0x25015 -> :sswitch_1
        0x25016 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 2842
    invoke-static {}, Landroid/net/wifi/WifiManager;->access$300()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2843
    :try_start_0
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$ServiceHandler;->dispatchMessageToListeners(Landroid/os/Message;)V

    .line 2844
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
