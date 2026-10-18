.class public Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;
.super Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;
.source "MediaFileHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$OnFileItemClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaFileHolder"


# instance fields
.field private final mAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCheckBoxFrameLayout:Lcom/yftech/car/widget/media/layout/CheckBoxFrameLayout;

.field private mImageView:Lcom/yftech/car/widget/media/view/MediaImageView;

.field private mMediaDataModifyBtn:Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;

.field private final mMediaDataModifyBtnOnClick:Landroid/view/View$OnClickListener;

.field private mMediaFile:Lcom/yftech/car/media/data/entity/MediaFile;

.field private final mMediaImageLoadingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/view/MediaImageLoading;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final mOnClickItem:Landroid/view/View$OnClickListener;

.field private mOnFileItemClickListener:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$OnFileItemClickListener;

.field private final mOnLoadingImageListener:Lcom/yftech/car/widget/media/utils/ImageLoadingManager$OnLoadingImageListener;

.field private mPlayAnimation:Lcom/yftech/car/widget/media/view/PlayAnimation;

.field private mPlayStatus:Lcom/yftech/car/widget/media/text/PlayStatus;

.field private mPosition:I

.field private mSelectedFrameLayout:Lcom/yftech/car/widget/media/layout/SelectedFrameLayout;

.field private final mTextViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/text/MediaFileTextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 162
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;-><init>(Landroid/view/View;)V

    .line 54
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mTextViewList:Ljava/util/List;

    .line 55
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mMediaImageLoadingList:Ljava/util/List;

    .line 70
    new-instance p1, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$1;

    invoke-direct {p1, p0}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$1;-><init>(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)V

    iput-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mMediaDataModifyBtnOnClick:Landroid/view/View$OnClickListener;

    .line 88
    new-instance p1, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$2;

    invoke-direct {p1, p0}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$2;-><init>(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)V

    iput-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mOnClickItem:Landroid/view/View$OnClickListener;

    .line 117
    new-instance p1, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$3;

    invoke-direct {p1, p0}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$3;-><init>(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)V

    iput-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 133
    new-instance p1, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$4;

    invoke-direct {p1, p0}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$4;-><init>(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)V

    iput-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mOnLoadingImageListener:Lcom/yftech/car/widget/media/utils/ImageLoadingManager$OnLoadingImageListener;

    const/4 p1, 0x0

    .line 163
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    return-void
.end method

.method public constructor <init>(Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;Landroid/view/View;)V
    .locals 8

    .line 168
    invoke-direct {p0, p2}, Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;-><init>(Landroid/view/View;)V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mTextViewList:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mMediaImageLoadingList:Ljava/util/List;

    .line 70
    new-instance v0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$1;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$1;-><init>(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mMediaDataModifyBtnOnClick:Landroid/view/View$OnClickListener;

    .line 88
    new-instance v0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$2;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$2;-><init>(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mOnClickItem:Landroid/view/View$OnClickListener;

    .line 117
    new-instance v0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$3;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$3;-><init>(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 133
    new-instance v0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$4;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$4;-><init>(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mOnLoadingImageListener:Lcom/yftech/car/widget/media/utils/ImageLoadingManager$OnLoadingImageListener;

    .line 169
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    .line 170
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mTextViewList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 174
    instance-of p1, p2, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_c

    .line 176
    move-object p1, p2

    check-cast p1, Landroid/view/ViewGroup;

    .line 178
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 179
    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move p1, v0

    .line 180
    :goto_0
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_12

    .line 181
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move v4, p1

    move p1, v0

    .line 182
    :goto_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge p1, v5, :cond_b

    .line 183
    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 184
    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_2

    .line 185
    instance-of v6, v5, Lcom/yftech/car/widget/media/layout/SelectedFrameLayout;

    if-eqz v6, :cond_0

    .line 186
    move-object v6, v5

    check-cast v6, Lcom/yftech/car/widget/media/layout/SelectedFrameLayout;

    iput-object v6, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mSelectedFrameLayout:Lcom/yftech/car/widget/media/layout/SelectedFrameLayout;

    goto :goto_2

    .line 187
    :cond_0
    instance-of v6, v5, Lcom/yftech/car/widget/media/layout/CheckBoxFrameLayout;

    if-eqz v6, :cond_1

    .line 188
    move-object v6, v5

    check-cast v6, Lcom/yftech/car/widget/media/layout/CheckBoxFrameLayout;

    iput-object v6, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mCheckBoxFrameLayout:Lcom/yftech/car/widget/media/layout/CheckBoxFrameLayout;

    .line 190
    :cond_1
    :goto_2
    move-object v6, v5

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 192
    :cond_2
    instance-of v6, v5, Lcom/yftech/car/widget/media/text/MediaFileTextView;

    if-eqz v6, :cond_3

    .line 193
    iget-object v6, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mTextViewList:Ljava/util/List;

    move-object v7, v5

    check-cast v7, Lcom/yftech/car/widget/media/text/MediaFileTextView;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 194
    :cond_3
    instance-of v6, v5, Lcom/yftech/car/widget/media/view/MediaImageView;

    if-eqz v6, :cond_4

    .line 195
    move-object v6, v5

    check-cast v6, Lcom/yftech/car/widget/media/view/MediaImageView;

    iput-object v6, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mImageView:Lcom/yftech/car/widget/media/view/MediaImageView;

    goto :goto_3

    .line 196
    :cond_4
    instance-of v6, v5, Lcom/yftech/car/widget/media/view/PlayAnimation;

    if-eqz v6, :cond_5

    .line 197
    move-object v6, v5

    check-cast v6, Lcom/yftech/car/widget/media/view/PlayAnimation;

    iput-object v6, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mPlayAnimation:Lcom/yftech/car/widget/media/view/PlayAnimation;

    goto :goto_3

    .line 198
    :cond_5
    instance-of v6, v5, Lcom/yftech/car/widget/media/view/MediaImageLoading;

    if-eqz v6, :cond_6

    .line 199
    iget-object v6, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mMediaImageLoadingList:Ljava/util/List;

    move-object v7, v5

    check-cast v7, Lcom/yftech/car/widget/media/view/MediaImageLoading;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 200
    :cond_6
    instance-of v6, v5, Landroid/widget/CheckBox;

    if-eqz v6, :cond_7

    .line 201
    move-object v6, v5

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 202
    iget-object v6, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v7, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_3

    .line 203
    :cond_7
    instance-of v6, v5, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;

    if-eqz v6, :cond_8

    .line 204
    move-object v6, v5

    check-cast v6, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;

    iput-object v6, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mMediaDataModifyBtn:Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;

    .line 205
    iget-object v6, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mMediaDataModifyBtn:Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;

    iget-object v7, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mMediaDataModifyBtnOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 206
    :cond_8
    instance-of v6, v5, Lcom/yftech/car/widget/media/text/PlayStatus;

    if-eqz v6, :cond_9

    .line 207
    move-object v6, v5

    check-cast v6, Lcom/yftech/car/widget/media/text/PlayStatus;

    iput-object v6, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mPlayStatus:Lcom/yftech/car/widget/media/text/PlayStatus;

    :cond_9
    :goto_3
    const-string/jumbo v6, "user_click"

    .line 210
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 211
    iget-object v4, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mOnClickItem:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move v4, v1

    :cond_a
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_1

    :cond_b
    move p1, v4

    goto/16 :goto_0

    .line 217
    :cond_c
    instance-of p1, p2, Lcom/yftech/car/widget/media/text/MediaFileTextView;

    if-eqz p1, :cond_d

    .line 218
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mTextViewList:Ljava/util/List;

    move-object v2, p2

    check-cast v2, Lcom/yftech/car/widget/media/text/MediaFileTextView;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 219
    :cond_d
    instance-of p1, p2, Lcom/yftech/car/widget/media/view/MediaImageView;

    if-eqz p1, :cond_e

    .line 220
    move-object p1, p2

    check-cast p1, Lcom/yftech/car/widget/media/view/MediaImageView;

    iput-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mImageView:Lcom/yftech/car/widget/media/view/MediaImageView;

    goto :goto_4

    .line 221
    :cond_e
    instance-of p1, p2, Lcom/yftech/car/widget/media/view/PlayAnimation;

    if-eqz p1, :cond_f

    .line 222
    move-object p1, p2

    check-cast p1, Lcom/yftech/car/widget/media/view/PlayAnimation;

    iput-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mPlayAnimation:Lcom/yftech/car/widget/media/view/PlayAnimation;

    goto :goto_4

    .line 223
    :cond_f
    instance-of p1, p2, Lcom/yftech/car/widget/media/text/PlayStatus;

    if-eqz p1, :cond_10

    .line 224
    move-object p1, p2

    check-cast p1, Lcom/yftech/car/widget/media/text/PlayStatus;

    iput-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mPlayStatus:Lcom/yftech/car/widget/media/text/PlayStatus;

    :cond_10
    :goto_4
    const-string/jumbo p1, "user_click"

    .line 226
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 227
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mOnClickItem:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move p1, v1

    goto :goto_5

    :cond_11
    move p1, v0

    :cond_12
    :goto_5
    if-nez p1, :cond_13

    .line 233
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mOnClickItem:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    :cond_13
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mPlayStatus:Lcom/yftech/car/widget/media/text/PlayStatus;

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mPlayStatus:Lcom/yftech/car/widget/media/text/PlayStatus;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/text/PlayStatus;->getClickFunction()I

    move-result p1

    if-lez p1, :cond_14

    .line 237
    new-instance p1, Lcom/yftech/car/widget/media/list/holder/-$$Lambda$MediaFileHolder$lik1MwFxlJdIC29QdZpzu9YqgNk;

    invoke-direct {p1, p0}, Lcom/yftech/car/widget/media/list/holder/-$$Lambda$MediaFileHolder$lik1MwFxlJdIC29QdZpzu9YqgNk;-><init>(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)V

    .line 265
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mPlayStatus:Lcom/yftech/car/widget/media/text/PlayStatus;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/text/PlayStatus;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_14
    return-void
.end method

.method static synthetic access$000(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mMediaDataModifyBtn:Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)Lcom/yftech/car/media/data/entity/MediaFile;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mMediaFile:Lcom/yftech/car/media/data/entity/MediaFile;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)Landroid/widget/CheckBox;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)Lcom/yftech/car/widget/media/layout/CheckBoxFrameLayout;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mCheckBoxFrameLayout:Lcom/yftech/car/widget/media/layout/CheckBoxFrameLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$OnFileItemClickListener;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mOnFileItemClickListener:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$OnFileItemClickListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mPosition:I

    return p0
.end method

.method public static synthetic lambda$new$0(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;Landroid/view/View;)V
    .locals 6

    .line 238
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/manager/MusicManager;->getPlayMusic()Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object p1

    .line 239
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/manager/MusicManager;->isPlaying()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getId()J

    move-result-wide v2

    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mMediaFile:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getId()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    .line 241
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mPlayStatus:Lcom/yftech/car/widget/media/text/PlayStatus;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/text/PlayStatus;->isClickFunction(I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 242
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/MusicManager;->pause()V

    goto :goto_0

    .line 245
    :cond_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mPlayStatus:Lcom/yftech/car/widget/media/text/PlayStatus;

    invoke-virtual {p1, v1}, Lcom/yftech/car/widget/media/text/PlayStatus;->isClickFunction(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 246
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mOnFileItemClickListener:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$OnFileItemClickListener;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mMediaFile:Lcom/yftech/car/media/data/entity/MediaFile;

    if-eqz p1, :cond_3

    .line 247
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mOnFileItemClickListener:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$OnFileItemClickListener;

    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mMediaFile:Lcom/yftech/car/media/data/entity/MediaFile;

    iget p0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mPosition:I

    invoke-interface {p1, v0, p0}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$OnFileItemClickListener;->onItem(Lcom/yftech/car/media/data/entity/MediaFile;I)V

    goto :goto_0

    .line 252
    :cond_1
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getId()J

    move-result-wide v2

    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mMediaFile:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getId()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    .line 253
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mPlayStatus:Lcom/yftech/car/widget/media/text/PlayStatus;

    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/text/PlayStatus;->isClickFunction(I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 254
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/MusicManager;->play()V

    goto :goto_0

    .line 257
    :cond_2
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mPlayStatus:Lcom/yftech/car/widget/media/text/PlayStatus;

    invoke-virtual {p1, v1}, Lcom/yftech/car/widget/media/text/PlayStatus;->isClickFunction(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 258
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mOnFileItemClickListener:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$OnFileItemClickListener;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mMediaFile:Lcom/yftech/car/media/data/entity/MediaFile;

    if-eqz p1, :cond_3

    .line 259
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mOnFileItemClickListener:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$OnFileItemClickListener;

    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mMediaFile:Lcom/yftech/car/media/data/entity/MediaFile;

    iget p0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mPosition:I

    invoke-interface {p1, v0, p0}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$OnFileItemClickListener;->onItem(Lcom/yftech/car/media/data/entity/MediaFile;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private setPlayAnimation(IZLjava/lang/String;)V
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mPlayAnimation:Lcom/yftech/car/widget/media/view/PlayAnimation;

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mPlayAnimation:Lcom/yftech/car/widget/media/view/PlayAnimation;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/view/PlayAnimation;->setMediaType(I)V

    .line 446
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->isCheckBoxShow()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 449
    :cond_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mPlayAnimation:Lcom/yftech/car/widget/media/view/PlayAnimation;

    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/view/PlayAnimation;->setSelectedPlay(Z)V

    .line 450
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mPlayAnimation:Lcom/yftech/car/widget/media/view/PlayAnimation;

    invoke-virtual {p0, p3}, Lcom/yftech/car/widget/media/view/PlayAnimation;->setNumberText(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private setSelectedStatus(Z)V
    .locals 1

    .line 431
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->isCheckBoxShow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 435
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mImageView:Lcom/yftech/car/widget/media/view/MediaImageView;

    if-eqz v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mImageView:Lcom/yftech/car/widget/media/view/MediaImageView;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/view/MediaImageView;->setSelected(Z)V

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mSelectedFrameLayout:Lcom/yftech/car/widget/media/layout/SelectedFrameLayout;

    if-eqz v0, :cond_2

    .line 439
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mSelectedFrameLayout:Lcom/yftech/car/widget/media/layout/SelectedFrameLayout;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/layout/SelectedFrameLayout;->setSelected(Z)V

    :cond_2
    return-void
.end method

.method private setTextView(Lcom/yftech/car/media/data/entity/MediaFile;IZ)V
    .locals 5

    .line 455
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    if-eqz v0, :cond_2

    .line 456
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->getMediaListType()I

    move-result v0

    .line 457
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->isCheckBoxShow()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p3, 0x0

    .line 460
    :cond_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mTextViewList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/text/MediaFileTextView;

    .line 461
    invoke-virtual {v2, p3}, Lcom/yftech/car/widget/media/text/MediaFileTextView;->setSelected(Z)V

    const/16 v3, 0x65

    const/4 v4, -0x1

    if-ne v0, v3, :cond_1

    .line 463
    iget-object v3, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-virtual {v3}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->getSearchText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v4, v3}, Lcom/yftech/car/widget/media/text/MediaFileTextView;->updateMediaFile(Lcom/yftech/car/media/data/entity/MediaFile;IILjava/lang/String;)V

    goto :goto_0

    .line 465
    :cond_1
    invoke-virtual {v2, p1, p2, v4}, Lcom/yftech/car/widget/media/text/MediaFileTextView;->updateMediaFile(Lcom/yftech/car/media/data/entity/MediaFile;II)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getAdapter()Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;
    .locals 0

    .line 538
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    return-object p0
.end method

.method public getImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mImageView:Lcom/yftech/car/widget/media/view/MediaImageView;

    if-eqz v0, :cond_0

    .line 519
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mImageView:Lcom/yftech/car/widget/media/view/MediaImageView;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/MediaImageView;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 0

    .line 525
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mImageView:Lcom/yftech/car/widget/media/view/MediaImageView;

    return-object p0
.end method

.method public getMediaFile()Lcom/yftech/car/media/data/entity/MediaFile;
    .locals 0

    .line 411
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mMediaFile:Lcom/yftech/car/media/data/entity/MediaFile;

    return-object p0
.end method

.method public getmPosition()I
    .locals 0

    .line 534
    iget p0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mPosition:I

    return p0
.end method

.method public isCheckBox()Z
    .locals 0

    .line 403
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCheckBoxShow()Z
    .locals 1

    .line 407
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->isCheckBox()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isValid()Z
    .locals 1

    .line 530
    iget v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mPosition:I

    iget-object p0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->getItemCount()I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setCheckBoxVisibility(I)V
    .locals 2

    .line 416
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setVisibility(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 419
    iget-object v1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 421
    :cond_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mCheckBoxFrameLayout:Lcom/yftech/car/widget/media/layout/CheckBoxFrameLayout;

    if-eqz v1, :cond_1

    .line 422
    iget-object v1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mCheckBoxFrameLayout:Lcom/yftech/car/widget/media/layout/CheckBoxFrameLayout;

    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/layout/CheckBoxFrameLayout;->setVisibility(I)V

    if-eqz p1, :cond_1

    .line 424
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mCheckBoxFrameLayout:Lcom/yftech/car/widget/media/layout/CheckBoxFrameLayout;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/layout/CheckBoxFrameLayout;->setSelected(Z)V

    :cond_1
    return-void
.end method

.method public setFailedResDrawable()V
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mImageView:Lcom/yftech/car/widget/media/view/MediaImageView;

    if-eqz v0, :cond_0

    .line 485
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mImageView:Lcom/yftech/car/widget/media/view/MediaImageView;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/MediaImageView;->setFailedResDrawable()V

    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mImageView:Lcom/yftech/car/widget/media/view/MediaImageView;

    if-eqz v0, :cond_0

    .line 473
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mImageView:Lcom/yftech/car/widget/media/view/MediaImageView;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/view/MediaImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mImageView:Lcom/yftech/car/widget/media/view/MediaImageView;

    if-eqz v0, :cond_0

    .line 479
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mImageView:Lcom/yftech/car/widget/media/view/MediaImageView;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/view/MediaImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setImageLoadingHide()V
    .locals 3

    .line 512
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mMediaImageLoadingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/view/MediaImageLoading;

    .line 513
    iget-object v2, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mMediaFile:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->setHide(Lcom/yftech/car/media/data/entity/MediaFile;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setImageLoadingStatus(Z)V
    .locals 6

    .line 496
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mMediaImageLoadingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/view/MediaImageLoading;

    .line 497
    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->setLoadingStatus(Z)V

    goto :goto_0

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 500
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->getMediaListType()I

    move-result p1

    .line 501
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mTextViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/text/MediaFileTextView;

    const/16 v2, 0x65

    const/4 v3, -0x1

    if-ne p1, v2, :cond_1

    .line 503
    iget-object v2, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mMediaFile:Lcom/yftech/car/media/data/entity/MediaFile;

    iget v4, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mPosition:I

    iget-object v5, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-virtual {v5}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->getSearchText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v4, v3, v5}, Lcom/yftech/car/widget/media/text/MediaFileTextView;->updateMediaFile(Lcom/yftech/car/media/data/entity/MediaFile;IILjava/lang/String;)V

    goto :goto_1

    .line 505
    :cond_1
    iget-object v2, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mMediaFile:Lcom/yftech/car/media/data/entity/MediaFile;

    iget v4, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mPosition:I

    invoke-virtual {v1, v2, v4, v3}, Lcom/yftech/car/widget/media/text/MediaFileTextView;->updateMediaFile(Lcom/yftech/car/media/data/entity/MediaFile;II)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mImageView:Lcom/yftech/car/widget/media/view/MediaImageView;

    if-eqz v0, :cond_0

    .line 491
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mImageView:Lcom/yftech/car/widget/media/view/MediaImageView;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/view/MediaImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public setMediaFile(Lcom/yftech/car/media/data/entity/MediaFile;I)Z
    .locals 9

    .line 274
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mMediaFile:Lcom/yftech/car/media/data/entity/MediaFile;

    .line 275
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v0

    .line 276
    iput p2, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mPosition:I

    .line 277
    iget-object v1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mImageView:Lcom/yftech/car/widget/media/view/MediaImageView;

    const/4 v2, 0x4

    if-eqz v1, :cond_2

    if-eq v0, v2, :cond_1

    .line 279
    iget-object v1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mImageView:Lcom/yftech/car/widget/media/view/MediaImageView;

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/view/MediaImageView;->getLoadFileBitmap()I

    move-result v1

    if-nez v1, :cond_0

    .line 280
    invoke-static {}, Lcom/yftech/car/widget/media/utils/ImageLoadingManager;->getInstance()Lcom/yftech/car/widget/media/utils/ImageLoadingManager;

    move-result-object v1

    iget-object v3, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mOnLoadingImageListener:Lcom/yftech/car/widget/media/utils/ImageLoadingManager$OnLoadingImageListener;

    invoke-virtual {v1, p0, v3}, Lcom/yftech/car/widget/media/utils/ImageLoadingManager;->loadImage(Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;Lcom/yftech/car/widget/media/utils/ImageLoadingManager$OnLoadingImageListener;)V

    goto :goto_0

    .line 282
    :cond_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mImageView:Lcom/yftech/car/widget/media/view/MediaImageView;

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/view/MediaImageView;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 285
    :cond_1
    iget-object v1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mImageView:Lcom/yftech/car/widget/media/view/MediaImageView;

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/view/MediaImageView;->setDirectoryDrawable()V

    .line 286
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->setImageLoadingHide()V

    goto :goto_0

    .line 289
    :cond_2
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->setImageLoadingHide()V

    :goto_0
    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eq v0, v2, :cond_7

    const-wide/16 v4, -0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 328
    :pswitch_0
    invoke-static {}, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;->getPlayId()J

    move-result-wide v6

    cmp-long v4, v6, v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getId()J

    move-result-wide v4

    invoke-static {}, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;->getPlayId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 330
    invoke-direct {p0, p1, p2, v3}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->setTextView(Lcom/yftech/car/media/data/entity/MediaFile;IZ)V

    .line 331
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result p2

    const-string v4, ""

    invoke-direct {p0, p2, v3, v4}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->setPlayAnimation(IZLjava/lang/String;)V

    .line 332
    invoke-direct {p0, v3}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->setSelectedStatus(Z)V

    goto/16 :goto_1

    .line 334
    :cond_3
    invoke-direct {p0, p1, p2, v1}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->setTextView(Lcom/yftech/car/media/data/entity/MediaFile;IZ)V

    .line 335
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr p2, v3

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v4, v1, p2}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->setPlayAnimation(IZLjava/lang/String;)V

    .line 336
    invoke-direct {p0, v1}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->setSelectedStatus(Z)V

    goto/16 :goto_3

    .line 316
    :pswitch_1
    invoke-static {}, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/video/VideoDataPlayManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->getPlayVideoId()J

    move-result-wide v6

    cmp-long v4, v6, v4

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getId()J

    move-result-wide v4

    invoke-static {}, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/video/VideoDataPlayManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->getPlayVideoId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    .line 318
    invoke-direct {p0, p1, p2, v3}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->setTextView(Lcom/yftech/car/media/data/entity/MediaFile;IZ)V

    .line 319
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result p2

    const-string v4, ""

    invoke-direct {p0, p2, v3, v4}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->setPlayAnimation(IZLjava/lang/String;)V

    .line 320
    invoke-direct {p0, v3}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->setSelectedStatus(Z)V

    goto :goto_1

    .line 322
    :cond_4
    invoke-direct {p0, p1, p2, v1}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->setTextView(Lcom/yftech/car/media/data/entity/MediaFile;IZ)V

    .line 323
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr p2, v3

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v4, v1, p2}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->setPlayAnimation(IZLjava/lang/String;)V

    .line 324
    invoke-direct {p0, v1}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->setSelectedStatus(Z)V

    goto/16 :goto_3

    .line 296
    :pswitch_2
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yftech/car/widget/media/manager/MusicManager;->getPlayMusic()Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 297
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getId()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/yftech/car/media/data/entity/MediaFile;->getId()J

    move-result-wide v7

    cmp-long v4, v5, v7

    if-nez v4, :cond_6

    .line 299
    invoke-direct {p0, p1, p2, v3}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->setTextView(Lcom/yftech/car/media/data/entity/MediaFile;IZ)V

    .line 300
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result p2

    const-string v4, ""

    invoke-direct {p0, p2, v3, v4}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->setPlayAnimation(IZLjava/lang/String;)V

    .line 301
    invoke-direct {p0, v3}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->setSelectedStatus(Z)V

    .line 302
    iget-object p2, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mPlayStatus:Lcom/yftech/car/widget/media/text/PlayStatus;

    if-eqz p2, :cond_5

    .line 303
    iget-object p2, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mPlayStatus:Lcom/yftech/car/widget/media/text/PlayStatus;

    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yftech/car/widget/media/manager/MusicManager;->isPlaying()Z

    move-result v4

    invoke-virtual {p2, v4}, Lcom/yftech/car/widget/media/text/PlayStatus;->setPlayStatus(Z)V

    :cond_5
    :goto_1
    move p2, v3

    goto/16 :goto_4

    .line 306
    :cond_6
    invoke-direct {p0, p1, p2, v1}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->setTextView(Lcom/yftech/car/media/data/entity/MediaFile;IZ)V

    .line 307
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr p2, v3

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v4, v1, p2}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->setPlayAnimation(IZLjava/lang/String;)V

    .line 308
    invoke-direct {p0, v1}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->setSelectedStatus(Z)V

    .line 309
    iget-object p2, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mPlayStatus:Lcom/yftech/car/widget/media/text/PlayStatus;

    if-eqz p2, :cond_a

    .line 310
    iget-object p2, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mPlayStatus:Lcom/yftech/car/widget/media/text/PlayStatus;

    invoke-virtual {p2, v1}, Lcom/yftech/car/widget/media/text/PlayStatus;->setPlayStatus(Z)V

    goto/16 :goto_3

    .line 343
    :cond_7
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getTab()I

    move-result v4

    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_1

    move-object v4, v5

    goto :goto_2

    .line 351
    :pswitch_3
    invoke-static {}, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;->getMediaFile()Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object v4

    goto :goto_2

    .line 348
    :pswitch_4
    invoke-static {}, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/video/VideoDataPlayManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->getMediaFile()Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object v4

    goto :goto_2

    .line 345
    :pswitch_5
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yftech/car/widget/media/manager/MusicManager;->getPlayMusic()Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object v4

    :goto_2
    if-eqz v4, :cond_8

    .line 355
    invoke-virtual {v4}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v5

    :cond_8
    if-eqz v5, :cond_9

    .line 357
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getFolderPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 359
    invoke-direct {p0, p1, p2, v3}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->setTextView(Lcom/yftech/car/media/data/entity/MediaFile;IZ)V

    .line 360
    invoke-virtual {v4}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result p2

    const-string v4, ""

    invoke-direct {p0, p2, v3, v4}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->setPlayAnimation(IZLjava/lang/String;)V

    .line 361
    invoke-direct {p0, v3}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->setSelectedStatus(Z)V

    goto/16 :goto_1

    .line 363
    :cond_9
    invoke-direct {p0, p1, p2, v1}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->setTextView(Lcom/yftech/car/media/data/entity/MediaFile;IZ)V

    .line 364
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getTab()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr p2, v3

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v4, v1, p2}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->setPlayAnimation(IZLjava/lang/String;)V

    .line 365
    invoke-direct {p0, v1}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->setSelectedStatus(Z)V

    :cond_a
    :goto_3
    move p2, v1

    .line 373
    :goto_4
    iget-object v4, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mMediaDataModifyBtn:Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;

    if-eqz v4, :cond_d

    if-eq v0, v2, :cond_c

    .line 375
    iget-object v2, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mMediaDataModifyBtn:Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;

    invoke-virtual {v2, v1}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->setVisibility(I)V

    if-nez v0, :cond_b

    .line 376
    iget-object v2, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mMediaDataModifyBtn:Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->getClickModify()I

    move-result v2

    if-ne v2, v3, :cond_b

    .line 377
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/yftech/car/widget/media/manager/MusicManager;->isCollectMusic(Lcom/yftech/car/media/data/entity/MediaFile;)Z

    move-result v2

    .line 378
    iget-object v4, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mMediaDataModifyBtn:Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;

    invoke-virtual {v4, v2}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->setSelected(Z)V

    goto :goto_5

    .line 380
    :cond_b
    iget-object v2, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mMediaDataModifyBtn:Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;

    invoke-virtual {v2, v1}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->setSelected(Z)V

    goto :goto_5

    .line 383
    :cond_c
    iget-object v2, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mMediaDataModifyBtn:Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->setVisibility(I)V

    .line 384
    iget-object v2, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mMediaDataModifyBtn:Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;

    invoke-virtual {v2, v1}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->setSelected(Z)V

    .line 388
    :cond_d
    :goto_5
    iget-object v2, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mPlayStatus:Lcom/yftech/car/widget/media/text/PlayStatus;

    if-eqz v2, :cond_f

    .line 389
    iget-object v2, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mPlayStatus:Lcom/yftech/car/widget/media/text/PlayStatus;

    if-nez v0, :cond_e

    const/4 v0, 0x2

    goto :goto_6

    :cond_e
    const/4 v0, -0x1

    :goto_6
    invoke-virtual {v2, v0}, Lcom/yftech/car/widget/media/text/PlayStatus;->setType(I)V

    .line 392
    :cond_f
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->isCheckBoxShow()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 393
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mCheckBoxFrameLayout:Lcom/yftech/car/widget/media/layout/CheckBoxFrameLayout;

    if-eqz v0, :cond_11

    .line 394
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mCheckBoxFrameLayout:Lcom/yftech/car/widget/media/layout/CheckBoxFrameLayout;

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getTab()I

    move-result v2

    if-ne v2, v3, :cond_10

    move v2, v3

    goto :goto_7

    :cond_10
    move v2, v1

    :goto_7
    invoke-virtual {v0, v2}, Lcom/yftech/car/widget/media/layout/CheckBoxFrameLayout;->setSelected(Z)V

    .line 396
    :cond_11
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getTab()I

    move-result p1

    if-ne p1, v3, :cond_12

    move v1, v3

    :cond_12
    invoke-virtual {p0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_13
    return p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public setOnFileItemClickListener(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$OnFileItemClickListener;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->mOnFileItemClickListener:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$OnFileItemClickListener;

    return-void
.end method
