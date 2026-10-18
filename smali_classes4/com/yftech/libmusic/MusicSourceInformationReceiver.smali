.class public Lcom/yftech/libmusic/MusicSourceInformationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MusicSourceInformationReceiver.java"


# static fields
.field public static final ACTION_BLUETOOTH_STATUS_CHANGE:Ljava/lang/String; = "ACTION_BLUETOOTH_STATUS_CHANGE"

.field public static final ACTION_CARLIFE_STATUS_CHANGE:Ljava/lang/String; = "ACTION_CARLIFE_STATUS_CHANGE"

.field public static final ACTION_CARPLAY_STATUS_CHANGE:Ljava/lang/String; = "ACTION_CARPLAY_STATUS_CHANGE"

.field public static final ACTION_USB_STATUS_CHANGE:Ljava/lang/String; = "ACTION_USB_STATUS_CHANGE"

.field public static final TAG:Ljava/lang/String; = "com.yftech.libmusic.MusicSourceInformationReceiver"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 34
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const v0, -0x611d9dfb

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_3

    const v0, -0xe0d5cc7

    if-eq p1, v0, :cond_2

    const v0, 0x40727c3d

    if-eq p1, v0, :cond_1

    const v0, 0x597315a3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "ACTION_BLUETOOTH_STATUS_CHANGE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const-string p1, "ACTION_CARPLAY_STATUS_CHANGE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x3

    goto :goto_1

    :cond_2
    const-string p1, "ACTION_USB_STATUS_CHANGE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    move p0, v2

    goto :goto_1

    :cond_3
    const-string p1, "ACTION_CARLIFE_STATUS_CHANGE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x2

    goto :goto_1

    :cond_4
    :goto_0
    move p0, v1

    :goto_1
    packed-switch p0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string p0, "carplay_state"

    .line 60
    invoke-virtual {p2, p0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 63
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/yftech/libmusic/event/CarPlayStateEvent;

    invoke-direct {p2, p0}, Lcom/yftech/libmusic/event/CarPlayStateEvent;-><init>(I)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_1
    const-string p0, "mIsCarLifeConnect"

    .line 53
    invoke-virtual {p2, p0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    .line 56
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/yftech/libmusic/event/CarLifeStatusEvent;

    invoke-direct {p2, p0}, Lcom/yftech/libmusic/event/CarLifeStatusEvent;-><init>(Z)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_2
    const-string p0, "state"

    .line 45
    invoke-virtual {p2, p0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const-string p1, "deviceName"

    .line 46
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 49
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance v0, Lcom/yftech/libmusic/event/BluetoothStateEvent;

    invoke-direct {v0, p0, p1}, Lcom/yftech/libmusic/event/BluetoothStateEvent;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_3
    const-string p0, "usbIndex"

    .line 37
    invoke-virtual {p2, p0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const-string p1, "isUsbExists"

    .line 38
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 41
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance v0, Lcom/media/common/event/USBStateEvent;

    invoke-direct {v0, p0, p1}, Lcom/media/common/event/USBStateEvent;-><init>(IZ)V

    invoke-virtual {p2, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_5
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
