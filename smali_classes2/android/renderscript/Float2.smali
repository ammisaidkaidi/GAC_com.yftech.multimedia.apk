.class public Landroid/renderscript/Float2;
.super Ljava/lang/Object;
.source "Float2.java"


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Landroid/renderscript/Float2;->x:F

    .line 37
    iput p2, p0, Landroid/renderscript/Float2;->y:F

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Float2;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iget v0, p1, Landroid/renderscript/Float2;->x:F

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 32
    iget p1, p1, Landroid/renderscript/Float2;->y:F

    iput p1, p0, Landroid/renderscript/Float2;->y:F

    return-void
.end method

.method public static add(Landroid/renderscript/Float2;F)Landroid/renderscript/Float2;
    .locals 2

    .line 83
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    .line 84
    iget v1, p0, Landroid/renderscript/Float2;->x:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    .line 85
    iget p0, p0, Landroid/renderscript/Float2;->y:F

    add-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float2;->y:F

    return-object v0
.end method

.method public static add(Landroid/renderscript/Float2;Landroid/renderscript/Float2;)Landroid/renderscript/Float2;
    .locals 3

    .line 48
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    .line 49
    iget v1, p0, Landroid/renderscript/Float2;->x:F

    iget v2, p1, Landroid/renderscript/Float2;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    .line 50
    iget p0, p0, Landroid/renderscript/Float2;->y:F

    iget p1, p1, Landroid/renderscript/Float2;->y:F

    add-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float2;->y:F

    return-object v0
.end method

.method public static div(Landroid/renderscript/Float2;F)Landroid/renderscript/Float2;
    .locals 2

    .line 233
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    .line 234
    iget v1, p0, Landroid/renderscript/Float2;->x:F

    div-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    .line 235
    iget p0, p0, Landroid/renderscript/Float2;->y:F

    div-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float2;->y:F

    return-object v0
.end method

.method public static div(Landroid/renderscript/Float2;Landroid/renderscript/Float2;)Landroid/renderscript/Float2;
    .locals 3

    .line 208
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    .line 209
    iget v1, p0, Landroid/renderscript/Float2;->x:F

    iget v2, p1, Landroid/renderscript/Float2;->x:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    .line 210
    iget p0, p0, Landroid/renderscript/Float2;->y:F

    iget p1, p1, Landroid/renderscript/Float2;->y:F

    div-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float2;->y:F

    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Float2;Landroid/renderscript/Float2;)F
    .locals 2

    .line 258
    iget v0, p1, Landroid/renderscript/Float2;->x:F

    iget v1, p0, Landroid/renderscript/Float2;->x:F

    mul-float/2addr v0, v1

    iget p1, p1, Landroid/renderscript/Float2;->y:F

    iget p0, p0, Landroid/renderscript/Float2;->y:F

    mul-float/2addr p1, p0

    add-float/2addr v0, p1

    return v0
.end method

.method public static mul(Landroid/renderscript/Float2;F)Landroid/renderscript/Float2;
    .locals 2

    .line 183
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    .line 184
    iget v1, p0, Landroid/renderscript/Float2;->x:F

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    .line 185
    iget p0, p0, Landroid/renderscript/Float2;->y:F

    mul-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float2;->y:F

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Float2;Landroid/renderscript/Float2;)Landroid/renderscript/Float2;
    .locals 3

    .line 158
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    .line 159
    iget v1, p0, Landroid/renderscript/Float2;->x:F

    iget v2, p1, Landroid/renderscript/Float2;->x:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    .line 160
    iget p0, p0, Landroid/renderscript/Float2;->y:F

    iget p1, p1, Landroid/renderscript/Float2;->y:F

    mul-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float2;->y:F

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Float2;F)Landroid/renderscript/Float2;
    .locals 2

    .line 133
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    .line 134
    iget v1, p0, Landroid/renderscript/Float2;->x:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    .line 135
    iget p0, p0, Landroid/renderscript/Float2;->y:F

    sub-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float2;->y:F

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Float2;Landroid/renderscript/Float2;)Landroid/renderscript/Float2;
    .locals 3

    .line 108
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    .line 109
    iget v1, p0, Landroid/renderscript/Float2;->x:F

    iget v2, p1, Landroid/renderscript/Float2;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    .line 110
    iget p0, p0, Landroid/renderscript/Float2;->y:F

    iget p1, p1, Landroid/renderscript/Float2;->y:F

    sub-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float2;->y:F

    return-object v0
.end method


# virtual methods
.method public add(F)V
    .locals 1

    .line 71
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 72
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    return-void
.end method

.method public add(Landroid/renderscript/Float2;)V
    .locals 2

    .line 61
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    iget v1, p1, Landroid/renderscript/Float2;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 62
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    iget p1, p1, Landroid/renderscript/Float2;->y:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    return-void
.end method

.method public addAt(IF)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 359
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index: i"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 356
    :pswitch_0
    iget p1, p0, Landroid/renderscript/Float2;->y:F

    add-float/2addr p1, p2

    iput p1, p0, Landroid/renderscript/Float2;->y:F

    return-void

    .line 353
    :pswitch_1
    iget p1, p0, Landroid/renderscript/Float2;->x:F

    add-float/2addr p1, p2

    iput p1, p0, Landroid/renderscript/Float2;->x:F

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public addMultiple(Landroid/renderscript/Float2;F)V
    .locals 2

    .line 268
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    iget v1, p1, Landroid/renderscript/Float2;->x:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 269
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    iget p1, p1, Landroid/renderscript/Float2;->y:F

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    return-void
.end method

.method public copyTo([FI)V
    .locals 1

    .line 381
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    aput v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    .line 382
    iget p0, p0, Landroid/renderscript/Float2;->y:F

    aput p0, p1, p2

    return-void
.end method

.method public div(F)V
    .locals 1

    .line 221
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 222
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    return-void
.end method

.method public div(Landroid/renderscript/Float2;)V
    .locals 2

    .line 196
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    iget v1, p1, Landroid/renderscript/Float2;->x:F

    div-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 197
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    iget p1, p1, Landroid/renderscript/Float2;->y:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    return-void
.end method

.method public dotProduct(Landroid/renderscript/Float2;)F
    .locals 2

    .line 247
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    iget v1, p1, Landroid/renderscript/Float2;->x:F

    mul-float/2addr v0, v1

    iget p0, p0, Landroid/renderscript/Float2;->y:F

    iget p1, p1, Landroid/renderscript/Float2;->y:F

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method public elementSum()F
    .locals 1

    .line 305
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    iget p0, p0, Landroid/renderscript/Float2;->y:F

    add-float/2addr v0, p0

    return v0
.end method

.method public get(I)F
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 321
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index: i"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 319
    :pswitch_0
    iget p0, p0, Landroid/renderscript/Float2;->y:F

    return p0

    .line 317
    :pswitch_1
    iget p0, p0, Landroid/renderscript/Float2;->x:F

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

.method public mul(F)V
    .locals 1

    .line 171
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 172
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    return-void
.end method

.method public mul(Landroid/renderscript/Float2;)V
    .locals 2

    .line 146
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    iget v1, p1, Landroid/renderscript/Float2;->x:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 147
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    iget p1, p1, Landroid/renderscript/Float2;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    return-void
.end method

.method public negate()V
    .locals 1

    .line 286
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    neg-float v0, v0

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 287
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    neg-float v0, v0

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    return-void
.end method

.method public set(Landroid/renderscript/Float2;)V
    .locals 1

    .line 278
    iget v0, p1, Landroid/renderscript/Float2;->x:F

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 279
    iget p1, p1, Landroid/renderscript/Float2;->y:F

    iput p1, p0, Landroid/renderscript/Float2;->y:F

    return-void
.end method

.method public setAt(IF)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 340
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index: i"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 337
    :pswitch_0
    iput p2, p0, Landroid/renderscript/Float2;->y:F

    return-void

    .line 334
    :pswitch_1
    iput p2, p0, Landroid/renderscript/Float2;->x:F

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setValues(FF)V
    .locals 0

    .line 370
    iput p1, p0, Landroid/renderscript/Float2;->x:F

    .line 371
    iput p2, p0, Landroid/renderscript/Float2;->y:F

    return-void
.end method

.method public sub(F)V
    .locals 1

    .line 121
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 122
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    return-void
.end method

.method public sub(Landroid/renderscript/Float2;)V
    .locals 2

    .line 96
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    iget v1, p1, Landroid/renderscript/Float2;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 97
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    iget p1, p1, Landroid/renderscript/Float2;->y:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    return-void
.end method
