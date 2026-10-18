.class public Landroid/widget/DateTimeView;
.super Landroid/widget/TextView;
.source "DateTimeView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DateTimeView$ReceiverInfo;
    }
.end annotation


# static fields
.field private static final SHOW_MONTH_DAY_YEAR:I = 0x1

.field private static final SHOW_TIME:I

.field private static final sReceiverInfo:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/widget/DateTimeView$ReceiverInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mLastDisplay:I

.field mLastFormat:Ljava/text/DateFormat;

.field private mNowText:Ljava/lang/String;

.field private mShowRelativeTime:Z

.field mTime:Ljava/util/Date;

.field mTimeMillis:J

.field private mUpdateTimeMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0}, Landroid/widget/DateTimeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 67
    iput v0, p0, Landroid/widget/DateTimeView;->mLastDisplay:I

    .line 81
    sget-object v0, Lcom/android/internal/R$styleable;->DateTimeView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 85
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    move v0, v1

    :goto_0
    if-ge v0, p2, :cond_1

    .line 87
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 90
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 91
    invoke-virtual {p0, v2}, Landroid/widget/DateTimeView;->setShowRelativeTime(Z)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/DateTimeView;)J
    .locals 2

    .line 60
    iget-wide v0, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    return-wide v0
.end method

.method private computeNextMidnight(Ljava/util/TimeZone;)J
    .locals 1

    .line 303
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object p0

    .line 304
    invoke-static {p1}, Llibcore/icu/DateUtilsBridge;->icuTimeZone(Ljava/util/TimeZone;)Landroid/icu/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    const/4 p1, 0x5

    const/4 v0, 0x1

    .line 305
    invoke-virtual {p0, p1, v0}, Landroid/icu/util/Calendar;->add(II)V

    const/4 p1, 0x0

    const/16 v0, 0xb

    .line 306
    invoke-virtual {p0, v0, p1}, Landroid/icu/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 307
    invoke-virtual {p0, v0, p1}, Landroid/icu/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 308
    invoke-virtual {p0, v0, p1}, Landroid/icu/util/Calendar;->set(II)V

    const/16 v0, 0xe

    .line 309
    invoke-virtual {p0, v0, p1}, Landroid/icu/util/Calendar;->set(II)V

    .line 310
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method private static dayDistance(Ljava/util/TimeZone;JJ)I
    .locals 2

    .line 331
    invoke-virtual {p0, p3, p4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {p3, p4, v0, v1}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result p3

    .line 332
    invoke-virtual {p0, p1, p2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p0

    div-int/lit16 p0, p0, 0x3e8

    int-to-long v0, p0

    invoke-static {p1, p2, v0, v1}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result p0

    sub-int/2addr p3, p0

    return p3
.end method

.method private getTimeFormat()Ljava/text/DateFormat;
    .locals 0

    .line 336
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static setReceiverHandler(Landroid/os/Handler;)V
    .locals 2

    .line 405
    sget-object v0, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/DateTimeView$ReceiverInfo;

    if-nez v0, :cond_0

    .line 407
    new-instance v0, Landroid/widget/DateTimeView$ReceiverInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/DateTimeView$ReceiverInfo;-><init>(Landroid/widget/DateTimeView$1;)V

    .line 408
    sget-object v1, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 410
    :cond_0
    invoke-virtual {v0, p0}, Landroid/widget/DateTimeView$ReceiverInfo;->setHandler(Landroid/os/Handler;)V

    return-void
.end method

.method private updateNowText()V
    .locals 2

    .line 321
    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    if-nez v0, :cond_0

    return-void

    .line 324
    :cond_0
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040407

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DateTimeView;->mNowText:Ljava/lang/String;

    return-void
.end method

.method private updateRelativeTime()V
    .locals 19

    move-object/from16 v0, p0

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 238
    iget-wide v3, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    sub-long v3, v1, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    .line 241
    iget-wide v5, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    cmp-long v5, v1, v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ltz v5, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    const-wide/32 v8, 0xea60

    cmp-long v10, v3, v8

    const-wide/16 v11, 0x1

    if-gez v10, :cond_1

    .line 244
    iget-object v1, v0, Landroid/widget/DateTimeView;->mNowText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/DateTimeView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-wide v1, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    add-long/2addr v1, v8

    add-long/2addr v1, v11

    iput-wide v1, v0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    return-void

    :cond_1
    const-wide/32 v13, 0x36ee80

    cmp-long v10, v3, v13

    const-wide/16 v15, -0x1

    const-wide v17, 0x7528ad000L

    if-gez v10, :cond_3

    .line 248
    div-long/2addr v3, v8

    long-to-int v1, v3

    .line 249
    invoke-virtual/range {p0 .. p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v5, :cond_2

    const v3, 0x115000c

    goto :goto_1

    :cond_2
    const v3, 0x115000d

    :goto_1
    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    .line 253
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 249
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5

    :cond_3
    const-wide/32 v8, 0x5265c00

    cmp-long v10, v3, v8

    if-gez v10, :cond_5

    .line 256
    div-long/2addr v3, v13

    long-to-int v1, v3

    .line 257
    invoke-virtual/range {p0 .. p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v5, :cond_4

    const v3, 0x1150008

    goto :goto_2

    :cond_4
    const v3, 0x1150009

    :goto_2
    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    .line 261
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 257
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-wide v8, v13

    goto :goto_5

    :cond_5
    cmp-long v10, v3, v17

    if-gez v10, :cond_8

    .line 265
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    .line 266
    iget-wide v13, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    invoke-static {v3, v13, v14, v1, v2}, Landroid/widget/DateTimeView;->dayDistance(Ljava/util/TimeZone;JJ)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 267
    invoke-virtual/range {p0 .. p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v5, :cond_6

    const v4, 0x1150004

    goto :goto_3

    :cond_6
    const v4, 0x1150005

    :goto_3
    invoke-virtual {v2, v4, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    new-array v4, v7, [Ljava/lang/Object;

    .line 271
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v6

    .line 267
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-nez v5, :cond_7

    if-eq v1, v7, :cond_a

    .line 273
    :cond_7
    invoke-direct {v0, v3}, Landroid/widget/DateTimeView;->computeNextMidnight(Ljava/util/TimeZone;)J

    move-result-wide v3

    iput-wide v3, v0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    move-wide v8, v15

    goto :goto_5

    .line 280
    :cond_8
    div-long v3, v3, v17

    long-to-int v1, v3

    .line 281
    invoke-virtual/range {p0 .. p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v5, :cond_9

    const v3, 0x1150010

    goto :goto_4

    :cond_9
    const v3, 0x1150011

    :goto_4
    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    .line 285
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 281
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-wide/from16 v8, v17

    :cond_a
    :goto_5
    cmp-long v3, v8, v15

    if-eqz v3, :cond_c

    if-eqz v5, :cond_b

    .line 290
    iget-wide v3, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    add-int/2addr v1, v7

    int-to-long v5, v1

    mul-long/2addr v8, v5

    add-long/2addr v3, v8

    add-long/2addr v3, v11

    iput-wide v3, v0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    goto :goto_6

    .line 292
    :cond_b
    iget-wide v3, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    int-to-long v5, v1

    mul-long/2addr v8, v5

    sub-long/2addr v3, v8

    add-long/2addr v3, v11

    iput-wide v3, v0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    .line 295
    :cond_c
    :goto_6
    invoke-virtual {v0, v2}, Landroid/widget/DateTimeView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method clearFormatAndUpdate()V
    .locals 1

    const/4 v0, 0x0

    .line 340
    iput-object v0, p0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    .line 341
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 100
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 101
    sget-object v0, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/DateTimeView$ReceiverInfo;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Landroid/widget/DateTimeView$ReceiverInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/DateTimeView$ReceiverInfo;-><init>(Landroid/widget/DateTimeView$1;)V

    .line 104
    sget-object v1, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 106
    :cond_0
    invoke-virtual {v0, p0}, Landroid/widget/DateTimeView$ReceiverInfo;->addView(Landroid/widget/DateTimeView;)V

    .line 112
    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 315
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 316
    invoke-direct {p0}, Landroid/widget/DateTimeView;->updateNowText()V

    .line 317
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 119
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 120
    sget-object v0, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/DateTimeView$ReceiverInfo;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0, p0}, Landroid/widget/DateTimeView$ReceiverInfo;->removeView(Landroid/widget/DateTimeView;)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 12

    .line 346
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 347
    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    if-eqz v0, :cond_9

    .line 350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 351
    iget-wide v2, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 353
    iget-wide v4, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    cmp-long v4, v0, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ltz v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    const-wide/32 v7, 0xea60

    cmp-long v9, v2, v7

    if-gez v9, :cond_1

    .line 356
    iget-object p0, p0, Landroid/widget/DateTimeView;->mNowText:Ljava/lang/String;

    goto/16 :goto_5

    :cond_1
    const-wide/32 v9, 0x36ee80

    cmp-long v11, v2, v9

    if-gez v11, :cond_3

    .line 358
    div-long/2addr v2, v7

    long-to-int v0, v2

    .line 359
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz v4, :cond_2

    const v1, 0x115000a

    goto :goto_1

    :cond_2
    const v1, 0x115000b

    :goto_1
    invoke-virtual {p0, v1, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p0

    new-array v1, v6, [Ljava/lang/Object;

    .line 365
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v5

    .line 359
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_5

    :cond_3
    const-wide/32 v7, 0x5265c00

    cmp-long v7, v2, v7

    if-gez v7, :cond_5

    .line 367
    div-long/2addr v2, v9

    long-to-int v0, v2

    .line 368
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz v4, :cond_4

    const v1, 0x1150006

    goto :goto_2

    :cond_4
    const v1, 0x1150007

    :goto_2
    invoke-virtual {p0, v1, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p0

    new-array v1, v6, [Ljava/lang/Object;

    .line 374
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v5

    .line 368
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_5
    const-wide v7, 0x7528ad000L

    cmp-long v9, v2, v7

    if-gez v9, :cond_7

    .line 377
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    .line 378
    iget-wide v7, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    invoke-static {v2, v7, v8, v0, v1}, Landroid/widget/DateTimeView;->dayDistance(Ljava/util/TimeZone;JJ)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 379
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz v4, :cond_6

    const v1, 0x1150002

    goto :goto_3

    :cond_6
    const v1, 0x1150003

    :goto_3
    invoke-virtual {p0, v1, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p0

    new-array v1, v6, [Ljava/lang/Object;

    .line 385
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v5

    .line 379
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    .line 388
    :cond_7
    div-long/2addr v2, v7

    long-to-int v0, v2

    .line 389
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz v4, :cond_8

    const v1, 0x115000e

    goto :goto_4

    :cond_8
    const v1, 0x115000f

    :goto_4
    invoke-virtual {p0, v1, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p0

    new-array v1, v6, [Ljava/lang/Object;

    .line 395
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v5

    .line 389
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 397
    :goto_5
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method public setShowRelativeTime(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 137
    iput-boolean p1, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    .line 138
    invoke-direct {p0}, Landroid/widget/DateTimeView;->updateNowText()V

    .line 139
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    return-void
.end method

.method public setTime(J)V
    .locals 8
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 128
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 129
    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    const/4 p1, 0x0

    .line 130
    invoke-virtual {v0, p1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    .line 131
    new-instance p1, Ljava/util/Date;

    iget p2, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v2, p2, -0x76c

    iget v3, v0, Landroid/text/format/Time;->month:I

    iget v4, v0, Landroid/text/format/Time;->monthDay:I

    iget v5, v0, Landroid/text/format/Time;->hour:I

    iget v6, v0, Landroid/text/format/Time;->minute:I

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Ljava/util/Date;-><init>(IIIIII)V

    iput-object p1, p0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    .line 132
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 145
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getVisibility()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 146
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    :cond_1
    return-void
.end method

.method update()V
    .locals 14

    .line 153
    iget-object v0, p0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto/16 :goto_6

    .line 156
    :cond_0
    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    if-eqz v0, :cond_1

    .line 157
    invoke-direct {p0}, Landroid/widget/DateTimeView;->updateRelativeTime()V

    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    .line 164
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 165
    iget-wide v1, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    const/4 v1, 0x0

    .line 166
    iput v1, v0, Landroid/text/format/Time;->second:I

    .line 168
    iget v2, v0, Landroid/text/format/Time;->hour:I

    add-int/lit8 v2, v2, -0xc

    iput v2, v0, Landroid/text/format/Time;->hour:I

    .line 169
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 170
    iget v4, v0, Landroid/text/format/Time;->hour:I

    add-int/lit8 v4, v4, 0xc

    iput v4, v0, Landroid/text/format/Time;->hour:I

    .line 171
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    .line 172
    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 173
    iput v1, v0, Landroid/text/format/Time;->minute:I

    .line 174
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    .line 175
    iget v8, v0, Landroid/text/format/Time;->monthDay:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v0, Landroid/text/format/Time;->monthDay:I

    .line 176
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 179
    invoke-virtual {v0, v12, v13}, Landroid/text/format/Time;->set(J)V

    .line 180
    iput v1, v0, Landroid/text/format/Time;->second:I

    .line 181
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v12

    cmp-long v0, v12, v6

    if-ltz v0, :cond_2

    cmp-long v0, v12, v10

    if-ltz v0, :cond_4

    :cond_2
    cmp-long v0, v12, v2

    if-ltz v0, :cond_3

    cmp-long v0, v12, v4

    if-gez v0, :cond_3

    goto :goto_0

    :cond_3
    move v1, v9

    .line 197
    :cond_4
    :goto_0
    iget v0, p0, Landroid/widget/DateTimeView;->mLastDisplay:I

    if-ne v1, v0, :cond_5

    iget-object v0, p0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    if-eqz v0, :cond_5

    .line 199
    iget-object v0, p0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    goto :goto_2

    :cond_5
    packed-switch v1, :pswitch_data_0

    .line 209
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown display value: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/4 v0, 0x3

    .line 206
    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    goto :goto_1

    .line 203
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/DateTimeView;->getTimeFormat()Ljava/text/DateFormat;

    move-result-object v0

    .line 211
    :goto_1
    iput-object v0, p0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    .line 215
    :goto_2
    iget-object v8, p0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    invoke-virtual {v0, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-virtual {p0, v0}, Landroid/widget/DateTimeView;->setText(Ljava/lang/CharSequence;)V

    if-nez v1, :cond_7

    cmp-long v0, v4, v10

    if-lez v0, :cond_6

    goto :goto_3

    :cond_6
    move-wide v4, v10

    .line 221
    :goto_3
    iput-wide v4, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    goto :goto_5

    .line 224
    :cond_7
    iget-wide v0, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    cmp-long v0, v0, v12

    if-gez v0, :cond_8

    const-wide/16 v0, 0x0

    .line 226
    iput-wide v0, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    goto :goto_5

    :cond_8
    cmp-long v0, v2, v6

    if-gez v0, :cond_9

    goto :goto_4

    :cond_9
    move-wide v2, v6

    .line 231
    :goto_4
    iput-wide v2, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    :goto_5
    return-void

    :cond_a
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
