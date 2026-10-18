.class public Landroid/text/format/Time;
.super Ljava/lang/Object;
.source "Time.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/format/Time$TimeCalculator;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DAYS_PER_MONTH:[I

.field public static final EPOCH_JULIAN_DAY:I = 0x253d8c

.field public static final FRIDAY:I = 0x5

.field public static final HOUR:I = 0x3

.field public static final MINUTE:I = 0x2

.field public static final MONDAY:I = 0x1

.field public static final MONDAY_BEFORE_JULIAN_EPOCH:I = 0x253d89

.field public static final MONTH:I = 0x5

.field public static final MONTH_DAY:I = 0x4

.field public static final SATURDAY:I = 0x6

.field public static final SECOND:I = 0x1

.field public static final SUNDAY:I = 0x0

.field public static final THURSDAY:I = 0x4

.field public static final TIMEZONE_UTC:Ljava/lang/String; = "UTC"

.field public static final TUESDAY:I = 0x2

.field public static final WEDNESDAY:I = 0x3

.field public static final WEEK_DAY:I = 0x7

.field public static final WEEK_NUM:I = 0x9

.field public static final YEAR:I = 0x6

.field public static final YEAR_DAY:I = 0x8

.field private static final Y_M_D:Ljava/lang/String; = "%Y-%m-%d"

.field private static final Y_M_D_T_H_M_S_000:Ljava/lang/String; = "%Y-%m-%dT%H:%M:%S.000"

.field private static final Y_M_D_T_H_M_S_000_Z:Ljava/lang/String; = "%Y-%m-%dT%H:%M:%S.000Z"

.field private static final sThursdayOffset:[I


# instance fields
.field public allDay:Z

.field private calculator:Landroid/text/format/Time$TimeCalculator;

.field public gmtoff:J

.field public hour:I

.field public isDst:I

.field public minute:I

.field public month:I

.field public monthDay:I

.field public second:I

.field public timezone:Ljava/lang/String;

.field public weekDay:I

.field public year:I

.field public yearDay:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    .line 250
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/text/format/Time;->DAYS_PER_MONTH:[I

    const/4 v0, 0x7

    .line 875
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/text/format/Time;->sThursdayOffset:[I

    return-void

    :array_0
    .array-data 4
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data

    :array_1
    .array-data 4
        -0x3
        0x3
        0x2
        0x1
        0x0
        -0x1
        -0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/format/Time;->initialize(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/text/format/Time;)V
    .locals 1

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iget-object v0, p1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/text/format/Time;->initialize(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 176
    invoke-direct {p0, p1}, Landroid/text/format/Time;->initialize(Ljava/lang/String;)V

    return-void

    .line 174
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "timezoneId is null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private checkChar(Ljava/lang/String;IC)V
    .locals 2

    .line 494
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, p3, :cond_0

    return-void

    .line 496
    :cond_0
    new-instance p1, Landroid/util/TimeFormatException;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 498
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p0

    const/4 p0, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    aput-object p2, v0, p0

    const-string p0, "Unexpected character 0x%02d at pos=%d.  Expected 0x%02d (\'%c\')."

    .line 496
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static compare(Landroid/text/format/Time;Landroid/text/format/Time;)I
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 342
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 343
    iget-object v0, p1, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p1}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 345
    iget-object p0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    iget-object p1, p1, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-static {p0, p1}, Landroid/text/format/Time$TimeCalculator;->compare(Landroid/text/format/Time$TimeCalculator;Landroid/text/format/Time$TimeCalculator;)I

    move-result p0

    return p0

    .line 340
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "b == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 338
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "a == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getChar(Ljava/lang/String;II)I
    .locals 1

    .line 503
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    .line 504
    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    invoke-static {p0}, Ljava/lang/Character;->getNumericValue(C)I

    move-result p0

    mul-int/2addr p0, p2

    return p0

    .line 507
    :cond_0
    new-instance p0, Landroid/util/TimeFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Parse error at pos="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getCurrentTimezone()Ljava/lang/String;
    .locals 1

    .line 685
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJulianDay(JJ)I
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p2, v0

    add-long/2addr p0, p2

    const-wide/32 p2, 0x5265c00

    .line 975
    div-long/2addr p0, p2

    long-to-int p0, p0

    const p1, 0x253d8c    # 3.419992E-39f

    add-int/2addr p0, p1

    return p0
.end method

.method public static getJulianMondayFromWeeksSinceEpoch(I)I
    .locals 1

    mul-int/lit8 p0, p0, 0x7

    const v0, 0x253d89

    add-int/2addr p0, v0

    return p0
.end method

.method public static getWeeksSinceEpochFromJulianDay(II)I
    .locals 1

    rsub-int/lit8 p1, p1, 0x4

    if-gez p1, :cond_0

    add-int/lit8 p1, p1, 0x7

    :cond_0
    const v0, 0x253d8c    # 3.419992E-39f

    sub-int/2addr v0, p1

    sub-int/2addr p0, v0

    .line 1038
    div-int/lit8 p0, p0, 0x7

    return p0
.end method

.method private initialize(Ljava/lang/String;)V
    .locals 1

    .line 200
    iput-object p1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    const/16 v0, 0x7b2

    .line 201
    iput v0, p0, Landroid/text/format/Time;->year:I

    const/4 v0, 0x1

    .line 202
    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    const/4 v0, -0x1

    .line 205
    iput v0, p0, Landroid/text/format/Time;->isDst:I

    .line 208
    new-instance v0, Landroid/text/format/Time$TimeCalculator;

    invoke-direct {v0, p1}, Landroid/text/format/Time$TimeCalculator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    return-void
.end method

.method public static isEpoch(Landroid/text/format/Time;)Z
    .locals 5

    const/4 v0, 0x1

    .line 951
    invoke-virtual {p0, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    .line 952
    invoke-static {v1, v2, v3, v4}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result p0

    const v1, 0x253d8c    # 3.419992E-39f

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private parse3339Internal(Ljava/lang/String;)Z
    .locals 13

    .line 554
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_a

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    .line 561
    invoke-static {p1, v3, v2}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v2

    const/16 v4, 0x64

    const/4 v5, 0x1

    .line 562
    invoke-static {p1, v5, v4}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v4

    add-int/2addr v2, v4

    const/4 v4, 0x2

    .line 563
    invoke-static {p1, v4, v1}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v6

    add-int/2addr v2, v6

    const/4 v6, 0x3

    .line 564
    invoke-static {p1, v6, v5}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v6

    add-int/2addr v2, v6

    .line 565
    iput v2, p0, Landroid/text/format/Time;->year:I

    const/4 v2, 0x4

    const/16 v6, 0x2d

    .line 567
    invoke-direct {p0, p1, v2, v6}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    const/4 v2, 0x5

    .line 570
    invoke-static {p1, v2, v1}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v7

    const/4 v8, 0x6

    .line 571
    invoke-static {p1, v8, v5}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v8

    add-int/2addr v7, v8

    const/4 v8, -0x1

    add-int/2addr v7, v8

    .line 573
    iput v7, p0, Landroid/text/format/Time;->month:I

    const/4 v7, 0x7

    .line 575
    invoke-direct {p0, p1, v7, v6}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    const/16 v7, 0x8

    .line 578
    invoke-static {p1, v7, v1}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v7

    const/16 v9, 0x9

    .line 579
    invoke-static {p1, v9, v5}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v9

    add-int/2addr v7, v9

    .line 580
    iput v7, p0, Landroid/text/format/Time;->monthDay:I

    const/16 v7, 0x13

    if-lt v0, v7, :cond_8

    const/16 v9, 0x54

    .line 584
    invoke-direct {p0, p1, v1, v9}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    .line 585
    iput-boolean v3, p0, Landroid/text/format/Time;->allDay:Z

    const/16 v9, 0xb

    .line 588
    invoke-static {p1, v9, v1}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v9

    const/16 v10, 0xc

    .line 589
    invoke-static {p1, v10, v5}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v10

    add-int/2addr v9, v10

    const/16 v10, 0xd

    const/16 v11, 0x3a

    .line 594
    invoke-direct {p0, p1, v10, v11}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    const/16 v10, 0xe

    .line 597
    invoke-static {p1, v10, v1}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v10

    const/16 v12, 0xf

    .line 598
    invoke-static {p1, v12, v5}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v12

    add-int/2addr v10, v12

    const/16 v12, 0x10

    .line 602
    invoke-direct {p0, p1, v12, v11}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    const/16 v11, 0x11

    .line 605
    invoke-static {p1, v11, v1}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v11

    const/16 v12, 0x12

    .line 606
    invoke-static {p1, v12, v5}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v12

    add-int/2addr v11, v12

    .line 607
    iput v11, p0, Landroid/text/format/Time;->second:I

    if-ge v7, v0, :cond_1

    .line 612
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x2e

    if-ne v11, v12, :cond_1

    :cond_0
    add-int/2addr v7, v5

    if-ge v7, v0, :cond_1

    .line 615
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->isDigit(C)Z

    move-result v11

    if-nez v11, :cond_0

    :cond_1
    if-le v0, v7, :cond_6

    .line 620
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x2b

    if-eq v11, v12, :cond_4

    if-eq v11, v6, :cond_3

    const/16 v6, 0x5a

    if-ne v11, v6, :cond_2

    move v4, v3

    goto :goto_0

    .line 635
    :cond_2
    new-instance p0, Landroid/util/TimeFormatException;

    new-array p1, v4, [Ljava/lang/Object;

    .line 637
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v5

    const-string v0, "Unexpected character 0x%02d at position %d.  Expected + or -"

    .line 635
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    move v4, v5

    goto :goto_0

    :cond_4
    move v4, v8

    :goto_0
    if-eqz v4, :cond_7

    add-int/lit8 v6, v7, 0x6

    if-lt v0, v6, :cond_5

    add-int/lit8 v0, v7, 0x1

    .line 649
    invoke-static {p1, v0, v1}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v0

    add-int/lit8 v6, v7, 0x2

    .line 650
    invoke-static {p1, v6, v5}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v6

    add-int/2addr v0, v6

    mul-int/2addr v0, v4

    add-int/2addr v9, v0

    add-int/lit8 v0, v7, 0x4

    .line 655
    invoke-static {p1, v0, v1}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v0

    add-int/2addr v7, v2

    .line 656
    invoke-static {p1, v7, v5}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result p1

    add-int/2addr v0, p1

    mul-int/2addr v0, v4

    add-int/2addr v10, v0

    goto :goto_1

    .line 643
    :cond_5
    new-instance p0, Landroid/util/TimeFormatException;

    new-array p1, v5, [Ljava/lang/Object;

    .line 645
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v3

    const-string v0, "Unexpected length; should be %d characters"

    .line 644
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    move v4, v3

    move v5, v4

    .line 661
    :cond_7
    :goto_1
    iput v9, p0, Landroid/text/format/Time;->hour:I

    .line 662
    iput v10, p0, Landroid/text/format/Time;->minute:I

    if-eqz v4, :cond_9

    .line 665
    invoke-virtual {p0, v3}, Landroid/text/format/Time;->normalize(Z)J

    goto :goto_2

    .line 668
    :cond_8
    iput-boolean v5, p0, Landroid/text/format/Time;->allDay:Z

    .line 669
    iput v3, p0, Landroid/text/format/Time;->hour:I

    .line 670
    iput v3, p0, Landroid/text/format/Time;->minute:I

    .line 671
    iput v3, p0, Landroid/text/format/Time;->second:I

    move v5, v3

    .line 674
    :cond_9
    :goto_2
    iput v3, p0, Landroid/text/format/Time;->weekDay:I

    .line 675
    iput v3, p0, Landroid/text/format/Time;->yearDay:I

    .line 676
    iput v8, p0, Landroid/text/format/Time;->isDst:I

    const-wide/16 v0, 0x0

    .line 677
    iput-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    return v5

    .line 556
    :cond_a
    new-instance p0, Landroid/util/TimeFormatException;

    const-string p1, "String too short --- expected at least 10 characters."

    invoke-direct {p0, p1}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private parseInternal(Ljava/lang/String;)Z
    .locals 8

    .line 423
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_3

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    .line 432
    invoke-static {p1, v3, v2}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v2

    const/16 v4, 0x64

    const/4 v5, 0x1

    .line 433
    invoke-static {p1, v5, v4}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v4

    add-int/2addr v2, v4

    const/4 v4, 0x2

    const/16 v6, 0xa

    .line 434
    invoke-static {p1, v4, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v4

    add-int/2addr v2, v4

    const/4 v4, 0x3

    .line 435
    invoke-static {p1, v4, v5}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v4

    add-int/2addr v2, v4

    .line 436
    iput v2, p0, Landroid/text/format/Time;->year:I

    const/4 v2, 0x4

    .line 439
    invoke-static {p1, v2, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v2

    const/4 v4, 0x5

    .line 440
    invoke-static {p1, v4, v5}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v4

    add-int/2addr v2, v4

    const/4 v4, -0x1

    add-int/2addr v2, v4

    .line 442
    iput v2, p0, Landroid/text/format/Time;->month:I

    const/4 v2, 0x6

    .line 445
    invoke-static {p1, v2, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v2

    const/4 v7, 0x7

    .line 446
    invoke-static {p1, v7, v5}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v7

    add-int/2addr v2, v7

    .line 447
    iput v2, p0, Landroid/text/format/Time;->monthDay:I

    if-le v0, v1, :cond_1

    const/16 v2, 0xf

    if-lt v0, v2, :cond_0

    const/16 v7, 0x54

    .line 456
    invoke-direct {p0, p1, v1, v7}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    .line 457
    iput-boolean v3, p0, Landroid/text/format/Time;->allDay:Z

    const/16 v1, 0x9

    .line 460
    invoke-static {p1, v1, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v1

    .line 461
    invoke-static {p1, v6, v5}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v7

    add-int/2addr v1, v7

    .line 462
    iput v1, p0, Landroid/text/format/Time;->hour:I

    const/16 v1, 0xb

    .line 465
    invoke-static {p1, v1, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v1

    const/16 v7, 0xc

    .line 466
    invoke-static {p1, v7, v5}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v7

    add-int/2addr v1, v7

    .line 467
    iput v1, p0, Landroid/text/format/Time;->minute:I

    const/16 v1, 0xd

    .line 470
    invoke-static {p1, v1, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v1

    const/16 v6, 0xe

    .line 471
    invoke-static {p1, v6, v5}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v6

    add-int/2addr v1, v6

    .line 472
    iput v1, p0, Landroid/text/format/Time;->second:I

    if-le v0, v2, :cond_2

    const/16 v0, 0x5a

    .line 476
    invoke-direct {p0, p1, v2, v0}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    goto :goto_0

    .line 451
    :cond_0
    new-instance p0, Landroid/util/TimeFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "String is too short: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" If there are more than 8 characters there must be at least 15."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 480
    :cond_1
    iput-boolean v5, p0, Landroid/text/format/Time;->allDay:Z

    .line 481
    iput v3, p0, Landroid/text/format/Time;->hour:I

    .line 482
    iput v3, p0, Landroid/text/format/Time;->minute:I

    .line 483
    iput v3, p0, Landroid/text/format/Time;->second:I

    :cond_2
    move v5, v3

    .line 486
    :goto_0
    iput v3, p0, Landroid/text/format/Time;->weekDay:I

    .line 487
    iput v3, p0, Landroid/text/format/Time;->yearDay:I

    .line 488
    iput v4, p0, Landroid/text/format/Time;->isDst:I

    const-wide/16 v0, 0x0

    .line 489
    iput-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    return v5

    .line 425
    :cond_3
    new-instance p0, Landroid/util/TimeFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "String is too short: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" Expected at least 8 characters."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public after(Landroid/text/format/Time;)Z
    .locals 0

    .line 867
    invoke-static {p0, p1}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public before(Landroid/text/format/Time;)Z
    .locals 0

    .line 851
    invoke-static {p0, p1}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public clear(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 304
    iput-object p1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    const/4 p1, 0x0

    .line 305
    iput-boolean p1, p0, Landroid/text/format/Time;->allDay:Z

    .line 306
    iput p1, p0, Landroid/text/format/Time;->second:I

    .line 307
    iput p1, p0, Landroid/text/format/Time;->minute:I

    .line 308
    iput p1, p0, Landroid/text/format/Time;->hour:I

    .line 309
    iput p1, p0, Landroid/text/format/Time;->monthDay:I

    .line 310
    iput p1, p0, Landroid/text/format/Time;->month:I

    .line 311
    iput p1, p0, Landroid/text/format/Time;->year:I

    .line 312
    iput p1, p0, Landroid/text/format/Time;->weekDay:I

    .line 313
    iput p1, p0, Landroid/text/format/Time;->yearDay:I

    const-wide/16 v0, 0x0

    .line 314
    iput-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    const/4 p1, -0x1

    .line 315
    iput p1, p0, Landroid/text/format/Time;->isDst:I

    return-void

    .line 302
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "timezone is null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public format(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 356
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 357
    iget-object p0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {p0, p1}, Landroid/text/format/Time$TimeCalculator;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public format2445()Ljava/lang/String;
    .locals 1

    .line 776
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 777
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    iget-boolean p0, p0, Landroid/text/format/Time;->allDay:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->format2445(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public format3339(Z)Ljava/lang/String;
    .locals 6

    if-eqz p1, :cond_0

    const-string p1, "%Y-%m-%d"

    .line 925
    invoke-virtual {p0, p1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p1, "UTC"

    .line 926
    iget-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "%Y-%m-%dT%H:%M:%S.000Z"

    .line 927
    invoke-virtual {p0, p1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p1, "%Y-%m-%dT%H:%M:%S.000"

    .line 929
    invoke-virtual {p0, p1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 930
    iget-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    const-string v0, "-"

    goto :goto_0

    :cond_2
    const-string v0, "+"

    .line 931
    :goto_0
    iget-wide v1, p0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    long-to-int p0, v1

    .line 932
    rem-int/lit16 v1, p0, 0xe10

    div-int/lit8 v1, v1, 0x3c

    .line 933
    div-int/lit16 p0, p0, 0xe10

    .line 935
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s%s%02d:%02d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 p1, 0x1

    aput-object v0, v4, p1

    const/4 p1, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, p1

    const/4 p0, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, p0

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getActualMaximum(I)I
    .locals 2

    const/16 v0, 0x3b

    packed-switch p1, :pswitch_data_0

    .line 291
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad field="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 289
    :pswitch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "WEEK_NUM not implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 284
    :pswitch_1
    iget p0, p0, Landroid/text/format/Time;->year:I

    .line 286
    rem-int/lit8 p1, p0, 0x4

    if-nez p1, :cond_1

    rem-int/lit8 p1, p0, 0x64

    if-nez p1, :cond_0

    rem-int/lit16 p0, p0, 0x190

    if-nez p0, :cond_1

    :cond_0
    const/16 p0, 0x16d

    goto :goto_0

    :cond_1
    const/16 p0, 0x16c

    :goto_0
    return p0

    :pswitch_2
    const/4 p0, 0x6

    return p0

    :pswitch_3
    const/16 p0, 0x7f5

    return p0

    :pswitch_4
    const/16 p0, 0xb

    return p0

    .line 269
    :pswitch_5
    sget-object p1, Landroid/text/format/Time;->DAYS_PER_MONTH:[I

    iget v0, p0, Landroid/text/format/Time;->month:I

    aget p1, p1, v0

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_2

    return p1

    .line 273
    :cond_2
    iget p0, p0, Landroid/text/format/Time;->year:I

    .line 274
    rem-int/lit8 p1, p0, 0x4

    if-nez p1, :cond_4

    rem-int/lit8 p1, p0, 0x64

    if-nez p1, :cond_3

    rem-int/lit16 p0, p0, 0x190

    if-nez p0, :cond_4

    :cond_3
    const/16 v0, 0x1d

    :cond_4
    return v0

    :pswitch_6
    const/16 p0, 0x17

    return p0

    :pswitch_7
    return v0

    :pswitch_8
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
.end method

.method public getWeekNumber()I
    .locals 4

    .line 899
    iget v0, p0, Landroid/text/format/Time;->yearDay:I

    sget-object v1, Landroid/text/format/Time;->sThursdayOffset:[I

    iget v2, p0, Landroid/text/format/Time;->weekDay:I

    aget v1, v1, v2

    add-int/2addr v0, v1

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    const/16 v2, 0x16c

    if-gt v0, v2, :cond_0

    .line 903
    div-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v1

    return v0

    .line 907
    :cond_0
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0, p0}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 908
    iget v2, v0, Landroid/text/format/Time;->monthDay:I

    sget-object v3, Landroid/text/format/Time;->sThursdayOffset:[I

    iget p0, p0, Landroid/text/format/Time;->weekDay:I

    aget p0, v3, p0

    add-int/2addr v2, p0

    iput v2, v0, Landroid/text/format/Time;->monthDay:I

    .line 909
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 910
    iget p0, v0, Landroid/text/format/Time;->yearDay:I

    div-int/lit8 p0, p0, 0x7

    add-int/2addr p0, v1

    return p0
.end method

.method public normalize(Z)J
    .locals 2

    .line 230
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 231
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p1}, Landroid/text/format/Time$TimeCalculator;->toMillis(Z)J

    move-result-wide v0

    .line 232
    iget-object p1, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {p1, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsToTime(Landroid/text/format/Time;)V

    return-wide v0
.end method

.method public parse(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 412
    invoke-direct {p0, p1}, Landroid/text/format/Time;->parseInternal(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "UTC"

    .line 413
    iput-object p1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 410
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "time string is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public parse3339(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 546
    invoke-direct {p0, p1}, Landroid/text/format/Time;->parse3339Internal(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "UTC"

    .line 547
    iput-object p1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 544
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "time string is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public set(III)V
    .locals 1

    const/4 v0, 0x1

    .line 826
    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    const/4 v0, 0x0

    .line 827
    iput v0, p0, Landroid/text/format/Time;->second:I

    .line 828
    iput v0, p0, Landroid/text/format/Time;->minute:I

    .line 829
    iput v0, p0, Landroid/text/format/Time;->hour:I

    .line 830
    iput p1, p0, Landroid/text/format/Time;->monthDay:I

    .line 831
    iput p2, p0, Landroid/text/format/Time;->month:I

    .line 832
    iput p3, p0, Landroid/text/format/Time;->year:I

    .line 833
    iput v0, p0, Landroid/text/format/Time;->weekDay:I

    .line 834
    iput v0, p0, Landroid/text/format/Time;->yearDay:I

    const/4 p1, -0x1

    .line 835
    iput p1, p0, Landroid/text/format/Time;->isDst:I

    const-wide/16 p1, 0x0

    .line 836
    iput-wide p1, p0, Landroid/text/format/Time;->gmtoff:J

    return-void
.end method

.method public set(IIIIII)V
    .locals 1

    const/4 v0, 0x0

    .line 803
    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    .line 804
    iput p1, p0, Landroid/text/format/Time;->second:I

    .line 805
    iput p2, p0, Landroid/text/format/Time;->minute:I

    .line 806
    iput p3, p0, Landroid/text/format/Time;->hour:I

    .line 807
    iput p4, p0, Landroid/text/format/Time;->monthDay:I

    .line 808
    iput p5, p0, Landroid/text/format/Time;->month:I

    .line 809
    iput p6, p0, Landroid/text/format/Time;->year:I

    .line 810
    iput v0, p0, Landroid/text/format/Time;->weekDay:I

    .line 811
    iput v0, p0, Landroid/text/format/Time;->yearDay:I

    const/4 p1, -0x1

    .line 812
    iput p1, p0, Landroid/text/format/Time;->isDst:I

    const-wide/16 p1, 0x0

    .line 813
    iput-wide p1, p0, Landroid/text/format/Time;->gmtoff:J

    return-void
.end method

.method public set(J)V
    .locals 2

    const/4 v0, 0x0

    .line 763
    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    .line 764
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    iget-object v1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iput-object v1, v0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    .line 765
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time$TimeCalculator;->setTimeInMillis(J)V

    .line 766
    iget-object p1, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {p1, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsToTime(Landroid/text/format/Time;)V

    return-void
.end method

.method public set(Landroid/text/format/Time;)V
    .locals 2

    .line 784
    iget-object v0, p1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 785
    iget-boolean v0, p1, Landroid/text/format/Time;->allDay:Z

    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    .line 786
    iget v0, p1, Landroid/text/format/Time;->second:I

    iput v0, p0, Landroid/text/format/Time;->second:I

    .line 787
    iget v0, p1, Landroid/text/format/Time;->minute:I

    iput v0, p0, Landroid/text/format/Time;->minute:I

    .line 788
    iget v0, p1, Landroid/text/format/Time;->hour:I

    iput v0, p0, Landroid/text/format/Time;->hour:I

    .line 789
    iget v0, p1, Landroid/text/format/Time;->monthDay:I

    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    .line 790
    iget v0, p1, Landroid/text/format/Time;->month:I

    iput v0, p0, Landroid/text/format/Time;->month:I

    .line 791
    iget v0, p1, Landroid/text/format/Time;->year:I

    iput v0, p0, Landroid/text/format/Time;->year:I

    .line 792
    iget v0, p1, Landroid/text/format/Time;->weekDay:I

    iput v0, p0, Landroid/text/format/Time;->weekDay:I

    .line 793
    iget v0, p1, Landroid/text/format/Time;->yearDay:I

    iput v0, p0, Landroid/text/format/Time;->yearDay:I

    .line 794
    iget v0, p1, Landroid/text/format/Time;->isDst:I

    iput v0, p0, Landroid/text/format/Time;->isDst:I

    .line 795
    iget-wide v0, p1, Landroid/text/format/Time;->gmtoff:J

    iput-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    return-void
.end method

.method public setJulianDay(I)J
    .locals 4

    const v0, 0x253d8c    # 3.419992E-39f

    sub-int v0, p1, v0

    int-to-long v0, v0

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    .line 1004
    invoke-virtual {p0, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1008
    iget-wide v2, p0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    sub-int/2addr p1, v0

    .line 1010
    iget v0, p0, Landroid/text/format/Time;->monthDay:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    const/4 p1, 0x0

    .line 1013
    iput p1, p0, Landroid/text/format/Time;->hour:I

    .line 1014
    iput p1, p0, Landroid/text/format/Time;->minute:I

    .line 1015
    iput p1, p0, Landroid/text/format/Time;->second:I

    const/4 p1, 0x1

    .line 1016
    invoke-virtual {p0, p1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide p0

    return-wide p0
.end method

.method public setToNow()V
    .locals 2

    .line 692
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/text/format/Time;->set(J)V

    return-void
.end method

.method public switchTimezone(Ljava/lang/String;)V
    .locals 1

    .line 244
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 245
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p1}, Landroid/text/format/Time$TimeCalculator;->switchTimeZone(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsToTime(Landroid/text/format/Time;)V

    .line 247
    iput-object p1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    return-void
.end method

.method public toMillis(Z)J
    .locals 1

    .line 751
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 752
    iget-object p0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {p0, p1}, Landroid/text/format/Time$TimeCalculator;->toMillis(Z)J

    move-result-wide p0

    return-wide p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 367
    new-instance v0, Landroid/text/format/Time$TimeCalculator;

    iget-object v1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time$TimeCalculator;-><init>(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 369
    invoke-virtual {v0}, Landroid/text/format/Time$TimeCalculator;->toStringInternal()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
