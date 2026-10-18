.class Lcom/yftech/vehicle/internal/CarData;
.super Ljava/lang/Object;
.source "CarData.java"


# instance fields
.field private final DATA_TYPE_BYTE:B

.field private final DATA_TYPE_DATA:B

.field private final DATA_TYPE_DOUBLE:B

.field private final DATA_TYPE_FLOAT:B

.field private final DATA_TYPE_INT:B

.field private final DATA_TYPE_LONG:B

.field private final DATA_TYPE_SHORT:B

.field private data:[B

.field private offset:I


# direct methods
.method public constructor <init>(B)V
    .locals 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f

    .line 8
    iput-byte v0, p0, Lcom/yftech/vehicle/internal/CarData;->DATA_TYPE_BYTE:B

    const/16 v1, 0x1e

    .line 9
    iput-byte v1, p0, Lcom/yftech/vehicle/internal/CarData;->DATA_TYPE_SHORT:B

    const/16 v1, 0x1c

    .line 10
    iput-byte v1, p0, Lcom/yftech/vehicle/internal/CarData;->DATA_TYPE_INT:B

    const/16 v1, 0x18

    .line 11
    iput-byte v1, p0, Lcom/yftech/vehicle/internal/CarData;->DATA_TYPE_LONG:B

    const/16 v1, 0x10

    .line 12
    iput-byte v1, p0, Lcom/yftech/vehicle/internal/CarData;->DATA_TYPE_FLOAT:B

    const/16 v1, 0x11

    .line 13
    iput-byte v1, p0, Lcom/yftech/vehicle/internal/CarData;->DATA_TYPE_DOUBLE:B

    const/16 v1, -0x20

    .line 14
    iput-byte v1, p0, Lcom/yftech/vehicle/internal/CarData;->DATA_TYPE_DATA:B

    const/4 v1, 0x0

    .line 17
    iput v1, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    const/4 v2, 0x2

    .line 35
    new-array v2, v2, [B

    iput-object v2, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    .line 36
    iget-object v2, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    aput-byte v0, v2, v1

    .line 37
    iget-object p0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v0, 0x1

    aput-byte p1, p0, v0

    return-void
.end method

.method public constructor <init>(D)V
    .locals 8

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f

    .line 8
    iput-byte v0, p0, Lcom/yftech/vehicle/internal/CarData;->DATA_TYPE_BYTE:B

    const/16 v0, 0x1e

    .line 9
    iput-byte v0, p0, Lcom/yftech/vehicle/internal/CarData;->DATA_TYPE_SHORT:B

    const/16 v0, 0x1c

    .line 10
    iput-byte v0, p0, Lcom/yftech/vehicle/internal/CarData;->DATA_TYPE_INT:B

    const/16 v0, 0x18

    .line 11
    iput-byte v0, p0, Lcom/yftech/vehicle/internal/CarData;->DATA_TYPE_LONG:B

    const/16 v1, 0x10

    .line 12
    iput-byte v1, p0, Lcom/yftech/vehicle/internal/CarData;->DATA_TYPE_FLOAT:B

    const/16 v2, 0x11

    .line 13
    iput-byte v2, p0, Lcom/yftech/vehicle/internal/CarData;->DATA_TYPE_DOUBLE:B

    const/16 v3, -0x20

    .line 14
    iput-byte v3, p0, Lcom/yftech/vehicle/internal/CarData;->DATA_TYPE_DATA:B

    const/4 v3, 0x0

    .line 17
    iput v3, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    const/16 v4, 0x9

    .line 80
    new-array v4, v4, [B

    iput-object v4, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    .line 81
    iget-object v4, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    aput-byte v2, v4, v3

    .line 82
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    .line 83
    iget-object v2, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    const-wide/16 v3, 0xff

    and-long v5, p1, v3

    long-to-int v5, v5

    int-to-byte v5, v5

    const/4 v6, 0x1

    aput-byte v5, v2, v6

    .line 84
    iget-object v2, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    const/16 v5, 0x8

    shr-long v6, p1, v5

    and-long/2addr v6, v3

    long-to-int v6, v6

    int-to-byte v6, v6

    const/4 v7, 0x2

    aput-byte v6, v2, v7

    .line 85
    iget-object v2, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    shr-long v6, p1, v1

    and-long/2addr v6, v3

    long-to-int v1, v6

    int-to-byte v1, v1

    const/4 v6, 0x3

    aput-byte v1, v2, v6

    .line 86
    iget-object v1, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    shr-long v6, p1, v0

    and-long/2addr v6, v3

    long-to-int v0, v6

    int-to-byte v0, v0

    const/4 v2, 0x4

    aput-byte v0, v1, v2

    .line 87
    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    const/16 v1, 0x20

    shr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    .line 88
    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    const/16 v1, 0x28

    shr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x6

    aput-byte v1, v0, v2

    .line 89
    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    const/16 v1, 0x30

    shr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x7

    aput-byte v1, v0, v2

    .line 90
    iget-object p0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    const/16 v0, 0x38

    shr-long/2addr p1, v0

    and-long/2addr p1, v3

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, p0, v5

    return-void
.end method

.method public constructor <init>(F)V
    .locals 4

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f

    .line 8
    iput-byte v0, p0, Lcom/yftech/vehicle/internal/CarData;->DATA_TYPE_BYTE:B

    const/16 v0, 0x1e

    .line 9
    iput-byte v0, p0, Lcom/yftech/vehicle/internal/CarData;->DATA_TYPE_SHORT:B

    const/16 v0, 0x1c

    .line 10
    iput-byte v0, p0, Lcom/yftech/vehicle/internal/CarData;->DATA_TYPE_INT:B

    const/16 v0, 0x18

    .line 11
    iput-byte v0, p0, Lcom/yftech/vehicle/internal/CarData;->DATA_TYPE_LONG:B

    const/16 v1, 0x10

    .line 12
    iput-byte v1, p0, Lcom/yftech/vehicle/internal/CarData;->DATA_TYPE_FLOAT:B

    const/16 v2, 0x11

    .line 13
    iput-byte v2, p0, Lcom/yftech/vehicle/internal/CarData;->DATA_TYPE_DOUBLE:B

    const/16 v2, -0x20

    .line 14
    iput-byte v2, p0, Lcom/yftech/vehicle/internal/CarData;->DATA_TYPE_DATA:B

    const/4 v2, 0x0

    .line 17
    iput v2, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    .line 70
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    const/4 v3, 0x5

    .line 71
    new-array v3, v3, [B

    iput-object v3, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    .line 72
    iget-object v3, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    aput-byte v1, v3, v2

    .line 73
    iget-object v1, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    .line 74
    iget-object v1, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x2

    aput-byte v2, v1, v3

    .line 75
    iget-object v1, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x3

    aput-byte v2, v1, v3

    .line 76
    iget-object p0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    shr-int/2addr p1, v0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v0, 0x4

    aput-byte p1, p0, v0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f

    .line 8
    iput-byte v0, p0, Lcom/yftech/vehicle/internal/CarData;->DATA_TYPE_BYTE:B

    const/16 v0, 0x1e

    .line 9
    iput-byte v0, p0, Lcom/yftech/vehicle/internal/CarData;->DATA_TYPE_SHORT:B

    const/16 v0, 0x1c

    .line 10
    iput-byte v0, p0, Lcom/yftech/vehicle/internal/CarData;->DATA_TYPE_INT:B

    const/16 v1, 0x18

    .line 11
    iput-byte v1, p0, Lcom/yftech/vehicle/internal/CarData;->DATA_TYPE_LONG:B

    const/16 v2, 0x10

    .line 12
    iput-byte v2, p0, Lcom/yftech/vehicle/internal/CarData;->DATA_TYPE_FLOAT:B

    const/16 v2, 0x11

    .line 13
    iput-byte v2, p0, Lcom/yftech/vehicle/internal/CarData;->DATA_TYPE_DOUBLE:B

    const/16 v2, -0x20

    .line 14
    iput-byte v2, p0, Lcom/yftech/vehicle/internal/CarData;->DATA_TYPE_DATA:B

    const/4 v2, 0x0

    .line 17
    iput v2, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    const/4 v3, 0x5

    .line 48
    new-array v3, v3, [B

    iput-object v3, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    .line 49
    iget-object v3, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    aput-byte v0, v3, v2

    .line 50
    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v0, v3

    .line 51
    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x2

    aput-byte v2, v0, v3

    .line 52
    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x3

    aput-byte v2, v0, v3

    .line 53
    iget-object p0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    shr-int/2addr p1, v1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v0, 0x4

    aput-byte p1, p0, v0

    return-void
.end method

.method public constructor <init>(J)V
    .locals 8

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f

    .line 8
    iput-byte v0, p0, Lcom/yftech/vehicle/internal/CarData;->DATA_TYPE_BYTE:B

    const/16 v0, 0x1e

    .line 9
    iput-byte v0, p0, Lcom/yftech/vehicle/internal/CarData;->DATA_TYPE_SHORT:B

    const/16 v0, 0x1c

    .line 10
    iput-byte v0, p0, Lcom/yftech/vehicle/internal/CarData;->DATA_TYPE_INT:B

    const/16 v0, 0x18

    .line 11
    iput-byte v0, p0, Lcom/yftech/vehicle/internal/CarData;->DATA_TYPE_LONG:B

    const/16 v1, 0x10

    .line 12
    iput-byte v1, p0, Lcom/yftech/vehicle/internal/CarData;->DATA_TYPE_FLOAT:B

    const/16 v2, 0x11

    .line 13
    iput-byte v2, p0, Lcom/yftech/vehicle/internal/CarData;->DATA_TYPE_DOUBLE:B

    const/16 v2, -0x20

    .line 14
    iput-byte v2, p0, Lcom/yftech/vehicle/internal/CarData;->DATA_TYPE_DATA:B

    const/4 v2, 0x0

    .line 17
    iput v2, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    const/16 v3, 0x9

    .line 57
    new-array v3, v3, [B

    iput-object v3, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    .line 58
    iget-object v3, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    aput-byte v0, v3, v2

    .line 59
    iget-object v2, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    const-wide/16 v3, 0xff

    and-long v5, p1, v3

    long-to-int v5, v5

    int-to-byte v5, v5

    const/4 v6, 0x1

    aput-byte v5, v2, v6

    .line 60
    iget-object v2, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    const/16 v5, 0x8

    shr-long v6, p1, v5

    and-long/2addr v6, v3

    long-to-int v6, v6

    int-to-byte v6, v6

    const/4 v7, 0x2

    aput-byte v6, v2, v7

    .line 61
    iget-object v2, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    shr-long v6, p1, v1

    and-long/2addr v6, v3

    long-to-int v1, v6

    int-to-byte v1, v1

    const/4 v6, 0x3

    aput-byte v1, v2, v6

    .line 62
    iget-object v1, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    shr-long v6, p1, v0

    and-long/2addr v6, v3

    long-to-int v0, v6

    int-to-byte v0, v0

    const/4 v2, 0x4

    aput-byte v0, v1, v2

    .line 63
    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    const/16 v1, 0x20

    shr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    .line 64
    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    const/16 v1, 0x28

    shr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x6

    aput-byte v1, v0, v2

    .line 65
    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    const/16 v1, 0x30

    shr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x7

    aput-byte v1, v0, v2

    .line 66
    iget-object p0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    const/16 v0, 0x38

    shr-long/2addr p1, v0

    and-long/2addr p1, v3

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, p0, v5

    return-void
.end method

.method public constructor <init>(S)V
    .locals 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f

    .line 8
    iput-byte v0, p0, Lcom/yftech/vehicle/internal/CarData;->DATA_TYPE_BYTE:B

    const/16 v0, 0x1e

    .line 9
    iput-byte v0, p0, Lcom/yftech/vehicle/internal/CarData;->DATA_TYPE_SHORT:B

    const/16 v1, 0x1c

    .line 10
    iput-byte v1, p0, Lcom/yftech/vehicle/internal/CarData;->DATA_TYPE_INT:B

    const/16 v1, 0x18

    .line 11
    iput-byte v1, p0, Lcom/yftech/vehicle/internal/CarData;->DATA_TYPE_LONG:B

    const/16 v1, 0x10

    .line 12
    iput-byte v1, p0, Lcom/yftech/vehicle/internal/CarData;->DATA_TYPE_FLOAT:B

    const/16 v1, 0x11

    .line 13
    iput-byte v1, p0, Lcom/yftech/vehicle/internal/CarData;->DATA_TYPE_DOUBLE:B

    const/16 v1, -0x20

    .line 14
    iput-byte v1, p0, Lcom/yftech/vehicle/internal/CarData;->DATA_TYPE_DATA:B

    const/4 v1, 0x0

    .line 17
    iput v1, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    const/4 v2, 0x3

    .line 41
    new-array v2, v2, [B

    iput-object v2, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    .line 42
    iget-object v2, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    aput-byte v0, v2, v1

    .line 43
    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 44
    iget-object p0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    shr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v0, 0x2

    aput-byte p1, p0, v0

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x1

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/yftech/vehicle/internal/CarData;-><init>([BZ)V

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 4

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f

    .line 8
    iput-byte v0, p0, Lcom/yftech/vehicle/internal/CarData;->DATA_TYPE_BYTE:B

    const/16 v0, 0x1e

    .line 9
    iput-byte v0, p0, Lcom/yftech/vehicle/internal/CarData;->DATA_TYPE_SHORT:B

    const/16 v0, 0x1c

    .line 10
    iput-byte v0, p0, Lcom/yftech/vehicle/internal/CarData;->DATA_TYPE_INT:B

    const/16 v0, 0x18

    .line 11
    iput-byte v0, p0, Lcom/yftech/vehicle/internal/CarData;->DATA_TYPE_LONG:B

    const/16 v0, 0x10

    .line 12
    iput-byte v0, p0, Lcom/yftech/vehicle/internal/CarData;->DATA_TYPE_FLOAT:B

    const/16 v0, 0x11

    .line 13
    iput-byte v0, p0, Lcom/yftech/vehicle/internal/CarData;->DATA_TYPE_DOUBLE:B

    const/16 v0, -0x20

    .line 14
    iput-byte v0, p0, Lcom/yftech/vehicle/internal/CarData;->DATA_TYPE_DATA:B

    const/4 v1, 0x0

    .line 17
    iput v1, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    if-eqz p2, :cond_0

    .line 25
    iput-object p1, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    goto :goto_0

    .line 27
    :cond_0
    array-length p2, p1

    const/4 v2, 0x2

    add-int/2addr p2, v2

    new-array p2, p2, [B

    iput-object p2, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    .line 28
    iget-object p2, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    aput-byte v0, p2, v1

    .line 29
    iget-object p2, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    const/4 v0, 0x1

    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, p2, v0

    .line 30
    iget-object p0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    array-length p2, p1

    invoke-static {p1, v1, p0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void
.end method

.method private byteValue()B
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    array-length v0, v0

    iget v1, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    iget p0, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    add-int/2addr p0, v1

    aget-byte p0, v0, p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private doubleValue()D
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    array-length v0, v0

    iget v1, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    sub-int/2addr v0, v1

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    .line 231
    invoke-direct {p0}, Lcom/yftech/vehicle/internal/CarData;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0
.end method

.method private floatValue()F
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    array-length v0, v0

    iget v1, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 224
    invoke-direct {p0}, Lcom/yftech/vehicle/internal/CarData;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0

    :cond_0
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method private intValue()I
    .locals 4

    .line 199
    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    array-length v0, v0

    iget v1, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    iget v2, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    iget-object v2, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    iget v3, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    add-int/lit8 v3, v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    iget v3, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    add-int/lit8 v3, v3, 0x3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    iget p0, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    add-int/2addr p0, v1

    aget-byte p0, v2, p0

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private longValue()J
    .locals 8

    .line 209
    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    array-length v0, v0

    iget v1, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    sub-int/2addr v0, v1

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    .line 210
    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    iget v2, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v0, v0, v2

    int-to-long v2, v0

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    iget v6, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    add-int/lit8 v6, v6, 0x2

    aget-byte v0, v0, v6

    int-to-long v6, v0

    and-long/2addr v6, v4

    shl-long/2addr v6, v1

    or-long/2addr v2, v6

    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    iget v6, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    add-int/lit8 v6, v6, 0x3

    aget-byte v0, v0, v6

    int-to-long v6, v0

    and-long/2addr v6, v4

    const/16 v0, 0x10

    shl-long/2addr v6, v0

    or-long/2addr v2, v6

    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    iget v6, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    add-int/lit8 v6, v6, 0x4

    aget-byte v0, v0, v6

    int-to-long v6, v0

    and-long/2addr v6, v4

    const/16 v0, 0x18

    shl-long/2addr v6, v0

    or-long/2addr v2, v6

    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    iget v6, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    add-int/lit8 v6, v6, 0x5

    aget-byte v0, v0, v6

    int-to-long v6, v0

    and-long/2addr v6, v4

    const/16 v0, 0x20

    shl-long/2addr v6, v0

    or-long/2addr v2, v6

    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    iget v6, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    add-int/lit8 v6, v6, 0x6

    aget-byte v0, v0, v6

    int-to-long v6, v0

    and-long/2addr v6, v4

    const/16 v0, 0x28

    shl-long/2addr v6, v0

    or-long/2addr v2, v6

    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    iget v6, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    add-int/lit8 v6, v6, 0x7

    aget-byte v0, v0, v6

    int-to-long v6, v0

    and-long/2addr v4, v6

    const/16 v0, 0x30

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    iget p0, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    add-int/2addr p0, v1

    aget-byte p0, v0, p0

    int-to-long v0, p0

    const/16 p0, 0x38

    shl-long/2addr v0, p0

    or-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private shortValue()S
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    array-length v0, v0

    iget v1, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    iget v2, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    iget-object v2, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    iget p0, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    add-int/2addr p0, v1

    aget-byte p0, v2, p0

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public dataValue()[B
    .locals 5

    .line 133
    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 134
    new-array p0, v1, [B

    return-object p0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    array-length v0, v0

    iget v2, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    sub-int/2addr v0, v2

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    .line 138
    new-array p0, v1, [B

    return-object p0

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    iget v3, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    aget-byte v0, v0, v3

    const/16 v3, -0x20

    if-ne v0, v3, :cond_2

    .line 143
    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    iget v3, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    add-int/lit8 v3, v3, 0x1

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    .line 144
    iget-object v3, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    array-length v3, v3

    iget v4, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    if-le v3, v0, :cond_2

    .line 145
    new-array v3, v0, [B

    .line 146
    iget-object v4, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    iget p0, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    add-int/2addr p0, v2

    invoke-static {v4, p0, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3

    .line 151
    :cond_2
    new-array p0, v1, [B

    return-object p0
.end method

.method public getBytes()[B
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    return-object p0
.end method

.method public isDataValue()Z
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 126
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    iget p0, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    aget-byte p0, v0, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, -0x20

    if-ne p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :catch_0
    return v1
.end method

.method public next()Lcom/yftech/vehicle/internal/CarData;
    .locals 8

    .line 155
    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    array-length v0, v0

    iget v2, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    sub-int/2addr v0, v2

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    return-object v1

    :cond_1
    const v0, 0x7fffffff

    .line 164
    iget-object v3, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    iget v4, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    aget-byte v3, v3, v4

    const/16 v4, 0x1f

    const/16 v5, 0x8

    const/4 v6, 0x4

    const/16 v7, -0x20

    if-ne v3, v4, :cond_2

    move v0, v2

    goto :goto_2

    .line 165
    :cond_2
    iget-object v3, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    iget v4, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    aget-byte v3, v3, v4

    const/16 v4, 0x1e

    if-ne v3, v4, :cond_3

    const/4 v0, 0x2

    goto :goto_2

    .line 166
    :cond_3
    iget-object v3, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    iget v4, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    aget-byte v3, v3, v4

    const/16 v4, 0x1c

    if-ne v3, v4, :cond_4

    :goto_0
    move v0, v6

    goto :goto_2

    .line 167
    :cond_4
    iget-object v3, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    iget v4, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    aget-byte v3, v3, v4

    const/16 v4, 0x18

    if-ne v3, v4, :cond_5

    :goto_1
    move v0, v5

    goto :goto_2

    .line 168
    :cond_5
    iget-object v3, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    iget v4, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    aget-byte v3, v3, v4

    const/16 v4, 0x10

    if-ne v3, v4, :cond_6

    goto :goto_0

    .line 169
    :cond_6
    iget-object v3, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    iget v4, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    aget-byte v3, v3, v4

    const/16 v4, 0x11

    if-ne v3, v4, :cond_7

    goto :goto_1

    .line 170
    :cond_7
    iget-object v3, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    iget v4, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    aget-byte v3, v3, v4

    if-ne v3, v7, :cond_8

    iget-object v3, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    array-length v3, v3

    iget v4, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    if-le v3, v2, :cond_8

    .line 172
    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    iget v3, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    add-int/2addr v3, v2

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    .line 175
    :cond_8
    :goto_2
    iget v3, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    add-int/2addr v3, v0

    add-int/2addr v3, v2

    iput v3, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    .line 176
    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    iget v3, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    aget-byte v0, v0, v3

    if-ne v0, v7, :cond_9

    iget v0, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    .line 177
    :cond_9
    iget v0, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    iget-object v3, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    array-length v3, v3

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_a

    return-object p0

    :cond_a
    return-object v1
.end method

.method public numberValue()Ljava/lang/Number;
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 99
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    array-length v0, v0

    iget v2, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    sub-int/2addr v0, v2

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    iget v2, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    aget-byte v0, v0, v2

    const/16 v2, 0x1f

    if-ne v0, v2, :cond_2

    .line 107
    invoke-direct {p0}, Lcom/yftech/vehicle/internal/CarData;->byteValue()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    iget v2, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    aget-byte v0, v0, v2

    const/16 v2, 0x1e

    if-ne v0, v2, :cond_3

    .line 109
    invoke-direct {p0}, Lcom/yftech/vehicle/internal/CarData;->shortValue()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    .line 110
    :cond_3
    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    iget v2, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    aget-byte v0, v0, v2

    const/16 v2, 0x1c

    if-ne v0, v2, :cond_4

    .line 111
    invoke-direct {p0}, Lcom/yftech/vehicle/internal/CarData;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 112
    :cond_4
    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    iget v2, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    aget-byte v0, v0, v2

    const/16 v2, 0x18

    if-ne v0, v2, :cond_5

    .line 113
    invoke-direct {p0}, Lcom/yftech/vehicle/internal/CarData;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 114
    :cond_5
    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    iget v2, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    aget-byte v0, v0, v2

    const/16 v2, 0x10

    if-ne v0, v2, :cond_6

    .line 115
    invoke-direct {p0}, Lcom/yftech/vehicle/internal/CarData;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 116
    :cond_6
    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarData;->data:[B

    iget v2, p0, Lcom/yftech/vehicle/internal/CarData;->offset:I

    aget-byte v0, v0, v2

    const/16 v2, 0x11

    if-ne v0, v2, :cond_7

    .line 117
    invoke-direct {p0}, Lcom/yftech/vehicle/internal/CarData;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 120
    :cond_7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
