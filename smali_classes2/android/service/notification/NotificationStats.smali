.class public final Landroid/service/notification/NotificationStats;
.super Ljava/lang/Object;
.source "NotificationStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/NotificationStats$DismissalSurface;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/notification/NotificationStats;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISMISSAL_AOD:I = 0x2

.field public static final DISMISSAL_NOT_DISMISSED:I = -0x1

.field public static final DISMISSAL_OTHER:I = 0x0

.field public static final DISMISSAL_PEEK:I = 0x1

.field public static final DISMISSAL_SHADE:I = 0x3


# instance fields
.field private mDirectReplied:Z

.field private mDismissalSurface:I

.field private mExpanded:Z

.field private mInteracted:Z

.field private mSeen:Z

.field private mSnoozed:Z

.field private mViewedSettings:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    new-instance v0, Landroid/service/notification/NotificationStats$1;

    invoke-direct {v0}, Landroid/service/notification/NotificationStats$1;-><init>()V

    sput-object v0, Landroid/service/notification/NotificationStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Landroid/service/notification/NotificationStats;->mDismissalSurface:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Landroid/service/notification/NotificationStats;->mDismissalSurface:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mSeen:Z

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mExpanded:Z

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mDirectReplied:Z

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mSnoozed:Z

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mViewedSettings:Z

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    move v1, v2

    :cond_5
    iput-boolean v1, p0, Landroid/service/notification/NotificationStats;->mInteracted:Z

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/service/notification/NotificationStats;->mDismissalSurface:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    .line 218
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 220
    :cond_1
    check-cast p1, Landroid/service/notification/NotificationStats;

    .line 222
    iget-boolean v2, p0, Landroid/service/notification/NotificationStats;->mSeen:Z

    iget-boolean v3, p1, Landroid/service/notification/NotificationStats;->mSeen:Z

    if-eq v2, v3, :cond_2

    return v1

    .line 223
    :cond_2
    iget-boolean v2, p0, Landroid/service/notification/NotificationStats;->mExpanded:Z

    iget-boolean v3, p1, Landroid/service/notification/NotificationStats;->mExpanded:Z

    if-eq v2, v3, :cond_3

    return v1

    .line 224
    :cond_3
    iget-boolean v2, p0, Landroid/service/notification/NotificationStats;->mDirectReplied:Z

    iget-boolean v3, p1, Landroid/service/notification/NotificationStats;->mDirectReplied:Z

    if-eq v2, v3, :cond_4

    return v1

    .line 225
    :cond_4
    iget-boolean v2, p0, Landroid/service/notification/NotificationStats;->mSnoozed:Z

    iget-boolean v3, p1, Landroid/service/notification/NotificationStats;->mSnoozed:Z

    if-eq v2, v3, :cond_5

    return v1

    .line 226
    :cond_5
    iget-boolean v2, p0, Landroid/service/notification/NotificationStats;->mViewedSettings:Z

    iget-boolean v3, p1, Landroid/service/notification/NotificationStats;->mViewedSettings:Z

    if-eq v2, v3, :cond_6

    return v1

    .line 227
    :cond_6
    iget-boolean v2, p0, Landroid/service/notification/NotificationStats;->mInteracted:Z

    iget-boolean v3, p1, Landroid/service/notification/NotificationStats;->mInteracted:Z

    if-eq v2, v3, :cond_7

    return v1

    .line 228
    :cond_7
    iget p0, p0, Landroid/service/notification/NotificationStats;->mDismissalSurface:I

    iget p1, p1, Landroid/service/notification/NotificationStats;->mDismissalSurface:I

    if-ne p0, p1, :cond_8

    goto :goto_0

    :cond_8
    move v0, v1

    :goto_0
    return v0

    :cond_9
    :goto_1
    return v1
.end method

.method public getDismissalSurface()I
    .locals 0

    .line 205
    iget p0, p0, Landroid/service/notification/NotificationStats;->mDismissalSurface:I

    return p0
.end method

.method public hasDirectReplied()Z
    .locals 0

    .line 150
    iget-boolean p0, p0, Landroid/service/notification/NotificationStats;->mDirectReplied:Z

    return p0
.end method

.method public hasExpanded()Z
    .locals 0

    .line 133
    iget-boolean p0, p0, Landroid/service/notification/NotificationStats;->mExpanded:Z

    return p0
.end method

.method public hasInteracted()Z
    .locals 0

    .line 198
    iget-boolean p0, p0, Landroid/service/notification/NotificationStats;->mInteracted:Z

    return p0
.end method

.method public hasSeen()Z
    .locals 0

    .line 119
    iget-boolean p0, p0, Landroid/service/notification/NotificationStats;->mSeen:Z

    return p0
.end method

.method public hasSnoozed()Z
    .locals 0

    .line 167
    iget-boolean p0, p0, Landroid/service/notification/NotificationStats;->mSnoozed:Z

    return p0
.end method

.method public hasViewedSettings()Z
    .locals 0

    .line 183
    iget-boolean p0, p0, Landroid/service/notification/NotificationStats;->mViewedSettings:Z

    return p0
.end method

.method public hashCode()I
    .locals 2

    .line 233
    iget-boolean v0, p0, Landroid/service/notification/NotificationStats;->mSeen:Z

    mul-int/lit8 v0, v0, 0x1f

    .line 234
    iget-boolean v1, p0, Landroid/service/notification/NotificationStats;->mExpanded:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 235
    iget-boolean v1, p0, Landroid/service/notification/NotificationStats;->mDirectReplied:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 236
    iget-boolean v1, p0, Landroid/service/notification/NotificationStats;->mSnoozed:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 237
    iget-boolean v1, p0, Landroid/service/notification/NotificationStats;->mViewedSettings:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 238
    iget-boolean v1, p0, Landroid/service/notification/NotificationStats;->mInteracted:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 239
    iget p0, p0, Landroid/service/notification/NotificationStats;->mDismissalSurface:I

    add-int/2addr v0, p0

    return v0
.end method

.method public setDirectReplied()V
    .locals 1

    const/4 v0, 0x1

    .line 159
    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mDirectReplied:Z

    .line 160
    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mInteracted:Z

    return-void
.end method

.method public setDismissalSurface(I)V
    .locals 0

    .line 212
    iput p1, p0, Landroid/service/notification/NotificationStats;->mDismissalSurface:I

    return-void
.end method

.method public setExpanded()V
    .locals 1

    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mExpanded:Z

    .line 141
    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mInteracted:Z

    return-void
.end method

.method public setSeen()V
    .locals 1

    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mSeen:Z

    return-void
.end method

.method public setSnoozed()V
    .locals 1

    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mSnoozed:Z

    .line 175
    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mInteracted:Z

    return-void
.end method

.method public setViewedSettings()V
    .locals 1

    const/4 v0, 0x1

    .line 190
    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mViewedSettings:Z

    .line 191
    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mInteracted:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotificationStats{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "mSeen="

    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/service/notification/NotificationStats;->mSeen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mExpanded="

    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/service/notification/NotificationStats;->mExpanded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDirectReplied="

    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/service/notification/NotificationStats;->mDirectReplied:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSnoozed="

    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/service/notification/NotificationStats;->mSnoozed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mViewedSettings="

    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/service/notification/NotificationStats;->mViewedSettings:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mInteracted="

    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/service/notification/NotificationStats;->mInteracted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDismissalSurface="

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/service/notification/NotificationStats;->mDismissalSurface:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    .line 253
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 89
    iget-boolean p2, p0, Landroid/service/notification/NotificationStats;->mSeen:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 90
    iget-boolean p2, p0, Landroid/service/notification/NotificationStats;->mExpanded:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 91
    iget-boolean p2, p0, Landroid/service/notification/NotificationStats;->mDirectReplied:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 92
    iget-boolean p2, p0, Landroid/service/notification/NotificationStats;->mSnoozed:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 93
    iget-boolean p2, p0, Landroid/service/notification/NotificationStats;->mViewedSettings:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 94
    iget-boolean p2, p0, Landroid/service/notification/NotificationStats;->mInteracted:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 95
    iget p0, p0, Landroid/service/notification/NotificationStats;->mDismissalSurface:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
