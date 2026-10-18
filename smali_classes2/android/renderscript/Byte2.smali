.class public Landroid/renderscript/Byte2;
.super Ljava/lang/Object;
.source "Byte2.java"


# instance fields
.field public x:B

.field public y:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(BB)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-byte p1, p0, Landroid/renderscript/Byte2;->x:B

    .line 33
    iput-byte p2, p0, Landroid/renderscript/Byte2;->y:B

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Byte2;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iget-byte v0, p1, Landroid/renderscript/Byte2;->x:B

    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    .line 39
    iget-byte p1, p1, Landroid/renderscript/Byte2;->y:B

    iput-byte p1, p0, Landroid/renderscript/Byte2;->y:B

    return-void
.end method

.method public static add(Landroid/renderscript/Byte2;B)Landroid/renderscript/Byte2;
    .locals 2

    .line 85
    new-instance v0, Landroid/renderscript/Byte2;

    invoke-direct {v0}, Landroid/renderscript/Byte2;-><init>()V

    .line 86
    iget-byte v1, p0, Landroid/renderscript/Byte2;->x:B

    add-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte2;->x:B

    .line 87
    iget-byte p0, p0, Landroid/renderscript/Byte2;->y:B

    add-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/renderscript/Byte2;->y:B

    return-object v0
.end method

.method public static add(Landroid/renderscript/Byte2;Landroid/renderscript/Byte2;)Landroid/renderscript/Byte2;
    .locals 3

    .line 60
    new-instance v0, Landroid/renderscript/Byte2;

    invoke-direct {v0}, Landroid/renderscript/Byte2;-><init>()V

    .line 61
    iget-byte v1, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v2, p1, Landroid/renderscript/Byte2;->x:B

    add-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte2;->x:B

    .line 62
    iget-byte p0, p0, Landroid/renderscript/Byte2;->y:B

    iget-byte p1, p1, Landroid/renderscript/Byte2;->y:B

    add-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/renderscript/Byte2;->y:B

    return-object v0
.end method

.method public static div(Landroid/renderscript/Byte2;B)Landroid/renderscript/Byte2;
    .locals 2

    .line 235
    new-instance v0, Landroid/renderscript/Byte2;

    invoke-direct {v0}, Landroid/renderscript/Byte2;-><init>()V

    .line 236
    iget-byte v1, p0, Landroid/renderscript/Byte2;->x:B

    div-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte2;->x:B

    .line 237
    iget-byte p0, p0, Landroid/renderscript/Byte2;->y:B

    div-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/renderscript/Byte2;->y:B

    return-object v0
.end method

.method public static div(Landroid/renderscript/Byte2;Landroid/renderscript/Byte2;)Landroid/renderscript/Byte2;
    .locals 3

    .line 210
    new-instance v0, Landroid/renderscript/Byte2;

    invoke-direct {v0}, Landroid/renderscript/Byte2;-><init>()V

    .line 211
    iget-byte v1, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v2, p1, Landroid/renderscript/Byte2;->x:B

    div-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte2;->x:B

    .line 212
    iget-byte p0, p0, Landroid/renderscript/Byte2;->y:B

    iget-byte p1, p1, Landroid/renderscript/Byte2;->y:B

    div-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/renderscript/Byte2;->y:B

    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Byte2;Landroid/renderscript/Byte2;)B
    .locals 2

    .line 277
    iget-byte v0, p1, Landroid/renderscript/Byte2;->x:B

    iget-byte v1, p0, Landroid/renderscript/Byte2;->x:B

    mul-int/2addr v0, v1

    iget-byte p1, p1, Landroid/renderscript/Byte2;->y:B

    iget-byte p0, p0, Landroid/renderscript/Byte2;->y:B

    mul-int/2addr p1, p0

    add-int/2addr v0, p1

    int-to-byte p0, v0

    return p0
.end method

.method public static mul(Landroid/renderscript/Byte2;B)Landroid/renderscript/Byte2;
    .locals 2

    .line 185
    new-instance v0, Landroid/renderscript/Byte2;

    invoke-direct {v0}, Landroid/renderscript/Byte2;-><init>()V

    .line 186
    iget-byte v1, p0, Landroid/renderscript/Byte2;->x:B

    mul-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte2;->x:B

    .line 187
    iget-byte p0, p0, Landroid/renderscript/Byte2;->y:B

    mul-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/renderscript/Byte2;->y:B

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Byte2;Landroid/renderscript/Byte2;)Landroid/renderscript/Byte2;
    .locals 3

    .line 160
    new-instance v0, Landroid/renderscript/Byte2;

    invoke-direct {v0}, Landroid/renderscript/Byte2;-><init>()V

    .line 161
    iget-byte v1, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v2, p1, Landroid/renderscript/Byte2;->x:B

    mul-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte2;->x:B

    .line 162
    iget-byte p0, p0, Landroid/renderscript/Byte2;->y:B

    iget-byte p1, p1, Landroid/renderscript/Byte2;->y:B

    mul-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/renderscript/Byte2;->y:B

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Byte2;B)Landroid/renderscript/Byte2;
    .locals 2

    .line 135
    new-instance v0, Landroid/renderscript/Byte2;

    invoke-direct {v0}, Landroid/renderscript/Byte2;-><init>()V

    .line 136
    iget-byte v1, p0, Landroid/renderscript/Byte2;->x:B

    sub-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte2;->x:B

    .line 137
    iget-byte p0, p0, Landroid/renderscript/Byte2;->y:B

    sub-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/renderscript/Byte2;->y:B

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Byte2;Landroid/renderscript/Byte2;)Landroid/renderscript/Byte2;
    .locals 3

    .line 110
    new-instance v0, Landroid/renderscript/Byte2;

    invoke-direct {v0}, Landroid/renderscript/Byte2;-><init>()V

    .line 111
    iget-byte v1, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v2, p1, Landroid/renderscript/Byte2;->x:B

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte2;->x:B

    .line 112
    iget-byte p0, p0, Landroid/renderscript/Byte2;->y:B

    iget-byte p1, p1, Landroid/renderscript/Byte2;->y:B

    sub-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/renderscript/Byte2;->y:B

    return-object v0
.end method


# virtual methods
.method public add(B)V
    .locals 1

    .line 73
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    add-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    .line 74
    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    add-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte2;->y:B

    return-void
.end method

.method public add(Landroid/renderscript/Byte2;)V
    .locals 2

    .line 48
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte2;->x:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    .line 49
    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    iget-byte p1, p1, Landroid/renderscript/Byte2;->y:B

    add-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte2;->y:B

    return-void
.end method

.method public addAt(IB)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 372
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index: i"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 369
    :pswitch_0
    iget-byte p1, p0, Landroid/renderscript/Byte2;->y:B

    add-int/2addr p1, p2

    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/renderscript/Byte2;->y:B

    return-void

    .line 366
    :pswitch_1
    iget-byte p1, p0, Landroid/renderscript/Byte2;->x:B

    add-int/2addr p1, p2

    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/renderscript/Byte2;->x:B

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public addMultiple(Landroid/renderscript/Byte2;B)V
    .locals 2

    .line 287
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte2;->x:B

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    .line 288
    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    iget-byte p1, p1, Landroid/renderscript/Byte2;->y:B

    mul-int/2addr p1, p2

    add-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte2;->y:B

    return-void
.end method

.method public copyTo([BI)V
    .locals 1

    .line 383
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    .line 384
    iget-byte p0, p0, Landroid/renderscript/Byte2;->y:B

    aput-byte p0, p1, p2

    return-void
.end method

.method public div(B)V
    .locals 1

    .line 223
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    div-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    .line 224
    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    div-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte2;->y:B

    return-void
.end method

.method public div(Landroid/renderscript/Byte2;)V
    .locals 2

    .line 198
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte2;->x:B

    div-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    .line 199
    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    iget-byte p1, p1, Landroid/renderscript/Byte2;->y:B

    div-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte2;->y:B

    return-void
.end method

.method public dotProduct(Landroid/renderscript/Byte2;)B
    .locals 2

    .line 266
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte2;->x:B

    mul-int/2addr v0, v1

    iget-byte p0, p0, Landroid/renderscript/Byte2;->y:B

    iget-byte p1, p1, Landroid/renderscript/Byte2;->y:B

    mul-int/2addr p0, p1

    add-int/2addr v0, p0

    int-to-byte p0, v0

    return p0
.end method

.method public elementSum()B
    .locals 1

    .line 318
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte p0, p0, Landroid/renderscript/Byte2;->y:B

    add-int/2addr v0, p0

    int-to-byte p0, v0

    return p0
.end method

.method public get(I)B
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 334
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index: i"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 332
    :pswitch_0
    iget-byte p0, p0, Landroid/renderscript/Byte2;->y:B

    return p0

    .line 330
    :pswitch_1
    iget-byte p0, p0, Landroid/renderscript/Byte2;->x:B

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public length()B
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public mul(B)V
    .locals 1

    .line 173
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    mul-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    .line 174
    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    mul-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte2;->y:B

    return-void
.end method

.method public mul(Landroid/renderscript/Byte2;)V
    .locals 2

    .line 148
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte2;->x:B

    mul-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    .line 149
    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    iget-byte p1, p1, Landroid/renderscript/Byte2;->y:B

    mul-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte2;->y:B

    return-void
.end method

.method public negate()V
    .locals 1

    .line 255
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    neg-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    .line 256
    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    neg-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    return-void
.end method

.method public set(Landroid/renderscript/Byte2;)V
    .locals 1

    .line 297
    iget-byte v0, p1, Landroid/renderscript/Byte2;->x:B

    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    .line 298
    iget-byte p1, p1, Landroid/renderscript/Byte2;->y:B

    iput-byte p1, p0, Landroid/renderscript/Byte2;->y:B

    return-void
.end method

.method public setAt(IB)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 353
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index: i"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 350
    :pswitch_0
    iput-byte p2, p0, Landroid/renderscript/Byte2;->y:B

    return-void

    .line 347
    :pswitch_1
    iput-byte p2, p0, Landroid/renderscript/Byte2;->x:B

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setValues(BB)V
    .locals 0

    .line 308
    iput-byte p1, p0, Landroid/renderscript/Byte2;->x:B

    .line 309
    iput-byte p2, p0, Landroid/renderscript/Byte2;->y:B

    return-void
.end method

.method public sub(B)V
    .locals 1

    .line 123
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    sub-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    .line 124
    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    sub-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte2;->y:B

    return-void
.end method

.method public sub(Landroid/renderscript/Byte2;)V
    .locals 2

    .line 98
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte2;->x:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    .line 99
    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    iget-byte p1, p1, Landroid/renderscript/Byte2;->y:B

    sub-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte2;->y:B

    return-void
.end method
