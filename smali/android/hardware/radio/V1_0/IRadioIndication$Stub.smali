.class public abstract Landroid/hardware/radio/V1_0/IRadioIndication$Stub;
.super Landroid/os/HwBinder;
.source "IRadioIndication.java"

# interfaces
.implements Landroid/hardware/radio/V1_0/IRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_0/IRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1464
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 2

    .line 1509
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1510
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 1511
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 1512
    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    return-object p0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 1485
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    nop

    :array_0
    .array-data 1
        0x5ct
        -0x72t
        -0x5t
        -0x47t
        -0x3ct
        0x51t
        -0x5bt
        -0x69t
        0x37t
        -0x13t
        0x2ct
        0x6ct
        0x20t
        0x23t
        0xat
        -0x52t
        0x47t
        0x45t
        -0x7dt
        -0x64t
        -0x60t
        0x1dt
        -0x80t
        -0x78t
        -0x2at
        -0x24t
        -0x37t
        0x2t
        0xet
        0x52t
        -0x2et
        -0x3bt
    .end array-data

    :array_1
    .array-data 1
        -0x43t
        -0x26t
        -0x4at
        0x18t
        0x4dt
        0x7at
        0x34t
        0x6dt
        -0x5at
        -0x60t
        0x7dt
        -0x40t
        -0x7et
        -0x74t
        -0xft
        -0x66t
        0x69t
        0x6ft
        0x4ct
        -0x56t
        0x36t
        0x11t
        -0x3bt
        0x1ft
        0x2et
        0x14t
        0x56t
        0x5at
        0x14t
        -0x4ct
        0xft
        -0x27t
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1472
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    const-string v1, "android.hidl.base@1.0::IBase"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "android.hardware.radio@1.0::IRadioIndication"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1518
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_7

    :sswitch_0
    and-int/lit8 p0, p4, 0x1

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_6d

    .line 2376
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2377
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :sswitch_1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    if-eq v1, v2, :cond_2

    .line 2363
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2364
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_2
    const-string p1, "android.hidl.base@1.0::IBase"

    .line 2366
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2368
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->notifySyspropsChanged()V

    goto/16 :goto_7

    :sswitch_2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    if-eqz v2, :cond_4

    .line 2347
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2348
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_4
    const-string p1, "android.hidl.base@1.0::IBase"

    .line 2350
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2352
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 2353
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2354
    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2355
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :sswitch_3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    :goto_1
    if-eqz v2, :cond_6

    .line 2332
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2333
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_6
    const-string p1, "android.hidl.base@1.0::IBase"

    .line 2335
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2337
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->ping()V

    .line 2338
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2339
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :sswitch_4
    and-int/lit8 p0, p4, 0x1

    if-eqz p0, :cond_7

    move v1, v2

    :cond_7
    if-eqz v1, :cond_6d

    .line 2322
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2323
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :sswitch_5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_8

    move v1, v2

    :cond_8
    if-eq v1, v2, :cond_9

    .line 2309
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2310
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_9
    const-string p1, "android.hidl.base@1.0::IBase"

    .line 2312
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2314
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->setHALInstrumentation()V

    goto/16 :goto_7

    :sswitch_6
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    :goto_2
    if-eqz v2, :cond_b

    .line 2276
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2277
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_b
    const-string p1, "android.hidl.base@1.0::IBase"

    .line 2279
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2281
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 2282
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2284
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 2286
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v2, 0x8

    .line 2287
    invoke-virtual {p1, v2, v3, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    .line 2288
    invoke-virtual {p1, v2, v3, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2289
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v0, p2, 0x20

    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    :goto_3
    if-ge v1, p2, :cond_c

    mul-int/lit8 v0, v1, 0x20

    int-to-long v2, v0

    .line 2293
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p4, v2, v3, v0}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_c
    const-wide/16 v0, 0x0

    .line 2297
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2299
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2301
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :sswitch_7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    :goto_4
    if-eqz v2, :cond_e

    .line 2260
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2261
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_e
    const-string p1, "android.hidl.base@1.0::IBase"

    .line 2263
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2265
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 2266
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2267
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2268
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :sswitch_8
    and-int/lit8 p0, p4, 0x1

    if-eqz p0, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    :goto_5
    if-eqz v2, :cond_10

    .line 2246
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2247
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_10
    const-string p0, "android.hidl.base@1.0::IBase"

    .line 2249
    invoke-virtual {p2, p0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2251
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2252
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :sswitch_9
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    :goto_6
    if-eqz v2, :cond_12

    .line 2230
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2231
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_12
    const-string p1, "android.hidl.base@1.0::IBase"

    .line 2233
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2235
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 2236
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2237
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2238
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :pswitch_0
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_13

    move v1, v2

    :cond_13
    if-eq v1, v2, :cond_14

    .line 2215
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2216
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_14
    const-string p1, "android.hardware.radio@1.0::IRadioIndication"

    .line 2218
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2220
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2221
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 2222
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->modemReset(ILjava/lang/String;)V

    goto/16 :goto_7

    :pswitch_1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_15

    move v1, v2

    :cond_15
    if-eq v1, v2, :cond_16

    .line 2199
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2200
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_16
    const-string p1, "android.hardware.radio@1.0::IRadioIndication"

    .line 2202
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2204
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2205
    new-instance p3, Landroid/hardware/radio/V1_0/PcoDataInfo;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/PcoDataInfo;-><init>()V

    .line 2206
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/PcoDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2207
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->pcoData(ILandroid/hardware/radio/V1_0/PcoDataInfo;)V

    goto/16 :goto_7

    :pswitch_2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_17

    move v1, v2

    :cond_17
    if-eq v1, v2, :cond_18

    .line 2183
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2184
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_18
    const-string p1, "android.hardware.radio@1.0::IRadioIndication"

    .line 2186
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2188
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2189
    new-instance p3, Landroid/hardware/radio/V1_0/LceDataInfo;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/LceDataInfo;-><init>()V

    .line 2190
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/LceDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2191
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->lceData(ILandroid/hardware/radio/V1_0/LceDataInfo;)V

    goto/16 :goto_7

    :pswitch_3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_19

    move v1, v2

    :cond_19
    if-eq v1, v2, :cond_1a

    .line 2168
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2169
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_1a
    const-string p1, "android.hardware.radio@1.0::IRadioIndication"

    .line 2171
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2173
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2174
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 2175
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->stkCallControlAlphaNotify(ILjava/lang/String;)V

    goto/16 :goto_7

    :pswitch_4
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1b

    move v1, v2

    :cond_1b
    if-eq v1, v2, :cond_1c

    .line 2152
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2153
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_1c
    const-string p1, "android.hardware.radio@1.0::IRadioIndication"

    .line 2155
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2157
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2158
    new-instance p3, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;-><init>()V

    .line 2159
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2160
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->onSupplementaryServiceIndication(ILandroid/hardware/radio/V1_0/StkCcUnsolSsResult;)V

    goto/16 :goto_7

    :pswitch_5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1d

    move v1, v2

    :cond_1d
    if-eq v1, v2, :cond_1e

    .line 2136
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2137
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_1e
    const-string p1, "android.hardware.radio@1.0::IRadioIndication"

    .line 2139
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2141
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2142
    new-instance p3, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 2143
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2144
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->radioCapabilityIndication(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    goto/16 :goto_7

    :pswitch_6
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1f

    move v1, v2

    :cond_1f
    if-eq v1, v2, :cond_20

    .line 2121
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2122
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_20
    const-string p1, "android.hardware.radio@1.0::IRadioIndication"

    .line 2124
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2126
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2127
    invoke-static {p2}, Landroid/hardware/radio/V1_0/HardwareConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2128
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->hardwareConfigChanged(ILjava/util/ArrayList;)V

    goto/16 :goto_7

    :pswitch_7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_21

    move v1, v2

    :cond_21
    if-eq v1, v2, :cond_22

    .line 2106
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2107
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_22
    const-string p1, "android.hardware.radio@1.0::IRadioIndication"

    .line 2109
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2111
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2112
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2113
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->srvccStateNotify(II)V

    goto/16 :goto_7

    :pswitch_8
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_23

    move v1, v2

    :cond_23
    if-eq v1, v2, :cond_24

    .line 2091
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2092
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_24
    const-string p1, "android.hardware.radio@1.0::IRadioIndication"

    .line 2094
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2096
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2097
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 2098
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->subscriptionStatusChanged(IZ)V

    goto/16 :goto_7

    :pswitch_9
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_25

    move v1, v2

    :cond_25
    if-eq v1, v2, :cond_26

    .line 2077
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2078
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_26
    const-string p1, "android.hardware.radio@1.0::IRadioIndication"

    .line 2080
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2082
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2083
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->imsNetworkStateChanged(I)V

    goto/16 :goto_7

    :pswitch_a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_27

    move v1, v2

    :cond_27
    if-eq v1, v2, :cond_28

    .line 2062
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2063
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_28
    const-string p1, "android.hardware.radio@1.0::IRadioIndication"

    .line 2065
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2067
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2068
    invoke-static {p2}, Landroid/hardware/radio/V1_0/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2069
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->cellInfoList(ILjava/util/ArrayList;)V

    goto/16 :goto_7

    :pswitch_b
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_29

    move v1, v2

    :cond_29
    if-eq v1, v2, :cond_2a

    .line 2047
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2048
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_2a
    const-string p1, "android.hardware.radio@1.0::IRadioIndication"

    .line 2050
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2052
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2053
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2054
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->voiceRadioTechChanged(II)V

    goto/16 :goto_7

    :pswitch_c
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_2b

    move v1, v2

    :cond_2b
    if-eq v1, v2, :cond_2c

    .line 2033
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2034
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_2c
    const-string p1, "android.hardware.radio@1.0::IRadioIndication"

    .line 2036
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2038
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2039
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->rilConnected(I)V

    goto/16 :goto_7

    :pswitch_d
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_2d

    move v1, v2

    :cond_2d
    if-eq v1, v2, :cond_2e

    .line 2019
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2020
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_2e
    const-string p1, "android.hardware.radio@1.0::IRadioIndication"

    .line 2022
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2024
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2025
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->exitEmergencyCallbackMode(I)V

    goto/16 :goto_7

    :pswitch_e
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_2f

    move v1, v2

    :cond_2f
    if-eq v1, v2, :cond_30

    .line 2004
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2005
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_30
    const-string p1, "android.hardware.radio@1.0::IRadioIndication"

    .line 2007
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2009
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2010
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2011
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->cdmaPrlChanged(II)V

    goto/16 :goto_7

    :pswitch_f
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_31

    move v1, v2

    :cond_31
    if-eq v1, v2, :cond_32

    .line 1989
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1990
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_32
    const-string p1, "android.hardware.radio@1.0::IRadioIndication"

    .line 1992
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1994
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1995
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1996
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->cdmaSubscriptionSourceChanged(II)V

    goto/16 :goto_7

    :pswitch_10
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_33

    move v1, v2

    :cond_33
    if-eq v1, v2, :cond_34

    .line 1975
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1976
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_34
    const-string p1, "android.hardware.radio@1.0::IRadioIndication"

    .line 1978
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1980
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1981
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->resendIncallMute(I)V

    goto/16 :goto_7

    :pswitch_11
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_35

    move v1, v2

    :cond_35
    if-eq v1, v2, :cond_36

    .line 1960
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1961
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_36
    const-string p1, "android.hardware.radio@1.0::IRadioIndication"

    .line 1963
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1965
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1966
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 1967
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->indicateRingbackTone(IZ)V

    goto/16 :goto_7

    :pswitch_12
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_37

    move v1, v2

    :cond_37
    if-eq v1, v2, :cond_38

    .line 1944
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1945
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_38
    const-string p1, "android.hardware.radio@1.0::IRadioIndication"

    .line 1947
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1949
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1950
    new-instance p3, Landroid/hardware/radio/V1_0/CdmaInformationRecords;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/CdmaInformationRecords;-><init>()V

    .line 1951
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/CdmaInformationRecords;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1952
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->cdmaInfoRec(ILandroid/hardware/radio/V1_0/CdmaInformationRecords;)V

    goto/16 :goto_7

    :pswitch_13
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_39

    move v1, v2

    :cond_39
    if-eq v1, v2, :cond_3a

    .line 1929
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1930
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_3a
    const-string p1, "android.hardware.radio@1.0::IRadioIndication"

    .line 1932
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1934
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1935
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1936
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->cdmaOtaProvisionStatus(II)V

    goto/16 :goto_7

    :pswitch_14
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3b

    move v1, v2

    :cond_3b
    if-eq v1, v2, :cond_3c

    .line 1913
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1914
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_3c
    const-string p1, "android.hardware.radio@1.0::IRadioIndication"

    .line 1916
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1918
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1919
    new-instance p3, Landroid/hardware/radio/V1_0/CdmaCallWaiting;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;-><init>()V

    .line 1920
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1921
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->cdmaCallWaiting(ILandroid/hardware/radio/V1_0/CdmaCallWaiting;)V

    goto/16 :goto_7

    :pswitch_15
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3d

    move v1, v2

    :cond_3d
    if-eq v1, v2, :cond_3e

    .line 1899
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1900
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_3e
    const-string p1, "android.hardware.radio@1.0::IRadioIndication"

    .line 1902
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1904
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1905
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->enterEmergencyCallbackMode(I)V

    goto/16 :goto_7

    :pswitch_16
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3f

    move v1, v2

    :cond_3f
    if-eq v1, v2, :cond_40

    .line 1884
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1885
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_40
    const-string p1, "android.hardware.radio@1.0::IRadioIndication"

    .line 1887
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1889
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1890
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1891
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->restrictedStateChanged(II)V

    goto/16 :goto_7

    :pswitch_17
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_41

    move v1, v2

    :cond_41
    if-eq v1, v2, :cond_42

    .line 1870
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1871
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_42
    const-string p1, "android.hardware.radio@1.0::IRadioIndication"

    .line 1873
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1875
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1876
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->cdmaRuimSmsStorageFull(I)V

    goto/16 :goto_7

    :pswitch_18
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_43

    move v1, v2

    :cond_43
    if-eq v1, v2, :cond_44

    .line 1855
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1856
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_44
    const-string p1, "android.hardware.radio@1.0::IRadioIndication"

    .line 1858
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1860
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1861
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1862
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->newBroadcastSms(ILjava/util/ArrayList;)V

    goto/16 :goto_7

    :pswitch_19
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_45

    move v1, v2

    :cond_45
    if-eq v1, v2, :cond_46

    .line 1839
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1840
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_46
    const-string p1, "android.hardware.radio@1.0::IRadioIndication"

    .line 1842
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1844
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1845
    new-instance p3, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 1846
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1847
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->cdmaNewSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    goto/16 :goto_7

    :pswitch_1a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_47

    move v1, v2

    :cond_47
    if-eq v1, v2, :cond_48

    .line 1825
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1826
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_48
    const-string p1, "android.hardware.radio@1.0::IRadioIndication"

    .line 1828
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1830
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1831
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->simStatusChanged(I)V

    goto/16 :goto_7

    :pswitch_1b
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_49

    move v1, v2

    :cond_49
    if-eq v1, v2, :cond_4a

    .line 1808
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1809
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_4a
    const-string p1, "android.hardware.radio@1.0::IRadioIndication"

    .line 1811
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1813
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1814
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p3

    .line 1815
    new-instance p4, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    invoke-direct {p4}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;-><init>()V

    .line 1816
    invoke-virtual {p4, p2}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1817
    invoke-virtual {p0, p1, p3, p4}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->callRing(IZLandroid/hardware/radio/V1_0/CdmaSignalInfoRecord;)V

    goto/16 :goto_7

    :pswitch_1c
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_4b

    move v1, v2

    :cond_4b
    if-eq v1, v2, :cond_4c

    .line 1792
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1793
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_4c
    const-string p1, "android.hardware.radio@1.0::IRadioIndication"

    .line 1795
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1797
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1798
    new-instance p3, Landroid/hardware/radio/V1_0/SimRefreshResult;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/SimRefreshResult;-><init>()V

    .line 1799
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/SimRefreshResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1800
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->simRefresh(ILandroid/hardware/radio/V1_0/SimRefreshResult;)V

    goto/16 :goto_7

    :pswitch_1d
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_4d

    move v1, v2

    :cond_4d
    if-eq v1, v2, :cond_4e

    .line 1778
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1779
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_4e
    const-string p1, "android.hardware.radio@1.0::IRadioIndication"

    .line 1781
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1783
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1784
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->simSmsStorageFull(I)V

    goto/16 :goto_7

    :pswitch_1e
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_4f

    move v1, v2

    :cond_4f
    if-eq v1, v2, :cond_50

    .line 1763
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1764
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_50
    const-string p1, "android.hardware.radio@1.0::IRadioIndication"

    .line 1766
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1768
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1769
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide p2

    .line 1770
    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->stkCallSetup(IJ)V

    goto/16 :goto_7

    :pswitch_1f
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_51

    move v1, v2

    :cond_51
    if-eq v1, v2, :cond_52

    .line 1748
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1749
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_52
    const-string p1, "android.hardware.radio@1.0::IRadioIndication"

    .line 1751
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1753
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1754
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1755
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->stkEventNotify(ILjava/lang/String;)V

    goto/16 :goto_7

    :pswitch_20
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_53

    move v1, v2

    :cond_53
    if-eq v1, v2, :cond_54

    .line 1733
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1734
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_54
    const-string p1, "android.hardware.radio@1.0::IRadioIndication"

    .line 1736
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1738
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1739
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1740
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->stkProactiveCommand(ILjava/lang/String;)V

    goto/16 :goto_7

    :pswitch_21
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_55

    move v1, v2

    :cond_55
    if-eq v1, v2, :cond_56

    .line 1719
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1720
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_56
    const-string p1, "android.hardware.radio@1.0::IRadioIndication"

    .line 1722
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1724
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1725
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->stkSessionEnd(I)V

    goto/16 :goto_7

    :pswitch_22
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_57

    move v1, v2

    :cond_57
    if-eq v1, v2, :cond_58

    .line 1703
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1704
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_58
    const-string p1, "android.hardware.radio@1.0::IRadioIndication"

    .line 1706
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1708
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1709
    new-instance p3, Landroid/hardware/radio/V1_0/SuppSvcNotification;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/SuppSvcNotification;-><init>()V

    .line 1710
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/SuppSvcNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1711
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->suppSvcNotify(ILandroid/hardware/radio/V1_0/SuppSvcNotification;)V

    goto/16 :goto_7

    :pswitch_23
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_59

    move v1, v2

    :cond_59
    if-eq v1, v2, :cond_5a

    .line 1688
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1689
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_5a
    const-string p1, "android.hardware.radio@1.0::IRadioIndication"

    .line 1691
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1693
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1694
    invoke-static {p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 1695
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->dataCallListChanged(ILjava/util/ArrayList;)V

    goto/16 :goto_7

    :pswitch_24
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5b

    move v1, v2

    :cond_5b
    if-eq v1, v2, :cond_5c

    .line 1672
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1673
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_5c
    const-string p1, "android.hardware.radio@1.0::IRadioIndication"

    .line 1675
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1677
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1678
    new-instance p3, Landroid/hardware/radio/V1_0/SignalStrength;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/SignalStrength;-><init>()V

    .line 1679
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1680
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->currentSignalStrength(ILandroid/hardware/radio/V1_0/SignalStrength;)V

    goto/16 :goto_7

    :pswitch_25
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5d

    move v1, v2

    :cond_5d
    if-eq v1, v2, :cond_5e

    .line 1656
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1657
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_5e
    const-string p1, "android.hardware.radio@1.0::IRadioIndication"

    .line 1659
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1661
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1662
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 1663
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    .line 1664
    invoke-virtual {p0, p1, p3, v0, v1}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->nitzTimeReceived(ILjava/lang/String;J)V

    goto/16 :goto_7

    :pswitch_26
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5f

    move v1, v2

    :cond_5f
    if-eq v1, v2, :cond_60

    .line 1640
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1641
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_60
    const-string p1, "android.hardware.radio@1.0::IRadioIndication"

    .line 1643
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1645
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1646
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1647
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1648
    invoke-virtual {p0, p1, p3, p2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->onUssd(IILjava/lang/String;)V

    goto/16 :goto_7

    :pswitch_27
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_61

    move v1, v2

    :cond_61
    if-eq v1, v2, :cond_62

    .line 1625
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1626
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_62
    const-string p1, "android.hardware.radio@1.0::IRadioIndication"

    .line 1628
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1630
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1631
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1632
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->newSmsOnSim(II)V

    goto/16 :goto_7

    :pswitch_28
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_63

    move v1, v2

    :cond_63
    if-eq v1, v2, :cond_64

    .line 1610
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1611
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_64
    const-string p1, "android.hardware.radio@1.0::IRadioIndication"

    .line 1613
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1615
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1616
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1617
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->newSmsStatusReport(ILjava/util/ArrayList;)V

    goto/16 :goto_7

    :pswitch_29
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_65

    move v1, v2

    :cond_65
    if-eq v1, v2, :cond_66

    .line 1595
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1596
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_66
    const-string p1, "android.hardware.radio@1.0::IRadioIndication"

    .line 1598
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1600
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1601
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1602
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->newSms(ILjava/util/ArrayList;)V

    goto :goto_7

    :pswitch_2a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_67

    move v1, v2

    :cond_67
    if-eq v1, v2, :cond_68

    .line 1581
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1582
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_7

    :cond_68
    const-string p1, "android.hardware.radio@1.0::IRadioIndication"

    .line 1584
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1586
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1587
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->networkStateChanged(I)V

    goto :goto_7

    :pswitch_2b
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_69

    move v1, v2

    :cond_69
    if-eq v1, v2, :cond_6a

    .line 1567
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1568
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_7

    :cond_6a
    const-string p1, "android.hardware.radio@1.0::IRadioIndication"

    .line 1570
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1572
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1573
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->callStateChanged(I)V

    goto :goto_7

    :pswitch_2c
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_6b

    move v1, v2

    :cond_6b
    if-eq v1, v2, :cond_6c

    .line 1552
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1553
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_7

    :cond_6c
    const-string p1, "android.hardware.radio@1.0::IRadioIndication"

    .line 1555
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1557
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1558
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1559
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->radioStateChanged(II)V

    :cond_6d
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xf43484e -> :sswitch_9
        0xf444247 -> :sswitch_8
        0xf445343 -> :sswitch_7
        0xf485348 -> :sswitch_6
        0xf494e54 -> :sswitch_5
        0xf4c5444 -> :sswitch_4
        0xf504e47 -> :sswitch_3
        0xf524546 -> :sswitch_2
        0xf535953 -> :sswitch_1
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    .line 1529
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1536
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "@Stub"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
