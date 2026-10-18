.class Landroid/text/format/TimeFormatter;
.super Ljava/lang/Object;
.source "TimeFormatter.java"


# static fields
.field private static final DAYSPERLYEAR:I = 0x16e

.field private static final DAYSPERNYEAR:I = 0x16d

.field private static final DAYSPERWEEK:I = 0x7

.field private static final FORCE_LOWER_CASE:I = -0x1

.field private static final HOURSPERDAY:I = 0x18

.field private static final MINSPERHOUR:I = 0x3c

.field private static final MONSPERYEAR:I = 0xc

.field private static final SECSPERMIN:I = 0x3c

.field private static sDateOnlyFormat:Ljava/lang/String;

.field private static sDateTimeFormat:Ljava/lang/String;

.field private static sLocale:Ljava/util/Locale;

.field private static sLocaleData:Llibcore/icu/LocaleData;

.field private static sTimeOnlyFormat:Ljava/lang/String;


# instance fields
.field private final dateOnlyFormat:Ljava/lang/String;

.field private final dateTimeFormat:Ljava/lang/String;

.field private final localeData:Llibcore/icu/LocaleData;

.field private numberFormatter:Ljava/util/Formatter;

.field private outputBuilder:Ljava/lang/StringBuilder;

.field private final timeOnlyFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-class v0, Landroid/text/format/TimeFormatter;

    monitor-enter v0

    .line 69
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 71
    sget-object v2, Landroid/text/format/TimeFormatter;->sLocale:Ljava/util/Locale;

    if-eqz v2, :cond_0

    sget-object v2, Landroid/text/format/TimeFormatter;->sLocale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 72
    :cond_0
    sput-object v1, Landroid/text/format/TimeFormatter;->sLocale:Ljava/util/Locale;

    .line 73
    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v1

    sput-object v1, Landroid/text/format/TimeFormatter;->sLocaleData:Llibcore/icu/LocaleData;

    .line 75
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040647

    .line 76
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/text/format/TimeFormatter;->sTimeOnlyFormat:Ljava/lang/String;

    const v2, 0x10403c4

    .line 77
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/text/format/TimeFormatter;->sDateOnlyFormat:Ljava/lang/String;

    const v2, 0x1040186

    .line 78
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/text/format/TimeFormatter;->sDateTimeFormat:Ljava/lang/String;

    .line 81
    :cond_1
    sget-object v1, Landroid/text/format/TimeFormatter;->sDateTimeFormat:Ljava/lang/String;

    iput-object v1, p0, Landroid/text/format/TimeFormatter;->dateTimeFormat:Ljava/lang/String;

    .line 82
    sget-object v1, Landroid/text/format/TimeFormatter;->sTimeOnlyFormat:Ljava/lang/String;

    iput-object v1, p0, Landroid/text/format/TimeFormatter;->timeOnlyFormat:Ljava/lang/String;

    .line 83
    sget-object v1, Landroid/text/format/TimeFormatter;->sDateOnlyFormat:Ljava/lang/String;

    iput-object v1, p0, Landroid/text/format/TimeFormatter;->dateOnlyFormat:Ljava/lang/String;

    .line 84
    sget-object v1, Landroid/text/format/TimeFormatter;->sLocaleData:Llibcore/icu/LocaleData;

    iput-object v1, p0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    .line 85
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static brokenIsLower(C)Z
    .locals 1

    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static brokenIsUpper(C)Z
    .locals 1

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static brokenToLower(C)C
    .locals 2

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v1, 0x5a

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x61

    int-to-char p0, p0

    return p0

    :cond_0
    return p0
.end method

.method private static brokenToUpper(C)C
    .locals 2

    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v1, 0x7a

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x41

    int-to-char p0, p0

    return p0

    :cond_0
    return p0
.end method

.method private formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V
    .locals 3

    .line 133
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object p1

    .line 134
    :goto_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_2

    .line 136
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->get(I)C

    move-result v0

    const/16 v1, 0x25

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 138
    invoke-direct {p0, p1, p2, p3}, Landroid/text/format/TimeFormatter;->handleToken(Ljava/nio/CharBuffer;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)Z

    move-result v0

    goto :goto_1

    :cond_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/CharBuffer;->get(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    :cond_1
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_2

    const/16 p3, 0x30

    if-eq p0, p3, :cond_1

    const/16 p3, 0x5f

    if-eq p0, p3, :cond_0

    return-object p1

    :cond_0
    return-object p2

    :cond_1
    return-object p4

    :cond_2
    return-object p3
.end method

.method private handleToken(Ljava/nio/CharBuffer;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)Z
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    .line 152
    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1c

    .line 154
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 155
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/nio/CharBuffer;->get(I)C

    move-result v2

    const/16 v4, 0x2d

    const/4 v5, 0x7

    const/16 v6, 0xc

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    packed-switch v2, :pswitch_data_4

    packed-switch v2, :pswitch_data_5

    packed-switch v2, :pswitch_data_6

    packed-switch v2, :pswitch_data_7

    sparse-switch v2, :sswitch_data_0

    return v3

    .line 253
    :sswitch_0
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result p1

    if-lt p1, v6, :cond_0

    iget-object p1, p0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    iget-object p1, p1, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object p1, p1, v3

    goto :goto_1

    .line 254
    :cond_0
    iget-object p1, p0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    iget-object p1, p1, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object p1, p1, v0

    .line 253
    :goto_1
    invoke-direct {p0, p1, v1}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    return v0

    .line 242
    :sswitch_1
    iget-object p0, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string p1, "%02d"

    const-string p3, "%2d"

    const-string v2, "%d"

    const-string v4, "%02d"

    invoke-static {v1, p1, p3, v2, v4}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p3, v3, [Ljava/lang/Object;

    .line 243
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getMinute()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v0

    .line 242
    invoke-virtual {p0, p1, p3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v0

    :sswitch_2
    const-string p1, "%a %b %e %H:%M:%S %Z %Y"

    .line 378
    invoke-direct {p0, p1, p2, p3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    return v0

    .line 360
    :pswitch_1
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getIsDst()I

    move-result p1

    if-gez p1, :cond_1

    return v0

    .line 363
    :cond_1
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getGmtOffset()I

    move-result p1

    if-gez p1, :cond_2

    neg-int p1, p1

    goto :goto_2

    :cond_2
    const/16 v4, 0x2b

    .line 371
    :goto_2
    iget-object p2, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 372
    div-int/lit8 p1, p1, 0x3c

    .line 373
    div-int/lit8 p2, p1, 0x3c

    mul-int/lit8 p2, p2, 0x64

    rem-int/lit8 p1, p1, 0x3c

    add-int/2addr p2, p1

    .line 374
    iget-object p0, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string p1, "%04d"

    const-string p3, "%4d"

    const-string v2, "%d"

    const-string v4, "%04d"

    invoke-static {v1, p1, p3, v2, v4}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v0

    invoke-virtual {p0, p1, p3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v0

    .line 347
    :pswitch_2
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    move-result p1

    invoke-direct {p0, p1, v0, v3, v1}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    return v0

    .line 344
    :pswitch_3
    iget-object p1, p0, Landroid/text/format/TimeFormatter;->dateOnlyFormat:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    return v0

    .line 338
    :pswitch_4
    iget-object p0, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string p1, "%d"

    new-array p3, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v0

    invoke-virtual {p0, p1, p3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v0

    :pswitch_5
    const-string p1, "%e-%b-%Y"

    .line 329
    invoke-direct {p0, p1, p2, p3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    return v0

    .line 286
    :pswitch_6
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v5

    .line 287
    :goto_3
    iget-object p0, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string p1, "%d"

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v0

    invoke-virtual {p0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v0

    .line 278
    :pswitch_7
    iget-object p0, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v0

    .line 271
    :pswitch_8
    invoke-virtual {p2, p3}, Llibcore/util/ZoneInfo$WallTime;->mktime(Llibcore/util/ZoneInfo;)I

    move-result p1

    .line 272
    iget-object p0, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v0

    :pswitch_9
    const-string p1, "%I:%M:%S %p"

    .line 264
    invoke-direct {p0, p1, p2, p3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    return v0

    .line 250
    :pswitch_a
    iget-object p0, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v0

    .line 246
    :pswitch_b
    iget-object p0, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string p1, "%02d"

    const-string p3, "%2d"

    const-string v2, "%d"

    const-string v4, "%02d"

    invoke-static {v1, p1, p3, v2, v4}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p3, v3, [Ljava/lang/Object;

    .line 247
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result p2

    add-int/2addr p2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v0

    .line 246
    invoke-virtual {p0, p1, p3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v0

    .line 238
    :pswitch_c
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result p1

    rem-int/2addr p1, v6

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result p1

    rem-int/lit8 v6, p1, 0xc

    .line 239
    :cond_4
    iget-object p0, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string p1, "%2d"

    const-string p2, "%2d"

    const-string p3, "%d"

    const-string v2, "%02d"

    invoke-static {v1, p1, p2, p3, v2}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v0

    invoke-virtual {p0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v0

    .line 234
    :pswitch_d
    iget-object p0, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string p1, "%2d"

    const-string p3, "%2d"

    const-string v2, "%d"

    const-string v4, "%02d"

    invoke-static {v1, p1, p3, v2, v4}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p3, v3, [Ljava/lang/Object;

    .line 235
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v0

    .line 234
    invoke-virtual {p0, p1, p3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v0

    .line 229
    :pswitch_e
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getYearDay()I

    move-result p1

    add-int/2addr p1, v3

    .line 230
    iget-object p0, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string p2, "%03d"

    const-string p3, "%3d"

    const-string v2, "%d"

    const-string v4, "%03d"

    invoke-static {v1, p2, p3, v2, v4}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    .line 231
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v0

    .line 230
    invoke-virtual {p0, p2, p3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v0

    .line 214
    :pswitch_f
    iget-object p0, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string p1, "%2d"

    const-string p3, "%2d"

    const-string v2, "%d"

    const-string v4, "%02d"

    invoke-static {v1, p1, p3, v2, v4}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p3, v3, [Ljava/lang/Object;

    .line 215
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getMonthDay()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v0

    .line 214
    invoke-virtual {p0, p1, p3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v0

    .line 199
    :pswitch_10
    iget-object p0, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string p1, "%02d"

    const-string p3, "%2d"

    const-string v2, "%d"

    const-string v4, "%02d"

    invoke-static {v1, p1, p3, v2, v4}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p3, v3, [Ljava/lang/Object;

    .line 200
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getMonthDay()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v0

    .line 199
    invoke-virtual {p0, p1, p3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v0

    .line 193
    :pswitch_11
    iget-object p1, p0, Landroid/text/format/TimeFormatter;->dateTimeFormat:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    return v0

    .line 185
    :pswitch_12
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result p1

    if-ltz p1, :cond_6

    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result p1

    if-lt p1, v6, :cond_5

    goto :goto_4

    .line 186
    :cond_5
    iget-object p1, p0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    iget-object p1, p1, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result p2

    aget-object p1, p1, p2

    goto :goto_5

    :cond_6
    :goto_4
    const-string p1, "?"

    .line 185
    :goto_5
    invoke-direct {p0, p1, v1}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    return v0

    .line 164
    :pswitch_13
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result p1

    if-ltz p1, :cond_8

    .line 165
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result p1

    if-lt p1, v5, :cond_7

    goto :goto_6

    .line 166
    :cond_7
    iget-object p1, p0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    iget-object p1, p1, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result p2

    add-int/2addr p2, v3

    aget-object p1, p1, p2

    goto :goto_7

    :cond_8
    :goto_6
    const-string p1, "?"

    .line 164
    :goto_7
    invoke-direct {p0, p1, v1}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    return v0

    :pswitch_14
    :sswitch_3
    move v1, v2

    goto/16 :goto_0

    .line 353
    :pswitch_15
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getIsDst()I

    move-result p1

    if-gez p1, :cond_9

    return v0

    .line 356
    :cond_9
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getIsDst()I

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_8

    :cond_a
    move v3, v0

    .line 357
    :goto_8
    invoke-virtual {p3, v3, v0}, Llibcore/util/ZoneInfo;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    return v0

    .line 350
    :pswitch_16
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    move-result p1

    invoke-direct {p0, p1, v3, v3, v1}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    return v0

    .line 341
    :pswitch_17
    iget-object p1, p0, Landroid/text/format/TimeFormatter;->timeOnlyFormat:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    return v0

    .line 332
    :pswitch_18
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getYearDay()I

    move-result p1

    add-int/2addr p1, v5

    .line 333
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result p3

    if-eqz p3, :cond_b

    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result p2

    sub-int/2addr p2, v3

    goto :goto_9

    :cond_b
    const/4 p2, 0x6

    :goto_9
    sub-int/2addr p1, p2

    .line 334
    div-int/2addr p1, v5

    .line 335
    iget-object p0, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string p2, "%02d"

    const-string p3, "%2d"

    const-string v2, "%d"

    const-string v4, "%02d"

    invoke-static {v1, p2, p3, v2, v4}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v0

    invoke-virtual {p0, p2, p3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v0

    .line 281
    :pswitch_19
    iget-object p0, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string p1, "%02d"

    const-string p3, "%2d"

    const-string v2, "%d"

    const-string v4, "%02d"

    invoke-static {v1, p1, p3, v2, v4}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p3, v3, [Ljava/lang/Object;

    .line 282
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getYearDay()I

    move-result v1

    add-int/2addr v1, v5

    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result p2

    sub-int/2addr v1, p2

    div-int/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v0

    .line 281
    invoke-virtual {p0, p1, p3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v0

    :pswitch_1a
    const-string p1, "%H:%M:%S"

    .line 275
    invoke-direct {p0, p1, p2, p3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    return v0

    .line 267
    :pswitch_1b
    iget-object p0, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string p1, "%02d"

    const-string p3, "%2d"

    const-string v2, "%d"

    const-string v4, "%02d"

    invoke-static {v1, p1, p3, v2, v4}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p3, v3, [Ljava/lang/Object;

    .line 268
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getSecond()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v0

    .line 267
    invoke-virtual {p0, p1, p3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v0

    :pswitch_1c
    const-string p1, "%H:%M"

    .line 261
    invoke-direct {p0, p1, p2, p3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    return v0

    .line 257
    :pswitch_1d
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result p1

    if-lt p1, v6, :cond_c

    iget-object p1, p0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    iget-object p1, p1, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object p1, p1, v3

    goto :goto_a

    .line 258
    :cond_c
    iget-object p1, p0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    iget-object p1, p1, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object p1, p1, v0

    :goto_a
    const/4 p2, -0x1

    .line 257
    invoke-direct {p0, p1, p2}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    return v0

    .line 225
    :pswitch_1e
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result p1

    rem-int/2addr p1, v6

    if-eqz p1, :cond_d

    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result p1

    rem-int/lit8 v6, p1, 0xc

    .line 226
    :cond_d
    iget-object p0, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string p1, "%02d"

    const-string p2, "%2d"

    const-string p3, "%d"

    const-string v2, "%02d"

    invoke-static {v1, p1, p2, p3, v2}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v0

    invoke-virtual {p0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v0

    .line 221
    :pswitch_1f
    iget-object p0, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string p1, "%02d"

    const-string p3, "%2d"

    const-string v2, "%d"

    const-string v4, "%02d"

    invoke-static {v1, p1, p3, v2, v4}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p3, v3, [Ljava/lang/Object;

    .line 222
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v0

    .line 221
    invoke-virtual {p0, p1, p3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v0

    .line 293
    :pswitch_20
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    move-result p1

    .line 294
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getYearDay()I

    move-result p3

    .line 295
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v4

    .line 298
    :goto_b
    invoke-static {p1}, Landroid/text/format/TimeFormatter;->isLeap(I)Z

    move-result p2

    const/16 v6, 0x16d

    const/16 v7, 0x16e

    if-eqz p2, :cond_e

    move p2, v7

    goto :goto_c

    :cond_e
    move p2, v6

    :goto_c
    add-int/lit8 v8, p3, 0xb

    sub-int/2addr v8, v4

    .line 300
    rem-int/2addr v8, v5

    add-int/lit8 v8, v8, -0x3

    .line 302
    rem-int/lit8 v9, p2, 0x7

    sub-int v9, v8, v9

    const/4 v10, -0x3

    if-ge v9, v10, :cond_f

    add-int/lit8 v9, v9, 0x7

    :cond_f
    add-int/2addr v9, p2

    if-lt p3, v9, :cond_10

    add-int/lit8 p1, p1, 0x1

    move p2, v3

    goto :goto_d

    :cond_10
    if-lt p3, v8, :cond_13

    sub-int/2addr p3, v8

    .line 313
    div-int/2addr p3, v5

    add-int/lit8 p2, p3, 0x1

    :goto_d
    const/16 p3, 0x56

    if-ne v2, p3, :cond_11

    .line 320
    iget-object p0, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string p1, "%02d"

    const-string p3, "%2d"

    const-string v2, "%d"

    const-string v4, "%02d"

    invoke-static {v1, p1, p3, v2, v4}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v0

    invoke-virtual {p0, p1, p3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_e

    :cond_11
    const/16 p2, 0x67

    if-ne v2, p2, :cond_12

    .line 322
    invoke-direct {p0, p1, v0, v3, v1}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    goto :goto_e

    .line 324
    :cond_12
    invoke-direct {p0, p1, v3, v3, v1}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    :goto_e
    return v0

    :cond_13
    add-int/lit8 p1, p1, -0x1

    .line 317
    invoke-static {p1}, Landroid/text/format/TimeFormatter;->isLeap(I)Z

    move-result p2

    if-eqz p2, :cond_14

    move v6, v7

    :cond_14
    add-int/2addr p3, v6

    goto :goto_b

    :pswitch_21
    const-string p1, "%Y-%m-%d"

    .line 218
    invoke-direct {p0, p1, p2, p3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    return v0

    :pswitch_22
    const-string p1, "%m/%d/%y"

    .line 196
    invoke-direct {p0, p1, p2, p3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    return v0

    .line 190
    :pswitch_23
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    move-result p1

    invoke-direct {p0, p1, v3, v0, v1}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    return v0

    :pswitch_24
    if-ne v1, v4, :cond_17

    .line 171
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result p1

    if-ltz p1, :cond_16

    .line 172
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result p1

    if-lt p1, v6, :cond_15

    goto :goto_f

    .line 174
    :cond_15
    iget-object p1, p0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    iget-object p1, p1, Llibcore/icu/LocaleData;->longStandAloneMonthNames:[Ljava/lang/String;

    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result p2

    aget-object p1, p1, p2

    goto :goto_10

    :cond_16
    :goto_f
    const-string p1, "?"

    .line 171
    :goto_10
    invoke-direct {p0, p1, v1}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    goto :goto_13

    .line 177
    :cond_17
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result p1

    if-ltz p1, :cond_19

    .line 178
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result p1

    if-lt p1, v6, :cond_18

    goto :goto_11

    .line 179
    :cond_18
    iget-object p1, p0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    iget-object p1, p1, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result p2

    aget-object p1, p1, p2

    goto :goto_12

    :cond_19
    :goto_11
    const-string p1, "?"

    .line 177
    :goto_12
    invoke-direct {p0, p1, v1}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    :goto_13
    return v0

    .line 158
    :pswitch_25
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result p1

    if-ltz p1, :cond_1b

    .line 159
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result p1

    if-lt p1, v5, :cond_1a

    goto :goto_14

    .line 160
    :cond_1a
    iget-object p1, p0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    iget-object p1, p1, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result p2

    add-int/2addr p2, v3

    aget-object p1, p1, p2

    goto :goto_15

    :cond_1b
    :goto_14
    const-string p1, "?"

    .line 158
    :goto_15
    invoke-direct {p0, p1, v1}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    return v0

    :cond_1c
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4f
        :pswitch_0
        :pswitch_1d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x52
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_20
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x5e
        :pswitch_14
        :pswitch_14
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x61
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x67
        :pswitch_20
        :pswitch_12
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x6a
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x72
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_3
        0x2b -> :sswitch_2
        0x2d -> :sswitch_3
        0x30 -> :sswitch_3
        0x4d -> :sswitch_1
        0x70 -> :sswitch_0
    .end sparse-switch
.end method

.method private static isLeap(I)Z
    .locals 1

    .line 460
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_1

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_0

    rem-int/lit16 p0, p0, 0x190

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private localizeDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 115
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 116
    iget-object p0, p0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    iget-char p0, p0, Llibcore/icu/LocaleData;->zeroDigit:C

    const/16 v1, 0x30

    sub-int/2addr p0, v1

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 119
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v1, :cond_0

    const/16 v5, 0x39

    if-gt v4, v5, :cond_0

    add-int/2addr v4, p0

    int-to-char v4, v4

    .line 123
    :cond_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private modifyAndAppend(Ljava/lang/CharSequence;I)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_4

    const/16 v0, 0x23

    if-eq p2, v0, :cond_1

    const/16 v0, 0x5e

    if-eq p2, v0, :cond_0

    .line 414
    iget-object p0, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 398
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-ge v1, p2, :cond_5

    .line 399
    iget-object p2, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/text/format/TimeFormatter;->brokenToUpper(C)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 403
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-ge v1, p2, :cond_5

    .line 404
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    .line 405
    invoke-static {p2}, Landroid/text/format/TimeFormatter;->brokenIsUpper(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 406
    invoke-static {p2}, Landroid/text/format/TimeFormatter;->brokenToLower(C)C

    move-result p2

    goto :goto_2

    .line 407
    :cond_2
    invoke-static {p2}, Landroid/text/format/TimeFormatter;->brokenIsLower(C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 408
    invoke-static {p2}, Landroid/text/format/TimeFormatter;->brokenToUpper(C)C

    move-result p2

    .line 410
    :cond_3
    :goto_2
    iget-object v0, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 393
    :cond_4
    :goto_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-ge v1, p2, :cond_5

    .line 394
    iget-object p2, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/text/format/TimeFormatter;->brokenToLower(C)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    return-void
.end method

.method private outputYear(IZZI)V
    .locals 7

    .line 423
    rem-int/lit8 v0, p1, 0x64

    .line 424
    div-int/lit8 p1, p1, 0x64

    div-int/lit8 v1, v0, 0x64

    add-int/2addr p1, v1

    .line 425
    rem-int/lit8 v0, v0, 0x64

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    add-int/lit8 v0, v0, 0x64

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x64

    add-int/lit8 p1, p1, 0x1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_3

    if-nez p1, :cond_2

    if-gez v0, :cond_2

    .line 435
    iget-object p1, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    const-string p2, "-0"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 437
    :cond_2
    iget-object p2, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string v3, "%02d"

    const-string v4, "%2d"

    const-string v5, "%d"

    const-string v6, "%02d"

    invoke-static {p4, v3, v4, v5, v6}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-virtual {p2, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    :cond_3
    :goto_1
    if-eqz p3, :cond_5

    if-gez v0, :cond_4

    neg-int v0, v0

    .line 442
    :cond_4
    iget-object p0, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string p1, "%02d"

    const-string p2, "%2d"

    const-string p3, "%d"

    const-string v3, "%02d"

    invoke-static {p4, p1, p2, p3, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v1

    invoke-virtual {p0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    :cond_5
    return-void
.end method


# virtual methods
.method public format(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 93
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    iput-object v1, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    .line 98
    new-instance v2, Ljava/util/Formatter;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v1, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v2, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    .line 100
    invoke-direct {p0, p1, p2, p3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    .line 101
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 104
    iget-object p2, p0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    iget-char p2, p2, Llibcore/icu/LocaleData;->zeroDigit:C

    const/16 p3, 0x30

    if-eq p2, p3, :cond_0

    .line 105
    invoke-direct {p0, p1}, Landroid/text/format/TimeFormatter;->localizeDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_0
    iput-object v0, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    .line 110
    iput-object v0, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    return-object p1

    :catchall_0
    move-exception p1

    .line 109
    iput-object v0, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    .line 110
    iput-object v0, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    throw p1
.end method
