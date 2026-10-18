.class public Landroid/media/audiofx/Equalizer;
.super Landroid/media/audiofx/AudioEffect;
.source "Equalizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/Equalizer$Settings;,
        Landroid/media/audiofx/Equalizer$BaseParameterListener;,
        Landroid/media/audiofx/Equalizer$OnParameterChangeListener;
    }
.end annotation


# static fields
.field public static final PARAM_BAND_FREQ_RANGE:I = 0x4

.field public static final PARAM_BAND_LEVEL:I = 0x2

.field public static final PARAM_CENTER_FREQ:I = 0x3

.field public static final PARAM_CURRENT_PRESET:I = 0x6

.field public static final PARAM_GET_BAND:I = 0x5

.field public static final PARAM_GET_NUM_OF_PRESETS:I = 0x7

.field public static final PARAM_GET_PRESET_NAME:I = 0x8

.field public static final PARAM_LEVEL_RANGE:I = 0x1

.field public static final PARAM_NUM_BANDS:I = 0x0

.field private static final PARAM_PROPERTIES:I = 0x9

.field public static final PARAM_STRING_SIZE_MAX:I = 0x20

.field private static final TAG:Ljava/lang/String; = "Equalizer"


# instance fields
.field private mBaseParamListener:Landroid/media/audiofx/Equalizer$BaseParameterListener;

.field private mNumBands:S

.field private mNumPresets:I

.field private mParamListener:Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

.field private final mParamListenerLock:Ljava/lang/Object;

.field private mPresetNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 139
    sget-object v0, Landroid/media/audiofx/Equalizer;->EFFECT_TYPE_EQUALIZER:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/Equalizer;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    const/4 p1, 0x0

    .line 96
    iput-short p1, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Landroid/media/audiofx/Equalizer;->mParamListener:Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    .line 115
    iput-object v0, p0, Landroid/media/audiofx/Equalizer;->mBaseParamListener:Landroid/media/audiofx/Equalizer$BaseParameterListener;

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/audiofx/Equalizer;->mParamListenerLock:Ljava/lang/Object;

    if-nez p2, :cond_0

    const-string p2, "Equalizer"

    const-string v0, "WARNING: attaching an Equalizer to global output mix is deprecated!"

    .line 142
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    invoke-virtual {p0}, Landroid/media/audiofx/Equalizer;->getNumberOfBands()S

    .line 147
    invoke-virtual {p0}, Landroid/media/audiofx/Equalizer;->getNumberOfPresets()S

    move-result p2

    iput p2, p0, Landroid/media/audiofx/Equalizer;->mNumPresets:I

    .line 149
    iget p2, p0, Landroid/media/audiofx/Equalizer;->mNumPresets:I

    if-eqz p2, :cond_2

    .line 150
    iget p2, p0, Landroid/media/audiofx/Equalizer;->mNumPresets:I

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Landroid/media/audiofx/Equalizer;->mPresetNames:[Ljava/lang/String;

    const/16 p2, 0x20

    .line 151
    new-array p2, p2, [B

    const/4 v0, 0x2

    .line 152
    new-array v0, v0, [I

    const/16 v1, 0x8

    aput v1, v0, p1

    move v1, p1

    .line 154
    :goto_0
    iget v2, p0, Landroid/media/audiofx/Equalizer;->mNumPresets:I

    if-ge v1, v2, :cond_2

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 156
    invoke-virtual {p0, v0, p2}, Landroid/media/audiofx/Equalizer;->getParameter([I[B)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    move v2, p1

    .line 158
    :goto_1
    aget-byte v3, p2, v2

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 160
    :cond_1
    :try_start_0
    iget-object v3, p0, Landroid/media/audiofx/Equalizer;->mPresetNames:[Ljava/lang/String;

    new-instance v4, Ljava/lang/String;

    const-string v5, "ISO-8859-1"

    invoke-direct {v4, p2, p1, v2, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    aput-object v4, v3, v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string v2, "Equalizer"

    const-string/jumbo v3, "preset name decode error"

    .line 162
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic access$000(Landroid/media/audiofx/Equalizer;)Ljava/lang/Object;
    .locals 0

    .line 42
    iget-object p0, p0, Landroid/media/audiofx/Equalizer;->mParamListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Landroid/media/audiofx/Equalizer;)Landroid/media/audiofx/Equalizer$OnParameterChangeListener;
    .locals 0

    .line 42
    iget-object p0, p0, Landroid/media/audiofx/Equalizer;->mParamListener:Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    return-object p0
.end method


# virtual methods
.method public getBand(I)S
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 300
    new-array v0, v0, [I

    const/4 v1, 0x1

    .line 301
    new-array v2, v1, [S

    const/4 v3, 0x0

    const/4 v4, 0x5

    aput v4, v0, v3

    aput p1, v0, v1

    .line 305
    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/Equalizer;->getParameter([I[S)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    .line 307
    aget-short p0, v2, v3

    return p0
.end method

.method public getBandFreqRange(S)[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 281
    new-array v1, v0, [I

    .line 282
    new-array v0, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x4

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    .line 285
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/Equalizer;->getParameter([I[I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    return-object v0
.end method

.method public getBandLevel(S)S
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 237
    new-array v1, v0, [I

    const/4 v2, 0x1

    .line 238
    new-array v3, v2, [S

    const/4 v4, 0x0

    aput v0, v1, v4

    aput p1, v1, v2

    .line 242
    invoke-virtual {p0, v1, v3}, Landroid/media/audiofx/Equalizer;->getParameter([I[S)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    .line 244
    aget-short p0, v3, v4

    return p0
.end method

.method public getBandLevelRange()[S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 199
    new-array v0, v0, [S

    const/4 v1, 0x1

    .line 200
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/Equalizer;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    return-object v0
.end method

.method public getCenterFreq(S)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 259
    new-array v0, v0, [I

    const/4 v1, 0x1

    .line 260
    new-array v2, v1, [I

    const/4 v3, 0x0

    const/4 v4, 0x3

    aput v4, v0, v3

    aput p1, v0, v1

    .line 264
    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/Equalizer;->getParameter([I[I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    .line 266
    aget p0, v2, v3

    return p0
.end method

.method public getCurrentPreset()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 319
    new-array v0, v0, [S

    const/4 v1, 0x6

    .line 320
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/Equalizer;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    const/4 p0, 0x0

    .line 321
    aget-short p0, v0, p0

    return p0
.end method

.method public getNumberOfBands()S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 177
    iget-short v0, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    if-eqz v0, :cond_0

    .line 178
    iget-short p0, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    return p0

    :cond_0
    const/4 v0, 0x1

    .line 180
    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 182
    new-array v0, v0, [S

    .line 183
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/Equalizer;->getParameter([I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    .line 184
    aget-short v0, v0, v2

    iput-short v0, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    .line 185
    iget-short p0, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    return p0
.end method

.method public getNumberOfPresets()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 348
    new-array v0, v0, [S

    const/4 v1, 0x7

    .line 349
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/Equalizer;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    const/4 p0, 0x0

    .line 350
    aget-short p0, v0, p0

    return p0
.end method

.method public getPresetName(S)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_0

    .line 363
    iget v0, p0, Landroid/media/audiofx/Equalizer;->mNumPresets:I

    if-ge p1, v0, :cond_0

    .line 364
    iget-object p0, p0, Landroid/media/audiofx/Equalizer;->mPresetNames:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getProperties()Landroid/media/audiofx/Equalizer$Settings;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 524
    iget-short v0, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    const/16 v2, 0x9

    .line 525
    invoke-virtual {p0, v2, v0}, Landroid/media/audiofx/Equalizer;->getParameter(I[B)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    .line 526
    new-instance v2, Landroid/media/audiofx/Equalizer$Settings;

    invoke-direct {v2}, Landroid/media/audiofx/Equalizer$Settings;-><init>()V

    const/4 v3, 0x0

    .line 527
    invoke-static {v0, v3}, Landroid/media/audiofx/Equalizer;->byteArrayToShort([BI)S

    move-result v4

    iput-short v4, v2, Landroid/media/audiofx/Equalizer$Settings;->curPreset:S

    .line 528
    invoke-static {v0, v1}, Landroid/media/audiofx/Equalizer;->byteArrayToShort([BI)S

    move-result v1

    iput-short v1, v2, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    .line 529
    iget-short v1, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    new-array v1, v1, [S

    iput-object v1, v2, Landroid/media/audiofx/Equalizer$Settings;->bandLevels:[S

    .line 530
    :goto_0
    iget-short v1, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    if-ge v3, v1, :cond_0

    .line 531
    iget-object v1, v2, Landroid/media/audiofx/Equalizer$Settings;->bandLevels:[S

    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v4, v4, 0x4

    invoke-static {v0, v4}, Landroid/media/audiofx/Equalizer;->byteArrayToShort([BI)S

    move-result v4

    aput-short v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public setBandLevel(SS)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 217
    new-array v1, v0, [I

    const/4 v2, 0x1

    .line 218
    new-array v3, v2, [S

    const/4 v4, 0x0

    aput v0, v1, v4

    aput p1, v1, v2

    aput-short p2, v3, v4

    .line 223
    invoke-virtual {p0, v1, v3}, Landroid/media/audiofx/Equalizer;->setParameter([I[S)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    return-void
.end method

.method public setParameterListener(Landroid/media/audiofx/Equalizer$OnParameterChangeListener;)V
    .locals 2

    .line 433
    iget-object v0, p0, Landroid/media/audiofx/Equalizer;->mParamListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 434
    :try_start_0
    iget-object v1, p0, Landroid/media/audiofx/Equalizer;->mParamListener:Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    if-nez v1, :cond_0

    .line 435
    iput-object p1, p0, Landroid/media/audiofx/Equalizer;->mParamListener:Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    .line 436
    new-instance p1, Landroid/media/audiofx/Equalizer$BaseParameterListener;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Landroid/media/audiofx/Equalizer$BaseParameterListener;-><init>(Landroid/media/audiofx/Equalizer;Landroid/media/audiofx/Equalizer$1;)V

    iput-object p1, p0, Landroid/media/audiofx/Equalizer;->mBaseParamListener:Landroid/media/audiofx/Equalizer$BaseParameterListener;

    .line 437
    iget-object p1, p0, Landroid/media/audiofx/Equalizer;->mBaseParamListener:Landroid/media/audiofx/Equalizer$BaseParameterListener;

    invoke-super {p0, p1}, Landroid/media/audiofx/AudioEffect;->setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V

    .line 439
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setProperties(Landroid/media/audiofx/Equalizer$Settings;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 546
    iget-short v0, p1, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    iget-object v1, p1, Landroid/media/audiofx/Equalizer$Settings;->bandLevels:[S

    array-length v1, v1

    if-ne v0, v1, :cond_1

    iget-short v0, p1, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    iget-short v1, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    .line 551
    new-array v1, v0, [[B

    iget-short v2, p1, Landroid/media/audiofx/Equalizer$Settings;->curPreset:S

    invoke-static {v2}, Landroid/media/audiofx/Equalizer;->shortToByteArray(S)[B

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-short v2, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    .line 552
    invoke-static {v2}, Landroid/media/audiofx/Equalizer;->shortToByteArray(S)[B

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 551
    invoke-static {v1}, Landroid/media/audiofx/Equalizer;->concatArrays([[B)[B

    move-result-object v1

    move-object v2, v1

    move v1, v3

    .line 553
    :goto_0
    iget-short v5, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    if-ge v1, v5, :cond_0

    .line 554
    new-array v5, v0, [[B

    aput-object v2, v5, v3

    iget-object v2, p1, Landroid/media/audiofx/Equalizer$Settings;->bandLevels:[S

    aget-short v2, v2, v1

    .line 555
    invoke-static {v2}, Landroid/media/audiofx/Equalizer;->shortToByteArray(S)[B

    move-result-object v2

    aput-object v2, v5, v4

    .line 554
    invoke-static {v5}, Landroid/media/audiofx/Equalizer;->concatArrays([[B)[B

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0x9

    .line 557
    invoke-virtual {p0, p1, v2}, Landroid/media/audiofx/Equalizer;->setParameter(I[B)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    return-void

    .line 548
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "settings invalid band count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short p1, p1, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public usePreset(S)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x6

    .line 335
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/Equalizer;->setParameter(IS)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    return-void
.end method
