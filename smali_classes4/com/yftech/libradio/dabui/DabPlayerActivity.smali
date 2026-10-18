.class public abstract Lcom/yftech/libradio/dabui/DabPlayerActivity;
.super Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;
.source "DabPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/libradio/dabui/DabPlayerActivity$CarplayShowUIReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;",
        ">",
        "Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;"
    }
.end annotation


# static fields
.field private static final ACTION_CARPLAY_EVENT_SHOW_UI:Ljava/lang/String; = "com.autochips.carplay.event.show_ui"

.field private static final KEY_CARPLAY_EVENT_SHOW_UI:Ljava/lang/String; = "ui_show"


# instance fields
.field private final RC_CARPLAY:I

.field private final RC_HICAR:I

.field private isAVMDisplaying:Z

.field private isCarPlayCalled:Z

.field private isCarplayDisconnected:Z

.field private mCarPhoneLinkCallback:Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;

.field private mCarplayShowUIReceiver:Lcom/yftech/libradio/dabui/DabPlayerActivity$CarplayShowUIReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yftech/libradio/dabui/DabPlayerActivity<",
            "TT;>.CarplayShowUIReceiver;"
        }
    .end annotation
.end field

.field private mConnectedLinkStatus:Ljava/lang/String;

.field protected final mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/yftech/libradio/dabui/DabPlayerActivity;->isAVMDisplaying:Z

    const/16 v1, 0x2729

    .line 35
    iput v1, p0, Lcom/yftech/libradio/dabui/DabPlayerActivity;->RC_CARPLAY:I

    const/16 v1, 0x272a

    .line 36
    iput v1, p0, Lcom/yftech/libradio/dabui/DabPlayerActivity;->RC_HICAR:I

    .line 38
    iput-boolean v0, p0, Lcom/yftech/libradio/dabui/DabPlayerActivity;->isCarPlayCalled:Z

    .line 40
    iput-boolean v0, p0, Lcom/yftech/libradio/dabui/DabPlayerActivity;->isCarplayDisconnected:Z

    const-string v0, ""

    .line 42
    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabPlayerActivity;->mConnectedLinkStatus:Ljava/lang/String;

    .line 47
    new-instance v0, Lcom/yftech/libradio/dabui/DabPlayerActivity$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yftech/libradio/dabui/DabPlayerActivity$1;-><init>(Lcom/yftech/libradio/dabui/DabPlayerActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabPlayerActivity;->mHandler:Landroid/os/Handler;

    .line 80
    new-instance v0, Lcom/yftech/libradio/dabui/DabPlayerActivity$2;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dabui/DabPlayerActivity$2;-><init>(Lcom/yftech/libradio/dabui/DabPlayerActivity;)V

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabPlayerActivity;->mCarPhoneLinkCallback:Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;

    .line 103
    new-instance v0, Lcom/yftech/libradio/dabui/DabPlayerActivity$3;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dabui/DabPlayerActivity$3;-><init>(Lcom/yftech/libradio/dabui/DabPlayerActivity;)V

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabPlayerActivity;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/libradio/dabui/DabPlayerActivity;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/yftech/libradio/dabui/DabPlayerActivity;->isAVMDisplaying:Z

    return p0
.end method

.method static synthetic access$002(Lcom/yftech/libradio/dabui/DabPlayerActivity;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/yftech/libradio/dabui/DabPlayerActivity;->isAVMDisplaying:Z

    return p1
.end method

.method static synthetic access$100(Lcom/yftech/libradio/dabui/DabPlayerActivity;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/yftech/libradio/dabui/DabPlayerActivity;->isCarPlayCalled:Z

    return p0
.end method

.method static synthetic access$102(Lcom/yftech/libradio/dabui/DabPlayerActivity;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/yftech/libradio/dabui/DabPlayerActivity;->isCarPlayCalled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/yftech/libradio/dabui/DabPlayerActivity;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/yftech/libradio/dabui/DabPlayerActivity;->isCarplayDisconnected:Z

    return p0
.end method

.method static synthetic access$202(Lcom/yftech/libradio/dabui/DabPlayerActivity;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/yftech/libradio/dabui/DabPlayerActivity;->isCarplayDisconnected:Z

    return p1
.end method

.method static synthetic access$300(Lcom/yftech/libradio/dabui/DabPlayerActivity;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabPlayerActivity;->mConnectedLinkStatus:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/yftech/libradio/dabui/DabPlayerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabPlayerActivity;->mConnectedLinkStatus:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 119
    invoke-super {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "onCreate()"

    .line 120
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 121
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabPlayerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 122
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabPlayerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "com.autochips.carplay.event.show_ui"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabPlayerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "com.yftech.avmservice.SHOW_STATE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabPlayerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "com.yftech.hicar.show"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    new-instance p1, Lcom/yftech/libradio/dabui/DabPlayerActivity$CarplayShowUIReceiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/yftech/libradio/dabui/DabPlayerActivity$CarplayShowUIReceiver;-><init>(Lcom/yftech/libradio/dabui/DabPlayerActivity;Lcom/yftech/libradio/dabui/DabPlayerActivity$1;)V

    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabPlayerActivity;->mCarplayShowUIReceiver:Lcom/yftech/libradio/dabui/DabPlayerActivity$CarplayShowUIReceiver;

    return-void
.end method

.method protected onStart()V
    .locals 4

    .line 142
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onStart()V

    .line 143
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getConnectedLinkStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabPlayerActivity;->mConnectedLinkStatus:Ljava/lang/String;

    .line 144
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabPlayerActivity;->mCarPhoneLinkCallback:Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;

    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabPlayerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->registerCarPhoneLinkCallback(Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;Landroid/os/Handler;)V

    .line 145
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabPlayerActivity;->mCarplayShowUIReceiver:Lcom/yftech/libradio/dabui/DabPlayerActivity$CarplayShowUIReceiver;

    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabPlayerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/yftech/libradio/dabui/DabPlayerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 146
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabPlayerActivity;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabPlayerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/yftech/libradio/dabui/DabPlayerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 147
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->isPlaying()Z

    move-result v0

    .line 148
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getScanStatus()Lcom/yftech/car/media/radio/dab/entity/DabScanStatus;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {v1}, Lcom/yftech/car/media/radio/dab/entity/DabScanStatus;->isRuning()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 150
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStart() isPlaying:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " connectedLinkStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabPlayerActivity;->mConnectedLinkStatus:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " isScanning:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 152
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->play()V

    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 130
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onStop()V

    const-string v0, "onStop()"

    .line 131
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 132
    iput-boolean v0, p0, Lcom/yftech/libradio/dabui/DabPlayerActivity;->isCarPlayCalled:Z

    .line 133
    iput-boolean v0, p0, Lcom/yftech/libradio/dabui/DabPlayerActivity;->isCarplayDisconnected:Z

    .line 134
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabPlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 135
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabPlayerActivity;->mCarPhoneLinkCallback:Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->unregisterCarPhoneLinkCallback(Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;)V

    .line 136
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabPlayerActivity;->mCarplayShowUIReceiver:Lcom/yftech/libradio/dabui/DabPlayerActivity$CarplayShowUIReceiver;

    invoke-virtual {p0, v0}, Lcom/yftech/libradio/dabui/DabPlayerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 137
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabPlayerActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/yftech/libradio/dabui/DabPlayerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
