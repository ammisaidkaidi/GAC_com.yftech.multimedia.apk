.class public final Landroid/app/usage/ConfigurationStats;
.super Ljava/lang/Object;
.source "ConfigurationStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mActivationCount:I

.field public mBeginTimeStamp:J

.field public mConfiguration:Landroid/content/res/Configuration;

.field public mEndTimeStamp:J

.field public mLastTimeActive:J

.field public mTotalTimeActive:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 141
    new-instance v0, Landroid/app/usage/ConfigurationStats$1;

    invoke-direct {v0}, Landroid/app/usage/ConfigurationStats$1;-><init>()V

    sput-object v0, Landroid/app/usage/ConfigurationStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/app/usage/ConfigurationStats;)V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iget-object v0, p1, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    iput-object v0, p0, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    .line 66
    iget-wide v0, p1, Landroid/app/usage/ConfigurationStats;->mBeginTimeStamp:J

    iput-wide v0, p0, Landroid/app/usage/ConfigurationStats;->mBeginTimeStamp:J

    .line 67
    iget-wide v0, p1, Landroid/app/usage/ConfigurationStats;->mEndTimeStamp:J

    iput-wide v0, p0, Landroid/app/usage/ConfigurationStats;->mEndTimeStamp:J

    .line 68
    iget-wide v0, p1, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    iput-wide v0, p0, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .line 69
    iget-wide v0, p1, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    iput-wide v0, p0, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    .line 70
    iget p1, p1, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    iput p1, p0, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getActivationCount()I
    .locals 0

    .line 117
    iget p0, p0, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    return p0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 0

    .line 74
    iget-object p0, p0, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    return-object p0
.end method

.method public getFirstTimeStamp()J
    .locals 2

    .line 84
    iget-wide v0, p0, Landroid/app/usage/ConfigurationStats;->mBeginTimeStamp:J

    return-wide v0
.end method

.method public getLastTimeActive()J
    .locals 2

    .line 103
    iget-wide v0, p0, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    return-wide v0
.end method

.method public getLastTimeStamp()J
    .locals 2

    .line 94
    iget-wide v0, p0, Landroid/app/usage/ConfigurationStats;->mEndTimeStamp:J

    return-wide v0
.end method

.method public getTotalTimeActive()J
    .locals 2

    .line 110
    iget-wide v0, p0, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 127
    iget-object v0, p0, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 128
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget-object v0, p0, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 131
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    :goto_0
    iget-wide v0, p0, Landroid/app/usage/ConfigurationStats;->mBeginTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 135
    iget-wide v0, p0, Landroid/app/usage/ConfigurationStats;->mEndTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 136
    iget-wide v0, p0, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 137
    iget-wide v0, p0, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 138
    iget p0, p0, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
