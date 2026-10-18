.class Lcom/yftech/car/widget/media/recyclerview/widget/OpReorderer;
.super Ljava/lang/Object;
.source "OpReorderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/recyclerview/widget/OpReorderer$Callback;
    }
.end annotation


# instance fields
.field final mCallback:Lcom/yftech/car/widget/media/recyclerview/widget/OpReorderer$Callback;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/recyclerview/widget/OpReorderer$Callback;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/OpReorderer;->mCallback:Lcom/yftech/car/widget/media/recyclerview/widget/OpReorderer$Callback;

    return-void
.end method

.method private getLastMoveOutOfOrder(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;)I"
        }
    .end annotation

    .line 215
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    const/4 v1, 0x0

    :goto_0
    if-ltz p0, :cond_2

    .line 216
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 217
    iget v2, v2, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    if-eqz v1, :cond_1

    return p0

    :cond_0
    move v1, v0

    :cond_1
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private swapMoveAdd(Ljava/util/List;ILcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;ILcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;I",
            "Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;",
            "I",
            "Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;",
            ")V"
        }
    .end annotation

    .line 158
    iget p0, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v0, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge p0, v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 161
    :goto_0
    iget v0, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v1, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v0, v1, :cond_1

    add-int/lit8 p0, p0, 0x1

    .line 164
    :cond_1
    iget v0, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v1, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v0, v1, :cond_2

    .line 165
    iget v0, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v1, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v0, v1

    iput v0, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 167
    :cond_2
    iget v0, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v1, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v0, v1, :cond_3

    .line 168
    iget v0, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v1, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v0, v1

    iput v0, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 170
    :cond_3
    iget v0, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v0, p0

    iput v0, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 171
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private swapMoveOp(Ljava/util/List;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;II)V"
        }
    .end annotation

    .line 40
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 41
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 42
    iget v0, v6, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, p3

    .line 44
    invoke-virtual/range {v1 .. v6}, Lcom/yftech/car/widget/media/recyclerview/widget/OpReorderer;->swapMoveRemove(Ljava/util/List;ILcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;ILcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;)V

    goto :goto_0

    :pswitch_1
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, p3

    .line 47
    invoke-direct/range {v1 .. v6}, Lcom/yftech/car/widget/media/recyclerview/widget/OpReorderer;->swapMoveAdd(Ljava/util/List;ILcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;ILcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, p3

    .line 50
    invoke-virtual/range {v1 .. v6}, Lcom/yftech/car/widget/media/recyclerview/widget/OpReorderer;->swapMoveUpdate(Ljava/util/List;ILcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;ILcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method reorderOps(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;)V"
        }
    .end annotation

    .line 34
    :goto_0
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/OpReorderer;->getLastMoveOutOfOrder(Ljava/util/List;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 35
    invoke-direct {p0, p1, v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/OpReorderer;->swapMoveOp(Ljava/util/List;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method swapMoveRemove(Ljava/util/List;ILcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;ILcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;I",
            "Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;",
            "I",
            "Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;",
            ")V"
        }
    .end annotation

    .line 62
    iget v0, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v1, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_1

    .line 64
    iget v0, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v1, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v0, v1, :cond_0

    iget v0, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v1, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v1, v4

    if-ne v0, v1, :cond_0

    move v0, v2

    move v2, v3

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    .line 70
    :cond_1
    iget v0, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v1, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v1, v3

    if-ne v0, v1, :cond_2

    iget v0, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v1, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v1, v4

    if-ne v0, v1, :cond_2

    move v0, v3

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v3

    .line 77
    :goto_0
    iget v1, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v5, 0x2

    if-ge v1, v4, :cond_3

    .line 78
    iget v1, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v1, v3

    iput v1, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_1

    .line 79
    :cond_3
    iget v1, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v4, v6

    if-ge v1, v4, :cond_5

    .line 81
    iget p2, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p2, v3

    iput p2, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 82
    iput v5, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 83
    iput v3, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 84
    iget p2, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-nez p2, :cond_4

    .line 85
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 86
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/OpReorderer;->mCallback:Lcom/yftech/car/widget/media/recyclerview/widget/OpReorderer$Callback;

    invoke-interface {p0, p5}, Lcom/yftech/car/widget/media/recyclerview/widget/OpReorderer$Callback;->recycleUpdateOp(Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;)V

    :cond_4
    return-void

    .line 93
    :cond_5
    :goto_1
    iget v1, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v6, 0x0

    if-gt v1, v4, :cond_6

    .line 94
    iget v1, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v1, v3

    iput v1, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_2

    .line 95
    :cond_6
    iget v1, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v7, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v4, v7

    if-ge v1, v4, :cond_7

    .line 96
    iget v1, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v1, v4

    iget v4, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v1, v4

    .line 98
    iget-object v4, p0, Lcom/yftech/car/widget/media/recyclerview/widget/OpReorderer;->mCallback:Lcom/yftech/car/widget/media/recyclerview/widget/OpReorderer$Callback;

    iget v7, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v7, v3

    invoke-interface {v4, v5, v7, v1, v6}, Lcom/yftech/car/widget/media/recyclerview/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v6

    .line 99
    iget v1, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v1, v3

    iput v1, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    :cond_7
    :goto_2
    if-eqz v2, :cond_8

    .line 104
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 106
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/OpReorderer;->mCallback:Lcom/yftech/car/widget/media/recyclerview/widget/OpReorderer$Callback;

    invoke-interface {p0, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/OpReorderer$Callback;->recycleUpdateOp(Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;)V

    return-void

    :cond_8
    if-eqz v0, :cond_c

    if-eqz v6, :cond_a

    .line 113
    iget p0, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v0, v6, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le p0, v0, :cond_9

    .line 114
    iget p0, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v0, v6, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p0, v0

    iput p0, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 116
    :cond_9
    iget p0, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v0, v6, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le p0, v0, :cond_a

    .line 117
    iget p0, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v0, v6, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p0, v0

    iput p0, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 120
    :cond_a
    iget p0, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v0, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le p0, v0, :cond_b

    .line 121
    iget p0, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v0, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p0, v0

    iput p0, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 123
    :cond_b
    iget p0, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v0, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le p0, v0, :cond_10

    .line 124
    iget p0, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v0, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p0, v0

    iput p0, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_3

    :cond_c
    if-eqz v6, :cond_e

    .line 128
    iget p0, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v0, v6, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt p0, v0, :cond_d

    .line 129
    iget p0, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v0, v6, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p0, v0

    iput p0, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 131
    :cond_d
    iget p0, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v0, v6, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt p0, v0, :cond_e

    .line 132
    iget p0, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v0, v6, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p0, v0

    iput p0, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 135
    :cond_e
    iget p0, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v0, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt p0, v0, :cond_f

    .line 136
    iget p0, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v0, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p0, v0

    iput p0, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 138
    :cond_f
    iget p0, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v0, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt p0, v0, :cond_10

    .line 139
    iget p0, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v0, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p0, v0

    iput p0, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 143
    :cond_10
    :goto_3
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget p0, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget p5, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq p0, p5, :cond_11

    .line 145
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 147
    :cond_11
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_4
    if-eqz v6, :cond_12

    .line 150
    invoke-interface {p1, p2, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_12
    return-void
.end method

.method swapMoveUpdate(Ljava/util/List;ILcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;ILcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;I",
            "Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;",
            "I",
            "Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;",
            ")V"
        }
    .end annotation

    .line 180
    iget v0, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v1, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v0, v1, :cond_0

    .line 181
    iget v0, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v0, v4

    iput v0, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_0

    .line 182
    :cond_0
    iget v0, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v1, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v1, v5

    if-ge v0, v1, :cond_1

    .line 184
    iget v0, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v0, v4

    iput v0, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 185
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/OpReorderer;->mCallback:Lcom/yftech/car/widget/media/recyclerview/widget/OpReorderer$Callback;

    iget v1, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget-object v5, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v0, v2, v1, v4, v5}, Lcom/yftech/car/widget/media/recyclerview/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, v3

    .line 188
    :goto_1
    iget v1, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v1, v5, :cond_2

    .line 189
    iget v1, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v1, v4

    iput v1, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_2

    .line 190
    :cond_2
    iget v1, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v5, v6

    if-ge v1, v5, :cond_3

    .line 191
    iget v1, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v1, v3

    iget v3, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v1, v3

    .line 193
    iget-object v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/OpReorderer;->mCallback:Lcom/yftech/car/widget/media/recyclerview/widget/OpReorderer$Callback;

    iget v5, p3, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v5, v4

    iget-object v4, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v3, v2, v5, v1, v4}, Lcom/yftech/car/widget/media/recyclerview/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v3

    .line 196
    iget v2, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v2, v1

    iput v2, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 198
    :cond_3
    :goto_2
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget p3, p5, Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-lez p3, :cond_4

    .line 200
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 202
    :cond_4
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 203
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/OpReorderer;->mCallback:Lcom/yftech/car/widget/media/recyclerview/widget/OpReorderer$Callback;

    invoke-interface {p0, p5}, Lcom/yftech/car/widget/media/recyclerview/widget/OpReorderer$Callback;->recycleUpdateOp(Lcom/yftech/car/widget/media/recyclerview/widget/AdapterHelper$UpdateOp;)V

    :goto_3
    if-eqz v0, :cond_5

    .line 206
    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_5
    if-eqz v3, :cond_6

    .line 209
    invoke-interface {p1, p2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_6
    return-void
.end method
