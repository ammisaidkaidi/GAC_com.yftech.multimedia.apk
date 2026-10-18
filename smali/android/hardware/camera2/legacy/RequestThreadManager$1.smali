.class Landroid/hardware/camera2/legacy/RequestThreadManager$1;
.super Ljava/lang/Object;
.source "RequestThreadManager.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/RequestThreadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/legacy/RequestThreadManager;)V
    .locals 0

    .line 187
    iput-object p1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    .line 202
    iget-object p2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {p2}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " from the Camera1 ErrorCallback"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object p0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {p0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    goto :goto_0

    .line 197
    :pswitch_0
    iget-object p1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-virtual {p1}, Landroid/hardware/camera2/legacy/RequestThreadManager;->flush()J

    .line 198
    iget-object p0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {p0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object p0

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    goto :goto_0

    .line 192
    :pswitch_1
    iget-object p1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-virtual {p1}, Landroid/hardware/camera2/legacy/RequestThreadManager;->flush()J

    .line 193
    iget-object p0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {p0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
