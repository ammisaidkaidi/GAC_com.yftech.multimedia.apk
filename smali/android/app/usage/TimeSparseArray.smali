.class public Landroid/app/usage/TimeSparseArray;
.super Landroid/util/LongSparseArray;
.source "TimeSparseArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/util/LongSparseArray<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TimeSparseArray"


# instance fields
.field private mWtfReported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/util/LongSparseArray;-><init>()V

    return-void
.end method


# virtual methods
.method public closestIndexOnOrAfter(J)I
    .locals 8

    .line 46
    invoke-virtual {p0}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    move v6, v2

    :goto_0
    if-gt v3, v1, :cond_2

    sub-int v4, v1, v3

    .line 52
    div-int/lit8 v4, v4, 0x2

    add-int v6, v3, v4

    .line 53
    invoke-virtual {p0, v6}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v4

    cmp-long v7, p1, v4

    if-lez v7, :cond_0

    add-int/lit8 v3, v6, 0x1

    goto :goto_0

    :cond_0
    if-gez v7, :cond_1

    add-int/lit8 v1, v6, -0x1

    goto :goto_0

    :cond_1
    return v6

    :cond_2
    cmp-long p0, p1, v4

    if-gez p0, :cond_3

    return v6

    :cond_3
    if-lez p0, :cond_4

    if-ge v3, v0, :cond_4

    return v3

    :cond_4
    return v2
.end method

.method public closestIndexOnOrBefore(J)I
    .locals 3

    .line 99
    invoke-virtual {p0, p1, p2}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrAfter(J)I

    move-result v0

    if-gez v0, :cond_0

    .line 102
    invoke-virtual {p0}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0

    .line 105
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v1

    cmp-long p0, v1, p1

    if-nez p0, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public put(JLjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .line 82
    invoke-virtual {p0, p1, p2}, Landroid/app/usage/TimeSparseArray;->indexOfKey(J)I

    move-result v0

    if-ltz v0, :cond_0

    .line 83
    iget-boolean v0, p0, Landroid/app/usage/TimeSparseArray;->mWtfReported:Z

    if-nez v0, :cond_0

    .line 84
    sget-object v0, Landroid/app/usage/TimeSparseArray;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Overwriting value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Landroid/app/usage/TimeSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Landroid/app/usage/TimeSparseArray;->mWtfReported:Z

    .line 88
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void
.end method
