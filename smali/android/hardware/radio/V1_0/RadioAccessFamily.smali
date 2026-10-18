.class public final Landroid/hardware/radio/V1_0/RadioAccessFamily;
.super Ljava/lang/Object;
.source "RadioAccessFamily.java"


# static fields
.field public static final EDGE:I = 0x4

.field public static final EHRPD:I = 0x2000

.field public static final EVDO_0:I = 0x80

.field public static final EVDO_A:I = 0x100

.field public static final EVDO_B:I = 0x1000

.field public static final GPRS:I = 0x2

.field public static final GSM:I = 0x10000

.field public static final HSDPA:I = 0x200

.field public static final HSPA:I = 0x800

.field public static final HSPAP:I = 0x8000

.field public static final HSUPA:I = 0x400

.field public static final IS95A:I = 0x10

.field public static final IS95B:I = 0x20

.field public static final LTE:I = 0x4000

.field public static final LTE_CA:I = 0x80000

.field public static final ONE_X_RTT:I = 0x40

.field public static final TD_SCDMA:I = 0x20000

.field public static final UMTS:I = 0x8

.field public static final UNKNOWN:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "UNKNOWN"

    .line 89
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    const-string v1, "GPRS"

    .line 93
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2

    :cond_1
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    const-string v1, "EDGE"

    .line 97
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x4

    :cond_2
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_3

    const-string v1, "UMTS"

    .line 101
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x8

    :cond_3
    and-int/lit8 v1, p0, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_4

    const-string v1, "IS95A"

    .line 105
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x10

    :cond_4
    and-int/lit8 v1, p0, 0x20

    const/16 v3, 0x20

    if-ne v1, v3, :cond_5

    const-string v1, "IS95B"

    .line 109
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x20

    :cond_5
    and-int/lit8 v1, p0, 0x40

    const/16 v3, 0x40

    if-ne v1, v3, :cond_6

    const-string v1, "ONE_X_RTT"

    .line 113
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x40

    :cond_6
    and-int/lit16 v1, p0, 0x80

    const/16 v3, 0x80

    if-ne v1, v3, :cond_7

    const-string v1, "EVDO_0"

    .line 117
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x80

    :cond_7
    and-int/lit16 v1, p0, 0x100

    const/16 v3, 0x100

    if-ne v1, v3, :cond_8

    const-string v1, "EVDO_A"

    .line 121
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x100

    :cond_8
    and-int/lit16 v1, p0, 0x200

    const/16 v3, 0x200

    if-ne v1, v3, :cond_9

    const-string v1, "HSDPA"

    .line 125
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x200

    :cond_9
    and-int/lit16 v1, p0, 0x400

    const/16 v3, 0x400

    if-ne v1, v3, :cond_a

    const-string v1, "HSUPA"

    .line 129
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x400

    :cond_a
    and-int/lit16 v1, p0, 0x800

    const/16 v3, 0x800

    if-ne v1, v3, :cond_b

    const-string v1, "HSPA"

    .line 133
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x800

    :cond_b
    and-int/lit16 v1, p0, 0x1000

    const/16 v3, 0x1000

    if-ne v1, v3, :cond_c

    const-string v1, "EVDO_B"

    .line 137
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x1000

    :cond_c
    and-int/lit16 v1, p0, 0x2000

    const/16 v3, 0x2000

    if-ne v1, v3, :cond_d

    const-string v1, "EHRPD"

    .line 141
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x2000

    :cond_d
    and-int/lit16 v1, p0, 0x4000

    const/16 v3, 0x4000

    if-ne v1, v3, :cond_e

    const-string v1, "LTE"

    .line 145
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x4000

    :cond_e
    const v1, 0x8000

    and-int/2addr v1, p0

    const v3, 0x8000

    if-ne v1, v3, :cond_f

    const-string v1, "HSPAP"

    .line 149
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x8000

    or-int/2addr v2, v1

    :cond_f
    const/high16 v1, 0x10000

    and-int/2addr v1, p0

    const/high16 v3, 0x10000

    if-ne v1, v3, :cond_10

    const-string v1, "GSM"

    .line 153
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0x10000

    or-int/2addr v2, v1

    :cond_10
    const/high16 v1, 0x20000

    and-int/2addr v1, p0

    const/high16 v3, 0x20000

    if-ne v1, v3, :cond_11

    const-string v1, "TD_SCDMA"

    .line 157
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0x20000

    or-int/2addr v2, v1

    :cond_11
    const/high16 v1, 0x80000

    and-int/2addr v1, p0

    const/high16 v3, 0x80000

    if-ne v1, v3, :cond_12

    const-string v1, "LTE_CA"

    .line 161
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0x80000

    or-int/2addr v2, v1

    :cond_12
    if-eq p0, v2, :cond_13

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v2, v2

    and-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    const-string p0, " | "

    .line 167
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "GPRS"

    return-object p0

    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    const-string p0, "EDGE"

    return-object p0

    :cond_2
    const/16 v0, 0x8

    if-ne p0, v0, :cond_3

    const-string p0, "UMTS"

    return-object p0

    :cond_3
    const/16 v0, 0x10

    if-ne p0, v0, :cond_4

    const-string p0, "IS95A"

    return-object p0

    :cond_4
    const/16 v0, 0x20

    if-ne p0, v0, :cond_5

    const-string p0, "IS95B"

    return-object p0

    :cond_5
    const/16 v0, 0x40

    if-ne p0, v0, :cond_6

    const-string p0, "ONE_X_RTT"

    return-object p0

    :cond_6
    const/16 v0, 0x80

    if-ne p0, v0, :cond_7

    const-string p0, "EVDO_0"

    return-object p0

    :cond_7
    const/16 v0, 0x100

    if-ne p0, v0, :cond_8

    const-string p0, "EVDO_A"

    return-object p0

    :cond_8
    const/16 v0, 0x200

    if-ne p0, v0, :cond_9

    const-string p0, "HSDPA"

    return-object p0

    :cond_9
    const/16 v0, 0x400

    if-ne p0, v0, :cond_a

    const-string p0, "HSUPA"

    return-object p0

    :cond_a
    const/16 v0, 0x800

    if-ne p0, v0, :cond_b

    const-string p0, "HSPA"

    return-object p0

    :cond_b
    const/16 v0, 0x1000

    if-ne p0, v0, :cond_c

    const-string p0, "EVDO_B"

    return-object p0

    :cond_c
    const/16 v0, 0x2000

    if-ne p0, v0, :cond_d

    const-string p0, "EHRPD"

    return-object p0

    :cond_d
    const/16 v0, 0x4000

    if-ne p0, v0, :cond_e

    const-string p0, "LTE"

    return-object p0

    :cond_e
    const v0, 0x8000

    if-ne p0, v0, :cond_f

    const-string p0, "HSPAP"

    return-object p0

    :cond_f
    const/high16 v0, 0x10000

    if-ne p0, v0, :cond_10

    const-string p0, "GSM"

    return-object p0

    :cond_10
    const/high16 v0, 0x20000

    if-ne p0, v0, :cond_11

    const-string p0, "TD_SCDMA"

    return-object p0

    :cond_11
    const/high16 v0, 0x80000

    if-ne p0, v0, :cond_12

    const-string p0, "LTE_CA"

    return-object p0

    .line 82
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
