.class public Landroid/renderscript/Float3;
.super Ljava/lang/Object;
.source "Float3.java"


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Landroid/renderscript/Float3;->x:F

    .line 39
    iput p2, p0, Landroid/renderscript/Float3;->y:F

    .line 40
    iput p3, p0, Landroid/renderscript/Float3;->z:F

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Float3;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iget v0, p1, Landroid/renderscript/Float3;->x:F

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    .line 33
    iget v0, p1, Landroid/renderscript/Float3;->y:F

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    .line 34
    iget p1, p1, Landroid/renderscript/Float3;->z:F

    iput p1, p0, Landroid/renderscript/Float3;->z:F

    return-void
.end method

.method public static add(Landroid/renderscript/Float3;F)Landroid/renderscript/Float3;
    .locals 2

    .line 89
    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    .line 90
    iget v1, p0, Landroid/renderscript/Float3;->x:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->x:F

    .line 91
    iget v1, p0, Landroid/renderscript/Float3;->y:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->y:F

    .line 92
    iget p0, p0, Landroid/renderscript/Float3;->z:F

    add-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float3;->z:F

    return-object v0
.end method

.method public static add(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)Landroid/renderscript/Float3;
    .locals 3

    .line 51
    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    .line 52
    iget v1, p0, Landroid/renderscript/Float3;->x:F

    iget v2, p1, Landroid/renderscript/Float3;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->x:F

    .line 53
    iget v1, p0, Landroid/renderscript/Float3;->y:F

    iget v2, p1, Landroid/renderscript/Float3;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->y:F

    .line 54
    iget p0, p0, Landroid/renderscript/Float3;->z:F

    iget p1, p1, Landroid/renderscript/Float3;->z:F

    add-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float3;->z:F

    return-object v0
.end method

.method public static div(Landroid/renderscript/Float3;F)Landroid/renderscript/Float3;
    .locals 2

    .line 251
    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    .line 252
    iget v1, p0, Landroid/renderscript/Float3;->x:F

    div-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->x:F

    .line 253
    iget v1, p0, Landroid/renderscript/Float3;->y:F

    div-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->y:F

    .line 254
    iget p0, p0, Landroid/renderscript/Float3;->z:F

    div-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float3;->z:F

    return-object v0
.end method

.method public static div(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)Landroid/renderscript/Float3;
    .locals 3

    .line 224
    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    .line 225
    iget v1, p0, Landroid/renderscript/Float3;->x:F

    iget v2, p1, Landroid/renderscript/Float3;->x:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->x:F

    .line 226
    iget v1, p0, Landroid/renderscript/Float3;->y:F

    iget v2, p1, Landroid/renderscript/Float3;->y:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->y:F

    .line 227
    iget p0, p0, Landroid/renderscript/Float3;->z:F

    iget p1, p1, Landroid/renderscript/Float3;->z:F

    div-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float3;->z:F

    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)Ljava/lang/Float;
    .locals 4

    .line 277
    new-instance v0, Ljava/lang/Float;

    iget v1, p1, Landroid/renderscript/Float3;->x:F

    iget v2, p0, Landroid/renderscript/Float3;->x:F

    mul-float/2addr v1, v2

    iget v2, p1, Landroid/renderscript/Float3;->y:F

    iget v3, p0, Landroid/renderscript/Float3;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget p1, p1, Landroid/renderscript/Float3;->z:F

    iget p0, p0, Landroid/renderscript/Float3;->z:F

    mul-float/2addr p1, p0

    add-float/2addr v1, p1

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Float3;F)Landroid/renderscript/Float3;
    .locals 2

    .line 197
    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    .line 198
    iget v1, p0, Landroid/renderscript/Float3;->x:F

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->x:F

    .line 199
    iget v1, p0, Landroid/renderscript/Float3;->y:F

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->y:F

    .line 200
    iget p0, p0, Landroid/renderscript/Float3;->z:F

    mul-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float3;->z:F

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)Landroid/renderscript/Float3;
    .locals 3

    .line 170
    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    .line 171
    iget v1, p0, Landroid/renderscript/Float3;->x:F

    iget v2, p1, Landroid/renderscript/Float3;->x:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->x:F

    .line 172
    iget v1, p0, Landroid/renderscript/Float3;->y:F

    iget v2, p1, Landroid/renderscript/Float3;->y:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->y:F

    .line 173
    iget p0, p0, Landroid/renderscript/Float3;->z:F

    iget p1, p1, Landroid/renderscript/Float3;->z:F

    mul-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float3;->z:F

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Float3;F)Landroid/renderscript/Float3;
    .locals 2

    .line 143
    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    .line 144
    iget v1, p0, Landroid/renderscript/Float3;->x:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->x:F

    .line 145
    iget v1, p0, Landroid/renderscript/Float3;->y:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->y:F

    .line 146
    iget p0, p0, Landroid/renderscript/Float3;->z:F

    sub-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float3;->z:F

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)Landroid/renderscript/Float3;
    .locals 3

    .line 116
    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    .line 117
    iget v1, p0, Landroid/renderscript/Float3;->x:F

    iget v2, p1, Landroid/renderscript/Float3;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->x:F

    .line 118
    iget v1, p0, Landroid/renderscript/Float3;->y:F

    iget v2, p1, Landroid/renderscript/Float3;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->y:F

    .line 119
    iget p0, p0, Landroid/renderscript/Float3;->z:F

    iget p1, p1, Landroid/renderscript/Float3;->z:F

    sub-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float3;->z:F

    return-object v0
.end method


# virtual methods
.method public add(F)V
    .locals 1

    .line 76
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    .line 77
    iget v0, p0, Landroid/renderscript/Float3;->y:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    .line 78
    iget v0, p0, Landroid/renderscript/Float3;->z:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    return-void
.end method

.method public add(Landroid/renderscript/Float3;)V
    .locals 2

    .line 65
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    iget v1, p1, Landroid/renderscript/Float3;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    .line 66
    iget v0, p0, Landroid/renderscript/Float3;->y:F

    iget v1, p1, Landroid/renderscript/Float3;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    .line 67
    iget v0, p0, Landroid/renderscript/Float3;->z:F

    iget p1, p1, Landroid/renderscript/Float3;->z:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    return-void
.end method

.method public addAt(IF)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 389
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index: i"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 386
    :pswitch_0
    iget p1, p0, Landroid/renderscript/Float3;->z:F

    add-float/2addr p1, p2

    iput p1, p0, Landroid/renderscript/Float3;->z:F

    return-void

    .line 383
    :pswitch_1
    iget p1, p0, Landroid/renderscript/Float3;->y:F

    add-float/2addr p1, p2

    iput p1, p0, Landroid/renderscript/Float3;->y:F

    return-void

    .line 380
    :pswitch_2
    iget p1, p0, Landroid/renderscript/Float3;->x:F

    add-float/2addr p1, p2

    iput p1, p0, Landroid/renderscript/Float3;->x:F

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public addMultiple(Landroid/renderscript/Float3;F)V
    .locals 2

    .line 287
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    iget v1, p1, Landroid/renderscript/Float3;->x:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    .line 288
    iget v0, p0, Landroid/renderscript/Float3;->y:F

    iget v1, p1, Landroid/renderscript/Float3;->y:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    .line 289
    iget v0, p0, Landroid/renderscript/Float3;->z:F

    iget p1, p1, Landroid/renderscript/Float3;->z:F

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    return-void
.end method

.method public copyTo([FI)V
    .locals 2

    .line 413
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    aput v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    .line 414
    iget v1, p0, Landroid/renderscript/Float3;->y:F

    aput v1, p1, v0

    add-int/lit8 p2, p2, 0x2

    .line 415
    iget p0, p0, Landroid/renderscript/Float3;->z:F

    aput p0, p1, p2

    return-void
.end method

.method public div(F)V
    .locals 1

    .line 238
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    .line 239
    iget v0, p0, Landroid/renderscript/Float3;->y:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    .line 240
    iget v0, p0, Landroid/renderscript/Float3;->z:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    return-void
.end method

.method public div(Landroid/renderscript/Float3;)V
    .locals 2

    .line 211
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    iget v1, p1, Landroid/renderscript/Float3;->x:F

    div-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    .line 212
    iget v0, p0, Landroid/renderscript/Float3;->y:F

    iget v1, p1, Landroid/renderscript/Float3;->y:F

    div-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    .line 213
    iget v0, p0, Landroid/renderscript/Float3;->z:F

    iget p1, p1, Landroid/renderscript/Float3;->z:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    return-void
.end method

.method public dotProduct(Landroid/renderscript/Float3;)Ljava/lang/Float;
    .locals 4

    .line 266
    new-instance v0, Ljava/lang/Float;

    iget v1, p0, Landroid/renderscript/Float3;->x:F

    iget v2, p1, Landroid/renderscript/Float3;->x:F

    mul-float/2addr v1, v2

    iget v2, p0, Landroid/renderscript/Float3;->y:F

    iget v3, p1, Landroid/renderscript/Float3;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget p0, p0, Landroid/renderscript/Float3;->z:F

    iget p1, p1, Landroid/renderscript/Float3;->z:F

    mul-float/2addr p0, p1

    add-float/2addr v1, p0

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    return-object v0
.end method

.method public elementSum()Ljava/lang/Float;
    .locals 3

    .line 327
    new-instance v0, Ljava/lang/Float;

    iget v1, p0, Landroid/renderscript/Float3;->x:F

    iget v2, p0, Landroid/renderscript/Float3;->y:F

    add-float/2addr v1, v2

    iget p0, p0, Landroid/renderscript/Float3;->z:F

    add-float/2addr v1, p0

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    return-object v0
.end method

.method public get(I)F
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 345
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index: i"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 343
    :pswitch_0
    iget p0, p0, Landroid/renderscript/Float3;->z:F

    return p0

    .line 341
    :pswitch_1
    iget p0, p0, Landroid/renderscript/Float3;->y:F

    return p0

    .line 339
    :pswitch_2
    iget p0, p0, Landroid/renderscript/Float3;->x:F

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

.method public mul(F)V
    .locals 1

    .line 184
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    .line 185
    iget v0, p0, Landroid/renderscript/Float3;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    .line 186
    iget v0, p0, Landroid/renderscript/Float3;->z:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    return-void
.end method

.method public mul(Landroid/renderscript/Float3;)V
    .locals 2

    .line 157
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    iget v1, p1, Landroid/renderscript/Float3;->x:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    .line 158
    iget v0, p0, Landroid/renderscript/Float3;->y:F

    iget v1, p1, Landroid/renderscript/Float3;->y:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    .line 159
    iget v0, p0, Landroid/renderscript/Float3;->z:F

    iget p1, p1, Landroid/renderscript/Float3;->z:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    return-void
.end method

.method public negate()V
    .locals 1

    .line 307
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    neg-float v0, v0

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    .line 308
    iget v0, p0, Landroid/renderscript/Float3;->y:F

    neg-float v0, v0

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    .line 309
    iget v0, p0, Landroid/renderscript/Float3;->z:F

    neg-float v0, v0

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    return-void
.end method

.method public set(Landroid/renderscript/Float3;)V
    .locals 1

    .line 298
    iget v0, p1, Landroid/renderscript/Float3;->x:F

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    .line 299
    iget v0, p1, Landroid/renderscript/Float3;->y:F

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    .line 300
    iget p1, p1, Landroid/renderscript/Float3;->z:F

    iput p1, p0, Landroid/renderscript/Float3;->z:F

    return-void
.end method

.method public setAt(IF)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 367
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index: i"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 364
    :pswitch_0
    iput p2, p0, Landroid/renderscript/Float3;->z:F

    return-void

    .line 361
    :pswitch_1
    iput p2, p0, Landroid/renderscript/Float3;->y:F

    return-void

    .line 358
    :pswitch_2
    iput p2, p0, Landroid/renderscript/Float3;->x:F

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setValues(FFF)V
    .locals 0

    .line 401
    iput p1, p0, Landroid/renderscript/Float3;->x:F

    .line 402
    iput p2, p0, Landroid/renderscript/Float3;->y:F

    .line 403
    iput p3, p0, Landroid/renderscript/Float3;->z:F

    return-void
.end method

.method public sub(F)V
    .locals 1

    .line 130
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    .line 131
    iget v0, p0, Landroid/renderscript/Float3;->y:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    .line 132
    iget v0, p0, Landroid/renderscript/Float3;->z:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    return-void
.end method

.method public sub(Landroid/renderscript/Float3;)V
    .locals 2

    .line 103
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    iget v1, p1, Landroid/renderscript/Float3;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    .line 104
    iget v0, p0, Landroid/renderscript/Float3;->y:F

    iget v1, p1, Landroid/renderscript/Float3;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    .line 105
    iget v0, p0, Landroid/renderscript/Float3;->z:F

    iget p1, p1, Landroid/renderscript/Float3;->z:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    return-void
.end method
