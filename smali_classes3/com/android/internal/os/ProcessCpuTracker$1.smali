.class Lcom/android/internal/os/ProcessCpuTracker$1;
.super Ljava/lang/Object;
.source "ProcessCpuTracker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/ProcessCpuTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/internal/os/ProcessCpuTracker$Stats;Lcom/android/internal/os/ProcessCpuTracker$Stats;)I
    .locals 3

    .line 280
    iget p0, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v0, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr p0, v0

    .line 281
    iget v0, p2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v1, p2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq p0, v0, :cond_1

    if-le p0, v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 285
    :cond_1
    iget-boolean p0, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    iget-boolean v0, p2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    if-eq p0, v0, :cond_3

    .line 286
    iget-boolean p0, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 288
    :cond_3
    iget-boolean p0, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    iget-boolean p2, p2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    if-eq p0, p2, :cond_5

    .line 289
    iget-boolean p0, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    if-eqz p0, :cond_4

    move v1, v2

    :cond_4
    return v1

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 277
    check-cast p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    check-cast p2, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/ProcessCpuTracker$1;->compare(Lcom/android/internal/os/ProcessCpuTracker$Stats;Lcom/android/internal/os/ProcessCpuTracker$Stats;)I

    move-result p0

    return p0
.end method
