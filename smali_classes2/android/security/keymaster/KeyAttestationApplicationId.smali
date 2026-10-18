.class public Landroid/security/keymaster/KeyAttestationApplicationId;
.super Ljava/lang/Object;
.source "KeyAttestationApplicationId.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/keymaster/KeyAttestationApplicationId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAttestationPackageInfos:[Landroid/security/keymaster/KeyAttestationPackageInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Landroid/security/keymaster/KeyAttestationApplicationId$1;

    invoke-direct {v0}, Landroid/security/keymaster/KeyAttestationApplicationId$1;-><init>()V

    sput-object v0, Landroid/security/keymaster/KeyAttestationApplicationId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    sget-object v0, Landroid/security/keymaster/KeyAttestationPackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/security/keymaster/KeyAttestationPackageInfo;

    iput-object p1, p0, Landroid/security/keymaster/KeyAttestationApplicationId;->mAttestationPackageInfos:[Landroid/security/keymaster/KeyAttestationPackageInfo;

    return-void
.end method

.method public constructor <init>([Landroid/security/keymaster/KeyAttestationPackageInfo;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Landroid/security/keymaster/KeyAttestationApplicationId;->mAttestationPackageInfos:[Landroid/security/keymaster/KeyAttestationPackageInfo;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAttestationPackageInfos()[Landroid/security/keymaster/KeyAttestationPackageInfo;
    .locals 0

    .line 45
    iget-object p0, p0, Landroid/security/keymaster/KeyAttestationApplicationId;->mAttestationPackageInfos:[Landroid/security/keymaster/KeyAttestationPackageInfo;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 55
    iget-object p0, p0, Landroid/security/keymaster/KeyAttestationApplicationId;->mAttestationPackageInfos:[Landroid/security/keymaster/KeyAttestationPackageInfo;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void
.end method
