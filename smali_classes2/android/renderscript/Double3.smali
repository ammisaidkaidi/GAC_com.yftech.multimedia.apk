.class public Landroid/renderscript/Double3;
.super Ljava/lang/Object;
.source "Double3.java"


# instance fields
.field public x:D

.field public y:D

.field public z:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide p1, p0, Landroid/renderscript/Double3;->x:D

    .line 39
    iput-wide p3, p0, Landroid/renderscript/Double3;->y:D

    .line 40
    iput-wide p5, p0, Landroid/renderscript/Double3;->z:D

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Double3;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iget-wide v0, p1, Landroid/renderscript/Double3;->x:D

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    .line 33
    iget-wide v0, p1, Landroid/renderscript/Double3;->y:D

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    .line 34
    iget-wide v0, p1, Landroid/renderscript/Double3;->z:D

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    return-void
.end method

.method public static add(Landroid/renderscript/Double3;D)Landroid/renderscript/Double3;
    .locals 3

    .line 89
    new-instance v0, Landroid/renderscript/Double3;

    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    .line 90
    iget-wide v1, p0, Landroid/renderscript/Double3;->x:D

    add-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double3;->x:D

    .line 91
    iget-wide v1, p0, Landroid/renderscript/Double3;->y:D

    add-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double3;->y:D

    .line 92
    iget-wide v1, p0, Landroid/renderscript/Double3;->z:D

    add-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double3;->z:D

    return-object v0
.end method

.method public static add(Landroid/renderscript/Double3;Landroid/renderscript/Double3;)Landroid/renderscript/Double3;
    .locals 5

    .line 51
    new-instance v0, Landroid/renderscript/Double3;

    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    .line 52
    iget-wide v1, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v3, p1, Landroid/renderscript/Double3;->x:D

    add-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double3;->x:D

    .line 53
    iget-wide v1, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v3, p1, Landroid/renderscript/Double3;->y:D

    add-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double3;->y:D

    .line 54
    iget-wide v1, p0, Landroid/renderscript/Double3;->z:D

    iget-wide p0, p1, Landroid/renderscript/Double3;->z:D

    add-double/2addr v1, p0

    iput-wide v1, v0, Landroid/renderscript/Double3;->z:D

    return-object v0
.end method

.method public static div(Landroid/renderscript/Double3;D)Landroid/renderscript/Double3;
    .locals 3

    .line 251
    new-instance v0, Landroid/renderscript/Double3;

    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    .line 252
    iget-wide v1, p0, Landroid/renderscript/Double3;->x:D

    div-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double3;->x:D

    .line 253
    iget-wide v1, p0, Landroid/renderscript/Double3;->y:D

    div-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double3;->y:D

    .line 254
    iget-wide v1, p0, Landroid/renderscript/Double3;->z:D

    div-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double3;->z:D

    return-object v0
.end method

.method public static div(Landroid/renderscript/Double3;Landroid/renderscript/Double3;)Landroid/renderscript/Double3;
    .locals 5

    .line 224
    new-instance v0, Landroid/renderscript/Double3;

    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    .line 225
    iget-wide v1, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v3, p1, Landroid/renderscript/Double3;->x:D

    div-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double3;->x:D

    .line 226
    iget-wide v1, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v3, p1, Landroid/renderscript/Double3;->y:D

    div-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double3;->y:D

    .line 227
    iget-wide v1, p0, Landroid/renderscript/Double3;->z:D

    iget-wide p0, p1, Landroid/renderscript/Double3;->z:D

    div-double/2addr v1, p0

    iput-wide v1, v0, Landroid/renderscript/Double3;->z:D

    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Double3;Landroid/renderscript/Double3;)D
    .locals 6

    .line 277
    iget-wide v0, p1, Landroid/renderscript/Double3;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double3;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Double3;->y:D

    iget-wide v4, p0, Landroid/renderscript/Double3;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Double3;->z:D

    iget-wide p0, p0, Landroid/renderscript/Double3;->z:D

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static mul(Landroid/renderscript/Double3;D)Landroid/renderscript/Double3;
    .locals 3

    .line 197
    new-instance v0, Landroid/renderscript/Double3;

    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    .line 198
    iget-wide v1, p0, Landroid/renderscript/Double3;->x:D

    mul-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double3;->x:D

    .line 199
    iget-wide v1, p0, Landroid/renderscript/Double3;->y:D

    mul-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double3;->y:D

    .line 200
    iget-wide v1, p0, Landroid/renderscript/Double3;->z:D

    mul-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double3;->z:D

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Double3;Landroid/renderscript/Double3;)Landroid/renderscript/Double3;
    .locals 5

    .line 170
    new-instance v0, Landroid/renderscript/Double3;

    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    .line 171
    iget-wide v1, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v3, p1, Landroid/renderscript/Double3;->x:D

    mul-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double3;->x:D

    .line 172
    iget-wide v1, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v3, p1, Landroid/renderscript/Double3;->y:D

    mul-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double3;->y:D

    .line 173
    iget-wide v1, p0, Landroid/renderscript/Double3;->z:D

    iget-wide p0, p1, Landroid/renderscript/Double3;->z:D

    mul-double/2addr v1, p0

    iput-wide v1, v0, Landroid/renderscript/Double3;->z:D

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Double3;D)Landroid/renderscript/Double3;
    .locals 3

    .line 143
    new-instance v0, Landroid/renderscript/Double3;

    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    .line 144
    iget-wide v1, p0, Landroid/renderscript/Double3;->x:D

    sub-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double3;->x:D

    .line 145
    iget-wide v1, p0, Landroid/renderscript/Double3;->y:D

    sub-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double3;->y:D

    .line 146
    iget-wide v1, p0, Landroid/renderscript/Double3;->z:D

    sub-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double3;->z:D

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Double3;Landroid/renderscript/Double3;)Landroid/renderscript/Double3;
    .locals 5

    .line 116
    new-instance v0, Landroid/renderscript/Double3;

    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    .line 117
    iget-wide v1, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v3, p1, Landroid/renderscript/Double3;->x:D

    sub-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double3;->x:D

    .line 118
    iget-wide v1, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v3, p1, Landroid/renderscript/Double3;->y:D

    sub-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double3;->y:D

    .line 119
    iget-wide v1, p0, Landroid/renderscript/Double3;->z:D

    iget-wide p0, p1, Landroid/renderscript/Double3;->z:D

    sub-double/2addr v1, p0

    iput-wide v1, v0, Landroid/renderscript/Double3;->z:D

    return-object v0
.end method


# virtual methods
.method public add(D)V
    .locals 2

    .line 76
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    .line 77
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    .line 78
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    return-void
.end method

.method public add(Landroid/renderscript/Double3;)V
    .locals 4

    .line 65
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->x:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    .line 66
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->y:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    .line 67
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->z:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    return-void
.end method

.method public addAt(ID)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    .line 389
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index: i"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 386
    :pswitch_0
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    return-void

    .line 383
    :pswitch_1
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    return-void

    .line 380
    :pswitch_2
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public addMultiple(Landroid/renderscript/Double3;D)V
    .locals 4

    .line 287
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->x:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    .line 288
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->y:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    .line 289
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->z:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    return-void
.end method

.method public copyTo([DI)V
    .locals 3

    .line 413
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    aput-wide v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    .line 414
    iget-wide v1, p0, Landroid/renderscript/Double3;->y:D

    aput-wide v1, p1, v0

    add-int/lit8 p2, p2, 0x2

    .line 415
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    aput-wide v0, p1, p2

    return-void
.end method

.method public div(D)V
    .locals 2

    .line 238
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    .line 239
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    .line 240
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    return-void
.end method

.method public div(Landroid/renderscript/Double3;)V
    .locals 4

    .line 211
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->x:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    .line 212
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->y:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    .line 213
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->z:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    return-void
.end method

.method public dotProduct(Landroid/renderscript/Double3;)D
    .locals 6

    .line 266
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v4, p1, Landroid/renderscript/Double3;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Double3;->z:D

    iget-wide p0, p1, Landroid/renderscript/Double3;->z:D

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public elementSum()D
    .locals 4

    .line 327
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double3;->y:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Double3;->z:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public get(I)D
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 345
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index: i"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 343
    :pswitch_0
    iget-wide p0, p0, Landroid/renderscript/Double3;->z:D

    return-wide p0

    .line 341
    :pswitch_1
    iget-wide p0, p0, Landroid/renderscript/Double3;->y:D

    return-wide p0

    .line 339
    :pswitch_2
    iget-wide p0, p0, Landroid/renderscript/Double3;->x:D

    return-wide p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public length()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public mul(D)V
    .locals 2

    .line 184
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    .line 185
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    .line 186
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    return-void
.end method

.method public mul(Landroid/renderscript/Double3;)V
    .locals 4

    .line 157
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->x:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    .line 158
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->y:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    .line 159
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->z:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    return-void
.end method

.method public negate()V
    .locals 2

    .line 307
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    neg-double v0, v0

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    .line 308
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    neg-double v0, v0

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    .line 309
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    neg-double v0, v0

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    return-void
.end method

.method public set(Landroid/renderscript/Double3;)V
    .locals 2

    .line 298
    iget-wide v0, p1, Landroid/renderscript/Double3;->x:D

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    .line 299
    iget-wide v0, p1, Landroid/renderscript/Double3;->y:D

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    .line 300
    iget-wide v0, p1, Landroid/renderscript/Double3;->z:D

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    return-void
.end method

.method public setAt(ID)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 367
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index: i"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 364
    :pswitch_0
    iput-wide p2, p0, Landroid/renderscript/Double3;->z:D

    return-void

    .line 361
    :pswitch_1
    iput-wide p2, p0, Landroid/renderscript/Double3;->y:D

    return-void

    .line 358
    :pswitch_2
    iput-wide p2, p0, Landroid/renderscript/Double3;->x:D

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setValues(DDD)V
    .locals 0

    .line 401
    iput-wide p1, p0, Landroid/renderscript/Double3;->x:D

    .line 402
    iput-wide p3, p0, Landroid/renderscript/Double3;->y:D

    .line 403
    iput-wide p5, p0, Landroid/renderscript/Double3;->z:D

    return-void
.end method

.method public sub(D)V
    .locals 2

    .line 130
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    .line 131
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    .line 132
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    return-void
.end method

.method public sub(Landroid/renderscript/Double3;)V
    .locals 4

    .line 103
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->x:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    .line 104
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->y:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    .line 105
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->z:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    return-void
.end method
