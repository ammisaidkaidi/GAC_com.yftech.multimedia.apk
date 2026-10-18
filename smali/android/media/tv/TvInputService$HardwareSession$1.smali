.class Landroid/media/tv/TvInputService$HardwareSession$1;
.super Landroid/media/tv/TvInputManager$SessionCallback;
.source "TvInputService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputService$HardwareSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvInputService$HardwareSession;


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputService$HardwareSession;)V
    .locals 0

    .line 1859
    iput-object p1, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$0:Landroid/media/tv/TvInputService$HardwareSession;

    invoke-direct {p0}, Landroid/media/tv/TvInputManager$SessionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSessionCreated(Landroid/media/tv/TvInputManager$Session;)V
    .locals 2

    .line 1862
    iget-object v0, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$0:Landroid/media/tv/TvInputService$HardwareSession;

    invoke-static {v0, p1}, Landroid/media/tv/TvInputService$HardwareSession;->access$1502(Landroid/media/tv/TvInputService$HardwareSession;Landroid/media/tv/TvInputManager$Session;)Landroid/media/tv/TvInputManager$Session;

    .line 1863
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 1865
    iget-object v1, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$0:Landroid/media/tv/TvInputService$HardwareSession;

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1866
    iget-object v1, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$0:Landroid/media/tv/TvInputService$HardwareSession;

    invoke-static {v1}, Landroid/media/tv/TvInputService$HardwareSession;->access$1600(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1867
    iget-object v1, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$0:Landroid/media/tv/TvInputService$HardwareSession;

    invoke-static {v1}, Landroid/media/tv/TvInputService$HardwareSession;->access$1700(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1868
    invoke-virtual {p1}, Landroid/media/tv/TvInputManager$Session;->getToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 1869
    iget-object v1, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$0:Landroid/media/tv/TvInputService$HardwareSession;

    .line 1870
    invoke-virtual {v1}, Landroid/media/tv/TvInputService$HardwareSession;->getHardwareInputId()Ljava/lang/String;

    move-result-object v1

    .line 1869
    invoke-static {v1}, Landroid/media/tv/TvContract;->buildChannelUriForPassthroughInput(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/media/tv/TvInputManager$Session;->tune(Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1872
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1873
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1874
    iget-object v1, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$0:Landroid/media/tv/TvInputService$HardwareSession;

    invoke-static {v1}, Landroid/media/tv/TvInputService$HardwareSession;->access$1700(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1875
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 1876
    iget-object p1, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$0:Landroid/media/tv/TvInputService$HardwareSession;

    invoke-virtual {p1}, Landroid/media/tv/TvInputService$HardwareSession;->onRelease()V

    .line 1878
    :goto_0
    iget-object p0, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$0:Landroid/media/tv/TvInputService$HardwareSession;

    invoke-static {p0}, Landroid/media/tv/TvInputService$HardwareSession;->access$1800(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1879
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onVideoAvailable(Landroid/media/tv/TvInputManager$Session;)V
    .locals 1

    .line 1884
    iget-object v0, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$0:Landroid/media/tv/TvInputService$HardwareSession;

    invoke-static {v0}, Landroid/media/tv/TvInputService$HardwareSession;->access$1500(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 1885
    iget-object p0, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$0:Landroid/media/tv/TvInputService$HardwareSession;

    invoke-virtual {p0}, Landroid/media/tv/TvInputService$HardwareSession;->onHardwareVideoAvailable()V

    :cond_0
    return-void
.end method

.method public onVideoUnavailable(Landroid/media/tv/TvInputManager$Session;I)V
    .locals 1

    .line 1892
    iget-object v0, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$0:Landroid/media/tv/TvInputService$HardwareSession;

    invoke-static {v0}, Landroid/media/tv/TvInputService$HardwareSession;->access$1500(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 1893
    iget-object p0, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$0:Landroid/media/tv/TvInputService$HardwareSession;

    invoke-virtual {p0, p2}, Landroid/media/tv/TvInputService$HardwareSession;->onHardwareVideoUnavailable(I)V

    :cond_0
    return-void
.end method
