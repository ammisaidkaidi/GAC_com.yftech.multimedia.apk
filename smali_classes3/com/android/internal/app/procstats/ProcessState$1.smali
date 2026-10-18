.class Lcom/android/internal/app/procstats/ProcessState$1;
.super Ljava/lang/Object;
.source "ProcessState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/procstats/ProcessState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/internal/app/procstats/ProcessState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/internal/app/procstats/ProcessState;)I
    .locals 4

    .line 99
    invoke-static {p1}, Lcom/android/internal/app/procstats/ProcessState;->access$000(Lcom/android/internal/app/procstats/ProcessState;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/android/internal/app/procstats/ProcessState;->access$000(Lcom/android/internal/app/procstats/ProcessState;)J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 101
    :cond_0
    invoke-static {p1}, Lcom/android/internal/app/procstats/ProcessState;->access$000(Lcom/android/internal/app/procstats/ProcessState;)J

    move-result-wide p0

    invoke-static {p2}, Lcom/android/internal/app/procstats/ProcessState;->access$000(Lcom/android/internal/app/procstats/ProcessState;)J

    move-result-wide v0

    cmp-long p0, p0, v0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 96
    check-cast p1, Lcom/android/internal/app/procstats/ProcessState;

    check-cast p2, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/procstats/ProcessState$1;->compare(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/internal/app/procstats/ProcessState;)I

    move-result p0

    return p0
.end method
