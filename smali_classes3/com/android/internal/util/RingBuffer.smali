.class public Lcom/android/internal/util/RingBuffer;
.super Ljava/lang/Object;
.source "RingBuffer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mBuffer:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private mCursor:J


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;I)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 36
    iput-wide v0, p0, Lcom/android/internal/util/RingBuffer;->mCursor:J

    const-string v0, "A RingBuffer cannot have 0 capacity"

    .line 39
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    .line 41
    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/internal/util/RingBuffer;->mBuffer:[Ljava/lang/Object;

    return-void
.end method

.method private indexOf(J)I
    .locals 2

    .line 100
    iget-object p0, p0, Lcom/android/internal/util/RingBuffer;->mBuffer:[Ljava/lang/Object;

    array-length p0, p0

    int-to-long v0, p0

    rem-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method


# virtual methods
.method public append(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/android/internal/util/RingBuffer;->mBuffer:[Ljava/lang/Object;

    iget-wide v1, p0, Lcom/android/internal/util/RingBuffer;->mCursor:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/android/internal/util/RingBuffer;->mCursor:J

    invoke-direct {p0, v1, v2}, Lcom/android/internal/util/RingBuffer;->indexOf(J)I

    move-result p0

    aput-object p1, v0, p0

    return-void
.end method

.method public clear()V
    .locals 3

    const/4 v0, 0x0

    .line 53
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/android/internal/util/RingBuffer;->mBuffer:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 56
    iput-wide v0, p0, Lcom/android/internal/util/RingBuffer;->mCursor:J

    return-void
.end method

.method protected createNewItem()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 81
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/util/RingBuffer;->mBuffer:[Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNextSlot()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 69
    iget-wide v0, p0, Lcom/android/internal/util/RingBuffer;->mCursor:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/internal/util/RingBuffer;->mCursor:J

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/RingBuffer;->indexOf(J)I

    move-result v0

    .line 70
    iget-object v1, p0, Lcom/android/internal/util/RingBuffer;->mBuffer:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/android/internal/util/RingBuffer;->mBuffer:[Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->createNewItem()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    .line 73
    :cond_0
    iget-object p0, p0, Lcom/android/internal/util/RingBuffer;->mBuffer:[Ljava/lang/Object;

    aget-object p0, p0, v0

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public size()I
    .locals 4

    .line 45
    iget-object v0, p0, Lcom/android/internal/util/RingBuffer;->mBuffer:[Ljava/lang/Object;

    array-length v0, v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/android/internal/util/RingBuffer;->mCursor:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/android/internal/util/RingBuffer;->mBuffer:[Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/util/RingBuffer;->mBuffer:[Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 91
    iget-wide v1, p0, Lcom/android/internal/util/RingBuffer;->mCursor:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    .line 92
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    :goto_0
    if-ltz v5, :cond_0

    add-int/lit8 v6, v5, -0x1

    .line 94
    iget-object v7, p0, Lcom/android/internal/util/RingBuffer;->mBuffer:[Ljava/lang/Object;

    sub-long v8, v1, v3

    invoke-direct {p0, v1, v2}, Lcom/android/internal/util/RingBuffer;->indexOf(J)I

    move-result v1

    aget-object v1, v7, v1

    aput-object v1, v0, v5

    move v5, v6

    move-wide v1, v8

    goto :goto_0

    :cond_0
    return-object v0
.end method
