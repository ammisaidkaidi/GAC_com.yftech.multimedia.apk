.class public abstract Lcom/yftech/vehicle/internal/ICarService$Stub;
.super Landroid/os/Binder;
.source "ICarService.java"

# interfaces
.implements Lcom/yftech/vehicle/internal/ICarService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/ICarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/vehicle/internal/ICarService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.yftech.vehicle.internal.ICarService"

.field static final TRANSACTION_getSignalValue:I = 0x1

.field static final TRANSACTION_getSignalsValue:I = 0x2

.field static final TRANSACTION_registerSignalCallback:I = 0x4

.field static final TRANSACTION_setSignalValue:I = 0x3

.field static final TRANSACTION_unregisterSignalCallback:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.yftech.vehicle.internal.ICarService"

    .line 17
    invoke-virtual {p0, p0, v0}, Lcom/yftech/vehicle/internal/ICarService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/yftech/vehicle/internal/ICarService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.yftech.vehicle.internal.ICarService"

    .line 28
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 29
    instance-of v1, v0, Lcom/yftech/vehicle/internal/ICarService;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/yftech/vehicle/internal/ICarService;

    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/yftech/vehicle/internal/ICarService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/yftech/vehicle/internal/ICarService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.yftech.vehicle.internal.ICarService"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 92
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/yftech/vehicle/internal/ISignalCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yftech/vehicle/internal/ISignalCallback;

    move-result-object p1

    .line 95
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/internal/ICarService$Stub;->unregisterSignalCallback(Lcom/yftech/vehicle/internal/ISignalCallback;)V

    return v2

    .line 82
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/yftech/vehicle/internal/ISignalCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yftech/vehicle/internal/ISignalCallback;

    move-result-object p1

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p2

    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/yftech/vehicle/internal/ICarService$Stub;->registerSignalCallback(Lcom/yftech/vehicle/internal/ISignalCallback;[I)V

    return v2

    .line 70
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/yftech/vehicle/internal/ICarService$Stub;->setSignalValue(I[B)Z

    move-result p0

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 60
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 63
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/internal/ICarService$Stub;->getSignalsValue([I)[B

    move-result-object p0

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    return v2

    .line 50
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 53
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/internal/ICarService$Stub;->getSignalValue(I)[B

    move-result-object p0

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    return v2

    .line 45
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
