.class public Landroid/renderscript/Int3;
.super Ljava/lang/Object;
.source "Int3.java"


# instance fields
.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Landroid/renderscript/Int3;->z:I

    iput p1, p0, Landroid/renderscript/Int3;->y:I

    iput p1, p0, Landroid/renderscript/Int3;->x:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Landroid/renderscript/Int3;->x:I

    .line 38
    iput p2, p0, Landroid/renderscript/Int3;->y:I

    .line 39
    iput p3, p0, Landroid/renderscript/Int3;->z:I

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Int3;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iget v0, p1, Landroid/renderscript/Int3;->x:I

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    .line 45
    iget v0, p1, Landroid/renderscript/Int3;->y:I

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    .line 46
    iget p1, p1, Landroid/renderscript/Int3;->z:I

    iput p1, p0, Landroid/renderscript/Int3;->z:I

    return-void
.end method

.method public static add(Landroid/renderscript/Int3;I)Landroid/renderscript/Int3;
    .locals 2

    .line 95
    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    .line 96
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    .line 97
    iget v1, p0, Landroid/renderscript/Int3;->y:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    .line 98
    iget p0, p0, Landroid/renderscript/Int3;->z:I

    add-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int3;->z:I

    return-object v0
.end method

.method public static add(Landroid/renderscript/Int3;Landroid/renderscript/Int3;)Landroid/renderscript/Int3;
    .locals 3

    .line 68
    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    .line 69
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    iget v2, p1, Landroid/renderscript/Int3;->x:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    .line 70
    iget v1, p0, Landroid/renderscript/Int3;->y:I

    iget v2, p1, Landroid/renderscript/Int3;->y:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    .line 71
    iget p0, p0, Landroid/renderscript/Int3;->z:I

    iget p1, p1, Landroid/renderscript/Int3;->z:I

    add-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int3;->z:I

    return-object v0
.end method

.method public static div(Landroid/renderscript/Int3;I)Landroid/renderscript/Int3;
    .locals 2

    .line 257
    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    .line 258
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    div-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    .line 259
    iget v1, p0, Landroid/renderscript/Int3;->y:I

    div-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    .line 260
    iget p0, p0, Landroid/renderscript/Int3;->z:I

    div-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int3;->z:I

    return-object v0
.end method

.method public static div(Landroid/renderscript/Int3;Landroid/renderscript/Int3;)Landroid/renderscript/Int3;
    .locals 3

    .line 230
    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    .line 231
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    iget v2, p1, Landroid/renderscript/Int3;->x:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    .line 232
    iget v1, p0, Landroid/renderscript/Int3;->y:I

    iget v2, p1, Landroid/renderscript/Int3;->y:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    .line 233
    iget p0, p0, Landroid/renderscript/Int3;->z:I

    iget p1, p1, Landroid/renderscript/Int3;->z:I

    div-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int3;->z:I

    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Int3;Landroid/renderscript/Int3;)I
    .locals 3

    .line 355
    iget v0, p1, Landroid/renderscript/Int3;->x:I

    iget v1, p0, Landroid/renderscript/Int3;->x:I

    mul-int/2addr v0, v1

    iget v1, p1, Landroid/renderscript/Int3;->y:I

    iget v2, p0, Landroid/renderscript/Int3;->y:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget p1, p1, Landroid/renderscript/Int3;->z:I

    iget p0, p0, Landroid/renderscript/Int3;->z:I

    mul-int/2addr p1, p0

    add-int/2addr v0, p1

    return v0
.end method

.method public static mod(Landroid/renderscript/Int3;I)Landroid/renderscript/Int3;
    .locals 2

    .line 311
    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    .line 312
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    rem-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    .line 313
    iget v1, p0, Landroid/renderscript/Int3;->y:I

    rem-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    .line 314
    iget p0, p0, Landroid/renderscript/Int3;->z:I

    rem-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int3;->z:I

    return-object v0
.end method

.method public static mod(Landroid/renderscript/Int3;Landroid/renderscript/Int3;)Landroid/renderscript/Int3;
    .locals 3

    .line 284
    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    .line 285
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    iget v2, p1, Landroid/renderscript/Int3;->x:I

    rem-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    .line 286
    iget v1, p0, Landroid/renderscript/Int3;->y:I

    iget v2, p1, Landroid/renderscript/Int3;->y:I

    rem-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    .line 287
    iget p0, p0, Landroid/renderscript/Int3;->z:I

    iget p1, p1, Landroid/renderscript/Int3;->z:I

    rem-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int3;->z:I

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Int3;I)Landroid/renderscript/Int3;
    .locals 2

    .line 203
    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    .line 204
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    .line 205
    iget v1, p0, Landroid/renderscript/Int3;->y:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    .line 206
    iget p0, p0, Landroid/renderscript/Int3;->z:I

    mul-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int3;->z:I

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Int3;Landroid/renderscript/Int3;)Landroid/renderscript/Int3;
    .locals 3

    .line 176
    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    .line 177
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    iget v2, p1, Landroid/renderscript/Int3;->x:I

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    .line 178
    iget v1, p0, Landroid/renderscript/Int3;->y:I

    iget v2, p1, Landroid/renderscript/Int3;->y:I

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    .line 179
    iget p0, p0, Landroid/renderscript/Int3;->z:I

    iget p1, p1, Landroid/renderscript/Int3;->z:I

    mul-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int3;->z:I

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Int3;I)Landroid/renderscript/Int3;
    .locals 2

    .line 149
    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    .line 150
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    .line 151
    iget v1, p0, Landroid/renderscript/Int3;->y:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    .line 152
    iget p0, p0, Landroid/renderscript/Int3;->z:I

    sub-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int3;->z:I

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Int3;Landroid/renderscript/Int3;)Landroid/renderscript/Int3;
    .locals 3

    .line 122
    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    .line 123
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    iget v2, p1, Landroid/renderscript/Int3;->x:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    .line 124
    iget v1, p0, Landroid/renderscript/Int3;->y:I

    iget v2, p1, Landroid/renderscript/Int3;->y:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    .line 125
    iget p0, p0, Landroid/renderscript/Int3;->z:I

    iget p1, p1, Landroid/renderscript/Int3;->z:I

    sub-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int3;->z:I

    return-object v0
.end method


# virtual methods
.method public add(I)V
    .locals 1

    .line 82
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    .line 83
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    .line 84
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    return-void
.end method

.method public add(Landroid/renderscript/Int3;)V
    .locals 2

    .line 55
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    iget v1, p1, Landroid/renderscript/Int3;->x:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    .line 56
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    iget v1, p1, Landroid/renderscript/Int3;->y:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    .line 57
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    iget p1, p1, Landroid/renderscript/Int3;->z:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    return-void
.end method

.method public addAt(II)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 462
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index: i"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 459
    :pswitch_0
    iget p1, p0, Landroid/renderscript/Int3;->z:I

    add-int/2addr p1, p2

    iput p1, p0, Landroid/renderscript/Int3;->z:I

    return-void

    .line 456
    :pswitch_1
    iget p1, p0, Landroid/renderscript/Int3;->y:I

    add-int/2addr p1, p2

    iput p1, p0, Landroid/renderscript/Int3;->y:I

    return-void

    .line 453
    :pswitch_2
    iget p1, p0, Landroid/renderscript/Int3;->x:I

    add-int/2addr p1, p2

    iput p1, p0, Landroid/renderscript/Int3;->x:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public addMultiple(Landroid/renderscript/Int3;I)V
    .locals 2

    .line 365
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    iget v1, p1, Landroid/renderscript/Int3;->x:I

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    .line 366
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    iget v1, p1, Landroid/renderscript/Int3;->y:I

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    .line 367
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    iget p1, p1, Landroid/renderscript/Int3;->z:I

    mul-int/2addr p1, p2

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    return-void
.end method

.method public copyTo([II)V
    .locals 2

    .line 473
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    aput v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    .line 474
    iget v1, p0, Landroid/renderscript/Int3;->y:I

    aput v1, p1, v0

    add-int/lit8 p2, p2, 0x2

    .line 475
    iget p0, p0, Landroid/renderscript/Int3;->z:I

    aput p0, p1, p2

    return-void
.end method

.method public div(I)V
    .locals 1

    .line 244
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    .line 245
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    .line 246
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    return-void
.end method

.method public div(Landroid/renderscript/Int3;)V
    .locals 2

    .line 217
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    iget v1, p1, Landroid/renderscript/Int3;->x:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    .line 218
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    iget v1, p1, Landroid/renderscript/Int3;->y:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    .line 219
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    iget p1, p1, Landroid/renderscript/Int3;->z:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    return-void
.end method

.method public dotProduct(Landroid/renderscript/Int3;)I
    .locals 3

    .line 344
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    iget v1, p1, Landroid/renderscript/Int3;->x:I

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Int3;->y:I

    iget v2, p1, Landroid/renderscript/Int3;->y:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget p0, p0, Landroid/renderscript/Int3;->z:I

    iget p1, p1, Landroid/renderscript/Int3;->z:I

    mul-int/2addr p0, p1

    add-int/2addr v0, p0

    return v0
.end method

.method public elementSum()I
    .locals 2

    .line 400
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    iget v1, p0, Landroid/renderscript/Int3;->y:I

    add-int/2addr v0, v1

    iget p0, p0, Landroid/renderscript/Int3;->z:I

    add-int/2addr v0, p0

    return v0
.end method

.method public get(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 418
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index: i"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 416
    :pswitch_0
    iget p0, p0, Landroid/renderscript/Int3;->z:I

    return p0

    .line 414
    :pswitch_1
    iget p0, p0, Landroid/renderscript/Int3;->y:I

    return p0

    .line 412
    :pswitch_2
    iget p0, p0, Landroid/renderscript/Int3;->x:I

    return p0

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

.method public mod(I)V
    .locals 1

    .line 298
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    .line 299
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    .line 300
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    return-void
.end method

.method public mod(Landroid/renderscript/Int3;)V
    .locals 2

    .line 271
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    iget v1, p1, Landroid/renderscript/Int3;->x:I

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    .line 272
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    iget v1, p1, Landroid/renderscript/Int3;->y:I

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    .line 273
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    iget p1, p1, Landroid/renderscript/Int3;->z:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    return-void
.end method

.method public mul(I)V
    .locals 1

    .line 190
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    .line 191
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    .line 192
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    return-void
.end method

.method public mul(Landroid/renderscript/Int3;)V
    .locals 2

    .line 163
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    iget v1, p1, Landroid/renderscript/Int3;->x:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    .line 164
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    iget v1, p1, Landroid/renderscript/Int3;->y:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    .line 165
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    iget p1, p1, Landroid/renderscript/Int3;->z:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    return-void
.end method

.method public negate()V
    .locals 1

    .line 332
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    neg-int v0, v0

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    .line 333
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    neg-int v0, v0

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    .line 334
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    neg-int v0, v0

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    return-void
.end method

.method public set(Landroid/renderscript/Int3;)V
    .locals 1

    .line 376
    iget v0, p1, Landroid/renderscript/Int3;->x:I

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    .line 377
    iget v0, p1, Landroid/renderscript/Int3;->y:I

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    .line 378
    iget p1, p1, Landroid/renderscript/Int3;->z:I

    iput p1, p0, Landroid/renderscript/Int3;->z:I

    return-void
.end method

.method public setAt(II)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 440
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index: i"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 437
    :pswitch_0
    iput p2, p0, Landroid/renderscript/Int3;->z:I

    return-void

    .line 434
    :pswitch_1
    iput p2, p0, Landroid/renderscript/Int3;->y:I

    return-void

    .line 431
    :pswitch_2
    iput p2, p0, Landroid/renderscript/Int3;->x:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setValues(III)V
    .locals 0

    .line 389
    iput p1, p0, Landroid/renderscript/Int3;->x:I

    .line 390
    iput p2, p0, Landroid/renderscript/Int3;->y:I

    .line 391
    iput p3, p0, Landroid/renderscript/Int3;->z:I

    return-void
.end method

.method public sub(I)V
    .locals 1

    .line 136
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    .line 137
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    .line 138
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    return-void
.end method

.method public sub(Landroid/renderscript/Int3;)V
    .locals 2

    .line 109
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    iget v1, p1, Landroid/renderscript/Int3;->x:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    .line 110
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    iget v1, p1, Landroid/renderscript/Int3;->y:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    .line 111
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    iget p1, p1, Landroid/renderscript/Int3;->z:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    return-void
.end method
