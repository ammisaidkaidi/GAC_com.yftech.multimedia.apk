.class public Landroid/telephony/DataSpecificRegistrationStates;
.super Ljava/lang/Object;
.source "DataSpecificRegistrationStates.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/DataSpecificRegistrationStates;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final maxDataCalls:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Landroid/telephony/DataSpecificRegistrationStates$1;

    invoke-direct {v0}, Landroid/telephony/DataSpecificRegistrationStates$1;-><init>()V

    sput-object v0, Landroid/telephony/DataSpecificRegistrationStates;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Landroid/telephony/DataSpecificRegistrationStates;->maxDataCalls:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telephony/DataSpecificRegistrationStates;->maxDataCalls:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/DataSpecificRegistrationStates$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroid/telephony/DataSpecificRegistrationStates;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 52
    instance-of v2, p1, Landroid/telephony/DataSpecificRegistrationStates;

    if-nez v2, :cond_1

    goto :goto_1

    .line 56
    :cond_1
    check-cast p1, Landroid/telephony/DataSpecificRegistrationStates;

    .line 57
    iget p0, p0, Landroid/telephony/DataSpecificRegistrationStates;->maxDataCalls:I

    iget p1, p1, Landroid/telephony/DataSpecificRegistrationStates;->maxDataCalls:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    const/4 v0, 0x1

    .line 45
    new-array v0, v0, [Ljava/lang/Object;

    iget p0, p0, Landroid/telephony/DataSpecificRegistrationStates;->maxDataCalls:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataSpecificRegistrationStates { mMaxDataCalls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/telephony/DataSpecificRegistrationStates;->maxDataCalls:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 30
    iget p0, p0, Landroid/telephony/DataSpecificRegistrationStates;->maxDataCalls:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
