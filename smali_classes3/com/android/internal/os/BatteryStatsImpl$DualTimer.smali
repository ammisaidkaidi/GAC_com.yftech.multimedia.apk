.class public Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
.super Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DualTimer"
.end annotation


# instance fields
.field private final mSubTimer:Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsImpl$Clocks;",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;",
            "Lcom/android/internal/os/BatteryStatsImpl$TimeBase;",
            "Lcom/android/internal/os/BatteryStatsImpl$TimeBase;",
            ")V"
        }
    .end annotation

    .line 2683
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    .line 2684
    new-instance p4, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    const/4 v4, 0x0

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object p4, p0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsImpl$Clocks;",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;",
            "Lcom/android/internal/os/BatteryStatsImpl$TimeBase;",
            "Lcom/android/internal/os/BatteryStatsImpl$TimeBase;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p7

    .line 2671
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 2672
    new-instance p4, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    const/4 v5, 0x0

    move-object v1, p4

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object p4, p0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    return-void
.end method


# virtual methods
.method public detach()V
    .locals 1

    .line 2722
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->detach()V

    .line 2723
    invoke-super {p0}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->detach()V

    return-void
.end method

.method public bridge synthetic getSubTimer()Landroid/os/BatteryStats$Timer;
    .locals 0

    .line 2654
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getSubTimer()Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    move-result-object p0

    return-object p0
.end method

.method public getSubTimer()Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;
    .locals 0

    .line 2690
    iget-object p0, p0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    return-object p0
.end method

.method public readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 0

    .line 2740
    invoke-super {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 2741
    iget-object p0, p0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    return-void
.end method

.method public reset(Z)Z
    .locals 3

    .line 2715
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->reset(Z)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    or-int/2addr v0, v1

    .line 2716
    invoke-super {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->reset(Z)Z

    move-result p0

    xor-int/2addr p0, v2

    or-int/2addr p0, v0

    if-nez p0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public startRunningLocked(J)V
    .locals 0

    .line 2695
    invoke-super {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->startRunningLocked(J)V

    .line 2696
    iget-object p0, p0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->startRunningLocked(J)V

    return-void
.end method

.method public stopAllRunningLocked(J)V
    .locals 0

    .line 2707
    invoke-super {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->stopAllRunningLocked(J)V

    .line 2708
    iget-object p0, p0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->stopAllRunningLocked(J)V

    return-void
.end method

.method public stopRunningLocked(J)V
    .locals 0

    .line 2701
    invoke-super {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->stopRunningLocked(J)V

    .line 2702
    iget-object p0, p0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->stopRunningLocked(J)V

    return-void
.end method

.method public writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V
    .locals 0

    .line 2734
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 2735
    iget-object p0, p0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;J)V
    .locals 0

    .line 2728
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 2729
    iget-object p0, p0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->writeToParcel(Landroid/os/Parcel;J)V

    return-void
.end method
