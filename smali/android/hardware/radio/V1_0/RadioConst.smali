.class public final Landroid/hardware/radio/V1_0/RadioConst;
.super Ljava/lang/Object;
.source "RadioConst.java"


# static fields
.field public static final CARD_MAX_APPS:I = 0x8

.field public static final CDMA_ALPHA_INFO_BUFFER_LENGTH:I = 0x40

.field public static final CDMA_MAX_NUMBER_OF_INFO_RECS:I = 0xa

.field public static final CDMA_NUMBER_INFO_BUFFER_LENGTH:I = 0x51

.field public static final MAX_CLIENT_ID_LENGTH:I = 0x2

.field public static final MAX_DEBUG_SOCKET_NAME_LENGTH:I = 0xc

.field public static final MAX_QEMU_PIPE_NAME_LENGTH:I = 0xb

.field public static final MAX_RILDS:I = 0x3

.field public static final MAX_SOCKET_NAME_LENGTH:I = 0x6

.field public static final MAX_UUID_LENGTH:I = 0x40

.field public static final NUM_SERVICE_CLASSES:I = 0x7

.field public static final NUM_TX_POWER_LEVELS:I = 0x5

.field public static final SS_INFO_MAX:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 6

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p0, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_0

    const-string v3, "CDMA_ALPHA_INFO_BUFFER_LENGTH"

    .line 65
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    and-int/lit8 v4, p0, 0x51

    const/16 v5, 0x51

    if-ne v4, v5, :cond_1

    const-string v4, "CDMA_NUMBER_INFO_BUFFER_LENGTH"

    .line 69
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v3, v3, 0x51

    :cond_1
    and-int/lit8 v4, p0, 0x3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    const-string v4, "MAX_RILDS"

    .line 73
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v3, v3, 0x3

    :cond_2
    and-int/lit8 v4, p0, 0x6

    const/4 v5, 0x6

    if-ne v4, v5, :cond_3

    const-string v4, "MAX_SOCKET_NAME_LENGTH"

    .line 77
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v3, v3, 0x6

    :cond_3
    and-int/lit8 v4, p0, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    const-string v4, "MAX_CLIENT_ID_LENGTH"

    .line 81
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v3, v3, 0x2

    :cond_4
    and-int/lit8 v4, p0, 0xc

    const/16 v5, 0xc

    if-ne v4, v5, :cond_5

    const-string v4, "MAX_DEBUG_SOCKET_NAME_LENGTH"

    .line 85
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v3, v3, 0xc

    :cond_5
    and-int/lit8 v4, p0, 0xb

    const/16 v5, 0xb

    if-ne v4, v5, :cond_6

    const-string v4, "MAX_QEMU_PIPE_NAME_LENGTH"

    .line 89
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v3, v3, 0xb

    :cond_6
    if-ne v1, v2, :cond_7

    const-string v1, "MAX_UUID_LENGTH"

    .line 93
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v3, v3, 0x40

    :cond_7
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_8

    const-string v1, "CARD_MAX_APPS"

    .line 97
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v3, v3, 0x8

    :cond_8
    and-int/lit8 v1, p0, 0xa

    const/16 v2, 0xa

    if-ne v1, v2, :cond_9

    const-string v1, "CDMA_MAX_NUMBER_OF_INFO_RECS"

    .line 101
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v3, v3, 0xa

    :cond_9
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_a

    const-string v1, "SS_INFO_MAX"

    .line 105
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v3, v3, 0x4

    :cond_a
    and-int/lit8 v1, p0, 0x7

    const/4 v2, 0x7

    if-ne v1, v2, :cond_b

    const-string v1, "NUM_SERVICE_CLASSES"

    .line 109
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v3, v3, 0x7

    :cond_b
    and-int/lit8 v1, p0, 0x5

    const/4 v2, 0x5

    if-ne v1, v2, :cond_c

    const-string v1, "NUM_TX_POWER_LEVELS"

    .line 113
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v3, v3, 0x5

    :cond_c
    if-eq p0, v3, :cond_d

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v2, v3

    and-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    const-string p0, " | "

    .line 119
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x40

    if-ne p0, v0, :cond_0

    const-string p0, "CDMA_ALPHA_INFO_BUFFER_LENGTH"

    return-object p0

    :cond_0
    const/16 v1, 0x51

    if-ne p0, v1, :cond_1

    const-string p0, "CDMA_NUMBER_INFO_BUFFER_LENGTH"

    return-object p0

    :cond_1
    const/4 v1, 0x3

    if-ne p0, v1, :cond_2

    const-string p0, "MAX_RILDS"

    return-object p0

    :cond_2
    const/4 v1, 0x6

    if-ne p0, v1, :cond_3

    const-string p0, "MAX_SOCKET_NAME_LENGTH"

    return-object p0

    :cond_3
    const/4 v1, 0x2

    if-ne p0, v1, :cond_4

    const-string p0, "MAX_CLIENT_ID_LENGTH"

    return-object p0

    :cond_4
    const/16 v1, 0xc

    if-ne p0, v1, :cond_5

    const-string p0, "MAX_DEBUG_SOCKET_NAME_LENGTH"

    return-object p0

    :cond_5
    const/16 v1, 0xb

    if-ne p0, v1, :cond_6

    const-string p0, "MAX_QEMU_PIPE_NAME_LENGTH"

    return-object p0

    :cond_6
    if-ne p0, v0, :cond_7

    const-string p0, "MAX_UUID_LENGTH"

    return-object p0

    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    const-string p0, "CARD_MAX_APPS"

    return-object p0

    :cond_8
    const/16 v0, 0xa

    if-ne p0, v0, :cond_9

    const-string p0, "CDMA_MAX_NUMBER_OF_INFO_RECS"

    return-object p0

    :cond_9
    const/4 v0, 0x4

    if-ne p0, v0, :cond_a

    const-string p0, "SS_INFO_MAX"

    return-object p0

    :cond_a
    const/4 v0, 0x7

    if-ne p0, v0, :cond_b

    const-string p0, "NUM_SERVICE_CLASSES"

    return-object p0

    :cond_b
    const/4 v0, 0x5

    if-ne p0, v0, :cond_c

    const-string p0, "NUM_TX_POWER_LEVELS"

    return-object p0

    .line 58
    :cond_c
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
