.class public final Landroid/telephony/ims/feature/CapabilityChangeRequest;
.super Ljava/lang/Object;
.source "CapabilityChangeRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/feature/CapabilityChangeRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCapabilitiesToDisable:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;",
            ">;"
        }
    .end annotation
.end field

.field private final mCapabilitiesToEnable:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 183
    new-instance v0, Landroid/telephony/ims/feature/CapabilityChangeRequest$1;

    invoke-direct {v0}, Landroid/telephony/ims/feature/CapabilityChangeRequest$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToEnable:Ljava/util/Set;

    .line 110
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToDisable:Ljava/util/Set;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 170
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v1, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToEnable:Ljava/util/Set;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 172
    iget-object v3, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToEnable:Ljava/util/Set;

    new-instance v4, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;-><init>(II)V

    .line 172
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 176
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v0}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v2, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToDisable:Ljava/util/Set;

    :goto_1
    if-ge v1, v0, :cond_1

    .line 178
    iget-object v2, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToDisable:Ljava/util/Set;

    new-instance v3, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;-><init>(II)V

    .line 178
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private addAllCapabilities(Ljava/util/Set;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;",
            ">;II)V"
        }
    .end annotation

    int-to-long v0, p2

    .line 157
    invoke-static {v0, v1}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v0

    const/4 p0, 0x1

    :goto_0
    int-to-long v2, p0

    cmp-long v2, v2, v0

    if-gtz v2, :cond_1

    and-int v2, p0, p2

    if-lez v2, :cond_0

    .line 160
    new-instance v2, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    invoke-direct {v2, p0, p3}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;-><init>(II)V

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    mul-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addCapabilitiesToDisableForTech(II)V
    .locals 1

    .line 137
    iget-object v0, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToDisable:Ljava/util/Set;

    invoke-direct {p0, v0, p1, p2}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addAllCapabilities(Ljava/util/Set;II)V

    return-void
.end method

.method public addCapabilitiesToEnableForTech(II)V
    .locals 1

    .line 124
    iget-object v0, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToEnable:Ljava/util/Set;

    invoke-direct {p0, v0, p1, p2}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addAllCapabilities(Ljava/util/Set;II)V

    return-void
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 221
    :cond_0
    instance-of v0, p1, Landroid/telephony/ims/feature/CapabilityChangeRequest;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 224
    :cond_1
    check-cast p1, Landroid/telephony/ims/feature/CapabilityChangeRequest;

    .line 226
    iget-object v0, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToEnable:Ljava/util/Set;

    iget-object v2, p1, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToEnable:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 227
    :cond_2
    iget-object p0, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToDisable:Ljava/util/Set;

    iget-object p1, p1, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToDisable:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getCapabilitiesToDisable()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;",
            ">;"
        }
    .end annotation

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToDisable:Ljava/util/Set;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getCapabilitiesToEnable()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;",
            ">;"
        }
    .end annotation

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToEnable:Ljava/util/Set;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 235
    iget-object v0, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToEnable:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 236
    iget-object p0, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToDisable:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 203
    iget-object p2, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToEnable:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    iget-object p2, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToEnable:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 205
    invoke-virtual {v0}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    invoke-virtual {v0}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 208
    :cond_0
    iget-object p2, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToDisable:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    iget-object p0, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToDisable:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 210
    invoke-virtual {p2}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    invoke-virtual {p2}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    return-void
.end method
