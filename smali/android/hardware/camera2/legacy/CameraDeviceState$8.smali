.class Landroid/hardware/camera2/legacy/CameraDeviceState$8;
.super Ljava/lang/Object;
.source "CameraDeviceState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/legacy/CameraDeviceState;->doStateTransition(IJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/legacy/CameraDeviceState;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/legacy/CameraDeviceState;)V
    .locals 0

    .line 320
    iput-object p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState$8;->this$0:Landroid/hardware/camera2/legacy/CameraDeviceState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 323
    iget-object p0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState$8;->this$0:Landroid/hardware/camera2/legacy/CameraDeviceState;

    invoke-static {p0}, Landroid/hardware/camera2/legacy/CameraDeviceState;->access$000(Landroid/hardware/camera2/legacy/CameraDeviceState;)Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    move-result-object p0

    invoke-interface {p0}, Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;->onIdle()V

    return-void
.end method
