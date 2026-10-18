.class public final Landroid/net/wifi/rtt/ResponderConfig;
.super Ljava/lang/Object;
.source "ResponderConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/rtt/ResponderConfig$PreambleType;,
        Landroid/net/wifi/rtt/ResponderConfig$ChannelWidth;,
        Landroid/net/wifi/rtt/ResponderConfig$ResponderType;
    }
.end annotation


# static fields
.field private static final AWARE_BAND_2_DISCOVERY_CHANNEL:I = 0x985

.field public static final CHANNEL_WIDTH_160MHZ:I = 0x3

.field public static final CHANNEL_WIDTH_20MHZ:I = 0x0

.field public static final CHANNEL_WIDTH_40MHZ:I = 0x1

.field public static final CHANNEL_WIDTH_80MHZ:I = 0x2

.field public static final CHANNEL_WIDTH_80MHZ_PLUS_MHZ:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/rtt/ResponderConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREAMBLE_HT:I = 0x1

.field public static final PREAMBLE_LEGACY:I = 0x0

.field public static final PREAMBLE_VHT:I = 0x2

.field public static final RESPONDER_AP:I = 0x0

.field public static final RESPONDER_AWARE:I = 0x4

.field public static final RESPONDER_P2P_CLIENT:I = 0x3

.field public static final RESPONDER_P2P_GO:I = 0x2

.field public static final RESPONDER_STA:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ResponderConfig"


# instance fields
.field public final centerFreq0:I

.field public final centerFreq1:I

.field public final channelWidth:I

.field public final frequency:I

.field public final macAddress:Landroid/net/MacAddress;

.field public final peerHandle:Landroid/net/wifi/aware/PeerHandle;

.field public final preamble:I

.field public final responderType:I

.field public final supports80211mc:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 409
    new-instance v0, Landroid/net/wifi/rtt/ResponderConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/rtt/ResponderConfig$1;-><init>()V

    sput-object v0, Landroid/net/wifi/rtt/ResponderConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/MacAddress;IZIIIII)V
    .locals 0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 207
    iput-object p1, p0, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    const/4 p1, 0x0

    .line 208
    iput-object p1, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    .line 209
    iput p2, p0, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    .line 210
    iput-boolean p3, p0, Landroid/net/wifi/rtt/ResponderConfig;->supports80211mc:Z

    .line 211
    iput p4, p0, Landroid/net/wifi/rtt/ResponderConfig;->channelWidth:I

    .line 212
    iput p5, p0, Landroid/net/wifi/rtt/ResponderConfig;->frequency:I

    .line 213
    iput p6, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq0:I

    .line 214
    iput p7, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq1:I

    .line 215
    iput p8, p0, Landroid/net/wifi/rtt/ResponderConfig;->preamble:I

    return-void

    .line 204
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid ResponderConfig - must specify a MAC address"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Landroid/net/MacAddress;Landroid/net/wifi/aware/PeerHandle;IZIIIII)V
    .locals 0

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput-object p1, p0, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    .line 282
    iput-object p2, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    .line 283
    iput p3, p0, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    .line 284
    iput-boolean p4, p0, Landroid/net/wifi/rtt/ResponderConfig;->supports80211mc:Z

    .line 285
    iput p5, p0, Landroid/net/wifi/rtt/ResponderConfig;->channelWidth:I

    .line 286
    iput p6, p0, Landroid/net/wifi/rtt/ResponderConfig;->frequency:I

    .line 287
    iput p7, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq0:I

    .line 288
    iput p8, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq1:I

    .line 289
    iput p9, p0, Landroid/net/wifi/rtt/ResponderConfig;->preamble:I

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/aware/PeerHandle;IZIIIII)V
    .locals 1

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 242
    iput-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    .line 243
    iput-object p1, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    .line 244
    iput p2, p0, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    .line 245
    iput-boolean p3, p0, Landroid/net/wifi/rtt/ResponderConfig;->supports80211mc:Z

    .line 246
    iput p4, p0, Landroid/net/wifi/rtt/ResponderConfig;->channelWidth:I

    .line 247
    iput p5, p0, Landroid/net/wifi/rtt/ResponderConfig;->frequency:I

    .line 248
    iput p6, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq0:I

    .line 249
    iput p7, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq1:I

    .line 250
    iput p8, p0, Landroid/net/wifi/rtt/ResponderConfig;->preamble:I

    return-void
.end method

.method public static fromScanResult(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/rtt/ResponderConfig;
    .locals 17

    move-object/from16 v0, p0

    .line 297
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v3

    .line 299
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/ScanResult;->is80211mcResponder()Z

    move-result v5

    .line 300
    iget v1, v0, Landroid/net/wifi/ScanResult;->channelWidth:I

    invoke-static {v1}, Landroid/net/wifi/rtt/ResponderConfig;->translateScanResultChannelWidth(I)I

    move-result v6

    .line 301
    iget v7, v0, Landroid/net/wifi/ScanResult;->frequency:I

    .line 302
    iget v8, v0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    .line 303
    iget v9, v0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    .line 306
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    const/4 v2, 0x2

    if-eqz v1, :cond_5

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    array-length v1, v1

    if-eqz v1, :cond_5

    .line 309
    iget-object v0, v0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    array-length v1, v0

    const/4 v10, 0x0

    move v11, v10

    move v12, v11

    move v13, v12

    :goto_0
    if-ge v11, v1, :cond_2

    aget-object v14, v0, v11

    .line 310
    iget v15, v14, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    const/16 v4, 0x2d

    if-ne v15, v4, :cond_0

    const/4 v13, 0x1

    goto :goto_1

    .line 312
    :cond_0
    iget v4, v14, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    const/16 v14, 0xbf

    if-ne v4, v14, :cond_1

    const/4 v12, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    if-eqz v12, :cond_3

    move/from16 v16, v2

    goto :goto_2

    :cond_3
    if-eqz v13, :cond_4

    const/16 v16, 0x1

    goto :goto_2

    :cond_4
    move/from16 v16, v10

    :goto_2
    move/from16 v10, v16

    goto :goto_4

    :cond_5
    const-string v0, "ResponderConfig"

    const-string v1, "Scan Results do not contain IEs - using backup method to select preamble"

    .line 324
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v6, v2, :cond_7

    const/4 v0, 0x3

    if-ne v6, v0, :cond_6

    goto :goto_3

    :cond_6
    const/4 v10, 0x1

    goto :goto_4

    :cond_7
    :goto_3
    move v10, v2

    .line 332
    :goto_4
    new-instance v0, Landroid/net/wifi/rtt/ResponderConfig;

    const/4 v4, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Landroid/net/wifi/rtt/ResponderConfig;-><init>(Landroid/net/MacAddress;IZIIIII)V

    return-object v0
.end method

.method public static fromWifiAwarePeerHandleWithDefaults(Landroid/net/wifi/aware/PeerHandle;)Landroid/net/wifi/rtt/ResponderConfig;
    .locals 10

    .line 360
    new-instance v9, Landroid/net/wifi/rtt/ResponderConfig;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x985

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Landroid/net/wifi/rtt/ResponderConfig;-><init>(Landroid/net/wifi/aware/PeerHandle;IZIIIII)V

    return-object v9
.end method

.method public static fromWifiAwarePeerMacAddressWithDefaults(Landroid/net/MacAddress;)Landroid/net/wifi/rtt/ResponderConfig;
    .locals 10

    .line 346
    new-instance v9, Landroid/net/wifi/rtt/ResponderConfig;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x985

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Landroid/net/wifi/rtt/ResponderConfig;-><init>(Landroid/net/MacAddress;IZIIIII)V

    return-object v9
.end method

.method static translateScanResultChannelWidth(I)I
    .locals 3

    packed-switch p0, :pswitch_data_0

    .line 496
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "translateScanResultChannelWidth: bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 p0, 0x4

    return p0

    :pswitch_1
    const/4 p0, 0x3

    return p0

    :pswitch_2
    const/4 p0, 0x2

    return p0

    :pswitch_3
    const/4 p0, 0x1

    return p0

    :pswitch_4
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 451
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/rtt/ResponderConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 455
    :cond_1
    check-cast p1, Landroid/net/wifi/rtt/ResponderConfig;

    .line 457
    iget-object v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    iget-object v3, p1, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    iget-object v3, p1, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    iget v3, p1, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->supports80211mc:Z

    iget-boolean v3, p1, Landroid/net/wifi/rtt/ResponderConfig;->supports80211mc:Z

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->channelWidth:I

    iget v3, p1, Landroid/net/wifi/rtt/ResponderConfig;->channelWidth:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->frequency:I

    iget v3, p1, Landroid/net/wifi/rtt/ResponderConfig;->frequency:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq0:I

    iget v3, p1, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq0:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq1:I

    iget v3, p1, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq1:I

    if-ne v1, v3, :cond_2

    iget p0, p0, Landroid/net/wifi/rtt/ResponderConfig;->preamble:I

    iget p1, p1, Landroid/net/wifi/rtt/ResponderConfig;->preamble:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x9

    .line 466
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->supports80211mc:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->channelWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->frequency:I

    .line 467
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq0:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget p0, p0, Landroid/net/wifi/rtt/ResponderConfig;->preamble:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x8

    aput-object p0, v0, v1

    .line 466
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isValid(Z)Z
    .locals 2

    .line 371
    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    if-eqz v0, :cond_2

    :cond_1
    return v1

    :cond_2
    if-nez p1, :cond_3

    .line 374
    iget p0, p0, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    const/4 p1, 0x4

    if-ne p0, p1, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 473
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "ResponderConfig: macAddress="

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", peerHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 474
    iget-object v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    if-nez v1, :cond_0

    const-string v1, "<null>"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    iget v1, v1, Landroid/net/wifi/aware/PeerHandle;->peerId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", responderType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    .line 475
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", supports80211mc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->supports80211mc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, ", channelWidth="

    .line 476
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->channelWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", frequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->frequency:I

    .line 477
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", centerFreq0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", centerFreq1="

    .line 478
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", preamble="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p0, p0, Landroid/net/wifi/rtt/ResponderConfig;->preamble:I

    .line 479
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 388
    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 389
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    .line 391
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 392
    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    invoke-virtual {v0, p1, p2}, Landroid/net/MacAddress;->writeToParcel(Landroid/os/Parcel;I)V

    .line 394
    :goto_0
    iget-object p2, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    if-nez p2, :cond_1

    .line 395
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_1

    .line 397
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 398
    iget-object p2, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    iget p2, p2, Landroid/net/wifi/aware/PeerHandle;->peerId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    :goto_1
    iget p2, p0, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 401
    iget-boolean p2, p0, Landroid/net/wifi/rtt/ResponderConfig;->supports80211mc:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    iget p2, p0, Landroid/net/wifi/rtt/ResponderConfig;->channelWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    iget p2, p0, Landroid/net/wifi/rtt/ResponderConfig;->frequency:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    iget p2, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq0:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    iget p2, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq1:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    iget p0, p0, Landroid/net/wifi/rtt/ResponderConfig;->preamble:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
