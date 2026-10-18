.class public Landroid/app/AppOpsManager$OpEntry;
.super Ljava/lang/Object;
.source "AppOpsManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpEntry"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDuration:I

.field private final mMode:I

.field private final mOp:I

.field private final mProxyPackageName:Ljava/lang/String;

.field private final mProxyUid:I

.field private final mRejectTimes:[J

.field private final mRunning:Z

.field private final mTimes:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1686
    new-instance v0, Landroid/app/AppOpsManager$OpEntry$1;

    invoke-direct {v0}, Landroid/app/AppOpsManager$OpEntry$1;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager$OpEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIJJIILjava/lang/String;)V
    .locals 0

    .line 1562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1563
    iput p1, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    .line 1564
    iput p2, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    const/4 p1, 0x6

    .line 1565
    new-array p2, p1, [J

    iput-object p2, p0, Landroid/app/AppOpsManager$OpEntry;->mTimes:[J

    .line 1566
    new-array p1, p1, [J

    iput-object p1, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTimes:[J

    .line 1567
    iget-object p1, p0, Landroid/app/AppOpsManager$OpEntry;->mTimes:[J

    const/4 p2, 0x0

    aput-wide p3, p1, p2

    .line 1568
    iget-object p1, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTimes:[J

    aput-wide p5, p1, p2

    .line 1569
    iput p7, p0, Landroid/app/AppOpsManager$OpEntry;->mDuration:I

    const/4 p1, -0x1

    if-ne p7, p1, :cond_0

    const/4 p2, 0x1

    .line 1570
    :cond_0
    iput-boolean p2, p0, Landroid/app/AppOpsManager$OpEntry;->mRunning:Z

    .line 1571
    iput p8, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyUid:I

    .line 1572
    iput-object p9, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyPackageName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II[J[JIILjava/lang/String;)V
    .locals 10

    const/4 v0, -0x1

    move v6, p5

    if-ne v6, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v7, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    .line 1591
    invoke-direct/range {v1 .. v9}, Landroid/app/AppOpsManager$OpEntry;-><init>(II[J[JIZILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(II[J[JIZILjava/lang/String;)V
    .locals 1

    .line 1576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1577
    iput p1, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    .line 1578
    iput p2, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    const/4 p1, 0x6

    .line 1579
    new-array p2, p1, [J

    iput-object p2, p0, Landroid/app/AppOpsManager$OpEntry;->mTimes:[J

    .line 1580
    new-array p2, p1, [J

    iput-object p2, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTimes:[J

    .line 1581
    iget-object p2, p0, Landroid/app/AppOpsManager$OpEntry;->mTimes:[J

    const/4 v0, 0x0

    invoke-static {p3, v0, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1582
    iget-object p2, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTimes:[J

    invoke-static {p4, v0, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1583
    iput p5, p0, Landroid/app/AppOpsManager$OpEntry;->mDuration:I

    .line 1584
    iput-boolean p6, p0, Landroid/app/AppOpsManager$OpEntry;->mRunning:Z

    .line 1585
    iput p7, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyUid:I

    .line 1586
    iput-object p8, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyPackageName:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1676
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    .line 1677
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    .line 1678
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mTimes:[J

    .line 1679
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTimes:[J

    .line 1680
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$OpEntry;->mDuration:I

    .line 1681
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/AppOpsManager$OpEntry;->mRunning:Z

    .line 1682
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyUid:I

    .line 1683
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDuration()I
    .locals 0

    .line 1647
    iget p0, p0, Landroid/app/AppOpsManager$OpEntry;->mDuration:I

    return p0
.end method

.method public getLastAccessBackgroundTime()J
    .locals 2

    .line 1615
    iget-object p0, p0, Landroid/app/AppOpsManager$OpEntry;->mTimes:[J

    const/4 v0, 0x3

    const/4 v1, 0x6

    invoke-static {p0, v0, v1}, Landroid/app/AppOpsManager;->maxTime([JII)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastAccessForegroundTime()J
    .locals 2

    .line 1611
    iget-object p0, p0, Landroid/app/AppOpsManager$OpEntry;->mTimes:[J

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/app/AppOpsManager;->maxTime([JII)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastAccessTime()J
    .locals 2

    .line 1607
    iget-object p0, p0, Landroid/app/AppOpsManager$OpEntry;->mTimes:[J

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p0, v0, v1}, Landroid/app/AppOpsManager;->maxTime([JII)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastRejectBackgroundTime()J
    .locals 2

    .line 1635
    iget-object p0, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTimes:[J

    const/4 v0, 0x3

    const/4 v1, 0x6

    invoke-static {p0, v0, v1}, Landroid/app/AppOpsManager;->maxTime([JII)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastRejectForegroundTime()J
    .locals 2

    .line 1631
    iget-object p0, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTimes:[J

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/app/AppOpsManager;->maxTime([JII)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastRejectTime()J
    .locals 2

    .line 1627
    iget-object p0, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTimes:[J

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p0, v0, v1}, Landroid/app/AppOpsManager;->maxTime([JII)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastRejectTimeFor(I)J
    .locals 2

    .line 1639
    iget-object p0, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTimes:[J

    aget-wide v0, p0, p1

    return-wide v0
.end method

.method public getLastTimeFor(I)J
    .locals 2

    .line 1619
    iget-object p0, p0, Landroid/app/AppOpsManager$OpEntry;->mTimes:[J

    aget-wide v0, p0, p1

    return-wide v0
.end method

.method public getMode()I
    .locals 0

    .line 1599
    iget p0, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    return p0
.end method

.method public getOp()I
    .locals 0

    .line 1595
    iget p0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    return p0
.end method

.method public getProxyPackageName()Ljava/lang/String;
    .locals 0

    .line 1655
    iget-object p0, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getProxyUid()I
    .locals 0

    .line 1651
    iget p0, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyUid:I

    return p0
.end method

.method public getRejectTime()J
    .locals 2

    .line 1623
    iget-object p0, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTimes:[J

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p0, v0, v1}, Landroid/app/AppOpsManager;->maxTime([JII)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTime()J
    .locals 2

    .line 1603
    iget-object p0, p0, Landroid/app/AppOpsManager$OpEntry;->mTimes:[J

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p0, v0, v1}, Landroid/app/AppOpsManager;->maxTime([JII)J

    move-result-wide v0

    return-wide v0
.end method

.method public isRunning()Z
    .locals 0

    .line 1643
    iget-boolean p0, p0, Landroid/app/AppOpsManager$OpEntry;->mRunning:Z

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1665
    iget p2, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1666
    iget p2, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1667
    iget-object p2, p0, Landroid/app/AppOpsManager$OpEntry;->mTimes:[J

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 1668
    iget-object p2, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTimes:[J

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 1669
    iget p2, p0, Landroid/app/AppOpsManager$OpEntry;->mDuration:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1670
    iget-boolean p2, p0, Landroid/app/AppOpsManager$OpEntry;->mRunning:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1671
    iget p2, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyUid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1672
    iget-object p0, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyPackageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
