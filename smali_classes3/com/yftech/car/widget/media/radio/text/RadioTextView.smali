.class public Lcom/yftech/car/widget/media/radio/text/RadioTextView;
.super Landroid/widget/LinearLayout;
.source "RadioTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final BAND:I = 0x2

.field private static final FREQ:I = 0x1

.field private static final HERTZ:I = 0x4

.field private static final TAG:Ljava/lang/String; = "RadioTextView"


# instance fields
.field private isShowImage:Z

.field private isTwoDecimalPlaces:Z

.field private mBandAbsoluteSizeSpan:Landroid/text/style/AbsoluteSizeSpan;

.field private mBandColorSpan:Landroid/text/style/ForegroundColorSpan;

.field private final mBandDrawable:[Landroid/graphics/drawable/Drawable;

.field private mBandImage:Landroid/widget/ImageView;

.field private mFreqAbsoluteSizeSpan:Landroid/text/style/AbsoluteSizeSpan;

.field private mFreqAmDrawable:[Landroid/graphics/drawable/Drawable;

.field private mFreqColorSpan:Landroid/text/style/ForegroundColorSpan;

.field private mFreqDrawablePoint:Landroid/graphics/drawable/Drawable;

.field private mFreqFmDrawable:[Landroid/graphics/drawable/Drawable;

.field private mFreqImage:[Landroid/widget/ImageView;

.field private mHertzAbsoluteSizeSpan:Landroid/text/style/AbsoluteSizeSpan;

.field private mHertzAm:Ljava/lang/String;

.field private mHertzColorSpan:Landroid/text/style/ForegroundColorSpan;

.field private final mHertzDrawable:[Landroid/graphics/drawable/Drawable;

.field private mHertzFm:Ljava/lang/String;

.field private mHertzFm1:Ljava/lang/String;

.field private mHertzImage:Landroid/widget/ImageView;

.field private mRadioTextView:Landroid/widget/TextView;

.field private mSpannable:Landroid/text/SpannableStringBuilder;

.field private mTextFunctionFlag:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 198
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 158
    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqImage:[Landroid/widget/ImageView;

    const/4 p1, 0x3

    .line 173
    new-array v0, p1, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mBandDrawable:[Landroid/graphics/drawable/Drawable;

    .line 178
    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mHertzDrawable:[Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x4

    .line 183
    new-array v0, p1, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqFmDrawable:[Landroid/graphics/drawable/Drawable;

    .line 188
    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqAmDrawable:[Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const v0, 0x1010084

    .line 202
    invoke-direct {p0, p1, p2, v0}, Lcom/yftech/car/widget/media/radio/text/RadioTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 206
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 158
    iput-object p3, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqImage:[Landroid/widget/ImageView;

    const/4 p3, 0x3

    .line 173
    new-array v0, p3, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mBandDrawable:[Landroid/graphics/drawable/Drawable;

    .line 178
    new-array v0, p3, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mHertzDrawable:[Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x4

    .line 183
    new-array v1, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqFmDrawable:[Landroid/graphics/drawable/Drawable;

    .line 188
    new-array v1, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqAmDrawable:[Landroid/graphics/drawable/Drawable;

    .line 208
    sget-object v1, Lcom/yftech/car/widget/media/R$styleable;->RadioTextView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 210
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->RadioTextView_text_function:I

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mTextFunctionFlag:I

    const v1, 0x106000b

    .line 214
    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 218
    sget v3, Lcom/yftech/car/widget/media/R$styleable;->RadioTextView_freq_text_color:I

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 219
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v4, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 220
    sget v3, Lcom/yftech/car/widget/media/R$styleable;->RadioTextView_freq_text_size:I

    const/16 v4, 0x14

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 221
    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v5, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    iput-object v5, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqAbsoluteSizeSpan:Landroid/text/style/AbsoluteSizeSpan;

    .line 223
    sget v3, Lcom/yftech/car/widget/media/R$styleable;->RadioTextView_band_text_color:I

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 224
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v5, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mBandColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 225
    sget v3, Lcom/yftech/car/widget/media/R$styleable;->RadioTextView_band_text_size:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 226
    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v5, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    iput-object v5, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mBandAbsoluteSizeSpan:Landroid/text/style/AbsoluteSizeSpan;

    .line 228
    sget v3, Lcom/yftech/car/widget/media/R$styleable;->RadioTextView_hertz_text_color:I

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 229
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v3, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mHertzColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 230
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->RadioTextView_hertz_text_size:I

    invoke-virtual {p2, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 231
    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v3, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    iput-object v3, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mHertzAbsoluteSizeSpan:Landroid/text/style/AbsoluteSizeSpan;

    .line 233
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->RadioTextView_click_switch_band:I

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 235
    iget-object v4, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mBandDrawable:[Landroid/graphics/drawable/Drawable;

    sget v5, Lcom/yftech/car/widget/media/R$styleable;->RadioTextView_fm_image:I

    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v3

    .line 236
    iget-object v4, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mBandDrawable:[Landroid/graphics/drawable/Drawable;

    sget v5, Lcom/yftech/car/widget/media/R$styleable;->RadioTextView_fm1_image:I

    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v2

    .line 237
    iget-object v4, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mBandDrawable:[Landroid/graphics/drawable/Drawable;

    sget v5, Lcom/yftech/car/widget/media/R$styleable;->RadioTextView_am_image:I

    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 239
    iget-object v4, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqFmDrawable:[Landroid/graphics/drawable/Drawable;

    sget v5, Lcom/yftech/car/widget/media/R$styleable;->RadioTextView_freq_image:I

    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v3

    .line 240
    iget-object v4, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqFmDrawable:[Landroid/graphics/drawable/Drawable;

    sget v5, Lcom/yftech/car/widget/media/R$styleable;->RadioTextView_freq_image1:I

    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v2

    .line 241
    iget-object v4, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqFmDrawable:[Landroid/graphics/drawable/Drawable;

    sget v5, Lcom/yftech/car/widget/media/R$styleable;->RadioTextView_freq_image2:I

    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v6

    .line 242
    iget-object v4, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqFmDrawable:[Landroid/graphics/drawable/Drawable;

    sget v5, Lcom/yftech/car/widget/media/R$styleable;->RadioTextView_freq_image3:I

    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, p3

    .line 244
    iget-object v4, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqAmDrawable:[Landroid/graphics/drawable/Drawable;

    sget v5, Lcom/yftech/car/widget/media/R$styleable;->RadioTextView_freq_am_image:I

    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v3

    .line 245
    iget-object v4, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqAmDrawable:[Landroid/graphics/drawable/Drawable;

    sget v5, Lcom/yftech/car/widget/media/R$styleable;->RadioTextView_freq_am_image1:I

    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v2

    .line 246
    iget-object v4, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqAmDrawable:[Landroid/graphics/drawable/Drawable;

    sget v5, Lcom/yftech/car/widget/media/R$styleable;->RadioTextView_freq_am_image2:I

    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v6

    .line 247
    iget-object v4, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqAmDrawable:[Landroid/graphics/drawable/Drawable;

    sget v5, Lcom/yftech/car/widget/media/R$styleable;->RadioTextView_freq_am_image3:I

    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, p3

    .line 249
    sget p3, Lcom/yftech/car/widget/media/R$styleable;->RadioTextView_freq_image_point:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqDrawablePoint:Landroid/graphics/drawable/Drawable;

    .line 251
    iget-object p3, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mHertzDrawable:[Landroid/graphics/drawable/Drawable;

    sget v4, Lcom/yftech/car/widget/media/R$styleable;->RadioTextView_fm_hertz_image:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, p3, v3

    .line 252
    iget-object p3, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mHertzDrawable:[Landroid/graphics/drawable/Drawable;

    sget v4, Lcom/yftech/car/widget/media/R$styleable;->RadioTextView_fm1_hertz_image:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, p3, v2

    .line 253
    iget-object p3, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mHertzDrawable:[Landroid/graphics/drawable/Drawable;

    sget v4, Lcom/yftech/car/widget/media/R$styleable;->RadioTextView_am_hertz_image:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, p3, v6

    .line 256
    iget-object p3, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqDrawablePoint:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_4

    .line 257
    iget p3, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mTextFunctionFlag:I

    and-int/2addr p3, v6

    if-eqz p3, :cond_0

    iget p3, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mTextFunctionFlag:I

    and-int/2addr p3, v6

    if-lez p3, :cond_2

    iget-object p3, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mBandDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object p3, p3, v3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mBandDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object p3, p3, v6

    if-eqz p3, :cond_2

    :cond_0
    iget p3, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mTextFunctionFlag:I

    and-int/2addr p3, v2

    if-eqz p3, :cond_1

    iget p3, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mTextFunctionFlag:I

    and-int/2addr p3, v2

    if-lez p3, :cond_2

    iget-object p3, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqFmDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object p3, p3, v3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqAmDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object p3, p3, v3

    if-eqz p3, :cond_2

    :cond_1
    iget p3, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mTextFunctionFlag:I

    and-int/2addr p3, v0

    if-eqz p3, :cond_3

    iget p3, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mTextFunctionFlag:I

    and-int/2addr p3, v0

    if-lez p3, :cond_2

    iget-object p3, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mHertzDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object p3, p3, v3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mHertzDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object p3, p3, v6

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    move p3, v3

    goto :goto_1

    :cond_3
    :goto_0
    move p3, v2

    :goto_1
    iput-boolean p3, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->isShowImage:Z

    .line 262
    :cond_4
    iget-boolean p3, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->isShowImage:Z

    if-nez p3, :cond_5

    .line 263
    new-instance p3, Landroid/widget/TextView;

    invoke-direct {p3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mRadioTextView:Landroid/widget/TextView;

    :cond_5
    if-eqz v1, :cond_6

    .line 267
    invoke-virtual {p0, p0}, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    :cond_6
    sget p3, Lcom/yftech/car/widget/media/R$styleable;->RadioTextView_hertz_fm_text:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mHertzFm:Ljava/lang/String;

    .line 271
    iget-object p3, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mHertzFm:Ljava/lang/String;

    if-nez p3, :cond_7

    .line 272
    sget p3, Lcom/yftech/car/widget/media/R$string;->hertz_fm:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mHertzFm:Ljava/lang/String;

    .line 275
    :cond_7
    sget p3, Lcom/yftech/car/widget/media/R$styleable;->RadioTextView_hertz_fm1_text:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mHertzFm1:Ljava/lang/String;

    .line 276
    iget-object p3, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mHertzFm1:Ljava/lang/String;

    if-nez p3, :cond_8

    .line 277
    sget p3, Lcom/yftech/car/widget/media/R$string;->hertz_fm1:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mHertzFm1:Ljava/lang/String;

    .line 280
    :cond_8
    sget p3, Lcom/yftech/car/widget/media/R$styleable;->RadioTextView_hertz_am_text:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mHertzAm:Ljava/lang/String;

    .line 281
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mHertzAm:Ljava/lang/String;

    if-nez p2, :cond_9

    .line 282
    sget p2, Lcom/yftech/car/widget/media/R$string;->hertz_am:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mHertzAm:Ljava/lang/String;

    .line 285
    :cond_9
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/yftech/car/widget/media/manager/RadioManager;->getStep(I)I

    move-result p1

    .line 286
    rem-int/lit8 p1, p1, 0x64

    if-eqz p1, :cond_a

    goto :goto_2

    :cond_a
    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->isTwoDecimalPlaces:Z

    return-void
.end method

.method private getFmFreqValue(I)Ljava/lang/String;
    .locals 4

    .line 494
    div-int/lit8 v0, p1, 0x64

    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v2, p1

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->isTwoDecimalPlaces:Z

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

.method private getImageFreqPos(II)I
    .locals 0

    .line 479
    div-int/2addr p1, p2

    .line 481
    div-int/lit8 p0, p1, 0xa

    mul-int/lit8 p0, p0, 0xa

    sub-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 506
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->getBand()I

    move-result p0

    if-nez p0, :cond_0

    .line 508
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/manager/RadioManager;->setBand(I)I

    goto :goto_0

    .line 510
    :cond_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/manager/RadioManager;->setBand(I)I

    :goto_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 291
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 299
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 300
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mRadioTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mRadioTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->addView(Landroid/view/View;)V

    .line 304
    :cond_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/manager/RadioManager;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 305
    invoke-virtual {v0}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 306
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->setRadioText(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V

    :cond_1
    return-void
.end method

.method public setRadioText(II)V
    .locals 11

    const-string v0, "RadioTextView"

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRadioText: band=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",freq=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mTextFunctionFlag=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mTextFunctionFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",isShowImage=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->isShowImage:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p1, :cond_1a

    .line 316
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mBandDrawable:[Landroid/graphics/drawable/Drawable;

    array-length v0, v0

    if-ge p1, v0, :cond_1a

    if-lez p2, :cond_1a

    .line 317
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_0

    .line 318
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 323
    :goto_0
    iget v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mTextFunctionFlag:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/16 v3, 0x21

    if-lez v0, :cond_5

    .line 325
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->isShowImage:Z

    if-eqz v0, :cond_2

    .line 326
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mBandImage:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 327
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mBandImage:Landroid/widget/ImageView;

    .line 328
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mBandImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->addView(Landroid/view/View;)V

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mBandImage:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mBandDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, p1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_3

    const-string v0, "FM1"

    goto :goto_1

    :cond_3
    const-string v0, "AM"

    goto :goto_1

    :cond_4
    const-string v0, "FM"

    .line 345
    :goto_1
    iget-object v4, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 347
    iget-object v4, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mBandColorSpan:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v2, v6, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 348
    iget-object v4, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mBandAbsoluteSizeSpan:Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v4, v5, v2, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 353
    :cond_5
    :goto_2
    iget v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mTextFunctionFlag:I

    const/4 v4, 0x1

    and-int/2addr v0, v4

    if-lez v0, :cond_13

    .line 355
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->isShowImage:Z

    if-eqz v0, :cond_10

    .line 357
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqImage:[Landroid/widget/ImageView;

    const/4 v5, 0x5

    if-nez v0, :cond_6

    .line 358
    new-array v0, v5, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqImage:[Landroid/widget/ImageView;

    move v0, v2

    .line 359
    :goto_3
    iget-object v6, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqImage:[Landroid/widget/ImageView;

    array-length v6, v6

    if-ge v0, v6, :cond_6

    .line 360
    iget-object v6, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqImage:[Landroid/widget/ImageView;

    new-instance v7, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v7, v6, v0

    .line 361
    iget-object v6, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqImage:[Landroid/widget/ImageView;

    aget-object v6, v6, v0

    invoke-virtual {p0, v6}, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    const/16 v0, 0x64

    const/4 v6, 0x0

    const/4 v7, 0x3

    if-ne p1, v1, :cond_b

    .line 366
    iget-object v8, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqAmDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v8, v8, v2

    check-cast v8, Landroid/graphics/drawable/AnimationDrawable;

    .line 368
    iget-object v9, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqImage:[Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqImage:[Landroid/widget/ImageView;

    array-length v10, v10

    sub-int/2addr v10, v4

    aget-object v9, v9, v10

    invoke-direct {p0, p2, v4}, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->getImageFreqPos(II)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 370
    iget-object v9, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqAmDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v9, v9, v4

    if-eqz v9, :cond_7

    .line 371
    iget-object v8, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqAmDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v8, v8, v4

    check-cast v8, Landroid/graphics/drawable/AnimationDrawable;

    .line 373
    :cond_7
    iget-object v9, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqImage:[Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqImage:[Landroid/widget/ImageView;

    array-length v10, v10

    sub-int/2addr v10, v1

    aget-object v9, v9, v10

    const/16 v10, 0xa

    invoke-direct {p0, p2, v10}, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->getImageFreqPos(II)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 375
    iget-object v9, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqAmDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v9, v9, v1

    if-eqz v9, :cond_8

    .line 376
    iget-object v8, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqAmDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v8, v8, v1

    check-cast v8, Landroid/graphics/drawable/AnimationDrawable;

    .line 378
    :cond_8
    iget-object v9, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqImage:[Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqImage:[Landroid/widget/ImageView;

    array-length v10, v10

    sub-int/2addr v10, v7

    aget-object v9, v9, v10

    invoke-direct {p0, p2, v0}, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->getImageFreqPos(II)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x3e7

    if-le p2, v0, :cond_a

    .line 381
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqAmDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object p2, p2, v7

    if-eqz p2, :cond_9

    .line 382
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqAmDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object p2, p2, v7

    move-object v8, p2

    check-cast v8, Landroid/graphics/drawable/AnimationDrawable;

    .line 384
    :cond_9
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqImage:[Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqImage:[Landroid/widget/ImageView;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x4

    aget-object p2, p2, v0

    invoke-virtual {v8, v4}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 386
    :cond_a
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqImage:[Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqImage:[Landroid/widget/ImageView;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x4

    aget-object p2, p2, v0

    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 388
    :goto_4
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqImage:[Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqImage:[Landroid/widget/ImageView;

    array-length v0, v0

    sub-int/2addr v0, v5

    aget-object p2, p2, v0

    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    .line 390
    :cond_b
    iget-object v8, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqFmDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v8, v8, v2

    check-cast v8, Landroid/graphics/drawable/AnimationDrawable;

    .line 392
    iget-object v9, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqImage:[Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqImage:[Landroid/widget/ImageView;

    array-length v10, v10

    sub-int/2addr v10, v4

    aget-object v9, v9, v10

    invoke-direct {p0, p2, v0}, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->getImageFreqPos(II)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 394
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqImage:[Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqImage:[Landroid/widget/ImageView;

    array-length v9, v9

    sub-int/2addr v9, v1

    aget-object v0, v0, v9

    iget-object v9, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqDrawablePoint:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 396
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqFmDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v4

    if-eqz v0, :cond_c

    .line 397
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqFmDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v4

    move-object v8, v0

    check-cast v8, Landroid/graphics/drawable/AnimationDrawable;

    .line 399
    :cond_c
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqImage:[Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqImage:[Landroid/widget/ImageView;

    array-length v9, v9

    sub-int/2addr v9, v7

    aget-object v0, v0, v9

    const/16 v9, 0x3e8

    invoke-direct {p0, p2, v9}, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->getImageFreqPos(II)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 401
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqFmDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v1

    if-eqz v0, :cond_d

    .line 402
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqFmDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v1

    move-object v8, v0

    check-cast v8, Landroid/graphics/drawable/AnimationDrawable;

    .line 404
    :cond_d
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqImage:[Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqImage:[Landroid/widget/ImageView;

    array-length v9, v9

    add-int/lit8 v9, v9, -0x4

    aget-object v0, v0, v9

    const/16 v9, 0x2710

    invoke-direct {p0, p2, v9}, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->getImageFreqPos(II)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x1869f

    if-le p2, v0, :cond_f

    .line 407
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqFmDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object p2, p2, v7

    if-eqz p2, :cond_e

    .line 408
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqFmDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object p2, p2, v7

    move-object v8, p2

    check-cast v8, Landroid/graphics/drawable/AnimationDrawable;

    .line 410
    :cond_e
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqImage:[Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqImage:[Landroid/widget/ImageView;

    array-length v0, v0

    sub-int/2addr v0, v5

    aget-object p2, p2, v0

    invoke-virtual {v8, v4}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 412
    :cond_f
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqImage:[Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqImage:[Landroid/widget/ImageView;

    array-length v0, v0

    sub-int/2addr v0, v5

    aget-object p2, p2, v0

    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 417
    :cond_10
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-ne p1, v1, :cond_11

    .line 418
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_5

    :cond_11
    invoke-direct {p0, p2}, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->getFmFreqValue(I)Ljava/lang/String;

    move-result-object p2

    .line 419
    :goto_5
    iget-object v4, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 420
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 421
    iget-object v4, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqColorSpan:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 422
    iget-object v4, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqAbsoluteSizeSpan:Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr v0, p2

    invoke-virtual {v4, v5, v6, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_6

    .line 424
    :cond_12
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqColorSpan:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v4, v2, v5, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 425
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mFreqAbsoluteSizeSpan:Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {v0, v4, v2, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 433
    :cond_13
    :goto_6
    iget p2, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mTextFunctionFlag:I

    and-int/lit8 p2, p2, 0x4

    if-lez p2, :cond_19

    .line 435
    iget-boolean p2, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->isShowImage:Z

    if-eqz p2, :cond_15

    .line 436
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mHertzImage:Landroid/widget/ImageView;

    if-nez p2, :cond_14

    .line 437
    new-instance p2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mHertzImage:Landroid/widget/ImageView;

    .line 438
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mHertzImage:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->addView(Landroid/view/View;)V

    .line 440
    :cond_14
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mHertzImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mHertzDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object p1, v0, p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    .line 442
    :cond_15
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_17

    if-eq p1, v1, :cond_16

    .line 452
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mHertzFm1:Ljava/lang/String;

    goto :goto_7

    .line 449
    :cond_16
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mHertzAm:Ljava/lang/String;

    goto :goto_7

    .line 446
    :cond_17
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mHertzFm:Ljava/lang/String;

    .line 456
    :goto_7
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 458
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 459
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mHertzColorSpan:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 460
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mHertzAbsoluteSizeSpan:Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p2, p1

    invoke-virtual {v0, v1, v2, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_8

    .line 462
    :cond_18
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mHertzColorSpan:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2, v0, v2, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 463
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mHertzAbsoluteSizeSpan:Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, v0, v2, p1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 469
    :cond_19
    :goto_8
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mRadioTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_1b

    .line 470
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mRadioTextView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_1a
    const-string p0, "RadioTextView"

    const-string/jumbo p1, "setRadioText: error band or freq"

    .line 473
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    :goto_9
    return-void
.end method

.method public setRadioText(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V
    .locals 1

    .line 311
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result v0

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->setRadioText(II)V

    return-void
.end method
