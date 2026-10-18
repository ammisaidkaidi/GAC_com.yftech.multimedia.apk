.class public final Landroid/util/Rational;
.super Ljava/lang/Number;
.source "Rational.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Landroid/util/Rational;",
        ">;"
    }
.end annotation


# static fields
.field public static final NEGATIVE_INFINITY:Landroid/util/Rational;

.field public static final NaN:Landroid/util/Rational;

.field public static final POSITIVE_INFINITY:Landroid/util/Rational;

.field public static final ZERO:Landroid/util/Rational;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mDenominator:I

.field private final mNumerator:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 40
    new-instance v0, Landroid/util/Rational;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/util/Rational;-><init>(II)V

    sput-object v0, Landroid/util/Rational;->NaN:Landroid/util/Rational;

    .line 48
    new-instance v0, Landroid/util/Rational;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/util/Rational;-><init>(II)V

    sput-object v0, Landroid/util/Rational;->POSITIVE_INFINITY:Landroid/util/Rational;

    .line 56
    new-instance v0, Landroid/util/Rational;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v1}, Landroid/util/Rational;-><init>(II)V

    sput-object v0, Landroid/util/Rational;->NEGATIVE_INFINITY:Landroid/util/Rational;

    .line 64
    new-instance v0, Landroid/util/Rational;

    invoke-direct {v0, v1, v2}, Landroid/util/Rational;-><init>(II)V

    sput-object v0, Landroid/util/Rational;->ZERO:Landroid/util/Rational;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 101
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    if-gez p2, :cond_0

    neg-int p1, p1

    neg-int p2, p2

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_1

    if-lez p1, :cond_1

    .line 110
    iput v0, p0, Landroid/util/Rational;->mNumerator:I

    .line 111
    iput v1, p0, Landroid/util/Rational;->mDenominator:I

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    if-gez p1, :cond_2

    const/4 p1, -0x1

    .line 113
    iput p1, p0, Landroid/util/Rational;->mNumerator:I

    .line 114
    iput v1, p0, Landroid/util/Rational;->mDenominator:I

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    if-nez p1, :cond_3

    .line 116
    iput v1, p0, Landroid/util/Rational;->mNumerator:I

    .line 117
    iput v1, p0, Landroid/util/Rational;->mDenominator:I

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    .line 119
    iput v1, p0, Landroid/util/Rational;->mNumerator:I

    .line 120
    iput v0, p0, Landroid/util/Rational;->mDenominator:I

    goto :goto_0

    .line 122
    :cond_4
    invoke-static {p1, p2}, Landroid/util/Rational;->gcd(II)I

    move-result v0

    .line 124
    div-int/2addr p1, v0

    iput p1, p0, Landroid/util/Rational;->mNumerator:I

    .line 125
    div-int/2addr p2, v0

    iput p2, p0, Landroid/util/Rational;->mDenominator:I

    :goto_0
    return-void
.end method

.method private equals(Landroid/util/Rational;)Z
    .locals 2

    .line 244
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    iget v1, p1, Landroid/util/Rational;->mNumerator:I

    if-ne v0, v1, :cond_0

    iget p0, p0, Landroid/util/Rational;->mDenominator:I

    iget p1, p1, Landroid/util/Rational;->mDenominator:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static gcd(II)I
    .locals 1

    :goto_0
    move v0, p1

    move p1, p0

    move p0, v0

    if-eqz p0, :cond_0

    .line 320
    rem-int/2addr p1, p0

    goto :goto_0

    .line 324
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method

.method private static invalidRational(Ljava/lang/String;)Ljava/lang/NumberFormatException;
    .locals 3

    .line 545
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Rational: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isNegInf()Z
    .locals 1

    .line 206
    iget v0, p0, Landroid/util/Rational;->mDenominator:I

    if-nez v0, :cond_0

    iget p0, p0, Landroid/util/Rational;->mNumerator:I

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPosInf()Z
    .locals 1

    .line 202
    iget v0, p0, Landroid/util/Rational;->mDenominator:I

    if-nez v0, :cond_0

    iget p0, p0, Landroid/util/Rational;->mNumerator:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static parseRational(Ljava/lang/String;)Landroid/util/Rational;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const-string/jumbo v0, "string must not be null"

    .line 578
    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "NaN"

    .line 580
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    sget-object p0, Landroid/util/Rational;->NaN:Landroid/util/Rational;

    return-object p0

    :cond_0
    const-string v0, "Infinity"

    .line 582
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 583
    sget-object p0, Landroid/util/Rational;->POSITIVE_INFINITY:Landroid/util/Rational;

    return-object p0

    :cond_1
    const-string v0, "-Infinity"

    .line 584
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 585
    sget-object p0, Landroid/util/Rational;->NEGATIVE_INFINITY:Landroid/util/Rational;

    return-object p0

    :cond_2
    const/16 v0, 0x3a

    .line 588
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_3

    const/16 v0, 0x2f

    .line 590
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    :cond_3
    if-ltz v0, :cond_4

    .line 596
    :try_start_0
    new-instance v1, Landroid/util/Rational;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    .line 597
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/util/Rational;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 599
    :catch_0
    invoke-static {p0}, Landroid/util/Rational;->invalidRational(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object p0

    throw p0

    .line 593
    :cond_4
    invoke-static {p0}, Landroid/util/Rational;->invalidRational(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object p0

    throw p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 514
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 524
    iget p1, p0, Landroid/util/Rational;->mNumerator:I

    const/4 v0, 0x1

    if-nez p1, :cond_2

    .line 525
    iget p1, p0, Landroid/util/Rational;->mDenominator:I

    if-eq p1, v0, :cond_1

    iget p0, p0, Landroid/util/Rational;->mDenominator:I

    if-nez p0, :cond_0

    goto :goto_0

    .line 528
    :cond_0
    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Rational must be deserialized from a reduced form for zero values"

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void

    .line 530
    :cond_2
    iget p1, p0, Landroid/util/Rational;->mDenominator:I

    if-nez p1, :cond_5

    .line 531
    iget p1, p0, Landroid/util/Rational;->mNumerator:I

    if-eq p1, v0, :cond_4

    iget p0, p0, Landroid/util/Rational;->mNumerator:I

    const/4 p1, -0x1

    if-ne p0, p1, :cond_3

    goto :goto_1

    .line 534
    :cond_3
    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Rational must be deserialized from a reduced form for infinity values"

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    return-void

    .line 537
    :cond_5
    iget p1, p0, Landroid/util/Rational;->mNumerator:I

    iget p0, p0, Landroid/util/Rational;->mDenominator:I

    invoke-static {p1, p0}, Landroid/util/Rational;->gcd(II)I

    move-result p0

    if-gt p0, v0, :cond_6

    return-void

    .line 538
    :cond_6
    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Rational must be deserialized from a reduced form for finite values"

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public compareTo(Landroid/util/Rational;)I
    .locals 8

    const-string v0, "another must not be null"

    .line 467
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    invoke-direct {p0, p1}, Landroid/util/Rational;->equals(Landroid/util/Rational;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 471
    :cond_0
    invoke-virtual {p0}, Landroid/util/Rational;->isNaN()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 473
    :cond_1
    invoke-virtual {p1}, Landroid/util/Rational;->isNaN()Z

    move-result v0

    const/4 v3, -0x1

    if-eqz v0, :cond_2

    return v3

    .line 475
    :cond_2
    invoke-direct {p0}, Landroid/util/Rational;->isPosInf()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p1}, Landroid/util/Rational;->isNegInf()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 477
    :cond_3
    invoke-direct {p0}, Landroid/util/Rational;->isNegInf()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p1}, Landroid/util/Rational;->isPosInf()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 484
    :cond_4
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    int-to-long v4, v0

    iget v0, p1, Landroid/util/Rational;->mDenominator:I

    int-to-long v6, v0

    mul-long/2addr v4, v6

    .line 485
    iget p1, p1, Landroid/util/Rational;->mNumerator:I

    int-to-long v6, p1

    iget p0, p0, Landroid/util/Rational;->mDenominator:I

    int-to-long p0, p0

    mul-long/2addr v6, p0

    cmp-long p0, v4, v6

    if-gez p0, :cond_5

    return v3

    :cond_5
    if-lez p0, :cond_6

    return v2

    :cond_6
    return v1

    :cond_7
    :goto_0
    return v3

    :cond_8
    :goto_1
    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 29
    check-cast p1, Landroid/util/Rational;

    invoke-virtual {p0, p1}, Landroid/util/Rational;->compareTo(Landroid/util/Rational;)I

    move-result p0

    return p0
.end method

.method public doubleValue()D
    .locals 4

    .line 338
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    int-to-double v0, v0

    .line 339
    iget p0, p0, Landroid/util/Rational;->mDenominator:I

    int-to-double v2, p0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 240
    instance-of v0, p1, Landroid/util/Rational;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/util/Rational;

    invoke-direct {p0, p1}, Landroid/util/Rational;->equals(Landroid/util/Rational;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public floatValue()F
    .locals 1

    .line 355
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    int-to-float v0, v0

    .line 356
    iget p0, p0, Landroid/util/Rational;->mDenominator:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public getDenominator()I
    .locals 0

    .line 149
    iget p0, p0, Landroid/util/Rational;->mDenominator:I

    return p0
.end method

.method public getNumerator()I
    .locals 0

    .line 136
    iget p0, p0, Landroid/util/Rational;->mNumerator:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    .line 290
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Landroid/util/Rational;->mNumerator:I

    ushr-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 292
    iget p0, p0, Landroid/util/Rational;->mDenominator:I

    xor-int/2addr p0, v0

    return p0
.end method

.method public intValue()I
    .locals 1

    .line 384
    invoke-direct {p0}, Landroid/util/Rational;->isPosInf()Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, 0x7fffffff

    return p0

    .line 386
    :cond_0
    invoke-direct {p0}, Landroid/util/Rational;->isNegInf()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 p0, -0x80000000

    return p0

    .line 388
    :cond_1
    invoke-virtual {p0}, Landroid/util/Rational;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    return p0

    .line 391
    :cond_2
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    iget p0, p0, Landroid/util/Rational;->mDenominator:I

    div-int/2addr v0, p0

    return v0
.end method

.method public isFinite()Z
    .locals 0

    .line 186
    iget p0, p0, Landroid/util/Rational;->mDenominator:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInfinite()Z
    .locals 1

    .line 173
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    if-eqz v0, :cond_0

    iget p0, p0, Landroid/util/Rational;->mDenominator:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNaN()Z
    .locals 1

    .line 161
    iget v0, p0, Landroid/util/Rational;->mDenominator:I

    if-nez v0, :cond_0

    iget p0, p0, Landroid/util/Rational;->mNumerator:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isZero()Z
    .locals 1

    .line 198
    invoke-virtual {p0}, Landroid/util/Rational;->isFinite()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Landroid/util/Rational;->mNumerator:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public longValue()J
    .locals 2

    .line 418
    invoke-direct {p0}, Landroid/util/Rational;->isPosInf()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 420
    :cond_0
    invoke-direct {p0}, Landroid/util/Rational;->isNegInf()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 422
    :cond_1
    invoke-virtual {p0}, Landroid/util/Rational;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x0

    return-wide v0

    .line 425
    :cond_2
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    iget p0, p0, Landroid/util/Rational;->mDenominator:I

    div-int/2addr v0, p0

    int-to-long v0, v0

    return-wide v0
.end method

.method public shortValue()S
    .locals 0

    .line 440
    invoke-virtual {p0}, Landroid/util/Rational;->intValue()I

    move-result p0

    int-to-short p0, p0

    return p0
.end method

.method public toFloat()F
    .locals 0

    .line 281
    invoke-virtual {p0}, Landroid/util/Rational;->floatValue()F

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 262
    invoke-virtual {p0}, Landroid/util/Rational;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "NaN"

    return-object p0

    .line 264
    :cond_0
    invoke-direct {p0}, Landroid/util/Rational;->isPosInf()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Infinity"

    return-object p0

    .line 266
    :cond_1
    invoke-direct {p0}, Landroid/util/Rational;->isNegInf()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "-Infinity"

    return-object p0

    .line 269
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/util/Rational;->mNumerator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/util/Rational;->mDenominator:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
