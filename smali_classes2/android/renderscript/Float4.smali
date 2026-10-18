.class public Landroid/renderscript/Float4;
.super Ljava/lang/Object;
.source "Float4.java"


# instance fields
.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Landroid/renderscript/Float4;->x:F

    .line 41
    iput p2, p0, Landroid/renderscript/Float4;->y:F

    .line 42
    iput p3, p0, Landroid/renderscript/Float4;->z:F

    .line 43
    iput p4, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Float4;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iget v0, p1, Landroid/renderscript/Float4;->x:F

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    .line 34
    iget v0, p1, Landroid/renderscript/Float4;->y:F

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    .line 35
    iget v0, p1, Landroid/renderscript/Float4;->z:F

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    .line 36
    iget p1, p1, Landroid/renderscript/Float4;->w:F

    iput p1, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method

.method public static add(Landroid/renderscript/Float4;F)Landroid/renderscript/Float4;
    .locals 2

    .line 95
    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    .line 96
    iget v1, p0, Landroid/renderscript/Float4;->x:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->x:F

    .line 97
    iget v1, p0, Landroid/renderscript/Float4;->y:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->y:F

    .line 98
    iget v1, p0, Landroid/renderscript/Float4;->z:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->z:F

    .line 99
    iget p0, p0, Landroid/renderscript/Float4;->w:F

    add-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float4;->w:F

    return-object v0
.end method

.method public static add(Landroid/renderscript/Float4;Landroid/renderscript/Float4;)Landroid/renderscript/Float4;
    .locals 3

    .line 54
    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    .line 55
    iget v1, p0, Landroid/renderscript/Float4;->x:F

    iget v2, p1, Landroid/renderscript/Float4;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->x:F

    .line 56
    iget v1, p0, Landroid/renderscript/Float4;->y:F

    iget v2, p1, Landroid/renderscript/Float4;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->y:F

    .line 57
    iget v1, p0, Landroid/renderscript/Float4;->z:F

    iget v2, p1, Landroid/renderscript/Float4;->z:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->z:F

    .line 58
    iget p0, p0, Landroid/renderscript/Float4;->w:F

    iget p1, p1, Landroid/renderscript/Float4;->w:F

    add-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float4;->w:F

    return-object v0
.end method

.method public static div(Landroid/renderscript/Float4;F)Landroid/renderscript/Float4;
    .locals 2

    .line 252
    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    .line 253
    iget v1, p0, Landroid/renderscript/Float4;->x:F

    div-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->x:F

    .line 254
    iget v1, p0, Landroid/renderscript/Float4;->y:F

    div-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->y:F

    .line 255
    iget v1, p0, Landroid/renderscript/Float4;->z:F

    div-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->z:F

    .line 256
    iget p0, p0, Landroid/renderscript/Float4;->w:F

    div-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float4;->w:F

    return-object v0
.end method

.method public static div(Landroid/renderscript/Float4;Landroid/renderscript/Float4;)Landroid/renderscript/Float4;
    .locals 3

    .line 269
    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    .line 270
    iget v1, p0, Landroid/renderscript/Float4;->x:F

    iget v2, p1, Landroid/renderscript/Float4;->x:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->x:F

    .line 271
    iget v1, p0, Landroid/renderscript/Float4;->y:F

    iget v2, p1, Landroid/renderscript/Float4;->y:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->y:F

    .line 272
    iget v1, p0, Landroid/renderscript/Float4;->z:F

    iget v2, p1, Landroid/renderscript/Float4;->z:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->z:F

    .line 273
    iget p0, p0, Landroid/renderscript/Float4;->w:F

    iget p1, p1, Landroid/renderscript/Float4;->w:F

    div-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float4;->w:F

    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Float4;Landroid/renderscript/Float4;)F
    .locals 3

    .line 296
    iget v0, p1, Landroid/renderscript/Float4;->x:F

    iget v1, p0, Landroid/renderscript/Float4;->x:F

    mul-float/2addr v0, v1

    iget v1, p1, Landroid/renderscript/Float4;->y:F

    iget v2, p0, Landroid/renderscript/Float4;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Landroid/renderscript/Float4;->z:F

    iget v2, p0, Landroid/renderscript/Float4;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p1, p1, Landroid/renderscript/Float4;->w:F

    iget p0, p0, Landroid/renderscript/Float4;->w:F

    mul-float/2addr p1, p0

    add-float/2addr v0, p1

    return v0
.end method

.method public static mul(Landroid/renderscript/Float4;F)Landroid/renderscript/Float4;
    .locals 2

    .line 211
    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    .line 212
    iget v1, p0, Landroid/renderscript/Float4;->x:F

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->x:F

    .line 213
    iget v1, p0, Landroid/renderscript/Float4;->y:F

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->y:F

    .line 214
    iget v1, p0, Landroid/renderscript/Float4;->z:F

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->z:F

    .line 215
    iget p0, p0, Landroid/renderscript/Float4;->w:F

    mul-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float4;->w:F

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Float4;Landroid/renderscript/Float4;)Landroid/renderscript/Float4;
    .locals 3

    .line 194
    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    .line 195
    iget v1, p0, Landroid/renderscript/Float4;->x:F

    iget v2, p1, Landroid/renderscript/Float4;->x:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->x:F

    .line 196
    iget v1, p0, Landroid/renderscript/Float4;->y:F

    iget v2, p1, Landroid/renderscript/Float4;->y:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->y:F

    .line 197
    iget v1, p0, Landroid/renderscript/Float4;->z:F

    iget v2, p1, Landroid/renderscript/Float4;->z:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->z:F

    .line 198
    iget p0, p0, Landroid/renderscript/Float4;->w:F

    iget p1, p1, Landroid/renderscript/Float4;->w:F

    mul-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float4;->w:F

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Float4;F)Landroid/renderscript/Float4;
    .locals 2

    .line 136
    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    .line 137
    iget v1, p0, Landroid/renderscript/Float4;->x:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->x:F

    .line 138
    iget v1, p0, Landroid/renderscript/Float4;->y:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->y:F

    .line 139
    iget v1, p0, Landroid/renderscript/Float4;->z:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->z:F

    .line 140
    iget p0, p0, Landroid/renderscript/Float4;->w:F

    sub-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float4;->w:F

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Float4;Landroid/renderscript/Float4;)Landroid/renderscript/Float4;
    .locals 3

    .line 153
    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    .line 154
    iget v1, p0, Landroid/renderscript/Float4;->x:F

    iget v2, p1, Landroid/renderscript/Float4;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->x:F

    .line 155
    iget v1, p0, Landroid/renderscript/Float4;->y:F

    iget v2, p1, Landroid/renderscript/Float4;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->y:F

    .line 156
    iget v1, p0, Landroid/renderscript/Float4;->z:F

    iget v2, p1, Landroid/renderscript/Float4;->z:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->z:F

    .line 157
    iget p0, p0, Landroid/renderscript/Float4;->w:F

    iget p1, p1, Landroid/renderscript/Float4;->w:F

    sub-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float4;->w:F

    return-object v0
.end method


# virtual methods
.method public add(F)V
    .locals 1

    .line 81
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    .line 82
    iget v0, p0, Landroid/renderscript/Float4;->y:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    .line 83
    iget v0, p0, Landroid/renderscript/Float4;->z:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    .line 84
    iget v0, p0, Landroid/renderscript/Float4;->w:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method

.method public add(Landroid/renderscript/Float4;)V
    .locals 2

    .line 69
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    iget v1, p1, Landroid/renderscript/Float4;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    .line 70
    iget v0, p0, Landroid/renderscript/Float4;->y:F

    iget v1, p1, Landroid/renderscript/Float4;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    .line 71
    iget v0, p0, Landroid/renderscript/Float4;->z:F

    iget v1, p1, Landroid/renderscript/Float4;->z:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    .line 72
    iget v0, p0, Landroid/renderscript/Float4;->w:F

    iget p1, p1, Landroid/renderscript/Float4;->w:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method

.method public addAt(IF)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 419
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index: i"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 416
    :pswitch_0
    iget p1, p0, Landroid/renderscript/Float4;->w:F

    add-float/2addr p1, p2

    iput p1, p0, Landroid/renderscript/Float4;->w:F

    return-void

    .line 413
    :pswitch_1
    iget p1, p0, Landroid/renderscript/Float4;->z:F

    add-float/2addr p1, p2

    iput p1, p0, Landroid/renderscript/Float4;->z:F

    return-void

    .line 410
    :pswitch_2
    iget p1, p0, Landroid/renderscript/Float4;->y:F

    add-float/2addr p1, p2

    iput p1, p0, Landroid/renderscript/Float4;->y:F

    return-void

    .line 407
    :pswitch_3
    iget p1, p0, Landroid/renderscript/Float4;->x:F

    add-float/2addr p1, p2

    iput p1, p0, Landroid/renderscript/Float4;->x:F

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

.method public addMultiple(Landroid/renderscript/Float4;F)V
    .locals 2

    .line 306
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    iget v1, p1, Landroid/renderscript/Float4;->x:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    .line 307
    iget v0, p0, Landroid/renderscript/Float4;->y:F

    iget v1, p1, Landroid/renderscript/Float4;->y:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    .line 308
    iget v0, p0, Landroid/renderscript/Float4;->z:F

    iget v1, p1, Landroid/renderscript/Float4;->z:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    .line 309
    iget v0, p0, Landroid/renderscript/Float4;->w:F

    iget p1, p1, Landroid/renderscript/Float4;->w:F

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method

.method public copyTo([FI)V
    .locals 2

    .line 445
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    aput v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    .line 446
    iget v1, p0, Landroid/renderscript/Float4;->y:F

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    .line 447
    iget v1, p0, Landroid/renderscript/Float4;->z:F

    aput v1, p1, v0

    add-int/lit8 p2, p2, 0x3

    .line 448
    iget p0, p0, Landroid/renderscript/Float4;->w:F

    aput p0, p1, p2

    return-void
.end method

.method public div(F)V
    .locals 1

    .line 238
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    .line 239
    iget v0, p0, Landroid/renderscript/Float4;->y:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    .line 240
    iget v0, p0, Landroid/renderscript/Float4;->z:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    .line 241
    iget v0, p0, Landroid/renderscript/Float4;->w:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method

.method public div(Landroid/renderscript/Float4;)V
    .locals 2

    .line 226
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    iget v1, p1, Landroid/renderscript/Float4;->x:F

    div-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    .line 227
    iget v0, p0, Landroid/renderscript/Float4;->y:F

    iget v1, p1, Landroid/renderscript/Float4;->y:F

    div-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    .line 228
    iget v0, p0, Landroid/renderscript/Float4;->z:F

    iget v1, p1, Landroid/renderscript/Float4;->z:F

    div-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    .line 229
    iget v0, p0, Landroid/renderscript/Float4;->w:F

    iget p1, p1, Landroid/renderscript/Float4;->w:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method

.method public dotProduct(Landroid/renderscript/Float4;)F
    .locals 3

    .line 285
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    iget v1, p1, Landroid/renderscript/Float4;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Float4;->y:F

    iget v2, p1, Landroid/renderscript/Float4;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Float4;->z:F

    iget v2, p1, Landroid/renderscript/Float4;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p0, p0, Landroid/renderscript/Float4;->w:F

    iget p1, p1, Landroid/renderscript/Float4;->w:F

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method public elementSum()F
    .locals 2

    .line 349
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    iget v1, p0, Landroid/renderscript/Float4;->y:F

    add-float/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Float4;->z:F

    add-float/2addr v0, v1

    iget p0, p0, Landroid/renderscript/Float4;->w:F

    add-float/2addr v0, p0

    return v0
.end method

.method public get(I)F
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 369
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index: i"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 367
    :pswitch_0
    iget p0, p0, Landroid/renderscript/Float4;->w:F

    return p0

    .line 365
    :pswitch_1
    iget p0, p0, Landroid/renderscript/Float4;->z:F

    return p0

    .line 363
    :pswitch_2
    iget p0, p0, Landroid/renderscript/Float4;->y:F

    return p0

    .line 361
    :pswitch_3
    iget p0, p0, Landroid/renderscript/Float4;->x:F

    return p0

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

.method public mul(F)V
    .locals 1

    .line 180
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    .line 181
    iget v0, p0, Landroid/renderscript/Float4;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    .line 182
    iget v0, p0, Landroid/renderscript/Float4;->z:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    .line 183
    iget v0, p0, Landroid/renderscript/Float4;->w:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method

.method public mul(Landroid/renderscript/Float4;)V
    .locals 2

    .line 168
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    iget v1, p1, Landroid/renderscript/Float4;->x:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    .line 169
    iget v0, p0, Landroid/renderscript/Float4;->y:F

    iget v1, p1, Landroid/renderscript/Float4;->y:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    .line 170
    iget v0, p0, Landroid/renderscript/Float4;->z:F

    iget v1, p1, Landroid/renderscript/Float4;->z:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    .line 171
    iget v0, p0, Landroid/renderscript/Float4;->w:F

    iget p1, p1, Landroid/renderscript/Float4;->w:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method

.method public negate()V
    .locals 1

    .line 328
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    neg-float v0, v0

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    .line 329
    iget v0, p0, Landroid/renderscript/Float4;->y:F

    neg-float v0, v0

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    .line 330
    iget v0, p0, Landroid/renderscript/Float4;->z:F

    neg-float v0, v0

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    .line 331
    iget v0, p0, Landroid/renderscript/Float4;->w:F

    neg-float v0, v0

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method

.method public set(Landroid/renderscript/Float4;)V
    .locals 1

    .line 318
    iget v0, p1, Landroid/renderscript/Float4;->x:F

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    .line 319
    iget v0, p1, Landroid/renderscript/Float4;->y:F

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    .line 320
    iget v0, p1, Landroid/renderscript/Float4;->z:F

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    .line 321
    iget p1, p1, Landroid/renderscript/Float4;->w:F

    iput p1, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method

.method public setAt(IF)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 394
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index: i"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 391
    :pswitch_0
    iput p2, p0, Landroid/renderscript/Float4;->w:F

    return-void

    .line 388
    :pswitch_1
    iput p2, p0, Landroid/renderscript/Float4;->z:F

    return-void

    .line 385
    :pswitch_2
    iput p2, p0, Landroid/renderscript/Float4;->y:F

    return-void

    .line 382
    :pswitch_3
    iput p2, p0, Landroid/renderscript/Float4;->x:F

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

.method public setValues(FFFF)V
    .locals 0

    .line 432
    iput p1, p0, Landroid/renderscript/Float4;->x:F

    .line 433
    iput p2, p0, Landroid/renderscript/Float4;->y:F

    .line 434
    iput p3, p0, Landroid/renderscript/Float4;->z:F

    .line 435
    iput p4, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method

.method public sub(F)V
    .locals 1

    .line 122
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    .line 123
    iget v0, p0, Landroid/renderscript/Float4;->y:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    .line 124
    iget v0, p0, Landroid/renderscript/Float4;->z:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    .line 125
    iget v0, p0, Landroid/renderscript/Float4;->w:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method

.method public sub(Landroid/renderscript/Float4;)V
    .locals 2

    .line 110
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    iget v1, p1, Landroid/renderscript/Float4;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    .line 111
    iget v0, p0, Landroid/renderscript/Float4;->y:F

    iget v1, p1, Landroid/renderscript/Float4;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    .line 112
    iget v0, p0, Landroid/renderscript/Float4;->z:F

    iget v1, p1, Landroid/renderscript/Float4;->z:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    .line 113
    iget v0, p0, Landroid/renderscript/Float4;->w:F

    iget p1, p1, Landroid/renderscript/Float4;->w:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method
