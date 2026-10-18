.class public Lcom/yftech/car/widget/media/text/MediaFileTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "MediaFileTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;
    }
.end annotation


# static fields
.field private static final ALBUM:I = 0x3

.field private static final ARTIST:I = 0x2

.field private static final DIRECTORY_FILE_SIZE:I = 0xd

.field private static final DIRECTORY_NAME:I = 0xe

.field private static final DURATION:I = 0x8

.field private static final FILE_NAME:I = 0x5

.field private static final FILE_SIZE:I = 0xa

.field private static final FOLDER:I = 0x6

.field private static final FOLDER_PATH:I = 0xb

.field private static final FOLDER_SIZE:I = 0xc

.field private static final GB:J = 0x40000000L

.field private static final GENRE:I = 0x4

.field private static final HOUR:I = 0x36ee80

.field private static final KB:I = 0x400

.field private static final LAST_MODIFIED:I = 0x9

.field private static final MB:I = 0x100000

.field private static final MINUTE:I = 0xea60

.field private static final NUMBER:I = 0x7

.field private static final TAG:Ljava/lang/String; = "MediaFileTextView"

.field private static final TB:J = 0x10000000000L

.field private static final TITLE:I = 0x1


# instance fields
.field private mAbsoluteSearchSizeSpan:Landroid/text/style/AbsoluteSizeSpan;

.field private final mDate:Ljava/util/Date;

.field private mDecimal:I

.field private mDurationSimpleDateFormat:Ljava/text/SimpleDateFormat;

.field private mDurationSimpleDateFormat3:Ljava/text/SimpleDateFormat;

.field private mFolderAddFile:Z

.field private mLastModifiedSimpleDateFormat:Ljava/text/SimpleDateFormat;

.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaFile:Lcom/yftech/car/media/data/entity/MediaFile;

.field private mNumberSplitContent:Ljava/lang/String;

.field private mSearchColor:I

.field private mSearchColorSpan:Landroid/text/style/ForegroundColorSpan;

.field private mSpannable:Landroid/text/SpannableStringBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 232
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 108
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mList:Ljava/util/List;

    .line 214
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mDate:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 236
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mList:Ljava/util/List;

    .line 214
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mDate:Ljava/util/Date;

    .line 237
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/text/MediaFileTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 241
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mList:Ljava/util/List;

    .line 214
    new-instance p3, Ljava/util/Date;

    invoke-direct {p3}, Ljava/util/Date;-><init>()V

    iput-object p3, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mDate:Ljava/util/Date;

    .line 242
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/text/MediaFileTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getMediaFileInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    if-eqz p1, :cond_2

    const-string p0, "<unknown>"

    .line 801
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    :goto_0
    return-object p2
.end method

.method private handleLastModified(Lcom/yftech/car/media/data/entity/MediaFile;Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Ljava/lang/String;
    .locals 10

    .line 758
    invoke-static {p2}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$1000(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 759
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    div-double/2addr v2, v6

    div-double/2addr v2, v6

    const-wide/high16 v8, 0x4038000000000000L    # 24.0

    div-double/2addr v2, v8

    double-to-int v0, v2

    .line 761
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getLastModified()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v4

    div-double/2addr v2, v6

    div-double/2addr v2, v6

    div-double/2addr v2, v8

    double-to-int v2, v2

    if-ne v0, v2, :cond_1

    .line 763
    invoke-static {p2}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$1100(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "\u4eca\u5929"

    goto/16 :goto_0

    :cond_0
    invoke-static {p2}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$1100(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_1
    add-int/lit8 v3, v0, -0x1

    if-ne v2, v3, :cond_3

    .line 765
    invoke-static {p2}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$1200(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string/jumbo p0, "\u6628\u5929"

    goto/16 :goto_0

    :cond_2
    invoke-static {p2}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$1200(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_3
    sub-int/2addr v0, v1

    if-ne v2, v0, :cond_5

    .line 767
    invoke-static {p2}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$1300(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string/jumbo p0, "\u524d\u5929"

    goto/16 :goto_0

    :cond_4
    invoke-static {p2}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$1300(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 769
    :cond_5
    invoke-static {p2}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$900(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "yyyy-MM-dd"

    .line 770
    invoke-static {p2, v0}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$902(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 772
    :cond_6
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mLastModifiedSimpleDateFormat:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_7

    .line 773
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {p2}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$900(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Ljava/lang/String;

    move-result-object p2

    sget-object v1, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v1}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mLastModifiedSimpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 774
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mLastModifiedSimpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 776
    :cond_7
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mDate:Ljava/util/Date;

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getLastModified()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 777
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mLastModifiedSimpleDateFormat:Ljava/text/SimpleDateFormat;

    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mDate:Ljava/util/Date;

    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 780
    :cond_8
    invoke-static {p2}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$1000(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    const-string v0, "EEEE"

    .line 781
    invoke-static {p2, v0}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$902(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 784
    :cond_9
    invoke-static {p2}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$900(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "yyyy-MM-dd"

    .line 785
    invoke-static {p2, v0}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$902(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 787
    :cond_a
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mLastModifiedSimpleDateFormat:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_b

    .line 788
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {p2}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$900(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Ljava/lang/String;

    move-result-object p2

    sget-object v1, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v1}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mLastModifiedSimpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 789
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mLastModifiedSimpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 791
    :cond_b
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mDate:Ljava/util/Date;

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getLastModified()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 792
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mLastModifiedSimpleDateFormat:Ljava/text/SimpleDateFormat;

    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mDate:Ljava/util/Date;

    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 246
    sget-object v0, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 248
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/text/MediaFileTextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    .line 249
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/text/MediaFileTextView;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    .line 252
    iget-object v1, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 254
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_title_position:I

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    .line 256
    new-instance v5, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;

    const/4 v6, 0x1

    invoke-direct {v5, p0, v6, v3}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;-><init>(Lcom/yftech/car/widget/media/text/MediaFileTextView;ILcom/yftech/car/widget/media/text/MediaFileTextView$1;)V

    .line 257
    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$102(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)I

    .line 258
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_title_text_color:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$200(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 259
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_title_text_size:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$300(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 260
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_title_text_selected_color:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$400(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 261
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_title_text_selected_size:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$500(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 262
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_title_line_feed:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$602(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Z)Z

    .line 263
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_title_text_unknown:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->setUnknown(Ljava/lang/String;)V

    .line 264
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_title_start_content:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$702(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 265
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_title_end_content:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$802(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 266
    iget-object v1, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_0
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_artist_position:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 271
    new-instance v5, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;

    const/4 v6, 0x2

    invoke-direct {v5, p0, v6, v3}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;-><init>(Lcom/yftech/car/widget/media/text/MediaFileTextView;ILcom/yftech/car/widget/media/text/MediaFileTextView$1;)V

    .line 272
    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$102(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)I

    .line 273
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_artist_line_feed:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$602(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Z)Z

    .line 274
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_artist_text_color:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$200(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 275
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_artist_text_size:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$300(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 276
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_artist_text_selected_color:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$400(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 277
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_artist_text_selected_size:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$500(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 278
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_artist_text_unknown:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->setUnknown(Ljava/lang/String;)V

    .line 279
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_artist_start_content:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$702(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 280
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_artist_end_content:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$802(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 281
    iget-object v1, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    :cond_1
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_album_position:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 286
    new-instance v5, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;

    const/4 v6, 0x3

    invoke-direct {v5, p0, v6, v3}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;-><init>(Lcom/yftech/car/widget/media/text/MediaFileTextView;ILcom/yftech/car/widget/media/text/MediaFileTextView$1;)V

    .line 287
    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$102(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)I

    .line 288
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_album_line_feed:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$602(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Z)Z

    .line 289
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_album_text_color:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$200(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 290
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_album_text_size:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$300(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 291
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_album_text_selected_color:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$400(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 292
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_album_text_selected_size:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$500(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 293
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_album_text_unknown:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->setUnknown(Ljava/lang/String;)V

    .line 294
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_album_start_content:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$702(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 295
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_album_end_content:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$802(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 296
    iget-object v1, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    :cond_2
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_genre_position:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-eq v1, v2, :cond_3

    .line 301
    new-instance v5, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;

    const/4 v6, 0x4

    invoke-direct {v5, p0, v6, v3}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;-><init>(Lcom/yftech/car/widget/media/text/MediaFileTextView;ILcom/yftech/car/widget/media/text/MediaFileTextView$1;)V

    .line 302
    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$102(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)I

    .line 303
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_genre_line_feed:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$602(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Z)Z

    .line 304
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_genre_text_color:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$200(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 305
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_genre_text_size:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$300(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 306
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_genre_text_selected_color:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$400(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 307
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_genre_text_selected_size:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$500(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 308
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_genre_text_unknown:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->setUnknown(Ljava/lang/String;)V

    .line 309
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_genre_start_content:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$702(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 310
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_genre_end_content:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$802(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 311
    iget-object v1, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_3
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_fileName_position:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-eq v1, v2, :cond_4

    .line 316
    new-instance v5, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;

    const/4 v6, 0x5

    invoke-direct {v5, p0, v6, v3}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;-><init>(Lcom/yftech/car/widget/media/text/MediaFileTextView;ILcom/yftech/car/widget/media/text/MediaFileTextView$1;)V

    .line 317
    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$102(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)I

    .line 318
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_fileName_line_feed:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$602(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Z)Z

    .line 319
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_fileName_text_color:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$200(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 320
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_fileName_text_size:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$300(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 321
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_fileName_text_selected_color:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$400(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 322
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_fileName_text_selected_size:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$500(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 323
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_fileName_start_content:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$702(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 324
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_fileName_end_content:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$802(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 325
    iget-object v1, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    :cond_4
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_folder_position:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-eq v1, v2, :cond_5

    .line 330
    new-instance v5, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;

    const/4 v6, 0x6

    invoke-direct {v5, p0, v6, v3}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;-><init>(Lcom/yftech/car/widget/media/text/MediaFileTextView;ILcom/yftech/car/widget/media/text/MediaFileTextView$1;)V

    .line 331
    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$102(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)I

    .line 332
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_folder_line_feed:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$602(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Z)Z

    .line 333
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_folder_text_color:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$200(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 334
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_folder_text_size:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$300(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 335
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_folder_text_selected_color:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$400(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 336
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_folder_text_selected_size:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$500(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 337
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_folder_start_content:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$702(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 338
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_folder_end_content:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$802(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 339
    iget-object v1, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    :cond_5
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_folder_directory_position:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-eq v1, v2, :cond_6

    .line 344
    new-instance v5, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;

    const/16 v6, 0xb

    invoke-direct {v5, p0, v6, v3}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;-><init>(Lcom/yftech/car/widget/media/text/MediaFileTextView;ILcom/yftech/car/widget/media/text/MediaFileTextView$1;)V

    .line 345
    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$102(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)I

    .line 346
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_folder_directory_line_feed:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$602(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Z)Z

    .line 347
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_folder_directory_text_color:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$200(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 348
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_folder_directory_text_size:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$300(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 349
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_folder_directory_text_selected_color:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$400(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 350
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_folder_directory_text_selected_size:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$500(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 351
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_folder_directory_start_content:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$702(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 352
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_folder_directory_end_content:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$802(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 353
    iget-object v1, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    :cond_6
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_number_position:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-eq v1, v2, :cond_7

    .line 358
    new-instance v5, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;

    const/4 v6, 0x7

    invoke-direct {v5, p0, v6, v3}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;-><init>(Lcom/yftech/car/widget/media/text/MediaFileTextView;ILcom/yftech/car/widget/media/text/MediaFileTextView$1;)V

    .line 359
    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$102(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)I

    .line 360
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_number_line_feed:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$602(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Z)Z

    .line 361
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_number_text_color:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$200(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 362
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_number_text_size:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$300(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 363
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_number_text_selected_color:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$400(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 364
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_number_text_selected_size:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$500(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 365
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_number_start_content:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$702(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 366
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_number_end_content:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$802(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 367
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_number_split_content:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mNumberSplitContent:Ljava/lang/String;

    .line 368
    iget-object v1, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    :cond_7
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_duration_file_position:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-eq v1, v2, :cond_8

    .line 373
    new-instance v5, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;

    const/16 v6, 0x8

    invoke-direct {v5, p0, v6, v3}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;-><init>(Lcom/yftech/car/widget/media/text/MediaFileTextView;ILcom/yftech/car/widget/media/text/MediaFileTextView$1;)V

    .line 374
    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$102(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)I

    .line 375
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_duration_file_line_feed:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$602(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Z)Z

    .line 376
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_duration_file_text_color:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$200(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 377
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_duration_file_text_size:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$300(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 378
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_duration_file_text_selected_color:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$400(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 379
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_duration_file_text_selected_size:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$500(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 380
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_duration_file_start_content:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$702(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 381
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_duration_file_end_content:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$802(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 382
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_duration_file_SimpleDateFormat_pattern:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$902(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 383
    iget-object v1, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    :cond_8
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_lastModified_position:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-eq v1, v2, :cond_9

    .line 388
    new-instance v5, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;

    const/16 v6, 0x9

    invoke-direct {v5, p0, v6, v3}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;-><init>(Lcom/yftech/car/widget/media/text/MediaFileTextView;ILcom/yftech/car/widget/media/text/MediaFileTextView$1;)V

    .line 389
    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$102(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)I

    .line 390
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_lastModified_line_feed:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$602(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Z)Z

    .line 391
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_lastModified_text_color:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$200(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 392
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_lastModified_text_size:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$300(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 393
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_lastModified_text_selected_color:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$400(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 394
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_lastModified_text_selected_size:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$500(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 395
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_lastModified_start_content:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$702(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 396
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_lastModified_end_content:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$802(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 398
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_lastModified_pattern_mode:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$1002(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)I

    .line 399
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_lastModified_SimpleDateFormat_pattern:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$902(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 400
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_lastModified_date_today:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$1102(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 401
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_lastModified_date_yesterday:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$1202(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 402
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_lastModified_date_yesterday_before:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$1302(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 403
    iget-object v1, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    :cond_9
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_size_position:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-eq v1, v2, :cond_a

    .line 408
    new-instance v5, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;

    const/16 v6, 0xa

    invoke-direct {v5, p0, v6, v3}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;-><init>(Lcom/yftech/car/widget/media/text/MediaFileTextView;ILcom/yftech/car/widget/media/text/MediaFileTextView$1;)V

    .line 409
    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$102(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)I

    .line 410
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_size_line_feed:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$602(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Z)Z

    .line 411
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_size_decimal:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mDecimal:I

    .line 412
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_size_text_color:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$200(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 413
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_size_text_size:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$300(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 414
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_size_text_selected_color:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$400(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 415
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_size_text_selected_size:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$500(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 416
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_size_start_content:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$702(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 417
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_size_end_content:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$802(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 418
    iget-object v1, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    :cond_a
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_folder_size_position:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-eq v1, v2, :cond_b

    .line 423
    new-instance v5, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;

    const/16 v6, 0xc

    invoke-direct {v5, p0, v6, v3}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;-><init>(Lcom/yftech/car/widget/media/text/MediaFileTextView;ILcom/yftech/car/widget/media/text/MediaFileTextView$1;)V

    .line 424
    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$102(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)I

    .line 425
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_folder_size_add_file:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mFolderAddFile:Z

    .line 426
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_folder_size_line_feed:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$602(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Z)Z

    .line 427
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_folder_size_text_color:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$200(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 428
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_folder_size_text_size:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$300(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 429
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_folder_size_text_selected_color:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$400(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 430
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_folder_size_text_selected_size:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$500(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 431
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_folder_size_start_content:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$702(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 432
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_folder_size_end_content:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$802(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 433
    iget-object v1, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    :cond_b
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_directory_file_size_position:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-eq v1, v2, :cond_c

    .line 437
    new-instance v5, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;

    const/16 v6, 0xd

    invoke-direct {v5, p0, v6, v3}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;-><init>(Lcom/yftech/car/widget/media/text/MediaFileTextView;ILcom/yftech/car/widget/media/text/MediaFileTextView$1;)V

    .line 438
    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$102(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)I

    .line 439
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_directory_file_size_line_feed:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$602(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Z)Z

    .line 440
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_directory_file_size_text_color:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$200(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 441
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_directory_file_size_text_size:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$300(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 442
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_directory_file_size_text_selected_color:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$400(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 443
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_directory_file_size_text_selected_size:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$500(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 444
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_directory_file_size_start_content:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$702(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 445
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_directory_file_size_end_content:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$802(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 446
    iget-object v1, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    :cond_c
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_directory_name_position:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-eq v1, v2, :cond_d

    .line 451
    new-instance v2, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;

    const/16 v5, 0xe

    invoke-direct {v2, p0, v5, v3}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;-><init>(Lcom/yftech/car/widget/media/text/MediaFileTextView;ILcom/yftech/car/widget/media/text/MediaFileTextView$1;)V

    .line 452
    invoke-static {v2, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$102(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)I

    .line 453
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_directory_name_line_feed:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v2, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$602(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Z)Z

    .line 454
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_directory_name_text_color:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-static {v2, p2}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$200(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 455
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_directory_name_text_size:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    invoke-static {v2, p2}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$300(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 456
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_directory_name_text_selected_color:I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-static {v2, p2}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$400(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 457
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_directory_name_text_selected_size:I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    invoke-static {v2, p2}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$500(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V

    .line 458
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_directory_name_start_content:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$702(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 459
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_directory_name_end_content:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$802(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 460
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mList:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    :cond_d
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_search_size_text_color:I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mSearchColor:I

    .line 468
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaTextView_search_size_text_size:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    if-lez p1, :cond_e

    .line 470
    new-instance p2, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {p2, p1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    iput-object p2, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mAbsoluteSearchSizeSpan:Landroid/text/style/AbsoluteSizeSpan;

    .line 473
    :cond_e
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mList:Ljava/util/List;

    sget-object p1, Lcom/yftech/car/widget/media/text/-$$Lambda$MediaFileTextView$hur1sIXB_8LO5ZfAt6Y9IRMlQuY;->INSTANCE:Lcom/yftech/car/widget/media/text/-$$Lambda$MediaFileTextView$hur1sIXB_8LO5ZfAt6Y9IRMlQuY;

    invoke-interface {p0, p1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-void
.end method

.method static synthetic lambda$init$0(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)I
    .locals 0

    .line 473
    invoke-static {p0}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$100(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)I

    move-result p0

    invoke-static {p1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$100(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public getPlayMediaFile()Lcom/yftech/car/media/data/entity/MediaFile;
    .locals 0

    .line 482
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mMediaFile:Lcom/yftech/car/media/data/entity/MediaFile;

    return-object p0
.end method

.method public isMediaFileInfo()Z
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public setSelected(Z)V
    .locals 0

    .line 809
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setSelected(Z)V

    return-void
.end method

.method public updateMediaFile(Lcom/yftech/car/media/data/entity/MediaFile;)V
    .locals 2

    .line 486
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/music/CarMusicManager;->getPlayPosition()I

    move-result v0

    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/media/music/CarMusicManager;->getPlayListSize()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView;->updateMediaFile(Lcom/yftech/car/media/data/entity/MediaFile;II)V

    return-void
.end method

.method public updateMediaFile(Lcom/yftech/car/media/data/entity/MediaFile;II)V
    .locals 1

    const/4 v0, 0x0

    .line 490
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/yftech/car/widget/media/text/MediaFileTextView;->updateMediaFile(Lcom/yftech/car/media/data/entity/MediaFile;IILjava/lang/String;)V

    return-void
.end method

.method public updateMediaFile(Lcom/yftech/car/media/data/entity/MediaFile;IILjava/lang/String;)V
    .locals 10

    .line 506
    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mMediaFile:Lcom/yftech/car/media/data/entity/MediaFile;

    if-eqz p1, :cond_1f

    .line 508
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_0

    .line 509
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 514
    :goto_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;

    const/4 v2, 0x0

    .line 518
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, -0x1

    if-ne v3, v4, :cond_3

    .line 519
    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$1400(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    const-string v3, "MediaFileTextView"

    .line 550
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateMediaFile: directory error info type == "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$1400(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 524
    :pswitch_0
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getFolder()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 527
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getSize()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 530
    :pswitch_2
    iget-boolean v2, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mFolderAddFile:Z

    if-eqz v2, :cond_2

    .line 531
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getSize()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getLastModified()J

    move-result-wide v6

    add-long/2addr v3, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 533
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getLastModified()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 537
    :pswitch_3
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getFolderPath()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 521
    :pswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 555
    :cond_3
    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$1400(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)I

    move-result v3

    packed-switch v3, :pswitch_data_1

    const-string v3, "MediaFileTextView"

    .line 633
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateMediaFile: error info type == "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$1400(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 622
    :pswitch_5
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getSize()J

    move-result-wide v2

    .line 624
    iget v4, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mDecimal:I

    invoke-static {v2, v3, v4}, Lcom/yftech/car/widget/media/utils/FileUtil;->fileSize(JI)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 619
    :pswitch_6
    invoke-direct {p0, p1, v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView;->handleLastModified(Lcom/yftech/car/media/data/entity/MediaFile;Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 585
    :pswitch_7
    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$900(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "HH:mm:ss"

    .line 586
    invoke-static {v1, v2}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$902(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 588
    :cond_4
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getDuration()J

    move-result-wide v2

    .line 590
    iget-object v4, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mDate:Ljava/util/Date;

    invoke-virtual {v4, v2, v3}, Ljava/util/Date;->setTime(J)V

    const-wide/32 v6, 0x36ee80

    cmp-long v2, v2, v6

    if-gez v2, :cond_6

    .line 592
    iget-object v2, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mDurationSimpleDateFormat:Ljava/text/SimpleDateFormat;

    if-nez v2, :cond_5

    .line 593
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$900(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v4}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v2, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mDurationSimpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 594
    iget-object v2, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mDurationSimpleDateFormat:Ljava/text/SimpleDateFormat;

    const-string v3, "GMT+00:00"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 596
    :cond_5
    iget-object v2, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mDurationSimpleDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 598
    :cond_6
    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$900(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "H"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 599
    iget-object v2, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mDurationSimpleDateFormat:Ljava/text/SimpleDateFormat;

    if-nez v2, :cond_7

    .line 600
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$900(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v4}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v2, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mDurationSimpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 601
    iget-object v2, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mDurationSimpleDateFormat:Ljava/text/SimpleDateFormat;

    const-string v3, "GMT+00:00"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 603
    :cond_7
    iget-object v2, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mDurationSimpleDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 605
    :cond_8
    iget-object v2, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mDurationSimpleDateFormat3:Ljava/text/SimpleDateFormat;

    if-nez v2, :cond_a

    .line 606
    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$900(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 607
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "HH:mm:ss"

    sget-object v4, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v4}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v2, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mDurationSimpleDateFormat3:Ljava/text/SimpleDateFormat;

    goto :goto_2

    .line 609
    :cond_9
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "H:mm:ss"

    sget-object v4, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v4}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v2, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mDurationSimpleDateFormat3:Ljava/text/SimpleDateFormat;

    .line 611
    :goto_2
    iget-object v2, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mDurationSimpleDateFormat3:Ljava/text/SimpleDateFormat;

    const-string v3, "GMT+00:00"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 613
    :cond_a
    iget-object v2, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mDurationSimpleDateFormat3:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :pswitch_8
    if-ne p3, v5, :cond_b

    .line 576
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 578
    :cond_b
    iget-object v2, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mNumberSplitContent:Ljava/lang/String;

    if-nez v2, :cond_c

    const-string v2, "/"

    .line 579
    iput-object v2, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mNumberSplitContent:Ljava/lang/String;

    .line 581
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mNumberSplitContent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 572
    :pswitch_9
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getFolder()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 569
    :pswitch_a
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getFileName()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 566
    :pswitch_b
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getGenre()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$1500(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/yftech/car/widget/media/text/MediaFileTextView;->getMediaFileInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 563
    :pswitch_c
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getAlbum()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$1500(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/yftech/car/widget/media/text/MediaFileTextView;->getMediaFileInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 560
    :pswitch_d
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getArtist()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$1500(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/yftech/car/widget/media/text/MediaFileTextView;->getMediaFileInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 557
    :pswitch_e
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$1500(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/yftech/car/widget/media/text/MediaFileTextView;->getMediaFileInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    :pswitch_f
    if-eqz v2, :cond_1

    .line 640
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0x21

    if-nez v3, :cond_17

    .line 641
    iget-object v3, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 643
    invoke-virtual {v2, p4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v5, :cond_d

    add-int/2addr v6, v3

    .line 649
    :cond_d
    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$700(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 650
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$700(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eq v6, v5, :cond_e

    .line 652
    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$700(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    .line 656
    :cond_e
    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$800(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_f

    .line 657
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$800(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 660
    :cond_f
    iget-object v7, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$600(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Z

    move-result v8

    if-eqz v8, :cond_10

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_10
    invoke-virtual {v7, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 661
    iget-object v2, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-eq v6, v5, :cond_14

    .line 663
    iget v5, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mSearchColor:I

    if-eqz v5, :cond_14

    .line 664
    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$600(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Z

    move-result v5

    if-eqz v5, :cond_11

    add-int/lit8 v6, v6, 0x1

    .line 667
    :cond_11
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v6

    .line 670
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/text/MediaFileTextView;->isSelected()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$1600(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v7

    if-eqz v7, :cond_12

    .line 671
    iget-object v7, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$1600(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v8

    invoke-virtual {v7, v8, v3, v6, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    .line 673
    :cond_12
    iget-object v7, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$1700(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v8

    invoke-virtual {v7, v8, v3, v6, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 677
    :goto_4
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    iget v8, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mSearchColor:I

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 678
    iget-object v8, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8, v7, v6, v5, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 680
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/text/MediaFileTextView;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$1600(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v6

    if-eqz v6, :cond_13

    .line 681
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$1600(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v7

    invoke-virtual {v7}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    goto :goto_5

    .line 683
    :cond_13
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$1700(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v7

    invoke-virtual {v7}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 685
    :goto_5
    iget-object v7, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7, v6, v5, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_6

    .line 689
    :cond_14
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/text/MediaFileTextView;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$1600(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v5

    if-eqz v5, :cond_15

    .line 690
    iget-object v5, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$1600(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v6

    invoke-virtual {v5, v6, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_6

    .line 692
    :cond_15
    iget-object v5, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$1700(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v6

    invoke-virtual {v5, v6, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 696
    :goto_6
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/text/MediaFileTextView;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$1800(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Landroid/text/style/AbsoluteSizeSpan;

    move-result-object v5

    if-eqz v5, :cond_16

    .line 697
    iget-object v5, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$1800(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Landroid/text/style/AbsoluteSizeSpan;

    move-result-object v1

    invoke-virtual {v5, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_1

    .line 699
    :cond_16
    iget-object v5, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$1900(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Landroid/text/style/AbsoluteSizeSpan;

    move-result-object v1

    invoke-virtual {v5, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_1

    .line 703
    :cond_17
    iget-object v3, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 704
    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$700(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_18

    .line 705
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$700(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 708
    :cond_18
    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$800(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_19

    .line 709
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$800(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 712
    :cond_19
    iget-object v5, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$600(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Z

    move-result v6

    if-eqz v6, :cond_1a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1a
    invoke-virtual {v5, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 713
    iget-object v2, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 715
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/text/MediaFileTextView;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$1600(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v5

    if-eqz v5, :cond_1b

    .line 716
    iget-object v5, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$1600(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v6

    invoke-virtual {v5, v6, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_7

    .line 718
    :cond_1b
    iget-object v5, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$1700(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v6

    invoke-virtual {v5, v6, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 721
    :goto_7
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/text/MediaFileTextView;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$1800(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Landroid/text/style/AbsoluteSizeSpan;

    move-result-object v5

    if-eqz v5, :cond_1c

    .line 722
    iget-object v5, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$1800(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Landroid/text/style/AbsoluteSizeSpan;

    move-result-object v1

    invoke-virtual {v5, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_1

    .line 724
    :cond_1c
    iget-object v5, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->access$1900(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Landroid/text/style/AbsoluteSizeSpan;

    move-result-object v1

    invoke-virtual {v5, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_1

    .line 731
    :cond_1d
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_1e

    .line 740
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/text/MediaFileTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_1e
    const-string p1, ""

    .line 742
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/text/MediaFileTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_1f
    const-string p0, "MediaFileTextView"

    const-string/jumbo p1, "updateMediaFile: file is null"

    .line 746
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_4
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method
