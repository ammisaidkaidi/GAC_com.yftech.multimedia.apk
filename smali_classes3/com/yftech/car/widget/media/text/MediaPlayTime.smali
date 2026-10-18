.class public Lcom/yftech/car/widget/media/text/MediaPlayTime;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "MediaPlayTime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;
    }
.end annotation


# static fields
.field public static final DURATION:I = 0x2

.field private static final HOUR:I = 0x36ee80

.field private static final MINUTE:I = 0xea60

.field public static final PROGRESS:I = 0x1


# instance fields
.field private isAutoCompletion:Z

.field private mDurationTime:Ljava/lang/String;

.field private mForwardDrawable:[Landroid/graphics/drawable/Drawable;

.field private mInitHeight:I

.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPattern:Ljava/lang/String;

.field private mProgressTime:Ljava/lang/String;

.field private mSimpleDateFormat:Ljava/text/SimpleDateFormat;

.field private mSimpleDateFormat2:Ljava/text/SimpleDateFormat;

.field private mSimpleDateFormat3:Ljava/text/SimpleDateFormat;

.field private mSlideForward:Z

.field private final mSpannable:Landroid/text/SpannableStringBuilder;

.field private mVideoShowScrollBack:Ljava/lang/String;

.field private mVideoShowScrollBackDrawable:Landroid/graphics/drawable/Drawable;

.field private mVideoShowScrollForward:Ljava/lang/String;

.field private mVideoShowScrollForwardDrawable:Landroid/graphics/drawable/Drawable;

.field private mVideoShowScrollTime:Z

.field private seekBarShowScrollTime:Z

.field private seekBarShowTimeDistance:F

.field private seekBarShowTimeId:I

.field private seekBarShowTimeOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 138
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 83
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSpannable:Landroid/text/SpannableStringBuilder;

    .line 88
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mList:Ljava/util/List;

    const-string p1, ""

    .line 110
    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mProgressTime:Ljava/lang/String;

    const/4 p1, 0x0

    .line 117
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->seekBarShowScrollTime:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 142
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSpannable:Landroid/text/SpannableStringBuilder;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mList:Ljava/util/List;

    const-string v0, ""

    .line 110
    iput-object v0, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mProgressTime:Ljava/lang/String;

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->seekBarShowScrollTime:Z

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 147
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    new-instance p3, Landroid/text/SpannableStringBuilder;

    invoke-direct {p3}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p3, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSpannable:Landroid/text/SpannableStringBuilder;

    .line 88
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mList:Ljava/util/List;

    const-string p3, ""

    .line 110
    iput-object p3, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mProgressTime:Ljava/lang/String;

    const/4 p3, 0x0

    .line 117
    iput-boolean p3, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->seekBarShowScrollTime:Z

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getPlayTime(JLcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;)Ljava/lang/String;
    .locals 2

    .line 369
    invoke-static {p3}, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->access$1000(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Date;->setTime(J)V

    .line 371
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->isAutoCompletion:Z

    if-eqz v0, :cond_7

    const-wide/32 v0, 0xea60

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 374
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {p3}, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->access$1000(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :cond_0
    const-wide/32 v0, 0x36ee80

    cmp-long p1, p1, v0

    if-gez p1, :cond_3

    .line 376
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mPattern:Ljava/lang/String;

    const-string p2, "m"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 377
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {p3}, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->access$1000(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 379
    :cond_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSimpleDateFormat2:Ljava/text/SimpleDateFormat;

    if-nez p1, :cond_2

    .line 380
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p2, "mm:ss"

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {p1, p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSimpleDateFormat2:Ljava/text/SimpleDateFormat;

    .line 381
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSimpleDateFormat2:Ljava/text/SimpleDateFormat;

    const-string p2, "GMT+00:00"

    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 383
    :cond_2
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSimpleDateFormat2:Ljava/text/SimpleDateFormat;

    invoke-static {p3}, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->access$1000(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 386
    :cond_3
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mPattern:Ljava/lang/String;

    const-string p2, "H"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 387
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {p3}, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->access$1000(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 389
    :cond_4
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSimpleDateFormat3:Ljava/text/SimpleDateFormat;

    if-nez p1, :cond_6

    .line 390
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mPattern:Ljava/lang/String;

    const-string p2, "mm"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 391
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p2, "HH:mm:ss"

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {p1, p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSimpleDateFormat3:Ljava/text/SimpleDateFormat;

    goto :goto_0

    .line 393
    :cond_5
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p2, "H:mm:ss"

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {p1, p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSimpleDateFormat3:Ljava/text/SimpleDateFormat;

    .line 395
    :goto_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSimpleDateFormat3:Ljava/text/SimpleDateFormat;

    const-string p2, "GMT+00:00"

    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 398
    :cond_6
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSimpleDateFormat3:Ljava/text/SimpleDateFormat;

    invoke-static {p3}, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->access$1000(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 402
    :cond_7
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {p3}, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->access$1000(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 405
    :goto_1
    invoke-static {p3}, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->access$700(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_9

    .line 406
    iget-boolean p2, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mVideoShowScrollTime:Z

    if-eqz p2, :cond_9

    iget-boolean p2, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->seekBarShowScrollTime:Z

    if-nez p2, :cond_9

    .line 407
    iget-boolean p2, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSlideForward:Z

    if-eqz p2, :cond_8

    .line 408
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mVideoShowScrollForward:Ljava/lang/String;

    if-eqz p2, :cond_9

    .line 409
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mVideoShowScrollForward:Ljava/lang/String;

    invoke-static {p3, p0}, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->access$502(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 412
    :cond_8
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mVideoShowScrollBack:Ljava/lang/String;

    if-eqz p2, :cond_9

    .line 413
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mVideoShowScrollBack:Ljava/lang/String;

    invoke-static {p3, p0}, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->access$502(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;Ljava/lang/String;)Ljava/lang/String;

    .line 419
    :cond_9
    :goto_2
    invoke-static {p3}, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->access$500(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_a

    .line 420
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3}, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->access$500(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 423
    :cond_a
    invoke-static {p3}, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->access$600(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_b

    .line 424
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->access$600(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 427
    :cond_b
    invoke-static {p3}, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->access$400(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 428
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\n"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_c
    return-object p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 153
    sget-object v0, Lcom/yftech/car/widget/media/R$styleable;->MediaPlayTime:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 156
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaPlayTime_auto_completion:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->isAutoCompletion:Z

    .line 158
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    .line 159
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->getTextSize()F

    move-result v1

    float-to-int v1, v1

    .line 163
    sget v2, Lcom/yftech/car/widget/media/R$styleable;->MediaPlayTime_progress_position:I

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    .line 165
    new-instance v5, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;

    const/4 v6, 0x1

    invoke-direct {v5, p0, v6, v4}, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;-><init>(Lcom/yftech/car/widget/media/text/MediaPlayTime;ILcom/yftech/car/widget/media/text/MediaPlayTime$1;)V

    .line 166
    invoke-static {v5, v2}, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->access$102(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;I)I

    .line 167
    sget v2, Lcom/yftech/car/widget/media/R$styleable;->MediaPlayTime_progress_text_color:I

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-static {v5, v2}, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->access$200(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;I)V

    .line 168
    sget v2, Lcom/yftech/car/widget/media/R$styleable;->MediaPlayTime_progress_text_size:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-static {v5, v2}, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->access$300(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;I)V

    .line 169
    sget v2, Lcom/yftech/car/widget/media/R$styleable;->MediaPlayTime_progress_line_feed:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-static {v5, v2}, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->access$402(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;Z)Z

    .line 170
    sget v2, Lcom/yftech/car/widget/media/R$styleable;->MediaPlayTime_progress_start_content:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->access$502(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    sget v2, Lcom/yftech/car/widget/media/R$styleable;->MediaPlayTime_progress_end_content:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->access$602(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    iget-object v2, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mList:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    sget v2, Lcom/yftech/car/widget/media/R$styleable;->MediaPlayTime_seek_bar_show_scroll_time:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->seekBarShowScrollTime:Z

    .line 176
    :cond_0
    sget v2, Lcom/yftech/car/widget/media/R$styleable;->MediaPlayTime_duration_position:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    if-eq v2, v3, :cond_1

    .line 178
    new-instance v5, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;

    const/4 v6, 0x2

    invoke-direct {v5, p0, v6, v4}, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;-><init>(Lcom/yftech/car/widget/media/text/MediaPlayTime;ILcom/yftech/car/widget/media/text/MediaPlayTime$1;)V

    .line 179
    invoke-static {v5, v2}, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->access$102(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;I)I

    .line 180
    sget v2, Lcom/yftech/car/widget/media/R$styleable;->MediaPlayTime_duration_text_color:I

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-static {v5, p2}, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->access$200(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;I)V

    .line 181
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaPlayTime_duration_text_size:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    invoke-static {v5, p2}, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->access$300(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;I)V

    .line 182
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaPlayTime_duration_line_feed:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-static {v5, p2}, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->access$402(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;Z)Z

    .line 183
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaPlayTime_duration_start_content:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->access$502(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;Ljava/lang/String;)Ljava/lang/String;

    .line 184
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaPlayTime_duration_end_content:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->access$602(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;Ljava/lang/String;)Ljava/lang/String;

    .line 185
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mList:Ljava/util/List;

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_1
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaPlayTime_video_show_scroll_time:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mVideoShowScrollTime:Z

    .line 191
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaPlayTime_video_show_scroll_forward_drawable:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mVideoShowScrollForwardDrawable:Landroid/graphics/drawable/Drawable;

    .line 193
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaPlayTime_video_show_scroll_back_drawable:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mVideoShowScrollBackDrawable:Landroid/graphics/drawable/Drawable;

    .line 195
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaPlayTime_video_show_scroll_forward:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mVideoShowScrollForward:Ljava/lang/String;

    .line 197
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaPlayTime_video_show_scroll_back:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mVideoShowScrollBack:Ljava/lang/String;

    .line 200
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaPlayTime_seek_bar_show_time_distance:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->seekBarShowTimeDistance:F

    .line 202
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaPlayTime_seek_bar_show_time_offset:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->seekBarShowTimeOffset:F

    .line 204
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaPlayTime_seek_bar_show_time_id:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->seekBarShowTimeId:I

    .line 206
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaPlayTime_SimpleDateFormat_pattern:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mPattern:Ljava/lang/String;

    .line 207
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mPattern:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "HH:mm:ss"

    .line 208
    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mPattern:Ljava/lang/String;

    .line 211
    :cond_2
    new-instance p1, Ljava/text/SimpleDateFormat;

    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mPattern:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {p1, p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 213
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    const-string p1, "GMT+00:00"

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 3

    .line 344
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;

    .line 345
    invoke-static {v0}, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->access$700(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 346
    invoke-static {v0}, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->access$1000(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getForwardDrawable()[Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 246
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mForwardDrawable:[Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getInitHeight()I
    .locals 0

    .line 242
    iget p0, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mInitHeight:I

    return p0
.end method

.method public getProgress()J
    .locals 3

    .line 335
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;

    .line 336
    invoke-static {v0}, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->access$700(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 337
    invoke-static {v0}, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->access$1000(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSeekBarShowTimeDistance()F
    .locals 0

    .line 226
    iget p0, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->seekBarShowTimeDistance:F

    return p0
.end method

.method public getSeekBarShowTimeId()I
    .locals 0

    .line 234
    iget p0, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->seekBarShowTimeId:I

    return p0
.end method

.method public getSeekBarShowTimeOffset()F
    .locals 0

    .line 230
    iget p0, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->seekBarShowTimeOffset:F

    return p0
.end method

.method public isSeekBarShowScrollTime()Z
    .locals 0

    .line 238
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->seekBarShowScrollTime:Z

    return p0
.end method

.method public isVideoShowScrollTime()Z
    .locals 0

    .line 267
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mVideoShowScrollTime:Z

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 361
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 362
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "onConfigurationChanged##"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->updateOnConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 218
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onFinishInflate()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 260
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    .line 261
    iget p1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mInitHeight:I

    if-nez p1, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mInitHeight:I

    :cond_0
    return-void
.end method

.method public setForwardDrawable()V
    .locals 5

    .line 250
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 251
    array-length v1, v0

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    .line 252
    new-array v1, v2, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mForwardDrawable:[Landroid/graphics/drawable/Drawable;

    .line 253
    iget-object v1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mForwardDrawable:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    aget-object v4, v0, v3

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mVideoShowScrollBackDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    aput-object v4, v1, v3

    .line 254
    iget-object v1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mForwardDrawable:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x1

    aget-object v4, v0, v2

    if-eqz v4, :cond_1

    aget-object p0, v0, v2

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mVideoShowScrollForwardDrawable:Landroid/graphics/drawable/Drawable;

    :goto_1
    aput-object p0, v1, v3

    :cond_2
    return-void
.end method

.method public setInitHeight(I)V
    .locals 0

    .line 222
    iput p1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mInitHeight:I

    return-void
.end method

.method public updateDuration(J)V
    .locals 4

    .line 434
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;

    .line 435
    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->access$700(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 436
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 438
    invoke-direct {p0, p1, p2, v1}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->getPlayTime(JLcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mDurationTime:Ljava/lang/String;

    const/4 p1, 0x0

    .line 441
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;

    .line 442
    invoke-static {v0}, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->access$700(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move-object p1, v0

    :cond_2
    if-eqz p1, :cond_4

    .line 452
    invoke-static {p1}, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->access$100(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;)I

    move-result p1

    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->access$100(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;)I

    move-result p2

    if-le p1, p2, :cond_3

    .line 453
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    .line 454
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSpannable:Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mDurationTime:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 455
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    .line 456
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSpannable:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mProgressTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 458
    :cond_3
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSpannable:Landroid/text/SpannableStringBuilder;

    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mProgressTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 459
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    .line 460
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSpannable:Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mDurationTime:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 461
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    goto :goto_0

    .line 464
    :cond_4
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    .line 465
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSpannable:Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mDurationTime:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 466
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    .line 469
    :goto_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->access$800(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v2

    const/16 v3, 0x21

    invoke-virtual {v0, v2, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 470
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->access$900(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;)Landroid/text/style/AbsoluteSizeSpan;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 471
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method public updateOnConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 353
    new-instance p1, Ljava/text/SimpleDateFormat;

    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mPattern:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {p1, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 354
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    const-string v0, "GMT+00:00"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 p1, 0x0

    .line 355
    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSimpleDateFormat2:Ljava/text/SimpleDateFormat;

    .line 356
    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSimpleDateFormat3:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public updateProgress(J)V
    .locals 4

    .line 291
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;

    .line 292
    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->access$700(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 293
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 295
    invoke-direct {p0, p1, p2, v1}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->getPlayTime(JLcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mProgressTime:Ljava/lang/String;

    const/4 p1, 0x0

    .line 298
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;

    .line 299
    invoke-static {v0}, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->access$700(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    move-object p1, v0

    :cond_2
    if-eqz p1, :cond_4

    .line 309
    invoke-static {p1}, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->access$100(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;)I

    move-result p1

    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->access$100(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;)I

    move-result p2

    if-le p1, p2, :cond_3

    .line 310
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    .line 311
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSpannable:Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mProgressTime:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 312
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    .line 313
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSpannable:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mDurationTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 315
    :cond_3
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSpannable:Landroid/text/SpannableStringBuilder;

    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mDurationTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 316
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    .line 317
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSpannable:Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mProgressTime:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 318
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    goto :goto_0

    .line 321
    :cond_4
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    .line 322
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSpannable:Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mProgressTime:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 323
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    .line 326
    :goto_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->access$800(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v2

    const/16 v3, 0x21

    invoke-virtual {v0, v2, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 327
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->access$900(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;)Landroid/text/style/AbsoluteSizeSpan;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 328
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method public updateSlideProgress(IJZ)V
    .locals 2

    .line 271
    iput-boolean p4, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mSlideForward:Z

    .line 272
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mVideoShowScrollForwardDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mVideoShowScrollBackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    .line 274
    iget-object p4, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mVideoShowScrollForwardDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime;->mVideoShowScrollBackDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p0, p4}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 276
    :cond_1
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->getForwardDrawable()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    if-eqz p4, :cond_2

    const/4 p4, 0x1

    .line 279
    aget-object p4, v0, p4

    invoke-virtual {p0, v1, v1, p4, v1}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    const/4 p4, 0x0

    .line 281
    aget-object p4, v0, p4

    invoke-virtual {p0, p4, v1, v1, v1}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_1
    int-to-long v0, p1

    .line 286
    invoke-virtual {p0, v0, v1}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->updateProgress(J)V

    .line 287
    invoke-virtual {p0, p2, p3}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->updateDuration(J)V

    return-void
.end method
