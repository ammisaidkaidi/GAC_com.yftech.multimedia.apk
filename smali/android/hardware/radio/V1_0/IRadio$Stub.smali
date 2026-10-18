.class public abstract Landroid/hardware/radio/V1_0/IRadio$Stub;
.super Landroid/os/HwBinder;
.source "IRadio.java"

# interfaces
.implements Landroid/hardware/radio/V1_0/IRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_0/IRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3995
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

    .line 4040
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 4041
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 4042
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 4043
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

    .line 4016
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
        -0x65t
        0x5at
        -0x5ct
        -0x67t
        -0x14t
        0x3bt
        0x42t
        0x26t
        -0xft
        0x5ft
        0x48t
        -0xbt
        -0x13t
        0x8t
        -0x77t
        0x6et
        0x2ft
        -0x40t
        0x67t
        0x6ft
        -0x69t
        -0x74t
        -0x62t
        0x19t
        -0x64t
        0x1dt
        -0x5et
        0x1dt
        -0x56t
        -0x10t
        0x2t
        -0x5at
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

    .line 4003
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.radio@1.0::IRadio"

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

    const-string p0, "android.hardware.radio@1.0::IRadio"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 4049
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

    goto/16 :goto_8

    :sswitch_0
    and-int/lit8 p0, p4, 0x1

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_117

    .line 6188
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6189
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :sswitch_1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    if-eq v1, v2, :cond_2

    .line 6175
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6176
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_2
    const-string p1, "android.hidl.base@1.0::IBase"

    .line 6178
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6180
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->notifySyspropsChanged()V

    goto/16 :goto_8

    :sswitch_2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    if-eqz v2, :cond_4

    .line 6159
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6160
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_4
    const-string p1, "android.hidl.base@1.0::IBase"

    .line 6162
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6164
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 6165
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6166
    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 6167
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :sswitch_3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    :goto_1
    if-eqz v2, :cond_6

    .line 6144
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6145
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_6
    const-string p1, "android.hidl.base@1.0::IBase"

    .line 6147
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6149
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->ping()V

    .line 6150
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6151
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :sswitch_4
    and-int/lit8 p0, p4, 0x1

    if-eqz p0, :cond_7

    move v1, v2

    :cond_7
    if-eqz v1, :cond_117

    .line 6134
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6135
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :sswitch_5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_8

    move v1, v2

    :cond_8
    if-eq v1, v2, :cond_9

    .line 6121
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6122
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_9
    const-string p1, "android.hidl.base@1.0::IBase"

    .line 6124
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6126
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setHALInstrumentation()V

    goto/16 :goto_8

    :sswitch_6
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    :goto_2
    if-eqz v2, :cond_b

    .line 6088
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6089
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_b
    const-string p1, "android.hidl.base@1.0::IBase"

    .line 6091
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6093
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 6094
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6096
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 6098
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v2, 0x8

    .line 6099
    invoke-virtual {p1, v2, v3, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    .line 6100
    invoke-virtual {p1, v2, v3, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 6101
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v0, p2, 0x20

    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    :goto_3
    if-ge v1, p2, :cond_c

    mul-int/lit8 v0, v1, 0x20

    int-to-long v2, v0

    .line 6105
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p4, v2, v3, v0}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_c
    const-wide/16 v0, 0x0

    .line 6109
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 6111
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 6113
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :sswitch_7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    :goto_4
    if-eqz v2, :cond_e

    .line 6072
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6073
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_e
    const-string p1, "android.hidl.base@1.0::IBase"

    .line 6075
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6077
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 6078
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6079
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 6080
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :sswitch_8
    and-int/lit8 p0, p4, 0x1

    if-eqz p0, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    :goto_5
    if-eqz v2, :cond_10

    .line 6058
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6059
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_10
    const-string p0, "android.hidl.base@1.0::IBase"

    .line 6061
    invoke-virtual {p2, p0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6063
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6064
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :sswitch_9
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    :goto_6
    if-eqz v2, :cond_12

    .line 6042
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6043
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_12
    const-string p1, "android.hidl.base@1.0::IBase"

    .line 6045
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6047
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 6048
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6049
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 6050
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :pswitch_0
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_13

    move v1, v2

    :cond_13
    if-eq v1, v2, :cond_14

    .line 6029
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6030
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_14
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 6032
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6034
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->responseAcknowledgement()V

    goto/16 :goto_8

    :pswitch_1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_15

    move v1, v2

    :cond_15
    if-eq v1, v2, :cond_16

    .line 6014
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6015
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_16
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 6017
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6019
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 6020
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 6021
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setSimCardPower(IZ)V

    goto/16 :goto_8

    :pswitch_2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_17

    move v1, v2

    :cond_17
    if-eq v1, v2, :cond_18

    .line 5999
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6000
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_18
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 6002
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6004
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 6005
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 6006
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setIndicationFilter(II)V

    goto/16 :goto_8

    :pswitch_3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_19

    move v1, v2

    :cond_19
    if-eq v1, v2, :cond_1a

    .line 5983
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5984
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_1a
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5986
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5988
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5989
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 5990
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 5991
    invoke-virtual {p0, p1, p3, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendDeviceState(IIZ)V

    goto/16 :goto_8

    :pswitch_4
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1b

    move v1, v2

    :cond_1b
    if-eq v1, v2, :cond_1c

    .line 5969
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5970
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_1c
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5972
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5974
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5975
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getAllowedCarriers(I)V

    goto/16 :goto_8

    :pswitch_5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1d

    move v1, v2

    :cond_1d
    if-eq v1, v2, :cond_1e

    .line 5952
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5953
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_1e
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5955
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5957
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5958
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p3

    .line 5959
    new-instance p4, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {p4}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 5960
    invoke-virtual {p4, p2}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5961
    invoke-virtual {p0, p1, p3, p4}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setAllowedCarriers(IZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    goto/16 :goto_8

    :pswitch_6
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1f

    move v1, v2

    :cond_1f
    if-eq v1, v2, :cond_20

    .line 5938
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5939
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_20
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5941
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5943
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5944
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getModemActivityInfo(I)V

    goto/16 :goto_8

    :pswitch_7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_21

    move v1, v2

    :cond_21
    if-eq v1, v2, :cond_22

    .line 5924
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5925
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_22
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5927
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5929
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5930
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->pullLceData(I)V

    goto/16 :goto_8

    :pswitch_8
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_23

    move v1, v2

    :cond_23
    if-eq v1, v2, :cond_24

    .line 5910
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5911
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_24
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5913
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5915
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5916
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->stopLceService(I)V

    goto/16 :goto_8

    :pswitch_9
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_25

    move v1, v2

    :cond_25
    if-eq v1, v2, :cond_26

    .line 5894
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5895
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_26
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5897
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5899
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5900
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 5901
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 5902
    invoke-virtual {p0, p1, p3, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->startLceService(IIZ)V

    goto/16 :goto_8

    :pswitch_a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_27

    move v1, v2

    :cond_27
    if-eq v1, v2, :cond_28

    .line 5878
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5879
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_28
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5881
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5883
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5884
    new-instance p3, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 5885
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5886
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    goto/16 :goto_8

    :pswitch_b
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_29

    move v1, v2

    :cond_29
    if-eq v1, v2, :cond_2a

    .line 5864
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5865
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_2a
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5867
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5869
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5870
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getRadioCapability(I)V

    goto/16 :goto_8

    :pswitch_c
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_2b

    move v1, v2

    :cond_2b
    if-eq v1, v2, :cond_2c

    .line 5850
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5851
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_2c
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5853
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5855
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5856
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->requestShutdown(I)V

    goto/16 :goto_8

    :pswitch_d
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_2d

    move v1, v2

    :cond_2d
    if-eq v1, v2, :cond_2e

    .line 5834
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5835
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_2e
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5837
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5839
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5840
    invoke-static {p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p3

    .line 5841
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 5842
    invoke-virtual {p0, p1, p3, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setDataProfile(ILjava/util/ArrayList;Z)V

    goto/16 :goto_8

    :pswitch_e
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_2f

    move v1, v2

    :cond_2f
    if-eq v1, v2, :cond_30

    .line 5817
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5818
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_30
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5820
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5822
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5823
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 5824
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 5825
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 5826
    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_f
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_31

    move v1, v2

    :cond_31
    if-eq v1, v2, :cond_32

    .line 5803
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5804
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_32
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5806
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5808
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5809
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getHardwareConfig(I)V

    goto/16 :goto_8

    :pswitch_10
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_33

    move v1, v2

    :cond_33
    if-eq v1, v2, :cond_34

    .line 5788
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5789
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_34
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5791
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5793
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5794
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 5795
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setDataAllowed(IZ)V

    goto/16 :goto_8

    :pswitch_11
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_35

    move v1, v2

    :cond_35
    if-eq v1, v2, :cond_36

    .line 5772
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5773
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_36
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5775
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5777
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5778
    new-instance p3, Landroid/hardware/radio/V1_0/SelectUiccSub;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/SelectUiccSub;-><init>()V

    .line 5779
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/SelectUiccSub;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5780
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setUiccSubscription(ILandroid/hardware/radio/V1_0/SelectUiccSub;)V

    goto/16 :goto_8

    :pswitch_12
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_37

    move v1, v2

    :cond_37
    if-eq v1, v2, :cond_38

    .line 5757
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5758
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_38
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5760
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5762
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5763
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 5764
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->nvResetConfig(II)V

    goto/16 :goto_8

    :pswitch_13
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_39

    move v1, v2

    :cond_39
    if-eq v1, v2, :cond_3a

    .line 5742
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5743
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_3a
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5745
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5747
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5748
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 5749
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->nvWriteCdmaPrl(ILjava/util/ArrayList;)V

    goto/16 :goto_8

    :pswitch_14
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3b

    move v1, v2

    :cond_3b
    if-eq v1, v2, :cond_3c

    .line 5726
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5727
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_3c
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5729
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5731
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5732
    new-instance p3, Landroid/hardware/radio/V1_0/NvWriteItem;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/NvWriteItem;-><init>()V

    .line 5733
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/NvWriteItem;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5734
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->nvWriteItem(ILandroid/hardware/radio/V1_0/NvWriteItem;)V

    goto/16 :goto_8

    :pswitch_15
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3d

    move v1, v2

    :cond_3d
    if-eq v1, v2, :cond_3e

    .line 5711
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5712
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_3e
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5714
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5716
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5717
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 5718
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->nvReadItem(II)V

    goto/16 :goto_8

    :pswitch_16
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3f

    move v1, v2

    :cond_3f
    if-eq v1, v2, :cond_40

    .line 5695
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5696
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_40
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5698
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5700
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5701
    new-instance p3, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 5702
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5703
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->iccTransmitApduLogicalChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    goto/16 :goto_8

    :pswitch_17
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_41

    move v1, v2

    :cond_41
    if-eq v1, v2, :cond_42

    .line 5680
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5681
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_42
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5683
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5685
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5686
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 5687
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->iccCloseLogicalChannel(II)V

    goto/16 :goto_8

    :pswitch_18
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_43

    move v1, v2

    :cond_43
    if-eq v1, v2, :cond_44

    .line 5664
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5665
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_44
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5667
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5669
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5670
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 5671
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 5672
    invoke-virtual {p0, p1, p3, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->iccOpenLogicalChannel(ILjava/lang/String;I)V

    goto/16 :goto_8

    :pswitch_19
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_45

    move v1, v2

    :cond_45
    if-eq v1, v2, :cond_46

    .line 5648
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5649
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_46
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5651
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5653
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5654
    new-instance p3, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 5655
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5656
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->iccTransmitApduBasicChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    goto/16 :goto_8

    :pswitch_1a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_47

    move v1, v2

    :cond_47
    if-eq v1, v2, :cond_48

    .line 5632
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5633
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_48
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5635
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5637
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5638
    new-instance p3, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 5639
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5640
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    goto/16 :goto_8

    :pswitch_1b
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_49

    move v1, v2

    :cond_49
    if-eq v1, v2, :cond_4a

    .line 5618
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5619
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_4a
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5621
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5623
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5624
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getImsRegistrationState(I)V

    goto/16 :goto_8

    :pswitch_1c
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_4b

    move v1, v2

    :cond_4b
    if-eq v1, v2, :cond_4c

    .line 5600
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5601
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_4c
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5603
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5605
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5606
    new-instance p3, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 5607
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5608
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p4

    .line 5609
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 5610
    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setInitialAttachApn(ILandroid/hardware/radio/V1_0/DataProfileInfo;ZZ)V

    goto/16 :goto_8

    :pswitch_1d
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_4d

    move v1, v2

    :cond_4d
    if-eq v1, v2, :cond_4e

    .line 5585
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5586
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_4e
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5588
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5590
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5591
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 5592
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setCellInfoListRate(II)V

    goto/16 :goto_8

    :pswitch_1e
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_4f

    move v1, v2

    :cond_4f
    if-eq v1, v2, :cond_50

    .line 5571
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5572
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_50
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5574
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5576
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5577
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getCellInfoList(I)V

    goto/16 :goto_8

    :pswitch_1f
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_51

    move v1, v2

    :cond_51
    if-eq v1, v2, :cond_52

    .line 5557
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5558
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_52
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5560
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5562
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5563
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getVoiceRadioTechnology(I)V

    goto/16 :goto_8

    :pswitch_20
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_53

    move v1, v2

    :cond_53
    if-eq v1, v2, :cond_54

    .line 5542
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5543
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_54
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5545
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5547
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5548
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 5549
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)V

    goto/16 :goto_8

    :pswitch_21
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_55

    move v1, v2

    :cond_55
    if-eq v1, v2, :cond_56

    .line 5526
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5527
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_56
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5529
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5531
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5532
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p3

    .line 5533
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 5534
    invoke-virtual {p0, p1, p3, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    goto/16 :goto_8

    :pswitch_22
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_57

    move v1, v2

    :cond_57
    if-eq v1, v2, :cond_58

    .line 5511
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5512
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_58
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5514
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5516
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5517
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 5518
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->requestIsimAuthentication(ILjava/lang/String;)V

    goto/16 :goto_8

    :pswitch_23
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_59

    move v1, v2

    :cond_59
    if-eq v1, v2, :cond_5a

    .line 5497
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5498
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_5a
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5500
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5502
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5503
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getCdmaSubscriptionSource(I)V

    goto/16 :goto_8

    :pswitch_24
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5b

    move v1, v2

    :cond_5b
    if-eq v1, v2, :cond_5c

    .line 5483
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5484
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_5c
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5486
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5488
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5489
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->reportStkServiceIsRunning(I)V

    goto/16 :goto_8

    :pswitch_25
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5d

    move v1, v2

    :cond_5d
    if-eq v1, v2, :cond_5e

    .line 5468
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5469
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_5e
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5471
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5473
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5474
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 5475
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->reportSmsMemoryStatus(IZ)V

    goto/16 :goto_8

    :pswitch_26
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5f

    move v1, v2

    :cond_5f
    if-eq v1, v2, :cond_60

    .line 5453
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5454
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_60
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5456
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5458
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5459
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 5460
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setSmscAddress(ILjava/lang/String;)V

    goto/16 :goto_8

    :pswitch_27
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_61

    move v1, v2

    :cond_61
    if-eq v1, v2, :cond_62

    .line 5439
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5440
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_62
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5442
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5444
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5445
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getSmscAddress(I)V

    goto/16 :goto_8

    :pswitch_28
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_63

    move v1, v2

    :cond_63
    if-eq v1, v2, :cond_64

    .line 5425
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5426
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_64
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5428
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5430
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5431
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->exitEmergencyCallbackMode(I)V

    goto/16 :goto_8

    :pswitch_29
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_65

    move v1, v2

    :cond_65
    if-eq v1, v2, :cond_66

    .line 5411
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5412
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_66
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5414
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5416
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5417
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getDeviceIdentity(I)V

    goto/16 :goto_8

    :pswitch_2a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_67

    move v1, v2

    :cond_67
    if-eq v1, v2, :cond_68

    .line 5396
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5397
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_68
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5399
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5401
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5402
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 5403
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->deleteSmsOnRuim(II)V

    goto/16 :goto_8

    :pswitch_2b
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_69

    move v1, v2

    :cond_69
    if-eq v1, v2, :cond_6a

    .line 5380
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5381
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_6a
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5383
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5385
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5386
    new-instance p3, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;-><init>()V

    .line 5387
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5388
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->writeSmsToRuim(ILandroid/hardware/radio/V1_0/CdmaSmsWriteArgs;)V

    goto/16 :goto_8

    :pswitch_2c
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_6b

    move v1, v2

    :cond_6b
    if-eq v1, v2, :cond_6c

    .line 5366
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5367
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_6c
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5369
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5371
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5372
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getCDMASubscription(I)V

    goto/16 :goto_8

    :pswitch_2d
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_6d

    move v1, v2

    :cond_6d
    if-eq v1, v2, :cond_6e

    .line 5351
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5352
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_6e
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5354
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5356
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5357
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 5358
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setCdmaBroadcastActivation(IZ)V

    goto/16 :goto_8

    :pswitch_2e
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_6f

    move v1, v2

    :cond_6f
    if-eq v1, v2, :cond_70

    .line 5336
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5337
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_70
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5339
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5341
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5342
    invoke-static {p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 5343
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setCdmaBroadcastConfig(ILjava/util/ArrayList;)V

    goto/16 :goto_8

    :pswitch_2f
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_71

    move v1, v2

    :cond_71
    if-eq v1, v2, :cond_72

    .line 5322
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5323
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_72
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5325
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5327
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5328
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getCdmaBroadcastConfig(I)V

    goto/16 :goto_8

    :pswitch_30
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_73

    move v1, v2

    :cond_73
    if-eq v1, v2, :cond_74

    .line 5307
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5308
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_74
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5310
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5312
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5313
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 5314
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setGsmBroadcastActivation(IZ)V

    goto/16 :goto_8

    :pswitch_31
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_75

    move v1, v2

    :cond_75
    if-eq v1, v2, :cond_76

    .line 5292
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5293
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_76
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5295
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5297
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5298
    invoke-static {p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 5299
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setGsmBroadcastConfig(ILjava/util/ArrayList;)V

    goto/16 :goto_8

    :pswitch_32
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_77

    move v1, v2

    :cond_77
    if-eq v1, v2, :cond_78

    .line 5278
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5279
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_78
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5281
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5283
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5284
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getGsmBroadcastConfig(I)V

    goto/16 :goto_8

    :pswitch_33
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_79

    move v1, v2

    :cond_79
    if-eq v1, v2, :cond_7a

    .line 5262
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5263
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_7a
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5265
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5267
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5268
    new-instance p3, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 5269
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5270
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    goto/16 :goto_8

    :pswitch_34
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_7b

    move v1, v2

    :cond_7b
    if-eq v1, v2, :cond_7c

    .line 5246
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5247
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_7c
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5249
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5251
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5252
    new-instance p3, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 5253
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5254
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    goto/16 :goto_8

    :pswitch_35
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_7d

    move v1, v2

    :cond_7d
    if-eq v1, v2, :cond_7e

    .line 5229
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5230
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_7e
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5232
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5234
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5235
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 5236
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p4

    .line 5237
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 5238
    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendBurstDtmf(ILjava/lang/String;II)V

    goto/16 :goto_8

    :pswitch_36
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_7f

    move v1, v2

    :cond_7f
    if-eq v1, v2, :cond_80

    .line 5214
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5215
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_80
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5217
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5219
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5220
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 5221
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendCDMAFeatureCode(ILjava/lang/String;)V

    goto/16 :goto_8

    :pswitch_37
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_81

    move v1, v2

    :cond_81
    if-eq v1, v2, :cond_82

    .line 5200
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5201
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_82
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5203
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5205
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5206
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getPreferredVoicePrivacy(I)V

    goto/16 :goto_8

    :pswitch_38
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_83

    move v1, v2

    :cond_83
    if-eq v1, v2, :cond_84

    .line 5185
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5186
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_84
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5188
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5190
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5191
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 5192
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setPreferredVoicePrivacy(IZ)V

    goto/16 :goto_8

    :pswitch_39
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_85

    move v1, v2

    :cond_85
    if-eq v1, v2, :cond_86

    .line 5171
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5172
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_86
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5174
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5176
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5177
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getTTYMode(I)V

    goto/16 :goto_8

    :pswitch_3a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_87

    move v1, v2

    :cond_87
    if-eq v1, v2, :cond_88

    .line 5156
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5157
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_88
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5159
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5161
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5162
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 5163
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setTTYMode(II)V

    goto/16 :goto_8

    :pswitch_3b
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_89

    move v1, v2

    :cond_89
    if-eq v1, v2, :cond_8a

    .line 5142
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5143
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_8a
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5145
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5147
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5148
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getCdmaRoamingPreference(I)V

    goto/16 :goto_8

    :pswitch_3c
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_8b

    move v1, v2

    :cond_8b
    if-eq v1, v2, :cond_8c

    .line 5127
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5128
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_8c
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5130
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5132
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5133
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 5134
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setCdmaRoamingPreference(II)V

    goto/16 :goto_8

    :pswitch_3d
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_8d

    move v1, v2

    :cond_8d
    if-eq v1, v2, :cond_8e

    .line 5112
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5113
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_8e
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5115
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5117
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5118
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 5119
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setCdmaSubscriptionSource(II)V

    goto/16 :goto_8

    :pswitch_3e
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_8f

    move v1, v2

    :cond_8f
    if-eq v1, v2, :cond_90

    .line 5097
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5098
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_90
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5100
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5102
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5103
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 5104
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setLocationUpdates(IZ)V

    goto/16 :goto_8

    :pswitch_3f
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_91

    move v1, v2

    :cond_91
    if-eq v1, v2, :cond_92

    .line 5083
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5084
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_92
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5086
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5088
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5089
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getNeighboringCids(I)V

    goto/16 :goto_8

    :pswitch_40
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_93

    move v1, v2

    :cond_93
    if-eq v1, v2, :cond_94

    .line 5069
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5070
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_94
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5072
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5074
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5075
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getPreferredNetworkType(I)V

    goto/16 :goto_8

    :pswitch_41
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_95

    move v1, v2

    :cond_95
    if-eq v1, v2, :cond_96

    .line 5054
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5055
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_96
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5057
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5059
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5060
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 5061
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setPreferredNetworkType(II)V

    goto/16 :goto_8

    :pswitch_42
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_97

    move v1, v2

    :cond_97
    if-eq v1, v2, :cond_98

    .line 5040
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5041
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_98
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5043
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5045
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5046
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->explicitCallTransfer(I)V

    goto/16 :goto_8

    :pswitch_43
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_99

    move v1, v2

    :cond_99
    if-eq v1, v2, :cond_9a

    .line 5025
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5026
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_9a
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5028
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5030
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5031
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 5032
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->handleStkCallSetupRequestFromSim(IZ)V

    goto/16 :goto_8

    :pswitch_44
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_9b

    move v1, v2

    :cond_9b
    if-eq v1, v2, :cond_9c

    .line 5010
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5011
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_9c
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 5013
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5015
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5016
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 5017
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendTerminalResponseToSim(ILjava/lang/String;)V

    goto/16 :goto_8

    :pswitch_45
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_9d

    move v1, v2

    :cond_9d
    if-eq v1, v2, :cond_9e

    .line 4995
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4996
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_9e
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4998
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5000
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 5001
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 5002
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendEnvelope(ILjava/lang/String;)V

    goto/16 :goto_8

    :pswitch_46
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_9f

    move v1, v2

    :cond_9f
    if-eq v1, v2, :cond_a0

    .line 4981
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4982
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_a0
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4984
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4986
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4987
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getAvailableBandModes(I)V

    goto/16 :goto_8

    :pswitch_47
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a1

    move v1, v2

    :cond_a1
    if-eq v1, v2, :cond_a2

    .line 4966
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4967
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_a2
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4969
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4971
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4972
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 4973
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setBandMode(II)V

    goto/16 :goto_8

    :pswitch_48
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a3

    move v1, v2

    :cond_a3
    if-eq v1, v2, :cond_a4

    .line 4951
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4952
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_a4
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4954
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4956
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4957
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 4958
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->deleteSmsOnSim(II)V

    goto/16 :goto_8

    :pswitch_49
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a5

    move v1, v2

    :cond_a5
    if-eq v1, v2, :cond_a6

    .line 4935
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4936
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_a6
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4938
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4940
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4941
    new-instance p3, Landroid/hardware/radio/V1_0/SmsWriteArgs;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/SmsWriteArgs;-><init>()V

    .line 4942
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/SmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4943
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V

    goto/16 :goto_8

    :pswitch_4a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a7

    move v1, v2

    :cond_a7
    if-eq v1, v2, :cond_a8

    .line 4920
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4921
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_a8
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4923
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4925
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4926
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 4927
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setSuppServiceNotifications(IZ)V

    goto/16 :goto_8

    :pswitch_4b
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a9

    move v1, v2

    :cond_a9
    if-eq v1, v2, :cond_aa

    .line 4906
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4907
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_aa
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4909
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4911
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4912
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getDataCallList(I)V

    goto/16 :goto_8

    :pswitch_4c
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_ab

    move v1, v2

    :cond_ab
    if-eq v1, v2, :cond_ac

    .line 4892
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4893
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_ac
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4895
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4897
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4898
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getClip(I)V

    goto/16 :goto_8

    :pswitch_4d
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_ad

    move v1, v2

    :cond_ad
    if-eq v1, v2, :cond_ae

    .line 4878
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4879
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_ae
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4881
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4883
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4884
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getMute(I)V

    goto/16 :goto_8

    :pswitch_4e
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_af

    move v1, v2

    :cond_af
    if-eq v1, v2, :cond_b0

    .line 4863
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4864
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_b0
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4866
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4868
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4869
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 4870
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setMute(IZ)V

    goto/16 :goto_8

    :pswitch_4f
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_b1

    move v1, v2

    :cond_b1
    if-eq v1, v2, :cond_b2

    .line 4848
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4849
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_b2
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4851
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4853
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4854
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 4855
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->separateConnection(II)V

    goto/16 :goto_8

    :pswitch_50
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_b3

    move v1, v2

    :cond_b3
    if-eq v1, v2, :cond_b4

    .line 4834
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4835
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_b4
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4837
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4839
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4840
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getBasebandVersion(I)V

    goto/16 :goto_8

    :pswitch_51
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_b5

    move v1, v2

    :cond_b5
    if-eq v1, v2, :cond_b6

    .line 4820
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4821
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_b6
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4823
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4825
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4826
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->stopDtmf(I)V

    goto/16 :goto_8

    :pswitch_52
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_b7

    move v1, v2

    :cond_b7
    if-eq v1, v2, :cond_b8

    .line 4805
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4806
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_b8
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4808
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4810
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4811
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 4812
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->startDtmf(ILjava/lang/String;)V

    goto/16 :goto_8

    :pswitch_53
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_b9

    move v1, v2

    :cond_b9
    if-eq v1, v2, :cond_ba

    .line 4791
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4792
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_ba
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4794
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4796
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4797
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getAvailableNetworks(I)V

    goto/16 :goto_8

    :pswitch_54
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_bb

    move v1, v2

    :cond_bb
    if-eq v1, v2, :cond_bc

    .line 4776
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4777
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_bc
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4779
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4781
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4782
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 4783
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setNetworkSelectionModeManual(ILjava/lang/String;)V

    goto/16 :goto_8

    :pswitch_55
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_bd

    move v1, v2

    :cond_bd
    if-eq v1, v2, :cond_be

    .line 4762
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4763
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_be
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4765
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4767
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4768
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setNetworkSelectionModeAutomatic(I)V

    goto/16 :goto_8

    :pswitch_56
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_bf

    move v1, v2

    :cond_bf
    if-eq v1, v2, :cond_c0

    .line 4748
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4749
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_c0
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4751
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4753
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4754
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getNetworkSelectionMode(I)V

    goto/16 :goto_8

    :pswitch_57
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_c1

    move v1, v2

    :cond_c1
    if-eq v1, v2, :cond_c2

    .line 4731
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4732
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_c2
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4734
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4736
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4737
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 4738
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 4739
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 4740
    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_58
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_c3

    move v1, v2

    :cond_c3
    if-eq v1, v2, :cond_c4

    .line 4712
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4713
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_c4
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4715
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4717
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4718
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4719
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4720
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4721
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4722
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    .line 4723
    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_8

    :pswitch_59
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_c5

    move v1, v2

    :cond_c5
    if-eq v1, v2, :cond_c6

    .line 4694
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4695
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_c6
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4697
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4699
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4700
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4701
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4702
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 4703
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 4704
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_8

    :pswitch_5a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_c7

    move v1, v2

    :cond_c7
    if-eq v1, v2, :cond_c8

    .line 4678
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4679
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_c8
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4681
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4683
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4684
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 4685
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 4686
    invoke-virtual {p0, p1, p3, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->deactivateDataCall(IIZ)V

    goto/16 :goto_8

    :pswitch_5b
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_c9

    move v1, v2

    :cond_c9
    if-eq v1, v2, :cond_ca

    .line 4664
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4665
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_ca
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4667
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4669
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4670
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->acceptCall(I)V

    goto/16 :goto_8

    :pswitch_5c
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_cb

    move v1, v2

    :cond_cb
    if-eq v1, v2, :cond_cc

    .line 4648
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4649
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_cc
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4651
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4653
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4654
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p3

    .line 4655
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 4656
    invoke-virtual {p0, p1, p3, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->acknowledgeLastIncomingGsmSms(IZI)V

    goto/16 :goto_8

    :pswitch_5d
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_cd

    move v1, v2

    :cond_cd
    if-eq v1, v2, :cond_ce

    .line 4632
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4633
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_ce
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4635
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4637
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4638
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p3

    .line 4639
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 4640
    invoke-virtual {p0, p1, p3, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setCallWaiting(IZI)V

    goto/16 :goto_8

    :pswitch_5e
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_cf

    move v1, v2

    :cond_cf
    if-eq v1, v2, :cond_d0

    .line 4617
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4618
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_d0
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4620
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4622
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4623
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 4624
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getCallWaiting(II)V

    goto/16 :goto_8

    :pswitch_5f
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_d1

    move v1, v2

    :cond_d1
    if-eq v1, v2, :cond_d2

    .line 4601
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4602
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_d2
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4604
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4606
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4607
    new-instance p3, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 4608
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4609
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    goto/16 :goto_8

    :pswitch_60
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_d3

    move v1, v2

    :cond_d3
    if-eq v1, v2, :cond_d4

    .line 4585
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4586
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_d4
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4588
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4590
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4591
    new-instance p3, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 4592
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4593
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    goto/16 :goto_8

    :pswitch_61
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_d5

    move v1, v2

    :cond_d5
    if-eq v1, v2, :cond_d6

    .line 4570
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4571
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_d6
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4573
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4575
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4576
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 4577
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setClir(II)V

    goto/16 :goto_8

    :pswitch_62
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_d7

    move v1, v2

    :cond_d7
    if-eq v1, v2, :cond_d8

    .line 4556
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4557
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_d8
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4559
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4561
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4562
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getClir(I)V

    goto/16 :goto_8

    :pswitch_63
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_d9

    move v1, v2

    :cond_d9
    if-eq v1, v2, :cond_da

    .line 4542
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4543
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_da
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4545
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4547
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4548
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->cancelPendingUssd(I)V

    goto/16 :goto_8

    :pswitch_64
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_db

    move v1, v2

    :cond_db
    if-eq v1, v2, :cond_dc

    .line 4527
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4528
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_dc
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4530
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4532
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4533
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 4534
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendUssd(ILjava/lang/String;)V

    goto/16 :goto_8

    :pswitch_65
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_dd

    move v1, v2

    :cond_dd
    if-eq v1, v2, :cond_de

    .line 4511
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4512
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_de
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4514
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4516
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4517
    new-instance p3, Landroid/hardware/radio/V1_0/IccIo;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/IccIo;-><init>()V

    .line 4518
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/IccIo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4519
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->iccIOForApp(ILandroid/hardware/radio/V1_0/IccIo;)V

    goto/16 :goto_8

    :pswitch_66
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_df

    move v1, v2

    :cond_df
    if-eq v1, v2, :cond_e0

    .line 4491
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4492
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_e0
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4494
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4496
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4497
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4498
    new-instance v3, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 4499
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4500
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 4501
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v5

    .line 4502
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v6

    move-object v0, p0

    .line 4503
    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setupDataCall(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZ)V

    goto/16 :goto_8

    :pswitch_67
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_e1

    move v1, v2

    :cond_e1
    if-eq v1, v2, :cond_e2

    .line 4475
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4476
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_e2
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4478
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4480
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4481
    new-instance p3, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 4482
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4483
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    goto/16 :goto_8

    :pswitch_68
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_e3

    move v1, v2

    :cond_e3
    if-eq v1, v2, :cond_e4

    .line 4459
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4460
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_e4
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4462
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4464
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4465
    new-instance p3, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 4466
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4467
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    goto/16 :goto_8

    :pswitch_69
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_e5

    move v1, v2

    :cond_e5
    if-eq v1, v2, :cond_e6

    .line 4444
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4445
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_e6
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4447
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4449
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4450
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 4451
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendDtmf(ILjava/lang/String;)V

    goto/16 :goto_8

    :pswitch_6a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_e7

    move v1, v2

    :cond_e7
    if-eq v1, v2, :cond_e8

    .line 4429
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4430
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_e8
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4432
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4434
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4435
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 4436
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setRadioPower(IZ)V

    goto/16 :goto_8

    :pswitch_6b
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_e9

    move v1, v2

    :cond_e9
    if-eq v1, v2, :cond_ea

    .line 4415
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4416
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_ea
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4418
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4420
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4421
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getOperator(I)V

    goto/16 :goto_8

    :pswitch_6c
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_eb

    move v1, v2

    :cond_eb
    if-eq v1, v2, :cond_ec

    .line 4401
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4402
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_ec
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4404
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4406
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4407
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getDataRegistrationState(I)V

    goto/16 :goto_8

    :pswitch_6d
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_ed

    move v1, v2

    :cond_ed
    if-eq v1, v2, :cond_ee

    .line 4387
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4388
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_ee
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4390
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4392
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4393
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getVoiceRegistrationState(I)V

    goto/16 :goto_8

    :pswitch_6e
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_ef

    move v1, v2

    :cond_ef
    if-eq v1, v2, :cond_f0

    .line 4373
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4374
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_f0
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4376
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4378
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4379
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getSignalStrength(I)V

    goto/16 :goto_8

    :pswitch_6f
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_f1

    move v1, v2

    :cond_f1
    if-eq v1, v2, :cond_f2

    .line 4359
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4360
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_f2
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4362
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4364
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4365
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getLastCallFailCause(I)V

    goto/16 :goto_8

    :pswitch_70
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_f3

    move v1, v2

    :cond_f3
    if-eq v1, v2, :cond_f4

    .line 4345
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4346
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_f4
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4348
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4350
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4351
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->rejectCall(I)V

    goto/16 :goto_8

    :pswitch_71
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_f5

    move v1, v2

    :cond_f5
    if-eq v1, v2, :cond_f6

    .line 4331
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4332
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_f6
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4334
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4336
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4337
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->conference(I)V

    goto/16 :goto_8

    :pswitch_72
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_f7

    move v1, v2

    :cond_f7
    if-eq v1, v2, :cond_f8

    .line 4317
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4318
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_f8
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4320
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4322
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4323
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->switchWaitingOrHoldingAndActive(I)V

    goto/16 :goto_8

    :pswitch_73
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_f9

    move v1, v2

    :cond_f9
    if-eq v1, v2, :cond_fa

    .line 4303
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4304
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_fa
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4306
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4308
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4309
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->hangupForegroundResumeBackground(I)V

    goto/16 :goto_8

    :pswitch_74
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_fb

    move v1, v2

    :cond_fb
    if-eq v1, v2, :cond_fc

    .line 4289
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4290
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_fc
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4292
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4294
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4295
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->hangupWaitingOrBackground(I)V

    goto/16 :goto_8

    :pswitch_75
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_fd

    move v1, v2

    :cond_fd
    if-eq v1, v2, :cond_fe

    .line 4274
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4275
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_fe
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4277
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4279
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4280
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 4281
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->hangup(II)V

    goto/16 :goto_8

    :pswitch_76
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_ff

    move v1, v2

    :cond_ff
    if-eq v1, v2, :cond_100

    .line 4259
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4260
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_100
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4262
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4264
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4265
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 4266
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getImsiForApp(ILjava/lang/String;)V

    goto/16 :goto_8

    :pswitch_77
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_101

    move v1, v2

    :cond_101
    if-eq v1, v2, :cond_102

    .line 4243
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4244
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_102
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4246
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4248
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4249
    new-instance p3, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 4250
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4251
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->dial(ILandroid/hardware/radio/V1_0/Dial;)V

    goto/16 :goto_8

    :pswitch_78
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_103

    move v1, v2

    :cond_103
    if-eq v1, v2, :cond_104

    .line 4229
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4230
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_104
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4232
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4234
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4235
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getCurrentCalls(I)V

    goto/16 :goto_8

    :pswitch_79
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_105

    move v1, v2

    :cond_105
    if-eq v1, v2, :cond_106

    .line 4214
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4215
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_106
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4217
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4219
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4220
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 4221
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    goto/16 :goto_8

    :pswitch_7a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_107

    move v1, v2

    :cond_107
    if-eq v1, v2, :cond_108

    .line 4197
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4198
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_108
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4200
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4202
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4203
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 4204
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 4205
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 4206
    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_7b
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_109

    move v1, v2

    :cond_109
    if-eq v1, v2, :cond_10a

    .line 4180
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4181
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_10a
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4183
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4185
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4186
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 4187
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 4188
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 4189
    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_7c
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_10b

    move v1, v2

    :cond_10b
    if-eq v1, v2, :cond_10c

    .line 4163
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4164
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_10c
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4166
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4168
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4169
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 4170
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 4171
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 4172
    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_7d
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_10d

    move v1, v2

    :cond_10d
    if-eq v1, v2, :cond_10e

    .line 4147
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4148
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_10e
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4150
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4152
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4153
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 4154
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 4155
    invoke-virtual {p0, p1, p3, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_7e
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_10f

    move v1, v2

    :cond_10f
    if-eq v1, v2, :cond_110

    .line 4130
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4131
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_110
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4133
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4135
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4136
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 4137
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 4138
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 4139
    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_7f
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_111

    move v1, v2

    :cond_111
    if-eq v1, v2, :cond_112

    .line 4114
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4115
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_8

    :cond_112
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4117
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4119
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4120
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 4121
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 4122
    invoke-virtual {p0, p1, p3, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :pswitch_80
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_113

    move v1, v2

    :cond_113
    if-eq v1, v2, :cond_114

    .line 4100
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4101
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_8

    :cond_114
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4103
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4105
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4106
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getIccCardStatus(I)V

    goto :goto_8

    :pswitch_81
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_115

    goto :goto_7

    :cond_115
    move v2, v1

    :goto_7
    if-eqz v2, :cond_116

    .line 4083
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4084
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_8

    :cond_116
    const-string p1, "android.hardware.radio@1.0::IRadio"

    .line 4086
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4088
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/radio/V1_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioResponse;

    move-result-object p1

    .line 4089
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/hardware/radio/V1_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioIndication;

    move-result-object p2

    .line 4090
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    .line 4091
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4092
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    :cond_117
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_81
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

    const-string v0, "android.hardware.radio@1.0::IRadio"

    .line 4060
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

    .line 4067
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 4072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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
