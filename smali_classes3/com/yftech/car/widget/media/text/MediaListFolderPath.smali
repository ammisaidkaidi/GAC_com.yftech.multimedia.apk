.class public Lcom/yftech/car/widget/media/text/MediaListFolderPath;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "MediaListFolderPath.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaListFolderPath"


# instance fields
.field private mAbsoluteSizeSelectedSpan:Landroid/text/style/AbsoluteSizeSpan;

.field private mAbsoluteSizeSpan:Landroid/text/style/AbsoluteSizeSpan;

.field private mClickBack:Z

.field private mClickFolder:Z

.field private mColorSelectedSpan:Landroid/text/style/ForegroundColorSpan;

.field private mColorSpan:Landroid/text/style/ForegroundColorSpan;

.field private mCurrentPathText:Ljava/lang/String;

.field private mDirectoryInvisible:Z

.field private mDirectoryInvisibleValue:I

.field private mDirectoryVisible:Z

.field private mEndContent:Ljava/lang/String;

.field private mListFolderPathShowFolderPath:Z

.field private mListId:I

.field private mRootDirectoryName:Ljava/lang/String;

.field private mSelectedColor:I

.field private mSelectedSize:I

.field private mSpannable:Landroid/text/SpannableStringBuilder;

.field private mStartContent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p1, p2, v0}, Lcom/yftech/car/widget/media/text/MediaListFolderPath;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 118
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p3

    .line 121
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    .line 124
    sget-object v1, Lcom/yftech/car/widget/media/R$styleable;->MediaListFolderPath:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 126
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaListFolderPath_ListFolderPath_selected_color:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mSelectedColor:I

    .line 127
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaListFolderPath_ListFolderPath_selected_size:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mSelectedSize:I

    .line 128
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaListFolderPath_ListFolderPath_click_back:I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mClickBack:Z

    .line 129
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaListFolderPath_ListFolderPath_click_folder:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mClickFolder:Z

    .line 130
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaListFolderPath_ListFolderPath_directory_invisible:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mDirectoryInvisible:Z

    .line 131
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaListFolderPath_ListFolderPath_directory_root_value:I

    const/4 v2, -0x1

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mDirectoryInvisibleValue:I

    .line 132
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaListFolderPath_ListFolderPath_directory_visible:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mDirectoryVisible:Z

    .line 133
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaListFolderPath_ListFolderPath_show_folder_path:I

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mListFolderPathShowFolderPath:Z

    .line 134
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaListFolderPath_ListFolderPath_list_id:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mListId:I

    .line 136
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaListFolderPath_ListFolderPath_root_directory_name:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mRootDirectoryName:Ljava/lang/String;

    .line 137
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mRootDirectoryName:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, ""

    .line 138
    iput-object p2, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mRootDirectoryName:Ljava/lang/String;

    goto :goto_0

    .line 140
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mRootDirectoryName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mRootDirectoryName:Ljava/lang/String;

    .line 143
    :goto_0
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaListFolderPath_ListFolderPath_start_content:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mStartContent:Ljava/lang/String;

    .line 145
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaListFolderPath_ListFolderPath_end_content:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mEndContent:Ljava/lang/String;

    .line 148
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p1, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 150
    new-instance p1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {p1, v0}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mAbsoluteSizeSpan:Landroid/text/style/AbsoluteSizeSpan;

    .line 152
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    iget p2, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mSelectedColor:I

    invoke-direct {p1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mColorSelectedSpan:Landroid/text/style/ForegroundColorSpan;

    .line 154
    new-instance p1, Landroid/text/style/AbsoluteSizeSpan;

    iget p2, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mSelectedSize:I

    invoke-direct {p1, p2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mAbsoluteSizeSelectedSpan:Landroid/text/style/AbsoluteSizeSpan;

    return-void
.end method


# virtual methods
.method public getCurrentPathText()Ljava/lang/String;
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mCurrentPathText:Ljava/lang/String;

    return-object p0
.end method

.method public getEndContent()Ljava/lang/String;
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mEndContent:Ljava/lang/String;

    return-object p0
.end method

.method public getListId()I
    .locals 0

    .line 258
    iget p0, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mListId:I

    return p0
.end method

.method public getRootDirectoryName()Ljava/lang/String;
    .locals 0

    .line 254
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mRootDirectoryName:Ljava/lang/String;

    return-object p0
.end method

.method public getSelectedColor()I
    .locals 0

    .line 270
    iget p0, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mSelectedColor:I

    return p0
.end method

.method public getSelectedSize()I
    .locals 0

    .line 274
    iget p0, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mSelectedSize:I

    return p0
.end method

.method public getStartContent()Ljava/lang/String;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mStartContent:Ljava/lang/String;

    return-object p0
.end method

.method public isClickBack()Z
    .locals 0

    .line 278
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mClickBack:Z

    return p0
.end method

.method public isClickFolder()Z
    .locals 0

    .line 282
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mClickFolder:Z

    return p0
.end method

.method public isDirectoryInvisible()Z
    .locals 2

    .line 293
    iget v0, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mDirectoryInvisibleValue:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 294
    iget v0, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mDirectoryInvisibleValue:I

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->setVisibility(I)V

    const/4 p0, 0x0

    return p0

    .line 297
    :cond_0
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mDirectoryInvisible:Z

    return p0
.end method

.method public isDirectoryVisible()Z
    .locals 0

    .line 301
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mDirectoryVisible:Z

    return p0
.end method

.method public setFolderPathText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 159
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mListFolderPathShowFolderPath:Z

    if-nez v0, :cond_0

    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mSpannable:Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_1

    .line 163
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mSpannable:Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 167
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 169
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 170
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-le v0, p1, :cond_2

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    if-nez p1, :cond_4

    .line 184
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mRootDirectoryName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mRootDirectoryName:Ljava/lang/String;

    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mRootDirectoryName:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    const-string p1, ""

    goto :goto_2

    .line 186
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mRootDirectoryName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 189
    :goto_2
    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mCurrentPathText:Ljava/lang/String;

    const-string p2, "/"

    .line 192
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    const-string v0, "MediaListFolderPath"

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFolderPathText: text=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",endIndex=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mStartContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v2, 0x21

    if-nez v0, :cond_5

    .line 196
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mSpannable:Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mStartContent:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 198
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mStartContent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 200
    iget-object v3, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mSpannable:Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v3, v4, v1, v0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 202
    iget-object v3, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mSpannable:Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mAbsoluteSizeSpan:Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {v3, v4, v1, v0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    :cond_5
    move v0, v1

    :goto_3
    const/4 v3, -0x1

    if-ne p2, v3, :cond_6

    .line 206
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 208
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mSpannable:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mColorSelectedSpan:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p2, v1, v0, v3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 210
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mSpannable:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mAbsoluteSizeSelectedSpan:Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p2, v1, v0, v3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    .line 215
    :cond_6
    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 217
    iget-object v3, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 219
    iget-object v1, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mSpannable:Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    add-int v4, p2, v0

    invoke-virtual {v1, v3, v0, v4, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 221
    iget-object v1, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mSpannable:Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mAbsoluteSizeSpan:Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {v1, v3, v0, v4, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 223
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 225
    iget-object v3, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 227
    iget-object v3, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mSpannable:Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mColorSelectedSpan:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, p2

    add-int/2addr v6, v0

    invoke-virtual {v3, v5, v4, v6, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 229
    iget-object v3, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mSpannable:Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mAbsoluteSizeSelectedSpan:Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr p2, v1

    add-int/2addr p2, v0

    invoke-virtual {v3, v5, v4, p2, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 232
    :goto_4
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mEndContent:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 234
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    .line 236
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mSpannable:Landroid/text/SpannableStringBuilder;

    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mEndContent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 238
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mSpannable:Landroid/text/SpannableStringBuilder;

    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    iget-object v1, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mEndContent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 240
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mSpannable:Landroid/text/SpannableStringBuilder;

    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mAbsoluteSizeSpan:Landroid/text/style/AbsoluteSizeSpan;

    iget-object v1, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mEndContent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 242
    :cond_7
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_8
    const-string p1, ""

    .line 245
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 287
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    return-void
.end method
