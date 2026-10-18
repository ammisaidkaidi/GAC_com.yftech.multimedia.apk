.class public final Landroid/hardware/radio/V1_0/NvItem;
.super Ljava/lang/Object;
.source "NvItem.java"


# static fields
.field public static final CDMA_1X_ADVANCED_ENABLED:I = 0x39

.field public static final CDMA_ACCOLC:I = 0x4

.field public static final CDMA_BC10:I = 0x34

.field public static final CDMA_BC14:I = 0x35

.field public static final CDMA_EHRPD_ENABLED:I = 0x3a

.field public static final CDMA_EHRPD_FORCED:I = 0x3b

.field public static final CDMA_MDN:I = 0x3

.field public static final CDMA_MEID:I = 0x1

.field public static final CDMA_MIN:I = 0x2

.field public static final CDMA_PRL_VERSION:I = 0x33

.field public static final CDMA_SO68:I = 0x36

.field public static final CDMA_SO73_COP0:I = 0x37

.field public static final CDMA_SO73_COP1TO7:I = 0x38

.field public static final DEVICE_MSL:I = 0xb

.field public static final LTE_BAND_ENABLE_25:I = 0x47

.field public static final LTE_BAND_ENABLE_26:I = 0x48

.field public static final LTE_BAND_ENABLE_41:I = 0x49

.field public static final LTE_HIDDEN_BAND_PRIORITY_25:I = 0x4d

.field public static final LTE_HIDDEN_BAND_PRIORITY_26:I = 0x4e

.field public static final LTE_HIDDEN_BAND_PRIORITY_41:I = 0x4f

.field public static final LTE_SCAN_PRIORITY_25:I = 0x4a

.field public static final LTE_SCAN_PRIORITY_26:I = 0x4b

.field public static final LTE_SCAN_PRIORITY_41:I = 0x4c

.field public static final MIP_PROFILE_AAA_AUTH:I = 0x21

.field public static final MIP_PROFILE_AAA_SPI:I = 0x27

.field public static final MIP_PROFILE_HA_AUTH:I = 0x22

.field public static final MIP_PROFILE_HA_SPI:I = 0x26

.field public static final MIP_PROFILE_HOME_ADDRESS:I = 0x20

.field public static final MIP_PROFILE_MN_AAA_SS:I = 0x29

.field public static final MIP_PROFILE_MN_HA_SS:I = 0x28

.field public static final MIP_PROFILE_NAI:I = 0x1f

.field public static final MIP_PROFILE_PRI_HA_ADDR:I = 0x23

.field public static final MIP_PROFILE_REV_TUN_PREF:I = 0x25

.field public static final MIP_PROFILE_SEC_HA_ADDR:I = 0x24

.field public static final OMADM_HFA_LEVEL:I = 0x12

.field public static final RTN_ACTIVATION_DATE:I = 0xd

.field public static final RTN_LIFE_CALLS:I = 0xf

.field public static final RTN_LIFE_DATA_RX:I = 0x11

.field public static final RTN_LIFE_DATA_TX:I = 0x10

.field public static final RTN_LIFE_TIMER:I = 0xe

.field public static final RTN_RECONDITIONED_STATUS:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "CDMA_MEID"

    .line 177
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    const-string v1, "CDMA_MIN"

    .line 181
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2

    :cond_1
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    const-string v1, "CDMA_MDN"

    .line 185
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x3

    :cond_2
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3

    const-string v1, "CDMA_ACCOLC"

    .line 189
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x4

    :cond_3
    and-int/lit8 v1, p0, 0xb

    const/16 v3, 0xb

    if-ne v1, v3, :cond_4

    const-string v1, "DEVICE_MSL"

    .line 193
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xb

    :cond_4
    and-int/lit8 v1, p0, 0xc

    const/16 v3, 0xc

    if-ne v1, v3, :cond_5

    const-string v1, "RTN_RECONDITIONED_STATUS"

    .line 197
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xc

    :cond_5
    and-int/lit8 v1, p0, 0xd

    const/16 v3, 0xd

    if-ne v1, v3, :cond_6

    const-string v1, "RTN_ACTIVATION_DATE"

    .line 201
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xd

    :cond_6
    and-int/lit8 v1, p0, 0xe

    const/16 v3, 0xe

    if-ne v1, v3, :cond_7

    const-string v1, "RTN_LIFE_TIMER"

    .line 205
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xe

    :cond_7
    and-int/lit8 v1, p0, 0xf

    const/16 v3, 0xf

    if-ne v1, v3, :cond_8

    const-string v1, "RTN_LIFE_CALLS"

    .line 209
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xf

    :cond_8
    and-int/lit8 v1, p0, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_9

    const-string v1, "RTN_LIFE_DATA_TX"

    .line 213
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x10

    :cond_9
    and-int/lit8 v1, p0, 0x11

    const/16 v3, 0x11

    if-ne v1, v3, :cond_a

    const-string v1, "RTN_LIFE_DATA_RX"

    .line 217
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x11

    :cond_a
    and-int/lit8 v1, p0, 0x12

    const/16 v3, 0x12

    if-ne v1, v3, :cond_b

    const-string v1, "OMADM_HFA_LEVEL"

    .line 221
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x12

    :cond_b
    and-int/lit8 v1, p0, 0x1f

    const/16 v3, 0x1f

    if-ne v1, v3, :cond_c

    const-string v1, "MIP_PROFILE_NAI"

    .line 225
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x1f

    :cond_c
    and-int/lit8 v1, p0, 0x20

    const/16 v3, 0x20

    if-ne v1, v3, :cond_d

    const-string v1, "MIP_PROFILE_HOME_ADDRESS"

    .line 229
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x20

    :cond_d
    and-int/lit8 v1, p0, 0x21

    const/16 v3, 0x21

    if-ne v1, v3, :cond_e

    const-string v1, "MIP_PROFILE_AAA_AUTH"

    .line 233
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x21

    :cond_e
    and-int/lit8 v1, p0, 0x22

    const/16 v3, 0x22

    if-ne v1, v3, :cond_f

    const-string v1, "MIP_PROFILE_HA_AUTH"

    .line 237
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x22

    :cond_f
    and-int/lit8 v1, p0, 0x23

    const/16 v3, 0x23

    if-ne v1, v3, :cond_10

    const-string v1, "MIP_PROFILE_PRI_HA_ADDR"

    .line 241
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x23

    :cond_10
    and-int/lit8 v1, p0, 0x24

    const/16 v3, 0x24

    if-ne v1, v3, :cond_11

    const-string v1, "MIP_PROFILE_SEC_HA_ADDR"

    .line 245
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x24

    :cond_11
    and-int/lit8 v1, p0, 0x25

    const/16 v3, 0x25

    if-ne v1, v3, :cond_12

    const-string v1, "MIP_PROFILE_REV_TUN_PREF"

    .line 249
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x25

    :cond_12
    and-int/lit8 v1, p0, 0x26

    const/16 v3, 0x26

    if-ne v1, v3, :cond_13

    const-string v1, "MIP_PROFILE_HA_SPI"

    .line 253
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x26

    :cond_13
    and-int/lit8 v1, p0, 0x27

    const/16 v3, 0x27

    if-ne v1, v3, :cond_14

    const-string v1, "MIP_PROFILE_AAA_SPI"

    .line 257
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x27

    :cond_14
    and-int/lit8 v1, p0, 0x28

    const/16 v3, 0x28

    if-ne v1, v3, :cond_15

    const-string v1, "MIP_PROFILE_MN_HA_SS"

    .line 261
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x28

    :cond_15
    and-int/lit8 v1, p0, 0x29

    const/16 v3, 0x29

    if-ne v1, v3, :cond_16

    const-string v1, "MIP_PROFILE_MN_AAA_SS"

    .line 265
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x29

    :cond_16
    and-int/lit8 v1, p0, 0x33

    const/16 v3, 0x33

    if-ne v1, v3, :cond_17

    const-string v1, "CDMA_PRL_VERSION"

    .line 269
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x33

    :cond_17
    and-int/lit8 v1, p0, 0x34

    const/16 v3, 0x34

    if-ne v1, v3, :cond_18

    const-string v1, "CDMA_BC10"

    .line 273
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x34

    :cond_18
    and-int/lit8 v1, p0, 0x35

    const/16 v3, 0x35

    if-ne v1, v3, :cond_19

    const-string v1, "CDMA_BC14"

    .line 277
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x35

    :cond_19
    and-int/lit8 v1, p0, 0x36

    const/16 v3, 0x36

    if-ne v1, v3, :cond_1a

    const-string v1, "CDMA_SO68"

    .line 281
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x36

    :cond_1a
    and-int/lit8 v1, p0, 0x37

    const/16 v3, 0x37

    if-ne v1, v3, :cond_1b

    const-string v1, "CDMA_SO73_COP0"

    .line 285
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x37

    :cond_1b
    and-int/lit8 v1, p0, 0x38

    const/16 v3, 0x38

    if-ne v1, v3, :cond_1c

    const-string v1, "CDMA_SO73_COP1TO7"

    .line 289
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x38

    :cond_1c
    and-int/lit8 v1, p0, 0x39

    const/16 v3, 0x39

    if-ne v1, v3, :cond_1d

    const-string v1, "CDMA_1X_ADVANCED_ENABLED"

    .line 293
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x39

    :cond_1d
    and-int/lit8 v1, p0, 0x3a

    const/16 v3, 0x3a

    if-ne v1, v3, :cond_1e

    const-string v1, "CDMA_EHRPD_ENABLED"

    .line 297
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x3a

    :cond_1e
    and-int/lit8 v1, p0, 0x3b

    const/16 v3, 0x3b

    if-ne v1, v3, :cond_1f

    const-string v1, "CDMA_EHRPD_FORCED"

    .line 301
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x3b

    :cond_1f
    and-int/lit8 v1, p0, 0x47

    const/16 v3, 0x47

    if-ne v1, v3, :cond_20

    const-string v1, "LTE_BAND_ENABLE_25"

    .line 305
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x47

    :cond_20
    and-int/lit8 v1, p0, 0x48

    const/16 v3, 0x48

    if-ne v1, v3, :cond_21

    const-string v1, "LTE_BAND_ENABLE_26"

    .line 309
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x48

    :cond_21
    and-int/lit8 v1, p0, 0x49

    const/16 v3, 0x49

    if-ne v1, v3, :cond_22

    const-string v1, "LTE_BAND_ENABLE_41"

    .line 313
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x49

    :cond_22
    and-int/lit8 v1, p0, 0x4a

    const/16 v3, 0x4a

    if-ne v1, v3, :cond_23

    const-string v1, "LTE_SCAN_PRIORITY_25"

    .line 317
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x4a

    :cond_23
    and-int/lit8 v1, p0, 0x4b

    const/16 v3, 0x4b

    if-ne v1, v3, :cond_24

    const-string v1, "LTE_SCAN_PRIORITY_26"

    .line 321
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x4b

    :cond_24
    and-int/lit8 v1, p0, 0x4c

    const/16 v3, 0x4c

    if-ne v1, v3, :cond_25

    const-string v1, "LTE_SCAN_PRIORITY_41"

    .line 325
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x4c

    :cond_25
    and-int/lit8 v1, p0, 0x4d

    const/16 v3, 0x4d

    if-ne v1, v3, :cond_26

    const-string v1, "LTE_HIDDEN_BAND_PRIORITY_25"

    .line 329
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x4d

    :cond_26
    and-int/lit8 v1, p0, 0x4e

    const/16 v3, 0x4e

    if-ne v1, v3, :cond_27

    const-string v1, "LTE_HIDDEN_BAND_PRIORITY_26"

    .line 333
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x4e

    :cond_27
    and-int/lit8 v1, p0, 0x4f

    const/16 v3, 0x4f

    if-ne v1, v3, :cond_28

    const-string v1, "LTE_HIDDEN_BAND_PRIORITY_41"

    .line 337
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x4f

    :cond_28
    if-eq p0, v2, :cond_29

    .line 341
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

    :cond_29
    const-string p0, " | "

    .line 343
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "CDMA_MEID"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "CDMA_MIN"

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string p0, "CDMA_MDN"

    return-object p0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const-string p0, "CDMA_ACCOLC"

    return-object p0

    :cond_3
    const/16 v0, 0xb

    if-ne p0, v0, :cond_4

    const-string p0, "DEVICE_MSL"

    return-object p0

    :cond_4
    const/16 v0, 0xc

    if-ne p0, v0, :cond_5

    const-string p0, "RTN_RECONDITIONED_STATUS"

    return-object p0

    :cond_5
    const/16 v0, 0xd

    if-ne p0, v0, :cond_6

    const-string p0, "RTN_ACTIVATION_DATE"

    return-object p0

    :cond_6
    const/16 v0, 0xe

    if-ne p0, v0, :cond_7

    const-string p0, "RTN_LIFE_TIMER"

    return-object p0

    :cond_7
    const/16 v0, 0xf

    if-ne p0, v0, :cond_8

    const-string p0, "RTN_LIFE_CALLS"

    return-object p0

    :cond_8
    const/16 v0, 0x10

    if-ne p0, v0, :cond_9

    const-string p0, "RTN_LIFE_DATA_TX"

    return-object p0

    :cond_9
    const/16 v0, 0x11

    if-ne p0, v0, :cond_a

    const-string p0, "RTN_LIFE_DATA_RX"

    return-object p0

    :cond_a
    const/16 v0, 0x12

    if-ne p0, v0, :cond_b

    const-string p0, "OMADM_HFA_LEVEL"

    return-object p0

    :cond_b
    const/16 v0, 0x1f

    if-ne p0, v0, :cond_c

    const-string p0, "MIP_PROFILE_NAI"

    return-object p0

    :cond_c
    const/16 v0, 0x20

    if-ne p0, v0, :cond_d

    const-string p0, "MIP_PROFILE_HOME_ADDRESS"

    return-object p0

    :cond_d
    const/16 v0, 0x21

    if-ne p0, v0, :cond_e

    const-string p0, "MIP_PROFILE_AAA_AUTH"

    return-object p0

    :cond_e
    const/16 v0, 0x22

    if-ne p0, v0, :cond_f

    const-string p0, "MIP_PROFILE_HA_AUTH"

    return-object p0

    :cond_f
    const/16 v0, 0x23

    if-ne p0, v0, :cond_10

    const-string p0, "MIP_PROFILE_PRI_HA_ADDR"

    return-object p0

    :cond_10
    const/16 v0, 0x24

    if-ne p0, v0, :cond_11

    const-string p0, "MIP_PROFILE_SEC_HA_ADDR"

    return-object p0

    :cond_11
    const/16 v0, 0x25

    if-ne p0, v0, :cond_12

    const-string p0, "MIP_PROFILE_REV_TUN_PREF"

    return-object p0

    :cond_12
    const/16 v0, 0x26

    if-ne p0, v0, :cond_13

    const-string p0, "MIP_PROFILE_HA_SPI"

    return-object p0

    :cond_13
    const/16 v0, 0x27

    if-ne p0, v0, :cond_14

    const-string p0, "MIP_PROFILE_AAA_SPI"

    return-object p0

    :cond_14
    const/16 v0, 0x28

    if-ne p0, v0, :cond_15

    const-string p0, "MIP_PROFILE_MN_HA_SS"

    return-object p0

    :cond_15
    const/16 v0, 0x29

    if-ne p0, v0, :cond_16

    const-string p0, "MIP_PROFILE_MN_AAA_SS"

    return-object p0

    :cond_16
    const/16 v0, 0x33

    if-ne p0, v0, :cond_17

    const-string p0, "CDMA_PRL_VERSION"

    return-object p0

    :cond_17
    const/16 v0, 0x34

    if-ne p0, v0, :cond_18

    const-string p0, "CDMA_BC10"

    return-object p0

    :cond_18
    const/16 v0, 0x35

    if-ne p0, v0, :cond_19

    const-string p0, "CDMA_BC14"

    return-object p0

    :cond_19
    const/16 v0, 0x36

    if-ne p0, v0, :cond_1a

    const-string p0, "CDMA_SO68"

    return-object p0

    :cond_1a
    const/16 v0, 0x37

    if-ne p0, v0, :cond_1b

    const-string p0, "CDMA_SO73_COP0"

    return-object p0

    :cond_1b
    const/16 v0, 0x38

    if-ne p0, v0, :cond_1c

    const-string p0, "CDMA_SO73_COP1TO7"

    return-object p0

    :cond_1c
    const/16 v0, 0x39

    if-ne p0, v0, :cond_1d

    const-string p0, "CDMA_1X_ADVANCED_ENABLED"

    return-object p0

    :cond_1d
    const/16 v0, 0x3a

    if-ne p0, v0, :cond_1e

    const-string p0, "CDMA_EHRPD_ENABLED"

    return-object p0

    :cond_1e
    const/16 v0, 0x3b

    if-ne p0, v0, :cond_1f

    const-string p0, "CDMA_EHRPD_FORCED"

    return-object p0

    :cond_1f
    const/16 v0, 0x47

    if-ne p0, v0, :cond_20

    const-string p0, "LTE_BAND_ENABLE_25"

    return-object p0

    :cond_20
    const/16 v0, 0x48

    if-ne p0, v0, :cond_21

    const-string p0, "LTE_BAND_ENABLE_26"

    return-object p0

    :cond_21
    const/16 v0, 0x49

    if-ne p0, v0, :cond_22

    const-string p0, "LTE_BAND_ENABLE_41"

    return-object p0

    :cond_22
    const/16 v0, 0x4a

    if-ne p0, v0, :cond_23

    const-string p0, "LTE_SCAN_PRIORITY_25"

    return-object p0

    :cond_23
    const/16 v0, 0x4b

    if-ne p0, v0, :cond_24

    const-string p0, "LTE_SCAN_PRIORITY_26"

    return-object p0

    :cond_24
    const/16 v0, 0x4c

    if-ne p0, v0, :cond_25

    const-string p0, "LTE_SCAN_PRIORITY_41"

    return-object p0

    :cond_25
    const/16 v0, 0x4d

    if-ne p0, v0, :cond_26

    const-string p0, "LTE_HIDDEN_BAND_PRIORITY_25"

    return-object p0

    :cond_26
    const/16 v0, 0x4e

    if-ne p0, v0, :cond_27

    const-string p0, "LTE_HIDDEN_BAND_PRIORITY_26"

    return-object p0

    :cond_27
    const/16 v0, 0x4f

    if-ne p0, v0, :cond_28

    const-string p0, "LTE_HIDDEN_BAND_PRIORITY_41"

    return-object p0

    .line 170
    :cond_28
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
