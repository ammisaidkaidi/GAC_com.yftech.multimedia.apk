.class public Landroid/hardware/soundtrigger/SoundTriggerModule;
.super Ljava/lang/Object;
.source "SoundTriggerModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;
    }
.end annotation


# static fields
.field private static final EVENT_RECOGNITION:I = 0x1

.field private static final EVENT_SERVICE_DIED:I = 0x2

.field private static final EVENT_SERVICE_STATE_CHANGE:I = 0x4

.field private static final EVENT_SOUNDMODEL:I = 0x3


# instance fields
.field private mEventHandlerDelegate:Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;

.field private mId:I

.field private mNativeContext:J


# direct methods
.method constructor <init>(ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Handler;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mId:I

    .line 44
    new-instance p1, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;

    invoke-direct {p1, p0, p2, p3}, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;-><init>(Landroid/hardware/soundtrigger/SoundTriggerModule;Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Handler;)V

    iput-object p1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mEventHandlerDelegate:Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;

    .line 45
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->native_setup(Ljava/lang/Object;)V

    return-void
.end method

.method private native native_finalize()V
.end method

.method private native native_setup(Ljava/lang/Object;)V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 0

    .line 186
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez p0, :cond_0

    return-void

    .line 191
    :cond_0
    iget-object p0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mEventHandlerDelegate:Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;

    if-eqz p0, :cond_1

    .line 193
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;->handler()Landroid/os/Handler;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 195
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 196
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public native detach()V
.end method

.method protected finalize()V
    .locals 0

    .line 51
    invoke-direct {p0}, Landroid/hardware/soundtrigger/SoundTriggerModule;->native_finalize()V

    return-void
.end method

.method public native loadSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;[I)I
.end method

.method public native startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
.end method

.method public native stopRecognition(I)I
.end method

.method public native unloadSoundModel(I)I
.end method
