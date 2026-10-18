.class public Lcom/yftech/car/widget/media/text/MediaDataListText;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "MediaDataListText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;
    }
.end annotation


# static fields
.field public static final LIST_FILE_SIZE:I = 0x1

.field public static final LIST_FOLDER_FILE_SIZE:I = 0x3

.field public static final LIST_FOLDER_SIZE:I = 0x2

.field public static final NOT_SELECTED:I = 0x4

.field public static final SELECTED_SIZE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MediaDataListText"


# instance fields
.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaDataListId:I

.field private mSelectedSizeMiddleContent:Ljava/lang/String;

.field private mSpannable:Landroid/text/SpannableStringBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 65
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaDataListText;->mList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 69
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/text/MediaDataListText;->mList:Ljava/util/List;

    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/text/MediaDataListText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/yftech/car/widget/media/text/MediaDataListText;->mList:Ljava/util/List;

    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/text/MediaDataListText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 80
    sget-object v0, Lcom/yftech/car/widget/media/R$styleable;->MediaDataListText:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 83
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/text/MediaDataListText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    .line 84
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/text/MediaDataListText;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    .line 86
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaDataListText_MediaDataListText_list_id:I

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/yftech/car/widget/media/text/MediaDataListText;->mMediaDataListId:I

    .line 88
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaDataListText_list_file_size_position:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    .line 90
    new-instance v5, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;

    const/4 v6, 0x1

    invoke-direct {v5, p0, v6, v4}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;-><init>(Lcom/yftech/car/widget/media/text/MediaDataListText;ILcom/yftech/car/widget/media/text/MediaDataListText$1;)V

    .line 91
    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->access$102(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;I)I

    .line 92
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaDataListText_list_file_size_text_color:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->access$200(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;I)V

    .line 93
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaDataListText_list_file_size_text_size:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->access$300(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;I)V

    .line 94
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaDataListText_list_file_size_line_feed:I

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->access$402(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;Z)Z

    .line 95
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaDataListText_list_file_size_start_content:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->access$502(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaDataListText_list_file_size_end_content:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->access$602(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    iget-object v1, p0, Lcom/yftech/car/widget/media/text/MediaDataListText;->mList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_0
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaDataListText_list_folder_size_position:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 102
    new-instance v5, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;

    const/4 v6, 0x2

    invoke-direct {v5, p0, v6, v4}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;-><init>(Lcom/yftech/car/widget/media/text/MediaDataListText;ILcom/yftech/car/widget/media/text/MediaDataListText$1;)V

    .line 103
    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->access$102(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;I)I

    .line 104
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaDataListText_list_folder_size_text_color:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->access$200(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;I)V

    .line 105
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaDataListText_list_folder_size_text_size:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->access$300(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;I)V

    .line 106
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaDataListText_list_folder_size_line_feed:I

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->access$402(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;Z)Z

    .line 107
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaDataListText_list_folder_size_start_content:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->access$502(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaDataListText_list_folder_size_end_content:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->access$602(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    iget-object v1, p0, Lcom/yftech/car/widget/media/text/MediaDataListText;->mList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_1
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaDataListText_list_folder_file_size_position:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 114
    new-instance v5, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;

    const/4 v6, 0x3

    invoke-direct {v5, p0, v6, v4}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;-><init>(Lcom/yftech/car/widget/media/text/MediaDataListText;ILcom/yftech/car/widget/media/text/MediaDataListText$1;)V

    .line 115
    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->access$102(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;I)I

    .line 116
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaDataListText_list_folder_file_size_text_color:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->access$200(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;I)V

    .line 117
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaDataListText_list_folder_file_size_text_size:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->access$300(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;I)V

    .line 118
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaDataListText_list_folder_file_size_line_feed:I

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->access$402(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;Z)Z

    .line 119
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaDataListText_list_folder_file_size_start_content:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->access$502(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaDataListText_list_folder_file_size_end_content:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->access$602(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    iget-object v1, p0, Lcom/yftech/car/widget/media/text/MediaDataListText;->mList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_2
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaDataListText_list_folder_not_selected_position:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-eq v1, v2, :cond_3

    .line 126
    new-instance v5, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;

    const/4 v6, 0x4

    invoke-direct {v5, p0, v6, v4}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;-><init>(Lcom/yftech/car/widget/media/text/MediaDataListText;ILcom/yftech/car/widget/media/text/MediaDataListText$1;)V

    .line 127
    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->access$102(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;I)I

    .line 128
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaDataListText_list_folder_not_selected_text_color:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->access$200(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;I)V

    .line 129
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaDataListText_list_folder_not_selected_text_size:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->access$300(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;I)V

    .line 130
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaDataListText_list_folder_not_selected_line_feed:I

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->access$402(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;Z)Z

    .line 131
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaDataListText_list_folder_not_selected_start_content:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->access$502(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaDataListText_list_folder_not_selected_end_content:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->access$602(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    iget-object v1, p0, Lcom/yftech/car/widget/media/text/MediaDataListText;->mList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_3
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaDataListText_list_folder_selected_size_position:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-eq v1, v2, :cond_4

    .line 138
    new-instance v2, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;

    const/4 v5, 0x5

    invoke-direct {v2, p0, v5, v4}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;-><init>(Lcom/yftech/car/widget/media/text/MediaDataListText;ILcom/yftech/car/widget/media/text/MediaDataListText$1;)V

    .line 139
    invoke-static {v2, v1}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->access$102(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;I)I

    .line 140
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->MediaDataListText_list_folder_selected_size_text_color:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-static {v2, p2}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->access$200(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;I)V

    .line 141
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaDataListText_list_folder_selected_size_text_size:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    invoke-static {v2, p2}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->access$300(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;I)V

    .line 142
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaDataListText_list_folder_selected_size_line_feed:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-static {v2, p2}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->access$402(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;Z)Z

    .line 143
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaDataListText_list_folder_selected_size_start_content:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->access$502(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaDataListText_list_folder_selected_size_end_content:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->access$602(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;Ljava/lang/String;)Ljava/lang/String;

    .line 145
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaDataListText;->mList:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_4
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaDataListText_list_folder_selected_size_middle_content:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaDataListText;->mSelectedSizeMiddleContent:Ljava/lang/String;

    .line 150
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaDataListText;->mSelectedSizeMiddleContent:Ljava/lang/String;

    if-nez p1, :cond_5

    const-string p1, ","

    .line 151
    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaDataListText;->mSelectedSizeMiddleContent:Ljava/lang/String;

    .line 154
    :cond_5
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaDataListText;->mList:Ljava/util/List;

    new-instance p2, Lcom/yftech/car/widget/media/text/MediaDataListText$1;

    invoke-direct {p2, p0}, Lcom/yftech/car/widget/media/text/MediaDataListText$1;-><init>(Lcom/yftech/car/widget/media/text/MediaDataListText;)V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public isFolderFileSize()Z
    .locals 4

    .line 176
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaDataListText;->mList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;

    .line 177
    invoke-static {v0}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->access$700(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    invoke-static {v0}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->access$700(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;)I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    invoke-static {v0}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->access$700(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    :cond_1
    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public isMediaDataListId(I)Z
    .locals 2

    .line 163
    iget v0, p0, Lcom/yftech/car/widget/media/text/MediaDataListText;->mMediaDataListId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget p0, p0, Lcom/yftech/car/widget/media/text/MediaDataListText;->mMediaDataListId:I

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

.method public isSelectedFunction()Z
    .locals 3

    .line 167
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaDataListText;->mList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;

    .line 168
    invoke-static {v0}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->access$700(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;)I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    invoke-static {v0}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->access$700(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public isSelectedFunction(I)Z
    .locals 1

    .line 185
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaDataListText;->mList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;

    .line 186
    invoke-static {v0}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->access$700(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;)I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public updateListSize(IJ)V
    .locals 7

    .line 195
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaDataListText;->mSpannable:Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/text/MediaDataListText;->mSpannable:Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaDataListText;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 202
    :goto_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaDataListText;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    :pswitch_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;

    const/4 v2, 0x0

    .line 206
    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->access$700(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    const-string v3, "MediaDataListText"

    const-string/jumbo v4, "updateListSize: error info type"

    .line 222
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 217
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/yftech/car/widget/media/text/MediaDataListText;->mSelectedSizeMiddleContent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-static {p2, p3, v3}, Lcom/yftech/car/widget/media/utils/FileUtil;->fileSize(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 214
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v3, p1

    add-long/2addr v3, p2

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 211
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 208
    :pswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_1

    .line 227
    iget-object v3, p0, Lcom/yftech/car/widget/media/text/MediaDataListText;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 228
    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->access$500(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->access$500(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 232
    :cond_2
    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->access$600(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 233
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->access$600(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 236
    :cond_3
    iget-object v4, p0, Lcom/yftech/car/widget/media/text/MediaDataListText;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->access$400(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    invoke-virtual {v4, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 237
    iget-object v2, p0, Lcom/yftech/car/widget/media/text/MediaDataListText;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 239
    iget-object v4, p0, Lcom/yftech/car/widget/media/text/MediaDataListText;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->access$800(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v5

    const/16 v6, 0x21

    invoke-virtual {v4, v5, v3, v2, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 241
    iget-object v4, p0, Lcom/yftech/car/widget/media/text/MediaDataListText;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-static {v1}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->access$900(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;)Landroid/text/style/AbsoluteSizeSpan;

    move-result-object v1

    invoke-virtual {v4, v1, v3, v2, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_1

    .line 244
    :cond_5
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaDataListText;->mSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/text/MediaDataListText;->setText(Ljava/lang/CharSequence;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
