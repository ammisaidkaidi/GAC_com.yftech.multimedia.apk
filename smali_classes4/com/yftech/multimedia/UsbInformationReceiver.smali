.class public Lcom/yftech/multimedia/UsbInformationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsbInformationReceiver.java"


# static fields
.field public static final ACTION_USB_STATUS_CHANGE_IN_PHOTO_AND_VIDEO:Ljava/lang/String; = "ACTION_USB_STATUS_CHANGE_IN_PHOTO_AND_VIDEO"

.field public static final TAG:Ljava/lang/String; = "com.yftech.multimedia.UsbInformationReceiver"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    .line 26
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    const v2, -0x4e56a26e

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "ACTION_USB_STATUS_CHANGE_IN_PHOTO_AND_VIDEO"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v1

    :goto_1
    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    const-string p0, "usbIndex"

    .line 29
    invoke-virtual {p2, p0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const-string p1, "isUsbExists"

    .line 30
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 33
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance v0, Lcom/media/common/event/USBStateForPhotoAndVideoEvent;

    invoke-direct {v0, p0, p1}, Lcom/media/common/event/USBStateForPhotoAndVideoEvent;-><init>(IZ)V

    invoke-virtual {p2, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method
