.class public Landroid/renderscript/Int2;
.super Ljava/lang/Object;
.source "Int2.java"


# instance fields
.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Landroid/renderscript/Int2;->y:I

    iput p1, p0, Landroid/renderscript/Int2;->x:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Landroid/renderscript/Int2;->x:I

    .line 37
    iput p2, p0, Landroid/renderscript/Int2;->y:I

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Int2;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iget v0, p1, Landroid/renderscript/Int2;->x:I

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 43
    iget p1, p1, Landroid/renderscript/Int2;->y:I

    iput p1, p0, Landroid/renderscript/Int2;->y:I

    return-void
.end method

.method public static add(Landroid/renderscript/Int2;I)Landroid/renderscript/Int2;
    .locals 2

    .line 89
    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    .line 90
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    .line 91
    iget p0, p0, Landroid/renderscript/Int2;->y:I

    add-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int2;->y:I

    return-object v0
.end method

.method public static add(Landroid/renderscript/Int2;Landroid/renderscript/Int2;)Landroid/renderscript/Int2;
    .locals 3

    .line 64
    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    .line 65
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    iget v2, p1, Landroid/renderscript/Int2;->x:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    .line 66
    iget p0, p0, Landroid/renderscript/Int2;->y:I

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    add-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int2;->y:I

    return-object v0
.end method

.method public static div(Landroid/renderscript/Int2;I)Landroid/renderscript/Int2;
    .locals 2

    .line 239
    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    .line 240
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    div-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    .line 241
    iget p0, p0, Landroid/renderscript/Int2;->y:I

    div-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int2;->y:I

    return-object v0
.end method

.method public static div(Landroid/renderscript/Int2;Landroid/renderscript/Int2;)Landroid/renderscript/Int2;
    .locals 3

    .line 214
    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    .line 215
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    iget v2, p1, Landroid/renderscript/Int2;->x:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    .line 216
    iget p0, p0, Landroid/renderscript/Int2;->y:I

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    div-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int2;->y:I

    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Int2;Landroid/renderscript/Int2;)I
    .locals 2

    .line 331
    iget v0, p1, Landroid/renderscript/Int2;->x:I

    iget v1, p0, Landroid/renderscript/Int2;->x:I

    mul-int/2addr v0, v1

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    iget p0, p0, Landroid/renderscript/Int2;->y:I

    mul-int/2addr p1, p0

    add-int/2addr v0, p1

    return v0
.end method

.method public static mod(Landroid/renderscript/Int2;I)Landroid/renderscript/Int2;
    .locals 2

    .line 289
    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    .line 290
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    rem-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    .line 291
    iget p0, p0, Landroid/renderscript/Int2;->y:I

    rem-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int2;->y:I

    return-object v0
.end method

.method public static mod(Landroid/renderscript/Int2;Landroid/renderscript/Int2;)Landroid/renderscript/Int2;
    .locals 3

    .line 264
    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    .line 265
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    iget v2, p1, Landroid/renderscript/Int2;->x:I

    rem-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    .line 266
    iget p0, p0, Landroid/renderscript/Int2;->y:I

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    rem-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int2;->y:I

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Int2;I)Landroid/renderscript/Int2;
    .locals 2

    .line 189
    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    .line 190
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    .line 191
    iget p0, p0, Landroid/renderscript/Int2;->y:I

    mul-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int2;->y:I

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Int2;Landroid/renderscript/Int2;)Landroid/renderscript/Int2;
    .locals 3

    .line 164
    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    .line 165
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    iget v2, p1, Landroid/renderscript/Int2;->x:I

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    .line 166
    iget p0, p0, Landroid/renderscript/Int2;->y:I

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    mul-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int2;->y:I

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Int2;I)Landroid/renderscript/Int2;
    .locals 2

    .line 139
    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    .line 140
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    .line 141
    iget p0, p0, Landroid/renderscript/Int2;->y:I

    sub-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int2;->y:I

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Int2;Landroid/renderscript/Int2;)Landroid/renderscript/Int2;
    .locals 3

    .line 114
    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    .line 115
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    iget v2, p1, Landroid/renderscript/Int2;->x:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    .line 116
    iget p0, p0, Landroid/renderscript/Int2;->y:I

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    sub-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int2;->y:I

    return-object v0
.end method


# virtual methods
.method public add(I)V
    .locals 1

    .line 77
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 78
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    return-void
.end method

.method public add(Landroid/renderscript/Int2;)V
    .locals 2

    .line 52
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    iget v1, p1, Landroid/renderscript/Int2;->x:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 53
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    return-void
.end method

.method public addAt(II)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 426
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index: i"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 423
    :pswitch_0
    iget p1, p0, Landroid/renderscript/Int2;->y:I

    add-int/2addr p1, p2

    iput p1, p0, Landroid/renderscript/Int2;->y:I

    return-void

    .line 420
    :pswitch_1
    iget p1, p0, Landroid/renderscript/Int2;->x:I

    add-int/2addr p1, p2

    iput p1, p0, Landroid/renderscript/Int2;->x:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public addMultiple(Landroid/renderscript/Int2;I)V
    .locals 2

    .line 341
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    iget v1, p1, Landroid/renderscript/Int2;->x:I

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 342
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    mul-int/2addr p1, p2

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    return-void
.end method

.method public copyTo([II)V
    .locals 1

    .line 437
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    aput v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    .line 438
    iget p0, p0, Landroid/renderscript/Int2;->y:I

    aput p0, p1, p2

    return-void
.end method

.method public div(I)V
    .locals 1

    .line 227
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 228
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    return-void
.end method

.method public div(Landroid/renderscript/Int2;)V
    .locals 2

    .line 202
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    iget v1, p1, Landroid/renderscript/Int2;->x:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 203
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    return-void
.end method

.method public dotProduct(Landroid/renderscript/Int2;)I
    .locals 2

    .line 320
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    iget v1, p1, Landroid/renderscript/Int2;->x:I

    mul-int/2addr v0, v1

    iget p0, p0, Landroid/renderscript/Int2;->y:I

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    mul-int/2addr p0, p1

    add-int/2addr v0, p0

    return v0
.end method

.method public elementSum()I
    .locals 1

    .line 372
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    iget p0, p0, Landroid/renderscript/Int2;->y:I

    add-int/2addr v0, p0

    return v0
.end method

.method public get(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 388
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index: i"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 386
    :pswitch_0
    iget p0, p0, Landroid/renderscript/Int2;->y:I

    return p0

    .line 384
    :pswitch_1
    iget p0, p0, Landroid/renderscript/Int2;->x:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public length()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public mod(I)V
    .locals 1

    .line 277
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 278
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    return-void
.end method

.method public mod(Landroid/renderscript/Int2;)V
    .locals 2

    .line 252
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    iget v1, p1, Landroid/renderscript/Int2;->x:I

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 253
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    return-void
.end method

.method public mul(I)V
    .locals 1

    .line 177
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 178
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    return-void
.end method

.method public mul(Landroid/renderscript/Int2;)V
    .locals 2

    .line 152
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    iget v1, p1, Landroid/renderscript/Int2;->x:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 153
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    return-void
.end method

.method public negate()V
    .locals 1

    .line 309
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    neg-int v0, v0

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 310
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    neg-int v0, v0

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    return-void
.end method

.method public set(Landroid/renderscript/Int2;)V
    .locals 1

    .line 351
    iget v0, p1, Landroid/renderscript/Int2;->x:I

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 352
    iget p1, p1, Landroid/renderscript/Int2;->y:I

    iput p1, p0, Landroid/renderscript/Int2;->y:I

    return-void
.end method

.method public setAt(II)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 407
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index: i"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 404
    :pswitch_0
    iput p2, p0, Landroid/renderscript/Int2;->y:I

    return-void

    .line 401
    :pswitch_1
    iput p2, p0, Landroid/renderscript/Int2;->x:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setValues(II)V
    .locals 0

    .line 362
    iput p1, p0, Landroid/renderscript/Int2;->x:I

    .line 363
    iput p2, p0, Landroid/renderscript/Int2;->y:I

    return-void
.end method

.method public sub(I)V
    .locals 1

    .line 127
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 128
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    return-void
.end method

.method public sub(Landroid/renderscript/Int2;)V
    .locals 2

    .line 102
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    iget v1, p1, Landroid/renderscript/Int2;->x:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 103
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    return-void
.end method
