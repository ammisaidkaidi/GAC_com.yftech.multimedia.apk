.class public final Landroid/hardware/location/GeofenceHardwareRequestParcelable;
.super Ljava/lang/Object;
.source "GeofenceHardwareRequestParcelable.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/location/GeofenceHardwareRequestParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mId:I

.field private mRequest:Landroid/hardware/location/GeofenceHardwareRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 137
    new-instance v0, Landroid/hardware/location/GeofenceHardwareRequestParcelable$1;

    invoke-direct {v0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable$1;-><init>()V

    sput-object v0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/hardware/location/GeofenceHardwareRequest;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mId:I

    .line 34
    iput-object p2, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getId()I
    .locals 0

    .line 41
    iget p0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mId:I

    return p0
.end method

.method public getLastTransition()I
    .locals 0

    .line 90
    iget-object p0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequest;->getLastTransition()I

    move-result p0

    return p0
.end method

.method public getLatitude()D
    .locals 2

    .line 48
    iget-object p0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequest;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 55
    iget-object p0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequest;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMonitorTransitions()I
    .locals 0

    .line 69
    iget-object p0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequest;->getMonitorTransitions()I

    move-result p0

    return p0
.end method

.method public getNotificationResponsiveness()I
    .locals 0

    .line 83
    iget-object p0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequest;->getNotificationResponsiveness()I

    move-result p0

    return p0
.end method

.method public getRadius()D
    .locals 2

    .line 62
    iget-object p0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequest;->getRadius()D

    move-result-wide v0

    return-wide v0
.end method

.method getSourceTechnologies()I
    .locals 0

    .line 104
    iget-object p0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequest;->getSourceTechnologies()I

    move-result p0

    return p0
.end method

.method getType()I
    .locals 0

    .line 97
    iget-object p0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequest;->getType()I

    move-result p0

    return p0
.end method

.method public getUnknownTimer()I
    .locals 0

    .line 76
    iget-object p0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequest;->getUnknownTimer()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id="

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget v1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v1}, Landroid/hardware/location/GeofenceHardwareRequest;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", latitude="

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v1}, Landroid/hardware/location/GeofenceHardwareRequest;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", longitude="

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v1}, Landroid/hardware/location/GeofenceHardwareRequest;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", radius="

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v1}, Landroid/hardware/location/GeofenceHardwareRequest;->getRadius()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", lastTransition="

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v1}, Landroid/hardware/location/GeofenceHardwareRequest;->getLastTransition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", unknownTimer="

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v1}, Landroid/hardware/location/GeofenceHardwareRequest;->getUnknownTimer()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", monitorTransitions="

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v1}, Landroid/hardware/location/GeofenceHardwareRequest;->getMonitorTransitions()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", notificationResponsiveness="

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v1}, Landroid/hardware/location/GeofenceHardwareRequest;->getNotificationResponsiveness()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sourceTechnologies="

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-object p0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequest;->getSourceTechnologies()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 176
    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getType()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 178
    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 179
    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getRadius()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 180
    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getLastTransition()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getMonitorTransitions()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getUnknownTimer()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getNotificationResponsiveness()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getSourceTechnologies()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getId()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
