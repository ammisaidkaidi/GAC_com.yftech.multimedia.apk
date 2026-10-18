.class public final Landroid/net/IpSecSpiResponse;
.super Ljava/lang/Object;
.source "IpSecSpiResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/IpSecSpiResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "IpSecSpiResponse"


# instance fields
.field public final resourceId:I

.field public final spi:I

.field public final status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Landroid/net/IpSecSpiResponse$1;

    invoke-direct {v0}, Landroid/net/IpSecSpiResponse$1;-><init>()V

    sput-object v0, Landroid/net/IpSecSpiResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 57
    iput p1, p0, Landroid/net/IpSecSpiResponse;->status:I

    const/4 p1, -0x1

    .line 58
    iput p1, p0, Landroid/net/IpSecSpiResponse;->resourceId:I

    const/4 p1, 0x0

    .line 59
    iput p1, p0, Landroid/net/IpSecSpiResponse;->spi:I

    return-void

    .line 55
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Valid status implies other args must be provided"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Landroid/net/IpSecSpiResponse;->status:I

    .line 49
    iput p2, p0, Landroid/net/IpSecSpiResponse;->resourceId:I

    .line 50
    iput p3, p0, Landroid/net/IpSecSpiResponse;->spi:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecSpiResponse;->status:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecSpiResponse;->resourceId:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/net/IpSecSpiResponse;->spi:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/IpSecSpiResponse$1;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Landroid/net/IpSecSpiResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 42
    iget p2, p0, Landroid/net/IpSecSpiResponse;->status:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget p2, p0, Landroid/net/IpSecSpiResponse;->resourceId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget p0, p0, Landroid/net/IpSecSpiResponse;->spi:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
