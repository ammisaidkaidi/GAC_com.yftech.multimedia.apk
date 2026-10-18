.class public Lcom/yftech/car/widget/media/radio/text/RadioText;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "RadioText.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final BAND:I = 0x2

.field private static final FREQ:I = 0x1

.field private static final HERTZ:I = 0x4

.field private static final NAME:I = 0x8

.field private static final TAG:Ljava/lang/String; = "RadioText"


# instance fields
.field private isTwoDecimalPlaces:Z

.field private final mBandDrawable:[Landroid/graphics/drawable/Drawable;

.field private mFreqAmDrawable:[Landroid/graphics/drawable/Drawable;

.field private mFreqFmDrawable:[Landroid/graphics/drawable/Drawable;

.field private mHertzAm:Ljava/lang/String;

.field private final mHertzDrawable:[Landroid/graphics/drawable/Drawable;

.field private mHertzFm:Ljava/lang/String;

.field private mHertzFm1:Ljava/lang/String;

.field private mRadioName:Ljava/lang/String;

.field private mTextFunctionEnum:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 132
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x3

    .line 101
    new-array v0, p1, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioText;->mBandDrawable:[Landroid/graphics/drawable/Drawable;

    .line 106
    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/text/RadioText;->mHertzDrawable:[Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x4

    .line 111
    new-array v0, p1, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioText;->mFreqFmDrawable:[Landroid/graphics/drawable/Drawable;

    .line 116
    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/text/RadioText;->mFreqAmDrawable:[Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010084

    .line 136
    invoke-direct {p0, p1, p2, v0}, Lcom/yftech/car/widget/media/radio/text/RadioText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 140
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x3

    .line 101
    new-array v0, p3, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioText;->mBandDrawable:[Landroid/graphics/drawable/Drawable;

    .line 106
    new-array v0, p3, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioText;->mHertzDrawable:[Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x4

    .line 111
    new-array v1, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/yftech/car/widget/media/radio/text/RadioText;->mFreqFmDrawable:[Landroid/graphics/drawable/Drawable;

    .line 116
    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioText;->mFreqAmDrawable:[Landroid/graphics/drawable/Drawable;

    .line 142
    sget-object v0, Lcom/yftech/car/widget/media/R$styleable;->RadioTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 144
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->RadioTextView_radio_text_function:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioText;->mTextFunctionEnum:I

    .line 146
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->RadioTextView_click_switch_band:I

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 148
    iget-object v3, p0, Lcom/yftech/car/widget/media/radio/text/RadioText;->mBandDrawable:[Landroid/graphics/drawable/Drawable;

    sget v4, Lcom/yftech/car/widget/media/R$styleable;->RadioTextView_fm_image:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v2

    .line 149
    iget-object v3, p0, Lcom/yftech/car/widget/media/radio/text/RadioText;->mBandDrawable:[Landroid/graphics/drawable/Drawable;

    sget v4, Lcom/yftech/car/widget/media/R$styleable;->RadioTextView_fm1_image:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v1

    .line 150
    iget-object v3, p0, Lcom/yftech/car/widget/media/radio/text/RadioText;->mBandDrawable:[Landroid/graphics/drawable/Drawable;

    sget v4, Lcom/yftech/car/widget/media/R$styleable;->RadioTextView_am_image:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 152
    iget-object v3, p0, Lcom/yftech/car/widget/media/radio/text/RadioText;->mFreqFmDrawable:[Landroid/graphics/drawable/Drawable;

    sget v4, Lcom/yftech/car/widget/media/R$styleable;->RadioTextView_freq_image:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v2

    .line 153
    iget-object v3, p0, Lcom/yftech/car/widget/media/radio/text/RadioText;->mFreqFmDrawable:[Landroid/graphics/drawable/Drawable;

    sget v4, Lcom/yftech/car/widget/media/R$styleable;->RadioTextView_freq_image1:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v1

    .line 154
    iget-object v3, p0, Lcom/yftech/car/widget/media/radio/text/RadioText;->mFreqFmDrawable:[Landroid/graphics/drawable/Drawable;

    sget v4, Lcom/yftech/car/widget/media/R$styleable;->RadioTextView_freq_image2:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    .line 155
    iget-object v3, p0, Lcom/yftech/car/widget/media/radio/text/RadioText;->mFreqFmDrawable:[Landroid/graphics/drawable/Drawable;

    sget v4, Lcom/yftech/car/widget/media/R$styleable;->RadioTextView_freq_image3:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, p3

    .line 157
    iget-object v3, p0, Lcom/yftech/car/widget/media/radio/text/RadioText;->mFreqAmDrawable:[Landroid/graphics/drawable/Drawable;

    sget v4, Lcom/yftech/car/widget/media/R$styleable;->RadioTextView_freq_am_image:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v2

    .line 158
    iget-object v3, p0, Lcom/yftech/car/widget/media/radio/text/RadioText;->mFreqAmDrawable:[Landroid/graphics/drawable/Drawable;

    sget v4, Lcom/yftech/car/widget/media/R$styleable;->RadioTextView_freq_am_image1:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v1

    .line 159
    iget-object v3, p0, Lcom/yftech/car/widget/media/radio/text/RadioText;->mFreqAmDrawable:[Landroid/graphics/drawable/Drawable;

    sget v4, Lcom/yftech/car/widget/media/R$styleable;->RadioTextView_freq_am_image2:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    .line 160
    iget-object v3, p0, Lcom/yftech/car/widget/media/radio/text/RadioText;->mFreqAmDrawable:[Landroid/graphics/drawable/Drawable;

    sget v4, Lcom/yftech/car/widget/media/R$styleable;->RadioTextView_freq_am_image3:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, p3

    .line 164
    iget-object p3, p0, Lcom/yftech/car/widget/media/radio/text/RadioText;->mHertzDrawable:[Landroid/graphics/drawable/Drawable;

    sget v3, Lcom/yftech/car/widget/media/R$styleable;->RadioTextView_fm_hertz_image:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, p3, v2

    .line 165
    iget-object p3, p0, Lcom/yftech/car/widget/media/radio/text/RadioText;->mHertzDrawable:[Landroid/graphics/drawable/Drawable;

    sget v3, Lcom/yftech/car/widget/media/R$styleable;->RadioTextView_fm1_hertz_image:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, p3, v1

    .line 166
    iget-object p3, p0, Lcom/yftech/car/widget/media/radio/text/RadioText;->mHertzDrawable:[Landroid/graphics/drawable/Drawable;

    sget v3, Lcom/yftech/car/widget/media/R$styleable;->RadioTextView_am_hertz_image:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, p3, v5

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0, p0}, Lcom/yftech/car/widget/media/radio/text/RadioText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    :cond_0
    sget p3, Lcom/yftech/car/widget/media/R$styleable;->RadioTextView_hertz_fm_text:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/yftech/car/widget/media/radio/text/RadioText;->mHertzFm:Ljava/lang/String;

    .line 173
    iget-object p3, p0, Lcom/yftech/car/widget/media/radio/text/RadioText;->mHertzFm:Ljava/lang/String;

    if-nez p3, :cond_1

    .line 174
    sget p3, Lcom/yftech/car/widget/media/R$string;->hertz_fm:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/yftech/car/widget/media/radio/text/RadioText;->mHertzFm:Ljava/lang/String;

    .line 177
    :cond_1
    sget p3, Lcom/yftech/car/widget/media/R$styleable;->RadioTextView_hertz_fm1_text:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/yftech/car/widget/media/radio/text/RadioText;->mHertzFm1:Ljava/lang/String;

    .line 178
    iget-object p3, p0, Lcom/yftech/car/widget/media/radio/text/RadioText;->mHertzFm1:Ljava/lang/String;

    if-nez p3, :cond_2

    .line 179
    sget p3, Lcom/yftech/car/widget/media/R$string;->hertz_fm1:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/yftech/car/widget/media/radio/text/RadioText;->mHertzFm1:Ljava/lang/String;

    .line 182
    :cond_2
    sget p3, Lcom/yftech/car/widget/media/R$styleable;->RadioTextView_hertz_am_text:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/yftech/car/widget/media/radio/text/RadioText;->mHertzAm:Ljava/lang/String;

    .line 183
    iget-object p3, p0, Lcom/yftech/car/widget/media/radio/text/RadioText;->mHertzAm:Ljava/lang/String;

    if-nez p3, :cond_3

    .line 184
    sget p3, Lcom/yftech/car/widget/media/R$string;->hertz_am:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/yftech/car/widget/media/radio/text/RadioText;->mHertzAm:Ljava/lang/String;

    .line 187
    :cond_3
    sget p3, Lcom/yftech/car/widget/media/R$styleable;->RadioTextView_radio_unknown_name:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/radio/text/RadioText;->mRadioName:Ljava/lang/String;

    .line 188
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/text/RadioText;->mRadioName:Ljava/lang/String;

    if-nez p2, :cond_4

    .line 189
    sget p2, Lcom/yftech/car/widget/media/R$string;->radio_unknown_name:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/text/RadioText;->mRadioName:Ljava/lang/String;

    .line 192
    :cond_4
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/yftech/car/widget/media/manager/RadioManager;->getStep(I)I

    move-result p1

    .line 193
    rem-int/lit8 p1, p1, 0x64

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/radio/text/RadioText;->isTwoDecimalPlaces:Z

    return-void
.end method

.method private getFmFreqValue(I)Ljava/lang/String;
    .locals 4

    .line 273
    div-int/lit8 v0, p1, 0x64

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v2, p1

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/yftech/car/widget/media/radio/text/RadioText;->isTwoDecimalPlaces:Z

    if-eqz p0, :cond_0

    mul-int/lit8 v0, v0, 0x64

    if-ne v0, p1, :cond_0

    const-string p0, "0"

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 286
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->getBand()I

    move-result p0

    if-nez p0, :cond_0

    .line 288
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/manager/RadioManager;->setBand(I)I

    goto :goto_0

    .line 290
    :cond_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/manager/RadioManager;->setBand(I)I

    :goto_0
    return-void
.end method

.method public setRadioText(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V
    .locals 6

    .line 198
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result v0

    .line 199
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result v1

    const-string v2, ""

    if-ltz v0, :cond_9

    .line 201
    iget-object v3, p0, Lcom/yftech/car/widget/media/radio/text/RadioText;->mBandDrawable:[Landroid/graphics/drawable/Drawable;

    array-length v3, v3

    if-ge v0, v3, :cond_9

    .line 202
    iget v3, p0, Lcom/yftech/car/widget/media/radio/text/RadioText;->mTextFunctionEnum:I

    const/4 v4, 0x4

    const/4 v5, 0x2

    if-eq v3, v4, :cond_5

    const/16 v4, 0x8

    if-eq v3, v4, :cond_4

    packed-switch v3, :pswitch_data_0

    const-string p1, "RadioText"

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRadioText: no mTextFunctionEnum=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/car/widget/media/radio/text/RadioText;->mTextFunctionEnum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 204
    :pswitch_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/text/RadioText;->mBandDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, v0

    if-eqz p1, :cond_0

    .line 205
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/text/RadioText;->mBandDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/radio/text/RadioText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_2

    if-eq v0, v5, :cond_1

    const-string v2, "FM1"

    goto :goto_1

    :cond_1
    const-string v2, "AM"

    goto :goto_1

    :cond_2
    const-string v2, "FM"

    goto :goto_1

    :pswitch_1
    if-ne v0, v5, :cond_3

    .line 222
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v2, p1

    goto :goto_1

    :cond_3
    invoke-direct {p0, v1}, Lcom/yftech/car/widget/media/radio/text/RadioText;->getFmFreqValue(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 243
    :cond_4
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getName()Ljava/lang/String;

    move-result-object v2

    .line 244
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 245
    iget-object v2, p0, Lcom/yftech/car/widget/media/radio/text/RadioText;->mRadioName:Ljava/lang/String;

    goto :goto_1

    .line 225
    :cond_5
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/text/RadioText;->mHertzDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, v0

    if-eqz p1, :cond_6

    .line 226
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/text/RadioText;->mHertzDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/radio/text/RadioText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_8

    if-eq v0, v5, :cond_7

    .line 236
    iget-object v2, p0, Lcom/yftech/car/widget/media/radio/text/RadioText;->mHertzFm1:Ljava/lang/String;

    goto :goto_1

    .line 233
    :cond_7
    iget-object v2, p0, Lcom/yftech/car/widget/media/radio/text/RadioText;->mHertzAm:Ljava/lang/String;

    goto :goto_1

    .line 230
    :cond_8
    iget-object v2, p0, Lcom/yftech/car/widget/media/radio/text/RadioText;->mHertzFm:Ljava/lang/String;

    .line 253
    :cond_9
    :goto_1
    invoke-virtual {p0, v2}, Lcom/yftech/car/widget/media/radio/text/RadioText;->setText(Ljava/lang/CharSequence;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
