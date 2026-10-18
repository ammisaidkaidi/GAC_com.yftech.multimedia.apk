.class public final Lcom/android/internal/app/procstats/ProcessState;
.super Ljava/lang/Object;
.source "ProcessState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    }
.end annotation


# static fields
.field public static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEBUG_PARCEL:Z = false

.field private static final PROCESS_STATE_TO_STATE:[I

.field private static final TAG:Ljava/lang/String; = "ProcessStats"


# instance fields
.field private mActive:Z

.field private mAvgCachedKillPss:J

.field private mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

.field private mCurState:I

.field private mDead:Z

.field private final mDurations:Lcom/android/internal/app/procstats/DurationsTable;

.field private mLastPssState:I

.field private mLastPssTime:J

.field private mMaxCachedKillPss:J

.field private mMinCachedKillPss:J

.field private mMultiPackage:Z

.field private final mName:Ljava/lang/String;

.field private mNumActiveServices:I

.field private mNumCachedKill:I

.field private mNumExcessiveCpu:I

.field private mNumStartedServices:I

.field private final mPackage:Ljava/lang/String;

.field private final mPssTable:Lcom/android/internal/app/procstats/PssTable;

.field private mStartTime:J

.field private final mStats:Lcom/android/internal/app/procstats/ProcessStats;

.field private mTmpTotalTime:J

.field private final mUid:I

.field private final mVersion:J

.field public tmpFoundSubProc:Lcom/android/internal/app/procstats/ProcessState;

.field public tmpNumInUse:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x13

    .line 74
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/app/procstats/ProcessState;->PROCESS_STATE_TO_STATE:[I

    .line 96
    new-instance v0, Lcom/android/internal/app/procstats/ProcessState$1;

    invoke-direct {v0}, Lcom/android/internal/app/procstats/ProcessState$1;-><init>()V

    sput-object v0, Lcom/android/internal/app/procstats/ProcessState;->COMPARATOR:Ljava/util/Comparator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x2
        0x2
        0x3
        0x3
        0x4
        0x5
        0x7
        0x1
        0x8
        0x9
        0xa
        0xb
        0xc
        0xb
        0xd
    .end array-data
.end method

.method public constructor <init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IJLjava/lang/String;J)V
    .locals 1

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 132
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    .line 135
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    .line 177
    iget-object v0, p1, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 178
    iput-object p6, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    .line 179
    iput-object p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    .line 180
    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    .line 181
    iput p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    .line 182
    iput-wide p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    .line 183
    iget p2, p1, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    iput p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    .line 184
    iput-wide p7, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    .line 185
    new-instance p2, Lcom/android/internal/app/procstats/DurationsTable;

    iget-object p3, p1, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object p3, p3, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {p2, p3}, Lcom/android/internal/app/procstats/DurationsTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 186
    new-instance p2, Lcom/android/internal/app/procstats/PssTable;

    iget-object p1, p1, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object p1, p1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {p2, p1}, Lcom/android/internal/app/procstats/PssTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 1

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 132
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    .line 135
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    .line 160
    iput-object p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 161
    iput-object p6, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    .line 162
    iput-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    .line 163
    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    .line 164
    iput p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    .line 165
    iput-wide p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    .line 166
    new-instance p2, Lcom/android/internal/app/procstats/DurationsTable;

    iget-object p3, p1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {p2, p3}, Lcom/android/internal/app/procstats/DurationsTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 167
    new-instance p2, Lcom/android/internal/app/procstats/PssTable;

    iget-object p1, p1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {p2, p1}, Lcom/android/internal/app/procstats/PssTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/procstats/ProcessState;)J
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTmpTotalTime:J

    return-wide v0
.end method

.method private addCachedKill(IJJJ)V
    .locals 2

    .line 523
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-gtz v0, :cond_0

    .line 524
    iput p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    .line 525
    iput-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 526
    iput-wide p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    .line 527
    iput-wide p6, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    goto :goto_0

    .line 529
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    .line 530
    iput-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 532
    :cond_1
    iget-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    cmp-long p2, p6, p2

    if-lez p2, :cond_2

    .line 533
    iput-wide p6, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    .line 535
    :cond_2
    iget-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    long-to-double p2, p2

    iget p6, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    int-to-double p6, p6

    mul-double/2addr p2, p6

    long-to-double p4, p4

    add-double/2addr p2, p4

    iget p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    add-int/2addr p4, p1

    int-to-double p4, p4

    div-double/2addr p2, p4

    double-to-long p2, p2

    iput-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    .line 537
    iget p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    :goto_0
    return-void
.end method

.method private dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V
    .locals 1

    .line 936
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;

    invoke-direct {v0, p4, p5, p6}, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    .line 938
    invoke-virtual {p0, v0, p7, p8}, Lcom/android/internal/app/procstats/ProcessState;->computeProcessData(Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;J)V

    .line 939
    iget-wide p4, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    long-to-double p4, p4

    long-to-double p6, p9

    div-double/2addr p4, p6

    const-wide/high16 p6, 0x4059000000000000L    # 100.0

    mul-double/2addr p4, p6

    const-wide p6, 0x3f747ae147ae147bL    # 0.005

    cmpl-double p0, p4, p6

    if-gez p0, :cond_0

    .line 941
    iget-wide p4, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    const-wide/16 p6, 0x0

    cmp-long p0, p4, p6

    if-eqz p0, :cond_3

    :cond_0
    if-eqz p2, :cond_1

    .line 943
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    if-eqz p3, :cond_2

    .line 946
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 948
    :cond_2
    invoke-virtual {v0, p1, p9, p10, p11}, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->print(Ljava/io/PrintWriter;JZ)V

    if-eqz p2, :cond_3

    .line 950
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_3
    return-void
.end method

.method private ensureNotDead()V
    .locals 3

    .line 269
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ProcessStats"

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProcessState dead: name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " common.name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;I)",
            "Lcom/android/internal/app/procstats/ProcessState;"
        }
    .end annotation

    .line 580
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 581
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 582
    iget-boolean v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v2, v1, :cond_0

    const-string v2, "ProcessStats"

    .line 587
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pulling dead proc: name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " common.name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v4, v4, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v5, v1, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    iget v6, v1, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    iget-wide v7, v1, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    iget-object v9, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v1

    .line 592
    :cond_0
    iget-boolean v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-eqz v2, :cond_4

    .line 596
    iget-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object p0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget v3, v1, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/LongSparseArray;

    if-eqz p0, :cond_3

    .line 603
    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    invoke-virtual {p0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    if-eqz p0, :cond_2

    .line 609
    iget-object p1, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    .line 610
    iget-object p2, p0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    iget-object v1, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v1, :cond_1

    .line 615
    iput-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    goto/16 :goto_0

    .line 612
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Didn\'t create per-package process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in pkg "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 605
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No existing package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v1, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " for multi-proc "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " version "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, v1, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 599
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No existing package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v1, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " for multi-proc "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    return-object v1
.end method


# virtual methods
.method public add(Lcom/android/internal/app/procstats/ProcessState;)V
    .locals 9

    .line 244
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->addDurations(Lcom/android/internal/app/procstats/DurationsTable;)V

    .line 245
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/PssTable;->mergeStats(Lcom/android/internal/app/procstats/PssTable;)V

    .line 246
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    iget v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 247
    iget v0, p1, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez v0, :cond_0

    .line 248
    iget v2, p1, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    iget-wide v3, p1, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    iget-wide v5, p1, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iget-wide v7, p1, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/app/procstats/ProcessState;->addCachedKill(IJJJ)V

    :cond_0
    return-void
.end method

.method public addPss(JJJZIJLandroid/util/ArrayMap;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZIJ",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v3, p11

    .line 460
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    const-wide/16 v4, 0x1

    packed-switch p8, :pswitch_data_0

    goto :goto_0

    .line 479
    :pswitch_0
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v7, v6, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    add-long/2addr v7, v4

    iput-wide v7, v6, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    .line 480
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    add-long v5, v5, p9

    iput-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    goto :goto_0

    .line 475
    :pswitch_1
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v7, v6, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    add-long/2addr v7, v4

    iput-wide v7, v6, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    .line 476
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    add-long v5, v5, p9

    iput-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    goto :goto_0

    .line 471
    :pswitch_2
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v7, v6, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    add-long/2addr v7, v4

    iput-wide v7, v6, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    .line 472
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    add-long v5, v5, p9

    iput-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    goto :goto_0

    .line 467
    :pswitch_3
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v7, v6, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    add-long/2addr v7, v4

    iput-wide v7, v6, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    .line 468
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    add-long v5, v5, p9

    iput-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    goto :goto_0

    .line 463
    :pswitch_4
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v7, v6, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    add-long/2addr v7, v4

    iput-wide v7, v6, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    .line 464
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    add-long v5, v5, p9

    iput-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    :goto_0
    if-nez p7, :cond_0

    .line 484
    iget v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    if-ne v1, v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssTime:J

    const-wide/16 v6, 0x7530

    add-long/2addr v4, v6

    cmp-long v1, v1, v4

    if-gez v1, :cond_0

    return-void

    .line 489
    :cond_0
    iget v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    iput v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    .line 490
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssTime:J

    .line 491
    iget v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 493
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v4, v1, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    iget v5, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    const/4 v6, 0x1

    move-wide/from16 v7, p1

    move-wide/from16 v9, p1

    move-wide/from16 v11, p1

    move-wide/from16 v13, p3

    move-wide/from16 v15, p3

    move-wide/from16 v17, p3

    move-wide/from16 v19, p5

    move-wide/from16 v21, p5

    move-wide/from16 v23, p5

    invoke-virtual/range {v4 .. v24}, Lcom/android/internal/app/procstats/PssTable;->mergeStats(IIJJJJJJJJJ)V

    .line 497
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-boolean v1, v1, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-eqz v3, :cond_2

    .line 502
    invoke-virtual/range {p11 .. p11}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_2

    .line 503
    invoke-direct {v0, v3, v1}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v2

    iget-object v4, v2, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    iget v5, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    const/4 v6, 0x1

    move-wide/from16 v7, p1

    move-wide/from16 v9, p1

    move-wide/from16 v11, p1

    move-wide/from16 v13, p3

    move-wide/from16 v15, p3

    move-wide/from16 v17, p3

    move-wide/from16 v19, p5

    move-wide/from16 v21, p5

    move-wide/from16 v23, p5

    invoke-virtual/range {v4 .. v24}, Lcom/android/internal/app/procstats/PssTable;->mergeStats(IIJJJJJJJJJ)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public aggregatePss(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 675
    new-instance v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;

    invoke-direct {v2}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;-><init>()V

    .line 676
    new-instance v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;

    invoke-direct {v3}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;-><init>()V

    .line 677
    new-instance v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;

    invoke-direct {v4}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 679
    :goto_0
    iget-object v8, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v8}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v8

    const/4 v9, 0x7

    const/4 v10, 0x2

    const-wide/16 v12, 0x0

    if-ge v6, v8, :cond_3

    .line 680
    iget-object v8, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v8, v6}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v8

    .line 681
    invoke-static {v8}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v8

    .line 682
    rem-int/lit8 v14, v8, 0xe

    move/from16 v16, v6

    .line 683
    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssSampleCount(I)J

    move-result-wide v5

    cmp-long v12, v5, v12

    if-lez v12, :cond_2

    .line 685
    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssAverage(I)J

    move-result-wide v7

    if-gt v14, v10, :cond_0

    .line 688
    invoke-virtual {v2, v7, v8, v5, v6}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    goto :goto_1

    :cond_0
    if-gt v14, v9, :cond_1

    .line 690
    invoke-virtual {v3, v7, v8, v5, v6}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    goto :goto_1

    .line 692
    :cond_1
    invoke-virtual {v4, v7, v8, v5, v6}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    :goto_1
    const/4 v7, 0x1

    :cond_2
    add-int/lit8 v6, v16, 0x1

    goto :goto_0

    :cond_3
    if-nez v7, :cond_4

    return-void

    .line 702
    :cond_4
    iget-wide v5, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    const-wide/16 v7, 0x3

    cmp-long v5, v5, v7

    if-gez v5, :cond_5

    iget-wide v5, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v5, v5, v12

    if-lez v5, :cond_5

    .line 704
    iget-wide v5, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    iget-wide v9, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    invoke-virtual {v2, v5, v6, v9, v10}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    .line 706
    :goto_2
    iget-wide v9, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v6, v9, v7

    if-gez v6, :cond_6

    iget-wide v9, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v6, v9, v12

    if-lez v6, :cond_6

    .line 708
    iget-wide v9, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    iget-wide v11, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    invoke-virtual {v2, v9, v10, v11, v12}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    const/4 v6, 0x1

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    .line 710
    :goto_3
    iget-wide v9, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v9, v9, v7

    if-gez v9, :cond_7

    iget-wide v9, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_7

    .line 712
    iget-wide v9, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    iget-wide v11, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    invoke-virtual {v3, v9, v10, v11, v12}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    const/16 v19, 0x1

    goto :goto_4

    :cond_7
    const/16 v19, 0x0

    .line 714
    :goto_4
    iget-wide v9, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v9, v9, v7

    if-gez v9, :cond_8

    if-nez v5, :cond_8

    iget-wide v9, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    const-wide/16 v11, 0x0

    cmp-long v5, v9, v11

    if-lez v5, :cond_8

    .line 715
    iget-wide v9, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    iget-wide v11, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    invoke-virtual {v3, v9, v10, v11, v12}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    .line 717
    :cond_8
    iget-wide v9, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v5, v9, v7

    if-gez v5, :cond_9

    if-nez v19, :cond_9

    iget-wide v9, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    const-wide/16 v11, 0x0

    cmp-long v5, v9, v11

    if-lez v5, :cond_9

    .line 718
    iget-wide v9, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    iget-wide v11, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    invoke-virtual {v4, v9, v10, v11, v12}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    .line 720
    :cond_9
    iget-wide v9, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v5, v9, v7

    if-gez v5, :cond_a

    if-nez v6, :cond_a

    iget-wide v5, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_a

    .line 721
    iget-wide v5, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    iget-wide v7, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    :cond_a
    const/4 v15, 0x0

    .line 723
    :goto_5
    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v5}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v5

    if-ge v15, v5, :cond_f

    .line 724
    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v5, v15}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v5

    .line 725
    invoke-static {v5}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v6

    .line 726
    iget-object v7, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v7, v5}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v7

    .line 727
    iget v5, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    if-ne v5, v6, :cond_b

    .line 728
    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v9, p2, v9

    add-long/2addr v7, v9

    .line 730
    :cond_b
    rem-int/lit8 v5, v6, 0xe

    .line 731
    iget-object v9, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateTime:[J

    aget-wide v13, v9, v5

    add-long/2addr v13, v7

    aput-wide v13, v9, v5

    .line 732
    invoke-virtual {v0, v6}, Lcom/android/internal/app/procstats/ProcessState;->getPssSampleCount(I)J

    move-result-wide v9

    const-wide/16 v13, 0x0

    cmp-long v16, v9, v13

    if-lez v16, :cond_c

    .line 735
    invoke-virtual {v0, v6}, Lcom/android/internal/app/procstats/ProcessState;->getPssAverage(I)J

    move-result-wide v17

    move-wide/from16 v13, v17

    goto :goto_6

    :cond_c
    const/4 v6, 0x2

    if-gt v5, v6, :cond_d

    .line 737
    iget-wide v9, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    .line 738
    iget-wide v13, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    goto :goto_6

    :cond_d
    const/4 v9, 0x7

    if-gt v5, v9, :cond_e

    .line 740
    iget-wide v13, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    .line 741
    iget-wide v9, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    move-wide/from16 v22, v9

    move-wide v9, v13

    move-wide/from16 v13, v22

    goto :goto_6

    .line 743
    :cond_e
    iget-wide v9, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    .line 744
    iget-wide v13, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    .line 746
    :goto_6
    iget-object v6, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStatePss:[J

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    aget-wide v2, v6, v5

    long-to-double v2, v2

    iget-object v6, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v6, v6, v5

    int-to-double v11, v6

    mul-double/2addr v2, v11

    long-to-double v11, v13

    long-to-double v13, v9

    mul-double/2addr v13, v11

    add-double/2addr v2, v13

    iget-object v6, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v6, v6, v5

    int-to-long v13, v6

    add-long/2addr v13, v9

    long-to-double v13, v13

    div-double/2addr v2, v13

    .line 750
    iget-object v6, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStatePss:[J

    double-to-long v2, v2

    aput-wide v2, v6, v5

    .line 751
    iget-object v2, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v3, v2, v5

    int-to-long v13, v3

    add-long/2addr v13, v9

    long-to-int v3, v13

    aput v3, v2, v5

    .line 752
    iget-object v2, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v9, v2, v5

    long-to-double v6, v7

    mul-double/2addr v11, v6

    add-double/2addr v9, v11

    aput-wide v9, v2, v5

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    goto/16 :goto_5

    :cond_f
    return-void
.end method

.method public clone(J)Lcom/android/internal/app/procstats/ProcessState;
    .locals 10

    .line 190
    new-instance v9, Lcom/android/internal/app/procstats/ProcessState;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    iget-wide v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    move-object v0, v9

    move-object v1, p0

    move-wide v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IJLjava/lang/String;J)V

    .line 191
    iget-object p1, v9, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {p1, p2}, Lcom/android/internal/app/procstats/DurationsTable;->addDurations(Lcom/android/internal/app/procstats/DurationsTable;)V

    .line 192
    iget-object p1, v9, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    iget-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/16 v0, 0xa

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/app/procstats/PssTable;->copyFrom(Lcom/android/internal/app/procstats/SparseMappingTable$Table;I)V

    .line 193
    iget p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    iput p1, v9, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 194
    iget p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    iput p1, v9, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    .line 195
    iget-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    iput-wide p1, v9, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 196
    iget-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iput-wide p1, v9, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    .line 197
    iget-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    iput-wide p1, v9, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    .line 198
    iget-boolean p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    iput-boolean p1, v9, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    .line 199
    iget p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    iput p1, v9, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    .line 200
    iget p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    iput p0, v9, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    return-object v9
.end method

.method public commitStateTime(J)V
    .locals 4

    .line 382
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 383
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 385
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    .line 388
    :cond_0
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    return-void
.end method

.method public computeProcessData(Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;J)V
    .locals 40

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    .line 985
    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    .line 986
    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxRss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgRss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minRss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    const/4 v5, 0x0

    .line 989
    :goto_0
    iget-object v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->screenStates:[I

    array-length v6, v6

    if-ge v5, v6, :cond_a

    const/4 v6, 0x0

    .line 990
    :goto_1
    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->memStates:[I

    array-length v7, v7

    if-ge v6, v7, :cond_9

    const/4 v7, 0x0

    .line 991
    :goto_2
    iget-object v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->procStates:[I

    array-length v8, v8

    if-ge v7, v8, :cond_8

    .line 992
    iget-object v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->screenStates:[I

    aget v8, v8, v5

    iget-object v9, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->memStates:[I

    aget v9, v9, v6

    add-int/2addr v8, v9

    mul-int/lit8 v8, v8, 0xe

    iget-object v9, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->procStates:[I

    aget v9, v9, v7

    add-int/2addr v8, v9

    .line 994
    iget-wide v9, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    move-wide/from16 v11, p2

    invoke-virtual {v0, v8, v11, v12}, Lcom/android/internal/app/procstats/ProcessState;->getDuration(IJ)J

    move-result-wide v13

    add-long/2addr v9, v13

    iput-wide v9, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    .line 995
    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssSampleCount(I)J

    move-result-wide v9

    cmp-long v13, v9, v2

    if-lez v13, :cond_7

    .line 997
    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssMinimum(I)J

    move-result-wide v13

    move v15, v5

    .line 998
    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssAverage(I)J

    move-result-wide v4

    .line 999
    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssMaximum(I)J

    move-result-wide v2

    .line 1000
    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssMinimum(I)J

    move-result-wide v11

    move/from16 v18, v6

    move/from16 v19, v7

    .line 1001
    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssAverage(I)J

    move-result-wide v6

    move-wide/from16 v20, v9

    .line 1002
    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssMaximum(I)J

    move-result-wide v9

    move-wide/from16 v22, v9

    .line 1003
    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssRssMinimum(I)J

    move-result-wide v9

    move-wide/from16 v24, v9

    .line 1004
    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssRssAverage(I)J

    move-result-wide v9

    move-wide/from16 v26, v9

    .line 1005
    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssRssMaximum(I)J

    move-result-wide v8

    move-wide/from16 v28, v8

    .line 1006
    iget-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    const-wide/16 v16, 0x0

    cmp-long v8, v8, v16

    if-nez v8, :cond_0

    .line 1007
    iput-wide v13, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    .line 1008
    iput-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    .line 1009
    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    .line 1010
    iput-wide v11, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    .line 1011
    iput-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    move-wide/from16 v8, v22

    .line 1012
    iput-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    move-wide/from16 v2, v24

    .line 1013
    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minRss:J

    move-wide/from16 v2, v26

    .line 1014
    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgRss:J

    move-wide/from16 v2, v28

    .line 1015
    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxRss:J

    move-wide/from16 v13, v20

    goto/16 :goto_3

    :cond_0
    move-wide/from16 v36, v22

    move-wide/from16 v30, v24

    move-wide/from16 v32, v26

    move-wide/from16 v34, v28

    .line 1017
    iget-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    cmp-long v8, v13, v8

    if-gez v8, :cond_1

    .line 1018
    iput-wide v13, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    .line 1020
    :cond_1
    iget-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    long-to-double v8, v8

    iget-wide v13, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    long-to-double v13, v13

    mul-double/2addr v8, v13

    long-to-double v4, v4

    move-wide/from16 v38, v6

    move-wide/from16 v13, v20

    long-to-double v6, v13

    mul-double/2addr v4, v6

    add-double/2addr v8, v4

    iget-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    add-long/2addr v4, v13

    long-to-double v4, v4

    div-double/2addr v8, v4

    double-to-long v4, v8

    iput-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    .line 1022
    iget-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 1023
    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    .line 1025
    :cond_2
    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    cmp-long v2, v11, v2

    if-gez v2, :cond_3

    .line 1026
    iput-wide v11, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    .line 1028
    :cond_3
    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    long-to-double v2, v2

    iget-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    long-to-double v4, v4

    mul-double/2addr v2, v4

    move-wide/from16 v4, v38

    long-to-double v4, v4

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    add-long/2addr v4, v13

    long-to-double v4, v4

    div-double/2addr v2, v4

    double-to-long v2, v2

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    .line 1030
    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    cmp-long v2, v36, v2

    if-lez v2, :cond_4

    move-wide/from16 v2, v36

    .line 1031
    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    .line 1033
    :cond_4
    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minRss:J

    move-wide/from16 v4, v30

    cmp-long v2, v4, v2

    if-gez v2, :cond_5

    .line 1034
    iput-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minRss:J

    .line 1036
    :cond_5
    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgRss:J

    long-to-double v2, v2

    iget-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    long-to-double v4, v4

    mul-double/2addr v2, v4

    move-wide/from16 v4, v32

    long-to-double v4, v4

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    add-long/2addr v4, v13

    long-to-double v4, v4

    div-double/2addr v2, v4

    double-to-long v2, v2

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgRss:J

    .line 1038
    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxRss:J

    move-wide/from16 v4, v34

    cmp-long v2, v4, v2

    if-lez v2, :cond_6

    .line 1039
    iput-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxRss:J

    .line 1042
    :cond_6
    :goto_3
    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    add-long/2addr v2, v13

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    goto :goto_4

    :cond_7
    move-wide/from16 v16, v2

    move v15, v5

    move/from16 v18, v6

    move/from16 v19, v7

    :goto_4
    add-int/lit8 v7, v19, 0x1

    move v5, v15

    move-wide/from16 v2, v16

    move/from16 v6, v18

    goto/16 :goto_2

    :cond_8
    move-wide/from16 v16, v2

    move v15, v5

    move/from16 v18, v6

    add-int/lit8 v6, v18, 0x1

    goto/16 :goto_1

    :cond_9
    move-wide/from16 v16, v2

    move v15, v5

    add-int/lit8 v5, v15, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public computeProcessTimeLocked([I[I[IJ)J
    .locals 8

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-wide v2, v1

    move v1, v0

    .line 759
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_2

    move-wide v3, v2

    move v2, v0

    .line 760
    :goto_1
    array-length v5, p2

    if-ge v2, v5, :cond_1

    move-wide v4, v3

    move v3, v0

    .line 761
    :goto_2
    array-length v6, p3

    if-ge v3, v6, :cond_0

    .line 762
    aget v6, p1, v1

    aget v7, p2, v2

    add-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0xe

    aget v7, p3, v3

    add-int/2addr v6, v7

    .line 764
    invoke-virtual {p0, v6, p4, p5}, Lcom/android/internal/app/procstats/ProcessState;->getDuration(IJ)J

    move-result-wide v6

    add-long/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    move-wide v3, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move-wide v2, v3

    goto :goto_0

    .line 768
    :cond_2
    iput-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mTmpTotalTime:J

    return-wide v2
.end method

.method public decActiveServices(Ljava/lang/String;)V
    .locals 3

    .line 411
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/ProcessState;->decActiveServices(Ljava/lang/String;)V

    .line 414
    :cond_0
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    .line 415
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    if-gez v0, :cond_1

    const-string v0, "ProcessStats"

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proc active services underrun: pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " proc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 418
    iput p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    :cond_1
    return-void
.end method

.method public decStartedServices(IJLjava/lang/String;)V
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/ProcessState;->decStartedServices(IJLjava/lang/String;)V

    .line 448
    :cond_0
    iget p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    .line 449
    iget p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-nez p1, :cond_1

    iget p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    rem-int/lit8 p1, p1, 0xe

    const/4 p4, 0x6

    if-ne p1, p4, :cond_1

    const/4 p1, -0x1

    .line 450
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->setState(IJ)V

    goto :goto_0

    .line 451
    :cond_1
    iget p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-gez p1, :cond_2

    const-string p1, "ProcessStats"

    .line 452
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Proc started services underrun: pkg="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " uid="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " name="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 454
    iput p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    :cond_2
    :goto_0
    return-void
.end method

.method public dumpAllPssCheckin(Ljava/io/PrintWriter;)V
    .locals 7

    .line 1189
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1191
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v3, v2}, Lcom/android/internal/app/procstats/PssTable;->getKeyAt(I)I

    move-result v3

    .line 1192
    invoke-static {v3}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v4

    const/16 v5, 0x2c

    .line 1193
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 1194
    invoke-static {p1, v4}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTag(Ljava/io/PrintWriter;I)V

    const/16 v4, 0x3a

    .line 1195
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1196
    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v5, v3, v1}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 1197
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1198
    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v6, 0x1

    invoke-virtual {v5, v3, v6}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 1199
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1200
    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v6, 0x2

    invoke-virtual {v5, v3, v6}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 1201
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1202
    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v6, 0x3

    invoke-virtual {v5, v3, v6}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 1203
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1204
    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v6, 0x4

    invoke-virtual {v5, v3, v6}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 1205
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1206
    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v6, 0x5

    invoke-virtual {v5, v3, v6}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 1207
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1208
    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v6, 0x6

    invoke-virtual {v5, v3, v6}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 1209
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1210
    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v6, 0x7

    invoke-virtual {v5, v3, v6}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 1211
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1212
    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/16 v6, 0x8

    invoke-virtual {v5, v3, v6}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 1213
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1214
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/16 v5, 0x9

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method public dumpAllStateCheckin(Ljava/io/PrintWriter;J)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 1173
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1174
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v2, v0}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v2

    .line 1175
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v3

    .line 1176
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v4, v2}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v4

    .line 1177
    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    if-ne v2, v3, :cond_0

    .line 1179
    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v1, p2, v1

    add-long/2addr v4, v1

    const/4 v1, 0x1

    .line 1181
    :cond_0
    invoke-static {p1, v3, v4, v5}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 1183
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 1184
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long/2addr p2, v1

    invoke-static {p1, v0, p2, p3}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V

    :cond_2
    return-void
.end method

.method public dumpCsv(Ljava/io/PrintWriter;Z[IZ[IZ[IJ)V
    .locals 26

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    if-eqz p2, :cond_0

    .line 1052
    array-length v7, v2

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    :goto_0
    if-eqz p4, :cond_1

    .line 1053
    array-length v8, v4

    goto :goto_1

    :cond_1
    const/4 v8, 0x1

    :goto_1
    if-eqz p6, :cond_2

    .line 1054
    array-length v9, v5

    goto :goto_2

    :cond_2
    const/4 v9, 0x1

    :goto_2
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v7, :cond_11

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v8, :cond_10

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v9, :cond_f

    if-eqz p2, :cond_3

    .line 1058
    aget v14, v2, v11

    goto :goto_6

    :cond_3
    const/4 v14, 0x0

    :goto_6
    if-eqz p4, :cond_4

    .line 1059
    aget v15, v4, v12

    goto :goto_7

    :cond_4
    const/4 v15, 0x0

    :goto_7
    if-eqz p6, :cond_5

    .line 1060
    aget v16, v5, v13

    goto :goto_8

    :cond_5
    const/16 v16, 0x0

    :goto_8
    if-eqz p2, :cond_6

    const/4 v6, 0x1

    goto :goto_9

    .line 1061
    :cond_6
    array-length v6, v2

    :goto_9
    if-eqz p4, :cond_7

    const/4 v10, 0x1

    goto :goto_a

    .line 1062
    :cond_7
    array-length v10, v4

    :goto_a
    if-eqz p6, :cond_8

    move/from16 v17, v7

    const/4 v7, 0x1

    goto :goto_b

    :cond_8
    move/from16 v17, v7

    .line 1063
    array-length v7, v5

    :goto_b
    const-wide/16 v18, 0x0

    move/from16 v20, v8

    move/from16 v21, v11

    move/from16 v22, v12

    move-wide/from16 v11, v18

    const/4 v8, 0x0

    :goto_c
    if-ge v8, v6, :cond_e

    move-wide/from16 v18, v11

    const/4 v11, 0x0

    :goto_d
    if-ge v11, v10, :cond_d

    const/4 v12, 0x0

    :goto_e
    if-ge v12, v7, :cond_c

    if-eqz p2, :cond_9

    const/16 v23, 0x0

    goto :goto_f

    .line 1068
    :cond_9
    aget v23, v2, v8

    :goto_f
    if-eqz p4, :cond_a

    const/16 v24, 0x0

    goto :goto_10

    .line 1069
    :cond_a
    aget v24, v4, v11

    :goto_10
    if-eqz p6, :cond_b

    const/16 v25, 0x0

    goto :goto_11

    .line 1070
    :cond_b
    aget v25, v5, v12

    :goto_11
    add-int v23, v14, v23

    add-int v23, v23, v15

    add-int v23, v23, v24

    mul-int/lit8 v23, v23, 0xe

    add-int v23, v23, v16

    add-int v1, v23, v25

    move-object/from16 v2, p0

    move-wide/from16 v3, p8

    .line 1073
    invoke-virtual {v2, v1, v3, v4}, Lcom/android/internal/app/procstats/ProcessState;->getDuration(IJ)J

    move-result-wide v23

    add-long v18, v18, v23

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, p3

    move-object/from16 v4, p5

    goto :goto_e

    :cond_c
    move-object/from16 v2, p0

    move-wide/from16 v3, p8

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, p3

    move-object/from16 v4, p5

    goto :goto_d

    :cond_d
    move-object/from16 v2, p0

    move-wide/from16 v3, p8

    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v11, v18

    move-object/from16 v2, p3

    move-object/from16 v4, p5

    goto :goto_c

    :cond_e
    move-object/from16 v2, p0

    move-wide/from16 v3, p8

    const-string v1, "\t"

    .line 1077
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1078
    invoke-virtual {v0, v11, v12}, Ljava/io/PrintWriter;->print(J)V

    add-int/lit8 v13, v13, 0x1

    move/from16 v7, v17

    move/from16 v8, v20

    move/from16 v11, v21

    move/from16 v12, v22

    move-object/from16 v2, p3

    move-object/from16 v4, p5

    goto/16 :goto_5

    :cond_f
    move-object/from16 v2, p0

    move-wide/from16 v3, p8

    move/from16 v17, v7

    move/from16 v20, v8

    move/from16 v21, v11

    move/from16 v22, v12

    add-int/lit8 v12, v22, 0x1

    move-object/from16 v2, p3

    move-object/from16 v4, p5

    goto/16 :goto_4

    :cond_10
    move-object/from16 v2, p0

    move-wide/from16 v3, p8

    move/from16 v17, v7

    move/from16 v20, v8

    move/from16 v21, v11

    add-int/lit8 v11, v21, 0x1

    move-object/from16 v2, p3

    move-object/from16 v4, p5

    goto/16 :goto_3

    :cond_11
    return-void
.end method

.method public dumpInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 0

    if-eqz p3, :cond_1

    .line 957
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "myID="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 958
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, " mCommonProcess="

    .line 959
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 960
    iget-object p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, " mPackage="

    .line 961
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 962
    iget-boolean p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-eqz p3, :cond_0

    .line 963
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mMultiPackage="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 965
    :cond_0
    iget-object p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq p0, p3, :cond_1

    .line 966
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "Common Proc: "

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object p3, p3, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "/"

    .line 967
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget p3, p3, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    const-string p3, " pkg="

    .line 968
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object p3, p3, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 971
    :cond_1
    iget-boolean p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    if-eqz p3, :cond_2

    .line 972
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mActive="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 974
    :cond_2
    iget-boolean p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    if-eqz p3, :cond_3

    .line 975
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mDead="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 977
    :cond_3
    iget p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    if-nez p3, :cond_4

    iget p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-eqz p3, :cond_5

    .line 978
    :cond_4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mNumActiveServices="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mNumStartedServices="

    .line 979
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 980
    iget p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    :cond_5
    return-void
.end method

.method public dumpPackageProcCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IJLjava/lang/String;J)V
    .locals 1

    const-string v0, "pkgproc,"

    .line 1086
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1087
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ","

    .line 1088
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1089
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    .line 1090
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1091
    invoke-virtual {p1, p4, p5}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, ","

    .line 1092
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1093
    invoke-static {p2, p6}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1094
    invoke-virtual {p0, p1, p7, p8}, Lcom/android/internal/app/procstats/ProcessState;->dumpAllStateCheckin(Ljava/io/PrintWriter;J)V

    .line 1095
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1096
    iget-object p7, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {p7}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result p7

    if-lez p7, :cond_0

    const-string p7, "pkgpss,"

    .line 1097
    invoke-virtual {p1, p7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1098
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p7, ","

    .line 1099
    invoke-virtual {p1, p7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1100
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    const-string p7, ","

    .line 1101
    invoke-virtual {p1, p7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1102
    invoke-virtual {p1, p4, p5}, Ljava/io/PrintWriter;->print(J)V

    const-string p7, ","

    .line 1103
    invoke-virtual {p1, p7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1104
    invoke-static {p2, p6}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p1, p7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1105
    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/ProcessState;->dumpAllPssCheckin(Ljava/io/PrintWriter;)V

    .line 1106
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1108
    :cond_0
    iget p7, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    if-gtz p7, :cond_1

    iget p7, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez p7, :cond_2

    :cond_1
    const-string p7, "pkgkills,"

    .line 1109
    invoke-virtual {p1, p7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1110
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p7, ","

    .line 1111
    invoke-virtual {p1, p7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1112
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    const-string p3, ","

    .line 1113
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1114
    invoke-virtual {p1, p4, p5}, Ljava/io/PrintWriter;->print(J)V

    const-string p3, ","

    .line 1115
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1116
    invoke-static {p2, p6}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, ","

    .line 1117
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "0"

    .line 1118
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, ","

    .line 1119
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1120
    iget p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, ","

    .line 1121
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1122
    iget p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, ","

    .line 1123
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1124
    iget-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    invoke-virtual {p1, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    const-string p2, ":"

    .line 1125
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1126
    iget-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    invoke-virtual {p1, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    const-string p2, ":"

    .line 1127
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1128
    iget-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    invoke-virtual {p1, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    .line 1129
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_2
    return-void
.end method

.method public dumpProcCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IJ)V
    .locals 1

    .line 1134
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "proc,"

    .line 1135
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1136
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ","

    .line 1137
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1138
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1139
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/internal/app/procstats/ProcessState;->dumpAllStateCheckin(Ljava/io/PrintWriter;J)V

    .line 1140
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1142
    :cond_0
    iget-object p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {p4}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result p4

    if-lez p4, :cond_1

    const-string p4, "pss,"

    .line 1143
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1144
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, ","

    .line 1145
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1146
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1147
    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/ProcessState;->dumpAllPssCheckin(Ljava/io/PrintWriter;)V

    .line 1148
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1150
    :cond_1
    iget p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    if-gtz p4, :cond_2

    iget p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez p4, :cond_3

    :cond_2
    const-string p4, "kills,"

    .line 1151
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1152
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, ","

    .line 1153
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1154
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, ","

    .line 1155
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "0"

    .line 1156
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, ","

    .line 1157
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1158
    iget p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, ","

    .line 1159
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1160
    iget p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, ","

    .line 1161
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1162
    iget-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    invoke-virtual {p1, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    const-string p2, ":"

    .line 1163
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1164
    iget-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    invoke-virtual {p1, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    const-string p2, ":"

    .line 1165
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1166
    iget-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    invoke-virtual {p1, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    .line 1167
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_3
    return-void
.end method

.method public dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJ)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, -0x1

    .line 818
    :goto_0
    array-length v13, v2

    if-ge v9, v13, :cond_8

    move v13, v12

    const/16 v16, -0x1

    move-wide v11, v10

    const/4 v10, 0x0

    .line 820
    :goto_1
    array-length v5, v3

    if-ge v10, v5, :cond_7

    move/from16 v8, v16

    const/4 v5, 0x0

    .line 821
    :goto_2
    array-length v14, v4

    if-ge v5, v14, :cond_6

    .line 822
    aget v14, v2, v9

    .line 823
    aget v15, v3, v10

    add-int v16, v14, v15

    mul-int/lit8 v16, v16, 0xe

    .line 824
    aget v17, v4, v5

    add-int v6, v16, v17

    .line 825
    iget-object v7, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    move/from16 v19, v9

    int-to-byte v9, v6

    move/from16 v20, v10

    invoke-virtual {v7, v9}, Lcom/android/internal/app/procstats/DurationsTable;->getValueForId(B)J

    move-result-wide v9

    const-string v7, ""

    move-object/from16 v21, v7

    .line 827
    iget v7, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    if-ne v7, v6, :cond_0

    const-string v7, " (running)"

    goto :goto_3

    :cond_0
    move-object/from16 v7, v21

    :goto_3
    const-wide/16 v17, 0x0

    cmp-long v6, v9, v17

    if-eqz v6, :cond_5

    .line 831
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 832
    array-length v6, v2

    const/4 v0, 0x1

    if-le v6, v0, :cond_2

    if-eq v13, v14, :cond_1

    move v6, v14

    goto :goto_4

    :cond_1
    const/4 v6, -0x1

    .line 833
    :goto_4
    invoke-static {v1, v6}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    move v13, v14

    .line 837
    :cond_2
    array-length v6, v3

    if-le v6, v0, :cond_4

    if-eq v8, v15, :cond_3

    move v0, v15

    :goto_5
    const/16 v6, 0x2f

    goto :goto_6

    :cond_3
    const/4 v0, -0x1

    goto :goto_5

    .line 838
    :goto_6
    invoke-static {v1, v0, v6}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    move v8, v15

    .line 842
    :cond_4
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    aget v6, v4, v5

    aget-object v0, v0, v6

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 843
    invoke-static {v9, v10, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-long/2addr v11, v9

    :cond_5
    add-int/lit8 v5, v5, 0x1

    move/from16 v9, v19

    move/from16 v10, v20

    move-object/from16 v0, p0

    goto :goto_2

    :cond_6
    move/from16 v19, v9

    move/from16 v20, v10

    add-int/lit8 v10, v20, 0x1

    move/from16 v16, v8

    move-object/from16 v0, p0

    goto :goto_1

    :cond_7
    move/from16 v19, v9

    add-int/lit8 v9, v19, 0x1

    move-wide v10, v11

    move v12, v13

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_8
    const-wide/16 v5, 0x0

    cmp-long v0, v10, v5

    if-eqz v0, :cond_b

    .line 850
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 851
    array-length v0, v2

    const/4 v2, 0x1

    if-le v0, v2, :cond_9

    const/4 v0, -0x1

    .line 852
    invoke-static {v1, v0}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    goto :goto_7

    :cond_9
    const/4 v0, -0x1

    .line 854
    :goto_7
    array-length v3, v3

    if-le v3, v2, :cond_a

    const/16 v2, 0x2f

    .line 855
    invoke-static {v1, v0, v2}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    :cond_a
    const-string v0, "TOTAL  : "

    .line 857
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 858
    invoke-static {v10, v11, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 859
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_b
    return-void
.end method

.method public dumpPss(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    .line 867
    :goto_0
    array-length v10, v2

    if-ge v7, v10, :cond_8

    move v10, v9

    const/4 v13, -0x1

    move v9, v8

    const/4 v8, 0x0

    .line 869
    :goto_1
    array-length v14, v3

    if-ge v8, v14, :cond_7

    move v14, v13

    move v13, v10

    move v10, v9

    const/4 v9, 0x0

    .line 870
    :goto_2
    array-length v15, v4

    if-ge v9, v15, :cond_6

    .line 871
    aget v15, v2, v7

    .line 872
    aget v5, v3, v8

    add-int v16, v15, v5

    mul-int/lit8 v16, v16, 0xe

    .line 873
    aget v17, v4, v9

    add-int v6, v16, v17

    .line 874
    invoke-virtual {v0, v6}, Lcom/android/internal/app/procstats/ProcessState;->getPssSampleCount(I)J

    move-result-wide v11

    const-wide/16 v16, 0x0

    cmp-long v16, v11, v16

    if-lez v16, :cond_5

    move/from16 v18, v7

    if-nez v10, :cond_0

    .line 877
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "PSS/USS ("

    .line 878
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 879
    iget-object v10, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v10}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, " entries):"

    .line 880
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v10, 0x1

    .line 883
    :cond_0
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "  "

    .line 884
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 885
    array-length v7, v2

    const/4 v2, 0x1

    if-le v7, v2, :cond_2

    if-eq v13, v15, :cond_1

    move v7, v15

    goto :goto_3

    :cond_1
    const/4 v7, -0x1

    .line 886
    :goto_3
    invoke-static {v1, v7}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    move v13, v15

    .line 890
    :cond_2
    array-length v7, v3

    if-le v7, v2, :cond_4

    if-eq v14, v5, :cond_3

    move v2, v5

    goto :goto_4

    :cond_3
    const/4 v2, -0x1

    :goto_4
    const/16 v7, 0x2f

    .line 891
    invoke-static {v1, v2, v7}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    move v14, v5

    .line 895
    :cond_4
    sget-object v2, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    aget v5, v4, v9

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 896
    invoke-virtual {v1, v11, v12}, Ljava/io/PrintWriter;->print(J)V

    const-string v2, " samples "

    .line 897
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 898
    invoke-virtual {v0, v6}, Lcom/android/internal/app/procstats/ProcessState;->getPssMinimum(I)J

    move-result-wide v11

    const-wide/16 v16, 0x400

    mul-long v11, v11, v16

    invoke-static {v1, v11, v12}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v2, " "

    .line 899
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 900
    invoke-virtual {v0, v6}, Lcom/android/internal/app/procstats/ProcessState;->getPssAverage(I)J

    move-result-wide v11

    mul-long v11, v11, v16

    invoke-static {v1, v11, v12}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v2, " "

    .line 901
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 902
    invoke-virtual {v0, v6}, Lcom/android/internal/app/procstats/ProcessState;->getPssMaximum(I)J

    move-result-wide v11

    mul-long v11, v11, v16

    invoke-static {v1, v11, v12}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v2, " / "

    .line 903
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 904
    invoke-virtual {v0, v6}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssMinimum(I)J

    move-result-wide v11

    mul-long v11, v11, v16

    invoke-static {v1, v11, v12}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v2, " "

    .line 905
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 906
    invoke-virtual {v0, v6}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssAverage(I)J

    move-result-wide v11

    mul-long v11, v11, v16

    invoke-static {v1, v11, v12}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v2, " "

    .line 907
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 908
    invoke-virtual {v0, v6}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssMaximum(I)J

    move-result-wide v11

    mul-long v11, v11, v16

    invoke-static {v1, v11, v12}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v2, " / "

    .line 909
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 910
    invoke-virtual {v0, v6}, Lcom/android/internal/app/procstats/ProcessState;->getPssRssMinimum(I)J

    move-result-wide v11

    mul-long v11, v11, v16

    invoke-static {v1, v11, v12}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v2, " "

    .line 911
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 912
    invoke-virtual {v0, v6}, Lcom/android/internal/app/procstats/ProcessState;->getPssRssAverage(I)J

    move-result-wide v11

    mul-long v11, v11, v16

    invoke-static {v1, v11, v12}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v2, " "

    .line 913
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 914
    invoke-virtual {v0, v6}, Lcom/android/internal/app/procstats/ProcessState;->getPssRssMaximum(I)J

    move-result-wide v5

    mul-long v5, v5, v16

    invoke-static {v1, v5, v6}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 915
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_5

    :cond_5
    move/from16 v18, v7

    :goto_5
    add-int/lit8 v9, v9, 0x1

    move/from16 v7, v18

    move-object/from16 v2, p3

    goto/16 :goto_2

    :cond_6
    move/from16 v18, v7

    add-int/lit8 v8, v8, 0x1

    move v9, v10

    move v10, v13

    move v13, v14

    move-object/from16 v2, p3

    goto/16 :goto_1

    :cond_7
    move/from16 v18, v7

    add-int/lit8 v7, v18, 0x1

    move v8, v9

    move v9, v10

    move-object/from16 v2, p3

    goto/16 :goto_0

    .line 920
    :cond_8
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    if-eqz v2, :cond_9

    .line 921
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Killed for excessive CPU use: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 922
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " times"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 924
    :cond_9
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-eqz v2, :cond_a

    .line 925
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Killed from cached state: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 926
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " times from pss "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 927
    iget-wide v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    const-wide/16 v4, 0x400

    mul-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 928
    iget-wide v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    mul-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 929
    iget-wide v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    mul-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_a
    return-void
.end method

.method public dumpSummary(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJJ)V
    .locals 17

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    .line 775
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "* "

    .line 776
    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 777
    iget-object v0, v12, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " / "

    .line 778
    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 779
    iget v0, v12, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-static {v13, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v0, " / v"

    .line 780
    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 781
    iget-wide v0, v12, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    invoke-virtual {v13, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, ":"

    .line 782
    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "         TOTAL: "

    const/4 v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    .line 783
    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    const-string v3, "    Persistent: "

    const/4 v14, 0x1

    .line 785
    new-array v6, v14, [I

    const/4 v15, 0x0

    aput v15, v6, v15

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    const-string v3, "           Top: "

    .line 787
    new-array v6, v14, [I

    aput v14, v6, v15

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    const-string v3, "        Imp Fg: "

    .line 789
    new-array v6, v14, [I

    const/4 v0, 0x2

    aput v0, v6, v15

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    const-string v3, "        Imp Bg: "

    .line 791
    new-array v6, v14, [I

    const/4 v11, 0x3

    aput v11, v6, v15

    const/16 v16, 0x1

    move/from16 v11, v16

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    const-string v3, "        Backup: "

    .line 793
    new-array v6, v14, [I

    const/4 v0, 0x4

    aput v0, v6, v15

    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    const-string v3, "     Heavy Wgt: "

    .line 795
    new-array v6, v14, [I

    const/16 v0, 0x8

    aput v0, v6, v15

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    const-string v3, "       Service: "

    .line 797
    new-array v6, v14, [I

    const/4 v0, 0x5

    aput v0, v6, v15

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    const-string v3, "    Service Rs: "

    .line 799
    new-array v6, v14, [I

    const/4 v0, 0x6

    aput v0, v6, v15

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    const-string v3, "      Receiver: "

    .line 801
    new-array v6, v14, [I

    const/4 v0, 0x7

    aput v0, v6, v15

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    const-string v3, "         Heavy: "

    .line 803
    new-array v6, v14, [I

    const/16 v16, 0x9

    aput v16, v6, v15

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    const-string v3, "        (Home): "

    .line 805
    new-array v6, v14, [I

    aput v16, v6, v15

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    const-string v3, "    (Last Act): "

    .line 807
    new-array v6, v14, [I

    const/16 v0, 0xa

    aput v0, v6, v15

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    const-string v3, "      (Cached): "

    const/4 v0, 0x3

    .line 809
    new-array v6, v0, [I

    fill-array-data v6, :array_0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    return-void

    nop

    :array_0
    .array-data 4
        0xb
        0xc
        0xd
    .end array-data
.end method

.method public getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    return-object p0
.end method

.method public getDuration(IJ)J
    .locals 3

    .line 621
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->getValueForId(B)J

    move-result-wide v0

    .line 622
    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    if-ne v2, p1, :cond_0

    .line 623
    iget-wide p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long/2addr p2, p0

    add-long/2addr v0, p2

    :cond_0
    return-wide v0
.end method

.method public getDurationsBucketCount()I
    .locals 0

    .line 240
    iget-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {p0}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result p0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    return-object p0
.end method

.method public getPssAverage(I)J
    .locals 1

    .line 637
    iget-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte p1, p1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide p0

    return-wide p0
.end method

.method public getPssMaximum(I)J
    .locals 1

    .line 641
    iget-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte p1, p1

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide p0

    return-wide p0
.end method

.method public getPssMinimum(I)J
    .locals 1

    .line 633
    iget-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte p1, p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide p0

    return-wide p0
.end method

.method public getPssRssAverage(I)J
    .locals 1

    .line 661
    iget-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte p1, p1

    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide p0

    return-wide p0
.end method

.method public getPssRssMaximum(I)J
    .locals 1

    .line 665
    iget-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte p1, p1

    const/16 v0, 0x9

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide p0

    return-wide p0
.end method

.method public getPssRssMinimum(I)J
    .locals 1

    .line 657
    iget-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte p1, p1

    const/4 v0, 0x7

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide p0

    return-wide p0
.end method

.method public getPssSampleCount(I)J
    .locals 1

    .line 629
    iget-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte p1, p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide p0

    return-wide p0
.end method

.method public getPssUssAverage(I)J
    .locals 1

    .line 649
    iget-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte p1, p1

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide p0

    return-wide p0
.end method

.method public getPssUssMaximum(I)J
    .locals 1

    .line 653
    iget-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte p1, p1

    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide p0

    return-wide p0
.end method

.method public getPssUssMinimum(I)J
    .locals 1

    .line 645
    iget-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte p1, p1

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide p0

    return-wide p0
.end method

.method public getUid()I
    .locals 0

    .line 224
    iget p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    return p0
.end method

.method public getVersion()J
    .locals 2

    .line 228
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    return-wide v0
.end method

.method public hasAnyData()Z
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    .line 337
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public incActiveServices(Ljava/lang/String;)V
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/ProcessState;->incActiveServices(Ljava/lang/String;)V

    .line 401
    :cond_0
    iget p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    return-void
.end method

.method public incStartedServices(IJLjava/lang/String;)V
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/ProcessState;->incStartedServices(IJLjava/lang/String;)V

    .line 432
    :cond_0
    iget p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    const/4 v0, 0x1

    add-int/2addr p4, v0

    iput p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    .line 433
    iget p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-ne p4, v0, :cond_1

    iget p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    const/4 v0, -0x1

    if-ne p4, v0, :cond_1

    mul-int/lit8 p1, p1, 0xe

    add-int/lit8 p1, p1, 0x6

    .line 434
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->setState(IJ)V

    :cond_1
    return-void
.end method

.method public isActive()Z
    .locals 0

    .line 331
    iget-boolean p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    return p0
.end method

.method public isInUse()Z
    .locals 1

    .line 326
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-gtz v0, :cond_1

    iget p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isMultiPackage()Z
    .locals 0

    .line 232
    iget-boolean p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    return p0
.end method

.method public makeActive()V
    .locals 1

    .line 317
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    const/4 v0, 0x1

    .line 318
    iput-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    return-void
.end method

.method public makeDead()V
    .locals 1

    const/4 v0, 0x1

    .line 265
    iput-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    return-void
.end method

.method public makeInactive()V
    .locals 1

    const/4 v0, 0x0

    .line 322
    iput-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    return-void
.end method

.method public makeStandalone()V
    .locals 0

    .line 216
    iput-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    return-void
.end method

.method public pullFixedProc(Ljava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;
    .locals 3

    .line 554
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-eqz v0, :cond_3

    .line 558
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    if-eqz v0, :cond_2

    .line 563
    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    if-eqz v0, :cond_1

    .line 568
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v0, :cond_0

    return-object v0

    .line 570
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Didn\'t create per-package process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " vers "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 565
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Didn\'t find package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " vers "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Didn\'t find package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-object p0
.end method

.method public readFromParcel(Landroid/os/Parcel;Z)Z
    .locals 4

    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz p2, :cond_1

    .line 293
    iput-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    .line 296
    :cond_1
    iget-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {p2, p1}, Lcom/android/internal/app/procstats/DurationsTable;->readFromParcel(Landroid/os/Parcel;)Z

    move-result p2

    if-nez p2, :cond_2

    return v2

    .line 300
    :cond_2
    iget-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {p2, p1}, Lcom/android/internal/app/procstats/PssTable;->readFromParcel(Landroid/os/Parcel;)Z

    move-result p2

    if-nez p2, :cond_3

    return v2

    .line 303
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 305
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    .line 306
    iget p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez p2, :cond_4

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    goto :goto_1

    :cond_4
    const-wide/16 p1, 0x0

    .line 311
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    iput-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iput-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    :goto_1
    return v1
.end method

.method public reportCachedKill(Landroid/util/ArrayMap;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;J)V"
        }
    .end annotation

    .line 542
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    .line 543
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    const/4 v1, 0x1

    move-wide v2, p2

    move-wide v4, p2

    move-wide v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/procstats/ProcessState;->addCachedKill(IJJJ)V

    .line 544
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-boolean v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-nez v0, :cond_0

    return-void

    .line 548
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 549
    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v1

    const/4 v2, 0x1

    move-wide v3, p2

    move-wide v5, p2

    move-wide v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/app/procstats/ProcessState;->addCachedKill(IJJJ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public reportExcessiveCpu(Landroid/util/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    .line 511
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    .line 512
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 513
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-boolean v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-nez v0, :cond_0

    return-void

    .line 517
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 518
    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v1

    iget v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public resetSafely(J)V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->resetTable()V

    .line 255
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/PssTable;->resetTable()V

    .line 256
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    const/4 p1, -0x1

    .line 257
    iput p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    const-wide/16 p1, 0x0

    .line 258
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssTime:J

    const/4 v0, 0x0

    .line 259
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 260
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    .line 261
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    iput-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iput-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    return-void
.end method

.method public setMultiPackage(Z)V
    .locals 0

    .line 236
    iput-boolean p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    return-void
.end method

.method public setState(IIJLandroid/util/ArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    if-gez p1, :cond_1

    .line 351
    iget p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-lez p1, :cond_0

    mul-int/lit8 p2, p2, 0xe

    add-int/lit8 p2, p2, 0x6

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    goto :goto_0

    .line 354
    :cond_1
    sget-object v0, Lcom/android/internal/app/procstats/ProcessState;->PROCESS_STATE_TO_STATE:[I

    aget p1, v0, p1

    mul-int/lit8 p2, p2, 0xe

    add-int/2addr p2, p1

    .line 358
    :goto_0
    iget-object p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/app/procstats/ProcessState;->setState(IJ)V

    .line 361
    iget-object p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-boolean p1, p1, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-nez p1, :cond_2

    return-void

    :cond_2
    if-eqz p5, :cond_3

    .line 366
    invoke-virtual {p5}, Landroid/util/ArrayMap;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_3

    .line 367
    invoke-direct {p0, p5, p1}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/app/procstats/ProcessState;->setState(IJ)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public setState(IJ)V
    .locals 1

    .line 373
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    .line 374
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    if-eq v0, p1, :cond_0

    .line 376
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->commitStateTime(J)V

    .line 377
    iput p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1220
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ProcessState{"

    .line 1221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 1222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pkg="

    .line 1223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1224
    iget-boolean v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-eqz v1, :cond_0

    const-string v1, " (multi)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1225
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v1, p0, :cond_1

    const-string p0, " (sub)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo p0, "}"

    .line 1226
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;J)V
    .locals 0

    .line 277
    iget-boolean p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    iget-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {p2, p1}, Lcom/android/internal/app/procstats/DurationsTable;->writeToParcel(Landroid/os/Parcel;)V

    .line 279
    iget-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {p2, p1}, Lcom/android/internal/app/procstats/PssTable;->writeToParcel(Landroid/os/Parcel;)V

    const/4 p2, 0x0

    .line 280
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    iget p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    iget p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    iget p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez p2, :cond_0

    .line 284
    iget-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 285
    iget-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 286
    iget-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    :cond_0
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IJ)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    .line 1232
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    const-wide v1, 0x10900000001L

    move-object/from16 v3, p4

    .line 1233
    invoke-virtual {v10, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v1, 0x10500000002L

    move/from16 v3, p5

    .line 1234
    invoke-virtual {v10, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1235
    iget v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    if-gtz v3, :cond_1

    iget v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    move-wide/from16 v17, v13

    goto :goto_1

    :cond_1
    :goto_0
    const-wide v3, 0x10b00000003L

    .line 1236
    invoke-virtual {v10, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    const-wide v3, 0x10500000001L

    .line 1237
    iget v5, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {v10, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1238
    iget v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    invoke-virtual {v10, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10b00000003L

    .line 1239
    iget-wide v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    iget-wide v6, v0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    move-wide v15, v8

    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    move-object/from16 v1, p1

    move-wide/from16 v17, v13

    move-wide v13, v15

    invoke-static/range {v1 .. v9}, Landroid/util/proto/ProtoUtils;->toAggStatsProto(Landroid/util/proto/ProtoOutputStream;JJJJ)V

    .line 1241
    invoke-virtual {v10, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1245
    :goto_1
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1247
    :goto_2
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v3}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 1248
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v3, v1}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v3

    .line 1249
    invoke-static {v3}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v4

    .line 1250
    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v5, v3}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v5

    .line 1251
    iget v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    if-ne v3, v4, :cond_2

    .line 1253
    iget-wide v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v2, p6, v2

    add-long/2addr v5, v2

    const/4 v2, 0x1

    .line 1255
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v13, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    if-nez v2, :cond_4

    .line 1257
    iget v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 1258
    iget v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v2, p6, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v13, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const/4 v11, 0x0

    .line 1261
    :goto_3
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v1

    const-wide v8, 0x10300000004L

    const-wide v5, 0x20b00000005L

    if-ge v11, v1, :cond_6

    .line 1262
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v1, v11}, Lcom/android/internal/app/procstats/PssTable;->getKeyAt(I)I

    move-result v12

    .line 1263
    invoke-static {v12}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v16

    .line 1264
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v14, 0x0

    const/4 v15, 0x1

    goto/16 :goto_4

    .line 1268
    :cond_5
    invoke-virtual {v10, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    const-wide v2, 0x10e00000001L

    const-wide v4, 0x10e00000002L

    const-wide v19, 0x10e00000003L

    move-object/from16 v1, p1

    move-wide/from16 v21, v6

    move-wide/from16 v6, v19

    move-wide v14, v8

    move/from16 v8, v16

    .line 1269
    invoke-static/range {v1 .. v8}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTagProto(Landroid/util/proto/ProtoOutputStream;JJJI)V

    .line 1275
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1276
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v13, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    invoke-virtual {v10, v14, v15, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10500000005L

    .line 1279
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v14, 0x0

    invoke-virtual {v3, v12, v14}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v3

    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10b00000006L

    .line 1280
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v15, 0x1

    .line 1281
    invoke-virtual {v1, v12, v15}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v4

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v6, 0x2

    .line 1282
    invoke-virtual {v1, v12, v6}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v6

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v8, 0x3

    .line 1283
    invoke-virtual {v1, v12, v8}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v8

    move-object/from16 v1, p1

    .line 1280
    invoke-static/range {v1 .. v9}, Landroid/util/proto/ProtoUtils;->toAggStatsProto(Landroid/util/proto/ProtoOutputStream;JJJJ)V

    const-wide v2, 0x10b00000007L

    .line 1284
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v4, 0x4

    .line 1285
    invoke-virtual {v1, v12, v4}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v4

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v6, 0x5

    .line 1286
    invoke-virtual {v1, v12, v6}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v6

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v8, 0x6

    .line 1287
    invoke-virtual {v1, v12, v8}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v8

    move-object/from16 v1, p1

    .line 1284
    invoke-static/range {v1 .. v9}, Landroid/util/proto/ProtoUtils;->toAggStatsProto(Landroid/util/proto/ProtoOutputStream;JJJJ)V

    const-wide v2, 0x10b00000008L

    .line 1288
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v4, 0x7

    .line 1289
    invoke-virtual {v1, v12, v4}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v4

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/16 v6, 0x8

    .line 1290
    invoke-virtual {v1, v12, v6}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v6

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/16 v8, 0x9

    .line 1291
    invoke-virtual {v1, v12, v8}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v8

    move-object/from16 v1, p1

    .line 1288
    invoke-static/range {v1 .. v9}, Landroid/util/proto/ProtoUtils;->toAggStatsProto(Landroid/util/proto/ProtoOutputStream;JJJJ)V

    move-wide/from16 v1, v21

    .line 1293
    invoke-virtual {v10, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    :cond_6
    move-wide v14, v8

    .line 1296
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/util/Map$Entry;

    .line 1297
    invoke-virtual {v10, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    const-wide v1, 0x10e00000001L

    const-wide v3, 0x10e00000002L

    const-wide v19, 0x10e00000003L

    .line 1302
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v0, p1

    move-wide/from16 v21, v5

    move-wide/from16 v5, v19

    .line 1298
    invoke-static/range {v0 .. v7}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTagProto(Landroid/util/proto/ProtoOutputStream;JJJI)V

    .line 1303
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v10, v14, v15, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1304
    invoke-virtual {v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move-wide/from16 v5, v21

    goto :goto_5

    :cond_7
    move-wide/from16 v0, v17

    .line 1306
    invoke-virtual {v10, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
