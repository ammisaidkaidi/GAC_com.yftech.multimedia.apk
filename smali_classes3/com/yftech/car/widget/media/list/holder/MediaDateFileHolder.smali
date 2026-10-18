.class public Lcom/yftech/car/widget/media/list/holder/MediaDateFileHolder;
.super Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;
.source "MediaDateFileHolder.java"


# static fields
.field public static final DATA:I = -0xa

.field public static final DATE:I = -0xb

.field private static final TAG:Ljava/lang/String; = "MediaFileHolder"


# instance fields
.field private mDate:Ljava/util/Date;

.field private mPattern:Ljava/lang/String;

.field private mSimpleDateFormat:Ljava/text/SimpleDateFormat;

.field private mTextView:Lcom/yftech/car/widget/media/text/DateTextView;

.field private mThisYearSimpleDateFormat:Ljava/text/SimpleDateFormat;

.field private mYearSimpleDateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 3

    .line 51
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_6

    .line 53
    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_3

    .line 54
    check-cast p1, Landroid/view/ViewGroup;

    .line 55
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    .line 56
    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 58
    invoke-virtual {p2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 59
    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 61
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 62
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 63
    :cond_1
    instance-of v2, v1, Lcom/yftech/car/widget/media/text/DateTextView;

    if-eqz v2, :cond_2

    .line 64
    check-cast v1, Lcom/yftech/car/widget/media/text/DateTextView;

    iput-object v1, p0, Lcom/yftech/car/widget/media/list/holder/MediaDateFileHolder;->mTextView:Lcom/yftech/car/widget/media/text/DateTextView;

    goto :goto_0

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 70
    :cond_3
    instance-of p2, p1, Landroid/widget/TextView;

    if-eqz p2, :cond_4

    .line 71
    check-cast p1, Lcom/yftech/car/widget/media/text/DateTextView;

    iput-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaDateFileHolder;->mTextView:Lcom/yftech/car/widget/media/text/DateTextView;

    .line 74
    :cond_4
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaDateFileHolder;->mTextView:Lcom/yftech/car/widget/media/text/DateTextView;

    if-eqz p1, :cond_5

    .line 75
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaDateFileHolder;->mTextView:Lcom/yftech/car/widget/media/text/DateTextView;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/text/DateTextView;->getFormatPattern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaDateFileHolder;->mPattern:Ljava/lang/String;

    .line 78
    :cond_5
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaDateFileHolder;->mPattern:Ljava/lang/String;

    if-nez p1, :cond_6

    const-string/jumbo p1, "yyyy.MM.dd-HH:mm:ss"

    .line 79
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaDateFileHolder;->mPattern:Ljava/lang/String;

    :cond_6
    return-void
.end method


# virtual methods
.method public setDateTime(Lcom/yftech/car/media/data/entity/MediaFile;)V
    .locals 12

    .line 85
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaDateFileHolder;->mTextView:Lcom/yftech/car/widget/media/text/DateTextView;

    if-eqz v0, :cond_a

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v2, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    div-double/2addr v2, v6

    div-double/2addr v2, v6

    const-wide/high16 v8, 0x4038000000000000L    # 24.0

    div-double/2addr v2, v8

    double-to-int v2, v2

    .line 89
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getLastModified()J

    move-result-wide v10

    long-to-double v10, v10

    div-double/2addr v10, v4

    div-double/2addr v10, v6

    div-double/2addr v10, v6

    div-double/2addr v10, v8

    double-to-int v3, v10

    if-ne v3, v2, :cond_1

    .line 92
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaDateFileHolder;->mTextView:Lcom/yftech/car/widget/media/text/DateTextView;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/text/DateTextView;->getToday()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 93
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/holder/MediaDateFileHolder;->mTextView:Lcom/yftech/car/widget/media/text/DateTextView;

    const-string/jumbo p1, "\u4eca\u5929"

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/text/DateTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaDateFileHolder;->mTextView:Lcom/yftech/car/widget/media/text/DateTextView;

    iget-object p0, p0, Lcom/yftech/car/widget/media/list/holder/MediaDateFileHolder;->mTextView:Lcom/yftech/car/widget/media/text/DateTextView;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/text/DateTextView;->getToday()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/text/DateTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    add-int/lit8 v2, v2, -0x1

    if-ne v3, v2, :cond_3

    .line 98
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaDateFileHolder;->mTextView:Lcom/yftech/car/widget/media/text/DateTextView;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/text/DateTextView;->getYesterday()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 99
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/holder/MediaDateFileHolder;->mTextView:Lcom/yftech/car/widget/media/text/DateTextView;

    const-string/jumbo p1, "\u6628\u5929"

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/text/DateTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 101
    :cond_2
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaDateFileHolder;->mTextView:Lcom/yftech/car/widget/media/text/DateTextView;

    iget-object p0, p0, Lcom/yftech/car/widget/media/list/holder/MediaDateFileHolder;->mTextView:Lcom/yftech/car/widget/media/text/DateTextView;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/text/DateTextView;->getYesterday()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/text/DateTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 104
    :cond_3
    iget-object v2, p0, Lcom/yftech/car/widget/media/list/holder/MediaDateFileHolder;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    if-nez v2, :cond_4

    .line 105
    new-instance v2, Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/yftech/car/widget/media/list/holder/MediaDateFileHolder;->mPattern:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/yftech/car/widget/media/list/holder/MediaDateFileHolder;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 107
    :cond_4
    iget-object v2, p0, Lcom/yftech/car/widget/media/list/holder/MediaDateFileHolder;->mYearSimpleDateFormat:Ljava/text/SimpleDateFormat;

    if-nez v2, :cond_5

    .line 108
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/yftech/car/widget/media/list/holder/MediaDateFileHolder;->mYearSimpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 110
    :cond_5
    iget-object v2, p0, Lcom/yftech/car/widget/media/list/holder/MediaDateFileHolder;->mDate:Ljava/util/Date;

    if-nez v2, :cond_6

    .line 111
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iput-object v2, p0, Lcom/yftech/car/widget/media/list/holder/MediaDateFileHolder;->mDate:Ljava/util/Date;

    .line 114
    :cond_6
    iget-object v2, p0, Lcom/yftech/car/widget/media/list/holder/MediaDateFileHolder;->mTextView:Lcom/yftech/car/widget/media/text/DateTextView;

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/text/DateTextView;->getThisYearPattern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 115
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaDateFileHolder;->mDate:Ljava/util/Date;

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getLastModified()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 116
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaDateFileHolder;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaDateFileHolder;->mDate:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 117
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/holder/MediaDateFileHolder;->mTextView:Lcom/yftech/car/widget/media/text/DateTextView;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/text/DateTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 119
    :cond_7
    iget-object v2, p0, Lcom/yftech/car/widget/media/list/holder/MediaDateFileHolder;->mDate:Ljava/util/Date;

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getLastModified()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Date;->setTime(J)V

    .line 120
    iget-object v2, p0, Lcom/yftech/car/widget/media/list/holder/MediaDateFileHolder;->mYearSimpleDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/yftech/car/widget/media/list/holder/MediaDateFileHolder;->mDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 121
    iget-object v3, p0, Lcom/yftech/car/widget/media/list/holder/MediaDateFileHolder;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lcom/yftech/car/widget/media/list/holder/MediaDateFileHolder;->mDate:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 123
    iget-object v4, p0, Lcom/yftech/car/widget/media/list/holder/MediaDateFileHolder;->mDate:Ljava/util/Date;

    invoke-virtual {v4, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 124
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaDateFileHolder;->mYearSimpleDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/yftech/car/widget/media/list/holder/MediaDateFileHolder;->mDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 127
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaDateFileHolder;->mThisYearSimpleDateFormat:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_8

    .line 128
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/yftech/car/widget/media/list/holder/MediaDateFileHolder;->mTextView:Lcom/yftech/car/widget/media/text/DateTextView;

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/text/DateTextView;->getThisYearPattern()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaDateFileHolder;->mThisYearSimpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 130
    :cond_8
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaDateFileHolder;->mDate:Ljava/util/Date;

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getLastModified()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 132
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaDateFileHolder;->mTextView:Lcom/yftech/car/widget/media/text/DateTextView;

    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaDateFileHolder;->mThisYearSimpleDateFormat:Ljava/text/SimpleDateFormat;

    iget-object p0, p0, Lcom/yftech/car/widget/media/list/holder/MediaDateFileHolder;->mDate:Ljava/util/Date;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/text/DateTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 135
    :cond_9
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/holder/MediaDateFileHolder;->mTextView:Lcom/yftech/car/widget/media/text/DateTextView;

    invoke-virtual {p0, v3}, Lcom/yftech/car/widget/media/text/DateTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    :goto_0
    return-void
.end method
