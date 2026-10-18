.class public Landroid/net/wifi/PasspointManagementObjectDefinition;
.super Ljava/lang/Object;
.source "PasspointManagementObjectDefinition.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/PasspointManagementObjectDefinition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBaseUri:Ljava/lang/String;

.field private final mMoTree:Ljava/lang/String;

.field private final mUrn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Landroid/net/wifi/PasspointManagementObjectDefinition$1;

    invoke-direct {v0}, Landroid/net/wifi/PasspointManagementObjectDefinition$1;-><init>()V

    sput-object v0, Landroid/net/wifi/PasspointManagementObjectDefinition;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Landroid/net/wifi/PasspointManagementObjectDefinition;->mBaseUri:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Landroid/net/wifi/PasspointManagementObjectDefinition;->mUrn:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Landroid/net/wifi/PasspointManagementObjectDefinition;->mMoTree:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getBaseUri()Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Landroid/net/wifi/PasspointManagementObjectDefinition;->mBaseUri:Ljava/lang/String;

    return-object p0
.end method

.method public getMoTree()Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Landroid/net/wifi/PasspointManagementObjectDefinition;->mMoTree:Ljava/lang/String;

    return-object p0
.end method

.method public getUrn()Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Landroid/net/wifi/PasspointManagementObjectDefinition;->mUrn:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 58
    iget-object p2, p0, Landroid/net/wifi/PasspointManagementObjectDefinition;->mBaseUri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object p2, p0, Landroid/net/wifi/PasspointManagementObjectDefinition;->mUrn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object p0, p0, Landroid/net/wifi/PasspointManagementObjectDefinition;->mMoTree:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
