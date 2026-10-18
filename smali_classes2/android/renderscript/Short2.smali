.class public Landroid/renderscript/Short2;
.super Ljava/lang/Object;
.source "Short2.java"


# instance fields
.field public x:S

.field public y:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Short2;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iget-short v0, p1, Landroid/renderscript/Short2;->x:S

    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    .line 46
    iget-short p1, p1, Landroid/renderscript/Short2;->y:S

    iput-short p1, p0, Landroid/renderscript/Short2;->y:S

    return-void
.end method

.method public constructor <init>(S)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-short p1, p0, Landroid/renderscript/Short2;->y:S

    iput-short p1, p0, Landroid/renderscript/Short2;->x:S

    return-void
.end method

.method public constructor <init>(SS)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-short p1, p0, Landroid/renderscript/Short2;->x:S

    .line 40
    iput-short p2, p0, Landroid/renderscript/Short2;->y:S

    return-void
.end method

.method public static add(Landroid/renderscript/Short2;Landroid/renderscript/Short2;)Landroid/renderscript/Short2;
    .locals 3

    .line 67
    new-instance v0, Landroid/renderscript/Short2;

    invoke-direct {v0}, Landroid/renderscript/Short2;-><init>()V

    .line 68
    iget-short v1, p0, Landroid/renderscript/Short2;->x:S

    iget-short v2, p1, Landroid/renderscript/Short2;->x:S

    add-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short2;->x:S

    .line 69
    iget-short p0, p0, Landroid/renderscript/Short2;->y:S

    iget-short p1, p1, Landroid/renderscript/Short2;->y:S

    add-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short2;->y:S

    return-object v0
.end method

.method public static add(Landroid/renderscript/Short2;S)Landroid/renderscript/Short2;
    .locals 2

    .line 92
    new-instance v0, Landroid/renderscript/Short2;

    invoke-direct {v0}, Landroid/renderscript/Short2;-><init>()V

    .line 93
    iget-short v1, p0, Landroid/renderscript/Short2;->x:S

    add-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short2;->x:S

    .line 94
    iget-short p0, p0, Landroid/renderscript/Short2;->y:S

    add-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short2;->y:S

    return-object v0
.end method

.method public static div(Landroid/renderscript/Short2;Landroid/renderscript/Short2;)Landroid/renderscript/Short2;
    .locals 3

    .line 217
    new-instance v0, Landroid/renderscript/Short2;

    invoke-direct {v0}, Landroid/renderscript/Short2;-><init>()V

    .line 218
    iget-short v1, p0, Landroid/renderscript/Short2;->x:S

    iget-short v2, p1, Landroid/renderscript/Short2;->x:S

    div-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short2;->x:S

    .line 219
    iget-short p0, p0, Landroid/renderscript/Short2;->y:S

    iget-short p1, p1, Landroid/renderscript/Short2;->y:S

    div-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short2;->y:S

    return-object v0
.end method

.method public static div(Landroid/renderscript/Short2;S)Landroid/renderscript/Short2;
    .locals 2

    .line 242
    new-instance v0, Landroid/renderscript/Short2;

    invoke-direct {v0}, Landroid/renderscript/Short2;-><init>()V

    .line 243
    iget-short v1, p0, Landroid/renderscript/Short2;->x:S

    div-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short2;->x:S

    .line 244
    iget-short p0, p0, Landroid/renderscript/Short2;->y:S

    div-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short2;->y:S

    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Short2;Landroid/renderscript/Short2;)S
    .locals 2

    .line 334
    iget-short v0, p1, Landroid/renderscript/Short2;->x:S

    iget-short v1, p0, Landroid/renderscript/Short2;->x:S

    mul-int/2addr v0, v1

    iget-short p1, p1, Landroid/renderscript/Short2;->y:S

    iget-short p0, p0, Landroid/renderscript/Short2;->y:S

    mul-int/2addr p1, p0

    add-int/2addr v0, p1

    int-to-short p0, v0

    return p0
.end method

.method public static mod(Landroid/renderscript/Short2;Landroid/renderscript/Short2;)Landroid/renderscript/Short2;
    .locals 3

    .line 267
    new-instance v0, Landroid/renderscript/Short2;

    invoke-direct {v0}, Landroid/renderscript/Short2;-><init>()V

    .line 268
    iget-short v1, p0, Landroid/renderscript/Short2;->x:S

    iget-short v2, p1, Landroid/renderscript/Short2;->x:S

    rem-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short2;->x:S

    .line 269
    iget-short p0, p0, Landroid/renderscript/Short2;->y:S

    iget-short p1, p1, Landroid/renderscript/Short2;->y:S

    rem-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short2;->y:S

    return-object v0
.end method

.method public static mod(Landroid/renderscript/Short2;S)Landroid/renderscript/Short2;
    .locals 2

    .line 292
    new-instance v0, Landroid/renderscript/Short2;

    invoke-direct {v0}, Landroid/renderscript/Short2;-><init>()V

    .line 293
    iget-short v1, p0, Landroid/renderscript/Short2;->x:S

    rem-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short2;->x:S

    .line 294
    iget-short p0, p0, Landroid/renderscript/Short2;->y:S

    rem-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short2;->y:S

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Short2;Landroid/renderscript/Short2;)Landroid/renderscript/Short2;
    .locals 3

    .line 167
    new-instance v0, Landroid/renderscript/Short2;

    invoke-direct {v0}, Landroid/renderscript/Short2;-><init>()V

    .line 168
    iget-short v1, p0, Landroid/renderscript/Short2;->x:S

    iget-short v2, p1, Landroid/renderscript/Short2;->x:S

    mul-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short2;->x:S

    .line 169
    iget-short p0, p0, Landroid/renderscript/Short2;->y:S

    iget-short p1, p1, Landroid/renderscript/Short2;->y:S

    mul-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short2;->y:S

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Short2;S)Landroid/renderscript/Short2;
    .locals 2

    .line 192
    new-instance v0, Landroid/renderscript/Short2;

    invoke-direct {v0}, Landroid/renderscript/Short2;-><init>()V

    .line 193
    iget-short v1, p0, Landroid/renderscript/Short2;->x:S

    mul-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short2;->x:S

    .line 194
    iget-short p0, p0, Landroid/renderscript/Short2;->y:S

    mul-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short2;->y:S

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Short2;Landroid/renderscript/Short2;)Landroid/renderscript/Short2;
    .locals 3

    .line 117
    new-instance v0, Landroid/renderscript/Short2;

    invoke-direct {v0}, Landroid/renderscript/Short2;-><init>()V

    .line 118
    iget-short v1, p0, Landroid/renderscript/Short2;->x:S

    iget-short v2, p1, Landroid/renderscript/Short2;->x:S

    sub-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short2;->x:S

    .line 119
    iget-short p0, p0, Landroid/renderscript/Short2;->y:S

    iget-short p1, p1, Landroid/renderscript/Short2;->y:S

    sub-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short2;->y:S

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Short2;S)Landroid/renderscript/Short2;
    .locals 2

    .line 142
    new-instance v0, Landroid/renderscript/Short2;

    invoke-direct {v0}, Landroid/renderscript/Short2;-><init>()V

    .line 143
    iget-short v1, p0, Landroid/renderscript/Short2;->x:S

    sub-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short2;->x:S

    .line 144
    iget-short p0, p0, Landroid/renderscript/Short2;->y:S

    sub-int/2addr p0, p1

    int-to-short p0, p0

    iput-short p0, v0, Landroid/renderscript/Short2;->y:S

    return-object v0
.end method


# virtual methods
.method public add(Landroid/renderscript/Short2;)V
    .locals 2

    .line 55
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    iget-short v1, p1, Landroid/renderscript/Short2;->x:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    .line 56
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    iget-short p1, p1, Landroid/renderscript/Short2;->y:S

    add-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short2;->y:S

    return-void
.end method

.method public add(S)V
    .locals 1

    .line 80
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    add-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    .line 81
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    add-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short2;->y:S

    return-void
.end method

.method public addAt(IS)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 429
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index: i"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 426
    :pswitch_0
    iget-short p1, p0, Landroid/renderscript/Short2;->y:S

    add-int/2addr p1, p2

    int-to-short p1, p1

    iput-short p1, p0, Landroid/renderscript/Short2;->y:S

    return-void

    .line 423
    :pswitch_1
    iget-short p1, p0, Landroid/renderscript/Short2;->x:S

    add-int/2addr p1, p2

    int-to-short p1, p1

    iput-short p1, p0, Landroid/renderscript/Short2;->x:S

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public addMultiple(Landroid/renderscript/Short2;S)V
    .locals 2

    .line 344
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    iget-short v1, p1, Landroid/renderscript/Short2;->x:S

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    .line 345
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    iget-short p1, p1, Landroid/renderscript/Short2;->y:S

    mul-int/2addr p1, p2

    add-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short2;->y:S

    return-void
.end method

.method public copyTo([SI)V
    .locals 1

    .line 440
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    aput-short v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    .line 441
    iget-short p0, p0, Landroid/renderscript/Short2;->y:S

    aput-short p0, p1, p2

    return-void
.end method

.method public div(Landroid/renderscript/Short2;)V
    .locals 2

    .line 205
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    iget-short v1, p1, Landroid/renderscript/Short2;->x:S

    div-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    .line 206
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    iget-short p1, p1, Landroid/renderscript/Short2;->y:S

    div-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short2;->y:S

    return-void
.end method

.method public div(S)V
    .locals 1

    .line 230
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    div-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    .line 231
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    div-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short2;->y:S

    return-void
.end method

.method public dotProduct(Landroid/renderscript/Short2;)S
    .locals 2

    .line 323
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    iget-short v1, p1, Landroid/renderscript/Short2;->x:S

    mul-int/2addr v0, v1

    iget-short p0, p0, Landroid/renderscript/Short2;->y:S

    iget-short p1, p1, Landroid/renderscript/Short2;->y:S

    mul-int/2addr p0, p1

    add-int/2addr v0, p0

    int-to-short p0, v0

    return p0
.end method

.method public elementSum()S
    .locals 1

    .line 375
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    iget-short p0, p0, Landroid/renderscript/Short2;->y:S

    add-int/2addr v0, p0

    int-to-short p0, v0

    return p0
.end method

.method public get(I)S
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 391
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index: i"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 389
    :pswitch_0
    iget-short p0, p0, Landroid/renderscript/Short2;->y:S

    return p0

    .line 387
    :pswitch_1
    iget-short p0, p0, Landroid/renderscript/Short2;->x:S

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public length()S
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public mod(Landroid/renderscript/Short2;)V
    .locals 2

    .line 255
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    iget-short v1, p1, Landroid/renderscript/Short2;->x:S

    rem-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    .line 256
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    iget-short p1, p1, Landroid/renderscript/Short2;->y:S

    rem-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short2;->y:S

    return-void
.end method

.method public mod(S)V
    .locals 1

    .line 280
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    rem-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    .line 281
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    rem-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short2;->y:S

    return-void
.end method

.method public mul(Landroid/renderscript/Short2;)V
    .locals 2

    .line 155
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    iget-short v1, p1, Landroid/renderscript/Short2;->x:S

    mul-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    .line 156
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    iget-short p1, p1, Landroid/renderscript/Short2;->y:S

    mul-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short2;->y:S

    return-void
.end method

.method public mul(S)V
    .locals 1

    .line 180
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    mul-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    .line 181
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    mul-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short2;->y:S

    return-void
.end method

.method public negate()V
    .locals 1

    .line 312
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    neg-int v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    .line 313
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    neg-int v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short2;->y:S

    return-void
.end method

.method public set(Landroid/renderscript/Short2;)V
    .locals 1

    .line 354
    iget-short v0, p1, Landroid/renderscript/Short2;->x:S

    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    .line 355
    iget-short p1, p1, Landroid/renderscript/Short2;->y:S

    iput-short p1, p0, Landroid/renderscript/Short2;->y:S

    return-void
.end method

.method public setAt(IS)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 410
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index: i"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 407
    :pswitch_0
    iput-short p2, p0, Landroid/renderscript/Short2;->y:S

    return-void

    .line 404
    :pswitch_1
    iput-short p2, p0, Landroid/renderscript/Short2;->x:S

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setValues(SS)V
    .locals 0

    .line 365
    iput-short p1, p0, Landroid/renderscript/Short2;->x:S

    .line 366
    iput-short p2, p0, Landroid/renderscript/Short2;->y:S

    return-void
.end method

.method public sub(Landroid/renderscript/Short2;)V
    .locals 2

    .line 105
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    iget-short v1, p1, Landroid/renderscript/Short2;->x:S

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    .line 106
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    iget-short p1, p1, Landroid/renderscript/Short2;->y:S

    sub-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short2;->y:S

    return-void
.end method

.method public sub(S)V
    .locals 1

    .line 130
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    sub-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    .line 131
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    sub-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/renderscript/Short2;->y:S

    return-void
.end method
