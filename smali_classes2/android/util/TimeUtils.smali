.class public Landroid/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field public static final HUNDRED_DAY_FIELD_LEN:I = 0x13

.field public static final NANOS_PER_MS:J = 0xf4240L

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static sFormatStr:[C

.field private static final sFormatSync:Ljava/lang/Object;

.field private static sLoggingFormat:Ljava/text/SimpleDateFormat;

.field private static sTmpFormatStr:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/util/TimeUtils;->sLoggingFormat:Ljava/text/SimpleDateFormat;

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    const/16 v0, 0x1d

    .line 98
    new-array v1, v0, [C

    sput-object v1, Landroid/util/TimeUtils;->sFormatStr:[C

    .line 99
    new-array v0, v0, [C

    sput-object v0, Landroid/util/TimeUtils;->sTmpFormatStr:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accumField(IIZI)I
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x3e7

    if-le p0, v1, :cond_1

    :goto_0
    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 106
    div-int/lit8 p0, p0, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v0, p1

    return v0

    :cond_1
    const/16 v1, 0x63

    const/4 v2, 0x3

    if-gt p0, v1, :cond_7

    if-eqz p2, :cond_2

    if-lt p3, v2, :cond_2

    goto :goto_3

    :cond_2
    const/16 v1, 0x9

    const/4 v2, 0x2

    if-gt p0, v1, :cond_6

    if-eqz p2, :cond_3

    if-lt p3, v2, :cond_3

    goto :goto_2

    :cond_3
    if-nez p2, :cond_5

    if-lez p0, :cond_4

    goto :goto_1

    :cond_4
    return v0

    :cond_5
    :goto_1
    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_6
    :goto_2
    add-int/2addr p1, v2

    return p1

    :cond_7
    :goto_3
    add-int/2addr p1, v2

    return p1
.end method

.method public static formatDuration(J)Ljava/lang/String;
    .locals 3

    .line 260
    sget-object v0, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 261
    :try_start_0
    invoke-static {p0, p1, v1}, Landroid/util/TimeUtils;->formatDurationLocked(JI)I

    move-result p0

    .line 262
    new-instance p1, Ljava/lang/String;

    sget-object v2, Landroid/util/TimeUtils;->sFormatStr:[C

    invoke-direct {p1, v2, v1, p0}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p0

    .line 263
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static formatDuration(JJLjava/io/PrintWriter;)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-string p0, "--"

    .line 274
    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void

    :cond_0
    sub-long/2addr p0, p2

    const/4 p2, 0x0

    .line 277
    invoke-static {p0, p1, p4, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;)V
    .locals 1

    const/4 v0, 0x0

    .line 268
    invoke-static {p0, p1, p2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;I)V
    .locals 2

    .line 252
    sget-object v0, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v0

    .line 253
    :try_start_0
    invoke-static {p0, p1, p3}, Landroid/util/TimeUtils;->formatDurationLocked(JI)I

    move-result p0

    .line 254
    new-instance p1, Ljava/lang/String;

    sget-object p3, Landroid/util/TimeUtils;->sFormatStr:[C

    const/4 v1, 0x0

    invoke-direct {p1, p3, v1, p0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 255
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static formatDuration(JLjava/lang/StringBuilder;)V
    .locals 2

    .line 236
    sget-object v0, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 237
    :try_start_0
    invoke-static {p0, p1, v1}, Landroid/util/TimeUtils;->formatDurationLocked(JI)I

    move-result p0

    .line 238
    sget-object p1, Landroid/util/TimeUtils;->sFormatStr:[C

    invoke-virtual {p2, p1, v1, p0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 239
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static formatDuration(JLjava/lang/StringBuilder;I)V
    .locals 1

    .line 244
    sget-object v0, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_0
    invoke-static {p0, p1, p3}, Landroid/util/TimeUtils;->formatDurationLocked(JI)I

    move-result p0

    .line 246
    sget-object p1, Landroid/util/TimeUtils;->sFormatStr:[C

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3, p0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 247
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static formatDurationLocked(JI)I
    .locals 17

    move-wide/from16 v0, p0

    move/from16 v2, p2

    .line 164
    sget-object v3, Landroid/util/TimeUtils;->sFormatStr:[C

    array-length v3, v3

    if-ge v3, v2, :cond_0

    .line 165
    new-array v3, v2, [C

    sput-object v3, Landroid/util/TimeUtils;->sFormatStr:[C

    .line 168
    :cond_0
    sget-object v3, Landroid/util/TimeUtils;->sFormatStr:[C

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    const/16 v5, 0x20

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v4, :cond_2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ge v11, v0, :cond_1

    add-int/lit8 v1, v11, 0x1

    .line 174
    aput-char v5, v3, v11

    move v11, v1

    goto :goto_0

    :cond_1
    const/16 v0, 0x30

    .line 176
    aput-char v0, v3, v11

    add-int/2addr v11, v10

    return v11

    :cond_2
    if-lez v4, :cond_3

    const/16 v4, 0x2b

    goto :goto_1

    :cond_3
    const/16 v4, 0x2d

    neg-long v0, v0

    :goto_1
    const-wide/16 v6, 0x3e8

    .line 188
    rem-long v8, v0, v6

    long-to-int v12, v8

    .line 189
    div-long/2addr v0, v6

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    const v1, 0x15180

    if-lt v0, v1, :cond_4

    .line 193
    div-int v6, v0, v1

    mul-int/2addr v1, v6

    sub-int/2addr v0, v1

    goto :goto_2

    :cond_4
    move v6, v11

    :goto_2
    const/16 v1, 0xe10

    if-lt v0, v1, :cond_5

    .line 197
    div-int/lit16 v1, v0, 0xe10

    mul-int/lit16 v7, v1, 0xe10

    sub-int/2addr v0, v7

    goto :goto_3

    :cond_5
    move v1, v11

    :goto_3
    const/16 v7, 0x3c

    if-lt v0, v7, :cond_6

    .line 201
    div-int/lit8 v7, v0, 0x3c

    mul-int/lit8 v8, v7, 0x3c

    sub-int/2addr v0, v8

    move v13, v0

    move v0, v7

    goto :goto_4

    :cond_6
    move v13, v0

    move v0, v11

    :goto_4
    const/4 v14, 0x3

    const/4 v15, 0x2

    if-eqz v2, :cond_b

    .line 208
    invoke-static {v6, v10, v11, v11}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v7

    if-lez v7, :cond_7

    move v8, v10

    goto :goto_5

    :cond_7
    move v8, v11

    .line 209
    :goto_5
    invoke-static {v1, v10, v8, v15}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v8

    add-int/2addr v7, v8

    if-lez v7, :cond_8

    move v8, v10

    goto :goto_6

    :cond_8
    move v8, v11

    .line 210
    :goto_6
    invoke-static {v0, v10, v8, v15}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v8

    add-int/2addr v7, v8

    if-lez v7, :cond_9

    move v8, v10

    goto :goto_7

    :cond_9
    move v8, v11

    .line 211
    :goto_7
    invoke-static {v13, v10, v8, v15}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v8

    add-int/2addr v7, v8

    if-lez v7, :cond_a

    move v8, v14

    goto :goto_8

    :cond_a
    move v8, v11

    .line 212
    :goto_8
    invoke-static {v12, v15, v10, v8}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v8

    add-int/2addr v8, v10

    add-int/2addr v7, v8

    move v8, v11

    :goto_9
    if-ge v7, v2, :cond_c

    .line 214
    aput-char v5, v3, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_b
    move v8, v11

    .line 220
    :cond_c
    aput-char v4, v3, v8

    add-int/lit8 v9, v8, 0x1

    if-eqz v2, :cond_d

    move v2, v10

    goto :goto_a

    :cond_d
    move v2, v11

    :goto_a
    const/16 v7, 0x64

    const/4 v8, 0x0

    const/16 v16, 0x0

    move-object v4, v3

    move v5, v6

    move v6, v7

    move v7, v9

    move v11, v9

    move/from16 v9, v16

    .line 225
    invoke-static/range {v4 .. v9}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v7

    const/16 v6, 0x68

    if-eq v7, v11, :cond_e

    move v8, v10

    goto :goto_b

    :cond_e
    const/4 v8, 0x0

    :goto_b
    if-eqz v2, :cond_f

    move v9, v15

    goto :goto_c

    :cond_f
    const/4 v9, 0x0

    :goto_c
    move-object v4, v3

    move v5, v1

    .line 226
    invoke-static/range {v4 .. v9}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v7

    const/16 v6, 0x6d

    if-eq v7, v11, :cond_10

    move v8, v10

    goto :goto_d

    :cond_10
    const/4 v8, 0x0

    :goto_d
    if-eqz v2, :cond_11

    move v9, v15

    goto :goto_e

    :cond_11
    const/4 v9, 0x0

    :goto_e
    move-object v4, v3

    move v5, v0

    .line 227
    invoke-static/range {v4 .. v9}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v7

    const/16 v6, 0x73

    if-eq v7, v11, :cond_12

    move v8, v10

    goto :goto_f

    :cond_12
    const/4 v8, 0x0

    :goto_f
    if-eqz v2, :cond_13

    move v9, v15

    goto :goto_10

    :cond_13
    const/4 v9, 0x0

    :goto_10
    move-object v4, v3

    move v5, v13

    .line 228
    invoke-static/range {v4 .. v9}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v7

    const/16 v6, 0x6d

    const/4 v8, 0x1

    if-eqz v2, :cond_14

    if-eq v7, v11, :cond_14

    move v9, v14

    goto :goto_11

    :cond_14
    const/4 v9, 0x0

    :goto_11
    move-object v4, v3

    move v5, v12

    .line 229
    invoke-static/range {v4 .. v9}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v0

    const/16 v1, 0x73

    .line 230
    aput-char v1, v3, v0

    add-int/2addr v0, v10

    return v0
.end method

.method public static formatForLogging(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    const-string/jumbo p0, "unknown"

    return-object p0

    .line 315
    :cond_0
    sget-object v0, Landroid/util/TimeUtils;->sLoggingFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatUptime(J)Ljava/lang/String;
    .locals 4

    .line 282
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long v0, p0, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " (in "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ms)"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-gez v2, :cond_1

    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ("

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-long p0, v0

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ms ago)"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 289
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " (now)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getIcuTimeZone(IZJLjava/lang/String;)Landroid/icu/util/TimeZone;
    .locals 7

    if-nez p4, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 61
    :cond_0
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v6

    .line 62
    invoke-static {}, Llibcore/util/TimeZoneFinder;->getInstance()Llibcore/util/TimeZoneFinder;

    move-result-object v0

    move-object v1, p4

    move v2, p0

    move v3, p1

    move-wide v4, p2

    .line 63
    invoke-virtual/range {v0 .. v6}, Llibcore/util/TimeZoneFinder;->lookupTimeZoneByCountryAndOffset(Ljava/lang/String;IZJLandroid/icu/util/TimeZone;)Landroid/icu/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method public static getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;
    .locals 0

    .line 44
    invoke-static {p0, p1, p2, p3, p4}, Landroid/util/TimeUtils;->getIcuTimeZone(IZJLjava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 47
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getTimeZoneDatabaseVersion()Ljava/lang/String;
    .locals 1

    .line 84
    invoke-static {}, Llibcore/util/ZoneInfoDB;->getInstance()Llibcore/util/ZoneInfoDB$TzData;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/util/ZoneInfoDB$TzData;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static logTimeOfDay(J)Ljava/lang/String;
    .locals 3

    .line 301
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-ltz v1, :cond_0

    .line 303
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-string p0, "%tm-%td %tH:%tM:%tS.%tL"

    const/4 p1, 0x6

    .line 304
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const/4 v1, 0x1

    aput-object v0, p1, v1

    const/4 v1, 0x2

    aput-object v0, p1, v1

    const/4 v1, 0x3

    aput-object v0, p1, v1

    const/4 v1, 0x4

    aput-object v0, p1, v1

    const/4 v1, 0x5

    aput-object v0, p1, v1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 306
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static printFieldLocked([CICIZI)I
    .locals 2

    if-nez p4, :cond_0

    if-lez p1, :cond_a

    :cond_0
    const/16 v0, 0x3e7

    if-le p1, v0, :cond_2

    const/4 p4, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 129
    sget-object p5, Landroid/util/TimeUtils;->sTmpFormatStr:[C

    array-length p5, p5

    if-ge p4, p5, :cond_1

    .line 130
    rem-int/lit8 p5, p1, 0xa

    .line 131
    sget-object v0, Landroid/util/TimeUtils;->sTmpFormatStr:[C

    add-int/lit8 p5, p5, 0x30

    int-to-char p5, p5

    aput-char p5, v0, p4

    add-int/lit8 p4, p4, 0x1

    .line 133
    div-int/lit8 p1, p1, 0xa

    goto :goto_0

    :cond_1
    add-int/lit8 p4, p4, -0x1

    :goto_1
    if-ltz p4, :cond_9

    .line 137
    sget-object p1, Landroid/util/TimeUtils;->sTmpFormatStr:[C

    aget-char p1, p1, p4

    aput-char p1, p0, p3

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p4, p4, -0x1

    goto :goto_1

    :cond_2
    if-eqz p4, :cond_3

    const/4 v0, 0x3

    if-ge p5, v0, :cond_4

    :cond_3
    const/16 v0, 0x63

    if-le p1, v0, :cond_5

    .line 143
    :cond_4
    div-int/lit8 v0, p1, 0x64

    add-int/lit8 v1, v0, 0x30

    int-to-char v1, v1

    .line 144
    aput-char v1, p0, p3

    add-int/lit8 v1, p3, 0x1

    mul-int/lit8 v0, v0, 0x64

    sub-int/2addr p1, v0

    goto :goto_2

    :cond_5
    move v1, p3

    :goto_2
    if-eqz p4, :cond_6

    const/4 p4, 0x2

    if-ge p5, p4, :cond_7

    :cond_6
    const/16 p4, 0x9

    if-gt p1, p4, :cond_7

    if-eq p3, v1, :cond_8

    .line 149
    :cond_7
    div-int/lit8 p3, p1, 0xa

    add-int/lit8 p4, p3, 0x30

    int-to-char p4, p4

    .line 150
    aput-char p4, p0, v1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 p3, p3, 0xa

    sub-int/2addr p1, p3

    :cond_8
    add-int/lit8 p1, p1, 0x30

    int-to-char p1, p1

    .line 154
    aput-char p1, p0, v1

    add-int/lit8 p3, v1, 0x1

    .line 157
    :cond_9
    aput-char p2, p0, p3

    add-int/lit8 p3, p3, 0x1

    :cond_a
    return p3
.end method
