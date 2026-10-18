.class public final Landroid/bluetooth/BluetoothHearingAid;
.super Ljava/lang/Object;
.source "BluetoothHearingAid.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# static fields
.field public static final ACTION_ACTIVE_DEVICE_CHANGED:Ljava/lang/String; = "android.bluetooth.hearingaid.profile.action.ACTIVE_DEVICE_CHANGED"

.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

.field public static final ACTION_PLAYING_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.hearingaid.profile.action.PLAYING_STATE_CHANGED"

.field private static final DBG:Z = false

.field public static final HI_SYNC_ID_INVALID:J = 0x0L

.field public static final MODE_BINAURAL:I = 0x1

.field public static final MODE_MONAURAL:I = 0x0

.field public static final SIDE_LEFT:I = 0x0

.field public static final SIDE_RIGHT:I = 0x1

.field public static final STATE_NOT_PLAYING:I = 0xb

.field public static final STATE_PLAYING:I = 0xa

.field private static final TAG:Ljava/lang/String; = "BluetoothHearingAid"

.field private static final VDBG:Z = false


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/bluetooth/BluetoothProfileConnector<",
            "Landroid/bluetooth/IBluetoothHearingAid;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 7

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v6, Landroid/bluetooth/BluetoothHearingAid$1;

    const-string v4, "BluetoothHearingAid"

    const-class v0, Landroid/bluetooth/IBluetoothHearingAid;

    .line 141
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v3, 0x15

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/BluetoothHearingAid$1;-><init>(Landroid/bluetooth/BluetoothHearingAid;Landroid/bluetooth/BluetoothProfile;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Landroid/bluetooth/BluetoothHearingAid;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    .line 153
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothHearingAid;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 154
    iget-object p0, p0, Landroid/bluetooth/BluetoothHearingAid;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-virtual {p0, p1, p2}, Landroid/bluetooth/BluetoothProfileConnector;->connect(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    return-void
.end method

.method private getService()Landroid/bluetooth/IBluetoothHearingAid;
    .locals 0

    .line 162
    iget-object p0, p0, Landroid/bluetooth/BluetoothHearingAid;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothProfileConnector;->getService()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/IBluetoothHearingAid;

    return-object p0
.end method

.method private isEnabled()Z
    .locals 1

    .line 613
    iget-object p0, p0, Landroid/bluetooth/BluetoothHearingAid;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result p0

    const/16 v0, 0xc

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 620
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return p0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "BluetoothHearingAid"

    .line 625
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<unknown state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "not playing"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "playing"

    return-object p0

    :pswitch_2
    const-string p0, "disconnecting"

    return-object p0

    :pswitch_3
    const-string p0, "connected"

    return-object p0

    :pswitch_4
    const-string p0, "connecting"

    return-object p0

    :pswitch_5
    const-string p0, "disconnected"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public adjustVolume(I)V
    .locals 1

    .line 493
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->getService()Landroid/bluetooth/IBluetoothHearingAid;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    const-string p0, "BluetoothHearingAid"

    const-string p1, "Proxy not attached to service"

    .line 496
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 500
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->isEnabled()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 502
    :cond_1
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothHearingAid;->adjustVolume(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "BluetoothHearingAid"

    .line 504
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Stack:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method close()V
    .locals 0

    .line 158
    iget-object p0, p0, Landroid/bluetooth/BluetoothHearingAid;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothProfileConnector;->disconnect()V

    return-void
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    .line 184
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->getService()Landroid/bluetooth/IBluetoothHearingAid;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 186
    :try_start_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHearingAid;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 187
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothHearingAid;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0

    :cond_0
    if-nez v0, :cond_1

    const-string p0, "BluetoothHearingAid"

    const-string p1, "Proxy not attached to service"

    .line 189
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "BluetoothHearingAid"

    .line 192
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Stack:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    :goto_0
    return v1
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    .line 224
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->getService()Landroid/bluetooth/IBluetoothHearingAid;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 226
    :try_start_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHearingAid;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 227
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothHearingAid;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0

    :cond_0
    if-nez v0, :cond_1

    const-string p0, "BluetoothHearingAid"

    const-string p1, "Proxy not attached to service"

    .line 229
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "BluetoothHearingAid"

    .line 232
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Stack:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    :goto_0
    return v1
.end method

.method public getActiveDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 349
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->getService()Landroid/bluetooth/IBluetoothHearingAid;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    :try_start_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 352
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothHearingAid;->getActiveDevices()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez v0, :cond_1

    const-string p0, "BluetoothHearingAid"

    const-string v0, "Proxy not attached to service"

    .line 354
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "BluetoothHearingAid"

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 243
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->getService()Landroid/bluetooth/IBluetoothHearingAid;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    :try_start_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 246
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothHearingAid;->getConnectedDevices()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez v0, :cond_1

    const-string p0, "BluetoothHearingAid"

    const-string v0, "Proxy not attached to service"

    .line 248
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "BluetoothHearingAid"

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3

    .line 282
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->getService()Landroid/bluetooth/IBluetoothHearingAid;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 284
    :try_start_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 285
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHearingAid;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 286
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothHearingAid;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0

    :cond_0
    if-nez v0, :cond_1

    const-string p0, "BluetoothHearingAid"

    const-string p1, "Proxy not attached to service"

    .line 288
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "BluetoothHearingAid"

    .line 291
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Stack:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    :goto_0
    return v1
.end method

.method public getDeviceMode(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3

    .line 598
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->getService()Landroid/bluetooth/IBluetoothHearingAid;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 600
    :try_start_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 601
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHearingAid;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 602
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothHearingAid;->getDeviceMode(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0

    :cond_0
    if-nez v0, :cond_1

    const-string p0, "BluetoothHearingAid"

    const-string p1, "Proxy not attached to service"

    .line 604
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "BluetoothHearingAid"

    .line 607
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Stack:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    :goto_0
    return v1
.end method

.method public getDeviceSide(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3

    .line 572
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->getService()Landroid/bluetooth/IBluetoothHearingAid;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 574
    :try_start_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 575
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHearingAid;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 576
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothHearingAid;->getDeviceSide(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0

    :cond_0
    if-nez v0, :cond_1

    const-string p0, "BluetoothHearingAid"

    const-string p1, "Proxy not attached to service"

    .line 578
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "BluetoothHearingAid"

    .line 581
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Stack:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    :goto_0
    return v1
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 263
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->getService()Landroid/bluetooth/IBluetoothHearingAid;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    :try_start_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 266
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothHearingAid;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez v0, :cond_1

    const-string p0, "BluetoothHearingAid"

    const-string p1, "Proxy not attached to service"

    .line 268
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "BluetoothHearingAid"

    .line 271
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Stack:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getHiSyncId(Landroid/bluetooth/BluetoothDevice;)J
    .locals 4

    .line 544
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->getService()Landroid/bluetooth/IBluetoothHearingAid;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    :try_start_0
    const-string p0, "BluetoothHearingAid"

    const-string p1, "Proxy not attached to service"

    .line 547
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    .line 551
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHearingAid;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 553
    :cond_1
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothHearingAid;->getHiSyncId(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :cond_2
    :goto_0
    return-wide v1

    :catch_0
    const-string p0, "BluetoothHearingAid"

    .line 555
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Stack:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3

    .line 411
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->getService()Landroid/bluetooth/IBluetoothHearingAid;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 413
    :try_start_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 414
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHearingAid;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 415
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothHearingAid;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0

    :cond_0
    if-nez v0, :cond_1

    const-string p0, "BluetoothHearingAid"

    const-string p1, "Proxy not attached to service"

    .line 417
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "BluetoothHearingAid"

    .line 420
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Stack:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    :goto_0
    return v1
.end method

.method public getVolume()I
    .locals 3

    .line 464
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->getService()Landroid/bluetooth/IBluetoothHearingAid;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 466
    :try_start_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 467
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothHearingAid;->getVolume()I

    move-result p0

    return p0

    :cond_0
    if-nez v0, :cond_1

    const-string p0, "BluetoothHearingAid"

    const-string v0, "Proxy not attached to service"

    .line 469
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "BluetoothHearingAid"

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stack:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    :goto_0
    return v1
.end method

.method public setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    .line 320
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->getService()Landroid/bluetooth/IBluetoothHearingAid;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 322
    :try_start_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    .line 323
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHearingAid;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 324
    :cond_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothHearingAid;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    const/4 p0, 0x1

    return p0

    :cond_1
    if-nez v0, :cond_2

    const-string p0, "BluetoothHearingAid"

    const-string p1, "Proxy not attached to service"

    .line 327
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "BluetoothHearingAid"

    .line 330
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Stack:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3

    .line 379
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->getService()Landroid/bluetooth/IBluetoothHearingAid;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 381
    :try_start_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 382
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHearingAid;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    const/16 p0, 0x64

    if-eq p2, p0, :cond_0

    return v1

    .line 387
    :cond_0
    invoke-interface {v0, p1, p2}, Landroid/bluetooth/IBluetoothHearingAid;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p0

    return p0

    :cond_1
    if-nez v0, :cond_2

    const-string p0, "BluetoothHearingAid"

    const-string p1, "Proxy not attached to service"

    .line 389
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "BluetoothHearingAid"

    .line 392
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Stack:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method public setVolume(I)V
    .locals 1

    .line 517
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->getService()Landroid/bluetooth/IBluetoothHearingAid;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    const-string p0, "BluetoothHearingAid"

    const-string p1, "Proxy not attached to service"

    .line 520
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 524
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->isEnabled()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 526
    :cond_1
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothHearingAid;->setVolume(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "BluetoothHearingAid"

    .line 528
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Stack:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
