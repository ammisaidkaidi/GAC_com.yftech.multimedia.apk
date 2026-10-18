.class public Lcom/yftech/car/widget/media/text/DateTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "DateTextView.java"


# instance fields
.field private mPattern:Ljava/lang/String;

.field private mThisYearPattern:Ljava/lang/String;

.field private mToday:Ljava/lang/String;

.field private mYesterday:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 42
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 46
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/text/DateTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/text/DateTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 56
    sget-object v0, Lcom/yftech/car/widget/media/R$styleable;->DateTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 57
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->DateTextView_date_format_pattern:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/text/DateTextView;->mPattern:Ljava/lang/String;

    .line 58
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->DateTextView_date_format_this_year_pattern:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/text/DateTextView;->mThisYearPattern:Ljava/lang/String;

    .line 59
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->DateTextView_date_today:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/text/DateTextView;->mToday:Ljava/lang/String;

    .line 60
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->DateTextView_date_yesterday:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/text/DateTextView;->mYesterday:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFormatPattern()Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/DateTextView;->mPattern:Ljava/lang/String;

    return-object p0
.end method

.method public getThisYearPattern()Ljava/lang/String;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/DateTextView;->mThisYearPattern:Ljava/lang/String;

    return-object p0
.end method

.method public getToday()Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/DateTextView;->mToday:Ljava/lang/String;

    return-object p0
.end method

.method public getYesterday()Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/DateTextView;->mYesterday:Ljava/lang/String;

    return-object p0
.end method
