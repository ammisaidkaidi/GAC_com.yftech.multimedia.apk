.class public final Landroid/telephony/ims/stub/ImsFeatureConfiguration;
.super Ljava/lang/Object;
.source "ImsFeatureConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;,
        Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFeatures:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 168
    new-instance v0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$1;

    invoke-direct {v0}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/stub/ImsFeatureConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration;->mFeatures:Ljava/util/Set;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 161
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v1, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration;->mFeatures:Ljava/util/Set;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 164
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration;->mFeatures:Ljava/util/Set;

    new-instance v3, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;)V"
        }
    .end annotation

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration;->mFeatures:Ljava/util/Set;

    if-eqz p1, :cond_0

    .line 138
    iget-object p0, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration;->mFeatures:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method addFeature(II)V
    .locals 1

    .line 154
    iget-object p0, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration;->mFeatures:Ljava/util/Set;

    new-instance v0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    invoke-direct {v0, p1, p2}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;-><init>(II)V

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 205
    :cond_0
    instance-of v0, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 208
    :cond_1
    check-cast p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration;

    .line 210
    iget-object p0, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration;->mFeatures:Ljava/util/Set;

    iget-object p1, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration;->mFeatures:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getServiceFeatures()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;"
        }
    .end annotation

    .line 147
    new-instance v0, Landroid/util/ArraySet;

    iget-object p0, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration;->mFeatures:Ljava/util/Set;

    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 0

    .line 218
    iget-object p0, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration;->mFeatures:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->hashCode()I

    move-result p0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 188
    iget-object p2, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration;->mFeatures:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    new-array p2, p2, [Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    .line 189
    iget-object p0, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration;->mFeatures:Ljava/util/Set;

    invoke-interface {p0, p2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 191
    array-length p0, p2

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    array-length p0, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    aget-object v1, p2, v0

    .line 194
    iget v2, v1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget v1, v1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
