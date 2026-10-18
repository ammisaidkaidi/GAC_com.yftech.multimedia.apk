.class public Landroid/hardware/usb/UsbEndpoint;
.super Ljava/lang/Object;
.source "UsbEndpoint.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/usb/UsbEndpoint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAddress:I

.field private final mAttributes:I

.field private final mInterval:I

.field private final mMaxPacketSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 136
    new-instance v0, Landroid/hardware/usb/UsbEndpoint$1;

    invoke-direct {v0}, Landroid/hardware/usb/UsbEndpoint$1;-><init>()V

    sput-object v0, Landroid/hardware/usb/UsbEndpoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Landroid/hardware/usb/UsbEndpoint;->mAddress:I

    .line 45
    iput p2, p0, Landroid/hardware/usb/UsbEndpoint;->mAttributes:I

    .line 46
    iput p3, p0, Landroid/hardware/usb/UsbEndpoint;->mMaxPacketSize:I

    .line 47
    iput p4, p0, Landroid/hardware/usb/UsbEndpoint;->mInterval:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAddress()I
    .locals 0

    .line 60
    iget p0, p0, Landroid/hardware/usb/UsbEndpoint;->mAddress:I

    return p0
.end method

.method public getAttributes()I
    .locals 0

    .line 93
    iget p0, p0, Landroid/hardware/usb/UsbEndpoint;->mAttributes:I

    return p0
.end method

.method public getDirection()I
    .locals 0

    .line 84
    iget p0, p0, Landroid/hardware/usb/UsbEndpoint;->mAddress:I

    and-int/lit16 p0, p0, 0x80

    return p0
.end method

.method public getEndpointNumber()I
    .locals 0

    .line 69
    iget p0, p0, Landroid/hardware/usb/UsbEndpoint;->mAddress:I

    and-int/lit8 p0, p0, 0xf

    return p0
.end method

.method public getInterval()I
    .locals 0

    .line 127
    iget p0, p0, Landroid/hardware/usb/UsbEndpoint;->mInterval:I

    return p0
.end method

.method public getMaxPacketSize()I
    .locals 0

    .line 118
    iget p0, p0, Landroid/hardware/usb/UsbEndpoint;->mMaxPacketSize:I

    return p0
.end method

.method public getType()I
    .locals 0

    .line 109
    iget p0, p0, Landroid/hardware/usb/UsbEndpoint;->mAttributes:I

    and-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UsbEndpoint[mAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/usb/UsbEndpoint;->mAddress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mAttributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/usb/UsbEndpoint;->mAttributes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mMaxPacketSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/usb/UsbEndpoint;->mMaxPacketSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/hardware/usb/UsbEndpoint;->mInterval:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 156
    iget p2, p0, Landroid/hardware/usb/UsbEndpoint;->mAddress:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget p2, p0, Landroid/hardware/usb/UsbEndpoint;->mAttributes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget p2, p0, Landroid/hardware/usb/UsbEndpoint;->mMaxPacketSize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget p0, p0, Landroid/hardware/usb/UsbEndpoint;->mInterval:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
