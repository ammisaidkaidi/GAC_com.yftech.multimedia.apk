.class public Landroid/util/MonthDisplayHelper;
.super Ljava/lang/Object;
.source "MonthDisplayHelper.java"


# instance fields
.field private mCalendar:Ljava/util/Calendar;

.field private mNumDaysInMonth:I

.field private mNumDaysInPrevMonth:I

.field private mOffset:I

.field private final mWeekStartDay:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x1

    .line 67
    invoke-direct {p0, p1, p2, v0}, Landroid/util/MonthDisplayHelper;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p3, v0, :cond_0

    const/4 v1, 0x7

    if-gt p3, v1, :cond_0

    .line 51
    iput p3, p0, Landroid/util/MonthDisplayHelper;->mWeekStartDay:I

    .line 53
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    iput-object p3, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    .line 54
    iget-object p3, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p3, v0, p1}, Ljava/util/Calendar;->set(II)V

    .line 55
    iget-object p1, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/4 p3, 0x2

    invoke-virtual {p1, p3, p2}, Ljava/util/Calendar;->set(II)V

    .line 56
    iget-object p1, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, v0}, Ljava/util/Calendar;->set(II)V

    .line 57
    iget-object p1, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/16 p2, 0xb

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 58
    iget-object p1, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/16 p2, 0xc

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 59
    iget-object p1, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/16 p2, 0xd

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 60
    iget-object p1, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 62
    invoke-direct {p0}, Landroid/util/MonthDisplayHelper;->recalculate()V

    return-void

    .line 49
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private recalculate()V
    .locals 4

    .line 200
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    iput v0, p0, Landroid/util/MonthDisplayHelper;->mNumDaysInMonth:I

    .line 202
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 203
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    iput v0, p0, Landroid/util/MonthDisplayHelper;->mNumDaysInPrevMonth:I

    .line 204
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 206
    invoke-virtual {p0}, Landroid/util/MonthDisplayHelper;->getFirstDayOfMonth()I

    move-result v0

    .line 207
    iget v1, p0, Landroid/util/MonthDisplayHelper;->mWeekStartDay:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x7

    .line 211
    :cond_0
    iput v0, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    return-void
.end method


# virtual methods
.method public getColumnOf(I)I
    .locals 0

    .line 157
    iget p0, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    add-int/2addr p1, p0

    add-int/lit8 p1, p1, -0x1

    rem-int/lit8 p1, p1, 0x7

    return p1
.end method

.method public getDayAt(II)I
    .locals 1

    if-nez p1, :cond_0

    .line 136
    iget v0, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    if-ge p2, v0, :cond_0

    .line 137
    iget p1, p0, Landroid/util/MonthDisplayHelper;->mNumDaysInPrevMonth:I

    add-int/2addr p1, p2

    iget p0, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_0
    mul-int/lit8 p1, p1, 0x7

    add-int/2addr p1, p2

    .line 140
    iget p2, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x1

    .line 142
    iget p2, p0, Landroid/util/MonthDisplayHelper;->mNumDaysInMonth:I

    if-le p1, p2, :cond_1

    .line 143
    iget p0, p0, Landroid/util/MonthDisplayHelper;->mNumDaysInMonth:I

    sub-int/2addr p1, p0

    :cond_1
    return p1
.end method

.method public getDigitsForRow(I)[I
    .locals 4

    if-ltz p1, :cond_1

    const/4 v0, 0x5

    if-gt p1, v0, :cond_1

    const/4 v0, 0x7

    .line 121
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 123
    invoke-virtual {p0, p1, v2}, Landroid/util/MonthDisplayHelper;->getDayAt(II)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    .line 117
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "row "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " out of range (0-5)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getFirstDayOfMonth()I
    .locals 1

    .line 89
    iget-object p0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public getMonth()I
    .locals 1

    .line 76
    iget-object p0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public getNumberOfDaysInMonth()I
    .locals 0

    .line 96
    iget p0, p0, Landroid/util/MonthDisplayHelper;->mNumDaysInMonth:I

    return p0
.end method

.method public getOffset()I
    .locals 0

    .line 106
    iget p0, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    return p0
.end method

.method public getRowOf(I)I
    .locals 0

    .line 150
    iget p0, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    add-int/2addr p1, p0

    add-int/lit8 p1, p1, -0x1

    div-int/lit8 p1, p1, 0x7

    return p1
.end method

.method public getWeekStartDay()I
    .locals 0

    .line 81
    iget p0, p0, Landroid/util/MonthDisplayHelper;->mWeekStartDay:I

    return p0
.end method

.method public getYear()I
    .locals 1

    .line 72
    iget-object p0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public isWithinCurrentMonth(II)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_3

    if-ltz p2, :cond_3

    const/4 v1, 0x5

    if-gt p1, v1, :cond_3

    const/4 v1, 0x6

    if-le p2, v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 185
    iget v1, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    if-ge p2, v1, :cond_1

    return v0

    :cond_1
    mul-int/lit8 p1, p1, 0x7

    add-int/2addr p1, p2

    .line 189
    iget p2, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    sub-int/2addr p1, p2

    const/4 p2, 0x1

    add-int/2addr p1, p2

    .line 190
    iget p0, p0, Landroid/util/MonthDisplayHelper;->mNumDaysInMonth:I

    if-le p1, p0, :cond_2

    return v0

    :cond_2
    return p2

    :cond_3
    :goto_0
    return v0
.end method

.method public nextMonth()V
    .locals 3

    .line 172
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 173
    invoke-direct {p0}, Landroid/util/MonthDisplayHelper;->recalculate()V

    return-void
.end method

.method public previousMonth()V
    .locals 3

    .line 164
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 165
    invoke-direct {p0}, Landroid/util/MonthDisplayHelper;->recalculate()V

    return-void
.end method
