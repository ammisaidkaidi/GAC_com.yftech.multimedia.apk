.class Landroid/net/wifi/WifiScanner$ServiceHandler;
.super Landroid/os/Handler;
.source "WifiScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiScanner;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiScanner;Landroid/os/Looper;)V
    .locals 0

    .line 1333
    iput-object p1, p0, Landroid/net/wifi/WifiScanner$ServiceHandler;->this$0:Landroid/net/wifi/WifiScanner;

    .line 1334
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1338
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x11002

    if-eq v0, v1, :cond_2

    const v1, 0x11004

    if-eq v0, v1, :cond_1

    .line 1350
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ServiceHandler;->this$0:Landroid/net/wifi/WifiScanner;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1}, Landroid/net/wifi/WifiScanner;->access$100(Landroid/net/wifi/WifiScanner;I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1359
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    return-void

    .line 1383
    :sswitch_0
    check-cast v0, Landroid/net/wifi/WifiScanner$PnoScanListener;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    .line 1384
    invoke-virtual {p0}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object p0

    .line 1383
    invoke-interface {v0, p0}, Landroid/net/wifi/WifiScanner$PnoScanListener;->onPnoNetworkFound([Landroid/net/wifi/ScanResult;)V

    return-void

    .line 1380
    :sswitch_1
    iget-object p0, p0, Landroid/net/wifi/WifiScanner$ServiceHandler;->this$0:Landroid/net/wifi/WifiScanner;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, p1}, Landroid/net/wifi/WifiScanner;->access$200(Landroid/net/wifi/WifiScanner;I)Ljava/lang/Object;

    goto :goto_0

    .line 1375
    :sswitch_2
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/net/wifi/ScanResult;

    .line 1376
    check-cast v0, Landroid/net/wifi/WifiScanner$ScanListener;

    invoke-interface {v0, p0}, Landroid/net/wifi/WifiScanner$ScanListener;->onFullResult(Landroid/net/wifi/ScanResult;)V

    return-void

    .line 1365
    :sswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiScanner$OperationResult;

    .line 1366
    check-cast v0, Landroid/net/wifi/WifiScanner$ActionListener;

    iget v2, v1, Landroid/net/wifi/WifiScanner$OperationResult;->reason:I

    iget-object v1, v1, Landroid/net/wifi/WifiScanner$OperationResult;->description:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/net/wifi/WifiScanner$ActionListener;->onFailure(ILjava/lang/String;)V

    .line 1367
    iget-object p0, p0, Landroid/net/wifi/WifiScanner$ServiceHandler;->this$0:Landroid/net/wifi/WifiScanner;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, p1}, Landroid/net/wifi/WifiScanner;->access$200(Landroid/net/wifi/WifiScanner;I)Ljava/lang/Object;

    goto :goto_0

    .line 1362
    :sswitch_4
    check-cast v0, Landroid/net/wifi/WifiScanner$ActionListener;

    invoke-interface {v0}, Landroid/net/wifi/WifiScanner$ActionListener;->onSuccess()V

    :goto_0
    return-void

    .line 1371
    :sswitch_5
    check-cast v0, Landroid/net/wifi/WifiScanner$ScanListener;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/net/wifi/WifiScanner$ParcelableScanData;

    .line 1372
    invoke-virtual {p0}, Landroid/net/wifi/WifiScanner$ParcelableScanData;->getResults()[Landroid/net/wifi/WifiScanner$ScanData;

    move-result-object p0

    .line 1371
    invoke-interface {v0, p0}, Landroid/net/wifi/WifiScanner$ScanListener;->onResults([Landroid/net/wifi/WifiScanner$ScanData;)V

    return-void

    :cond_1
    const-string p1, "WifiScanner"

    const-string v0, "Channel connection lost"

    .line 1342
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    iget-object p1, p0, Landroid/net/wifi/WifiScanner$ServiceHandler;->this$0:Landroid/net/wifi/WifiScanner;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/net/wifi/WifiScanner;->access$002(Landroid/net/wifi/WifiScanner;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    .line 1346
    invoke-virtual {p0}, Landroid/net/wifi/WifiScanner$ServiceHandler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->quit()V

    return-void

    :cond_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x27005 -> :sswitch_5
        0x27011 -> :sswitch_4
        0x27012 -> :sswitch_3
        0x27014 -> :sswitch_2
        0x27017 -> :sswitch_1
        0x2701a -> :sswitch_0
    .end sparse-switch
.end method
