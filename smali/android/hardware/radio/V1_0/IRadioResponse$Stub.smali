.class public abstract Landroid/hardware/radio/V1_0/IRadioResponse$Stub;
.super Landroid/os/HwBinder;
.source "IRadioResponse.java"

# interfaces
.implements Landroid/hardware/radio/V1_0/IRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_0/IRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4944
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

    .line 4989
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 4990
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 4991
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 4992
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

    .line 4965
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
        0x2dt
        -0x7dt
        0x3at
        -0x12t
        -0x30t
        -0x33t
        0x1dt
        0x59t
        0x43t
        0x7at
        -0x36t
        0x21t
        0xbt
        -0x1bt
        -0x70t
        -0x57t
        0x53t
        -0x31t
        0x32t
        -0x44t
        -0x4at
        0x68t
        0x3ct
        -0x2at
        0x3dt
        0x8t
        -0x69t
        0x62t
        -0x5at
        0x43t
        -0x5t
        0x49t
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

    .line 4952
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

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

    const-string p0, "android.hardware.radio@1.0::IRadioResponse"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 4998
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 7
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
    if-eqz v1, :cond_115

    .line 7214
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7215
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :sswitch_1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    if-eq v1, v2, :cond_2

    .line 7201
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7202
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_2
    const-string p1, "android.hidl.base@1.0::IBase"

    .line 7204
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7206
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->notifySyspropsChanged()V

    goto/16 :goto_7

    :sswitch_2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    if-eqz v2, :cond_4

    .line 7185
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7186
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_4
    const-string p1, "android.hidl.base@1.0::IBase"

    .line 7188
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7190
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 7191
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7192
    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 7193
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

    .line 7170
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7171
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_6
    const-string p1, "android.hidl.base@1.0::IBase"

    .line 7173
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7175
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->ping()V

    .line 7176
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7177
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :sswitch_4
    and-int/lit8 p0, p4, 0x1

    if-eqz p0, :cond_7

    move v1, v2

    :cond_7
    if-eqz v1, :cond_115

    .line 7160
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7161
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :sswitch_5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_8

    move v1, v2

    :cond_8
    if-eq v1, v2, :cond_9

    .line 7147
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7148
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_9
    const-string p1, "android.hidl.base@1.0::IBase"

    .line 7150
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7152
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setHALInstrumentation()V

    goto/16 :goto_7

    :sswitch_6
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    :goto_2
    if-eqz v2, :cond_b

    .line 7114
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7115
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_b
    const-string p1, "android.hidl.base@1.0::IBase"

    .line 7117
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7119
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 7120
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7122
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 7124
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v2, 0x8

    .line 7125
    invoke-virtual {p1, v2, v3, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    .line 7126
    invoke-virtual {p1, v2, v3, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 7127
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v0, p2, 0x20

    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    :goto_3
    if-ge v1, p2, :cond_c

    mul-int/lit8 v0, v1, 0x20

    int-to-long v2, v0

    .line 7131
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p4, v2, v3, v0}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_c
    const-wide/16 v0, 0x0

    .line 7135
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 7137
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 7139
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

    .line 7098
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7099
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_e
    const-string p1, "android.hidl.base@1.0::IBase"

    .line 7101
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7103
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 7104
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7105
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 7106
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

    .line 7084
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7085
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_10
    const-string p0, "android.hidl.base@1.0::IBase"

    .line 7087
    invoke-virtual {p2, p0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7089
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7090
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

    .line 7068
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7069
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_12
    const-string p1, "android.hidl.base@1.0::IBase"

    .line 7071
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7073
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 7074
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7075
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 7076
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :pswitch_0
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_13

    move v1, v2

    :cond_13
    if-eq v1, v2, :cond_14

    .line 7054
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7055
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_14
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 7057
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7059
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 7060
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->acknowledgeRequest(I)V

    goto/16 :goto_7

    :pswitch_1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_15

    move v1, v2

    :cond_15
    if-eq v1, v2, :cond_16

    .line 7039
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7040
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_16
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 7042
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7044
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7045
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7046
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setSimCardPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_17

    move v1, v2

    :cond_17
    if-eq v1, v2, :cond_18

    .line 7024
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7025
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_18
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 7027
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7029
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7030
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7031
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setIndicationFilterResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_19

    move v1, v2

    :cond_19
    if-eq v1, v2, :cond_1a

    .line 7009
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7010
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_1a
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 7012
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7014
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7015
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7016
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->sendDeviceStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_4
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1b

    move v1, v2

    :cond_1b
    if-eq v1, v2, :cond_1c

    .line 6991
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6992
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_1c
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6994
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6996
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6997
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6998
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p3

    .line 6999
    new-instance p4, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {p4}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 7000
    invoke-virtual {p4, p2}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7001
    invoke-virtual {p0, p1, p3, p4}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    goto/16 :goto_7

    :pswitch_5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1d

    move v1, v2

    :cond_1d
    if-eq v1, v2, :cond_1e

    .line 6975
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6976
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_1e
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6978
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6980
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6981
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6982
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 6983
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_7

    :pswitch_6
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1f

    move v1, v2

    :cond_1f
    if-eq v1, v2, :cond_20

    .line 6958
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6959
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_20
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6961
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6963
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6964
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6965
    new-instance p3, Landroid/hardware/radio/V1_0/ActivityStatsInfo;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;-><init>()V

    .line 6966
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6967
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getModemActivityInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/ActivityStatsInfo;)V

    goto/16 :goto_7

    :pswitch_7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_21

    move v1, v2

    :cond_21
    if-eq v1, v2, :cond_22

    .line 6941
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6942
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_22
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6944
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6946
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6947
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6948
    new-instance p3, Landroid/hardware/radio/V1_0/LceDataInfo;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/LceDataInfo;-><init>()V

    .line 6949
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/LceDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6950
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->pullLceDataResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceDataInfo;)V

    goto/16 :goto_7

    :pswitch_8
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_23

    move v1, v2

    :cond_23
    if-eq v1, v2, :cond_24

    .line 6924
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6925
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_24
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6927
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6929
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6930
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6931
    new-instance p3, Landroid/hardware/radio/V1_0/LceStatusInfo;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/LceStatusInfo;-><init>()V

    .line 6932
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/LceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6933
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->stopLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    goto/16 :goto_7

    :pswitch_9
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_25

    move v1, v2

    :cond_25
    if-eq v1, v2, :cond_26

    .line 6907
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6908
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_26
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6910
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6912
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6913
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6914
    new-instance p3, Landroid/hardware/radio/V1_0/LceStatusInfo;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/LceStatusInfo;-><init>()V

    .line 6915
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/LceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6916
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->startLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    goto/16 :goto_7

    :pswitch_a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_27

    move v1, v2

    :cond_27
    if-eq v1, v2, :cond_28

    .line 6890
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6891
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_28
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6893
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6895
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6896
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6897
    new-instance p3, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 6898
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6899
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V

    goto/16 :goto_7

    :pswitch_b
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_29

    move v1, v2

    :cond_29
    if-eq v1, v2, :cond_2a

    .line 6873
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6874
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_2a
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6876
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6878
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6879
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6880
    new-instance p3, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 6881
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6882
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V

    goto/16 :goto_7

    :pswitch_c
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_2b

    move v1, v2

    :cond_2b
    if-eq v1, v2, :cond_2c

    .line 6858
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6859
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_2c
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6861
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6863
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6864
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6865
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->requestShutdownResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_d
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_2d

    move v1, v2

    :cond_2d
    if-eq v1, v2, :cond_2e

    .line 6843
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6844
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_2e
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6846
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6848
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6849
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6850
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setDataProfileResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_e
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_2f

    move v1, v2

    :cond_2f
    if-eq v1, v2, :cond_30

    .line 6826
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6827
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_30
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6829
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6831
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6832
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6833
    new-instance p3, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 6834
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6835
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->requestIccSimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    goto/16 :goto_7

    :pswitch_f
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_31

    move v1, v2

    :cond_31
    if-eq v1, v2, :cond_32

    .line 6810
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6811
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_32
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6813
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6815
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6816
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6817
    invoke-static {p2}, Landroid/hardware/radio/V1_0/HardwareConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 6818
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getHardwareConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_7

    :pswitch_10
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_33

    move v1, v2

    :cond_33
    if-eq v1, v2, :cond_34

    .line 6795
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6796
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_34
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6798
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6800
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6801
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6802
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setDataAllowedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_11
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_35

    move v1, v2

    :cond_35
    if-eq v1, v2, :cond_36

    .line 6780
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6781
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_36
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6783
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6785
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6786
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6787
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setUiccSubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_12
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_37

    move v1, v2

    :cond_37
    if-eq v1, v2, :cond_38

    .line 6765
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6766
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_38
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6768
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6770
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6771
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6772
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->nvResetConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_13
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_39

    move v1, v2

    :cond_39
    if-eq v1, v2, :cond_3a

    .line 6750
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6751
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_3a
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6753
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6755
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6756
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6757
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->nvWriteCdmaPrlResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_14
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3b

    move v1, v2

    :cond_3b
    if-eq v1, v2, :cond_3c

    .line 6735
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6736
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_3c
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6738
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6740
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6741
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6742
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->nvWriteItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_15
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3d

    move v1, v2

    :cond_3d
    if-eq v1, v2, :cond_3e

    .line 6719
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6720
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_3e
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6722
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6724
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6725
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6726
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 6727
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->nvReadItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_16
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3f

    move v1, v2

    :cond_3f
    if-eq v1, v2, :cond_40

    .line 6702
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6703
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_40
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6705
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6707
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6708
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6709
    new-instance p3, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 6710
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6711
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->iccTransmitApduLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    goto/16 :goto_7

    :pswitch_17
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_41

    move v1, v2

    :cond_41
    if-eq v1, v2, :cond_42

    .line 6687
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6688
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_42
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6690
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6692
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6693
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6694
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->iccCloseLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_18
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_43

    move v1, v2

    :cond_43
    if-eq v1, v2, :cond_44

    .line 6670
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6671
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_44
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6673
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6675
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6676
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6677
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 6678
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 6679
    invoke-virtual {p0, p1, p3, p2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->iccOpenLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ILjava/util/ArrayList;)V

    goto/16 :goto_7

    :pswitch_19
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_45

    move v1, v2

    :cond_45
    if-eq v1, v2, :cond_46

    .line 6653
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6654
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_46
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6656
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6658
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6659
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6660
    new-instance p3, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 6661
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6662
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->iccTransmitApduBasicChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    goto/16 :goto_7

    :pswitch_1a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_47

    move v1, v2

    :cond_47
    if-eq v1, v2, :cond_48

    .line 6636
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6637
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_48
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6639
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6641
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6642
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6643
    new-instance p3, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 6644
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6645
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->sendImsSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    goto/16 :goto_7

    :pswitch_1b
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_49

    move v1, v2

    :cond_49
    if-eq v1, v2, :cond_4a

    .line 6619
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6620
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_4a
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6622
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6624
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6625
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6626
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p3

    .line 6627
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 6628
    invoke-virtual {p0, p1, p3, p2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getImsRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V

    goto/16 :goto_7

    :pswitch_1c
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_4b

    move v1, v2

    :cond_4b
    if-eq v1, v2, :cond_4c

    .line 6604
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6605
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_4c
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6607
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6609
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6610
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6611
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setInitialAttachApnResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_1d
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_4d

    move v1, v2

    :cond_4d
    if-eq v1, v2, :cond_4e

    .line 6589
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6590
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_4e
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6592
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6594
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6595
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6596
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setCellInfoListRateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_1e
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_4f

    move v1, v2

    :cond_4f
    if-eq v1, v2, :cond_50

    .line 6573
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6574
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_50
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6576
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6578
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6579
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6580
    invoke-static {p2}, Landroid/hardware/radio/V1_0/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 6581
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getCellInfoListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_7

    :pswitch_1f
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_51

    move v1, v2

    :cond_51
    if-eq v1, v2, :cond_52

    .line 6557
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6558
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_52
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6560
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6562
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6563
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6564
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 6565
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getVoiceRadioTechnologyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_7

    :pswitch_20
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_53

    move v1, v2

    :cond_53
    if-eq v1, v2, :cond_54

    .line 6540
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6541
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_54
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6543
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6545
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6546
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6547
    new-instance p3, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 6548
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6549
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->sendEnvelopeWithStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    goto/16 :goto_7

    :pswitch_21
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_55

    move v1, v2

    :cond_55
    if-eq v1, v2, :cond_56

    .line 6525
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6526
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_56
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6528
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6530
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6531
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6532
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->acknowledgeIncomingGsmSmsWithPduResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_22
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_57

    move v1, v2

    :cond_57
    if-eq v1, v2, :cond_58

    .line 6509
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6510
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_58
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6512
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6514
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6515
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6516
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 6517
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->requestIsimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_23
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_59

    move v1, v2

    :cond_59
    if-eq v1, v2, :cond_5a

    .line 6493
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6494
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_5a
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6496
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6498
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6499
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6500
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 6501
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_7

    :pswitch_24
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5b

    move v1, v2

    :cond_5b
    if-eq v1, v2, :cond_5c

    .line 6478
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6479
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_5c
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6481
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6483
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6484
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6485
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->reportStkServiceIsRunningResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_25
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5d

    move v1, v2

    :cond_5d
    if-eq v1, v2, :cond_5e

    .line 6463
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6464
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_5e
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6466
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6468
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6469
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6470
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->reportSmsMemoryStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_26
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5f

    move v1, v2

    :cond_5f
    if-eq v1, v2, :cond_60

    .line 6448
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6449
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_60
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6451
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6453
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6454
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6455
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_27
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_61

    move v1, v2

    :cond_61
    if-eq v1, v2, :cond_62

    .line 6432
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6433
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_62
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6435
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6437
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6438
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6439
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 6440
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_28
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_63

    move v1, v2

    :cond_63
    if-eq v1, v2, :cond_64

    .line 6417
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6418
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_64
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6420
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6422
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6423
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6424
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->exitEmergencyCallbackModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_29
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_65

    move v1, v2

    :cond_65
    if-eq v1, v2, :cond_66

    .line 6398
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6399
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_66
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6401
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6403
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6404
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6405
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6406
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6407
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 6408
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 6409
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getDeviceIdentityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_2a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_67

    move v1, v2

    :cond_67
    if-eq v1, v2, :cond_68

    .line 6383
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6384
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_68
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6386
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6388
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6389
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6390
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->deleteSmsOnRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_2b
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_69

    move v1, v2

    :cond_69
    if-eq v1, v2, :cond_6a

    .line 6367
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6368
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_6a
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6370
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6372
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6373
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6374
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 6375
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->writeSmsToRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_7

    :pswitch_2c
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_6b

    move v1, v2

    :cond_6b
    if-eq v1, v2, :cond_6c

    .line 6347
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6348
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_6c
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6350
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6352
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6353
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6354
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6355
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6356
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 6357
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 6358
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    .line 6359
    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getCDMASubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_2d
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_6d

    move v1, v2

    :cond_6d
    if-eq v1, v2, :cond_6e

    .line 6332
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6333
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_6e
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6335
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6337
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6338
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6339
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setCdmaBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_2e
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_6f

    move v1, v2

    :cond_6f
    if-eq v1, v2, :cond_70

    .line 6317
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6318
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_70
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6320
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6322
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6323
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6324
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_2f
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_71

    move v1, v2

    :cond_71
    if-eq v1, v2, :cond_72

    .line 6301
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6302
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_72
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6304
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6306
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6307
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6308
    invoke-static {p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 6309
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_7

    :pswitch_30
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_73

    move v1, v2

    :cond_73
    if-eq v1, v2, :cond_74

    .line 6286
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6287
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_74
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6289
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6291
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6292
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6293
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setGsmBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_31
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_75

    move v1, v2

    :cond_75
    if-eq v1, v2, :cond_76

    .line 6271
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6272
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_76
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6274
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6276
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6277
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6278
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_32
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_77

    move v1, v2

    :cond_77
    if-eq v1, v2, :cond_78

    .line 6255
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6256
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_78
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6258
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6260
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6261
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6262
    invoke-static {p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 6263
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_7

    :pswitch_33
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_79

    move v1, v2

    :cond_79
    if-eq v1, v2, :cond_7a

    .line 6240
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6241
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_7a
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6243
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6245
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6246
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6247
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->acknowledgeLastIncomingCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_34
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_7b

    move v1, v2

    :cond_7b
    if-eq v1, v2, :cond_7c

    .line 6223
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6224
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_7c
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6226
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6228
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6229
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6230
    new-instance p3, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 6231
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6232
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->sendCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    goto/16 :goto_7

    :pswitch_35
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_7d

    move v1, v2

    :cond_7d
    if-eq v1, v2, :cond_7e

    .line 6208
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6209
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_7e
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6211
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6213
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6214
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6215
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->sendBurstDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_36
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_7f

    move v1, v2

    :cond_7f
    if-eq v1, v2, :cond_80

    .line 6193
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6194
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_80
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6196
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6198
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6199
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6200
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->sendCDMAFeatureCodeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_37
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_81

    move v1, v2

    :cond_81
    if-eq v1, v2, :cond_82

    .line 6177
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6178
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_82
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6180
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6182
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6183
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6184
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 6185
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    goto/16 :goto_7

    :pswitch_38
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_83

    move v1, v2

    :cond_83
    if-eq v1, v2, :cond_84

    .line 6162
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6163
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_84
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6165
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6167
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6168
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6169
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_39
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_85

    move v1, v2

    :cond_85
    if-eq v1, v2, :cond_86

    .line 6146
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6147
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_86
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6149
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6151
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6152
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6153
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 6154
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_7

    :pswitch_3a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_87

    move v1, v2

    :cond_87
    if-eq v1, v2, :cond_88

    .line 6131
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6132
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_88
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6134
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6136
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6137
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6138
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_3b
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_89

    move v1, v2

    :cond_89
    if-eq v1, v2, :cond_8a

    .line 6115
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6116
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_8a
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6118
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6120
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6121
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6122
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 6123
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_7

    :pswitch_3c
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_8b

    move v1, v2

    :cond_8b
    if-eq v1, v2, :cond_8c

    .line 6100
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6101
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_8c
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6103
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6105
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6106
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6107
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_3d
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_8d

    move v1, v2

    :cond_8d
    if-eq v1, v2, :cond_8e

    .line 6085
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6086
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_8e
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6088
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6090
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6091
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6092
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_3e
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_8f

    move v1, v2

    :cond_8f
    if-eq v1, v2, :cond_90

    .line 6070
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6071
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_90
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6073
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6075
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6076
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6077
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setLocationUpdatesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_3f
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_91

    move v1, v2

    :cond_91
    if-eq v1, v2, :cond_92

    .line 6054
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6055
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_92
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6057
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6059
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6060
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6061
    invoke-static {p2}, Landroid/hardware/radio/V1_0/NeighboringCell;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 6062
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getNeighboringCidsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_7

    :pswitch_40
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_93

    move v1, v2

    :cond_93
    if-eq v1, v2, :cond_94

    .line 6038
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6039
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_94
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6041
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6043
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6044
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6045
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 6046
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_7

    :pswitch_41
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_95

    move v1, v2

    :cond_95
    if-eq v1, v2, :cond_96

    .line 6023
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6024
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_96
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6026
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6028
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6029
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6030
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_42
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_97

    move v1, v2

    :cond_97
    if-eq v1, v2, :cond_98

    .line 6008
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6009
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_98
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 6011
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6013
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6014
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6015
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->explicitCallTransferResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_43
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_99

    move v1, v2

    :cond_99
    if-eq v1, v2, :cond_9a

    .line 5993
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5994
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_9a
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5996
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5998
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5999
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6000
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->handleStkCallSetupRequestFromSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_44
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_9b

    move v1, v2

    :cond_9b
    if-eq v1, v2, :cond_9c

    .line 5978
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5979
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_9c
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5981
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5983
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5984
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5985
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->sendTerminalResponseToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_45
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_9d

    move v1, v2

    :cond_9d
    if-eq v1, v2, :cond_9e

    .line 5962
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5963
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_9e
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5965
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5967
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5968
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5969
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 5970
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->sendEnvelopeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_46
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_9f

    move v1, v2

    :cond_9f
    if-eq v1, v2, :cond_a0

    .line 5946
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5947
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_a0
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5949
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5951
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5952
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5953
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 5954
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getAvailableBandModesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_7

    :pswitch_47
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a1

    move v1, v2

    :cond_a1
    if-eq v1, v2, :cond_a2

    .line 5931
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5932
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_a2
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5934
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5936
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5937
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5938
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setBandModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_48
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a3

    move v1, v2

    :cond_a3
    if-eq v1, v2, :cond_a4

    .line 5916
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5917
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_a4
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5919
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5921
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5922
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5923
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->deleteSmsOnSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_49
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a5

    move v1, v2

    :cond_a5
    if-eq v1, v2, :cond_a6

    .line 5900
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5901
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_a6
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5903
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5905
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5906
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5907
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 5908
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->writeSmsToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_7

    :pswitch_4a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a7

    move v1, v2

    :cond_a7
    if-eq v1, v2, :cond_a8

    .line 5885
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5886
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_a8
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5888
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5890
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5891
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5892
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setSuppServiceNotificationsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_4b
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a9

    move v1, v2

    :cond_a9
    if-eq v1, v2, :cond_aa

    .line 5869
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5870
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_aa
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5872
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5874
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5875
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5876
    invoke-static {p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 5877
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getDataCallListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_7

    :pswitch_4c
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_ab

    move v1, v2

    :cond_ab
    if-eq v1, v2, :cond_ac

    .line 5853
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5854
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_ac
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5856
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5858
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5859
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5860
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 5861
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_7

    :pswitch_4d
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_ad

    move v1, v2

    :cond_ad
    if-eq v1, v2, :cond_ae

    .line 5837
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5838
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_ae
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5840
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5842
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5843
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5844
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 5845
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    goto/16 :goto_7

    :pswitch_4e
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_af

    move v1, v2

    :cond_af
    if-eq v1, v2, :cond_b0

    .line 5822
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5823
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_b0
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5825
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5827
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5828
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5829
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_4f
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_b1

    move v1, v2

    :cond_b1
    if-eq v1, v2, :cond_b2

    .line 5807
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5808
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_b2
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5810
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5812
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5813
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5814
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->separateConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_50
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_b3

    move v1, v2

    :cond_b3
    if-eq v1, v2, :cond_b4

    .line 5791
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5792
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_b4
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5794
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5796
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5797
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5798
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 5799
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getBasebandVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_51
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_b5

    move v1, v2

    :cond_b5
    if-eq v1, v2, :cond_b6

    .line 5776
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5777
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_b6
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5779
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5781
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5782
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5783
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->stopDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_52
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_b7

    move v1, v2

    :cond_b7
    if-eq v1, v2, :cond_b8

    .line 5761
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5762
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_b8
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5764
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5766
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5767
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5768
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->startDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_53
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_b9

    move v1, v2

    :cond_b9
    if-eq v1, v2, :cond_ba

    .line 5745
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5746
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_ba
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5748
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5750
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5751
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5752
    invoke-static {p2}, Landroid/hardware/radio/V1_0/OperatorInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 5753
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_7

    :pswitch_54
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_bb

    move v1, v2

    :cond_bb
    if-eq v1, v2, :cond_bc

    .line 5730
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5731
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_bc
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5733
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5735
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5736
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5737
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setNetworkSelectionModeManualResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_55
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_bd

    move v1, v2

    :cond_bd
    if-eq v1, v2, :cond_be

    .line 5715
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5716
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_be
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5718
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5720
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5721
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5722
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setNetworkSelectionModeAutomaticResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_56
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_bf

    move v1, v2

    :cond_bf
    if-eq v1, v2, :cond_c0

    .line 5699
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5700
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_c0
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5702
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5704
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5705
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5706
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 5707
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getNetworkSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    goto/16 :goto_7

    :pswitch_57
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_c1

    move v1, v2

    :cond_c1
    if-eq v1, v2, :cond_c2

    .line 5684
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5685
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_c2
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5687
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5689
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5690
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5691
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setBarringPasswordResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_58
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_c3

    move v1, v2

    :cond_c3
    if-eq v1, v2, :cond_c4

    .line 5668
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5669
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_c4
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5671
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5673
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5674
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5675
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 5676
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_7

    :pswitch_59
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_c5

    move v1, v2

    :cond_c5
    if-eq v1, v2, :cond_c6

    .line 5652
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5653
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_c6
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5655
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5657
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5658
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5659
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 5660
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_7

    :pswitch_5a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_c7

    move v1, v2

    :cond_c7
    if-eq v1, v2, :cond_c8

    .line 5637
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5638
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_c8
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5640
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5642
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5643
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5644
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->deactivateDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_5b
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_c9

    move v1, v2

    :cond_c9
    if-eq v1, v2, :cond_ca

    .line 5622
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5623
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_ca
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5625
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5627
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5628
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5629
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->acceptCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_5c
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_cb

    move v1, v2

    :cond_cb
    if-eq v1, v2, :cond_cc

    .line 5607
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5608
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_cc
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5610
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5612
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5613
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5614
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->acknowledgeLastIncomingGsmSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_5d
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_cd

    move v1, v2

    :cond_cd
    if-eq v1, v2, :cond_ce

    .line 5592
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5593
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_ce
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5595
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5597
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5598
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5599
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_5e
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_cf

    move v1, v2

    :cond_cf
    if-eq v1, v2, :cond_d0

    .line 5575
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5576
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_d0
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5578
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5580
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5581
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5582
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p3

    .line 5583
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 5584
    invoke-virtual {p0, p1, p3, p2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V

    goto/16 :goto_7

    :pswitch_5f
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_d1

    move v1, v2

    :cond_d1
    if-eq v1, v2, :cond_d2

    .line 5560
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5561
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_d2
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5563
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5565
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5566
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5567
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setCallForwardResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_60
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_d3

    move v1, v2

    :cond_d3
    if-eq v1, v2, :cond_d4

    .line 5544
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5545
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_d4
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5547
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5549
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5550
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5551
    invoke-static {p2}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 5552
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getCallForwardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_7

    :pswitch_61
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_d5

    move v1, v2

    :cond_d5
    if-eq v1, v2, :cond_d6

    .line 5529
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5530
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_d6
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5532
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5534
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5535
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5536
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_62
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_d7

    move v1, v2

    :cond_d7
    if-eq v1, v2, :cond_d8

    .line 5512
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5513
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_d8
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5515
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5517
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5518
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5519
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 5520
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 5521
    invoke-virtual {p0, p1, p3, p2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V

    goto/16 :goto_7

    :pswitch_63
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_d9

    move v1, v2

    :cond_d9
    if-eq v1, v2, :cond_da

    .line 5497
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5498
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_da
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5500
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5502
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5503
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5504
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->cancelPendingUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_64
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_db

    move v1, v2

    :cond_db
    if-eq v1, v2, :cond_dc

    .line 5482
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5483
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_dc
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5485
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5487
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5488
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5489
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->sendUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_65
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_dd

    move v1, v2

    :cond_dd
    if-eq v1, v2, :cond_de

    .line 5465
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5466
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_de
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5468
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5470
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5471
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5472
    new-instance p3, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 5473
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5474
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->iccIOForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    goto/16 :goto_7

    :pswitch_66
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_df

    move v1, v2

    :cond_df
    if-eq v1, v2, :cond_e0

    .line 5448
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5449
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_e0
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5451
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5453
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5454
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5455
    new-instance p3, Landroid/hardware/radio/V1_0/SetupDataCallResult;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/SetupDataCallResult;-><init>()V

    .line 5456
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5457
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setupDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SetupDataCallResult;)V

    goto/16 :goto_7

    :pswitch_67
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_e1

    move v1, v2

    :cond_e1
    if-eq v1, v2, :cond_e2

    .line 5431
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5432
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_e2
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5434
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5436
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5437
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5438
    new-instance p3, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 5439
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5440
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->sendSMSExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    goto/16 :goto_7

    :pswitch_68
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_e3

    move v1, v2

    :cond_e3
    if-eq v1, v2, :cond_e4

    .line 5414
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5415
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_e4
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5417
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5419
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5420
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5421
    new-instance p3, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 5422
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5423
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->sendSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    goto/16 :goto_7

    :pswitch_69
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_e5

    move v1, v2

    :cond_e5
    if-eq v1, v2, :cond_e6

    .line 5399
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5400
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_e6
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5402
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5404
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5405
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5406
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->sendDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_6a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_e7

    move v1, v2

    :cond_e7
    if-eq v1, v2, :cond_e8

    .line 5384
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5385
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_e8
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5387
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5389
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5390
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5391
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setRadioPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_6b
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_e9

    move v1, v2

    :cond_e9
    if-eq v1, v2, :cond_ea

    .line 5366
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5367
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_ea
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5369
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5371
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5372
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5373
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 5374
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 5375
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 5376
    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getOperatorResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_6c
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_eb

    move v1, v2

    :cond_eb
    if-eq v1, v2, :cond_ec

    .line 5349
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5350
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_ec
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5352
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5354
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5355
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5356
    new-instance p3, Landroid/hardware/radio/V1_0/DataRegStateResult;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/DataRegStateResult;-><init>()V

    .line 5357
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/DataRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5358
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getDataRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/DataRegStateResult;)V

    goto/16 :goto_7

    :pswitch_6d
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_ed

    move v1, v2

    :cond_ed
    if-eq v1, v2, :cond_ee

    .line 5332
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5333
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_ee
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5335
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5337
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5338
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5339
    new-instance p3, Landroid/hardware/radio/V1_0/VoiceRegStateResult;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/VoiceRegStateResult;-><init>()V

    .line 5340
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5341
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getVoiceRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/VoiceRegStateResult;)V

    goto/16 :goto_7

    :pswitch_6e
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_ef

    move v1, v2

    :cond_ef
    if-eq v1, v2, :cond_f0

    .line 5315
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5316
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_f0
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5318
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5320
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5321
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5322
    new-instance p3, Landroid/hardware/radio/V1_0/SignalStrength;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/SignalStrength;-><init>()V

    .line 5323
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5324
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getSignalStrengthResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SignalStrength;)V

    goto/16 :goto_7

    :pswitch_6f
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_f1

    move v1, v2

    :cond_f1
    if-eq v1, v2, :cond_f2

    .line 5298
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5299
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_f2
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5301
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5303
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5304
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5305
    new-instance p3, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;-><init>()V

    .line 5306
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5307
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getLastCallFailCauseResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V

    goto/16 :goto_7

    :pswitch_70
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_f3

    move v1, v2

    :cond_f3
    if-eq v1, v2, :cond_f4

    .line 5283
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5284
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_f4
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5286
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5288
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5289
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5290
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->rejectCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_71
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_f5

    move v1, v2

    :cond_f5
    if-eq v1, v2, :cond_f6

    .line 5268
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5269
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_f6
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5271
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5273
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5274
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5275
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->conferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_72
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_f7

    move v1, v2

    :cond_f7
    if-eq v1, v2, :cond_f8

    .line 5253
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5254
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_f8
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5256
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5258
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5259
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5260
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->switchWaitingOrHoldingAndActiveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_73
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_f9

    move v1, v2

    :cond_f9
    if-eq v1, v2, :cond_fa

    .line 5238
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5239
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_fa
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5241
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5243
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5244
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5245
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->hangupForegroundResumeBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_74
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_fb

    move v1, v2

    :cond_fb
    if-eq v1, v2, :cond_fc

    .line 5223
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5224
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_fc
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5226
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5228
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5229
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5230
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->hangupWaitingOrBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_75
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_fd

    move v1, v2

    :cond_fd
    if-eq v1, v2, :cond_fe

    .line 5208
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5209
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_fe
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5211
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5213
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5214
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5215
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->hangupConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_76
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_ff

    move v1, v2

    :cond_ff
    if-eq v1, v2, :cond_100

    .line 5192
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5193
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_100
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5195
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5197
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5198
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5199
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 5200
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getIMSIForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_77
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_101

    move v1, v2

    :cond_101
    if-eq v1, v2, :cond_102

    .line 5177
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5178
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_102
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5180
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5182
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5183
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5184
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->dialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_7

    :pswitch_78
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_103

    move v1, v2

    :cond_103
    if-eq v1, v2, :cond_104

    .line 5161
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5162
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_104
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5164
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5166
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5167
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5168
    invoke-static {p2}, Landroid/hardware/radio/V1_0/Call;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 5169
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getCurrentCallsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_7

    :pswitch_79
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_105

    move v1, v2

    :cond_105
    if-eq v1, v2, :cond_106

    .line 5145
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5146
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_106
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5148
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5150
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5151
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5152
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 5153
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->supplyNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_7

    :pswitch_7a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_107

    move v1, v2

    :cond_107
    if-eq v1, v2, :cond_108

    .line 5129
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5130
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_108
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5132
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5134
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5135
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5136
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 5137
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->changeIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_7

    :pswitch_7b
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_109

    move v1, v2

    :cond_109
    if-eq v1, v2, :cond_10a

    .line 5113
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5114
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_10a
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5116
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5118
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5119
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5120
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 5121
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->changeIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_7

    :pswitch_7c
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_10b

    move v1, v2

    :cond_10b
    if-eq v1, v2, :cond_10c

    .line 5097
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5098
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_10c
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5100
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5102
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5103
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5104
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 5105
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->supplyIccPuk2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_7

    :pswitch_7d
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_10d

    move v1, v2

    :cond_10d
    if-eq v1, v2, :cond_10e

    .line 5081
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5082
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_7

    :cond_10e
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5084
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5086
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5087
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5088
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 5089
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->supplyIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_7

    :pswitch_7e
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_10f

    move v1, v2

    :cond_10f
    if-eq v1, v2, :cond_110

    .line 5065
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5066
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_7

    :cond_110
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5068
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5070
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5071
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5072
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 5073
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->supplyIccPukForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto :goto_7

    :pswitch_7f
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_111

    move v1, v2

    :cond_111
    if-eq v1, v2, :cond_112

    .line 5049
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5050
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_7

    :cond_112
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5052
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5054
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5055
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5056
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 5057
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->supplyIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto :goto_7

    :pswitch_80
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_113

    move v1, v2

    :cond_113
    if-eq v1, v2, :cond_114

    .line 5032
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5033
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_7

    :cond_114
    const-string p1, "android.hardware.radio@1.0::IRadioResponse"

    .line 5035
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5037
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5038
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5039
    new-instance p3, Landroid/hardware/radio/V1_0/CardStatus;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/CardStatus;-><init>()V

    .line 5040
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/CardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5041
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getIccCardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/CardStatus;)V

    :cond_115
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
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

    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    .line 5009
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

    .line 5016
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 5021
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

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
