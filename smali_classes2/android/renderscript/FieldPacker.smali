.class public Landroid/renderscript/FieldPacker;
.super Ljava/lang/Object;
.source "FieldPacker.java"


# instance fields
.field private mAlignment:Ljava/util/BitSet;

.field private mData:[B

.field private mLen:I

.field private mPos:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    .line 33
    iput p1, p0, Landroid/renderscript/FieldPacker;->mLen:I

    .line 34
    new-array p1, p1, [B

    iput-object p1, p0, Landroid/renderscript/FieldPacker;->mData:[B

    .line 35
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Landroid/renderscript/FieldPacker;->mAlignment:Ljava/util/BitSet;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    array-length v0, p1

    iput v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    .line 42
    array-length v0, p1

    iput v0, p0, Landroid/renderscript/FieldPacker;->mLen:I

    .line 43
    iput-object p1, p0, Landroid/renderscript/FieldPacker;->mData:[B

    .line 44
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Landroid/renderscript/FieldPacker;->mAlignment:Ljava/util/BitSet;

    return-void
.end method

.method private add(Ljava/lang/Object;)V
    .locals 2

    .line 631
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 632
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addBoolean(Z)V

    return-void

    .line 636
    :cond_0
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    .line 637
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI8(B)V

    return-void

    .line 641
    :cond_1
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_2

    .line 642
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI16(S)V

    return-void

    .line 646
    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 647
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    return-void

    .line 651
    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 652
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    return-void

    .line 656
    :cond_4
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 657
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    return-void

    .line 661
    :cond_5
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_6

    .line 662
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addF64(D)V

    return-void

    .line 666
    :cond_6
    instance-of v0, p1, Landroid/renderscript/Byte2;

    if-eqz v0, :cond_7

    .line 667
    check-cast p1, Landroid/renderscript/Byte2;

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI8(Landroid/renderscript/Byte2;)V

    return-void

    .line 671
    :cond_7
    instance-of v0, p1, Landroid/renderscript/Byte3;

    if-eqz v0, :cond_8

    .line 672
    check-cast p1, Landroid/renderscript/Byte3;

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI8(Landroid/renderscript/Byte3;)V

    return-void

    .line 676
    :cond_8
    instance-of v0, p1, Landroid/renderscript/Byte4;

    if-eqz v0, :cond_9

    .line 677
    check-cast p1, Landroid/renderscript/Byte4;

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI8(Landroid/renderscript/Byte4;)V

    return-void

    .line 681
    :cond_9
    instance-of v0, p1, Landroid/renderscript/Short2;

    if-eqz v0, :cond_a

    .line 682
    check-cast p1, Landroid/renderscript/Short2;

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI16(Landroid/renderscript/Short2;)V

    return-void

    .line 686
    :cond_a
    instance-of v0, p1, Landroid/renderscript/Short3;

    if-eqz v0, :cond_b

    .line 687
    check-cast p1, Landroid/renderscript/Short3;

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI16(Landroid/renderscript/Short3;)V

    return-void

    .line 691
    :cond_b
    instance-of v0, p1, Landroid/renderscript/Short4;

    if-eqz v0, :cond_c

    .line 692
    check-cast p1, Landroid/renderscript/Short4;

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI16(Landroid/renderscript/Short4;)V

    return-void

    .line 696
    :cond_c
    instance-of v0, p1, Landroid/renderscript/Int2;

    if-eqz v0, :cond_d

    .line 697
    check-cast p1, Landroid/renderscript/Int2;

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI32(Landroid/renderscript/Int2;)V

    return-void

    .line 701
    :cond_d
    instance-of v0, p1, Landroid/renderscript/Int3;

    if-eqz v0, :cond_e

    .line 702
    check-cast p1, Landroid/renderscript/Int3;

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI32(Landroid/renderscript/Int3;)V

    return-void

    .line 706
    :cond_e
    instance-of v0, p1, Landroid/renderscript/Int4;

    if-eqz v0, :cond_f

    .line 707
    check-cast p1, Landroid/renderscript/Int4;

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI32(Landroid/renderscript/Int4;)V

    return-void

    .line 711
    :cond_f
    instance-of v0, p1, Landroid/renderscript/Long2;

    if-eqz v0, :cond_10

    .line 712
    check-cast p1, Landroid/renderscript/Long2;

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI64(Landroid/renderscript/Long2;)V

    return-void

    .line 716
    :cond_10
    instance-of v0, p1, Landroid/renderscript/Long3;

    if-eqz v0, :cond_11

    .line 717
    check-cast p1, Landroid/renderscript/Long3;

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI64(Landroid/renderscript/Long3;)V

    return-void

    .line 721
    :cond_11
    instance-of v0, p1, Landroid/renderscript/Long4;

    if-eqz v0, :cond_12

    .line 722
    check-cast p1, Landroid/renderscript/Long4;

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI64(Landroid/renderscript/Long4;)V

    return-void

    .line 726
    :cond_12
    instance-of v0, p1, Landroid/renderscript/Float2;

    if-eqz v0, :cond_13

    .line 727
    check-cast p1, Landroid/renderscript/Float2;

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float2;)V

    return-void

    .line 731
    :cond_13
    instance-of v0, p1, Landroid/renderscript/Float3;

    if-eqz v0, :cond_14

    .line 732
    check-cast p1, Landroid/renderscript/Float3;

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float3;)V

    return-void

    .line 736
    :cond_14
    instance-of v0, p1, Landroid/renderscript/Float4;

    if-eqz v0, :cond_15

    .line 737
    check-cast p1, Landroid/renderscript/Float4;

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    return-void

    .line 741
    :cond_15
    instance-of v0, p1, Landroid/renderscript/Double2;

    if-eqz v0, :cond_16

    .line 742
    check-cast p1, Landroid/renderscript/Double2;

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addF64(Landroid/renderscript/Double2;)V

    return-void

    .line 746
    :cond_16
    instance-of v0, p1, Landroid/renderscript/Double3;

    if-eqz v0, :cond_17

    .line 747
    check-cast p1, Landroid/renderscript/Double3;

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addF64(Landroid/renderscript/Double3;)V

    return-void

    .line 751
    :cond_17
    instance-of v0, p1, Landroid/renderscript/Double4;

    if-eqz v0, :cond_18

    .line 752
    check-cast p1, Landroid/renderscript/Double4;

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addF64(Landroid/renderscript/Double4;)V

    return-void

    .line 756
    :cond_18
    instance-of v0, p1, Landroid/renderscript/Matrix2f;

    if-eqz v0, :cond_19

    .line 757
    check-cast p1, Landroid/renderscript/Matrix2f;

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix2f;)V

    return-void

    .line 761
    :cond_19
    instance-of v0, p1, Landroid/renderscript/Matrix3f;

    if-eqz v0, :cond_1a

    .line 762
    check-cast p1, Landroid/renderscript/Matrix3f;

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix3f;)V

    return-void

    .line 766
    :cond_1a
    instance-of v0, p1, Landroid/renderscript/Matrix4f;

    if-eqz v0, :cond_1b

    .line 767
    check-cast p1, Landroid/renderscript/Matrix4f;

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix4f;)V

    return-void

    .line 771
    :cond_1b
    instance-of v0, p1, Landroid/renderscript/BaseObj;

    if-eqz v0, :cond_1c

    .line 772
    check-cast p1, Landroid/renderscript/BaseObj;

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    return-void

    :cond_1c
    return-void
.end method

.method private addSafely(Ljava/lang/Object;)V
    .locals 2

    .line 791
    iget v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    :cond_0
    const/4 v1, 0x0

    .line 795
    :try_start_0
    invoke-direct {p0, p1}, Landroid/renderscript/FieldPacker;->add(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 797
    :catch_0
    iput v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    .line 798
    iget v1, p0, Landroid/renderscript/FieldPacker;->mLen:I

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v1}, Landroid/renderscript/FieldPacker;->resize(I)Z

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_0

    return-void
.end method

.method static createFromArray([Ljava/lang/Object;)Landroid/renderscript/FieldPacker;
    .locals 4

    .line 51
    new-instance v0, Landroid/renderscript/FieldPacker;

    sget v1, Landroid/renderscript/RenderScript;->sPointerSize:I

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 52
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 53
    invoke-direct {v0, v3}, Landroid/renderscript/FieldPacker;->addSafely(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    :cond_0
    iget p0, v0, Landroid/renderscript/FieldPacker;->mPos:I

    invoke-direct {v0, p0}, Landroid/renderscript/FieldPacker;->resize(I)Z

    return-object v0
.end method

.method private resize(I)Z
    .locals 4

    .line 778
    iget v0, p0, Landroid/renderscript/FieldPacker;->mLen:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 782
    :cond_0
    new-array v0, p1, [B

    .line 783
    iget-object v2, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v3, p0, Landroid/renderscript/FieldPacker;->mPos:I

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 784
    iput-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    .line 785
    iput p1, p0, Landroid/renderscript/FieldPacker;->mLen:I

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public addBoolean(Z)V
    .locals 0

    int-to-byte p1, p1

    .line 606
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI8(B)V

    return-void
.end method

.method public addF32(F)V
    .locals 0

    .line 231
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    return-void
.end method

.method public addF32(Landroid/renderscript/Float2;)V
    .locals 1

    .line 269
    iget v0, p1, Landroid/renderscript/Float2;->x:F

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 270
    iget p1, p1, Landroid/renderscript/Float2;->y:F

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    return-void
.end method

.method public addF32(Landroid/renderscript/Float3;)V
    .locals 1

    .line 273
    iget v0, p1, Landroid/renderscript/Float3;->x:F

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 274
    iget v0, p1, Landroid/renderscript/Float3;->y:F

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 275
    iget p1, p1, Landroid/renderscript/Float3;->z:F

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    return-void
.end method

.method public addF32(Landroid/renderscript/Float4;)V
    .locals 1

    .line 278
    iget v0, p1, Landroid/renderscript/Float4;->x:F

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 279
    iget v0, p1, Landroid/renderscript/Float4;->y:F

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 280
    iget v0, p1, Landroid/renderscript/Float4;->z:F

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 281
    iget p1, p1, Landroid/renderscript/Float4;->w:F

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    return-void
.end method

.method public addF64(D)V
    .locals 0

    .line 239
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/renderscript/FieldPacker;->addI64(J)V

    return-void
.end method

.method public addF64(Landroid/renderscript/Double2;)V
    .locals 2

    .line 285
    iget-wide v0, p1, Landroid/renderscript/Double2;->x:D

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addF64(D)V

    .line 286
    iget-wide v0, p1, Landroid/renderscript/Double2;->y:D

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addF64(D)V

    return-void
.end method

.method public addF64(Landroid/renderscript/Double3;)V
    .locals 2

    .line 289
    iget-wide v0, p1, Landroid/renderscript/Double3;->x:D

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addF64(D)V

    .line 290
    iget-wide v0, p1, Landroid/renderscript/Double3;->y:D

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addF64(D)V

    .line 291
    iget-wide v0, p1, Landroid/renderscript/Double3;->z:D

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addF64(D)V

    return-void
.end method

.method public addF64(Landroid/renderscript/Double4;)V
    .locals 2

    .line 294
    iget-wide v0, p1, Landroid/renderscript/Double4;->x:D

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addF64(D)V

    .line 295
    iget-wide v0, p1, Landroid/renderscript/Double4;->y:D

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addF64(D)V

    .line 296
    iget-wide v0, p1, Landroid/renderscript/Double4;->z:D

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addF64(D)V

    .line 297
    iget-wide v0, p1, Landroid/renderscript/Double4;->w:D

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addF64(D)V

    return-void
.end method

.method public addI16(Landroid/renderscript/Short2;)V
    .locals 1

    .line 333
    iget-short v0, p1, Landroid/renderscript/Short2;->x:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI16(S)V

    .line 334
    iget-short p1, p1, Landroid/renderscript/Short2;->y:S

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI16(S)V

    return-void
.end method

.method public addI16(Landroid/renderscript/Short3;)V
    .locals 1

    .line 337
    iget-short v0, p1, Landroid/renderscript/Short3;->x:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI16(S)V

    .line 338
    iget-short v0, p1, Landroid/renderscript/Short3;->y:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI16(S)V

    .line 339
    iget-short p1, p1, Landroid/renderscript/Short3;->z:S

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI16(S)V

    return-void
.end method

.method public addI16(Landroid/renderscript/Short4;)V
    .locals 1

    .line 342
    iget-short v0, p1, Landroid/renderscript/Short4;->x:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI16(S)V

    .line 343
    iget-short v0, p1, Landroid/renderscript/Short4;->y:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI16(S)V

    .line 344
    iget-short v0, p1, Landroid/renderscript/Short4;->z:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI16(S)V

    .line 345
    iget-short p1, p1, Landroid/renderscript/Short4;->w:S

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI16(S)V

    return-void
.end method

.method public addI16(S)V
    .locals 3

    const/4 v0, 0x2

    .line 116
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->align(I)V

    .line 117
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 118
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 p0, p1, 0x8

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    return-void
.end method

.method public addI32(I)V
    .locals 3

    const/4 v0, 0x4

    .line 131
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->align(I)V

    .line 132
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 133
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 134
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 135
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 p0, p1, 0x18

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    return-void
.end method

.method public addI32(Landroid/renderscript/Int2;)V
    .locals 1

    .line 365
    iget v0, p1, Landroid/renderscript/Int2;->x:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 366
    iget p1, p1, Landroid/renderscript/Int2;->y:I

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    return-void
.end method

.method public addI32(Landroid/renderscript/Int3;)V
    .locals 1

    .line 369
    iget v0, p1, Landroid/renderscript/Int3;->x:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 370
    iget v0, p1, Landroid/renderscript/Int3;->y:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 371
    iget p1, p1, Landroid/renderscript/Int3;->z:I

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    return-void
.end method

.method public addI32(Landroid/renderscript/Int4;)V
    .locals 1

    .line 374
    iget v0, p1, Landroid/renderscript/Int4;->x:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 375
    iget v0, p1, Landroid/renderscript/Int4;->y:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 376
    iget v0, p1, Landroid/renderscript/Int4;->z:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 377
    iget p1, p1, Landroid/renderscript/Int4;->w:I

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    return-void
.end method

.method public addI64(J)V
    .locals 7

    const/16 v0, 0x8

    .line 150
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->align(I)V

    .line 151
    iget-object v1, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const-wide/16 v3, 0xff

    and-long v5, p1, v3

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    .line 152
    iget-object v1, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Landroid/renderscript/FieldPacker;->mPos:I

    shr-long v5, p1, v0

    and-long/2addr v5, v3

    long-to-int v0, v5

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 153
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x10

    shr-long v5, p1, v2

    and-long/2addr v5, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 154
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x18

    shr-long v5, p1, v2

    and-long/2addr v5, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 155
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x20

    shr-long v5, p1, v2

    and-long/2addr v5, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 156
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x28

    shr-long v5, p1, v2

    and-long/2addr v5, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 157
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x30

    shr-long v5, p1, v2

    and-long/2addr v5, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 158
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/16 p0, 0x38

    shr-long p0, p1, p0

    and-long/2addr p0, v3

    long-to-int p0, p0

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    return-void
.end method

.method public addI64(Landroid/renderscript/Long2;)V
    .locals 2

    .line 397
    iget-wide v0, p1, Landroid/renderscript/Long2;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 398
    iget-wide v0, p1, Landroid/renderscript/Long2;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    return-void
.end method

.method public addI64(Landroid/renderscript/Long3;)V
    .locals 2

    .line 401
    iget-wide v0, p1, Landroid/renderscript/Long3;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 402
    iget-wide v0, p1, Landroid/renderscript/Long3;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 403
    iget-wide v0, p1, Landroid/renderscript/Long3;->z:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    return-void
.end method

.method public addI64(Landroid/renderscript/Long4;)V
    .locals 2

    .line 406
    iget-wide v0, p1, Landroid/renderscript/Long4;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 407
    iget-wide v0, p1, Landroid/renderscript/Long4;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 408
    iget-wide v0, p1, Landroid/renderscript/Long4;->z:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 409
    iget-wide v0, p1, Landroid/renderscript/Long4;->w:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    return-void
.end method

.method public addI8(B)V
    .locals 3

    .line 107
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public addI8(Landroid/renderscript/Byte2;)V
    .locals 1

    .line 301
    iget-byte v0, p1, Landroid/renderscript/Byte2;->x:B

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI8(B)V

    .line 302
    iget-byte p1, p1, Landroid/renderscript/Byte2;->y:B

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI8(B)V

    return-void
.end method

.method public addI8(Landroid/renderscript/Byte3;)V
    .locals 1

    .line 305
    iget-byte v0, p1, Landroid/renderscript/Byte3;->x:B

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI8(B)V

    .line 306
    iget-byte v0, p1, Landroid/renderscript/Byte3;->y:B

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI8(B)V

    .line 307
    iget-byte p1, p1, Landroid/renderscript/Byte3;->z:B

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI8(B)V

    return-void
.end method

.method public addI8(Landroid/renderscript/Byte4;)V
    .locals 1

    .line 310
    iget-byte v0, p1, Landroid/renderscript/Byte4;->x:B

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI8(B)V

    .line 311
    iget-byte v0, p1, Landroid/renderscript/Byte4;->y:B

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI8(B)V

    .line 312
    iget-byte v0, p1, Landroid/renderscript/Byte4;->z:B

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI8(B)V

    .line 313
    iget-byte p1, p1, Landroid/renderscript/Byte4;->w:B

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI8(B)V

    return-void
.end method

.method public addMatrix(Landroid/renderscript/Matrix2f;)V
    .locals 2

    const/4 v0, 0x0

    .line 592
    :goto_0
    iget-object v1, p1, Landroid/renderscript/Matrix2f;->mMat:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 593
    iget-object v1, p1, Landroid/renderscript/Matrix2f;->mMat:[F

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addMatrix(Landroid/renderscript/Matrix3f;)V
    .locals 2

    const/4 v0, 0x0

    .line 578
    :goto_0
    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 579
    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addMatrix(Landroid/renderscript/Matrix4f;)V
    .locals 2

    const/4 v0, 0x0

    .line 564
    :goto_0
    iget-object v1, p1, Landroid/renderscript/Matrix4f;->mMat:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 565
    iget-object v1, p1, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addObj(Landroid/renderscript/BaseObj;)V
    .locals 5

    const/16 v0, 0x8

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_1

    .line 248
    sget v3, Landroid/renderscript/RenderScript;->sPointerSize:I

    const/4 v4, 0x0

    if-ne v3, v0, :cond_0

    .line 249
    invoke-virtual {p1, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 250
    invoke-virtual {p0, v1, v2}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 251
    invoke-virtual {p0, v1, v2}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 252
    invoke-virtual {p0, v1, v2}, Landroid/renderscript/FieldPacker;->addI64(J)V

    goto :goto_0

    .line 254
    :cond_0
    invoke-virtual {p1, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    long-to-int p1, v0

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    goto :goto_0

    .line 257
    :cond_1
    sget p1, Landroid/renderscript/RenderScript;->sPointerSize:I

    if-ne p1, v0, :cond_2

    .line 258
    invoke-virtual {p0, v1, v2}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 259
    invoke-virtual {p0, v1, v2}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 260
    invoke-virtual {p0, v1, v2}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 261
    invoke-virtual {p0, v1, v2}, Landroid/renderscript/FieldPacker;->addI64(J)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 263
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    :goto_0
    return-void
.end method

.method public addU16(I)V
    .locals 3

    if-ltz p1, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    const/4 v0, 0x2

    .line 197
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->align(I)V

    .line 198
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 199
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 p0, p1, 0x8

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    return-void

    .line 194
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FieldPacker.addU16( "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " )"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "rs"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Saving value out of range for type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addU16(Landroid/renderscript/Int2;)V
    .locals 1

    .line 349
    iget v0, p1, Landroid/renderscript/Int2;->x:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU16(I)V

    .line 350
    iget p1, p1, Landroid/renderscript/Int2;->y:I

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addU16(I)V

    return-void
.end method

.method public addU16(Landroid/renderscript/Int3;)V
    .locals 1

    .line 353
    iget v0, p1, Landroid/renderscript/Int3;->x:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU16(I)V

    .line 354
    iget v0, p1, Landroid/renderscript/Int3;->y:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU16(I)V

    .line 355
    iget p1, p1, Landroid/renderscript/Int3;->z:I

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addU16(I)V

    return-void
.end method

.method public addU16(Landroid/renderscript/Int4;)V
    .locals 1

    .line 358
    iget v0, p1, Landroid/renderscript/Int4;->x:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU16(I)V

    .line 359
    iget v0, p1, Landroid/renderscript/Int4;->y:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU16(I)V

    .line 360
    iget v0, p1, Landroid/renderscript/Int4;->z:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU16(I)V

    .line 361
    iget p1, p1, Landroid/renderscript/Int4;->w:I

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addU16(I)V

    return-void
.end method

.method public addU32(J)V
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x4

    .line 207
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->align(I)V

    .line 208
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const-wide/16 v2, 0xff

    and-long v4, p1, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 209
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/16 v4, 0x8

    shr-long v4, p1, v4

    and-long/2addr v4, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 210
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/16 v4, 0x10

    shr-long v4, p1, v4

    and-long/2addr v4, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 211
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/16 p0, 0x18

    shr-long p0, p1, p0

    and-long/2addr p0, v2

    long-to-int p0, p0

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    return-void

    .line 204
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FieldPacker.addU32( "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " )"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "rs"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Saving value out of range for type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addU32(Landroid/renderscript/Long2;)V
    .locals 2

    .line 381
    iget-wide v0, p1, Landroid/renderscript/Long2;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU32(J)V

    .line 382
    iget-wide v0, p1, Landroid/renderscript/Long2;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU32(J)V

    return-void
.end method

.method public addU32(Landroid/renderscript/Long3;)V
    .locals 2

    .line 385
    iget-wide v0, p1, Landroid/renderscript/Long3;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU32(J)V

    .line 386
    iget-wide v0, p1, Landroid/renderscript/Long3;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU32(J)V

    .line 387
    iget-wide v0, p1, Landroid/renderscript/Long3;->z:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU32(J)V

    return-void
.end method

.method public addU32(Landroid/renderscript/Long4;)V
    .locals 2

    .line 390
    iget-wide v0, p1, Landroid/renderscript/Long4;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU32(J)V

    .line 391
    iget-wide v0, p1, Landroid/renderscript/Long4;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU32(J)V

    .line 392
    iget-wide v0, p1, Landroid/renderscript/Long4;->z:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU32(J)V

    .line 393
    iget-wide v0, p1, Landroid/renderscript/Long4;->w:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU32(J)V

    return-void
.end method

.method public addU64(J)V
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/16 v0, 0x8

    .line 219
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->align(I)V

    .line 220
    iget-object v1, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const-wide/16 v3, 0xff

    and-long v5, p1, v3

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    .line 221
    iget-object v1, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Landroid/renderscript/FieldPacker;->mPos:I

    shr-long v5, p1, v0

    and-long/2addr v5, v3

    long-to-int v0, v5

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 222
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x10

    shr-long v5, p1, v2

    and-long/2addr v5, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 223
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x18

    shr-long v5, p1, v2

    and-long/2addr v5, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 224
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x20

    shr-long v5, p1, v2

    and-long/2addr v5, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 225
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x28

    shr-long v5, p1, v2

    and-long/2addr v5, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 226
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x30

    shr-long v5, p1, v2

    and-long/2addr v5, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 227
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/16 p0, 0x38

    shr-long p0, p1, p0

    and-long/2addr p0, v3

    long-to-int p0, p0

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    return-void

    .line 216
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FieldPacker.addU64( "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " )"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "rs"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Saving value out of range for type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addU64(Landroid/renderscript/Long2;)V
    .locals 2

    .line 413
    iget-wide v0, p1, Landroid/renderscript/Long2;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU64(J)V

    .line 414
    iget-wide v0, p1, Landroid/renderscript/Long2;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU64(J)V

    return-void
.end method

.method public addU64(Landroid/renderscript/Long3;)V
    .locals 2

    .line 417
    iget-wide v0, p1, Landroid/renderscript/Long3;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU64(J)V

    .line 418
    iget-wide v0, p1, Landroid/renderscript/Long3;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU64(J)V

    .line 419
    iget-wide v0, p1, Landroid/renderscript/Long3;->z:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU64(J)V

    return-void
.end method

.method public addU64(Landroid/renderscript/Long4;)V
    .locals 2

    .line 422
    iget-wide v0, p1, Landroid/renderscript/Long4;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU64(J)V

    .line 423
    iget-wide v0, p1, Landroid/renderscript/Long4;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU64(J)V

    .line 424
    iget-wide v0, p1, Landroid/renderscript/Long4;->z:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU64(J)V

    .line 425
    iget-wide v0, p1, Landroid/renderscript/Long4;->w:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU64(J)V

    return-void
.end method

.method public addU8(Landroid/renderscript/Short2;)V
    .locals 1

    .line 317
    iget-short v0, p1, Landroid/renderscript/Short2;->x:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU8(S)V

    .line 318
    iget-short p1, p1, Landroid/renderscript/Short2;->y:S

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addU8(S)V

    return-void
.end method

.method public addU8(Landroid/renderscript/Short3;)V
    .locals 1

    .line 321
    iget-short v0, p1, Landroid/renderscript/Short3;->x:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU8(S)V

    .line 322
    iget-short v0, p1, Landroid/renderscript/Short3;->y:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU8(S)V

    .line 323
    iget-short p1, p1, Landroid/renderscript/Short3;->z:S

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addU8(S)V

    return-void
.end method

.method public addU8(Landroid/renderscript/Short4;)V
    .locals 1

    .line 326
    iget-short v0, p1, Landroid/renderscript/Short4;->x:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU8(S)V

    .line 327
    iget-short v0, p1, Landroid/renderscript/Short4;->y:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU8(S)V

    .line 328
    iget-short v0, p1, Landroid/renderscript/Short4;->z:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU8(S)V

    .line 329
    iget-short p1, p1, Landroid/renderscript/Short4;->w:S

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addU8(S)V

    return-void
.end method

.method public addU8(S)V
    .locals 3

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    .line 189
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    int-to-byte p0, p1

    aput-byte p0, v0, v1

    return-void

    .line 186
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FieldPacker.addU8( "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " )"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "rs"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Saving value out of range for type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public align(I)V
    .locals 3

    if-lez p1, :cond_1

    add-int/lit8 v0, p1, -0x1

    and-int v1, p1, v0

    if-nez v1, :cond_1

    .line 64
    :goto_0
    iget p1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    .line 65
    iget-object p1, p0, Landroid/renderscript/FieldPacker;->mAlignment:Ljava/util/BitSet;

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->flip(I)V

    .line 66
    iget-object p1, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/4 v2, 0x0

    aput-byte v2, p1, v1

    goto :goto_0

    :cond_0
    return-void

    .line 61
    :cond_1
    new-instance p0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "argument must be a non-negative non-zero power of 2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getData()[B
    .locals 0

    .line 618
    iget-object p0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    return-object p0
.end method

.method public getPos()I
    .locals 0

    .line 627
    iget p0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    return p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    return-void
.end method

.method public reset(I)V
    .locals 2

    if-ltz p1, :cond_0

    .line 92
    iget v0, p0, Landroid/renderscript/FieldPacker;->mLen:I

    if-gt p1, v0, :cond_0

    .line 95
    iput p1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    return-void

    .line 93
    :cond_0
    new-instance p0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "out of range argument: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public skip(I)V
    .locals 2

    .line 99
    iget v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/2addr v0, p1

    if-ltz v0, :cond_0

    .line 100
    iget v1, p0, Landroid/renderscript/FieldPacker;->mLen:I

    if-gt v0, v1, :cond_0

    .line 103
    iput v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    return-void

    .line 101
    :cond_0
    new-instance p0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "out of range argument: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public subBoolean()Z
    .locals 1

    .line 610
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public subByte2()Landroid/renderscript/Byte2;
    .locals 2

    .line 474
    new-instance v0, Landroid/renderscript/Byte2;

    invoke-direct {v0}, Landroid/renderscript/Byte2;-><init>()V

    .line 475
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    move-result v1

    iput-byte v1, v0, Landroid/renderscript/Byte2;->y:B

    .line 476
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    move-result p0

    iput-byte p0, v0, Landroid/renderscript/Byte2;->x:B

    return-object v0
.end method

.method public subByte3()Landroid/renderscript/Byte3;
    .locals 2

    .line 480
    new-instance v0, Landroid/renderscript/Byte3;

    invoke-direct {v0}, Landroid/renderscript/Byte3;-><init>()V

    .line 481
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    move-result v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->z:B

    .line 482
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    move-result v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->y:B

    .line 483
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    move-result p0

    iput-byte p0, v0, Landroid/renderscript/Byte3;->x:B

    return-object v0
.end method

.method public subByte4()Landroid/renderscript/Byte4;
    .locals 2

    .line 487
    new-instance v0, Landroid/renderscript/Byte4;

    invoke-direct {v0}, Landroid/renderscript/Byte4;-><init>()V

    .line 488
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    move-result v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->w:B

    .line 489
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    move-result v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->z:B

    .line 490
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    move-result v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->y:B

    .line 491
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    move-result p0

    iput-byte p0, v0, Landroid/renderscript/Byte4;->x:B

    return-object v0
.end method

.method public subDouble2()Landroid/renderscript/Double2;
    .locals 3

    .line 452
    new-instance v0, Landroid/renderscript/Double2;

    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    .line 453
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF64()D

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Double2;->y:D

    .line 454
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF64()D

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Double2;->x:D

    return-object v0
.end method

.method public subDouble3()Landroid/renderscript/Double3;
    .locals 3

    .line 458
    new-instance v0, Landroid/renderscript/Double3;

    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    .line 459
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF64()D

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Double3;->z:D

    .line 460
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF64()D

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Double3;->y:D

    .line 461
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF64()D

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Double3;->x:D

    return-object v0
.end method

.method public subDouble4()Landroid/renderscript/Double4;
    .locals 3

    .line 465
    new-instance v0, Landroid/renderscript/Double4;

    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    .line 466
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF64()D

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Double4;->w:D

    .line 467
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF64()D

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Double4;->z:D

    .line 468
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF64()D

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Double4;->y:D

    .line 469
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF64()D

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Double4;->x:D

    return-object v0
.end method

.method public subF32()F
    .locals 0

    .line 235
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public subF64()D
    .locals 2

    .line 243
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public subFloat2()Landroid/renderscript/Float2;
    .locals 2

    .line 430
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    .line 431
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    move-result v1

    iput v1, v0, Landroid/renderscript/Float2;->y:F

    .line 432
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    move-result p0

    iput p0, v0, Landroid/renderscript/Float2;->x:F

    return-object v0
.end method

.method public subFloat3()Landroid/renderscript/Float3;
    .locals 2

    .line 436
    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    .line 437
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    move-result v1

    iput v1, v0, Landroid/renderscript/Float3;->z:F

    .line 438
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    move-result v1

    iput v1, v0, Landroid/renderscript/Float3;->y:F

    .line 439
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    move-result p0

    iput p0, v0, Landroid/renderscript/Float3;->x:F

    return-object v0
.end method

.method public subFloat4()Landroid/renderscript/Float4;
    .locals 2

    .line 443
    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    .line 444
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    move-result v1

    iput v1, v0, Landroid/renderscript/Float4;->w:F

    .line 445
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    move-result v1

    iput v1, v0, Landroid/renderscript/Float4;->z:F

    .line 446
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    move-result v1

    iput v1, v0, Landroid/renderscript/Float4;->y:F

    .line 447
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    move-result p0

    iput p0, v0, Landroid/renderscript/Float4;->x:F

    return-object v0
.end method

.method public subI16()S
    .locals 3

    const/4 v0, 0x2

    .line 122
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->subalign(I)V

    .line 124
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    .line 125
    iget-object v1, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    aget-byte p0, v1, v2

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public subI32()I
    .locals 3

    const/4 v0, 0x4

    .line 139
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->subalign(I)V

    .line 141
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 142
    iget-object v1, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 143
    iget-object v1, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 144
    iget-object v1, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    aget-byte p0, v1, v2

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public subI64()J
    .locals 8

    const/16 v0, 0x8

    .line 162
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->subalign(I)V

    .line 165
    iget-object v1, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    aget-byte v1, v1, v2

    int-to-long v1, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    const/16 v5, 0x38

    shl-long/2addr v1, v5

    const-wide/16 v5, 0x0

    or-long/2addr v1, v5

    .line 167
    iget-object v5, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v6, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/renderscript/FieldPacker;->mPos:I

    aget-byte v5, v5, v6

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x30

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    .line 169
    iget-object v5, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v6, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/renderscript/FieldPacker;->mPos:I

    aget-byte v5, v5, v6

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x28

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    .line 171
    iget-object v5, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v6, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/renderscript/FieldPacker;->mPos:I

    aget-byte v5, v5, v6

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x20

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    .line 173
    iget-object v5, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v6, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/renderscript/FieldPacker;->mPos:I

    aget-byte v5, v5, v6

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x18

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    .line 175
    iget-object v5, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v6, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/renderscript/FieldPacker;->mPos:I

    aget-byte v5, v5, v6

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x10

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    .line 177
    iget-object v5, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v6, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/renderscript/FieldPacker;->mPos:I

    aget-byte v5, v5, v6

    int-to-long v5, v5

    and-long/2addr v5, v3

    shl-long/2addr v5, v0

    or-long v0, v1, v5

    .line 179
    iget-object v2, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v5, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Landroid/renderscript/FieldPacker;->mPos:I

    aget-byte p0, v2, v5

    int-to-long v5, p0

    and-long v2, v5, v3

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public subI8()B
    .locals 3

    const/4 v0, 0x1

    .line 111
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->subalign(I)V

    .line 112
    iget-object v1, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    sub-int/2addr v2, v0

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    aget-byte p0, v1, v2

    return p0
.end method

.method public subInt2()Landroid/renderscript/Int2;
    .locals 2

    .line 518
    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    .line 519
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    move-result v1

    iput v1, v0, Landroid/renderscript/Int2;->y:I

    .line 520
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    move-result p0

    iput p0, v0, Landroid/renderscript/Int2;->x:I

    return-object v0
.end method

.method public subInt3()Landroid/renderscript/Int3;
    .locals 2

    .line 524
    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    .line 525
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    move-result v1

    iput v1, v0, Landroid/renderscript/Int3;->z:I

    .line 526
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    move-result v1

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    .line 527
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    move-result p0

    iput p0, v0, Landroid/renderscript/Int3;->x:I

    return-object v0
.end method

.method public subInt4()Landroid/renderscript/Int4;
    .locals 2

    .line 531
    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    .line 532
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    move-result v1

    iput v1, v0, Landroid/renderscript/Int4;->w:I

    .line 533
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    move-result v1

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    .line 534
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    move-result v1

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    .line 535
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    move-result p0

    iput p0, v0, Landroid/renderscript/Int4;->x:I

    return-object v0
.end method

.method public subLong2()Landroid/renderscript/Long2;
    .locals 3

    .line 540
    new-instance v0, Landroid/renderscript/Long2;

    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    .line 541
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Long2;->y:J

    .line 542
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Long2;->x:J

    return-object v0
.end method

.method public subLong3()Landroid/renderscript/Long3;
    .locals 3

    .line 546
    new-instance v0, Landroid/renderscript/Long3;

    invoke-direct {v0}, Landroid/renderscript/Long3;-><init>()V

    .line 547
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Long3;->z:J

    .line 548
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Long3;->y:J

    .line 549
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Long3;->x:J

    return-object v0
.end method

.method public subLong4()Landroid/renderscript/Long4;
    .locals 3

    .line 553
    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    .line 554
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Long4;->w:J

    .line 555
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Long4;->z:J

    .line 556
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Long4;->y:J

    .line 557
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Long4;->x:J

    return-object v0
.end method

.method public subMatrix2f()Landroid/renderscript/Matrix2f;
    .locals 4

    .line 598
    new-instance v0, Landroid/renderscript/Matrix2f;

    invoke-direct {v0}, Landroid/renderscript/Matrix2f;-><init>()V

    .line 599
    iget-object v1, v0, Landroid/renderscript/Matrix2f;->mMat:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 600
    iget-object v2, v0, Landroid/renderscript/Matrix2f;->mMat:[F

    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public subMatrix3f()Landroid/renderscript/Matrix3f;
    .locals 4

    .line 584
    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    .line 585
    iget-object v1, v0, Landroid/renderscript/Matrix3f;->mMat:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 586
    iget-object v2, v0, Landroid/renderscript/Matrix3f;->mMat:[F

    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public subMatrix4f()Landroid/renderscript/Matrix4f;
    .locals 4

    .line 570
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 571
    iget-object v1, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 572
    iget-object v2, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public subShort2()Landroid/renderscript/Short2;
    .locals 2

    .line 496
    new-instance v0, Landroid/renderscript/Short2;

    invoke-direct {v0}, Landroid/renderscript/Short2;-><init>()V

    .line 497
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI16()S

    move-result v1

    iput-short v1, v0, Landroid/renderscript/Short2;->y:S

    .line 498
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI16()S

    move-result p0

    iput-short p0, v0, Landroid/renderscript/Short2;->x:S

    return-object v0
.end method

.method public subShort3()Landroid/renderscript/Short3;
    .locals 2

    .line 502
    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    .line 503
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI16()S

    move-result v1

    iput-short v1, v0, Landroid/renderscript/Short3;->z:S

    .line 504
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI16()S

    move-result v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    .line 505
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI16()S

    move-result p0

    iput-short p0, v0, Landroid/renderscript/Short3;->x:S

    return-object v0
.end method

.method public subShort4()Landroid/renderscript/Short4;
    .locals 2

    .line 509
    new-instance v0, Landroid/renderscript/Short4;

    invoke-direct {v0}, Landroid/renderscript/Short4;-><init>()V

    .line 510
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI16()S

    move-result v1

    iput-short v1, v0, Landroid/renderscript/Short4;->w:S

    .line 511
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI16()S

    move-result v1

    iput-short v1, v0, Landroid/renderscript/Short4;->z:S

    .line 512
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI16()S

    move-result v1

    iput-short v1, v0, Landroid/renderscript/Short4;->y:S

    .line 513
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI16()S

    move-result p0

    iput-short p0, v0, Landroid/renderscript/Short4;->x:S

    return-object v0
.end method

.method public subalign(I)V
    .locals 2

    add-int/lit8 v0, p1, -0x1

    and-int v1, p1, v0

    if-nez v1, :cond_2

    .line 75
    :goto_0
    iget p1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    and-int/2addr p1, v0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 76
    iget p1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    sub-int/2addr p1, v1

    iput p1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    goto :goto_0

    .line 79
    :cond_0
    iget p1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    if-lez p1, :cond_1

    .line 80
    :goto_1
    iget-object p1, p0, Landroid/renderscript/FieldPacker;->mAlignment:Ljava/util/BitSet;

    iget v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-ne p1, v1, :cond_1

    .line 81
    iget p1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    sub-int/2addr p1, v1

    iput p1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    .line 82
    iget-object p1, p0, Landroid/renderscript/FieldPacker;->mAlignment:Ljava/util/BitSet;

    iget v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->flip(I)V

    goto :goto_1

    :cond_1
    return-void

    .line 72
    :cond_2
    new-instance p0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "argument must be a non-negative non-zero power of 2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
