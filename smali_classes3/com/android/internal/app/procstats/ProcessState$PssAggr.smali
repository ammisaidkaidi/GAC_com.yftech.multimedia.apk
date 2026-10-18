.class Lcom/android/internal/app/procstats/ProcessState$PssAggr;
.super Ljava/lang/Object;
.source "ProcessState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/procstats/ProcessState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PssAggr"
.end annotation


# instance fields
.field pss:J

.field samples:J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 109
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    .line 110
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    return-void
.end method


# virtual methods
.method add(JJ)V
    .locals 4

    .line 113
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    long-to-double v2, v2

    mul-double/2addr v0, v2

    long-to-double p1, p1

    long-to-double v2, p3

    mul-double/2addr p1, v2

    add-double/2addr v0, p1

    double-to-long p1, v0

    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    add-long/2addr v0, p3

    div-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    .line 115
    iget-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    return-void
.end method
