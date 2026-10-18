.class public final Landroid/service/notification/NotifyingApp;
.super Ljava/lang/Object;
.source "NotifyingApp.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Landroid/service/notification/NotifyingApp;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/notification/NotifyingApp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLastNotified:J

.field private mPkg:Ljava/lang/String;

.field private mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    new-instance v0, Landroid/service/notification/NotifyingApp$1;

    invoke-direct {v0}, Landroid/service/notification/NotifyingApp$1;-><init>()V

    sput-object v0, Landroid/service/notification/NotifyingApp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/NotifyingApp;->mUid:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotifyingApp;->mPkg:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/service/notification/NotifyingApp;->mLastNotified:J

    return-void
.end method


# virtual methods
.method public compareTo(Landroid/service/notification/NotifyingApp;)I
    .locals 4

    .line 121
    invoke-virtual {p0}, Landroid/service/notification/NotifyingApp;->getLastNotified()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/service/notification/NotifyingApp;->getLastNotified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 122
    invoke-virtual {p0}, Landroid/service/notification/NotifyingApp;->getUid()I

    move-result v0

    invoke-virtual {p1}, Landroid/service/notification/NotifyingApp;->getUid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 123
    invoke-virtual {p0}, Landroid/service/notification/NotifyingApp;->getPackage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/service/notification/NotifyingApp;->getPackage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 125
    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/NotifyingApp;->getUid()I

    move-result p0

    invoke-virtual {p1}, Landroid/service/notification/NotifyingApp;->getUid()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0

    .line 128
    :cond_1
    invoke-virtual {p0}, Landroid/service/notification/NotifyingApp;->getLastNotified()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/service/notification/NotifyingApp;->getLastNotified()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    neg-int p0, p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 27
    check-cast p1, Landroid/service/notification/NotifyingApp;

    invoke-virtual {p0, p1}, Landroid/service/notification/NotifyingApp;->compareTo(Landroid/service/notification/NotifyingApp;)I

    move-result p0

    return p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 105
    :cond_1
    check-cast p1, Landroid/service/notification/NotifyingApp;

    .line 106
    invoke-virtual {p0}, Landroid/service/notification/NotifyingApp;->getUid()I

    move-result v2

    invoke-virtual {p1}, Landroid/service/notification/NotifyingApp;->getUid()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 107
    invoke-virtual {p0}, Landroid/service/notification/NotifyingApp;->getLastNotified()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/service/notification/NotifyingApp;->getLastNotified()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object p0, p0, Landroid/service/notification/NotifyingApp;->mPkg:Ljava/lang/String;

    iget-object p1, p1, Landroid/service/notification/NotifyingApp;->mPkg:Ljava/lang/String;

    .line 108
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getLastNotified()J
    .locals 2

    .line 66
    iget-wide v0, p0, Landroid/service/notification/NotifyingApp;->mLastNotified:J

    return-wide v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Landroid/service/notification/NotifyingApp;->mPkg:Ljava/lang/String;

    return-object p0
.end method

.method public getUid()I
    .locals 0

    .line 42
    iget p0, p0, Landroid/service/notification/NotifyingApp;->mUid:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 113
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/service/notification/NotifyingApp;->getUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/service/notification/NotifyingApp;->mPkg:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/service/notification/NotifyingApp;->getLastNotified()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public setLastNotified(J)Landroid/service/notification/NotifyingApp;
    .locals 0

    .line 73
    iput-wide p1, p0, Landroid/service/notification/NotifyingApp;->mLastNotified:J

    return-object p0
.end method

.method public setPackage(Ljava/lang/String;)Landroid/service/notification/NotifyingApp;
    .locals 0

    .line 61
    iput-object p1, p0, Landroid/service/notification/NotifyingApp;->mPkg:Ljava/lang/String;

    return-object p0
.end method

.method public setUid(I)Landroid/service/notification/NotifyingApp;
    .locals 0

    .line 49
    iput p1, p0, Landroid/service/notification/NotifyingApp;->mUid:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotifyingApp{mUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/service/notification/NotifyingApp;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPkg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/notification/NotifyingApp;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mLastNotified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/service/notification/NotifyingApp;->mLastNotified:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 96
    iget p2, p0, Landroid/service/notification/NotifyingApp;->mUid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget-object p2, p0, Landroid/service/notification/NotifyingApp;->mPkg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-wide v0, p0, Landroid/service/notification/NotifyingApp;->mLastNotified:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
