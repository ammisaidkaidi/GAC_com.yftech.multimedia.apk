.class public Landroid/renderscript/Short3;
.super Ljava/lang/Object;
.source "Short3.java"


# instance fields
.field public x:S

.field public y:S

.field public z:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Short3;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iget-short v0, p1, Landroid/renderscript/Short3;->x:S

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 45
    iget-short v0, p1, Landroid/renderscript/Short3;->y:S

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 46
    iget-short p1, p1, Landroid/renderscript/Short3;->z:S

    iput-short p1, p0, Landroid/renderscript/Short3;->z:S

    return-void
.end method

.method public constructor <init>(S)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-short p1, p0, Landroid/renderscript/Short3;->z:S

    iput-short p1, p0, Landroid/renderscript/Short3;->y:S

    iput-short p1, p0, Landroid/renderscript/Short3;->x:S

    return-void
.end method

.method public constructor <init>(SSS)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-short p1, p0, Landroid/renderscript/Short3;->x:S

    .line 38
    iput-short p2, p0, Landroid/renderscript/Short3;->y:S

    .line 39
    iput-short p3, p0, Landroid/renderscript/Short3;->z:S

    return-void
.end method

.method public static add(Landroid/renderscript/Short3;Landroid/renderscript/Short3;)Landroid/renderscript/Short3;
    .locals 3

    .line 68
    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    .line 69
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    iget-short v2, p1, Landroid/renderscript/Short3;->x:S

    add-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    .line 70
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    iget-short v2, p1, Landroid/renderscript/Short3;->y:S

    add-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    .line 71
    iget-short p0, p0, Landroid/renderscript/Short3;->z:S

    iget-short p1, p1, Landroid/renderscript/Short3;->z:S

    add-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short3;->z:S

    return-object v0
.end method

.method public static add(Landroid/renderscript/Short3;S)Landroid/renderscript/Short3;
    .locals 2

    .line 95
    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    .line 96
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    add-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    .line 97
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    add-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    .line 98
    iget-short p0, p0, Landroid/renderscript/Short3;->z:S

    add-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short3;->z:S

    return-object v0
.end method

.method public static div(Landroid/renderscript/Short3;Landroid/renderscript/Short3;)Landroid/renderscript/Short3;
    .locals 3

    .line 230
    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    .line 231
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    iget-short v2, p1, Landroid/renderscript/Short3;->x:S

    div-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    .line 232
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    iget-short v2, p1, Landroid/renderscript/Short3;->y:S

    div-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    .line 233
    iget-short p0, p0, Landroid/renderscript/Short3;->z:S

    iget-short p1, p1, Landroid/renderscript/Short3;->z:S

    div-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short3;->z:S

    return-object v0
.end method

.method public static div(Landroid/renderscript/Short3;S)Landroid/renderscript/Short3;
    .locals 2

    .line 257
    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    .line 258
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    div-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    .line 259
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    div-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    .line 260
    iget-short p0, p0, Landroid/renderscript/Short3;->z:S

    div-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short3;->z:S

    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Short3;Landroid/renderscript/Short3;)S
    .locals 3

    .line 355
    iget-short v0, p1, Landroid/renderscript/Short3;->x:S

    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    mul-int/2addr v0, v1

    iget-short v1, p1, Landroid/renderscript/Short3;->y:S

    iget-short v2, p0, Landroid/renderscript/Short3;->y:S

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-short p1, p1, Landroid/renderscript/Short3;->z:S

    iget-short p0, p0, Landroid/renderscript/Short3;->z:S

    mul-int/2addr p1, p0

    add-int/2addr v0, p1

    int-to-short p0, v0

    return p0
.end method

.method public static mod(Landroid/renderscript/Short3;Landroid/renderscript/Short3;)Landroid/renderscript/Short3;
    .locals 3

    .line 284
    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    .line 285
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    iget-short v2, p1, Landroid/renderscript/Short3;->x:S

    rem-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    .line 286
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    iget-short v2, p1, Landroid/renderscript/Short3;->y:S

    rem-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    .line 287
    iget-short p0, p0, Landroid/renderscript/Short3;->z:S

    iget-short p1, p1, Landroid/renderscript/Short3;->z:S

    rem-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short3;->z:S

    return-object v0
.end method

.method public static mod(Landroid/renderscript/Short3;S)Landroid/renderscript/Short3;
    .locals 2

    .line 311
    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    .line 312
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    rem-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    .line 313
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    rem-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    .line 314
    iget-short p0, p0, Landroid/renderscript/Short3;->z:S

    rem-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short3;->z:S

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Short3;Landroid/renderscript/Short3;)Landroid/renderscript/Short3;
    .locals 3

    .line 176
    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    .line 177
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    iget-short v2, p1, Landroid/renderscript/Short3;->x:S

    mul-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    .line 178
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    iget-short v2, p1, Landroid/renderscript/Short3;->y:S

    mul-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    .line 179
    iget-short p0, p0, Landroid/renderscript/Short3;->z:S

    iget-short p1, p1, Landroid/renderscript/Short3;->z:S

    mul-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short3;->z:S

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Short3;S)Landroid/renderscript/Short3;
    .locals 2

    .line 203
    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    .line 204
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    mul-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    .line 205
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    mul-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    .line 206
    iget-short p0, p0, Landroid/renderscript/Short3;->z:S

    mul-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short3;->z:S

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Short3;Landroid/renderscript/Short3;)Landroid/renderscript/Short3;
    .locals 3

    .line 122
    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    .line 123
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    iget-short v2, p1, Landroid/renderscript/Short3;->x:S

    sub-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    .line 124
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    iget-short v2, p1, Landroid/renderscript/Short3;->y:S

    sub-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    .line 125
    iget-short p0, p0, Landroid/renderscript/Short3;->z:S

    iget-short p1, p1, Landroid/renderscript/Short3;->z:S

    sub-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short3;->z:S

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Short3;S)Landroid/renderscript/Short3;
    .locals 2

    .line 149
    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    .line 150
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    sub-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    .line 151
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    sub-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    .line 152
    iget-short p0, p0, Landroid/renderscript/Short3;->z:S

    sub-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short3;->z:S

    return-object v0
.end method


# virtual methods
.method public add(Landroid/renderscript/Short3;)V
    .locals 2

    .line 55
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v1, p1, Landroid/renderscript/Short3;->x:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 56
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    iget-short v1, p1, Landroid/renderscript/Short3;->y:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 57
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    iget-short p1, p1, Landroid/renderscript/Short3;->z:S

    add-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short3;->z:S

    return-void
.end method

.method public add(S)V
    .locals 1

    .line 82
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    add-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 83
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    add-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 84
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    add-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short3;->z:S

    return-void
.end method

.method public addAt(IS)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 462
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index: i"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 459
    :pswitch_0
    iget-short p1, p0, Landroid/renderscript/Short3;->z:S

    add-int/2addr p1, p2

    int-to-short p1, p1

    iput-short p1, p0, Landroid/renderscript/Short3;->z:S

    return-void

    .line 456
    :pswitch_1
    iget-short p1, p0, Landroid/renderscript/Short3;->y:S

    add-int/2addr p1, p2

    int-to-short p1, p1

    iput-short p1, p0, Landroid/renderscript/Short3;->y:S

    return-void

    .line 453
    :pswitch_2
    iget-short p1, p0, Landroid/renderscript/Short3;->x:S

    add-int/2addr p1, p2

    int-to-short p1, p1

    iput-short p1, p0, Landroid/renderscript/Short3;->x:S

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public addMultiple(Landroid/renderscript/Short3;S)V
    .locals 2

    .line 365
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v1, p1, Landroid/renderscript/Short3;->x:S

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 366
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    iget-short v1, p1, Landroid/renderscript/Short3;->y:S

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 367
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    iget-short p1, p1, Landroid/renderscript/Short3;->z:S

    mul-int/2addr p1, p2

    add-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short3;->z:S

    return-void
.end method

.method public copyTo([SI)V
    .locals 2

    .line 473
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    aput-short v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    .line 474
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    aput-short v1, p1, v0

    add-int/lit8 p2, p2, 0x2

    .line 475
    iget-short p0, p0, Landroid/renderscript/Short3;->z:S

    aput-short p0, p1, p2

    return-void
.end method

.method public div(Landroid/renderscript/Short3;)V
    .locals 2

    .line 217
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v1, p1, Landroid/renderscript/Short3;->x:S

    div-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 218
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    iget-short v1, p1, Landroid/renderscript/Short3;->y:S

    div-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 219
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    iget-short p1, p1, Landroid/renderscript/Short3;->z:S

    div-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short3;->z:S

    return-void
.end method

.method public div(S)V
    .locals 1

    .line 244
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    div-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 245
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    div-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 246
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    div-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short3;->z:S

    return-void
.end method

.method public dotProduct(Landroid/renderscript/Short3;)S
    .locals 3

    .line 344
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v1, p1, Landroid/renderscript/Short3;->x:S

    mul-int/2addr v0, v1

    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    iget-short v2, p1, Landroid/renderscript/Short3;->y:S

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-short p0, p0, Landroid/renderscript/Short3;->z:S

    iget-short p1, p1, Landroid/renderscript/Short3;->z:S

    mul-int/2addr p0, p1

    add-int/2addr v0, p0

    int-to-short p0, v0

    return p0
.end method

.method public elementSum()S
    .locals 2

    .line 400
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    add-int/2addr v0, v1

    iget-short p0, p0, Landroid/renderscript/Short3;->z:S

    add-int/2addr v0, p0

    int-to-short p0, v0

    return p0
.end method

.method public get(I)S
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 418
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index: i"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 416
    :pswitch_0
    iget-short p0, p0, Landroid/renderscript/Short3;->z:S

    return p0

    .line 414
    :pswitch_1
    iget-short p0, p0, Landroid/renderscript/Short3;->y:S

    return p0

    .line 412
    :pswitch_2
    iget-short p0, p0, Landroid/renderscript/Short3;->x:S

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public length()S
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public mod(Landroid/renderscript/Short3;)V
    .locals 2

    .line 271
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v1, p1, Landroid/renderscript/Short3;->x:S

    rem-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 272
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    iget-short v1, p1, Landroid/renderscript/Short3;->y:S

    rem-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 273
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    iget-short p1, p1, Landroid/renderscript/Short3;->z:S

    rem-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short3;->z:S

    return-void
.end method

.method public mod(S)V
    .locals 1

    .line 298
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    rem-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 299
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    rem-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 300
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    rem-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short3;->z:S

    return-void
.end method

.method public mul(Landroid/renderscript/Short3;)V
    .locals 2

    .line 163
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v1, p1, Landroid/renderscript/Short3;->x:S

    mul-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 164
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    iget-short v1, p1, Landroid/renderscript/Short3;->y:S

    mul-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 165
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    iget-short p1, p1, Landroid/renderscript/Short3;->z:S

    mul-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short3;->z:S

    return-void
.end method

.method public mul(S)V
    .locals 1

    .line 190
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    mul-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 191
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    mul-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 192
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    mul-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short3;->z:S

    return-void
.end method

.method public negate()V
    .locals 1

    .line 332
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    neg-int v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 333
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    neg-int v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 334
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    neg-int v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    return-void
.end method

.method public set(Landroid/renderscript/Short3;)V
    .locals 1

    .line 376
    iget-short v0, p1, Landroid/renderscript/Short3;->x:S

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 377
    iget-short v0, p1, Landroid/renderscript/Short3;->y:S

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 378
    iget-short p1, p1, Landroid/renderscript/Short3;->z:S

    iput-short p1, p0, Landroid/renderscript/Short3;->z:S

    return-void
.end method

.method public setAt(IS)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 440
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index: i"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 437
    :pswitch_0
    iput-short p2, p0, Landroid/renderscript/Short3;->z:S

    return-void

    .line 434
    :pswitch_1
    iput-short p2, p0, Landroid/renderscript/Short3;->y:S

    return-void

    .line 431
    :pswitch_2
    iput-short p2, p0, Landroid/renderscript/Short3;->x:S

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setValues(SSS)V
    .locals 0

    .line 389
    iput-short p1, p0, Landroid/renderscript/Short3;->x:S

    .line 390
    iput-short p2, p0, Landroid/renderscript/Short3;->y:S

    .line 391
    iput-short p3, p0, Landroid/renderscript/Short3;->z:S

    return-void
.end method

.method public sub(Landroid/renderscript/Short3;)V
    .locals 2

    .line 109
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v1, p1, Landroid/renderscript/Short3;->x:S

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 110
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    iget-short v1, p1, Landroid/renderscript/Short3;->y:S

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 111
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    iget-short p1, p1, Landroid/renderscript/Short3;->z:S

    sub-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short3;->z:S

    return-void
.end method

.method public sub(S)V
    .locals 1

    .line 136
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    sub-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 137
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    sub-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 138
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    sub-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short3;->z:S

    return-void
.end method
