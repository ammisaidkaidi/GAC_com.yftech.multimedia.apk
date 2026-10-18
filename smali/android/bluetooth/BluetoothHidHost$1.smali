.class Landroid/bluetooth/BluetoothHidHost$1;
.super Landroid/bluetooth/BluetoothProfileConnector;
.source "BluetoothHidHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHidHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothHidHost;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothHidHost;Landroid/bluetooth/BluetoothProfile;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 222
    iput-object p1, p0, Landroid/bluetooth/BluetoothHidHost$1;->this$0:Landroid/bluetooth/BluetoothHidHost;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/bluetooth/BluetoothProfileConnector;-><init>(Landroid/bluetooth/BluetoothProfile;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getServiceInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHidHost;
    .locals 0

    .line 225
    invoke-static {p1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/bluetooth/IBluetoothHidHost$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHidHost;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getServiceInterface(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    .line 222
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHidHost$1;->getServiceInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHidHost;

    move-result-object p0

    return-object p0
.end method
