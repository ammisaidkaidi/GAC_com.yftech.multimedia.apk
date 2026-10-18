.class public Landroid/telephony/SignalStrength;
.super Ljava/lang/Object;
.source "SignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/SignalStrength;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field public static final INVALID:I = 0x7fffffff

.field private static final LOG_TAG:Ljava/lang/String; = "SignalStrength"

.field private static final LTE_RSRP_THRESHOLDS_NUM:I = 0x4

.field private static final MAX_LTE_RSRP:I = -0x2c

.field private static final MAX_WCDMA_RSCP:I = -0x18

.field private static final MEASUMENT_TYPE_RSCP:Ljava/lang/String; = "rscp"

.field private static final MIN_LTE_RSRP:I = -0x8c

.field private static final MIN_WCDMA_RSCP:I = -0x78

.field public static final NUM_SIGNAL_STRENGTH_BINS:I = 0x5

.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

.field public static final SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1

.field private static final WCDMA_RSCP_THRESHOLDS_NUM:I = 0x4


# instance fields
.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSnr:I

.field private mGsmBitErrorRate:I

.field private mGsmSignalStrength:I

.field private mIsGsm:Z

.field private mLteCqi:I

.field private mLteRsrp:I

.field private mLteRsrpBoost:I

.field private mLteRsrpThresholds:[I

.field private mLteRsrq:I

.field private mLteRssnr:I

.field private mLteSignalStrength:I

.field private mTdScdmaRscp:I

.field private mUseOnlyRsrpForLteLevel:Z

.field private mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

.field private mWcdmaRscp:I

.field private mWcdmaRscpAsu:I

.field private mWcdmaRscpThresholds:[I

.field private mWcdmaSignalStrength:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "none"

    const-string/jumbo v1, "poor"

    const-string v2, "moderate"

    const-string v3, "good"

    const-string v4, "great"

    .line 56
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    .line 354
    new-instance v0, Landroid/telephony/SignalStrength$1;

    invoke-direct {v0}, Landroid/telephony/SignalStrength$1;-><init>()V

    sput-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 137
    invoke-direct {p0, v0}, Landroid/telephony/SignalStrength;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIII)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    const-string v19, ""

    const/16 v14, 0x63

    const v15, 0x7fffffff

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    .line 222
    invoke-direct/range {v0 .. v19}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIIIIIZZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIII)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    const-string v19, ""

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    .line 237
    invoke-direct/range {v0 .. v19}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIIIIIZZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIIIIZZLjava/lang/String;)V
    .locals 4

    move-object v0, p0

    move/from16 v1, p15

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x4

    .line 104
    new-array v3, v2, [I

    iput-object v3, v0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    .line 111
    new-array v2, v2, [I

    iput-object v2, v0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    move v2, p1

    .line 187
    iput v2, v0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    move v2, p2

    .line 188
    iput v2, v0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    move v2, p3

    .line 189
    iput v2, v0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    move v2, p4

    .line 190
    iput v2, v0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    move v2, p5

    .line 191
    iput v2, v0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    move v2, p6

    .line 192
    iput v2, v0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    move v2, p7

    .line 193
    iput v2, v0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    move v2, p8

    .line 194
    iput v2, v0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    move v2, p9

    .line 195
    iput v2, v0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    move v2, p10

    .line 196
    iput v2, v0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    move v2, p11

    .line 197
    iput v2, v0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    move/from16 v2, p12

    .line 198
    iput v2, v0, Landroid/telephony/SignalStrength;->mLteCqi:I

    const v2, 0x7fffffff

    .line 199
    iput v2, v0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    move/from16 v2, p14

    .line 200
    iput v2, v0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    .line 201
    iput v1, v0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    add-int/lit8 v1, v1, -0x78

    .line 202
    iput v1, v0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    move/from16 v1, p16

    .line 203
    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    move/from16 v1, p17

    .line 204
    iput-boolean v1, v0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    move/from16 v1, p18

    .line 205
    iput-boolean v1, v0, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    move-object/from16 v1, p19

    .line 206
    iput-object v1, v0, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    .line 207
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getDefaultLteRsrpThresholds()[I

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/telephony/SignalStrength;->setLteRsrpThresholds([I)V

    .line 208
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getDefaultWcdmaRscpThresholds()[I

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/telephony/SignalStrength;->setWcdmaRscpThresholds([I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 104
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    .line 111
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    .line 305
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    .line 310
    iget-object v0, p0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 311
    iget-object p0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readIntArray([I)V

    return-void
.end method

.method public constructor <init>(Landroid/telephony/SignalStrength;)V
    .locals 2

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 104
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    .line 111
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    .line 251
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->copyFrom(Landroid/telephony/SignalStrength;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 104
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    .line 111
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    const/16 v0, 0x63

    .line 149
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    const/4 v1, -0x1

    .line 150
    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 151
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 152
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 153
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 154
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 155
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 156
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const v1, 0x7fffffff

    .line 157
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 158
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 159
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 160
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 161
    iput v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 162
    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    .line 163
    iput v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    const/16 v0, 0xff

    .line 164
    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    const/4 v0, 0x0

    .line 165
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    .line 166
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    .line 167
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    const-string p1, ""

    .line 168
    iput-object p1, p0, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    .line 169
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getDefaultLteRsrpThresholds()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->setLteRsrpThresholds([I)V

    .line 170
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getDefaultWcdmaRscpThresholds()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->setWcdmaRscpThresholds([I)V

    return-void
.end method

.method private getCdmaRelatedSignalStrength()I
    .locals 1

    .line 1230
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .line 1231
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_2

    :cond_1
    move v0, p0

    goto :goto_0

    :cond_2
    if-ge v0, p0, :cond_1

    :goto_0
    return v0
.end method

.method private getDefaultLteRsrpThresholds()[I
    .locals 1

    .line 1327
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object p0

    const-string v0, "lte_rsrp_thresholds_int_array"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method private getDefaultWcdmaRscpThresholds()[I
    .locals 1

    .line 1337
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object p0

    const-string/jumbo v0, "wcdma_rscp_thresholds_int_array"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method private getGsmRelatedSignalStrength()I
    .locals 1

    .line 1214
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v0

    if-nez v0, :cond_0

    .line 1216
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v0

    if-nez v0, :cond_0

    .line 1218
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getWcdmaLevel()I

    move-result v0

    if-nez v0, :cond_0

    .line 1220
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v0

    :cond_0
    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SignalStrength"

    .line 1345
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;
    .locals 1

    .line 126
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 127
    invoke-direct {v0, p0}, Landroid/telephony/SignalStrength;->setFromNotifierBundle(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "GsmSignalStrength"

    .line 1252
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    const-string v0, "GsmBitErrorRate"

    .line 1253
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    const-string v0, "CdmaDbm"

    .line 1254
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    const-string v0, "CdmaEcio"

    .line 1255
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    const-string v0, "EvdoDbm"

    .line 1256
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    const-string v0, "EvdoEcio"

    .line 1257
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    const-string v0, "EvdoSnr"

    .line 1258
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    const-string v0, "LteSignalStrength"

    .line 1259
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const-string v0, "LteRsrp"

    .line 1260
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const-string v0, "LteRsrq"

    .line 1261
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const-string v0, "LteRssnr"

    .line 1262
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const-string v0, "LteCqi"

    .line 1263
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    const-string v0, "LteRsrpBoost"

    .line 1264
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    const-string v0, "TdScdma"

    .line 1265
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    const-string v0, "WcdmaSignalStrength"

    .line 1266
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    const-string v0, "WcdmaRscpAsu"

    .line 1267
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    const-string v0, "WcdmaRscp"

    .line 1268
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    const-string v0, "IsGsm"

    .line 1269
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    const-string v0, "UseOnlyRsrpForLteLevel"

    .line 1270
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    const-string v0, "WcdmaDefaultSignalMeasurement"

    .line 1271
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    const-string v0, "lteRsrpThresholds"

    .line 1272
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 1273
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1274
    iget-object v3, p0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "wcdmaRscpThresholds"

    .line 1276
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1277
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1278
    iget-object v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/SignalStrength;)V
    .locals 1

    .line 258
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 259
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 260
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 261
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 262
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 263
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 264
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 265
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 266
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 267
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 268
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 269
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteCqi:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 270
    iget v0, p1, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 271
    iget v0, p1, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    .line 272
    iget v0, p1, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    .line 273
    iget v0, p1, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    .line 274
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    .line 275
    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->mIsGsm:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    .line 276
    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    .line 277
    iget-object v0, p1, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    .line 278
    iget-object v0, p1, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    invoke-virtual {p0, v0}, Landroid/telephony/SignalStrength;->setLteRsrpThresholds([I)V

    .line 279
    iget-object p1, p1, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->setWcdmaRscpThresholds([I)V

    return-void
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1148
    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/telephony/SignalStrength;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    return v0

    .line 1157
    :cond_0
    iget p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v2, v1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ne p1, v2, :cond_1

    iget p1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iget v2, v1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    if-ne p1, v2, :cond_1

    iget p1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v2, v1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-ne p1, v2, :cond_1

    iget p1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v2, v1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-ne p1, v2, :cond_1

    iget p1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v2, v1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-ne p1, v2, :cond_1

    iget p1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iget v2, v1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ne p1, v2, :cond_1

    iget p1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iget v2, v1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ne p1, v2, :cond_1

    iget p1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iget v2, v1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne p1, v2, :cond_1

    iget p1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v2, v1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne p1, v2, :cond_1

    iget p1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iget v2, v1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne p1, v2, :cond_1

    iget p1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v2, v1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne p1, v2, :cond_1

    iget p1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    iget v2, v1, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne p1, v2, :cond_1

    iget p1, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    iget v2, v1, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    if-ne p1, v2, :cond_1

    iget p1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    iget v2, v1, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    if-ne p1, v2, :cond_1

    iget p1, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    iget v2, v1, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    if-ne p1, v2, :cond_1

    iget p1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    iget v2, v1, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    if-ne p1, v2, :cond_1

    iget p1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    iget v2, v1, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    if-ne p1, v2, :cond_1

    iget-boolean p1, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    iget-boolean v2, v1, Landroid/telephony/SignalStrength;->mIsGsm:Z

    if-ne p1, v2, :cond_1

    iget-boolean p1, p0, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    iget-boolean v2, v1, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    iget-object v2, v1, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    .line 1176
    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    iget-object v2, v1, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    .line 1177
    invoke-static {p1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    iget-object p1, v1, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    .line 1178
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    return v0
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "GsmSignalStrength"

    .line 1289
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "GsmBitErrorRate"

    .line 1290
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "CdmaDbm"

    .line 1291
    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "CdmaEcio"

    .line 1292
    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "EvdoDbm"

    .line 1293
    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "EvdoEcio"

    .line 1294
    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "EvdoSnr"

    .line 1295
    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "LteSignalStrength"

    .line 1296
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "LteRsrp"

    .line 1297
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "LteRsrq"

    .line 1298
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "LteRssnr"

    .line 1299
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "LteCqi"

    .line 1300
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "LteRsrpBoost"

    .line 1301
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "TdScdma"

    .line 1302
    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "WcdmaSignalStrength"

    .line 1303
    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "WcdmaRscpAsu"

    .line 1304
    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "WcdmaRscp"

    .line 1305
    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "IsGsm"

    .line 1306
    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "UseOnlyRsrpForLteLevel"

    .line 1307
    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "WcdmaDefaultSignalMeasurement"

    .line 1308
    iget-object v1, p0, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1310
    iget-object v1, p0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget v5, v1, v4

    .line 1311
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "lteRsrpThresholds"

    .line 1313
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1315
    iget-object p0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    array-length v1, p0

    :goto_1
    if-ge v3, v1, :cond_1

    aget v2, p0, v3

    .line 1316
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const-string/jumbo p0, "wcdmaRscpThresholds"

    .line 1318
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public fixType()V
    .locals 1

    .line 417
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getCdmaRelatedSignalStrength()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    return-void
.end method

.method public getAsuLevel()I
    .locals 2

    .line 599
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    if-eqz v0, :cond_3

    .line 600
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 601
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result p0

    goto :goto_1

    .line 602
    :cond_0
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    if-eq v0, v1, :cond_1

    .line 603
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaAsuLevel()I

    move-result p0

    goto :goto_1

    .line 604
    :cond_1
    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    if-eq v0, v1, :cond_2

    .line 605
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getWcdmaAsuLevel()I

    move-result p0

    goto :goto_1

    .line 607
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result p0

    goto :goto_1

    .line 610
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v0

    .line 611
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoAsuLevel()I

    move-result p0

    if-nez p0, :cond_4

    :goto_0
    move p0, v0

    goto :goto_1

    :cond_4
    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    if-ge v0, p0, :cond_6

    goto :goto_0

    :cond_6
    :goto_1
    return p0
.end method

.method public getCdmaAsuLevel()I
    .locals 10

    .line 750
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 751
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result p0

    const/16 v1, 0x63

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/16 v5, -0x64

    const/16 v6, 0x8

    const/16 v7, -0x5a

    const/16 v8, 0x10

    const/16 v9, -0x4b

    if-lt v0, v9, :cond_0

    move v0, v8

    goto :goto_0

    :cond_0
    const/16 v9, -0x52

    if-lt v0, v9, :cond_1

    move v0, v6

    goto :goto_0

    :cond_1
    if-lt v0, v7, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    const/16 v9, -0x5f

    if-lt v0, v9, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    if-lt v0, v5, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    if-lt p0, v7, :cond_5

    move v1, v8

    goto :goto_1

    :cond_5
    if-lt p0, v5, :cond_6

    move v1, v6

    goto :goto_1

    :cond_6
    const/16 v5, -0x73

    if-lt p0, v5, :cond_7

    move v1, v4

    goto :goto_1

    :cond_7
    const/16 v4, -0x82

    if-lt p0, v4, :cond_8

    move v1, v3

    goto :goto_1

    :cond_8
    const/16 v3, -0x96

    if-lt p0, v3, :cond_9

    move v1, v2

    :cond_9
    :goto_1
    if-ge v0, v1, :cond_a

    goto :goto_2

    :cond_a
    move v0, v1

    :goto_2
    return v0
.end method

.method public getCdmaDbm()I
    .locals 0

    .line 517
    iget p0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    return p0
.end method

.method public getCdmaEcio()I
    .locals 0

    .line 524
    iget p0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    return p0
.end method

.method public getCdmaLevel()I
    .locals 7

    .line 721
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 722
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/16 v6, -0x4b

    if-lt v0, v6, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    const/16 v6, -0x55

    if-lt v0, v6, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    const/16 v6, -0x5f

    if-lt v0, v6, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    const/16 v6, -0x64

    if-lt v0, v6, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    const/16 v6, -0x5a

    if-lt p0, v6, :cond_4

    move v1, v5

    goto :goto_1

    :cond_4
    const/16 v5, -0x6e

    if-lt p0, v5, :cond_5

    move v1, v4

    goto :goto_1

    :cond_5
    const/16 v4, -0x82

    if-lt p0, v4, :cond_6

    move v1, v3

    goto :goto_1

    :cond_6
    const/16 v3, -0x96

    if-lt p0, v3, :cond_7

    move v1, v2

    :cond_7
    :goto_1
    if-ge v0, v1, :cond_8

    goto :goto_2

    :cond_8
    move v0, v1

    :goto_2
    return v0
.end method

.method public getDbm()I
    .locals 2

    .line 635
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 636
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_2

    .line 638
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v0

    if-nez v0, :cond_1

    .line 639
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getWcdmaDbm()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 640
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v0

    goto :goto_0

    .line 642
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getWcdmaDbm()I

    move-result v0

    goto :goto_0

    .line 645
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v0

    :cond_2
    :goto_0
    return v0

    .line 649
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 650
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result p0

    const/16 v1, -0x78

    if-ne p0, v1, :cond_4

    goto :goto_1

    :cond_4
    if-ne v0, v1, :cond_5

    goto :goto_2

    :cond_5
    if-ge v0, p0, :cond_6

    :goto_1
    move p0, v0

    :cond_6
    :goto_2
    return p0
.end method

.method public getEvdoAsuLevel()I
    .locals 8

    .line 809
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 810
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result p0

    const/16 v1, 0x63

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/16 v4, 0x8

    const/16 v5, 0x10

    const/4 v6, 0x1

    const/16 v7, -0x41

    if-lt v0, v7, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    const/16 v7, -0x4b

    if-lt v0, v7, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    const/16 v7, -0x55

    if-lt v0, v7, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    const/16 v7, -0x5f

    if-lt v0, v7, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    const/16 v7, -0x69

    if-lt v0, v7, :cond_4

    move v0, v6

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    const/4 v7, 0x7

    if-lt p0, v7, :cond_5

    move v1, v5

    goto :goto_1

    :cond_5
    const/4 v5, 0x6

    if-lt p0, v5, :cond_6

    move v1, v4

    goto :goto_1

    :cond_6
    const/4 v4, 0x5

    if-lt p0, v4, :cond_7

    move v1, v3

    goto :goto_1

    :cond_7
    const/4 v3, 0x3

    if-lt p0, v3, :cond_8

    move v1, v2

    goto :goto_1

    :cond_8
    if-lt p0, v6, :cond_9

    move v1, v6

    :cond_9
    :goto_1
    if-ge v0, v1, :cond_a

    goto :goto_2

    :cond_a
    move v0, v1

    :goto_2
    return v0
.end method

.method public getEvdoDbm()I
    .locals 0

    .line 531
    iget p0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    return p0
.end method

.method public getEvdoEcio()I
    .locals 0

    .line 538
    iget p0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    return p0
.end method

.method public getEvdoLevel()I
    .locals 7

    .line 781
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 782
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/16 v6, -0x41

    if-lt v0, v6, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    const/16 v6, -0x4b

    if-lt v0, v6, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    const/16 v6, -0x5a

    if-lt v0, v6, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    const/16 v6, -0x69

    if-lt v0, v6, :cond_3

    move v0, v4

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    const/4 v6, 0x7

    if-lt p0, v6, :cond_4

    move v1, v3

    goto :goto_1

    :cond_4
    const/4 v3, 0x5

    if-lt p0, v3, :cond_5

    move v1, v5

    goto :goto_1

    :cond_5
    if-lt p0, v5, :cond_6

    move v1, v2

    goto :goto_1

    :cond_6
    if-lt p0, v4, :cond_7

    move v1, v4

    :cond_7
    :goto_1
    if-ge v0, v1, :cond_8

    goto :goto_2

    :cond_8
    move v0, v1

    :goto_2
    return v0
.end method

.method public getEvdoSnr()I
    .locals 0

    .line 545
    iget p0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    return p0
.end method

.method public getGsmAsuLevel()I
    .locals 0

    .line 710
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result p0

    return p0
.end method

.method public getGsmBitErrorRate()I
    .locals 0

    .line 493
    iget p0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    return p0
.end method

.method public getGsmDbm()I
    .locals 2

    .line 667
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result p0

    const/4 v0, -0x1

    const/16 v1, 0x63

    if-ne p0, v1, :cond_0

    move p0, v0

    :cond_0
    if-eq p0, v0, :cond_1

    mul-int/lit8 p0, p0, 0x2

    add-int/lit8 v0, p0, -0x71

    :cond_1
    return v0
.end method

.method public getGsmLevel()I
    .locals 2

    .line 690
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result p0

    const/4 v0, 0x2

    if-le p0, v0, :cond_4

    const/16 v1, 0x63

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0xc

    if-lt p0, v1, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    if-lt p0, v1, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :cond_2
    const/4 v1, 0x5

    if-lt p0, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public getGsmSignalStrength()I
    .locals 0

    .line 486
    iget p0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    return p0
.end method

.method public getLevel()I
    .locals 1

    .line 587
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getGsmRelatedSignalStrength()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getCdmaRelatedSignalStrength()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getLteAsuLevel()I
    .locals 1

    .line 938
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result p0

    const v0, 0x7fffffff

    if-ne p0, v0, :cond_0

    const/16 p0, 0xff

    goto :goto_0

    :cond_0
    add-int/lit16 p0, p0, 0x8c

    :goto_0
    return p0
.end method

.method public getLteCqi()I
    .locals 0

    .line 570
    iget p0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    return p0
.end method

.method public getLteDbm()I
    .locals 0

    .line 839
    iget p0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return p0
.end method

.method public getLteLevel()I
    .locals 9

    .line 859
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/16 v7, -0x2c

    if-gt v0, v7, :cond_5

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v7, -0x8c

    if-ge v0, v7, :cond_0

    goto :goto_0

    .line 863
    :cond_0
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget-object v7, p0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    aget v7, v7, v4

    iget v8, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    sub-int/2addr v7, v8

    if-lt v0, v7, :cond_1

    move v0, v1

    goto :goto_1

    .line 865
    :cond_1
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget-object v7, p0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    aget v7, v7, v3

    iget v8, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    sub-int/2addr v7, v8

    if-lt v0, v7, :cond_2

    move v0, v4

    goto :goto_1

    .line 867
    :cond_2
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget-object v7, p0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    aget v7, v7, v2

    iget v8, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    sub-int/2addr v7, v8

    if-lt v0, v7, :cond_3

    move v0, v3

    goto :goto_1

    .line 869
    :cond_3
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget-object v7, p0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    aget v7, v7, v5

    iget v8, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    sub-int/2addr v7, v8

    if-lt v0, v7, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v5

    goto :goto_1

    .line 860
    :cond_5
    :goto_0
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const v7, 0x7fffffff

    if-eq v0, v7, :cond_6

    const-string v0, "SignalStrength"

    .line 861
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getLteLevel - invalid lte rsrp: mLteRsrp="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v0, v6

    .line 875
    :goto_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->useOnlyRsrpForLteLevel()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 876
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getLTELevel - rsrp = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    if-eq v0, v6, :cond_7

    return v0

    .line 888
    :cond_7
    iget v7, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v8, 0x12c

    if-le v7, v8, :cond_9

    :cond_8
    move v7, v6

    goto :goto_2

    .line 889
    :cond_9
    iget v7, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v8, 0x82

    if-lt v7, v8, :cond_a

    move v7, v1

    goto :goto_2

    .line 890
    :cond_a
    iget v7, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v8, 0x2d

    if-lt v7, v8, :cond_b

    move v7, v4

    goto :goto_2

    .line 891
    :cond_b
    iget v7, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v8, 0xa

    if-lt v7, v8, :cond_c

    move v7, v3

    goto :goto_2

    .line 892
    :cond_c
    iget v7, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v8, -0x1e

    if-lt v7, v8, :cond_d

    move v7, v2

    goto :goto_2

    .line 893
    :cond_d
    iget v7, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v8, -0xc8

    if-lt v7, v8, :cond_8

    move v7, v5

    :goto_2
    if-eq v7, v6, :cond_f

    if-eq v0, v6, :cond_f

    if-ge v0, v7, :cond_e

    goto :goto_3

    :cond_e
    move v0, v7

    :goto_3
    return v0

    :cond_f
    if-eq v7, v6, :cond_10

    return v7

    :cond_10
    if-eq v0, v6, :cond_11

    return v0

    .line 918
    :cond_11
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v6, 0x3f

    if-le v0, v6, :cond_12

    goto :goto_4

    .line 919
    :cond_12
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v6, 0xc

    if-lt v0, v6, :cond_13

    move v5, v1

    goto :goto_4

    .line 920
    :cond_13
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_14

    move v5, v4

    goto :goto_4

    .line 921
    :cond_14
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_15

    move v5, v3

    goto :goto_4

    .line 922
    :cond_15
    iget p0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz p0, :cond_16

    move v5, v2

    :cond_16
    :goto_4
    return v5
.end method

.method public getLteRsrp()I
    .locals 0

    .line 555
    iget p0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return p0
.end method

.method public getLteRsrpBoost()I
    .locals 0

    .line 575
    iget p0, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    return p0
.end method

.method public getLteRsrq()I
    .locals 0

    .line 560
    iget p0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    return p0
.end method

.method public getLteRssnr()I
    .locals 0

    .line 565
    iget p0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    return p0
.end method

.method public getLteSignalStrength()I
    .locals 0

    .line 550
    iget p0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    return p0
.end method

.method public getTdScdmaAsuLevel()I
    .locals 1

    .line 1013
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result p0

    const v0, 0x7fffffff

    if-ne p0, v0, :cond_0

    const/16 p0, 0xff

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, 0x78

    :goto_0
    return p0
.end method

.method public getTdScdmaDbm()I
    .locals 0

    .line 980
    iget p0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    return p0
.end method

.method public getTdScdmaLevel()I
    .locals 2

    .line 992
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result p0

    const/4 v0, 0x0

    const/16 v1, -0x19

    if-gt p0, v1, :cond_4

    const v1, 0x7fffffff

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, -0x31

    if-lt p0, v1, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/16 v1, -0x49

    if-lt p0, v1, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/16 v1, -0x61

    if-lt p0, v1, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const/16 v1, -0x6e

    if-lt p0, v1, :cond_4

    const/4 v0, 0x1

    :cond_4
    :goto_0
    return v0
.end method

.method public getWcdmaAsuLevel()I
    .locals 1

    .line 1045
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getWcdmaDbm()I

    move-result p0

    const v0, 0x7fffffff

    if-ne p0, v0, :cond_0

    const/16 p0, 0xff

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, 0x78

    :goto_0
    return p0
.end method

.method public getWcdmaDbm()I
    .locals 0

    .line 1061
    iget p0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    return p0
.end method

.method public getWcdmaLevel()I
    .locals 7

    .line 1072
    iget-object v0, p0, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "SignalStrength"

    const-string v0, "getWcdmaLevel - WCDMA default signal measurement is invalid."

    .line 1073
    invoke-static {p0, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1077
    :cond_0
    iget-object v0, p0, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x358e6e

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "rscp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v2, v1

    :cond_2
    :goto_0
    const/4 v0, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eqz v2, :cond_8

    .line 1099
    iget v2, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    if-ltz v2, :cond_7

    iget v2, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    const/16 v6, 0x1f

    if-le v2, v6, :cond_3

    goto :goto_4

    .line 1104
    :cond_3
    iget v2, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    const/16 v6, 0x12

    if-lt v2, v6, :cond_4

    goto/16 :goto_7

    .line 1106
    :cond_4
    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    const/16 v2, 0xd

    if-lt v0, v2, :cond_5

    :goto_1
    move v0, v5

    goto/16 :goto_7

    .line 1108
    :cond_5
    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    const/16 v2, 0x8

    if-lt v0, v2, :cond_6

    :goto_2
    move v0, v4

    goto/16 :goto_7

    .line 1110
    :cond_6
    iget p0, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    if-lt p0, v5, :cond_e

    :goto_3
    move v0, v3

    goto/16 :goto_7

    .line 1100
    :cond_7
    :goto_4
    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    const/16 v2, 0x63

    if-eq v0, v2, :cond_e

    const-string v0, "SignalStrength"

    .line 1101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWcdmaLevel - invalid WCDMA RSSI: mWcdmaSignalStrength="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1080
    :cond_8
    iget v2, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    const/16 v6, -0x78

    if-lt v2, v6, :cond_d

    iget v2, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    const/16 v6, -0x18

    if-le v2, v6, :cond_9

    goto :goto_5

    .line 1085
    :cond_9
    iget v2, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    iget-object v6, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    aget v6, v6, v5

    if-lt v2, v6, :cond_a

    goto :goto_7

    .line 1087
    :cond_a
    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    iget-object v2, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    aget v2, v2, v4

    if-lt v0, v2, :cond_b

    goto :goto_1

    .line 1089
    :cond_b
    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    iget-object v2, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    aget v2, v2, v3

    if-lt v0, v2, :cond_c

    goto :goto_2

    .line 1091
    :cond_c
    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    iget-object p0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    aget p0, p0, v1

    if-lt v0, p0, :cond_e

    goto :goto_3

    .line 1081
    :cond_d
    :goto_5
    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    const v2, 0x7fffffff

    if-eq v0, v2, :cond_e

    const-string v0, "SignalStrength"

    .line 1082
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWcdmaLevel - invalid WCDMA RSCP: mWcdmaRscp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_6
    move v0, v1

    :goto_7
    return v0
.end method

.method public getWcdmaRscp()I
    .locals 0

    .line 1028
    iget p0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    .line 1127
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 1135
    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    add-int/2addr v0, v1

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    .line 1136
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    .line 1137
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object p0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public isGsm()Z
    .locals 0

    .line 962
    iget-boolean p0, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    return p0
.end method

.method public setGsm(Z)V
    .locals 0

    .line 429
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    return-void
.end method

.method public setLteRsrpBoost(I)V
    .locals 0

    .line 462
    iput p1, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    return-void
.end method

.method public setLteRsrpThresholds([I)V
    .locals 2

    if-eqz p1, :cond_1

    .line 473
    array-length v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 478
    :cond_0
    iget-object p0, p0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    const/4 v0, 0x0

    invoke-static {p1, v0, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "SignalStrength"

    const-string/jumbo p1, "setLteRsrpThresholds - lteRsrpThresholds is invalid."

    .line 475
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setUseOnlyRsrpForLteLevel(Z)V
    .locals 0

    .line 440
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    return-void
.end method

.method public setWcdmaDefaultSignalMeasurement(Ljava/lang/String;)V
    .locals 0

    .line 450
    iput-object p1, p0, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    return-void
.end method

.method public setWcdmaRscpThresholds([I)V
    .locals 2

    if-eqz p1, :cond_1

    .line 504
    array-length v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 509
    :cond_0
    iget-object p0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    const/4 v0, 0x0

    invoke-static {p1, v0, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "SignalStrength"

    const-string/jumbo p1, "setWcdmaRscpThresholds - wcdmaRscpThresholds is invalid."

    .line 506
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1204
    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    if-eqz v1, :cond_0

    const-string v1, "gsm|lte"

    goto :goto_0

    :cond_0
    const-string v1, "cdma"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1205
    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "use_only_rsrp_for_lte_level"

    goto :goto_1

    :cond_1
    const-string/jumbo v1, "use_rsrp_and_rssnr_for_lte_level"

    .line 1206
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    .line 1208
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    .line 1209
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public useOnlyRsrpForLteLevel()Z
    .locals 0

    .line 971
    iget-boolean p0, p0, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    return p0
.end method

.method public validateInput()V
    .locals 4

    .line 378
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    const/16 v1, 0x63

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 379
    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    .line 380
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v0, :cond_2

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    :cond_2
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 386
    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    add-int/lit8 v0, v0, -0x78

    const/16 v1, -0x18

    const/16 v2, -0x78

    if-lt v0, v2, :cond_3

    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    add-int/lit8 v0, v0, -0x78

    if-gt v0, v1, :cond_3

    .line 387
    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    goto :goto_2

    :cond_3
    const/16 v0, 0xff

    :goto_2
    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    .line 388
    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    const v3, 0x7fffffff

    if-lt v0, v2, :cond_4

    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    if-gt v0, v1, :cond_4

    .line 389
    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    goto :goto_3

    :cond_4
    move v0, v3

    :goto_3
    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    .line 391
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-lez v0, :cond_5

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    neg-int v0, v0

    goto :goto_4

    :cond_5
    move v0, v2

    :goto_4
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 392
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    const/16 v1, -0xa0

    if-ltz v0, :cond_6

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    neg-int v0, v0

    goto :goto_5

    :cond_6
    move v0, v1

    :goto_5
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 394
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-lez v0, :cond_7

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    neg-int v2, v0

    :cond_7
    iput v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 395
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ltz v0, :cond_8

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    neg-int v1, v0

    :cond_8
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 396
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ltz v0, :cond_9

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_9

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    goto :goto_6

    :cond_9
    const/4 v0, -0x1

    :goto_6
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 399
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    neg-int v0, v0

    const/16 v1, -0x8c

    if-lt v0, v1, :cond_a

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    neg-int v0, v0

    const/16 v1, -0x2c

    if-gt v0, v1, :cond_a

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    neg-int v0, v0

    goto :goto_7

    :cond_a
    move v0, v3

    .line 400
    :goto_7
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 401
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_b

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_b

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    neg-int v0, v0

    goto :goto_8

    :cond_b
    move v0, v3

    :goto_8
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 402
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, -0xc8

    if-lt v0, v1, :cond_c

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, 0x12c

    if-gt v0, v1, :cond_c

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    goto :goto_9

    :cond_c
    move v0, v3

    .line 403
    :goto_9
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 405
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    if-ltz v0, :cond_d

    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    const/16 v1, 0x60

    if-gt v0, v1, :cond_d

    .line 406
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    add-int/lit8 v3, v0, -0x78

    :cond_d
    iput v3, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 318
    iget p2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    iget p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    iget p2, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    iget p2, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    iget p2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    iget p2, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    iget p2, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    iget p2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    iget p2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    iget p2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    iget p2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    iget p2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    iget p2, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    iget p2, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    iget p2, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    iget p2, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    iget p2, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    iget-boolean p2, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 336
    iget-boolean p2, p0, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 337
    iget-object p2, p0, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 338
    iget-object p2, p0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 339
    iget-object p0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
