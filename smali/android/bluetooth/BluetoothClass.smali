.class public final Landroid/bluetooth/BluetoothClass;
.super Ljava/lang/Object;
.source "BluetoothClass.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothClass$Device;,
        Landroid/bluetooth/BluetoothClass$Service;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothClass;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR:I = -0x1000000

.field public static final PROFILE_A2DP:I = 0x1

.field public static final PROFILE_A2DP_SINK:I = 0x6

.field public static final PROFILE_HEADSET:I = 0x0

.field public static final PROFILE_HID:I = 0x3

.field public static final PROFILE_NAP:I = 0x5

.field public static final PROFILE_OPP:I = 0x2

.field public static final PROFILE_PANU:I = 0x4


# instance fields
.field private final mClass:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    new-instance v0, Landroid/bluetooth/BluetoothClass$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothClass$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothClass;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public doesClassMatch(I)Z
    .locals 6

    const/16 v0, 0x428

    const/16 v1, 0x420

    const/high16 v2, 0x40000

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v4, :cond_2

    .line 351
    invoke-virtual {p0, v2}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return v4

    .line 357
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result p0

    const/16 p1, 0x414

    if-eq p0, p1, :cond_1

    const/16 p1, 0x418

    if-eq p0, p1, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    return v3

    :cond_1
    return v4

    :cond_2
    const/4 v5, 0x6

    if-ne p1, v5, :cond_5

    const/high16 p1, 0x80000

    .line 367
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result p1

    if-eqz p1, :cond_3

    return v4

    .line 373
    :cond_3
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result p0

    const/16 p1, 0x424

    if-eq p0, p1, :cond_4

    if-eq p0, v0, :cond_4

    const/16 p1, 0x42c

    if-eq p0, p1, :cond_4

    return v3

    :cond_4
    return v4

    :cond_5
    if-nez p1, :cond_8

    .line 384
    invoke-virtual {p0, v2}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result p1

    if-eqz p1, :cond_6

    return v4

    .line 388
    :cond_6
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result p0

    const/16 p1, 0x404

    if-eq p0, p1, :cond_7

    const/16 p1, 0x408

    if-eq p0, p1, :cond_7

    if-eq p0, v1, :cond_7

    return v3

    :cond_7
    return v4

    :cond_8
    const/4 v0, 0x2

    if-ne p1, v0, :cond_a

    const/high16 p1, 0x100000

    .line 397
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result p1

    if-eqz p1, :cond_9

    return v4

    .line 401
    :cond_9
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result p0

    sparse-switch p0, :sswitch_data_0

    return v3

    :sswitch_0
    return v4

    :cond_a
    const/4 v0, 0x3

    if-ne p1, v0, :cond_c

    .line 420
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result p0

    const/16 p1, 0x500

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_b

    move v3, v4

    :cond_b
    return v3

    :cond_c
    const/4 v0, 0x4

    if-eq p1, v0, :cond_e

    const/4 v0, 0x5

    if-ne p1, v0, :cond_d

    goto :goto_0

    :cond_d
    return v3

    :cond_e
    :goto_0
    const/high16 p1, 0x20000

    .line 423
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result p1

    if-eqz p1, :cond_f

    return v4

    .line 426
    :cond_f
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result p0

    const/16 p1, 0x300

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_10

    move v3, v4

    :cond_10
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x104 -> :sswitch_0
        0x108 -> :sswitch_0
        0x10c -> :sswitch_0
        0x110 -> :sswitch_0
        0x114 -> :sswitch_0
        0x118 -> :sswitch_0
        0x200 -> :sswitch_0
        0x204 -> :sswitch_0
        0x208 -> :sswitch_0
        0x20c -> :sswitch_0
        0x210 -> :sswitch_0
        0x214 -> :sswitch_0
    .end sparse-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 72
    instance-of v0, p1, Landroid/bluetooth/BluetoothClass;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 73
    iget p0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    check-cast p1, Landroid/bluetooth/BluetoothClass;

    iget p1, p1, Landroid/bluetooth/BluetoothClass;->mClass:I

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public getClassOfDevice()I
    .locals 0

    .line 295
    iget p0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    return p0
.end method

.method public getClassOfDeviceBytes()[B
    .locals 2

    const/4 v0, 0x4

    .line 315
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 316
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget p0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    .line 317
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 318
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    .line 321
    array-length v0, p0

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public getDeviceClass()I
    .locals 0

    .line 279
    iget p0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    and-int/lit16 p0, p0, 0x1ffc

    return p0
.end method

.method public getMajorDeviceClass()I
    .locals 0

    .line 266
    iget p0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    and-int/lit16 p0, p0, 0x1f00

    return p0
.end method

.method public hasService(I)Z
    .locals 1

    .line 138
    iget p0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    const v0, 0xffe000

    and-int/2addr p0, v0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 80
    iget p0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 85
    iget p0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 106
    iget p0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
