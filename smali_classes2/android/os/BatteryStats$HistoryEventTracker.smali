.class public final Landroid/os/BatteryStats$HistoryEventTracker;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoryEventTracker"
.end annotation


# instance fields
.field private final mActiveEvents:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1901
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x16

    .line 1902
    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getStateForEvent(I)Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation

    .line 1954
    iget-object p0, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public removeEvents(I)V
    .locals 1

    const v0, -0xc001

    and-int/2addr p1, v0

    .line 1950
    iget-object p0, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    const/4 v0, 0x0

    aput-object v0, p0, p1

    return-void
.end method

.method public updateState(ILjava/lang/String;II)Z
    .locals 3

    const v0, 0x8000

    and-int/2addr v0, p1

    const v1, -0xc001

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    and-int/2addr p1, v1

    .line 1908
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 1910
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1911
    iget-object p0, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    aput-object v0, p0, p1

    .line 1913
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseIntArray;

    if-nez p0, :cond_1

    .line 1915
    new-instance p0, Landroid/util/SparseIntArray;

    invoke-direct {p0}, Landroid/util/SparseIntArray;-><init>()V

    .line 1916
    invoke-virtual {v0, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1918
    :cond_1
    invoke-virtual {p0, p3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_2

    return v2

    .line 1922
    :cond_2
    invoke-virtual {p0, p3, p4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    :cond_3
    and-int/lit16 p4, p1, 0x4000

    if-eqz p4, :cond_7

    and-int/2addr p1, v1

    .line 1925
    iget-object p0, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    aget-object p0, p0, p1

    if-nez p0, :cond_4

    return v2

    .line 1930
    :cond_4
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseIntArray;

    if-nez p1, :cond_5

    return v2

    .line 1935
    :cond_5
    invoke-virtual {p1, p3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p3

    if-gez p3, :cond_6

    return v2

    .line 1940
    :cond_6
    invoke-virtual {p1, p3}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 1941
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p1

    if-gtz p1, :cond_7

    .line 1942
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
