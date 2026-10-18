.class final Landroid/hardware/input/InputManager$InputDeviceVibrator;
.super Landroid/os/Vibrator;
.source "InputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputDeviceVibrator"
.end annotation


# instance fields
.field private final mDeviceId:I

.field private final mToken:Landroid/os/Binder;

.field final synthetic this$0:Landroid/hardware/input/InputManager;


# direct methods
.method public constructor <init>(Landroid/hardware/input/InputManager;I)V
    .locals 0

    .line 1175
    iput-object p1, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->this$0:Landroid/hardware/input/InputManager;

    invoke-direct {p0}, Landroid/os/Vibrator;-><init>()V

    .line 1176
    iput p2, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mDeviceId:I

    .line 1177
    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mToken:Landroid/os/Binder;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 1222
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->this$0:Landroid/hardware/input/InputManager;

    invoke-static {v0}, Landroid/hardware/input/InputManager;->access$400(Landroid/hardware/input/InputManager;)Landroid/hardware/input/IInputManager;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mDeviceId:I

    iget-object p0, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mToken:Landroid/os/Binder;

    invoke-interface {v0, v1, p0}, Landroid/hardware/input/IInputManager;->cancelVibrate(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1224
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public hasAmplitudeControl()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hasVibrator()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V
    .locals 2

    .line 1198
    instance-of p1, p3, Landroid/os/VibrationEffect$OneShot;

    if-eqz p1, :cond_0

    .line 1199
    check-cast p3, Landroid/os/VibrationEffect$OneShot;

    const/4 p1, 0x2

    .line 1200
    new-array p1, p1, [J

    const/4 p2, 0x0

    const-wide/16 v0, 0x0

    aput-wide v0, p1, p2

    const/4 p2, 0x1

    invoke-virtual {p3}, Landroid/os/VibrationEffect$OneShot;->getDuration()J

    move-result-wide p3

    aput-wide p3, p1, p2

    const/4 p2, -0x1

    goto :goto_0

    .line 1202
    :cond_0
    instance-of p1, p3, Landroid/os/VibrationEffect$Waveform;

    if-eqz p1, :cond_1

    .line 1203
    check-cast p3, Landroid/os/VibrationEffect$Waveform;

    .line 1204
    invoke-virtual {p3}, Landroid/os/VibrationEffect$Waveform;->getTimings()[J

    move-result-object p1

    .line 1205
    invoke-virtual {p3}, Landroid/os/VibrationEffect$Waveform;->getRepeatIndex()I

    move-result p2

    .line 1213
    :goto_0
    :try_start_0
    iget-object p3, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->this$0:Landroid/hardware/input/InputManager;

    invoke-static {p3}, Landroid/hardware/input/InputManager;->access$400(Landroid/hardware/input/InputManager;)Landroid/hardware/input/IInputManager;

    move-result-object p3

    iget p4, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mDeviceId:I

    iget-object p0, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mToken:Landroid/os/Binder;

    invoke-interface {p3, p4, p1, p2, p0}, Landroid/hardware/input/IInputManager;->vibrate(I[JILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1215
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    const-string p0, "InputManager"

    const-string p1, "Pre-baked effects aren\'t supported on input devices"

    .line 1208
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
