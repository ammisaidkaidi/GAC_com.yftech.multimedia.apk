.class public Landroid/renderscript/Byte4;
.super Ljava/lang/Object;
.source "Byte4.java"


# instance fields
.field public w:B

.field public x:B

.field public y:B

.field public z:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(BBBB)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-byte p1, p0, Landroid/renderscript/Byte4;->x:B

    .line 35
    iput-byte p2, p0, Landroid/renderscript/Byte4;->y:B

    .line 36
    iput-byte p3, p0, Landroid/renderscript/Byte4;->z:B

    .line 37
    iput-byte p4, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Byte4;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iget-byte v0, p1, Landroid/renderscript/Byte4;->x:B

    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    .line 42
    iget-byte v0, p1, Landroid/renderscript/Byte4;->y:B

    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    .line 43
    iget-byte v0, p1, Landroid/renderscript/Byte4;->z:B

    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    .line 44
    iget-byte p1, p1, Landroid/renderscript/Byte4;->w:B

    iput-byte p1, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method

.method public static add(Landroid/renderscript/Byte4;B)Landroid/renderscript/Byte4;
    .locals 2

    .line 96
    new-instance v0, Landroid/renderscript/Byte4;

    invoke-direct {v0}, Landroid/renderscript/Byte4;-><init>()V

    .line 97
    iget-byte v1, p0, Landroid/renderscript/Byte4;->x:B

    add-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->x:B

    .line 98
    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    add-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->y:B

    .line 99
    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    add-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->z:B

    .line 100
    iget-byte p0, p0, Landroid/renderscript/Byte4;->w:B

    add-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/renderscript/Byte4;->w:B

    return-object v0
.end method

.method public static add(Landroid/renderscript/Byte4;Landroid/renderscript/Byte4;)Landroid/renderscript/Byte4;
    .locals 3

    .line 67
    new-instance v0, Landroid/renderscript/Byte4;

    invoke-direct {v0}, Landroid/renderscript/Byte4;-><init>()V

    .line 68
    iget-byte v1, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->x:B

    add-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->x:B

    .line 69
    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->y:B

    add-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->y:B

    .line 70
    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->z:B

    add-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->z:B

    .line 71
    iget-byte p0, p0, Landroid/renderscript/Byte4;->w:B

    iget-byte p1, p1, Landroid/renderscript/Byte4;->w:B

    add-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/renderscript/Byte4;->w:B

    return-object v0
.end method

.method public static div(Landroid/renderscript/Byte4;B)Landroid/renderscript/Byte4;
    .locals 2

    .line 270
    new-instance v0, Landroid/renderscript/Byte4;

    invoke-direct {v0}, Landroid/renderscript/Byte4;-><init>()V

    .line 271
    iget-byte v1, p0, Landroid/renderscript/Byte4;->x:B

    div-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->x:B

    .line 272
    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    div-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->y:B

    .line 273
    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    div-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->z:B

    .line 274
    iget-byte p0, p0, Landroid/renderscript/Byte4;->w:B

    div-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/renderscript/Byte4;->w:B

    return-object v0
.end method

.method public static div(Landroid/renderscript/Byte4;Landroid/renderscript/Byte4;)Landroid/renderscript/Byte4;
    .locals 3

    .line 241
    new-instance v0, Landroid/renderscript/Byte4;

    invoke-direct {v0}, Landroid/renderscript/Byte4;-><init>()V

    .line 242
    iget-byte v1, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->x:B

    div-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->x:B

    .line 243
    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->y:B

    div-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->y:B

    .line 244
    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->z:B

    div-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->z:B

    .line 245
    iget-byte p0, p0, Landroid/renderscript/Byte4;->w:B

    iget-byte p1, p1, Landroid/renderscript/Byte4;->w:B

    div-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/renderscript/Byte4;->w:B

    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Byte4;Landroid/renderscript/Byte4;)B
    .locals 3

    .line 316
    iget-byte v0, p1, Landroid/renderscript/Byte4;->x:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->x:B

    mul-int/2addr v0, v1

    iget-byte v1, p1, Landroid/renderscript/Byte4;->y:B

    iget-byte v2, p0, Landroid/renderscript/Byte4;->y:B

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-byte v1, p1, Landroid/renderscript/Byte4;->z:B

    iget-byte v2, p0, Landroid/renderscript/Byte4;->z:B

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-byte p1, p1, Landroid/renderscript/Byte4;->w:B

    iget-byte p0, p0, Landroid/renderscript/Byte4;->w:B

    mul-int/2addr p1, p0

    add-int/2addr v0, p1

    int-to-byte p0, v0

    return p0
.end method

.method public static mul(Landroid/renderscript/Byte4;B)Landroid/renderscript/Byte4;
    .locals 2

    .line 212
    new-instance v0, Landroid/renderscript/Byte4;

    invoke-direct {v0}, Landroid/renderscript/Byte4;-><init>()V

    .line 213
    iget-byte v1, p0, Landroid/renderscript/Byte4;->x:B

    mul-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->x:B

    .line 214
    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    mul-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->y:B

    .line 215
    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    mul-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->z:B

    .line 216
    iget-byte p0, p0, Landroid/renderscript/Byte4;->w:B

    mul-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/renderscript/Byte4;->w:B

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Byte4;Landroid/renderscript/Byte4;)Landroid/renderscript/Byte4;
    .locals 3

    .line 183
    new-instance v0, Landroid/renderscript/Byte4;

    invoke-direct {v0}, Landroid/renderscript/Byte4;-><init>()V

    .line 184
    iget-byte v1, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->x:B

    mul-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->x:B

    .line 185
    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->y:B

    mul-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->y:B

    .line 186
    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->z:B

    mul-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->z:B

    .line 187
    iget-byte p0, p0, Landroid/renderscript/Byte4;->w:B

    iget-byte p1, p1, Landroid/renderscript/Byte4;->w:B

    mul-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/renderscript/Byte4;->w:B

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Byte4;B)Landroid/renderscript/Byte4;
    .locals 2

    .line 154
    new-instance v0, Landroid/renderscript/Byte4;

    invoke-direct {v0}, Landroid/renderscript/Byte4;-><init>()V

    .line 155
    iget-byte v1, p0, Landroid/renderscript/Byte4;->x:B

    sub-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->x:B

    .line 156
    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    sub-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->y:B

    .line 157
    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    sub-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->z:B

    .line 158
    iget-byte p0, p0, Landroid/renderscript/Byte4;->w:B

    sub-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/renderscript/Byte4;->w:B

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Byte4;Landroid/renderscript/Byte4;)Landroid/renderscript/Byte4;
    .locals 3

    .line 125
    new-instance v0, Landroid/renderscript/Byte4;

    invoke-direct {v0}, Landroid/renderscript/Byte4;-><init>()V

    .line 126
    iget-byte v1, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->x:B

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->x:B

    .line 127
    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->y:B

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->y:B

    .line 128
    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->z:B

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->z:B

    .line 129
    iget-byte p0, p0, Landroid/renderscript/Byte4;->w:B

    iget-byte p1, p1, Landroid/renderscript/Byte4;->w:B

    sub-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/renderscript/Byte4;->w:B

    return-object v0
.end method


# virtual methods
.method public add(B)V
    .locals 1

    .line 82
    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    add-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    .line 83
    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    add-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    .line 84
    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    add-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    .line 85
    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    add-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method

.method public add(Landroid/renderscript/Byte4;)V
    .locals 2

    .line 53
    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->x:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    .line 54
    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->y:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    .line 55
    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->z:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    .line 56
    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    iget-byte p1, p1, Landroid/renderscript/Byte4;->w:B

    add-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method

.method public addAt(IB)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 435
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index: i"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 432
    :pswitch_0
    iget-byte p1, p0, Landroid/renderscript/Byte4;->w:B

    add-int/2addr p1, p2

    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/renderscript/Byte4;->w:B

    return-void

    .line 429
    :pswitch_1
    iget-byte p1, p0, Landroid/renderscript/Byte4;->z:B

    add-int/2addr p1, p2

    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/renderscript/Byte4;->z:B

    return-void

    .line 426
    :pswitch_2
    iget-byte p1, p0, Landroid/renderscript/Byte4;->y:B

    add-int/2addr p1, p2

    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/renderscript/Byte4;->y:B

    return-void

    .line 423
    :pswitch_3
    iget-byte p1, p0, Landroid/renderscript/Byte4;->x:B

    add-int/2addr p1, p2

    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/renderscript/Byte4;->x:B

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

.method public addMultiple(Landroid/renderscript/Byte4;B)V
    .locals 2

    .line 326
    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->x:B

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    .line 327
    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->y:B

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    .line 328
    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->z:B

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    .line 329
    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    iget-byte p1, p1, Landroid/renderscript/Byte4;->w:B

    mul-int/2addr p1, p2

    add-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method

.method public copyTo([BI)V
    .locals 2

    .line 446
    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    .line 447
    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    .line 448
    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    aput-byte v1, p1, v0

    add-int/lit8 p2, p2, 0x3

    .line 449
    iget-byte p0, p0, Landroid/renderscript/Byte4;->w:B

    aput-byte p0, p1, p2

    return-void
.end method

.method public div(B)V
    .locals 1

    .line 256
    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    div-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    .line 257
    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    div-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    .line 258
    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    div-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    .line 259
    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    div-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method

.method public div(Landroid/renderscript/Byte4;)V
    .locals 2

    .line 227
    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->x:B

    div-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    .line 228
    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->y:B

    div-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    .line 229
    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->z:B

    div-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    .line 230
    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    iget-byte p1, p1, Landroid/renderscript/Byte4;->w:B

    div-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method

.method public dotProduct(Landroid/renderscript/Byte4;)B
    .locals 3

    .line 305
    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->x:B

    mul-int/2addr v0, v1

    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->y:B

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->z:B

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-byte p0, p0, Landroid/renderscript/Byte4;->w:B

    iget-byte p1, p1, Landroid/renderscript/Byte4;->w:B

    mul-int/2addr p0, p1

    add-int/2addr v0, p0

    int-to-byte p0, v0

    return p0
.end method

.method public elementSum()B
    .locals 2

    .line 365
    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    add-int/2addr v0, v1

    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    add-int/2addr v0, v1

    iget-byte p0, p0, Landroid/renderscript/Byte4;->w:B

    add-int/2addr v0, p0

    int-to-byte p0, v0

    return p0
.end method

.method public get(I)B
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 385
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index: i"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 383
    :pswitch_0
    iget-byte p0, p0, Landroid/renderscript/Byte4;->w:B

    return p0

    .line 381
    :pswitch_1
    iget-byte p0, p0, Landroid/renderscript/Byte4;->z:B

    return p0

    .line 379
    :pswitch_2
    iget-byte p0, p0, Landroid/renderscript/Byte4;->y:B

    return p0

    .line 377
    :pswitch_3
    iget-byte p0, p0, Landroid/renderscript/Byte4;->x:B

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

.method public length()B
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public mul(B)V
    .locals 1

    .line 198
    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    mul-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    .line 199
    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    mul-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    .line 200
    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    mul-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    .line 201
    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    mul-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method

.method public mul(Landroid/renderscript/Byte4;)V
    .locals 2

    .line 169
    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->x:B

    mul-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    .line 170
    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->y:B

    mul-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    .line 171
    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->z:B

    mul-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    .line 172
    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    iget-byte p1, p1, Landroid/renderscript/Byte4;->w:B

    mul-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method

.method public negate()V
    .locals 1

    .line 292
    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    neg-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    .line 293
    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    neg-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    .line 294
    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    neg-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    .line 295
    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    neg-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method

.method public set(Landroid/renderscript/Byte4;)V
    .locals 1

    .line 338
    iget-byte v0, p1, Landroid/renderscript/Byte4;->x:B

    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    .line 339
    iget-byte v0, p1, Landroid/renderscript/Byte4;->y:B

    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    .line 340
    iget-byte v0, p1, Landroid/renderscript/Byte4;->z:B

    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    .line 341
    iget-byte p1, p1, Landroid/renderscript/Byte4;->w:B

    iput-byte p1, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method

.method public setAt(IB)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 410
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index: i"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 407
    :pswitch_0
    iput-byte p2, p0, Landroid/renderscript/Byte4;->w:B

    return-void

    .line 404
    :pswitch_1
    iput-byte p2, p0, Landroid/renderscript/Byte4;->z:B

    return-void

    .line 401
    :pswitch_2
    iput-byte p2, p0, Landroid/renderscript/Byte4;->y:B

    return-void

    .line 398
    :pswitch_3
    iput-byte p2, p0, Landroid/renderscript/Byte4;->x:B

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

.method public setValues(BBBB)V
    .locals 0

    .line 353
    iput-byte p1, p0, Landroid/renderscript/Byte4;->x:B

    .line 354
    iput-byte p2, p0, Landroid/renderscript/Byte4;->y:B

    .line 355
    iput-byte p3, p0, Landroid/renderscript/Byte4;->z:B

    .line 356
    iput-byte p4, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method

.method public sub(B)V
    .locals 1

    .line 140
    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    sub-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    .line 141
    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    sub-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    .line 142
    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    sub-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    .line 143
    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    sub-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method

.method public sub(Landroid/renderscript/Byte4;)V
    .locals 2

    .line 111
    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->x:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    .line 112
    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->y:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    .line 113
    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->z:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    .line 114
    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    iget-byte p1, p1, Landroid/renderscript/Byte4;->w:B

    sub-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method
