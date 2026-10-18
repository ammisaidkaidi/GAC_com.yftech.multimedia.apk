.class Landroid/location/GnssMeasurement$1;
.super Ljava/lang/Object;
.source "GnssMeasurement.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GnssMeasurement;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1060
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssMeasurement;
    .locals 2

    .line 1063
    new-instance p0, Landroid/location/GnssMeasurement;

    invoke-direct {p0}, Landroid/location/GnssMeasurement;-><init>()V

    .line 1065
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {p0, v0}, Landroid/location/GnssMeasurement;->access$002(Landroid/location/GnssMeasurement;I)I

    .line 1066
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {p0, v0}, Landroid/location/GnssMeasurement;->access$102(Landroid/location/GnssMeasurement;I)I

    .line 1067
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {p0, v0}, Landroid/location/GnssMeasurement;->access$202(Landroid/location/GnssMeasurement;I)I

    .line 1068
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/location/GnssMeasurement;->access$302(Landroid/location/GnssMeasurement;D)D

    .line 1069
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {p0, v0}, Landroid/location/GnssMeasurement;->access$402(Landroid/location/GnssMeasurement;I)I

    .line 1070
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/location/GnssMeasurement;->access$502(Landroid/location/GnssMeasurement;J)J

    .line 1071
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/location/GnssMeasurement;->access$602(Landroid/location/GnssMeasurement;J)J

    .line 1072
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/location/GnssMeasurement;->access$702(Landroid/location/GnssMeasurement;D)D

    .line 1073
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/location/GnssMeasurement;->access$802(Landroid/location/GnssMeasurement;D)D

    .line 1074
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/location/GnssMeasurement;->access$902(Landroid/location/GnssMeasurement;D)D

    .line 1075
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {p0, v0}, Landroid/location/GnssMeasurement;->access$1002(Landroid/location/GnssMeasurement;I)I

    .line 1076
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/location/GnssMeasurement;->access$1102(Landroid/location/GnssMeasurement;D)D

    .line 1077
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/location/GnssMeasurement;->access$1202(Landroid/location/GnssMeasurement;D)D

    .line 1078
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-static {p0, v0}, Landroid/location/GnssMeasurement;->access$1302(Landroid/location/GnssMeasurement;F)F

    .line 1079
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/location/GnssMeasurement;->access$1402(Landroid/location/GnssMeasurement;J)J

    .line 1080
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/location/GnssMeasurement;->access$1502(Landroid/location/GnssMeasurement;D)D

    .line 1081
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/location/GnssMeasurement;->access$1602(Landroid/location/GnssMeasurement;D)D

    .line 1082
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {p0, v0}, Landroid/location/GnssMeasurement;->access$1702(Landroid/location/GnssMeasurement;I)I

    .line 1083
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/location/GnssMeasurement;->access$1802(Landroid/location/GnssMeasurement;D)D

    .line 1084
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/location/GnssMeasurement;->access$1902(Landroid/location/GnssMeasurement;D)D

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1060
    invoke-virtual {p0, p1}, Landroid/location/GnssMeasurement$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssMeasurement;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/location/GnssMeasurement;
    .locals 0

    .line 1091
    new-array p0, p1, [Landroid/location/GnssMeasurement;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1060
    invoke-virtual {p0, p1}, Landroid/location/GnssMeasurement$1;->newArray(I)[Landroid/location/GnssMeasurement;

    move-result-object p0

    return-object p0
.end method
