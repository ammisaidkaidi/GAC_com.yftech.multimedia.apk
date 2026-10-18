.class public final Landroid/media/audiofx/DynamicsProcessing;
.super Landroid/media/audiofx/AudioEffect;
.source "DynamicsProcessing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/DynamicsProcessing$Settings;,
        Landroid/media/audiofx/DynamicsProcessing$BaseParameterListener;,
        Landroid/media/audiofx/DynamicsProcessing$OnParameterChangeListener;,
        Landroid/media/audiofx/DynamicsProcessing$Config;,
        Landroid/media/audiofx/DynamicsProcessing$Channel;,
        Landroid/media/audiofx/DynamicsProcessing$Limiter;,
        Landroid/media/audiofx/DynamicsProcessing$Mbc;,
        Landroid/media/audiofx/DynamicsProcessing$Eq;,
        Landroid/media/audiofx/DynamicsProcessing$MbcBand;,
        Landroid/media/audiofx/DynamicsProcessing$EqBand;,
        Landroid/media/audiofx/DynamicsProcessing$BandBase;,
        Landroid/media/audiofx/DynamicsProcessing$BandStage;,
        Landroid/media/audiofx/DynamicsProcessing$Stage;
    }
.end annotation


# static fields
.field private static final CHANNEL_COUNT_MAX:I = 0x20

.field private static final CHANNEL_DEFAULT_INPUT_GAIN:F = 0.0f

.field private static final CONFIG_DEFAULT_MBC_BANDS:I = 0x6

.field private static final CONFIG_DEFAULT_POSTEQ_BANDS:I = 0x6

.field private static final CONFIG_DEFAULT_PREEQ_BANDS:I = 0x6

.field private static final CONFIG_DEFAULT_USE_LIMITER:Z = true

.field private static final CONFIG_DEFAULT_USE_MBC:Z = true

.field private static final CONFIG_DEFAULT_USE_POSTEQ:Z = true

.field private static final CONFIG_DEFAULT_USE_PREEQ:Z = true

.field private static final CONFIG_DEFAULT_VARIANT:I = 0x0

.field private static final CONFIG_PREFERRED_FRAME_DURATION_MS:F = 10.0f

.field private static final DEFAULT_MAX_FREQUENCY:F = 20000.0f

.field private static final DEFAULT_MIN_FREQUENCY:F = 220.0f

.field private static final EQ_DEFAULT_GAIN:F = 0.0f

.field private static final LIMITER_DEFAULT_ATTACK_TIME:F = 1.0f

.field private static final LIMITER_DEFAULT_ENABLED:Z = true

.field private static final LIMITER_DEFAULT_LINK_GROUP:I = 0x0

.field private static final LIMITER_DEFAULT_POST_GAIN:F = 0.0f

.field private static final LIMITER_DEFAULT_RATIO:F = 10.0f

.field private static final LIMITER_DEFAULT_RELEASE_TIME:F = 60.0f

.field private static final LIMITER_DEFAULT_THRESHOLD:F = -2.0f

.field private static final MBC_DEFAULT_ATTACK_TIME:F = 3.0f

.field private static final MBC_DEFAULT_ENABLED:Z = true

.field private static final MBC_DEFAULT_EXPANDER_RATIO:F = 1.0f

.field private static final MBC_DEFAULT_KNEE_WIDTH:F = 0.0f

.field private static final MBC_DEFAULT_NOISE_GATE_THRESHOLD:F = -90.0f

.field private static final MBC_DEFAULT_POST_GAIN:F = 0.0f

.field private static final MBC_DEFAULT_PRE_GAIN:F = 0.0f

.field private static final MBC_DEFAULT_RATIO:F = 1.0f

.field private static final MBC_DEFAULT_RELEASE_TIME:F = 80.0f

.field private static final MBC_DEFAULT_THRESHOLD:F = -45.0f

.field private static final PARAM_ENGINE_ARCHITECTURE:I = 0x30

.field private static final PARAM_GET_CHANNEL_COUNT:I = 0x10

.field private static final PARAM_INPUT_GAIN:I = 0x20

.field private static final PARAM_LIMITER:I = 0x70

.field private static final PARAM_MBC:I = 0x50

.field private static final PARAM_MBC_BAND:I = 0x55

.field private static final PARAM_POST_EQ:I = 0x60

.field private static final PARAM_POST_EQ_BAND:I = 0x65

.field private static final PARAM_PRE_EQ:I = 0x40

.field private static final PARAM_PRE_EQ_BAND:I = 0x45

.field private static final POSTEQ_DEFAULT_ENABLED:Z = true

.field private static final PREEQ_DEFAULT_ENABLED:Z = true

.field private static final TAG:Ljava/lang/String; = "DynamicsProcessing"

.field public static final VARIANT_FAVOR_FREQUENCY_RESOLUTION:I = 0x0

.field public static final VARIANT_FAVOR_TIME_RESOLUTION:I = 0x1

.field private static final mMaxFreqLog:F

.field private static final mMinFreqLog:F


# instance fields
.field private mBaseParamListener:Landroid/media/audiofx/DynamicsProcessing$BaseParameterListener;

.field private mChannelCount:I

.field private mParamListener:Landroid/media/audiofx/DynamicsProcessing$OnParameterChangeListener;

.field private final mParamListenerLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x406b800000000000L    # 220.0

    .line 303
    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroid/media/audiofx/DynamicsProcessing;->mMinFreqLog:F

    const-wide v0, 0x40d3880000000000L    # 20000.0

    .line 304
    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroid/media/audiofx/DynamicsProcessing;->mMaxFreqLog:F

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 149
    invoke-direct {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 164
    invoke-direct {p0, p1, p2, v0}, Landroid/media/audiofx/DynamicsProcessing;-><init>(IILandroid/media/audiofx/DynamicsProcessing$Config;)V

    return-void
.end method

.method public constructor <init>(IILandroid/media/audiofx/DynamicsProcessing$Config;)V
    .locals 10

    .line 183
    sget-object v0, Landroid/media/audiofx/DynamicsProcessing;->EFFECT_TYPE_DYNAMICS_PROCESSING:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/DynamicsProcessing;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    const/4 p1, 0x0

    .line 125
    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing;->mParamListener:Landroid/media/audiofx/DynamicsProcessing$OnParameterChangeListener;

    .line 136
    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing;->mBaseParamListener:Landroid/media/audiofx/DynamicsProcessing$BaseParameterListener;

    .line 141
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing;->mParamListenerLock:Ljava/lang/Object;

    if-nez p2, :cond_0

    const-string p2, "DynamicsProcessing"

    const-string v0, "WARNING: attaching a DynamicsProcessing to global output mix isdeprecated!"

    .line 185
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing;->getChannelCount()I

    move-result p2

    iput p2, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    if-nez p3, :cond_1

    .line 192
    new-instance p2, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;

    const/4 v1, 0x0

    iget v2, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    const/4 v3, 0x1

    const/4 v4, 0x6

    const/4 v5, 0x1

    const/4 v6, 0x6

    const/4 v7, 0x1

    const/4 v8, 0x6

    const/4 v9, 0x1

    move-object v0, p2

    invoke-direct/range {v0 .. v9}, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;-><init>(IIZIZIZIZ)V

    .line 203
    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->build()Landroid/media/audiofx/DynamicsProcessing$Config;

    move-result-object p2

    goto :goto_0

    .line 206
    :cond_1
    new-instance p2, Landroid/media/audiofx/DynamicsProcessing$Config;

    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    invoke-direct {p2, v0, p3}, Landroid/media/audiofx/DynamicsProcessing$Config;-><init>(ILandroid/media/audiofx/DynamicsProcessing$Config;)V

    .line 210
    :goto_0
    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Config;->getVariant()I

    move-result v1

    .line 211
    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Config;->getPreferredFrameDuration()F

    move-result v2

    .line 212
    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Config;->isPreEqInUse()Z

    move-result v3

    .line 213
    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Config;->getPreEqBandCount()I

    move-result v4

    .line 214
    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Config;->isMbcInUse()Z

    move-result v5

    .line 215
    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Config;->getMbcBandCount()I

    move-result v6

    .line 216
    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Config;->isPostEqInUse()Z

    move-result v7

    .line 217
    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Config;->getPostEqBandCount()I

    move-result v8

    .line 218
    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Config;->isLimiterInUse()Z

    move-result v9

    move-object v0, p0

    .line 210
    invoke-direct/range {v0 .. v9}, Landroid/media/audiofx/DynamicsProcessing;->setEngineArchitecture(IFZIZIZIZ)V

    .line 220
    :goto_1
    iget p3, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    if-ge p1, p3, :cond_2

    .line 221
    invoke-virtual {p2, p1}, Landroid/media/audiofx/DynamicsProcessing$Config;->getChannelByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Channel;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Landroid/media/audiofx/DynamicsProcessing;->updateEngineChannelByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Channel;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic access$000()F
    .locals 1

    .line 90
    sget v0, Landroid/media/audiofx/DynamicsProcessing;->mMinFreqLog:F

    return v0
.end method

.method static synthetic access$100()F
    .locals 1

    .line 90
    sget v0, Landroid/media/audiofx/DynamicsProcessing;->mMaxFreqLog:F

    return v0
.end method

.method static synthetic access$200(Landroid/media/audiofx/DynamicsProcessing;)Ljava/lang/Object;
    .locals 0

    .line 90
    iget-object p0, p0, Landroid/media/audiofx/DynamicsProcessing;->mParamListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Landroid/media/audiofx/DynamicsProcessing;)Landroid/media/audiofx/DynamicsProcessing$OnParameterChangeListener;
    .locals 0

    .line 90
    iget-object p0, p0, Landroid/media/audiofx/DynamicsProcessing;->mParamListener:Landroid/media/audiofx/DynamicsProcessing$OnParameterChangeListener;

    return-object p0
.end method

.method private byteArrayToNumberArray([B[Ljava/lang/Number;)V
    .locals 3

    const/4 p0, 0x0

    move v0, p0

    .line 2210
    :goto_0
    array-length v1, p1

    if-ge p0, v1, :cond_2

    array-length v1, p2

    if-ge v0, v1, :cond_2

    .line 2211
    aget-object v1, p2, v0

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 2212
    invoke-static {p1, p0}, Landroid/media/audiofx/DynamicsProcessing;->byteArrayToInt([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v0

    add-int/lit8 p0, p0, 0x4

    :goto_1
    move v0, v1

    goto :goto_0

    .line 2214
    :cond_0
    aget-object v1, p2, v0

    instance-of v1, v1, Ljava/lang/Float;

    if-eqz v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    .line 2215
    invoke-static {p1, p0}, Landroid/media/audiofx/DynamicsProcessing;->byteArrayToFloat([BI)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, p2, v0

    add-int/lit8 p0, p0, 0x4

    goto :goto_1

    .line 2218
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t convert "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p2, v0

    .line 2219
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2222
    :cond_2
    array-length p0, p2

    if-ne v0, p0, :cond_3

    return-void

    .line 2223
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "only converted "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " values out of "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " expected"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getOneInt(I)I
    .locals 3

    const/4 v0, 0x1

    .line 2168
    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 2169
    new-array p1, v0, [I

    .line 2171
    invoke-virtual {p0, v1, p1}, Landroid/media/audiofx/DynamicsProcessing;->getParameter([I[I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/DynamicsProcessing;->checkStatus(I)V

    .line 2172
    aget p0, p1, v2

    return p0
.end method

.method private getTwoFloat(II)F
    .locals 2

    const/4 v0, 0x2

    .line 2235
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x4

    .line 2236
    new-array p1, p1, [B

    .line 2238
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing;->getParameter([I[B)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/media/audiofx/DynamicsProcessing;->checkStatus(I)V

    .line 2239
    invoke-static {p1}, Landroid/media/audiofx/DynamicsProcessing;->byteArrayToFloat([B)F

    move-result p0

    return p0
.end method

.method private numberArrayToByteArray([Ljava/lang/Number;)[B
    .locals 3

    const/4 p0, 0x0

    move v0, p0

    move v1, v0

    .line 2185
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 2186
    aget-object v2, p1, v0

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x4

    goto :goto_1

    .line 2188
    :cond_0
    aget-object v2, p1, v0

    instance-of v2, v2, Ljava/lang/Float;

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x4

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2191
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown value type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v0

    .line 2192
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2195
    :cond_2
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2196
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2197
    :goto_2
    array-length v1, p1

    if-ge p0, v1, :cond_5

    .line 2198
    aget-object v1, p1, p0

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 2199
    aget-object v1, p1, p0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_3

    .line 2200
    :cond_3
    aget-object v1, p1, p0

    instance-of v1, v1, Ljava/lang/Float;

    if-eqz v1, :cond_4

    .line 2201
    aget-object v1, p1, p0

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    :cond_4
    :goto_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    .line 2204
    :cond_5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method private queryEngineByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Channel;
    .locals 13

    const/16 v0, 0x20

    .line 2133
    invoke-direct {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing;->getTwoFloat(II)F

    move-result v0

    const/16 v1, 0x40

    .line 2134
    invoke-direct {p0, v1, p1}, Landroid/media/audiofx/DynamicsProcessing;->queryEngineEqByChannelIndex(II)Landroid/media/audiofx/DynamicsProcessing$Eq;

    move-result-object v10

    .line 2135
    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing;->queryEngineMbcByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Mbc;

    move-result-object v11

    const/16 v1, 0x60

    .line 2136
    invoke-direct {p0, v1, p1}, Landroid/media/audiofx/DynamicsProcessing;->queryEngineEqByChannelIndex(II)Landroid/media/audiofx/DynamicsProcessing$Eq;

    move-result-object v12

    .line 2137
    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing;->queryEngineLimiterByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Limiter;

    move-result-object p0

    .line 2139
    new-instance p1, Landroid/media/audiofx/DynamicsProcessing$Channel;

    .line 2140
    invoke-virtual {v10}, Landroid/media/audiofx/DynamicsProcessing$Eq;->isInUse()Z

    move-result v3

    invoke-virtual {v10}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v4

    .line 2141
    invoke-virtual {v11}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->isInUse()Z

    move-result v5

    invoke-virtual {v11}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->getBandCount()I

    move-result v6

    .line 2142
    invoke-virtual {v12}, Landroid/media/audiofx/DynamicsProcessing$Eq;->isInUse()Z

    move-result v7

    invoke-virtual {v12}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v8

    .line 2143
    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing$Limiter;->isInUse()Z

    move-result v9

    move-object v1, p1

    move v2, v0

    invoke-direct/range {v1 .. v9}, Landroid/media/audiofx/DynamicsProcessing$Channel;-><init>(FZIZIZIZ)V

    .line 2144
    invoke-virtual {p1, v0}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setInputGain(F)V

    .line 2145
    invoke-virtual {p1, v10}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setPreEq(Landroid/media/audiofx/DynamicsProcessing$Eq;)V

    .line 2146
    invoke-virtual {p1, v11}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setMbc(Landroid/media/audiofx/DynamicsProcessing$Mbc;)V

    .line 2147
    invoke-virtual {p1, v12}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setPostEq(Landroid/media/audiofx/DynamicsProcessing$Eq;)V

    .line 2148
    invoke-virtual {p1, p0}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setLimiter(Landroid/media/audiofx/DynamicsProcessing$Limiter;)V

    return-object p1
.end method

.method private queryEngineEqBandByChannelIndex(III)Landroid/media/audiofx/DynamicsProcessing$EqBand;
    .locals 4

    const/4 v0, 0x3

    .line 1972
    new-array v1, v0, [Ljava/lang/Number;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 1973
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    .line 1974
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p3, 0x2

    aput-object p1, v1, p3

    .line 1975
    new-array p1, v0, [Ljava/lang/Number;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    const/4 v0, 0x0

    .line 1976
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, p1, p2

    .line 1977
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p1, p3

    .line 1979
    invoke-direct {p0, v1}, Landroid/media/audiofx/DynamicsProcessing;->numberArrayToByteArray([Ljava/lang/Number;)[B

    move-result-object v0

    .line 1980
    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing;->numberArrayToByteArray([Ljava/lang/Number;)[B

    move-result-object v1

    .line 1981
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/DynamicsProcessing;->getParameter([B[B)I

    .line 1983
    invoke-direct {p0, v1, p1}, Landroid/media/audiofx/DynamicsProcessing;->byteArrayToNumberArray([B[Ljava/lang/Number;)V

    .line 1985
    new-instance p0, Landroid/media/audiofx/DynamicsProcessing$EqBand;

    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    move v2, p2

    :cond_0
    aget-object p2, p1, p2

    .line 1986
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    aget-object p1, p1, p3

    .line 1987
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-direct {p0, v2, p2, p1}, Landroid/media/audiofx/DynamicsProcessing$EqBand;-><init>(ZFF)V

    return-object p0
.end method

.method private queryEngineEqByChannelIndex(II)Landroid/media/audiofx/DynamicsProcessing$Eq;
    .locals 7

    const/4 v0, 0x2

    .line 1951
    new-array v1, v0, [Ljava/lang/Number;

    const/16 v2, 0x40

    if-ne p1, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/16 v3, 0x60

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 1952
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v1, v5

    const/4 v3, 0x3

    .line 1953
    new-array v3, v3, [Ljava/lang/Number;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    .line 1954
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    .line 1955
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v0

    .line 1956
    invoke-direct {p0, v1}, Landroid/media/audiofx/DynamicsProcessing;->numberArrayToByteArray([Ljava/lang/Number;)[B

    move-result-object v1

    .line 1957
    invoke-direct {p0, v3}, Landroid/media/audiofx/DynamicsProcessing;->numberArrayToByteArray([Ljava/lang/Number;)[B

    move-result-object v6

    .line 1958
    invoke-virtual {p0, v1, v6}, Landroid/media/audiofx/DynamicsProcessing;->getParameter([B[B)I

    .line 1959
    invoke-direct {p0, v6, v3}, Landroid/media/audiofx/DynamicsProcessing;->byteArrayToNumberArray([B[Ljava/lang/Number;)V

    .line 1960
    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 1961
    new-instance v1, Landroid/media/audiofx/DynamicsProcessing$Eq;

    aget-object v6, v3, v4

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-lez v6, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    aget-object v3, v3, v5

    .line 1962
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-lez v3, :cond_2

    goto :goto_2

    :cond_2
    move v5, v4

    :goto_2
    invoke-direct {v1, v6, v5, v0}, Landroid/media/audiofx/DynamicsProcessing$Eq;-><init>(ZZI)V

    :goto_3
    if-ge v4, v0, :cond_4

    if-ne p1, v2, :cond_3

    const/16 v3, 0x45

    goto :goto_4

    :cond_3
    const/16 v3, 0x65

    .line 1965
    :goto_4
    invoke-direct {p0, v3, p2, v4}, Landroid/media/audiofx/DynamicsProcessing;->queryEngineEqBandByChannelIndex(III)Landroid/media/audiofx/DynamicsProcessing$EqBand;

    move-result-object v3

    .line 1967
    invoke-virtual {v1, v4, v3}, Landroid/media/audiofx/DynamicsProcessing$Eq;->setBand(ILandroid/media/audiofx/DynamicsProcessing$EqBand;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    return-object v1
.end method

.method private queryEngineLimiterByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Limiter;
    .locals 21

    move-object/from16 v0, p0

    const/4 v1, 0x2

    .line 2106
    new-array v2, v1, [Ljava/lang/Number;

    const/16 v3, 0x70

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 2107
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/16 v3, 0x8

    .line 2108
    new-array v3, v3, [Ljava/lang/Number;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    .line 2109
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    .line 2110
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v1

    const/4 v6, 0x0

    .line 2111
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v3, v8

    .line 2112
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v9, 0x4

    aput-object v7, v3, v9

    .line 2113
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v10, 0x5

    aput-object v7, v3, v10

    .line 2114
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v11, 0x6

    aput-object v7, v3, v11

    .line 2115
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v7, 0x7

    aput-object v6, v3, v7

    .line 2117
    invoke-direct {v0, v2}, Landroid/media/audiofx/DynamicsProcessing;->numberArrayToByteArray([Ljava/lang/Number;)[B

    move-result-object v2

    .line 2118
    invoke-direct {v0, v3}, Landroid/media/audiofx/DynamicsProcessing;->numberArrayToByteArray([Ljava/lang/Number;)[B

    move-result-object v6

    .line 2119
    invoke-virtual {v0, v2, v6}, Landroid/media/audiofx/DynamicsProcessing;->getParameter([B[B)I

    .line 2120
    invoke-direct {v0, v6, v3}, Landroid/media/audiofx/DynamicsProcessing;->byteArrayToNumberArray([B[Ljava/lang/Number;)V

    .line 2122
    new-instance v0, Landroid/media/audiofx/DynamicsProcessing$Limiter;

    aget-object v2, v3, v4

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    move v13, v5

    goto :goto_0

    :cond_0
    move v13, v4

    :goto_0
    aget-object v2, v3, v5

    .line 2123
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-lez v2, :cond_1

    move v14, v5

    goto :goto_1

    :cond_1
    move v14, v4

    :goto_1
    aget-object v1, v3, v1

    .line 2124
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v15

    aget-object v1, v3, v8

    .line 2125
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v16

    aget-object v1, v3, v9

    .line 2126
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v17

    aget-object v1, v3, v10

    .line 2127
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v18

    aget-object v1, v3, v11

    .line 2128
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v19

    aget-object v1, v3, v7

    .line 2129
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v20

    move-object v12, v0

    invoke-direct/range {v12 .. v20}, Landroid/media/audiofx/DynamicsProcessing$Limiter;-><init>(ZZIFFFFF)V

    return-object v0
.end method

.method private queryEngineMbcBandByChannelIndex(II)Landroid/media/audiofx/DynamicsProcessing$MbcBand;
    .locals 27

    move-object/from16 v0, p0

    const/4 v1, 0x3

    .line 2025
    new-array v2, v1, [Ljava/lang/Number;

    const/16 v3, 0x55

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 2026
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 2027
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const/16 v3, 0xb

    .line 2028
    new-array v3, v3, [Ljava/lang/Number;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    const/4 v7, 0x0

    .line 2029
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v3, v5

    .line 2030
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v3, v6

    .line 2031
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v3, v1

    .line 2032
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/4 v9, 0x4

    aput-object v8, v3, v9

    .line 2033
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/4 v10, 0x5

    aput-object v8, v3, v10

    .line 2034
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/4 v11, 0x6

    aput-object v8, v3, v11

    .line 2035
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/4 v12, 0x7

    aput-object v8, v3, v12

    .line 2036
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/16 v13, 0x8

    aput-object v8, v3, v13

    .line 2037
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/16 v14, 0x9

    aput-object v8, v3, v14

    .line 2038
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/16 v8, 0xa

    aput-object v7, v3, v8

    .line 2040
    invoke-direct {v0, v2}, Landroid/media/audiofx/DynamicsProcessing;->numberArrayToByteArray([Ljava/lang/Number;)[B

    move-result-object v2

    .line 2041
    invoke-direct {v0, v3}, Landroid/media/audiofx/DynamicsProcessing;->numberArrayToByteArray([Ljava/lang/Number;)[B

    move-result-object v7

    .line 2042
    invoke-virtual {v0, v2, v7}, Landroid/media/audiofx/DynamicsProcessing;->getParameter([B[B)I

    .line 2044
    invoke-direct {v0, v7, v3}, Landroid/media/audiofx/DynamicsProcessing;->byteArrayToNumberArray([B[Ljava/lang/Number;)V

    .line 2046
    new-instance v0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    aget-object v2, v3, v4

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    move/from16 v16, v5

    goto :goto_0

    :cond_0
    move/from16 v16, v4

    :goto_0
    aget-object v2, v3, v5

    .line 2047
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v17

    aget-object v2, v3, v6

    .line 2048
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v18

    aget-object v1, v3, v1

    .line 2049
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v19

    aget-object v1, v3, v9

    .line 2050
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v20

    aget-object v1, v3, v10

    .line 2051
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v21

    aget-object v1, v3, v11

    .line 2052
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v22

    aget-object v1, v3, v12

    .line 2053
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v23

    aget-object v1, v3, v13

    .line 2054
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v24

    aget-object v1, v3, v14

    .line 2055
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v25

    aget-object v1, v3, v8

    .line 2056
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v26

    move-object v15, v0

    invoke-direct/range {v15 .. v26}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;-><init>(ZFFFFFFFFFF)V

    return-object v0
.end method

.method private queryEngineMbcByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Mbc;
    .locals 6

    const/4 v0, 0x2

    .line 2005
    new-array v1, v0, [Ljava/lang/Number;

    const/16 v2, 0x50

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2006
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x3

    .line 2007
    new-array v2, v2, [Ljava/lang/Number;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    .line 2008
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    .line 2009
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v0

    .line 2010
    invoke-direct {p0, v1}, Landroid/media/audiofx/DynamicsProcessing;->numberArrayToByteArray([Ljava/lang/Number;)[B

    move-result-object v1

    .line 2011
    invoke-direct {p0, v2}, Landroid/media/audiofx/DynamicsProcessing;->numberArrayToByteArray([Ljava/lang/Number;)[B

    move-result-object v5

    .line 2012
    invoke-virtual {p0, v1, v5}, Landroid/media/audiofx/DynamicsProcessing;->getParameter([B[B)I

    .line 2013
    invoke-direct {p0, v5, v2}, Landroid/media/audiofx/DynamicsProcessing;->byteArrayToNumberArray([B[Ljava/lang/Number;)V

    .line 2014
    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 2015
    new-instance v1, Landroid/media/audiofx/DynamicsProcessing$Mbc;

    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-lez v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    aget-object v2, v2, v4

    .line 2016
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-direct {v1, v5, v4, v0}, Landroid/media/audiofx/DynamicsProcessing$Mbc;-><init>(ZZI)V

    :goto_2
    if-ge v3, v0, :cond_2

    .line 2019
    invoke-direct {p0, p1, v3}, Landroid/media/audiofx/DynamicsProcessing;->queryEngineMbcBandByChannelIndex(II)Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    move-result-object v2

    .line 2020
    invoke-virtual {v1, v3, v2}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->setBand(ILandroid/media/audiofx/DynamicsProcessing$MbcBand;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-object v1
.end method

.method private setEngineArchitecture(IFZIZIZIZ)V
    .locals 4

    const/4 v0, 0x1

    .line 1926
    new-array v1, v0, [Ljava/lang/Number;

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/16 v2, 0x9

    .line 1927
    new-array v2, v2, [Ljava/lang/Number;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    .line 1928
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v2, v0

    .line 1929
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v2, p2

    const/4 p1, 0x3

    .line 1930
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x4

    .line 1931
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x5

    .line 1932
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x6

    .line 1933
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x7

    .line 1934
    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/16 p1, 0x8

    .line 1935
    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    .line 1936
    invoke-direct {p0, v1, v2}, Landroid/media/audiofx/DynamicsProcessing;->setNumberArray([Ljava/lang/Number;[Ljava/lang/Number;)V

    return-void
.end method

.method private setNumberArray([Ljava/lang/Number;[Ljava/lang/Number;)V
    .locals 0

    .line 2229
    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing;->numberArrayToByteArray([Ljava/lang/Number;)[B

    move-result-object p1

    .line 2230
    invoke-direct {p0, p2}, Landroid/media/audiofx/DynamicsProcessing;->numberArrayToByteArray([Ljava/lang/Number;)[B

    move-result-object p2

    .line 2231
    invoke-virtual {p0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing;->setParameter([B[B)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/DynamicsProcessing;->checkStatus(I)V

    return-void
.end method

.method private setTwoFloat(IIF)V
    .locals 2

    const/4 v0, 0x2

    .line 2176
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 2179
    invoke-static {p3}, Landroid/media/audiofx/DynamicsProcessing;->floatToByteArray(F)[B

    move-result-object p1

    .line 2180
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing;->setParameter([I[B)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/DynamicsProcessing;->checkStatus(I)V

    return-void
.end method

.method private updateEffectArchitecture()V
    .locals 1

    .line 2263
    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing;->getChannelCount()I

    move-result v0

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    return-void
.end method

.method private updateEngineChannelByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Channel;)V
    .locals 2

    .line 2154
    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getInputGain()F

    move-result v0

    const/16 v1, 0x20

    invoke-direct {p0, v1, p1, v0}, Landroid/media/audiofx/DynamicsProcessing;->setTwoFloat(IIF)V

    .line 2155
    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getPreEq()Landroid/media/audiofx/DynamicsProcessing$Eq;

    move-result-object v0

    const/16 v1, 0x40

    .line 2156
    invoke-direct {p0, v1, p1, v0}, Landroid/media/audiofx/DynamicsProcessing;->updateEngineEqByChannelIndex(IILandroid/media/audiofx/DynamicsProcessing$Eq;)V

    .line 2157
    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getMbc()Landroid/media/audiofx/DynamicsProcessing$Mbc;

    move-result-object v0

    .line 2158
    invoke-direct {p0, p1, v0}, Landroid/media/audiofx/DynamicsProcessing;->updateEngineMbcByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Mbc;)V

    .line 2159
    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getPostEq()Landroid/media/audiofx/DynamicsProcessing$Eq;

    move-result-object v0

    const/16 v1, 0x60

    .line 2160
    invoke-direct {p0, v1, p1, v0}, Landroid/media/audiofx/DynamicsProcessing;->updateEngineEqByChannelIndex(IILandroid/media/audiofx/DynamicsProcessing$Eq;)V

    .line 2161
    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getLimiter()Landroid/media/audiofx/DynamicsProcessing$Limiter;

    move-result-object p2

    .line 2162
    invoke-direct {p0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing;->updateEngineLimiterByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Limiter;)V

    return-void
.end method

.method private updateEngineEqBandByChannelIndex(IIILandroid/media/audiofx/DynamicsProcessing$EqBand;)V
    .locals 3

    const/4 v0, 0x3

    .line 1941
    new-array v1, v0, [Ljava/lang/Number;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 1942
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    .line 1943
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p3, 0x2

    aput-object p1, v1, p3

    .line 1944
    new-array p1, v0, [Ljava/lang/Number;

    invoke-virtual {p4}, Landroid/media/audiofx/DynamicsProcessing$EqBand;->isEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    .line 1945
    invoke-virtual {p4}, Landroid/media/audiofx/DynamicsProcessing$EqBand;->getCutoffFrequency()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p1, p2

    .line 1946
    invoke-virtual {p4}, Landroid/media/audiofx/DynamicsProcessing$EqBand;->getGain()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, p1, p3

    .line 1947
    invoke-direct {p0, v1, p1}, Landroid/media/audiofx/DynamicsProcessing;->setNumberArray([Ljava/lang/Number;[Ljava/lang/Number;)V

    return-void
.end method

.method private updateEngineEqByChannelIndex(IILandroid/media/audiofx/DynamicsProcessing$Eq;)V
    .locals 7

    .line 1990
    invoke-virtual {p3}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v0

    const/4 v1, 0x2

    .line 1991
    new-array v2, v1, [Ljava/lang/Number;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1992
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x3

    .line 1993
    new-array v3, v3, [Ljava/lang/Number;

    invoke-virtual {p3}, Landroid/media/audiofx/DynamicsProcessing$Eq;->isInUse()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    .line 1994
    invoke-virtual {p3}, Landroid/media/audiofx/DynamicsProcessing$Eq;->isEnabled()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    .line 1995
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    .line 1996
    invoke-direct {p0, v2, v3}, Landroid/media/audiofx/DynamicsProcessing;->setNumberArray([Ljava/lang/Number;[Ljava/lang/Number;)V

    :goto_0
    if-ge v4, v0, :cond_1

    .line 1998
    invoke-virtual {p3, v4}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBand(I)Landroid/media/audiofx/DynamicsProcessing$EqBand;

    move-result-object v1

    const/16 v2, 0x40

    if-ne p1, v2, :cond_0

    const/16 v2, 0x45

    goto :goto_1

    :cond_0
    const/16 v2, 0x65

    .line 1999
    :goto_1
    invoke-direct {p0, v2, p2, v4, v1}, Landroid/media/audiofx/DynamicsProcessing;->updateEngineEqBandByChannelIndex(IIILandroid/media/audiofx/DynamicsProcessing$EqBand;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateEngineLimiterByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Limiter;)V
    .locals 5

    const/4 v0, 0x2

    .line 2092
    new-array v1, v0, [Ljava/lang/Number;

    const/16 v2, 0x70

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2093
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/16 p1, 0x8

    .line 2094
    new-array p1, p1, [Ljava/lang/Number;

    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Limiter;->isInUse()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v3

    .line 2095
    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Limiter;->isEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v2

    .line 2096
    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Limiter;->getLinkGroup()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v0

    const/4 v0, 0x3

    .line 2097
    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Limiter;->getAttackTime()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, p1, v0

    const/4 v0, 0x4

    .line 2098
    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Limiter;->getReleaseTime()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, p1, v0

    const/4 v0, 0x5

    .line 2099
    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Limiter;->getRatio()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, p1, v0

    const/4 v0, 0x6

    .line 2100
    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Limiter;->getThreshold()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, p1, v0

    const/4 v0, 0x7

    .line 2101
    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Limiter;->getPostGain()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, p1, v0

    .line 2102
    invoke-direct {p0, v1, p1}, Landroid/media/audiofx/DynamicsProcessing;->setNumberArray([Ljava/lang/Number;[Ljava/lang/Number;)V

    return-void
.end method

.method private updateEngineMbcBandByChannelIndex(IILandroid/media/audiofx/DynamicsProcessing$MbcBand;)V
    .locals 5

    const/4 v0, 0x3

    .line 2060
    new-array v1, v0, [Ljava/lang/Number;

    const/16 v2, 0x55

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2061
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 2062
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    const/16 p1, 0xb

    .line 2063
    new-array p1, p1, [Ljava/lang/Number;

    invoke-virtual {p3}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->isEnabled()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v3

    .line 2064
    invoke-virtual {p3}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->getCutoffFrequency()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, p1, v2

    .line 2065
    invoke-virtual {p3}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->getAttackTime()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, p1, p2

    .line 2066
    invoke-virtual {p3}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->getReleaseTime()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, p1, v0

    const/4 p2, 0x4

    .line 2067
    invoke-virtual {p3}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->getRatio()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x5

    .line 2068
    invoke-virtual {p3}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->getThreshold()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x6

    .line 2069
    invoke-virtual {p3}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->getKneeWidth()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x7

    .line 2070
    invoke-virtual {p3}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->getNoiseGateThreshold()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p1, p2

    const/16 p2, 0x8

    .line 2071
    invoke-virtual {p3}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->getExpanderRatio()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p1, p2

    const/16 p2, 0x9

    .line 2072
    invoke-virtual {p3}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->getPreGain()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p1, p2

    const/16 p2, 0xa

    .line 2073
    invoke-virtual {p3}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->getPostGain()F

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    aput-object p3, p1, p2

    .line 2074
    invoke-direct {p0, v1, p1}, Landroid/media/audiofx/DynamicsProcessing;->setNumberArray([Ljava/lang/Number;[Ljava/lang/Number;)V

    return-void
.end method

.method private updateEngineMbcByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Mbc;)V
    .locals 7

    .line 2078
    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->getBandCount()I

    move-result v0

    const/4 v1, 0x2

    .line 2079
    new-array v2, v1, [Ljava/lang/Number;

    const/16 v3, 0x50

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 2080
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x3

    .line 2081
    new-array v3, v3, [Ljava/lang/Number;

    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->isInUse()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    .line 2082
    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->isEnabled()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    .line 2083
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    .line 2084
    invoke-direct {p0, v2, v3}, Landroid/media/audiofx/DynamicsProcessing;->setNumberArray([Ljava/lang/Number;[Ljava/lang/Number;)V

    :goto_0
    if-ge v4, v0, :cond_0

    .line 2086
    invoke-virtual {p2, v4}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->getBand(I)Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    move-result-object v1

    .line 2087
    invoke-direct {p0, p1, v4, v1}, Landroid/media/audiofx/DynamicsProcessing;->updateEngineMbcBandByChannelIndex(IILandroid/media/audiofx/DynamicsProcessing$MbcBand;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getChannelByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Channel;
    .locals 0

    .line 1802
    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing;->queryEngineByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Channel;

    move-result-object p0

    return-object p0
.end method

.method public getChannelCount()I
    .locals 1

    const/16 v0, 0x10

    .line 1918
    invoke-direct {p0, v0}, Landroid/media/audiofx/DynamicsProcessing;->getOneInt(I)I

    move-result p0

    return p0
.end method

.method public getConfig()Landroid/media/audiofx/DynamicsProcessing$Config;
    .locals 23

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 231
    new-array v2, v1, [Ljava/lang/Number;

    const/16 v3, 0x30

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/16 v3, 0x9

    .line 232
    new-array v3, v3, [Ljava/lang/Number;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v5, 0x0

    .line 233
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v1

    .line 234
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v3, v6

    .line 235
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x3

    aput-object v5, v3, v7

    .line 236
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x4

    aput-object v5, v3, v8

    .line 237
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v9, 0x5

    aput-object v5, v3, v9

    .line 238
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v10, 0x6

    aput-object v5, v3, v10

    .line 239
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v11, 0x7

    aput-object v5, v3, v11

    .line 240
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v12, 0x8

    aput-object v5, v3, v12

    .line 241
    invoke-direct {v0, v2}, Landroid/media/audiofx/DynamicsProcessing;->numberArrayToByteArray([Ljava/lang/Number;)[B

    move-result-object v2

    .line 242
    invoke-direct {v0, v3}, Landroid/media/audiofx/DynamicsProcessing;->numberArrayToByteArray([Ljava/lang/Number;)[B

    move-result-object v5

    .line 243
    invoke-virtual {v0, v2, v5}, Landroid/media/audiofx/DynamicsProcessing;->getParameter([B[B)I

    .line 244
    invoke-direct {v0, v5, v3}, Landroid/media/audiofx/DynamicsProcessing;->byteArrayToNumberArray([B[Ljava/lang/Number;)V

    .line 245
    new-instance v2, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;

    aget-object v5, v3, v4

    .line 247
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v14

    iget v15, v0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    aget-object v5, v3, v6

    .line 249
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-lez v5, :cond_0

    move/from16 v16, v1

    goto :goto_0

    :cond_0
    move/from16 v16, v4

    :goto_0
    aget-object v5, v3, v7

    .line 250
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v17

    aget-object v5, v3, v8

    .line 251
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-lez v5, :cond_1

    move/from16 v18, v1

    goto :goto_1

    :cond_1
    move/from16 v18, v4

    :goto_1
    aget-object v5, v3, v9

    .line 252
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v19

    aget-object v5, v3, v10

    .line 253
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-lez v5, :cond_2

    move/from16 v20, v1

    goto :goto_2

    :cond_2
    move/from16 v20, v4

    :goto_2
    aget-object v5, v3, v11

    .line 254
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v21

    aget-object v5, v3, v12

    .line 255
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-lez v5, :cond_3

    move/from16 v22, v1

    goto :goto_3

    :cond_3
    move/from16 v22, v4

    :goto_3
    move-object v13, v2

    invoke-direct/range {v13 .. v22}, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;-><init>(IIZIZIZIZ)V

    aget-object v1, v3, v1

    .line 256
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {v2, v1}, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->setPreferredFrameDuration(F)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;

    move-result-object v1

    .line 257
    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->build()Landroid/media/audiofx/DynamicsProcessing$Config;

    move-result-object v1

    .line 258
    :goto_4
    iget v2, v0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    if-ge v4, v2, :cond_4

    .line 259
    invoke-direct {v0, v4}, Landroid/media/audiofx/DynamicsProcessing;->queryEngineByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Channel;

    move-result-object v2

    .line 260
    invoke-virtual {v1, v4, v2}, Landroid/media/audiofx/DynamicsProcessing$Config;->setChannelTo(ILandroid/media/audiofx/DynamicsProcessing$Channel;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    return-object v1
.end method

.method public getInputGainByChannelIndex(I)F
    .locals 1

    const/16 v0, 0x20

    .line 1817
    invoke-direct {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing;->getTwoFloat(II)F

    move-result p0

    return p0
.end method

.method public getLimiterByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Limiter;
    .locals 0

    .line 1902
    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing;->queryEngineLimiterByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Limiter;

    move-result-object p0

    return-object p0
.end method

.method public getMbcBandByChannelIndex(II)Landroid/media/audiofx/DynamicsProcessing$MbcBand;
    .locals 0

    .line 1865
    invoke-direct {p0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing;->queryEngineMbcBandByChannelIndex(II)Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    move-result-object p0

    return-object p0
.end method

.method public getMbcByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Mbc;
    .locals 0

    .line 1854
    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing;->queryEngineMbcByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Mbc;

    move-result-object p0

    return-object p0
.end method

.method public getPostEqBandByChannelIndex(II)Landroid/media/audiofx/DynamicsProcessing$EqBand;
    .locals 1

    const/16 v0, 0x65

    .line 1889
    invoke-direct {p0, v0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing;->queryEngineEqBandByChannelIndex(III)Landroid/media/audiofx/DynamicsProcessing$EqBand;

    move-result-object p0

    return-object p0
.end method

.method public getPostEqByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Eq;
    .locals 1

    const/16 v0, 0x60

    .line 1878
    invoke-direct {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing;->queryEngineEqByChannelIndex(II)Landroid/media/audiofx/DynamicsProcessing$Eq;

    move-result-object p0

    return-object p0
.end method

.method public getPreEqBandByChannelIndex(II)Landroid/media/audiofx/DynamicsProcessing$EqBand;
    .locals 1

    const/16 v0, 0x45

    .line 1841
    invoke-direct {p0, v0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing;->queryEngineEqBandByChannelIndex(III)Landroid/media/audiofx/DynamicsProcessing$EqBand;

    move-result-object p0

    return-object p0
.end method

.method public getPreEqByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Eq;
    .locals 1

    const/16 v0, 0x40

    .line 1830
    invoke-direct {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing;->queryEngineEqByChannelIndex(II)Landroid/media/audiofx/DynamicsProcessing$Eq;

    move-result-object p0

    return-object p0
.end method

.method public getProperties()Landroid/media/audiofx/DynamicsProcessing$Settings;
    .locals 3

    .line 2393
    new-instance v0, Landroid/media/audiofx/DynamicsProcessing$Settings;

    invoke-direct {v0}, Landroid/media/audiofx/DynamicsProcessing$Settings;-><init>()V

    .line 2398
    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing;->getChannelCount()I

    move-result p0

    iput p0, v0, Landroid/media/audiofx/DynamicsProcessing$Settings;->channelCount:I

    .line 2400
    iget p0, v0, Landroid/media/audiofx/DynamicsProcessing$Settings;->channelCount:I

    const/16 v1, 0x20

    if-gt p0, v1, :cond_1

    .line 2405
    iget p0, v0, Landroid/media/audiofx/DynamicsProcessing$Settings;->channelCount:I

    new-array p0, p0, [F

    iput-object p0, v0, Landroid/media/audiofx/DynamicsProcessing$Settings;->inputGain:[F

    const/4 p0, 0x0

    .line 2406
    :goto_0
    iget v1, v0, Landroid/media/audiofx/DynamicsProcessing$Settings;->channelCount:I

    if-ge p0, v1, :cond_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 2401
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "too many channels Settings:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAllChannelsTo(Landroid/media/audiofx/DynamicsProcessing$Channel;)V
    .locals 2

    const/4 v0, 0x0

    .line 1810
    :goto_0
    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    if-ge v0, v1, :cond_0

    .line 1811
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing;->setChannelTo(ILandroid/media/audiofx/DynamicsProcessing$Channel;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setChannelTo(ILandroid/media/audiofx/DynamicsProcessing$Channel;)V
    .locals 0

    .line 1806
    invoke-direct {p0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing;->updateEngineChannelByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Channel;)V

    return-void
.end method

.method public setInputGainAllChannelsTo(F)V
    .locals 2

    const/4 v0, 0x0

    .line 1823
    :goto_0
    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    if-ge v0, v1, :cond_0

    .line 1824
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing;->setInputGainbyChannel(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setInputGainbyChannel(IF)V
    .locals 1

    const/16 v0, 0x20

    .line 1820
    invoke-direct {p0, v0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing;->setTwoFloat(IIF)V

    return-void
.end method

.method public setLimiterAllChannelsTo(Landroid/media/audiofx/DynamicsProcessing$Limiter;)V
    .locals 2

    const/4 v0, 0x0

    .line 1908
    :goto_0
    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    if-ge v0, v1, :cond_0

    .line 1909
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing;->setLimiterByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Limiter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLimiterByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Limiter;)V
    .locals 0

    .line 1905
    invoke-direct {p0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing;->updateEngineLimiterByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Limiter;)V

    return-void
.end method

.method public setMbcAllChannelsTo(Landroid/media/audiofx/DynamicsProcessing$Mbc;)V
    .locals 2

    const/4 v0, 0x0

    .line 1860
    :goto_0
    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    if-ge v0, v1, :cond_0

    .line 1861
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing;->setMbcByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Mbc;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setMbcBandAllChannelsTo(ILandroid/media/audiofx/DynamicsProcessing$MbcBand;)V
    .locals 2

    const/4 v0, 0x0

    .line 1871
    :goto_0
    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    if-ge v0, v1, :cond_0

    .line 1872
    invoke-virtual {p0, v0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing;->setMbcBandByChannelIndex(IILandroid/media/audiofx/DynamicsProcessing$MbcBand;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setMbcBandByChannelIndex(IILandroid/media/audiofx/DynamicsProcessing$MbcBand;)V
    .locals 0

    .line 1868
    invoke-direct {p0, p1, p2, p3}, Landroid/media/audiofx/DynamicsProcessing;->updateEngineMbcBandByChannelIndex(IILandroid/media/audiofx/DynamicsProcessing$MbcBand;)V

    return-void
.end method

.method public setMbcByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Mbc;)V
    .locals 0

    .line 1857
    invoke-direct {p0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing;->updateEngineMbcByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Mbc;)V

    return-void
.end method

.method public setParameterListener(Landroid/media/audiofx/DynamicsProcessing$OnParameterChangeListener;)V
    .locals 3

    .line 2308
    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing;->mParamListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2309
    :try_start_0
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing;->mParamListener:Landroid/media/audiofx/DynamicsProcessing$OnParameterChangeListener;

    if-nez v1, :cond_0

    .line 2310
    new-instance v1, Landroid/media/audiofx/DynamicsProcessing$BaseParameterListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/media/audiofx/DynamicsProcessing$BaseParameterListener;-><init>(Landroid/media/audiofx/DynamicsProcessing;Landroid/media/audiofx/DynamicsProcessing$1;)V

    iput-object v1, p0, Landroid/media/audiofx/DynamicsProcessing;->mBaseParamListener:Landroid/media/audiofx/DynamicsProcessing$BaseParameterListener;

    .line 2311
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing;->mBaseParamListener:Landroid/media/audiofx/DynamicsProcessing$BaseParameterListener;

    invoke-super {p0, v1}, Landroid/media/audiofx/AudioEffect;->setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V

    .line 2313
    :cond_0
    iput-object p1, p0, Landroid/media/audiofx/DynamicsProcessing;->mParamListener:Landroid/media/audiofx/DynamicsProcessing$OnParameterChangeListener;

    .line 2314
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setPostEqAllChannelsTo(Landroid/media/audiofx/DynamicsProcessing$Eq;)V
    .locals 2

    const/4 v0, 0x0

    .line 1884
    :goto_0
    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    if-ge v0, v1, :cond_0

    .line 1885
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing;->setPostEqByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Eq;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPostEqBandAllChannelsTo(ILandroid/media/audiofx/DynamicsProcessing$EqBand;)V
    .locals 2

    const/4 v0, 0x0

    .line 1895
    :goto_0
    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    if-ge v0, v1, :cond_0

    .line 1896
    invoke-virtual {p0, v0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing;->setPostEqBandByChannelIndex(IILandroid/media/audiofx/DynamicsProcessing$EqBand;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPostEqBandByChannelIndex(IILandroid/media/audiofx/DynamicsProcessing$EqBand;)V
    .locals 1

    const/16 v0, 0x65

    .line 1892
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/media/audiofx/DynamicsProcessing;->updateEngineEqBandByChannelIndex(IIILandroid/media/audiofx/DynamicsProcessing$EqBand;)V

    return-void
.end method

.method public setPostEqByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Eq;)V
    .locals 1

    const/16 v0, 0x60

    .line 1881
    invoke-direct {p0, v0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing;->updateEngineEqByChannelIndex(IILandroid/media/audiofx/DynamicsProcessing$Eq;)V

    return-void
.end method

.method public setPreEqAllChannelsTo(Landroid/media/audiofx/DynamicsProcessing$Eq;)V
    .locals 2

    const/4 v0, 0x0

    .line 1836
    :goto_0
    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    if-ge v0, v1, :cond_0

    .line 1837
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing;->setPreEqByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Eq;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPreEqBandAllChannelsTo(ILandroid/media/audiofx/DynamicsProcessing$EqBand;)V
    .locals 2

    const/4 v0, 0x0

    .line 1847
    :goto_0
    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    if-ge v0, v1, :cond_0

    .line 1848
    invoke-virtual {p0, v0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing;->setPreEqBandByChannelIndex(IILandroid/media/audiofx/DynamicsProcessing$EqBand;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPreEqBandByChannelIndex(IILandroid/media/audiofx/DynamicsProcessing$EqBand;)V
    .locals 1

    const/16 v0, 0x45

    .line 1844
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/media/audiofx/DynamicsProcessing;->updateEngineEqBandByChannelIndex(IIILandroid/media/audiofx/DynamicsProcessing$EqBand;)V

    return-void
.end method

.method public setPreEqByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Eq;)V
    .locals 1

    const/16 v0, 0x40

    .line 1833
    invoke-direct {p0, v0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing;->updateEngineEqByChannelIndex(IILandroid/media/audiofx/DynamicsProcessing$Eq;)V

    return-void
.end method

.method public setProperties(Landroid/media/audiofx/DynamicsProcessing$Settings;)V
    .locals 2

    .line 2421
    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$Settings;->channelCount:I

    iget-object v1, p1, Landroid/media/audiofx/DynamicsProcessing$Settings;->inputGain:[F

    array-length v1, v1

    if-ne v0, v1, :cond_1

    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$Settings;->channelCount:I

    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    .line 2428
    :goto_0
    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing;->mChannelCount:I

    if-ge p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 2423
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "settings invalid channel count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/media/audiofx/DynamicsProcessing$Settings;->channelCount:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
