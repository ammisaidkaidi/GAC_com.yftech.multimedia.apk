.class public final Landroid/hardware/hdmi/HdmiHotplugEvent;
.super Ljava/lang/Object;
.source "HdmiHotplugEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/hdmi/HdmiHotplugEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mConnected:Z

.field private final mPort:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    new-instance v0, Landroid/hardware/hdmi/HdmiHotplugEvent$1;

    invoke-direct {v0}, Landroid/hardware/hdmi/HdmiHotplugEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/hdmi/HdmiHotplugEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Landroid/hardware/hdmi/HdmiHotplugEvent;->mPort:I

    .line 43
    iput-boolean p2, p0, Landroid/hardware/hdmi/HdmiHotplugEvent;->mConnected:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPort()I
    .locals 0

    .line 52
    iget p0, p0, Landroid/hardware/hdmi/HdmiHotplugEvent;->mPort:I

    return p0
.end method

.method public isConnected()Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Landroid/hardware/hdmi/HdmiHotplugEvent;->mConnected:Z

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 82
    iget p2, p0, Landroid/hardware/hdmi/HdmiHotplugEvent;->mPort:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget-boolean p0, p0, Landroid/hardware/hdmi/HdmiHotplugEvent;->mConnected:Z

    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
