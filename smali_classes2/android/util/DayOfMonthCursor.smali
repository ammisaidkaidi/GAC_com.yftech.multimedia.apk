.class public Landroid/util/DayOfMonthCursor;
.super Landroid/util/MonthDisplayHelper;
.source "DayOfMonthCursor.java"


# instance fields
.field private mColumn:I

.field private mRow:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p4}, Landroid/util/MonthDisplayHelper;-><init>(III)V

    .line 50
    invoke-virtual {p0, p3}, Landroid/util/DayOfMonthCursor;->getRowOf(I)I

    move-result p1

    iput p1, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 51
    invoke-virtual {p0, p3}, Landroid/util/DayOfMonthCursor;->getColumnOf(I)I

    move-result p1

    iput p1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    return-void
.end method


# virtual methods
.method public down()Z
    .locals 3

    .line 121
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v2}, Landroid/util/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 123
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    return v2

    .line 127
    :cond_0
    invoke-virtual {p0}, Landroid/util/DayOfMonthCursor;->nextMonth()V

    .line 128
    iput v2, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 129
    :goto_0
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    iget v2, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v2}, Landroid/util/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getSelectedColumn()I
    .locals 0

    .line 60
    iget p0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    return p0
.end method

.method public getSelectedDayOfMonth()I
    .locals 2

    .line 69
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    iget v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Landroid/util/DayOfMonthCursor;->getDayAt(II)I

    move-result p0

    return p0
.end method

.method public getSelectedMonthOffset()I
    .locals 2

    .line 77
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    iget v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Landroid/util/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 80
    :cond_0
    iget p0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    if-nez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public getSelectedRow()I
    .locals 0

    .line 56
    iget p0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    return p0
.end method

.method public isSelected(II)Z
    .locals 1

    .line 92
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    if-ne v0, p1, :cond_0

    iget p0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public left()Z
    .locals 3

    .line 141
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 142
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    const/4 v0, 0x6

    .line 143
    iput v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    goto :goto_0

    .line 145
    :cond_0
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    .line 148
    :goto_0
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    iget v2, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v2}, Landroid/util/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 153
    :cond_1
    invoke-virtual {p0}, Landroid/util/DayOfMonthCursor;->previousMonth()V

    .line 154
    invoke-virtual {p0}, Landroid/util/DayOfMonthCursor;->getNumberOfDaysInMonth()I

    move-result v0

    .line 155
    invoke-virtual {p0, v0}, Landroid/util/DayOfMonthCursor;->getRowOf(I)I

    move-result v2

    iput v2, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 156
    invoke-virtual {p0, v0}, Landroid/util/DayOfMonthCursor;->getColumnOf(I)I

    move-result v0

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    return v1
.end method

.method public right()Z
    .locals 4

    .line 166
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x6

    if-ne v0, v3, :cond_0

    .line 167
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 168
    iput v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    goto :goto_0

    .line 170
    :cond_0
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    .line 173
    :goto_0
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    iget v3, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v3}, Landroid/util/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 178
    :cond_1
    invoke-virtual {p0}, Landroid/util/DayOfMonthCursor;->nextMonth()V

    .line 179
    iput v1, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 180
    iput v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    .line 181
    :goto_1
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    iget v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Landroid/util/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 182
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    goto :goto_1

    :cond_2
    return v2
.end method

.method public setSelectedDayOfMonth(I)V
    .locals 1

    .line 87
    invoke-virtual {p0, p1}, Landroid/util/DayOfMonthCursor;->getRowOf(I)I

    move-result v0

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 88
    invoke-virtual {p0, p1}, Landroid/util/DayOfMonthCursor;->getColumnOf(I)I

    move-result p1

    iput p1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    return-void
.end method

.method public setSelectedRowColumn(II)V
    .locals 0

    .line 64
    iput p1, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 65
    iput p2, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    return-void
.end method

.method public up()Z
    .locals 3

    .line 101
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget v2, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v2}, Landroid/util/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    const/4 p0, 0x0

    return p0

    .line 107
    :cond_0
    invoke-virtual {p0}, Landroid/util/DayOfMonthCursor;->previousMonth()V

    const/4 v0, 0x5

    .line 108
    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 109
    :goto_0
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    iget v2, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v2}, Landroid/util/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    goto :goto_0

    :cond_1
    return v1
.end method
