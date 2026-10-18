.class public Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;
.super Ljava/lang/Object;
.source "Lyric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/music/lyrics/Lyric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeLineMapper"
.end annotation


# instance fields
.field lastIndex:I

.field private lastTimeStamp:J

.field private final startTimes:[J


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;",
            ">;)V"
        }
    .end annotation

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 277
    iput-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;->startTimes:[J

    goto :goto_1

    .line 279
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 281
    iput-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;->startTimes:[J

    goto :goto_1

    .line 283
    :cond_1
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;->startTimes:[J

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 286
    iget-object v2, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;->startTimes:[J

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;

    iget-wide v3, v3, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;->startTime:J

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public final map(J)I
    .locals 4

    .line 294
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;->startTimes:[J

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 298
    :cond_0
    iget-wide v2, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;->lastTimeStamp:J

    cmp-long v0, p1, v2

    if-gez v0, :cond_3

    .line 299
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;->startTimes:[J

    aget-wide v2, v0, v1

    cmp-long v0, p1, v2

    if-gtz v0, :cond_1

    .line 300
    iput-wide p1, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;->lastTimeStamp:J

    .line 301
    iput v1, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;->lastIndex:I

    return v1

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;->startTimes:[J

    iget v2, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;->lastIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v0

    if-ltz v0, :cond_2

    .line 305
    iput-wide p1, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;->lastTimeStamp:J

    .line 306
    iput v0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;->lastIndex:I

    return v0

    .line 308
    :cond_2
    iput-wide p1, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;->lastTimeStamp:J

    add-int/lit8 v0, v0, 0x1

    neg-int p1, v0

    add-int/lit8 p1, p1, -0x1

    .line 309
    iput p1, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;->lastIndex:I

    return p1

    .line 312
    :cond_3
    iget v0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;->lastIndex:I

    iget-object v1, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;->startTimes:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_7

    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;->startTimes:[J

    iget v1, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;->lastIndex:I

    add-int/lit8 v1, v1, 0x1

    aget-wide v1, v0, v1

    cmp-long v0, p1, v1

    if-ltz v0, :cond_7

    .line 313
    iget v0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;->lastIndex:I

    iget-object v1, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;->startTimes:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;->startTimes:[J

    iget v1, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;->lastIndex:I

    add-int/lit8 v1, v1, 0x2

    aget-wide v1, v0, v1

    cmp-long v0, p1, v1

    if-ltz v0, :cond_6

    .line 314
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;->startTimes:[J

    iget-object v1, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;->startTimes:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-wide v1, v0, v1

    cmp-long v0, p1, v1

    if-ltz v0, :cond_4

    .line 315
    iput-wide p1, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;->lastTimeStamp:J

    .line 316
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;->startTimes:[J

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;->lastIndex:I

    return p1

    .line 318
    :cond_4
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;->startTimes:[J

    iget v1, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;->lastIndex:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;->startTimes:[J

    array-length v2, v2

    invoke-static {v0, v1, v2, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v0

    if-ltz v0, :cond_5

    .line 320
    iput-wide p1, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;->lastTimeStamp:J

    .line 321
    iput v0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;->lastIndex:I

    return v0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    neg-int p1, v0

    add-int/lit8 p1, p1, -0x1

    .line 323
    iput p1, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;->lastIndex:I

    return p1

    .line 327
    :cond_6
    iput-wide p1, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;->lastTimeStamp:J

    .line 328
    iget p1, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;->lastIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;->lastIndex:I

    return p1

    .line 331
    :cond_7
    iput-wide p1, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;->lastTimeStamp:J

    .line 332
    iget p0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;->lastIndex:I

    return p0
.end method
