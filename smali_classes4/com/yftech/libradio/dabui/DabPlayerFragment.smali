.class public abstract Lcom/yftech/libradio/dabui/DabPlayerFragment;
.super Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;
.source "DabPlayerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/libradio/dabui/DabPlayerFragment$CarplayShowUIReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment<",
        "Lcom/yftech/libradio/presenter/DabMainPresenter;",
        ">;"
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

.field private mCarplayShowUIReceiver:Lcom/yftech/libradio/dabui/DabPlayerFragment$CarplayShowUIReceiver;

.field private mConnectedLinkStatus:Ljava/lang/String;

.field protected final mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment;->isAVMDisplaying:Z

    const/16 v1, 0x2729

    .line 35
    iput v1, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment;->RC_CARPLAY:I

    const/16 v1, 0x272a

    .line 36
    iput v1, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment;->RC_HICAR:I

    .line 38
    iput-boolean v0, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment;->isCarPlayCalled:Z

    .line 40
    iput-boolean v0, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment;->isCarplayDisconnected:Z

    const-string v0, ""

    .line 42
    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment;->mConnectedLinkStatus:Ljava/lang/String;

    .line 47
    new-instance v0, Lcom/yftech/libradio/dabui/DabPlayerFragment$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yftech/libradio/dabui/DabPlayerFragment$1;-><init>(Lcom/yftech/libradio/dabui/DabPlayerFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment;->mHandler:Landroid/os/Handler;

    .line 80
    new-instance v0, Lcom/yftech/libradio/dabui/DabPlayerFragment$2;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dabui/DabPlayerFragment$2;-><init>(Lcom/yftech/libradio/dabui/DabPlayerFragment;)V

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment;->mCarPhoneLinkCallback:Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;

    .line 103
    new-instance v0, Lcom/yftech/libradio/dabui/DabPlayerFragment$3;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dabui/DabPlayerFragment$3;-><init>(Lcom/yftech/libradio/dabui/DabPlayerFragment;)V

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/libradio/dabui/DabPlayerFragment;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment;->isAVMDisplaying:Z

    return p0
.end method

.method static synthetic access$002(Lcom/yftech/libradio/dabui/DabPlayerFragment;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment;->isAVMDisplaying:Z

    return p1
.end method

.method static synthetic access$100(Lcom/yftech/libradio/dabui/DabPlayerFragment;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment;->isCarPlayCalled:Z

    return p0
.end method

.method static synthetic access$102(Lcom/yftech/libradio/dabui/DabPlayerFragment;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment;->isCarPlayCalled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/yftech/libradio/dabui/DabPlayerFragment;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment;->isCarplayDisconnected:Z

    return p0
.end method

.method static synthetic access$202(Lcom/yftech/libradio/dabui/DabPlayerFragment;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment;->isCarplayDisconnected:Z

    return p1
.end method

.method static synthetic access$300(Lcom/yftech/libradio/dabui/DabPlayerFragment;)Z
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/yftech/libradio/dabui/DabPlayerFragment;->hasWindowFocusEx()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/yftech/libradio/dabui/DabPlayerFragment;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment;->mConnectedLinkStatus:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/yftech/libradio/dabui/DabPlayerFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment;->mConnectedLinkStatus:Ljava/lang/String;

    return-object p1
.end method

.method private hasWindowFocusEx()Z
    .locals 4

    .line 181
    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabPlayerFragment;->isUserVisible()Z

    move-result v0

    .line 182
    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->hasWindowFocus()Z

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v2

    .line 185
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasWindowFocusEx="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabPlayerFragment;->createPresenter()Lcom/yftech/libradio/presenter/DabMainPresenter;

    move-result-object p0

    return-object p0
.end method

.method protected createPresenter()Lcom/yftech/libradio/presenter/DabMainPresenter;
    .locals 1

    .line 119
    new-instance v0, Lcom/yftech/libradio/presenter/DabMainPresenter;

    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yftech/libradio/presenter/DabMainPresenter;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 124
    invoke-super {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "onCreate()"

    .line 125
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 126
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment;->mIntentFilter:Landroid/content/IntentFilter;

    .line 127
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "com.autochips.carplay.event.show_ui"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "com.yftech.avmservice.SHOW_STATE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "com.yftech.hicar.show"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    new-instance p1, Lcom/yftech/libradio/dabui/DabPlayerFragment$CarplayShowUIReceiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/yftech/libradio/dabui/DabPlayerFragment$CarplayShowUIReceiver;-><init>(Lcom/yftech/libradio/dabui/DabPlayerFragment;Lcom/yftech/libradio/dabui/DabPlayerFragment$1;)V

    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment;->mCarplayShowUIReceiver:Lcom/yftech/libradio/dabui/DabPlayerFragment$CarplayShowUIReceiver;

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 144
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onPause()V

    const-string v0, "TAG"

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 146
    iput-boolean v0, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment;->isCarPlayCalled:Z

    .line 147
    iput-boolean v0, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment;->isCarplayDisconnected:Z

    .line 148
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 149
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment;->mCarPhoneLinkCallback:Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->unregisterCarPhoneLinkCallback(Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;)V

    .line 150
    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment;->mCarplayShowUIReceiver:Lcom/yftech/libradio/dabui/DabPlayerFragment$CarplayShowUIReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 151
    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 135
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onResume()V

    .line 136
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getConnectedLinkStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment;->mConnectedLinkStatus:Ljava/lang/String;

    .line 137
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment;->mCarPhoneLinkCallback:Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;

    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->registerCarPhoneLinkCallback(Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;Landroid/os/Handler;)V

    .line 138
    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment;->mCarplayShowUIReceiver:Lcom/yftech/libradio/dabui/DabPlayerFragment$CarplayShowUIReceiver;

    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 139
    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment;->receiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabPlayerFragment;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
