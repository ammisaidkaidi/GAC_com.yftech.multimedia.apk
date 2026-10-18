.class public Landroid/renderscript/Double4;
.super Ljava/lang/Object;
.source "Double4.java"


# instance fields
.field public w:D

.field public x:D

.field public y:D

.field public z:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-wide p1, p0, Landroid/renderscript/Double4;->x:D

    .line 41
    iput-wide p3, p0, Landroid/renderscript/Double4;->y:D

    .line 42
    iput-wide p5, p0, Landroid/renderscript/Double4;->z:D

    .line 43
    iput-wide p7, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Double4;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iget-wide v0, p1, Landroid/renderscript/Double4;->x:D

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    .line 34
    iget-wide v0, p1, Landroid/renderscript/Double4;->y:D

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    .line 35
    iget-wide v0, p1, Landroid/renderscript/Double4;->z:D

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    .line 36
    iget-wide v0, p1, Landroid/renderscript/Double4;->w:D

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method

.method public static add(Landroid/renderscript/Double4;D)Landroid/renderscript/Double4;
    .locals 3

    .line 95
    new-instance v0, Landroid/renderscript/Double4;

    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    .line 96
    iget-wide v1, p0, Landroid/renderscript/Double4;->x:D

    add-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->x:D

    .line 97
    iget-wide v1, p0, Landroid/renderscript/Double4;->y:D

    add-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->y:D

    .line 98
    iget-wide v1, p0, Landroid/renderscript/Double4;->z:D

    add-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->z:D

    .line 99
    iget-wide v1, p0, Landroid/renderscript/Double4;->w:D

    add-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->w:D

    return-object v0
.end method

.method public static add(Landroid/renderscript/Double4;Landroid/renderscript/Double4;)Landroid/renderscript/Double4;
    .locals 5

    .line 54
    new-instance v0, Landroid/renderscript/Double4;

    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    .line 55
    iget-wide v1, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->x:D

    add-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->x:D

    .line 56
    iget-wide v1, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->y:D

    add-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->y:D

    .line 57
    iget-wide v1, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->z:D

    add-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->z:D

    .line 58
    iget-wide v1, p0, Landroid/renderscript/Double4;->w:D

    iget-wide p0, p1, Landroid/renderscript/Double4;->w:D

    add-double/2addr v1, p0

    iput-wide v1, v0, Landroid/renderscript/Double4;->w:D

    return-object v0
.end method

.method public static div(Landroid/renderscript/Double4;D)Landroid/renderscript/Double4;
    .locals 3

    .line 252
    new-instance v0, Landroid/renderscript/Double4;

    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    .line 253
    iget-wide v1, p0, Landroid/renderscript/Double4;->x:D

    div-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->x:D

    .line 254
    iget-wide v1, p0, Landroid/renderscript/Double4;->y:D

    div-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->y:D

    .line 255
    iget-wide v1, p0, Landroid/renderscript/Double4;->z:D

    div-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->z:D

    .line 256
    iget-wide v1, p0, Landroid/renderscript/Double4;->w:D

    div-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->w:D

    return-object v0
.end method

.method public static div(Landroid/renderscript/Double4;Landroid/renderscript/Double4;)Landroid/renderscript/Double4;
    .locals 5

    .line 269
    new-instance v0, Landroid/renderscript/Double4;

    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    .line 270
    iget-wide v1, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->x:D

    div-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->x:D

    .line 271
    iget-wide v1, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->y:D

    div-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->y:D

    .line 272
    iget-wide v1, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->z:D

    div-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->z:D

    .line 273
    iget-wide v1, p0, Landroid/renderscript/Double4;->w:D

    iget-wide p0, p1, Landroid/renderscript/Double4;->w:D

    div-double/2addr v1, p0

    iput-wide v1, v0, Landroid/renderscript/Double4;->w:D

    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Double4;Landroid/renderscript/Double4;)D
    .locals 6

    .line 296
    iget-wide v0, p1, Landroid/renderscript/Double4;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double4;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Double4;->y:D

    iget-wide v4, p0, Landroid/renderscript/Double4;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Double4;->z:D

    iget-wide v4, p0, Landroid/renderscript/Double4;->z:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Double4;->w:D

    iget-wide p0, p0, Landroid/renderscript/Double4;->w:D

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static mul(Landroid/renderscript/Double4;D)Landroid/renderscript/Double4;
    .locals 3

    .line 211
    new-instance v0, Landroid/renderscript/Double4;

    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    .line 212
    iget-wide v1, p0, Landroid/renderscript/Double4;->x:D

    mul-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->x:D

    .line 213
    iget-wide v1, p0, Landroid/renderscript/Double4;->y:D

    mul-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->y:D

    .line 214
    iget-wide v1, p0, Landroid/renderscript/Double4;->z:D

    mul-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->z:D

    .line 215
    iget-wide v1, p0, Landroid/renderscript/Double4;->w:D

    mul-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->w:D

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Double4;Landroid/renderscript/Double4;)Landroid/renderscript/Double4;
    .locals 5

    .line 194
    new-instance v0, Landroid/renderscript/Double4;

    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    .line 195
    iget-wide v1, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->x:D

    mul-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->x:D

    .line 196
    iget-wide v1, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->y:D

    mul-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->y:D

    .line 197
    iget-wide v1, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->z:D

    mul-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->z:D

    .line 198
    iget-wide v1, p0, Landroid/renderscript/Double4;->w:D

    iget-wide p0, p1, Landroid/renderscript/Double4;->w:D

    mul-double/2addr v1, p0

    iput-wide v1, v0, Landroid/renderscript/Double4;->w:D

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Double4;D)Landroid/renderscript/Double4;
    .locals 3

    .line 136
    new-instance v0, Landroid/renderscript/Double4;

    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    .line 137
    iget-wide v1, p0, Landroid/renderscript/Double4;->x:D

    sub-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->x:D

    .line 138
    iget-wide v1, p0, Landroid/renderscript/Double4;->y:D

    sub-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->y:D

    .line 139
    iget-wide v1, p0, Landroid/renderscript/Double4;->z:D

    sub-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->z:D

    .line 140
    iget-wide v1, p0, Landroid/renderscript/Double4;->w:D

    sub-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->w:D

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Double4;Landroid/renderscript/Double4;)Landroid/renderscript/Double4;
    .locals 5

    .line 153
    new-instance v0, Landroid/renderscript/Double4;

    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    .line 154
    iget-wide v1, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->x:D

    sub-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->x:D

    .line 155
    iget-wide v1, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->y:D

    sub-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->y:D

    .line 156
    iget-wide v1, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->z:D

    sub-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->z:D

    .line 157
    iget-wide v1, p0, Landroid/renderscript/Double4;->w:D

    iget-wide p0, p1, Landroid/renderscript/Double4;->w:D

    sub-double/2addr v1, p0

    iput-wide v1, v0, Landroid/renderscript/Double4;->w:D

    return-object v0
.end method


# virtual methods
.method public add(D)V
    .locals 2

    .line 81
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    .line 82
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    .line 83
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    .line 84
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method

.method public add(Landroid/renderscript/Double4;)V
    .locals 4

    .line 69
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->x:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    .line 70
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->y:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    .line 71
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->z:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    .line 72
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->w:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method

.method public addAt(ID)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    .line 419
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index: i"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 416
    :pswitch_0
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-void

    .line 413
    :pswitch_1
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    return-void

    .line 410
    :pswitch_2
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    return-void

    .line 407
    :pswitch_3
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public addMultiple(Landroid/renderscript/Double4;D)V
    .locals 4

    .line 306
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->x:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    .line 307
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->y:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    .line 308
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->z:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    .line 309
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->w:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method

.method public copyTo([DI)V
    .locals 3

    .line 445
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    aput-wide v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    .line 446
    iget-wide v1, p0, Landroid/renderscript/Double4;->y:D

    aput-wide v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    .line 447
    iget-wide v1, p0, Landroid/renderscript/Double4;->z:D

    aput-wide v1, p1, v0

    add-int/lit8 p2, p2, 0x3

    .line 448
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    aput-wide v0, p1, p2

    return-void
.end method

.method public div(D)V
    .locals 2

    .line 238
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    .line 239
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    .line 240
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    .line 241
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method

.method public div(Landroid/renderscript/Double4;)V
    .locals 4

    .line 226
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->x:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    .line 227
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->y:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    .line 228
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->z:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    .line 229
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->w:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method

.method public dotProduct(Landroid/renderscript/Double4;)D
    .locals 6

    .line 285
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v4, p1, Landroid/renderscript/Double4;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v4, p1, Landroid/renderscript/Double4;->z:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Double4;->w:D

    iget-wide p0, p1, Landroid/renderscript/Double4;->w:D

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public elementSum()D
    .locals 4

    .line 349
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double4;->y:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Double4;->z:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Double4;->w:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public get(I)D
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 369
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index: i"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 367
    :pswitch_0
    iget-wide p0, p0, Landroid/renderscript/Double4;->w:D

    return-wide p0

    .line 365
    :pswitch_1
    iget-wide p0, p0, Landroid/renderscript/Double4;->z:D

    return-wide p0

    .line 363
    :pswitch_2
    iget-wide p0, p0, Landroid/renderscript/Double4;->y:D

    return-wide p0

    .line 361
    :pswitch_3
    iget-wide p0, p0, Landroid/renderscript/Double4;->x:D

    return-wide p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public length()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public mul(D)V
    .locals 2

    .line 180
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    .line 181
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    .line 182
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    .line 183
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method

.method public mul(Landroid/renderscript/Double4;)V
    .locals 4

    .line 168
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->x:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    .line 169
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->y:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    .line 170
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->z:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    .line 171
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->w:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method

.method public negate()V
    .locals 2

    .line 328
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    neg-double v0, v0

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    .line 329
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    neg-double v0, v0

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    .line 330
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    neg-double v0, v0

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    .line 331
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    neg-double v0, v0

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method

.method public set(Landroid/renderscript/Double4;)V
    .locals 2

    .line 318
    iget-wide v0, p1, Landroid/renderscript/Double4;->x:D

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    .line 319
    iget-wide v0, p1, Landroid/renderscript/Double4;->y:D

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    .line 320
    iget-wide v0, p1, Landroid/renderscript/Double4;->z:D

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    .line 321
    iget-wide v0, p1, Landroid/renderscript/Double4;->w:D

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method

.method public setAt(ID)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 394
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index: i"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 391
    :pswitch_0
    iput-wide p2, p0, Landroid/renderscript/Double4;->w:D

    return-void

    .line 388
    :pswitch_1
    iput-wide p2, p0, Landroid/renderscript/Double4;->z:D

    return-void

    .line 385
    :pswitch_2
    iput-wide p2, p0, Landroid/renderscript/Double4;->y:D

    return-void

    .line 382
    :pswitch_3
    iput-wide p2, p0, Landroid/renderscript/Double4;->x:D

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setValues(DDDD)V
    .locals 0

    .line 432
    iput-wide p1, p0, Landroid/renderscript/Double4;->x:D

    .line 433
    iput-wide p3, p0, Landroid/renderscript/Double4;->y:D

    .line 434
    iput-wide p5, p0, Landroid/renderscript/Double4;->z:D

    .line 435
    iput-wide p7, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method

.method public sub(D)V
    .locals 2

    .line 122
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    .line 123
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    .line 124
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    .line 125
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method

.method public sub(Landroid/renderscript/Double4;)V
    .locals 4

    .line 110
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->x:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    .line 111
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->y:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    .line 112
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->z:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    .line 113
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->w:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method
