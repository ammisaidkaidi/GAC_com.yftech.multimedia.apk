.class Landroid/os/StrictMode$AndroidBlockGuardPolicy;
.super Ljava/lang/Object;
.source "StrictMode.java"

# interfaces
.implements Ldalvik/system/BlockGuard$Policy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidBlockGuardPolicy"
.end annotation


# instance fields
.field private mLastViolationTime:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicyMask:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1439
    iput p1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    return-void
.end method

.method public static synthetic lambda$handleViolationWithTimingAttempt$0(Landroid/os/StrictMode$AndroidBlockGuardPolicy;Landroid/view/IWindowManager;Ljava/util/ArrayList;)V
    .locals 5

    .line 1601
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1609
    :try_start_0
    invoke-interface {p1, v2}, Landroid/view/IWindowManager;->showStrictModeViolation(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1614
    :catch_0
    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_1

    .line 1615
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/StrictMode$ViolationInfo;

    add-int/lit8 v2, v2, 0x1

    .line 1616
    iput v2, p1, Landroid/os/StrictMode$ViolationInfo;->violationNumThisLoop:I

    .line 1617
    iget-wide v3, p1, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    sub-long v3, v0, v3

    long-to-int v3, v3

    iput v3, p1, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    .line 1619
    invoke-virtual {p0, p1}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->onThreadPolicyViolation(Landroid/os/StrictMode$ViolationInfo;)V

    goto :goto_0

    .line 1621
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method static synthetic lambda$onThreadPolicyViolation$1(Landroid/os/StrictMode$OnThreadViolationListener;Landroid/os/strictmode/Violation;)V
    .locals 1

    .line 1717
    invoke-static {}, Landroid/os/StrictMode;->access$1700()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 1719
    :try_start_0
    invoke-interface {p0, p1}, Landroid/os/StrictMode$OnThreadViolationListener;->onThreadViolation(Landroid/os/strictmode/Violation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1721
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p0
.end method


# virtual methods
.method public getPolicyMask()I
    .locals 0

    .line 1449
    iget p0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    return p0
.end method

.method handleViolationWithTimingAttempt(Landroid/os/StrictMode$ViolationInfo;)V
    .locals 3

    .line 1542
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1560
    invoke-static {p1}, Landroid/os/StrictMode$ViolationInfo;->access$500(Landroid/os/StrictMode$ViolationInfo;)I

    move-result v0

    const/high16 v1, 0x1770000

    and-int/2addr v0, v1

    const/high16 v1, 0x40000

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 1566
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->access$600()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1567
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_1

    return-void

    .line 1571
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1572
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    return-void

    :cond_2
    const/high16 v1, 0x100000

    .line 1580
    invoke-virtual {p1, v1}, Landroid/os/StrictMode$ViolationInfo;->penaltyEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Landroid/os/StrictMode;->access$700()Landroid/util/Singleton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/IWindowManager;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    .line 1583
    :try_start_0
    invoke-interface {p1, v2}, Landroid/view/IWindowManager;->showStrictModeViolation(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1597
    :catch_0
    :cond_4
    invoke-static {}, Landroid/os/StrictMode;->access$800()Ljava/lang/ThreadLocal;

    move-result-object v1

    .line 1598
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    new-instance v2, Landroid/os/-$$Lambda$StrictMode$AndroidBlockGuardPolicy$9nBulCQKaMajrWr41SB7f7YRT1I;

    invoke-direct {v2, p0, p1, v0}, Landroid/os/-$$Lambda$StrictMode$AndroidBlockGuardPolicy$9nBulCQKaMajrWr41SB7f7YRT1I;-><init>(Landroid/os/StrictMode$AndroidBlockGuardPolicy;Landroid/view/IWindowManager;Ljava/util/ArrayList;)V

    .line 1599
    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void

    :cond_5
    :goto_1
    const/4 v0, -0x1

    .line 1561
    iput v0, p1, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    .line 1562
    invoke-virtual {p0, p1}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->onThreadPolicyViolation(Landroid/os/StrictMode$ViolationInfo;)V

    return-void
.end method

.method onCustomSlowCall(Ljava/lang/String;)V
    .locals 1

    .line 1465
    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    return-void

    .line 1468
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->access$400()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1471
    :cond_1
    new-instance v0, Landroid/os/strictmode/CustomViolation;

    invoke-direct {v0, p1}, Landroid/os/strictmode/CustomViolation;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Landroid/os/strictmode/Violation;)V

    return-void
.end method

.method public onNetwork()V
    .locals 2

    .line 1509
    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    return-void

    .line 1512
    :cond_0
    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 1515
    invoke-static {}, Landroid/os/StrictMode;->access$400()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1518
    :cond_1
    new-instance v0, Landroid/os/strictmode/NetworkViolation;

    invoke-direct {v0}, Landroid/os/strictmode/NetworkViolation;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Landroid/os/strictmode/Violation;)V

    return-void

    .line 1513
    :cond_2
    new-instance p0, Landroid/os/NetworkOnMainThreadException;

    invoke-direct {p0}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    throw p0
.end method

.method public onReadFromDisk()V
    .locals 1

    .line 1498
    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    return-void

    .line 1501
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->access$400()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1504
    :cond_1
    new-instance v0, Landroid/os/strictmode/DiskReadViolation;

    invoke-direct {v0}, Landroid/os/strictmode/DiskReadViolation;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Landroid/os/strictmode/Violation;)V

    return-void
.end method

.method onResourceMismatch(Ljava/lang/Object;)V
    .locals 1

    .line 1476
    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    return-void

    .line 1479
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->access$400()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1482
    :cond_1
    new-instance v0, Landroid/os/strictmode/ResourceMismatchViolation;

    invoke-direct {v0, p1}, Landroid/os/strictmode/ResourceMismatchViolation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Landroid/os/strictmode/Violation;)V

    return-void
.end method

.method onThreadPolicyViolation(Landroid/os/StrictMode$ViolationInfo;)V
    .locals 9

    .line 1631
    invoke-static {}, Landroid/os/StrictMode;->access$900()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "StrictMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onThreadPolicyViolation; policy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/os/StrictMode$ViolationInfo;->access$500(Landroid/os/StrictMode$ViolationInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/high16 v0, 0x400000

    .line 1633
    invoke-virtual {p1, v0}, Landroid/os/StrictMode$ViolationInfo;->penaltyEnabled(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 1634
    invoke-static {}, Landroid/os/StrictMode;->access$1000()Ljava/lang/ThreadLocal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-nez p0, :cond_1

    .line 1636
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1637
    invoke-static {}, Landroid/os/StrictMode;->access$1000()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1639
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/StrictMode$ViolationInfo;

    .line 1640
    invoke-virtual {p1}, Landroid/os/StrictMode$ViolationInfo;->getStackTrace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/StrictMode$ViolationInfo;->getStackTrace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 1645
    :cond_3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 1650
    :cond_4
    invoke-virtual {p1}, Landroid/os/StrictMode$ViolationInfo;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1652
    iget-object v2, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mLastViolationTime:Landroid/util/ArrayMap;

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_5

    .line 1653
    iget-object v2, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mLastViolationTime:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_6

    .line 1655
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_0

    .line 1658
    :cond_5
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v2, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mLastViolationTime:Landroid/util/ArrayMap;

    :cond_6
    move-wide v5, v3

    .line 1660
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1661
    iget-object p0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mLastViolationTime:Landroid/util/ArrayMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    cmp-long p0, v5, v3

    if-nez p0, :cond_7

    const-wide v2, 0x7fffffffffffffffL

    goto :goto_1

    :cond_7
    sub-long v2, v7, v5

    :goto_1
    const/high16 v0, 0x10000

    .line 1665
    invoke-virtual {p1, v0}, Landroid/os/StrictMode$ViolationInfo;->penaltyEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const-wide/16 v4, 0x3e8

    cmp-long v0, v2, v4

    if-lez v0, :cond_8

    .line 1667
    invoke-static {}, Landroid/os/StrictMode;->access$1100()Landroid/os/StrictMode$ViolationLogger;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/StrictMode$ViolationLogger;->log(Landroid/os/StrictMode$ViolationInfo;)V

    .line 1670
    :cond_8
    invoke-static {p1}, Landroid/os/StrictMode$ViolationInfo;->access$1200(Landroid/os/StrictMode$ViolationInfo;)Landroid/os/strictmode/Violation;

    move-result-object v0

    const/high16 v4, 0x20000

    .line 1678
    invoke-virtual {p1, v4}, Landroid/os/StrictMode$ViolationInfo;->penaltyEnabled(I)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_9

    const-wide/16 v7, 0x7530

    cmp-long v2, v2, v7

    if-lez v2, :cond_9

    goto :goto_2

    :cond_9
    move v4, v6

    :goto_2
    const/high16 v2, 0x200000

    .line 1683
    invoke-virtual {p1, v2}, Landroid/os/StrictMode$ViolationInfo;->penaltyEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_a

    if-nez p0, :cond_a

    or-int/2addr v4, v2

    :cond_a
    if-eqz v4, :cond_d

    .line 1688
    invoke-virtual {p1}, Landroid/os/StrictMode$ViolationInfo;->getViolationBit()I

    move-result p0

    or-int/2addr p0, v4

    .line 1690
    invoke-static {p1}, Landroid/os/StrictMode$ViolationInfo;->access$500(Landroid/os/StrictMode$ViolationInfo;)I

    move-result v3

    const/high16 v4, 0x1770000

    and-int/2addr v3, v4

    if-ne v3, v2, :cond_b

    goto :goto_3

    :cond_b
    move v1, v6

    :goto_3
    if-eqz v1, :cond_c

    .line 1698
    invoke-static {p0, p1}, Landroid/os/StrictMode;->access$1300(ILandroid/os/StrictMode$ViolationInfo;)V

    goto :goto_4

    .line 1700
    :cond_c
    invoke-static {p0, p1}, Landroid/os/StrictMode;->access$1400(ILandroid/os/StrictMode$ViolationInfo;)V

    .line 1704
    :cond_d
    :goto_4
    invoke-virtual {p1}, Landroid/os/StrictMode$ViolationInfo;->getPolicyMask()I

    move-result p0

    const/high16 p1, 0x40000

    and-int/2addr p0, p1

    if-nez p0, :cond_f

    .line 1710
    invoke-static {}, Landroid/os/StrictMode;->access$1500()Ljava/lang/ThreadLocal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/StrictMode$OnThreadViolationListener;

    .line 1711
    invoke-static {}, Landroid/os/StrictMode;->access$1600()Ljava/lang/ThreadLocal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    .line 1714
    :try_start_0
    new-instance v1, Landroid/os/-$$Lambda$StrictMode$AndroidBlockGuardPolicy$FxZGA9KtfTewqdcxlUwvIe5Nx9I;

    invoke-direct {v1, p0, v0}, Landroid/os/-$$Lambda$StrictMode$AndroidBlockGuardPolicy$FxZGA9KtfTewqdcxlUwvIe5Nx9I;-><init>(Landroid/os/StrictMode$OnThreadViolationListener;Landroid/os/strictmode/Violation;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    const-string p1, "StrictMode"

    const-string v0, "ThreadPolicy penaltyCallback failed"

    .line 1725
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e
    :goto_5
    return-void

    .line 1705
    :cond_f
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "StrictMode ThreadPolicy violation"

    invoke-direct {p0, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method public onUnbufferedIO()V
    .locals 1

    .line 1487
    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    return-void

    .line 1490
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->access$400()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1493
    :cond_1
    new-instance v0, Landroid/os/strictmode/UnbufferedIoViolation;

    invoke-direct {v0}, Landroid/os/strictmode/UnbufferedIoViolation;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Landroid/os/strictmode/Violation;)V

    return-void
.end method

.method public onWriteToDisk()V
    .locals 1

    .line 1454
    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    return-void

    .line 1457
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->access$400()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1460
    :cond_1
    new-instance v0, Landroid/os/strictmode/DiskWriteViolation;

    invoke-direct {v0}, Landroid/os/strictmode/DiskWriteViolation;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Landroid/os/strictmode/Violation;)V

    return-void
.end method

.method public setPolicyMask(I)V
    .locals 0

    .line 1522
    iput p1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    return-void
.end method

.method startHandlingViolationException(Landroid/os/strictmode/Violation;)V
    .locals 3

    .line 1531
    new-instance v0, Landroid/os/StrictMode$ViolationInfo;

    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    invoke-direct {v0, p1, v1}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/strictmode/Violation;I)V

    .line 1532
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    .line 1533
    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->handleViolationWithTimingAttempt(Landroid/os/StrictMode$ViolationInfo;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidBlockGuardPolicy; mPolicyMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
