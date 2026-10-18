.class public Lcom/yftech/car/widget/media/radio/text/RadioDataText;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "RadioDataText.java"


# static fields
.field private static final LIST_SIZE:I


# instance fields
.field private mRadioDataListEmptyHide:Z

.field private mRadioDataListId:I

.field private mRadioListSizeEndContent:Ljava/lang/String;

.field private mRadioListSizeStartContent:Ljava/lang/String;

.field private mType:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 45
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 34
    iput p1, p0, Lcom/yftech/car/widget/media/radio/text/RadioDataText;->mType:I

    const/4 p1, -0x1

    .line 36
    iput p1, p0, Lcom/yftech/car/widget/media/radio/text/RadioDataText;->mRadioDataListId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 49
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioDataText;->mType:I

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioDataText;->mRadioDataListId:I

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/radio/text/RadioDataText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 34
    iput p3, p0, Lcom/yftech/car/widget/media/radio/text/RadioDataText;->mType:I

    const/4 p3, -0x1

    .line 36
    iput p3, p0, Lcom/yftech/car/widget/media/radio/text/RadioDataText;->mRadioDataListId:I

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/radio/text/RadioDataText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 59
    sget-object v0, Lcom/yftech/car/widget/media/R$styleable;->RadioDataText:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 61
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->RadioDataText_radio_data_list_id:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/radio/text/RadioDataText;->mRadioDataListId:I

    .line 63
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->RadioDataText_radio_list_size_start_content:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/radio/text/RadioDataText;->mRadioListSizeStartContent:Ljava/lang/String;

    .line 65
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->RadioDataText_radio_list_size_end_content:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/radio/text/RadioDataText;->mRadioListSizeEndContent:Ljava/lang/String;

    .line 67
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->RadioDataText_radio_data_list_empty_hide:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/yftech/car/widget/media/radio/text/RadioDataText;->mRadioDataListEmptyHide:Z

    return-void
.end method


# virtual methods
.method public getRadioDataListId()I
    .locals 0

    .line 76
    iget p0, p0, Lcom/yftech/car/widget/media/radio/text/RadioDataText;->mRadioDataListId:I

    return p0
.end method

.method public getType()I
    .locals 0

    .line 72
    iget p0, p0, Lcom/yftech/car/widget/media/radio/text/RadioDataText;->mType:I

    return p0
.end method

.method public isRadioDataListId(I)Z
    .locals 2

    .line 80
    iget v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioDataText;->mRadioDataListId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget p0, p0, Lcom/yftech/car/widget/media/radio/text/RadioDataText;->mRadioDataListId:I

    if-ne p0, p1, :cond_0

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

.method public setListSize(I)V
    .locals 2

    .line 84
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioDataText;->mRadioDataListEmptyHide:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 86
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/radio/text/RadioDataText;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 91
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioDataText;->mRadioListSizeStartContent:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yftech/car/widget/media/radio/text/RadioDataText;->mRadioListSizeStartContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioDataText;->mRadioListSizeEndContent:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/text/RadioDataText;->mRadioListSizeEndContent:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 99
    :cond_2
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/radio/text/RadioDataText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
