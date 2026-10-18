.class Landroid/widget/YearPickerView$YearAdapter;
.super Landroid/widget/BaseAdapter;
.source "YearPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YearPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "YearAdapter"
.end annotation


# static fields
.field private static final ITEM_LAYOUT:I = 0x1090123

.field private static final ITEM_TEXT_ACTIVATED_APPEARANCE:I = 0x1030395

.field private static final ITEM_TEXT_APPEARANCE:I = 0x1030394


# instance fields
.field private mActivatedYear:I

.field private mCount:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mMinYear:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 121
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/YearPickerView$YearAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getCount()I
    .locals 0

    .line 146
    iget p0, p0, Landroid/widget/YearPickerView$YearAdapter;->mCount:I

    return p0
.end method

.method public getItem(I)Ljava/lang/Integer;
    .locals 0

    .line 151
    invoke-virtual {p0, p1}, Landroid/widget/YearPickerView$YearAdapter;->getYearForPosition(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 107
    invoke-virtual {p0, p1}, Landroid/widget/YearPickerView$YearAdapter;->getItem(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    .line 156
    invoke-virtual {p0, p1}, Landroid/widget/YearPickerView$YearAdapter;->getYearForPosition(I)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPositionForYear(I)I
    .locals 0

    .line 160
    iget p0, p0, Landroid/widget/YearPickerView$YearAdapter;->mMinYear:I

    sub-int/2addr p1, p0

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    .line 177
    iget-object p2, p0, Landroid/widget/YearPickerView$YearAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x1090123

    invoke-virtual {p2, v3, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    goto :goto_1

    .line 179
    :cond_1
    check-cast p2, Landroid/widget/TextView;

    .line 182
    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/YearPickerView$YearAdapter;->getYearForPosition(I)I

    move-result p1

    .line 183
    iget p0, p0, Landroid/widget/YearPickerView$YearAdapter;->mActivatedYear:I

    if-ne p0, p1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    if-nez v2, :cond_3

    .line 185
    invoke-virtual {p2}, Landroid/widget/TextView;->isActivated()Z

    move-result p0

    if-eq p0, v0, :cond_5

    :cond_3
    if-eqz v0, :cond_4

    const p0, 0x1030395

    goto :goto_3

    :cond_4
    const p0, 0x1030394

    .line 192
    :goto_3
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 193
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setActivated(Z)V

    .line 196
    :cond_5
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getYearForPosition(I)I
    .locals 0

    .line 164
    iget p0, p0, Landroid/widget/YearPickerView$YearAdapter;->mMinYear:I

    add-int/2addr p0, p1

    return p0
.end method

.method public hasStableIds()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setRange(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)V
    .locals 1

    const/4 v0, 0x1

    .line 125
    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result p1

    .line 126
    invoke-virtual {p2, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result p2

    sub-int/2addr p2, p1

    add-int/2addr p2, v0

    .line 128
    iget v0, p0, Landroid/widget/YearPickerView$YearAdapter;->mMinYear:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Landroid/widget/YearPickerView$YearAdapter;->mCount:I

    if-eq v0, p2, :cond_1

    .line 129
    :cond_0
    iput p1, p0, Landroid/widget/YearPickerView$YearAdapter;->mMinYear:I

    .line 130
    iput p2, p0, Landroid/widget/YearPickerView$YearAdapter;->mCount:I

    .line 131
    invoke-virtual {p0}, Landroid/widget/YearPickerView$YearAdapter;->notifyDataSetInvalidated()V

    :cond_1
    return-void
.end method

.method public setSelection(I)Z
    .locals 1

    .line 136
    iget v0, p0, Landroid/widget/YearPickerView$YearAdapter;->mActivatedYear:I

    if-eq v0, p1, :cond_0

    .line 137
    iput p1, p0, Landroid/widget/YearPickerView$YearAdapter;->mActivatedYear:I

    .line 138
    invoke-virtual {p0}, Landroid/widget/YearPickerView$YearAdapter;->notifyDataSetChanged()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
