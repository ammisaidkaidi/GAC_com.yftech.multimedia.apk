.class public final Landroid/bluetooth/BluetoothCodecStatus;
.super Ljava/lang/Object;
.source "BluetoothCodecStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothCodecStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_CODEC_STATUS:Ljava/lang/String; = "android.bluetooth.codec.extra.CODEC_STATUS"


# instance fields
.field private final mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

.field private final mCodecsLocalCapabilities:[Landroid/bluetooth/BluetoothCodecConfig;

.field private final mCodecsSelectableCapabilities:[Landroid/bluetooth/BluetoothCodecConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 108
    new-instance v0, Landroid/bluetooth/BluetoothCodecStatus$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothCodecStatus$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothCodecStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothCodecConfig;[Landroid/bluetooth/BluetoothCodecConfig;[Landroid/bluetooth/BluetoothCodecConfig;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    .line 51
    iput-object p2, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:[Landroid/bluetooth/BluetoothCodecConfig;

    .line 52
    iput-object p3, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsSelectableCapabilities:[Landroid/bluetooth/BluetoothCodecConfig;

    return-void
.end method

.method private static sameCapabilities([Landroid/bluetooth/BluetoothCodecConfig;[Landroid/bluetooth/BluetoothCodecConfig;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    return v0

    .line 83
    :cond_2
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_3

    return v0

    .line 86
    :cond_3
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 57
    instance-of v0, p1, Landroid/bluetooth/BluetoothCodecStatus;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 58
    check-cast p1, Landroid/bluetooth/BluetoothCodecStatus;

    .line 59
    iget-object v0, p1, Landroid/bluetooth/BluetoothCodecStatus;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    iget-object v2, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:[Landroid/bluetooth/BluetoothCodecConfig;

    iget-object v2, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:[Landroid/bluetooth/BluetoothCodecConfig;

    .line 60
    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothCodecStatus;->sameCapabilities([Landroid/bluetooth/BluetoothCodecConfig;[Landroid/bluetooth/BluetoothCodecConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsSelectableCapabilities:[Landroid/bluetooth/BluetoothCodecConfig;

    iget-object p0, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsSelectableCapabilities:[Landroid/bluetooth/BluetoothCodecConfig;

    .line 61
    invoke-static {p1, p0}, Landroid/bluetooth/BluetoothCodecStatus;->sameCapabilities([Landroid/bluetooth/BluetoothCodecConfig;[Landroid/bluetooth/BluetoothCodecConfig;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public getCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;
    .locals 0

    .line 141
    iget-object p0, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    return-object p0
.end method

.method public getCodecsLocalCapabilities()[Landroid/bluetooth/BluetoothCodecConfig;
    .locals 0

    .line 150
    iget-object p0, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:[Landroid/bluetooth/BluetoothCodecConfig;

    return-object p0
.end method

.method public getCodecsSelectableCapabilities()[Landroid/bluetooth/BluetoothCodecConfig;
    .locals 0

    .line 159
    iget-object p0, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsSelectableCapabilities:[Landroid/bluetooth/BluetoothCodecConfig;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 91
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:[Landroid/bluetooth/BluetoothCodecConfig;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object p0, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:[Landroid/bluetooth/BluetoothCodecConfig;

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{mCodecConfig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mCodecsLocalCapabilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:[Landroid/bluetooth/BluetoothCodecConfig;

    .line 98
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mCodecsSelectableCapabilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsSelectableCapabilities:[Landroid/bluetooth/BluetoothCodecConfig;

    .line 99
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 130
    iget-object p2, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 131
    iget-object p2, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:[Landroid/bluetooth/BluetoothCodecConfig;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 132
    iget-object p0, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsSelectableCapabilities:[Landroid/bluetooth/BluetoothCodecConfig;

    invoke-virtual {p1, p0, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void
.end method
