.class public Lcom/yftech/car/widget/media/text/MediaFolderTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "MediaFolderTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;
    }
.end annotation


# static fields
.field private static final FOLDER_NAME:I = 0x2

.field private static final FOLDER_PATH:I = 0x3

.field private static final LIST_SIZE:I = 0x4

.field private static final NUMBER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MediaFolderTextView"


# instance fields
.field private mFolderAlbumTextUnknown:Ljava/lang/String;

.field private mFolderArtistTextUnknown:Ljava/lang/String;

.field private mFolderGenreTextUnknown:Ljava/lang/String;

.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaFolder:Lcom/yftech/car/media/data/entity/MediaFolder;

.field private mSpannable:Landroid/text/SpannableStringBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaFolderTextView;->mList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 73
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/text/MediaFolderTextView;->mList:Ljava/util/List;

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/text/MediaFolderTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/yftech/car/widget/media/text/MediaFolderTextView;->mList:Ljava/util/List;

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/text/MediaFolderTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getMediaFolderInfo(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "<unknown>"

    .line 227
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 240
    :pswitch_0
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaFolderTextView;->mFolderArtistTextUnknown:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 241
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaFolderTextView;->mFolderGenreTextUnknown:Ljava/lang/String;

    goto :goto_0

    .line 235
    :pswitch_1
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaFolderTextView;->mFolderArtistTextUnknown:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 236
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaFolderTextView;->mFolderAlbumTextUnknown:Ljava/lang/String;

    goto :goto_0

    .line 230
    :pswitch_2
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaFolderTextView;->mFolderArtistTextUnknown:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 231
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaFolderTextView;->mFolderArtistTextUnknown:Ljava/lang/String;

    :cond_1
    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 83
    sget-object v0, Lcom/yftech/car/widget/media/R$styleable;->MediaFolderTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 85
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/text/MediaFolderTextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    .line 86
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/text/MediaFolderTextView;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    .line 89
    iget-object v1, p0, Lcom/yftech/car/widget/media/text/MediaFolderTextView;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 91
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaFolderTextView_folder_number_position:I

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    .line 93
    new-instance v5, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;

    const/4 v6, 0x1

    invoke-direct {v5, p0, v6, v4}, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;-><init>(Lcom/yftech/car/widget/media/text/MediaFolderTextView;ILcom/yftech/car/widget/media/text/MediaFolderTextView$1;)V

    .line 94
    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->access$102(Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;I)I

    .line 95
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaFolderTextView_folder_number_text_color:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->access$200(Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;I)V

    .line 96
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaFolderTextView_folder_number_text_size:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->access$300(Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;I)V

    .line 97
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaFolderTextView_folder_number_line_feed:I

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->access$402(Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;Z)Z

    .line 98
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaFolderTextView_folder_number_start_content:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->access$502(Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaFolderTextView_folder_number_end_content:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->access$602(Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    iget-object v1, p0, Lcom/yftech/car/widget/media/text/MediaFolderTextView;->mList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_0
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaFolderTextView_folder_name_position:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 105
    new-instance v5, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;

    const/4 v6, 0x2

    invoke-direct {v5, p0, v6, v4}, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;-><init>(Lcom/yftech/car/widget/media/text/MediaFolderTextView;ILcom/yftech/car/widget/media/text/MediaFolderTextView$1;)V

    .line 106
    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->access$102(Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;I)I

    .line 107
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaFolderTextView_folder_name_text_color:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->access$200(Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;I)V

    .line 108
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaFolderTextView_folder_name_text_size:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->access$300(Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;I)V

    .line 109
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaFolderTextView_folder_name_line_feed:I

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->access$402(Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;Z)Z

    .line 110
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaFolderTextView_folder_name_start_content:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->access$502(Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaFolderTextView_folder_name_end_content:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->access$602(Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    iget-object v1, p0, Lcom/yftech/car/widget/media/text/MediaFolderTextView;->mList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_1
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaFolderTextView_folder_path_position:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 117
    new-instance v5, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;

    const/4 v6, 0x3

    invoke-direct {v5, p0, v6, v4}, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;-><init>(Lcom/yftech/car/widget/media/text/MediaFolderTextView;ILcom/yftech/car/widget/media/text/MediaFolderTextView$1;)V

    .line 118
    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->access$102(Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;I)I

    .line 119
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaFolderTextView_folder_path_text_color:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->access$200(Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;I)V

    .line 120
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaFolderTextView_folder_path_text_size:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->access$300(Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;I)V

    .line 121
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaFolderTextView_folder_path_line_feed:I

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->access$402(Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;Z)Z

    .line 122
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaFolderTextView_folder_path_start_content:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->access$502(Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaFolderTextView_folder_path_end_content:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->access$602(Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    iget-object v1, p0, Lcom/yftech/car/widget/media/text/MediaFolderTextView;->mList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_2
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaFolderTextView_folder_list_size_position:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-eq v1, v2, :cond_3

    .line 129
    new-instance v2, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;

    const/4 v5, 0x4

    invoke-direct {v2, p0, v5, v4}, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;-><init>(Lcom/yftech/car/widget/media/text/MediaFolderTextView;ILcom/yftech/car/widget/media/text/MediaFolderTextView$1;)V

    .line 130
    invoke-static {v2, v1}, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->access$102(Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;I)I

    .line 131
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaFolderTextView_folder_list_size_text_color:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-static {v2, p2}, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->access$200(Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;I)V

    .line 132
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaFolderTextView_folder_list_size_text_size:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    invoke-static {v2, p2}, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->access$300(Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;I)V

    .line 133
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaFolderTextView_folder_list_size_line_feed:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-static {v2, p2}, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->access$402(Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;Z)Z

    .line 134
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaFolderTextView_folder_list_size_start_content:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->access$502(Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaFolderTextView_folder_list_size_end_content:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->access$602(Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaFolderTextView;->mList:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_3
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaFolderTextView_folder_artist_text_unknown:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/text/MediaFolderTextView;->mFolderArtistTextUnknown:Ljava/lang/String;

    .line 140
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaFolderTextView_folder_album_text_unknown:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/text/MediaFolderTextView;->mFolderAlbumTextUnknown:Ljava/lang/String;

    .line 141
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaFolderTextView_folder_genre_text_unknown:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaFolderTextView;->mFolderGenreTextUnknown:Ljava/lang/String;

    .line 143
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaFolderTextView;->mList:Ljava/util/List;

    new-instance p2, Lcom/yftech/car/widget/media/text/MediaFolderTextView$1;

    invoke-direct {p2, p0}, Lcom/yftech/car/widget/media/text/MediaFolderTextView$1;-><init>(Lcom/yftech/car/widget/media/text/MediaFolderTextView;)V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public getMediaFolder()Lcom/yftech/car/media/data/entity/MediaFolder;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaFolderTextView;->mMediaFolder:Lcom/yftech/car/media/data/entity/MediaFolder;

    return-object p0
.end method

.method public isMediaFileInfo()Z
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaFolderTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaFolderTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

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

.method public updateFolder(Lcom/yftech/car/media/data/entity/MediaFolder;)V
    .locals 1

    const/4 v0, 0x0

    .line 160
    invoke-virtual {p0, p1, v0}, Lcom/yftech/car/widget/media/text/MediaFolderTextView;->updateFolder(Lcom/yftech/car/media/data/entity/MediaFolder;I)V

    return-void
.end method

.method public updateFolder(Lcom/yftech/car/media/data/entity/MediaFolder;I)V
    .locals 7

    .line 164
    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaFolderTextView;->mMediaFolder:Lcom/yftech/car/media/data/entity/MediaFolder;

    if-eqz p1, :cond_7

    .line 166
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaFolderTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/text/MediaFolderTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaFolderTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 172
    :goto_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaFolderTextView;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;

    const/4 v2, 0x0

    .line 175
    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->access$700(Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    const-string v3, "MediaFolderTextView"

    const-string/jumbo v4, "updateMediaFile: error info type"

    .line 194
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 186
    :pswitch_0
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFolder;->getData()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 188
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    .line 190
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 180
    :pswitch_1
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFolder;->getFolderPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 177
    :pswitch_2
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFolder;->getFolder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFolder;->getType()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/yftech/car/widget/media/text/MediaFolderTextView;->getMediaFolderInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 183
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 197
    :goto_3
    iget-object v3, p0, Lcom/yftech/car/widget/media/text/MediaFolderTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-nez v2, :cond_2

    const-string v2, ""

    .line 203
    :cond_2
    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->access$500(Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 204
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->access$500(Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 207
    :cond_3
    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->access$600(Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 208
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->access$600(Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 211
    :cond_4
    iget-object v4, p0, Lcom/yftech/car/widget/media/text/MediaFolderTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->access$400(Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_5
    invoke-virtual {v4, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 212
    iget-object v2, p0, Lcom/yftech/car/widget/media/text/MediaFolderTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 213
    iget-object v4, p0, Lcom/yftech/car/widget/media/text/MediaFolderTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->access$800(Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v5

    const/16 v6, 0x21

    invoke-virtual {v4, v5, v3, v2, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 214
    iget-object v4, p0, Lcom/yftech/car/widget/media/text/MediaFolderTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->access$900(Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;)Landroid/text/style/AbsoluteSizeSpan;

    move-result-object v1

    invoke-virtual {v4, v1, v3, v2, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_1

    .line 217
    :cond_6
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaFolderTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_8

    .line 218
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaFolderTextView;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/text/MediaFolderTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_7
    const-string p0, "MediaFolderTextView"

    const-string/jumbo p1, "updateMediaFile: file is null"

    .line 222
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
