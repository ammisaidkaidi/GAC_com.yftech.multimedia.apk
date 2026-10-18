.class public Lcom/yftech/car/widget/media/list/MediaDataList;
.super Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
.source "MediaDataList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/list/MediaDataList$OnItemChangeListener;,
        Lcom/yftech/car/widget/media/list/MediaDataList$OnDirectoryListener;,
        Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;
    }
.end annotation


# static fields
.field public static final DIRECTORY:I = 0x6

.field private static final MEDIA_LIST_CLICK_MEMORY:Ljava/lang/String; = "media_list_click_memory"

.field public static final PLAY_LIST:I = 0x64

.field public static final SEARCH_LIST:I = 0x65

.field private static final TAG:Ljava/lang/String; = "MediaDataList"


# instance fields
.field private isEmptyAdapter:Z

.field private isListEmpty:Z

.field private mBaseRootDirectoryPath:Ljava/lang/String;

.field private mDate:Ljava/util/Date;

.field private mDirectoryFolderPath:Ljava/lang/String;

.field private final mEmptyLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

.field private final mFileAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

.field private final mFolderAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;

.field private mFolderFileLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

.field private final mFolderPathClick:Landroid/view/View$OnClickListener;

.field private final mFolderPathTouchListener:Landroid/view/View$OnTouchListener;

.field private mInitAdapter:Z

.field private mItemDecoration:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;

.field private mItemFileListener:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;

.field private mLatelyFolderFileList:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

.field private mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

.field private mMediaDataDirectoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaDataListTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/text/MediaDataListText;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaDataModifyBtnClick:Landroid/view/View$OnClickListener;

.field private mMediaDataModifyBtnList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaDefaultList:I

.field private mMediaFileType:I

.field private mMediaListClickMemoryDirectory:Z

.field private final mMediaListFolderPathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/text/MediaListFolderPath;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaListScrollToPosition:Z

.field private final mMediaMemoryList:Z

.field private mMediaSearchBackList:I

.field private mMediaSearchLoadAdapter:Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;

.field private mMediaUsbDisconnectAutoSwitchIndex:Z

.field private mMemoryKey:Ljava/lang/String;

.field private mOnDirectoryListener:Lcom/yftech/car/widget/media/list/MediaDataList$OnDirectoryListener;

.field private mOnItemChangeListener:Lcom/yftech/car/widget/media/list/MediaDataList$OnItemChangeListener;

.field private final mOnItemClickPathListener:Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder$OnItemClickPathListener;

.field private final mOnItemFileListener:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;

.field private final mOnScrollListener:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;

.field private final mOnSideTextRetrievalListener:Lcom/yftech/car/widget/media/view/SideTextRetrievalView$OnSideTextRetrievalListener;

.field private final mRunnable:Ljava/lang/Runnable;

.field private final mScaledTouchSlop:I

.field private final mScrollPositionWithOffset:I

.field private mSearchFlags:I

.field private mSideTextRetrievalView:Lcom/yftech/car/widget/media/view/SideTextRetrievalView;

.field private mSimpleDateFormat:Ljava/text/SimpleDateFormat;

.field private final mSp:Landroid/content/SharedPreferences;

.field private final mSpanCount:I

.field private final mStartActivity:Ljava/lang/String;

.field private mUpdateDataRunnable:Ljava/lang/Runnable;

.field private mUsbDisconnectAdapter:Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;

.field private mUsbIndex:I

.field private mUsbLoadingAdapter:Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 257
    invoke-direct {p0, p1, v0, v1}, Lcom/yftech/car/widget/media/list/MediaDataList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 261
    sget v0, Lcom/yftech/car/widget/media/R$attr;->recyclerViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/yftech/car/widget/media/list/MediaDataList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 265
    invoke-direct {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 179
    iput p3, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mUsbIndex:I

    .line 206
    iput-boolean p3, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->isEmptyAdapter:Z

    .line 211
    iput-boolean p3, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->isListEmpty:Z

    .line 213
    iput-boolean p3, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaUsbDisconnectAutoSwitchIndex:Z

    const/4 v0, 0x1

    .line 215
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaListScrollToPosition:Z

    .line 217
    iput-boolean p3, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaListClickMemoryDirectory:Z

    .line 222
    iput p3, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaFileType:I

    const/4 v1, 0x0

    .line 224
    iput-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mDirectoryFolderPath:Ljava/lang/String;

    .line 226
    iput-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mBaseRootDirectoryPath:Ljava/lang/String;

    .line 237
    sget-object v1, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->NOT_LIST:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    iput-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLatelyFolderFileList:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    .line 239
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaListFolderPathList:Ljava/util/List;

    .line 251
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 252
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mDate:Ljava/util/Date;

    .line 645
    new-instance v1, Lcom/yftech/car/widget/media/list/MediaDataList$4;

    invoke-direct {v1, p0}, Lcom/yftech/car/widget/media/list/MediaDataList$4;-><init>(Lcom/yftech/car/widget/media/list/MediaDataList;)V

    iput-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFolderPathTouchListener:Landroid/view/View$OnTouchListener;

    .line 751
    new-instance v1, Lcom/yftech/car/widget/media/list/MediaDataList$5;

    invoke-direct {v1, p0}, Lcom/yftech/car/widget/media/list/MediaDataList$5;-><init>(Lcom/yftech/car/widget/media/list/MediaDataList;)V

    iput-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFolderPathClick:Landroid/view/View$OnClickListener;

    .line 758
    new-instance v1, Lcom/yftech/car/widget/media/list/MediaDataList$6;

    invoke-direct {v1, p0}, Lcom/yftech/car/widget/media/list/MediaDataList$6;-><init>(Lcom/yftech/car/widget/media/list/MediaDataList;)V

    iput-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mOnItemClickPathListener:Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder$OnItemClickPathListener;

    .line 765
    new-instance v1, Lcom/yftech/car/widget/media/list/MediaDataList$7;

    invoke-direct {v1, p0}, Lcom/yftech/car/widget/media/list/MediaDataList$7;-><init>(Lcom/yftech/car/widget/media/list/MediaDataList;)V

    iput-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaDataModifyBtnClick:Landroid/view/View$OnClickListener;

    .line 804
    new-instance v1, Lcom/yftech/car/widget/media/list/MediaDataList$8;

    invoke-direct {v1, p0}, Lcom/yftech/car/widget/media/list/MediaDataList$8;-><init>(Lcom/yftech/car/widget/media/list/MediaDataList;)V

    iput-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mOnSideTextRetrievalListener:Lcom/yftech/car/widget/media/view/SideTextRetrievalView$OnSideTextRetrievalListener;

    .line 852
    new-instance v1, Lcom/yftech/car/widget/media/list/MediaDataList$9;

    invoke-direct {v1, p0}, Lcom/yftech/car/widget/media/list/MediaDataList$9;-><init>(Lcom/yftech/car/widget/media/list/MediaDataList;)V

    iput-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mOnScrollListener:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 2030
    new-instance v1, Lcom/yftech/car/widget/media/list/MediaDataList$10;

    invoke-direct {v1, p0}, Lcom/yftech/car/widget/media/list/MediaDataList$10;-><init>(Lcom/yftech/car/widget/media/list/MediaDataList;)V

    iput-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mRunnable:Ljava/lang/Runnable;

    .line 267
    sget-object v1, Lcom/yftech/car/widget/media/R$styleable;->media_list_layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 269
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->media_list_layout_media_span_count:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mSpanCount:I

    .line 271
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->media_list_layout_media_folder_file_span_count:I

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 273
    sget v2, Lcom/yftech/car/widget/media/R$styleable;->media_list_layout_media_orientation:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 275
    sget v3, Lcom/yftech/car/widget/media/R$styleable;->media_list_layout_media_default_list:I

    const/4 v4, 0x2

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaDefaultList:I

    .line 277
    sget v3, Lcom/yftech/car/widget/media/R$styleable;->media_list_layout_media_memory_list:I

    invoke-virtual {p2, v3, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaMemoryList:Z

    .line 279
    sget v3, Lcom/yftech/car/widget/media/R$styleable;->media_list_layout_media_usb_disconnect_auto_switch_index:I

    invoke-virtual {p2, v3, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaUsbDisconnectAutoSwitchIndex:Z

    .line 281
    sget v3, Lcom/yftech/car/widget/media/R$styleable;->media_list_layout_media_list_scrollTo_position:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaListScrollToPosition:Z

    .line 283
    sget v3, Lcom/yftech/car/widget/media/R$styleable;->media_list_layout_media_list_click_memory_directory:I

    invoke-virtual {p2, v3, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaListClickMemoryDirectory:Z

    .line 285
    sget v3, Lcom/yftech/car/widget/media/R$styleable;->media_list_layout_media_usb_index:I

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mUsbIndex:I

    .line 287
    sget v3, Lcom/yftech/car/widget/media/R$styleable;->media_list_layout_media_scroll_position_with_offset:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mScrollPositionWithOffset:I

    .line 289
    sget v3, Lcom/yftech/car/widget/media/R$styleable;->media_list_layout_media_list_click_memory_key:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMemoryKey:Ljava/lang/String;

    .line 291
    sget v3, Lcom/yftech/car/widget/media/R$styleable;->media_list_layout_media_list_start_activity_class:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mStartActivity:Ljava/lang/String;

    .line 293
    iget-object v3, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMemoryKey:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "media_list_click_memory_key"

    .line 294
    iput-object v3, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMemoryKey:Ljava/lang/String;

    .line 297
    :cond_0
    iget v3, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mSpanCount:I

    if-lez v3, :cond_2

    .line 298
    iget v3, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mSpanCount:I

    if-le v3, v0, :cond_1

    .line 299
    new-instance v3, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;

    iget v5, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mSpanCount:I

    invoke-direct {v3, p1, v5}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    goto :goto_0

    .line 301
    :cond_1
    new-instance v3, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    goto :goto_0

    .line 304
    :cond_2
    sget v3, Lcom/yftech/car/widget/media/R$styleable;->media_list_layout_media_auto_item_left:I

    const/4 v5, 0x0

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    .line 305
    sget v3, Lcom/yftech/car/widget/media/R$styleable;->media_list_layout_media_auto_item_top:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v9

    .line 306
    sget v3, Lcom/yftech/car/widget/media/R$styleable;->media_list_layout_media_auto_item_right:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    .line 307
    sget v3, Lcom/yftech/car/widget/media/R$styleable;->media_list_layout_media_auto_item_bottom:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    .line 309
    new-instance v3, Lcom/yftech/car/widget/media/list/MediaDataList$1;

    move-object v6, v3

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/yftech/car/widget/media/list/MediaDataList$1;-><init>(Lcom/yftech/car/widget/media/list/MediaDataList;FFFF)V

    iput-object v3, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mItemDecoration:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 322
    new-instance v3, Lcom/yftech/car/widget/media/list/MediaDataList$2;

    invoke-direct {v3, p0, p1, p3, v0}, Lcom/yftech/car/widget/media/list/MediaDataList$2;-><init>(Lcom/yftech/car/widget/media/list/MediaDataList;Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    :goto_0
    if-le v1, v0, :cond_3

    .line 331
    new-instance v0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;

    invoke-direct {v0, p1, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFolderFileLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    goto :goto_1

    :cond_3
    if-ne v1, v0, :cond_4

    .line 333
    new-instance v0, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFolderFileLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    .line 336
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    instance-of v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_5

    .line 337
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    check-cast v0, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    .line 338
    invoke-virtual {v0, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 341
    :cond_5
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFolderFileLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_6

    .line 342
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFolderFileLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 345
    :cond_6
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->setLayoutManager(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 346
    invoke-direct {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->setAddItemDecoration()V

    .line 348
    new-instance v0, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mEmptyLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    .line 349
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mEmptyLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 351
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mUsbDisconnectAdapter:Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;

    if-nez v0, :cond_7

    .line 352
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->media_list_layout_media_usb_disconnect_layout_id:I

    invoke-virtual {p2, v0, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eq v0, v4, :cond_7

    .line 354
    new-instance v1, Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;

    invoke-direct {v1, v0}, Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;-><init>(I)V

    iput-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mUsbDisconnectAdapter:Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;

    .line 357
    :cond_7
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mUsbLoadingAdapter:Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;

    if-nez v0, :cond_8

    .line 358
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->media_list_layout_media_usb_loading_layout_id:I

    invoke-virtual {p2, v0, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eq v0, v4, :cond_8

    .line 360
    new-instance v1, Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;

    invoke-direct {v1, v0}, Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;-><init>(I)V

    iput-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mUsbLoadingAdapter:Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;

    .line 364
    :cond_8
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaSearchLoadAdapter:Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;

    if-nez v0, :cond_9

    .line 365
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->media_list_layout_media_search_loading_layout_id:I

    invoke-virtual {p2, v0, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eq v0, v4, :cond_9

    .line 367
    new-instance v1, Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;

    invoke-direct {v1, v0}, Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;-><init>(I)V

    iput-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaSearchLoadAdapter:Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;

    .line 371
    :cond_9
    new-instance v0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-direct {v0, p2}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;-><init>(Landroid/content/res/TypedArray;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFileAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    .line 372
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->getOnItemFileListener(Landroid/content/Context;)Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mOnItemFileListener:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;

    .line 374
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFileAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    iget-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mOnItemFileListener:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->setOnItemFileListener(Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;)V

    .line 376
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 377
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mScaledTouchSlop:I

    .line 379
    new-instance v0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;

    invoke-direct {v0, p2}, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;-><init>(Landroid/content/res/TypedArray;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFolderAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;

    .line 380
    invoke-direct {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getOnItemFolderListener()Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter$OnItemFolderListener;

    move-result-object p2

    .line 381
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFolderAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;

    invoke-virtual {v0, p2}, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->setOnItemFolderListener(Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter$OnItemFolderListener;)V

    const-string p2, "media_list_click_memory"

    .line 383
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mSp:Landroid/content/SharedPreferences;

    .line 385
    iget p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaDefaultList:I

    const/16 p2, 0x65

    if-eq p1, p2, :cond_a

    .line 386
    iget p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaDefaultList:I

    iput p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaSearchBackList:I

    .line 389
    :cond_a
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mOnScrollListener:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->addOnScrollListener(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/car/widget/media/list/MediaDataList;)I
    .locals 0

    .line 100
    iget p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaDefaultList:I

    return p0
.end method

.method static synthetic access$100(Lcom/yftech/car/widget/media/list/MediaDataList;Landroid/content/Context;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->startPlayActivity(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/yftech/car/widget/media/list/MediaDataList;)I
    .locals 0

    .line 100
    iget p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mScaledTouchSlop:I

    return p0
.end method

.method static synthetic access$1100(Lcom/yftech/car/widget/media/list/MediaDataList;)Ljava/lang/String;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mDirectoryFolderPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/yftech/car/widget/media/list/MediaDataList;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->directoryBack()V

    return-void
.end method

.method static synthetic access$1300(Lcom/yftech/car/widget/media/list/MediaDataList;)I
    .locals 0

    .line 100
    iget p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mSpanCount:I

    return p0
.end method

.method static synthetic access$1400(Lcom/yftech/car/widget/media/list/MediaDataList;)Lcom/yftech/car/widget/media/view/SideTextRetrievalView;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mSideTextRetrievalView:Lcom/yftech/car/widget/media/view/SideTextRetrievalView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/yftech/car/widget/media/list/MediaDataList;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/yftech/car/widget/media/list/MediaDataList;)I
    .locals 0

    .line 100
    iget p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaFileType:I

    return p0
.end method

.method static synthetic access$1700(Lcom/yftech/car/widget/media/list/MediaDataList;)I
    .locals 0

    .line 100
    iget p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mScrollPositionWithOffset:I

    return p0
.end method

.method static synthetic access$1800(Lcom/yftech/car/widget/media/list/MediaDataList;I)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->updatePosition(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/yftech/car/widget/media/list/MediaDataList;Ljava/lang/String;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->directoryFolderPath(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/yftech/car/widget/media/list/MediaDataList;)Lcom/yftech/car/widget/media/list/MediaDataList$OnItemChangeListener;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mOnItemChangeListener:Lcom/yftech/car/widget/media/list/MediaDataList$OnItemChangeListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/car/widget/media/list/MediaDataList;)Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mItemFileListener:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/yftech/car/widget/media/list/MediaDataList;)I
    .locals 0

    .line 100
    iget p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mSearchFlags:I

    return p0
.end method

.method static synthetic access$600(Lcom/yftech/car/widget/media/list/MediaDataList;)Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFileAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    return-object p0
.end method

.method static synthetic access$700(Lcom/yftech/car/widget/media/list/MediaDataList;IZ)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/list/MediaDataList;->setCheckBoxStatus(IZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/yftech/car/widget/media/list/MediaDataList;)Ljava/util/List;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaDataModifyBtnList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/yftech/car/widget/media/list/MediaDataList;)Ljava/util/List;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaDataListTextList:Ljava/util/List;

    return-object p0
.end method

.method private directoryBack()V
    .locals 4

    .line 1008
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mDirectoryFolderPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1009
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mDirectoryFolderPath:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mDirectoryFolderPath:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaDataList"

    .line 1010
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "directoryBack: folderPath=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",mBaseRootDirectoryPath=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mBaseRootDirectoryPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mBaseRootDirectoryPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 1023
    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->directoryFolderPath(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1027
    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->directoryFolderPath(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private directoryFolderPath(Ljava/lang/String;)V
    .locals 0

    .line 1032
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mDirectoryFolderPath:Ljava/lang/String;

    .line 1033
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateDirectoryList()V

    return-void
.end method

.method private getOnItemFileListener(Landroid/content/Context;)Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 436
    new-instance v0, Lcom/yftech/car/widget/media/list/MediaDataList$3;

    invoke-direct {v0, p0, p1}, Lcom/yftech/car/widget/media/list/MediaDataList$3;-><init>(Lcom/yftech/car/widget/media/list/MediaDataList;Landroid/content/Context;)V

    return-object v0
.end method

.method private getOnItemFolderListener()Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter$OnItemFolderListener;
    .locals 1

    .line 393
    new-instance v0, Lcom/yftech/car/widget/media/list/-$$Lambda$MediaDataList$AVF7vbRpqsSeczol29V9BO2o7p0;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/list/-$$Lambda$MediaDataList$AVF7vbRpqsSeczol29V9BO2o7p0;-><init>(Lcom/yftech/car/widget/media/list/MediaDataList;)V

    return-object v0
.end method

.method public static synthetic lambda$getOnItemFolderListener$0(Lcom/yftech/car/widget/media/list/MediaDataList;Lcom/yftech/car/media/data/entity/MediaFolder;I)V
    .locals 3

    .line 394
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFileAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->isEmptyItemFileLayoutId()Z

    move-result v0

    if-nez v0, :cond_9

    .line 397
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mOnItemChangeListener:Lcom/yftech/car/widget/media/list/MediaDataList$OnItemChangeListener;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mOnItemChangeListener:Lcom/yftech/car/widget/media/list/MediaDataList$OnItemChangeListener;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/list/MediaDataList$OnItemChangeListener;->onItemFolder(Lcom/yftech/car/media/data/entity/MediaFolder;)V

    .line 399
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mOnItemChangeListener:Lcom/yftech/car/widget/media/list/MediaDataList$OnItemChangeListener;

    iget-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFolderAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->getFolderList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/yftech/car/widget/media/list/MediaDataList$OnItemChangeListener;->onListFolder(Ljava/util/List;I)V

    .line 401
    :cond_0
    iget-object p2, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFileAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFolder;->getData()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->updateList(Ljava/util/List;Z)Z

    .line 402
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLatelyFolderFileList:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    sget-object p2, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->FILE_LIST:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    if-eq p1, p2, :cond_2

    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLatelyFolderFileList:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    sget-object p2, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->FOLDER_FILE_LIST:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    if-eq p1, p2, :cond_2

    .line 403
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFolderFileLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    if-eqz p1, :cond_1

    .line 404
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFolderFileLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->setLayoutManager(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 406
    :cond_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFileAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->setAdapter(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V

    .line 408
    :cond_2
    sget-object p1, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->FOLDER_FILE_LIST:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    iput-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLatelyFolderFileList:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    .line 409
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaListFolderPathList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yftech/car/widget/media/text/MediaListFolderPath;

    .line 410
    invoke-virtual {p2}, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_4

    .line 411
    invoke-virtual {p2}, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->isDirectoryVisible()Z

    move-result v0

    if-nez v0, :cond_3

    .line 412
    invoke-virtual {p2, v1}, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->setVisibility(I)V

    goto :goto_0

    .line 415
    :cond_4
    invoke-virtual {p2}, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->isDirectoryVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 416
    invoke-virtual {p2, v0}, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->setVisibility(I)V

    goto :goto_0

    .line 420
    :cond_5
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaDataDirectoryList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;

    .line 421
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_7

    .line 422
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->isDirectoryVisible()Z

    move-result p2

    if-nez p2, :cond_6

    .line 423
    invoke-virtual {p1, v1}, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->setVisibility(I)V

    goto :goto_1

    .line 426
    :cond_7
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->isDirectoryVisible()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 427
    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->setVisibility(I)V

    goto :goto_1

    :cond_8
    return-void

    .line 395
    :cond_9
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "MediaDataList: media_item_file_layout_id \u6ca1\u6709\u8bbe\u7f6e\u5e03\u5c40\uff0c\u65e0\u6cd5\u52a0\u8f7d\u9002\u914d\u5668item\u5b50\u7c7b\u754c\u9762,\u8bf7\u8bbe\u7f6eitem\u5e03\u5c40\u518d\u8bd5"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic lambda$updateDirectoryList$1(Lcom/yftech/car/widget/media/list/MediaDataList;)V
    .locals 1

    .line 1127
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFileAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->notifyDataSetChangedList()V

    .line 1128
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFileAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->setDirectoryList(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$updateFileList$2(Lcom/yftech/car/widget/media/list/MediaDataList;Ljava/util/List;Z)V
    .locals 0

    .line 1744
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/list/MediaDataList;->setFileList(Ljava/util/List;Z)V

    return-void
.end method

.method public static synthetic lambda$updateFileList$3(Lcom/yftech/car/widget/media/list/MediaDataList;Ljava/util/List;Z)V
    .locals 0

    .line 1767
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/list/MediaDataList;->setFileList(Ljava/util/List;Z)V

    return-void
.end method

.method public static synthetic lambda$updateFolderList$4(Lcom/yftech/car/widget/media/list/MediaDataList;Ljava/util/List;)V
    .locals 0

    .line 1945
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->setFolderList(Ljava/util/List;)V

    return-void
.end method

.method private declared-synchronized saveValue(I)I
    .locals 2

    monitor-enter p0

    .line 2136
    :try_start_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2137
    iget-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMemoryKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2138
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2139
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2140
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 2135
    monitor-exit p0

    throw p1
.end method

.method private setAddItemDecoration()V
    .locals 4

    .line 1389
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mItemDecoration:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    .line 1391
    :goto_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getItemDecorationCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1392
    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->getItemDecorationAt(I)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;

    move-result-object v2

    iget-object v3, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mItemDecoration:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 1398
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mItemDecoration:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->addItemDecoration(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_2
    return-void
.end method

.method private setCheckBoxStatus(IZ)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 543
    iget-object v5, v0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFileAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-virtual {v5}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->isAllSelected()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    .line 544
    :goto_0
    iget-object v6, v0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFileAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-virtual {v6, v4}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->getSelectedSize(Z)J

    move-result-wide v6

    const-string v8, "MediaDataList"

    .line 545
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setCheckBoxStatus: checkSize=="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",isCheckBox=="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ",allSelected=="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ",fileSize=="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v8, v0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaDataModifyBtnList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/16 v12, 0x8

    if-eqz v9, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;

    .line 547
    invoke-virtual {v9}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->getModifyMediaDataListId()I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_2

    invoke-virtual {v9}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->getModifyMediaDataListId()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getId()I

    move-result v14

    if-ne v13, v14, :cond_1

    .line 548
    :cond_2
    invoke-virtual {v9, v1}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->setSelectedSize(I)V

    .line 549
    invoke-virtual {v9, v6, v7}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->setFileSize(J)V

    if-eqz v2, :cond_e

    const/4 v13, 0x2

    const/4 v14, 0x6

    const/4 v15, 0x3

    if-lez v1, :cond_8

    .line 552
    invoke-virtual {v9, v4}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->isClickModify(I)Z

    move-result v16

    if-nez v16, :cond_3

    invoke-virtual {v9, v3}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->isClickModify(I)Z

    move-result v16

    if-nez v16, :cond_3

    invoke-virtual {v9, v13}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->isClickModify(I)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 553
    :cond_3
    invoke-virtual {v9, v4}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->setVisibility(I)V

    :cond_4
    if-eqz v5, :cond_6

    .line 556
    invoke-virtual {v9, v14}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->isClickModify(I)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 557
    invoke-virtual {v9, v4}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->setVisibility(I)V

    .line 559
    :cond_5
    invoke-virtual {v9, v15}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->isClickModify(I)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 560
    invoke-virtual {v9, v12}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->setVisibility(I)V

    goto :goto_2

    .line 563
    :cond_6
    invoke-virtual {v9, v15}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->isClickModify(I)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 564
    invoke-virtual {v9, v4}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->setVisibility(I)V

    .line 566
    :cond_7
    invoke-virtual {v9, v14}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->isClickModify(I)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 567
    invoke-virtual {v9, v12}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->setVisibility(I)V

    goto :goto_2

    .line 571
    :cond_8
    invoke-virtual {v9, v15}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->isClickModify(I)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 572
    invoke-virtual {v9, v4}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->setVisibility(I)V

    .line 574
    :cond_9
    invoke-virtual {v9, v14}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->isClickModify(I)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 575
    invoke-virtual {v9, v12}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->setVisibility(I)V

    .line 577
    :cond_a
    invoke-virtual {v9, v4}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->isClickModify(I)Z

    move-result v14

    if-nez v14, :cond_b

    invoke-virtual {v9, v3}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->isClickModify(I)Z

    move-result v14

    if-nez v14, :cond_b

    invoke-virtual {v9, v13}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->isClickModify(I)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 578
    :cond_b
    invoke-virtual {v9, v12}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->setVisibility(I)V

    .line 582
    :cond_c
    :goto_2
    invoke-virtual {v9, v11}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->isClickModify(I)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 583
    invoke-virtual {v9, v12}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->setVisibility(I)V

    .line 585
    :cond_d
    invoke-virtual {v9, v10}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->isClickModify(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 586
    invoke-virtual {v9, v4}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->setVisibility(I)V

    goto/16 :goto_1

    .line 589
    :cond_e
    invoke-virtual {v9, v11}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->isClickModify(I)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 590
    invoke-virtual {v9, v4}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->setVisibility(I)V

    goto/16 :goto_1

    .line 592
    :cond_f
    invoke-virtual {v9, v12}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->setVisibility(I)V

    goto/16 :goto_1

    .line 597
    :cond_10
    iget-object v3, v0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaDataListTextList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yftech/car/widget/media/text/MediaDataListText;

    .line 598
    invoke-virtual/range {p0 .. p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getId()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/yftech/car/widget/media/text/MediaDataListText;->isMediaDataListId(I)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 599
    invoke-virtual {v5}, Lcom/yftech/car/widget/media/text/MediaDataListText;->isSelectedFunction()Z

    move-result v8

    if-eqz v8, :cond_15

    if-eqz v2, :cond_14

    if-lez v1, :cond_12

    .line 602
    invoke-virtual {v5, v11}, Lcom/yftech/car/widget/media/text/MediaDataListText;->isSelectedFunction(I)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 603
    invoke-virtual {v5, v12}, Lcom/yftech/car/widget/media/text/MediaDataListText;->setVisibility(I)V

    .line 605
    :cond_11
    invoke-virtual {v5, v10}, Lcom/yftech/car/widget/media/text/MediaDataListText;->isSelectedFunction(I)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 606
    invoke-virtual {v5, v4}, Lcom/yftech/car/widget/media/text/MediaDataListText;->setVisibility(I)V

    .line 607
    invoke-virtual {v5, v1, v6, v7}, Lcom/yftech/car/widget/media/text/MediaDataListText;->updateListSize(IJ)V

    goto :goto_6

    .line 610
    :cond_12
    invoke-virtual {v5, v11}, Lcom/yftech/car/widget/media/text/MediaDataListText;->isSelectedFunction(I)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 611
    invoke-virtual {v5, v4}, Lcom/yftech/car/widget/media/text/MediaDataListText;->setVisibility(I)V

    .line 613
    :cond_13
    invoke-virtual {v5, v10}, Lcom/yftech/car/widget/media/text/MediaDataListText;->isSelectedFunction(I)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 614
    invoke-virtual {v5, v12}, Lcom/yftech/car/widget/media/text/MediaDataListText;->setVisibility(I)V

    goto :goto_6

    .line 618
    :cond_14
    invoke-virtual {v5, v12}, Lcom/yftech/car/widget/media/text/MediaDataListText;->setVisibility(I)V

    goto :goto_6

    .line 621
    :cond_15
    invoke-virtual {v5}, Lcom/yftech/car/widget/media/text/MediaDataListText;->isFolderFileSize()Z

    move-result v8

    if-eqz v8, :cond_19

    .line 624
    iget-object v8, v0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFileAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-virtual {v8}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->getDataList()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_17

    .line 626
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v9, v4

    move v13, v9

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_18

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/yftech/car/media/data/entity/MediaFile;

    .line 627
    invoke-virtual {v14}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v15

    if-ne v15, v11, :cond_16

    int-to-long v10, v9

    .line 628
    invoke-virtual {v14}, Lcom/yftech/car/media/data/entity/MediaFile;->getSize()J

    move-result-wide v15

    add-long/2addr v10, v15

    long-to-int v9, v10

    add-int/lit8 v13, v13, 0x1

    int-to-long v10, v13

    .line 630
    invoke-virtual {v14}, Lcom/yftech/car/media/data/entity/MediaFile;->getLastModified()J

    move-result-wide v13

    add-long/2addr v10, v13

    long-to-int v13, v10

    goto :goto_5

    :cond_16
    add-int/lit8 v9, v9, 0x1

    :goto_5
    const/4 v10, 0x5

    const/4 v11, 0x4

    goto :goto_4

    :cond_17
    move v9, v4

    move v13, v9

    .line 636
    :cond_18
    invoke-virtual {v5, v4}, Lcom/yftech/car/widget/media/text/MediaDataListText;->setVisibility(I)V

    int-to-long v10, v13

    .line 637
    invoke-virtual {v5, v9, v10, v11}, Lcom/yftech/car/widget/media/text/MediaDataListText;->updateListSize(IJ)V

    :cond_19
    :goto_6
    const/4 v10, 0x5

    const/4 v11, 0x4

    goto/16 :goto_3

    :cond_1a
    return-void
.end method

.method private setDirectoryList(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;)V"
        }
    .end annotation

    .line 1137
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaListFolderPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/text/MediaListFolderPath;

    if-eqz v1, :cond_0

    .line 1139
    iget-object v2, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mBaseRootDirectoryPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mDirectoryFolderPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->setFolderPathText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1142
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaDataDirectoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;

    .line 1143
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->isMediaDataListId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1144
    iget-object v2, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mBaseRootDirectoryPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mDirectoryFolderPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->setDirectoryPath(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_10

    const-string v0, "MediaDataList"

    .line 1149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDirectoryList: mDirectoryFolderPath =="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mDirectoryFolderPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",list == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mDirectoryFolderPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mBaseRootDirectoryPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_4

    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v3

    :goto_2
    if-eqz v0, :cond_a

    .line 1232
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaListFolderPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v4, 0x4

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/text/MediaListFolderPath;

    .line 1233
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_6

    .line 1234
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->isDirectoryVisible()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1235
    invoke-virtual {v1, v3}, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->setVisibility(I)V

    goto :goto_3

    .line 1238
    :cond_6
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->isDirectoryVisible()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1239
    invoke-virtual {v1, v4}, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->setVisibility(I)V

    goto :goto_3

    .line 1243
    :cond_7
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaDataDirectoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;

    .line 1244
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_9

    .line 1245
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->isDirectoryVisible()Z

    move-result v5

    if-nez v5, :cond_8

    .line 1246
    invoke-virtual {v1, v3}, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->setVisibility(I)V

    goto :goto_4

    .line 1249
    :cond_9
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->isDirectoryVisible()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1250
    invoke-virtual {v1, v4}, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->setVisibility(I)V

    goto :goto_4

    .line 1289
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1290
    iput-boolean v2, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->isListEmpty:Z

    goto :goto_5

    .line 1292
    :cond_b
    iget-boolean p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->isListEmpty:Z

    if-eqz p1, :cond_c

    .line 1293
    iput-boolean v3, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->isListEmpty:Z

    .line 1294
    iput-boolean v2, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->isEmptyAdapter:Z

    .line 1295
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLatelyFolderFileList:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    sget-object v0, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->FOLDER_LIST:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    if-eq p1, v0, :cond_c

    const/4 p1, 0x0

    .line 1296
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->setAdapter(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1299
    :cond_c
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getLayoutManager()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    if-eq p1, v0, :cond_d

    .line 1300
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->setLayoutManager(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1304
    :cond_d
    :goto_5
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLatelyFolderFileList:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    sget-object v0, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->DIRECTORY:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    if-ne p1, v0, :cond_e

    iget-boolean p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->isEmptyAdapter:Z

    if-nez p1, :cond_e

    iget-boolean p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->isListEmpty:Z

    if-eqz p1, :cond_f

    .line 1305
    :cond_e
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFileAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->setAdapter(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1308
    :cond_f
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1309
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 1312
    iput-boolean v3, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->isEmptyAdapter:Z

    .line 1313
    sget-object p1, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->DIRECTORY:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    iput-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLatelyFolderFileList:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    goto :goto_6

    :cond_10
    const-string p0, "MediaDataList"

    const-string/jumbo p1, "updateDirectoryList: list is null"

    .line 1316
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    return-void
.end method

.method private setFileList(Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;Z)V"
        }
    .end annotation

    .line 1773
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaListFolderPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/text/MediaListFolderPath;

    .line 1774
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->isDirectoryInvisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1775
    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->setVisibility(I)V

    goto :goto_0

    .line 1778
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaDataDirectoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;

    .line 1779
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->isDirectoryInvisible()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1780
    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->setVisibility(I)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    .line 1784
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    .line 1797
    :cond_4
    iget-boolean p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->isListEmpty:Z

    if-eqz p1, :cond_5

    .line 1798
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->isListEmpty:Z

    .line 1799
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->isEmptyAdapter:Z

    .line 1800
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLatelyFolderFileList:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    sget-object v1, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->FOLDER_LIST:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    if-eq p1, v1, :cond_5

    const/4 p1, 0x0

    .line 1801
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->setAdapter(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1804
    :cond_5
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getLayoutManager()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    iget-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    if-eq p1, v1, :cond_8

    .line 1805
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->setLayoutManager(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_3

    .line 1785
    :cond_6
    :goto_2
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->isListEmpty:Z

    const/16 p1, 0x3e8

    .line 1786
    iget v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaDefaultList:I

    if-eq p1, v1, :cond_7

    .line 1787
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object p1

    iget v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mUsbIndex:I

    invoke-virtual {p1, v1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->isUsbExists(I)Z

    move-result p1

    if-nez p1, :cond_7

    .line 1788
    invoke-direct {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->setUsbDisconnect()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 1793
    :cond_7
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getLayoutManager()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    iget-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mEmptyLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    if-eq p1, v1, :cond_8

    .line 1794
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mEmptyLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->setLayoutManager(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1852
    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLatelyFolderFileList:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    sget-object v1, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->FILE_LIST:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    if-eq p1, v1, :cond_9

    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLatelyFolderFileList:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    sget-object v1, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->FOLDER_FILE_LIST:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    if-ne p1, v1, :cond_a

    :cond_9
    iget-boolean p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->isEmptyAdapter:Z

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->isListEmpty:Z

    if-eqz p1, :cond_b

    .line 1853
    :cond_a
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFileAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->setAdapter(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_b
    if-eqz p2, :cond_c

    .line 1857
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1858
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {p0, p1, v1, v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 1861
    :cond_c
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->isEmptyAdapter:Z

    .line 1862
    sget-object p1, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->FILE_LIST:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    iput-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLatelyFolderFileList:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    return-void
.end method

.method private setFolderList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFolder;",
            ">;)V"
        }
    .end annotation

    .line 1951
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaListFolderPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/text/MediaListFolderPath;

    .line 1952
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->isDirectoryInvisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1953
    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->setVisibility(I)V

    goto :goto_0

    .line 1957
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaDataDirectoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;

    .line 1958
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->isDirectoryInvisible()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1959
    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->setVisibility(I)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 1963
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    .line 1976
    :cond_4
    iget-boolean v2, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->isListEmpty:Z

    if-eqz v2, :cond_5

    .line 1977
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->isListEmpty:Z

    .line 1978
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->isEmptyAdapter:Z

    .line 1979
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLatelyFolderFileList:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    sget-object v2, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->FILE_LIST:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    if-eq v0, v2, :cond_5

    const/4 v0, 0x0

    .line 1980
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->setAdapter(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1984
    :cond_5
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->setLayoutManager(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_3

    .line 1964
    :cond_6
    :goto_2
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->isListEmpty:Z

    .line 1965
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v0

    iget v2, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mUsbIndex:I

    invoke-virtual {v0, v2}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->isUsbExists(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1966
    invoke-direct {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->setUsbDisconnect()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1971
    :cond_7
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getLayoutManager()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v2, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mEmptyLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    if-eq v0, v2, :cond_8

    .line 1972
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mEmptyLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->setLayoutManager(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1999
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLatelyFolderFileList:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    sget-object v2, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->FOLDER_LIST:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    if-ne v0, v2, :cond_9

    iget-boolean v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->isEmptyAdapter:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->isListEmpty:Z

    if-eqz v0, :cond_a

    .line 2000
    :cond_9
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFolderAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->setAdapter(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V

    .line 2002
    :cond_a
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mItemFileListener:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;

    if-eqz v0, :cond_c

    .line 2003
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mItemFileListener:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_4

    :cond_b
    move v2, v1

    :goto_4
    invoke-virtual {v0, v2}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;->onListSizeChange(I)V

    .line 2005
    :cond_c
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mOnItemChangeListener:Lcom/yftech/car/widget/media/list/MediaDataList$OnItemChangeListener;

    if-eqz v0, :cond_e

    .line 2006
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mOnItemChangeListener:Lcom/yftech/car/widget/media/list/MediaDataList$OnItemChangeListener;

    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :cond_d
    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/list/MediaDataList$OnItemChangeListener;->onListSizeChange(I)V

    .line 2008
    :cond_e
    sget-object p1, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->FOLDER_LIST:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    iput-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLatelyFolderFileList:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    return-void
.end method

.method private setUsbDisconnect()Z
    .locals 2

    .line 1483
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mUsbDisconnectAdapter:Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mUsbDisconnectAdapter:Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;->isExistsLayoutId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1484
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLatelyFolderFileList:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    sget-object v1, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->USB_DISCONNECT:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    if-eq v0, v1, :cond_1

    .line 1485
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getLayoutManager()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mEmptyLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    if-eq v0, v1, :cond_0

    .line 1486
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mEmptyLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->setLayoutManager(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1488
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mUsbDisconnectAdapter:Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->setAdapter(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1489
    sget-object v0, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->USB_DISCONNECT:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    iput-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLatelyFolderFileList:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private startPlayActivity(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 533
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mStartActivity:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MediaDataList"

    .line 534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPlayActivity->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mStartActivity:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 536
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mStartActivity:Ljava/lang/String;

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 537
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 538
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private updatePosition(I)V
    .locals 5

    .line 2064
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaListScrollToPosition:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    instance-of v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_3

    .line 2065
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    check-cast v0, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    .line 2066
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    const-string v2, "MediaDataList"

    .line 2067
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " updatePosition: position=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",firstItemPosition=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v1, 0x1

    if-lt p1, v2, :cond_0

    .line 2069
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt p1, v2, :cond_0

    const-string p0, "MediaDataList"

    .line 2070
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updatePosition no update adapter firstItemPosition =="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    if-le p1, v1, :cond_2

    .line 2073
    iget-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2075
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getHeight()I

    move-result p0

    .line 2076
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 2078
    div-int v2, p0, v1

    .line 2079
    rem-int/2addr p0, v1

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v2, v1

    add-int/2addr v2, p0

    .line 2084
    invoke-virtual {v0, p1, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    const-string p0, "MediaDataList"

    .line 2085
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updatePosition: offset=="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "MediaDataList"

    const-string/jumbo v1, "updatePosition: childAt is null"

    .line 2087
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    invoke-virtual {p0, p1, v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->scrollToPositionWithOffset(II)V

    goto :goto_0

    .line 2092
    :cond_2
    invoke-virtual {p0, p1, v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->scrollToPositionWithOffset(II)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public backDirectoryFolder()Z
    .locals 5

    .line 960
    iget v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaDefaultList:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaDefaultList:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaDefaultList:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaDefaultList:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 985
    :cond_0
    iget v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaDefaultList:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    .line 986
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mDirectoryFolderPath:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 997
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mDirectoryFolderPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mBaseRootDirectoryPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_7

    .line 999
    invoke-direct {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->directoryBack()V

    goto :goto_3

    .line 964
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLatelyFolderFileList:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    sget-object v3, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->FOLDER_FILE_LIST:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    if-ne v0, v3, :cond_7

    .line 965
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaListFolderPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/widget/media/text/MediaListFolderPath;

    .line 966
    invoke-virtual {v3}, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->isDirectoryInvisible()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 967
    invoke-virtual {v3, v1}, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->setVisibility(I)V

    goto :goto_1

    .line 970
    :cond_3
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaDataDirectoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;

    .line 971
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->isMediaDataListId(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 972
    invoke-virtual {v3}, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->isDirectoryInvisible()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 973
    invoke-virtual {v3, v1}, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->setVisibility(I)V

    goto :goto_2

    .line 978
    :cond_5
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getLayoutManager()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    if-eq v0, v1, :cond_6

    .line 979
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->setLayoutManager(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 981
    :cond_6
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFolderAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->setAdapter(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V

    .line 983
    sget-object v0, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->FOLDER_LIST:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    iput-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLatelyFolderFileList:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    :goto_3
    return v2
.end method

.method public clearList()V
    .locals 4

    const-string v0, "MediaDataList"

    const-string v1, "clearList: -----------------------------clearList"

    .line 2099
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getLayoutManager()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mEmptyLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    if-eq v0, v1, :cond_0

    .line 2101
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mEmptyLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->setLayoutManager(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)V

    :cond_0
    const/4 v0, 0x0

    .line 2103
    iput-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mDirectoryFolderPath:Ljava/lang/String;

    const/4 v1, 0x1

    .line 2104
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->isListEmpty:Z

    .line 2105
    invoke-direct {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->setUsbDisconnect()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2107
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->setAdapter(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V

    .line 2109
    :cond_1
    iget-object v3, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFileAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-virtual {v3, v0, v1}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->updateList(Ljava/util/List;Z)Z

    .line 2110
    iget-object v3, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFolderAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;

    invoke-virtual {v3, v0, v1}, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->updateList(Ljava/util/List;Z)Z

    if-nez v2, :cond_3

    .line 2112
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLatelyFolderFileList:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    sget-object v1, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->FOLDER_LIST:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFolderAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFileAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->setAdapter(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V

    .line 2115
    :cond_3
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaListFolderPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/text/MediaListFolderPath;

    .line 2116
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->isDirectoryInvisible()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2117
    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->setVisibility(I)V

    goto :goto_1

    .line 2120
    :cond_5
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaDataDirectoryList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;

    .line 2121
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->isDirectoryInvisible()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2122
    invoke-virtual {v0, v2}, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->setVisibility(I)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method public closeListCheckBox()Z
    .locals 1

    .line 910
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFileAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->setCheckBox(Z)Z

    move-result p0

    return p0
.end method

.method public equalsFileList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;)Z"
        }
    .end annotation

    .line 2229
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFileAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->equalsFileList(Ljava/util/List;)Z

    move-result p0

    const-string p1, "MediaDataList"

    .line 2230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "equalsFileList: isFileList=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public getDirectoryFolderPath()Ljava/lang/String;
    .locals 0

    .line 925
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mDirectoryFolderPath:Ljava/lang/String;

    return-object p0
.end method

.method public getMediaDefaultList()I
    .locals 3

    .line 1405
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->isMediaMemoryList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1406
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mSp:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMemoryKey:Ljava/lang/String;

    iget v2, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaDefaultList:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaDefaultList:I

    .line 1408
    :cond_0
    iget p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaDefaultList:I

    return p0
.end method

.method public getMediaSearchBackList()I
    .locals 0

    .line 1412
    iget p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaSearchBackList:I

    return p0
.end method

.method public getUsbIndex()I
    .locals 0

    .line 1327
    iget p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mUsbIndex:I

    return p0
.end method

.method public isEmptyList()Z
    .locals 4

    .line 2144
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLatelyFolderFileList:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    sget-object v1, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->FOLDER_LIST:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 2145
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFolderAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->getDataListSize()I

    move-result p0

    if-nez p0, :cond_0

    move v2, v3

    :cond_0
    return v2

    .line 2147
    :cond_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFileAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->getDataListSize()I

    move-result p0

    if-nez p0, :cond_2

    move v2, v3

    :cond_2
    return v2
.end method

.method public isLatelyList(Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;)Z
    .locals 0

    .line 2152
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLatelyFolderFileList:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMediaListClickMemoryDirectory()Z
    .locals 0

    .line 1335
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaListClickMemoryDirectory:Z

    return p0
.end method

.method public isMediaMemoryList()Z
    .locals 0

    .line 1416
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaMemoryList:Z

    return p0
.end method

.method public isMediaUsbDisconnectAutoSwitchIndex()Z
    .locals 0

    .line 1331
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaUsbDisconnectAutoSwitchIndex:Z

    return p0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .line 2012
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLatelyFolderFileList:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    sget-object v1, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->FOLDER_LIST:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    if-ne v0, v1, :cond_0

    .line 2013
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFolderAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->notifyDataSetChanged()V

    .line 2015
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLatelyFolderFileList:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    sget-object v1, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->FILE_LIST:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLatelyFolderFileList:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    sget-object v1, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->FOLDER_FILE_LIST:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLatelyFolderFileList:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    sget-object v1, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->DIRECTORY:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLatelyFolderFileList:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    sget-object v1, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->SEARCH:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    if-ne v0, v1, :cond_2

    .line 2016
    :cond_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFileAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->notifyDataSetChangedList()V

    :cond_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 1323
    invoke-super {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->onFinishInflate()V

    return-void
.end method

.method public release()V
    .locals 3

    .line 2156
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaListFolderPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2157
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mItemDecoration:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2158
    :goto_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getItemDecorationCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2159
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getItemDecorationAt(I)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mItemDecoration:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;

    if-ne v1, v2, :cond_0

    .line 2160
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mItemDecoration:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->removeItemDecoration(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2165
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFileAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    if-eqz v0, :cond_2

    .line 2166
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFileAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->release()V

    .line 2168
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFolderAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;

    if-eqz v0, :cond_3

    .line 2169
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFolderAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->release()V

    .line 2172
    :cond_3
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mOnScrollListener:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->removeOnScrollListener(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 3

    const-string v0, "MediaDataList"

    .line 1420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scrollToPositionWithOffset: position=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",offset=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    instance-of v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    .line 1422
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    check-cast p0, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    .line 1423
    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_0
    return-void
.end method

.method public setCustomLayoutManager(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 0

    .line 914
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    return-void
.end method

.method public setLinkedList(Ljava/util/LinkedList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Landroid/view/ViewGroup;",
            ">;)V"
        }
    .end annotation

    .line 2205
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFileAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-virtual {v0, p0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->getHeadLayout(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2206
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 2207
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2210
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFileAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-virtual {v0, p0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->getEndingLayout(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2211
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 2212
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2215
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFolderAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;

    invoke-virtual {v0, p0}, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->getHeadLayout(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2216
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 2217
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2220
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFolderAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;

    invoke-virtual {v0, p0}, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->getEndingLayout(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 2221
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 2222
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public setMediaDataDirectoryList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;",
            ">;)V"
        }
    .end annotation

    .line 945
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaDataDirectoryList:Ljava/util/List;

    .line 946
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaDataDirectoryList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;

    .line 947
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->isMediaDataListId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 948
    iget-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mOnItemClickPathListener:Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder$OnItemClickPathListener;

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->setOnItemPathListener(Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder$OnItemClickPathListener;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setMediaDataListTextList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/text/MediaDataListText;",
            ">;)V"
        }
    .end annotation

    .line 929
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaDataListTextList:Ljava/util/List;

    .line 930
    invoke-direct {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->setAddItemDecoration()V

    return-void
.end method

.method public setMediaDataModifyBtnList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;",
            ">;)V"
        }
    .end annotation

    .line 2191
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaDataModifyBtnList:Ljava/util/List;

    .line 2192
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;

    .line 2193
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->getModifyMediaDataListId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->getModifyMediaDataListId()I

    move-result v1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getId()I

    move-result v2

    if-ne v1, v2, :cond_0

    :cond_1
    const/16 v1, 0x8

    .line 2197
    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->setVisibility(I)V

    .line 2199
    iget-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaDataModifyBtnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setMediaDefaultList(I)V
    .locals 1

    .line 1379
    iput p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaDefaultList:I

    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    .line 1381
    iput p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaSearchBackList:I

    .line 1383
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->isMediaMemoryList()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1384
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->saveValue(I)I

    :cond_1
    return-void
.end method

.method public setMediaListFolderPath(Lcom/yftech/car/widget/media/text/MediaListFolderPath;)V
    .locals 2

    .line 934
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->getListId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->getListId()I

    move-result v0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 935
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaListFolderPathList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 936
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->isClickBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 937
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFolderPathClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 938
    :cond_1
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->isClickFolder()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 939
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFolderPathTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setMediaType(ILjava/lang/Runnable;)V
    .locals 3

    .line 1428
    iput p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaFileType:I

    .line 1429
    iput-object p2, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mUpdateDataRunnable:Ljava/lang/Runnable;

    .line 1431
    iget p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mUsbIndex:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    .line 1433
    iget p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaFileType:I

    packed-switch p1, :pswitch_data_0

    .line 1441
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getPhotoExistsDataIndex()[B

    move-result-object p1

    goto :goto_0

    .line 1438
    :pswitch_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getVideoExistsDataIndex()[B

    move-result-object p1

    goto :goto_0

    .line 1435
    :pswitch_1
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getMusicExistsDataIndex()[B

    move-result-object p1

    :goto_0
    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 1445
    array-length v0, p1

    if-lez v0, :cond_0

    .line 1446
    aget-byte p1, p1, p2

    iput p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mUsbIndex:I

    goto :goto_1

    .line 1448
    :cond_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getExistUdiskList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1449
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1450
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getUsbIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mUsbIndex:I

    .line 1451
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object p1

    iget p2, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mUsbIndex:I

    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->isScanner(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1452
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->setUsbLoadingScan()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 1457
    :cond_1
    iput p2, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mUsbIndex:I

    .line 1458
    invoke-direct {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->setUsbDisconnect()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 1464
    :cond_2
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object p1

    iget p2, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mUsbIndex:I

    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->isUsbExists(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1465
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object p1

    iget p2, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mUsbIndex:I

    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->isScanner(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1466
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->setUsbLoadingScan()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 1471
    :cond_3
    invoke-direct {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->setUsbDisconnect()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 1476
    :cond_4
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 1477
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mUpdateDataRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    const-string p0, "MediaDataList"

    .line 1478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMediaType: loading time =="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setOnDirectoryListener(Lcom/yftech/car/widget/media/list/MediaDataList$OnDirectoryListener;)V
    .locals 0

    .line 1375
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mOnDirectoryListener:Lcom/yftech/car/widget/media/list/MediaDataList$OnDirectoryListener;

    return-void
.end method

.method public setOnItemChangeListener(Lcom/yftech/car/widget/media/list/MediaDataList$OnItemChangeListener;)V
    .locals 0

    .line 1367
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mOnItemChangeListener:Lcom/yftech/car/widget/media/list/MediaDataList$OnItemChangeListener;

    return-void
.end method

.method public setOnItemFileListener(Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1359
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mItemFileListener:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;

    return-void
.end method

.method public setSearchFlags(I)V
    .locals 0

    .line 1350
    iput p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mSearchFlags:I

    return-void
.end method

.method public setSearchLoading()V
    .locals 1

    .line 2176
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaSearchLoadAdapter:Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaSearchLoadAdapter:Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;->isExistsLayoutId()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2177
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->isListEmpty:Z

    .line 2178
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mEmptyLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->setLayoutManager(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2179
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaSearchLoadAdapter:Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->setAdapter(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V

    .line 2180
    sget-object v0, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->SEARCH_LOADING:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    iput-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLatelyFolderFileList:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    :cond_0
    return-void
.end method

.method public setSideTextRetrievalViewList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/view/SideTextRetrievalView;",
            ">;)V"
        }
    .end annotation

    .line 2235
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;

    .line 2236
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->isMediaDataListId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2237
    iput-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mSideTextRetrievalView:Lcom/yftech/car/widget/media/view/SideTextRetrievalView;

    .line 2238
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mSideTextRetrievalView:Lcom/yftech/car/widget/media/view/SideTextRetrievalView;

    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mOnSideTextRetrievalListener:Lcom/yftech/car/widget/media/view/SideTextRetrievalView$OnSideTextRetrievalListener;

    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->setOnSideTextRetrievalListener(Lcom/yftech/car/widget/media/view/SideTextRetrievalView$OnSideTextRetrievalListener;)V

    :cond_1
    return-void
.end method

.method public setSpanCount(I)V
    .locals 1

    .line 918
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    instance-of v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 919
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    check-cast p0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;

    .line 920
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    :cond_0
    return-void
.end method

.method public setUsbIndex(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1339
    invoke-virtual {p0, p1, v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->setUsbIndex(IZ)V

    return-void
.end method

.method public setUsbIndex(IZ)V
    .locals 0

    .line 1343
    iput p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mUsbIndex:I

    if-eqz p2, :cond_0

    .line 1344
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mUpdateDataRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 1345
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mUpdateDataRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public setUsbLoadingScan()Z
    .locals 2

    .line 1497
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mUsbLoadingAdapter:Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mUsbLoadingAdapter:Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;->isExistsLayoutId()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaDefaultList:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaDefaultList:I

    if-eqz v0, :cond_1

    .line 1498
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLatelyFolderFileList:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    sget-object v1, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->USB_LOADING:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    if-eq v0, v1, :cond_0

    .line 1499
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mUsbLoadingAdapter:Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->setAdapter(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1500
    sget-object v0, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->USB_LOADING:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    iput-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLatelyFolderFileList:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public updateDirectoryList()V
    .locals 7

    .line 1038
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mDirectoryFolderPath:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1039
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getUdiskList()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1040
    array-length v1, v0

    iget v2, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mUsbIndex:I

    if-le v1, v2, :cond_1

    .line 1042
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getExistUdiskList()Ljava/util/List;

    move-result-object v1

    .line 1043
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1044
    iget v3, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mUsbIndex:I

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1045
    iput-object v2, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mDirectoryFolderPath:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "MediaDataList"

    const-string v1, " updateDirectoryList: udiskList is null"

    .line 1051
    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mDirectoryFolderPath:Ljava/lang/String;

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    .line 1068
    iget-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mBaseRootDirectoryPath:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 1069
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getUdiskList()[Ljava/lang/String;

    move-result-object v1

    .line 1070
    iget v2, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mUsbIndex:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mBaseRootDirectoryPath:Ljava/lang/String;

    .line 1073
    :cond_3
    iget-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mDirectoryFolderPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mBaseRootDirectoryPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-gt v1, v2, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    move v1, v3

    :goto_1
    const/4 v2, 0x4

    if-eqz v1, :cond_7

    .line 1078
    iget-object v4, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaListFolderPathList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yftech/car/widget/media/text/MediaListFolderPath;

    .line 1079
    invoke-virtual {v5}, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->isDirectoryInvisible()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1080
    invoke-virtual {v5, v2}, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->setVisibility(I)V

    goto :goto_2

    .line 1081
    :cond_6
    invoke-virtual {v5}, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->isDirectoryVisible()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1082
    invoke-virtual {v5, v3}, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->setVisibility(I)V

    goto :goto_2

    :cond_7
    if-eqz v1, :cond_a

    .line 1088
    iget-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaDataDirectoryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;

    .line 1089
    invoke-virtual {v4}, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->isDirectoryInvisible()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1090
    invoke-virtual {v4, v2}, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->setVisibility(I)V

    goto :goto_3

    .line 1091
    :cond_9
    invoke-virtual {v4}, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->isDirectoryVisible()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1092
    invoke-virtual {v4, v3}, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->setVisibility(I)V

    goto :goto_3

    .line 1097
    :cond_a
    iget-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mOnDirectoryListener:Lcom/yftech/car/widget/media/list/MediaDataList$OnDirectoryListener;

    if-eqz v1, :cond_b

    .line 1098
    iget-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mOnDirectoryListener:Lcom/yftech/car/widget/media/list/MediaDataList$OnDirectoryListener;

    iget-object v2, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mDirectoryFolderPath:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/yftech/car/widget/media/list/MediaDataList$OnDirectoryListener;->onDirectoryPathChange(Ljava/lang/String;)V

    .line 1102
    :cond_b
    iget v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaFileType:I

    packed-switch v1, :pswitch_data_0

    const-string v1, "MediaDataList"

    .line 1113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemFile: mMediaFileType=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaFileType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1110
    :pswitch_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mDirectoryFolderPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getPhotoDirectory(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_4

    .line 1107
    :pswitch_1
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mDirectoryFolderPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getVideoDirectory(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_4

    .line 1104
    :pswitch_2
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mDirectoryFolderPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getMusicDirectory(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1121
    :goto_4
    iget-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFileAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->updateDirectoryList(Ljava/util/List;)Z

    .line 1123
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_c

    .line 1124
    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->setDirectoryList(Ljava/util/List;)V

    goto :goto_5

    .line 1126
    :cond_c
    new-instance v0, Lcom/yftech/car/widget/media/list/-$$Lambda$MediaDataList$7XHoePbgYf0dGw8AkFdP5WyfvvM;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/list/-$$Lambda$MediaDataList$7XHoePbgYf0dGw8AkFdP5WyfvvM;-><init>(Lcom/yftech/car/widget/media/list/MediaDataList;)V

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_5

    :cond_d
    const-string p0, "MediaDataList"

    const-string/jumbo v0, "updateDirectoryList: mDirectoryFolderPath is null"

    .line 1132
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateDirectoryList(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "MediaDataList"

    .line 1513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " updateDirectoryList: list=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "MediaDataList"

    const-string v1, " updateDirectoryList: list is null"

    .line 1515
    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1518
    :goto_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaDataListTextList:Ljava/util/List;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaDataListTextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    if-eqz p1, :cond_2

    .line 1522
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v4, v3

    move v5, v4

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/yftech/car/media/data/entity/MediaFile;

    .line 1523
    invoke-virtual {v6}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v7

    if-ne v7, v1, :cond_1

    int-to-long v7, v4

    .line 1524
    invoke-virtual {v6}, Lcom/yftech/car/media/data/entity/MediaFile;->getSize()J

    move-result-wide v9

    add-long/2addr v7, v9

    long-to-int v4, v7

    add-int/lit8 v5, v5, 0x1

    int-to-long v7, v5

    .line 1526
    invoke-virtual {v6}, Lcom/yftech/car/media/data/entity/MediaFile;->getLastModified()J

    move-result-wide v5

    add-long/2addr v7, v5

    long-to-int v5, v7

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move v4, v3

    move v5, v4

    .line 1532
    :cond_3
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaDataListTextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/yftech/car/widget/media/text/MediaDataListText;

    .line 1533
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/yftech/car/widget/media/text/MediaDataListText;->isMediaDataListId(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1534
    invoke-virtual {v6}, Lcom/yftech/car/widget/media/text/MediaDataListText;->isSelectedFunction()Z

    move-result v7

    if-nez v7, :cond_6

    .line 1535
    invoke-virtual {v6}, Lcom/yftech/car/widget/media/text/MediaDataListText;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_5

    .line 1536
    invoke-virtual {v6, v3}, Lcom/yftech/car/widget/media/text/MediaDataListText;->setVisibility(I)V

    :cond_5
    int-to-long v7, v5

    .line 1538
    invoke-virtual {v6, v4, v7, v8}, Lcom/yftech/car/widget/media/text/MediaDataListText;->updateListSize(IJ)V

    .line 1541
    :cond_6
    iget-object v7, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFileAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-virtual {v7, v3}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->getSelectedSize(Z)J

    move-result-wide v7

    .line 1543
    iget-object v9, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFileAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-virtual {v9}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->isCheckBox()Z

    move-result v9

    const/4 v10, 0x5

    const/16 v11, 0x8

    if-eqz v9, :cond_a

    const-wide/16 v12, 0x0

    cmp-long v9, v7, v12

    if-lez v9, :cond_8

    .line 1545
    invoke-virtual {v6, v1}, Lcom/yftech/car/widget/media/text/MediaDataListText;->isSelectedFunction(I)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1546
    invoke-virtual {v6, v11}, Lcom/yftech/car/widget/media/text/MediaDataListText;->setVisibility(I)V

    .line 1548
    :cond_7
    invoke-virtual {v6, v10}, Lcom/yftech/car/widget/media/text/MediaDataListText;->isSelectedFunction(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1549
    invoke-virtual {v6, v3}, Lcom/yftech/car/widget/media/text/MediaDataListText;->setVisibility(I)V

    .line 1550
    iget-object v9, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFileAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-virtual {v9, v2}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->getSelectedSize(Z)J

    move-result-wide v9

    long-to-int v9, v9

    invoke-virtual {v6, v9, v7, v8}, Lcom/yftech/car/widget/media/text/MediaDataListText;->updateListSize(IJ)V

    goto :goto_2

    .line 1553
    :cond_8
    invoke-virtual {v6, v1}, Lcom/yftech/car/widget/media/text/MediaDataListText;->isSelectedFunction(I)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1554
    invoke-virtual {v6, v3}, Lcom/yftech/car/widget/media/text/MediaDataListText;->setVisibility(I)V

    .line 1556
    :cond_9
    invoke-virtual {v6, v10}, Lcom/yftech/car/widget/media/text/MediaDataListText;->isSelectedFunction(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1557
    invoke-virtual {v6, v11}, Lcom/yftech/car/widget/media/text/MediaDataListText;->setVisibility(I)V

    .line 1558
    iget-object v9, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFileAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-virtual {v9, v2}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->getSelectedSize(Z)J

    move-result-wide v9

    long-to-int v9, v9

    invoke-virtual {v6, v9, v7, v8}, Lcom/yftech/car/widget/media/text/MediaDataListText;->updateListSize(IJ)V

    goto :goto_2

    .line 1562
    :cond_a
    invoke-virtual {v6, v1}, Lcom/yftech/car/widget/media/text/MediaDataListText;->isSelectedFunction(I)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1563
    invoke-virtual {v6, v11}, Lcom/yftech/car/widget/media/text/MediaDataListText;->setVisibility(I)V

    .line 1565
    :cond_b
    invoke-virtual {v6, v10}, Lcom/yftech/car/widget/media/text/MediaDataListText;->isSelectedFunction(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1566
    invoke-virtual {v6, v11}, Lcom/yftech/car/widget/media/text/MediaDataListText;->setVisibility(I)V

    .line 1567
    iget-object v9, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFileAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-virtual {v9, v2}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->getSelectedSize(Z)J

    move-result-wide v9

    long-to-int v9, v9

    invoke-virtual {v6, v9, v7, v8}, Lcom/yftech/car/widget/media/text/MediaDataListText;->updateListSize(IJ)V

    goto/16 :goto_2

    .line 1574
    :cond_c
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getUdiskList()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1579
    iget v4, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mUsbIndex:I

    aget-object v0, v0, v4

    iput-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mBaseRootDirectoryPath:Ljava/lang/String;

    .line 1580
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getExistUdiskList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1582
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v4, v3

    :cond_d
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1583
    iget-object v6, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mBaseRootDirectoryPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    if-lez v4, :cond_e

    const-string v0, "/"

    .line 1585
    invoke-virtual {v5, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mBaseRootDirectoryPath:Ljava/lang/String;

    goto :goto_4

    .line 1588
    :cond_e
    iput-object v5, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mBaseRootDirectoryPath:Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_f
    const-string v0, "MediaDataList"

    const-string/jumbo v4, "updateDirectoryList: is getExistUdiskList null"

    .line 1594
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    :cond_10
    :goto_4
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mBaseRootDirectoryPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mDirectoryFolderPath:Ljava/lang/String;

    const-string v0, "MediaDataList"

    .line 1598
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " updateDirectoryList: mBaseRootDirectoryPath=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mBaseRootDirectoryPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_11
    const-string v0, "MediaDataList"

    const-string v4, " updateDirectoryList: getUdiskList is null"

    .line 1600
    invoke-static {v0, v4}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    :goto_5
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFileAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->isEmptyItemDirectoryLayoutId()Z

    move-result v0

    if-nez v0, :cond_22

    .line 1609
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFileAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->updateDirectoryList(Ljava/util/List;)Z

    .line 1611
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mOnDirectoryListener:Lcom/yftech/car/widget/media/list/MediaDataList$OnDirectoryListener;

    if-eqz v0, :cond_12

    .line 1612
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mOnDirectoryListener:Lcom/yftech/car/widget/media/list/MediaDataList$OnDirectoryListener;

    iget-object v4, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mDirectoryFolderPath:Ljava/lang/String;

    invoke-interface {v0, v4}, Lcom/yftech/car/widget/media/list/MediaDataList$OnDirectoryListener;->onDirectoryPathChange(Ljava/lang/String;)V

    .line 1615
    :cond_12
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaListFolderPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yftech/car/widget/media/text/MediaListFolderPath;

    .line 1616
    iget-object v5, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mDirectoryFolderPath:Ljava/lang/String;

    if-eqz v5, :cond_14

    .line 1617
    iget-object v5, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mBaseRootDirectoryPath:Ljava/lang/String;

    iget-object v6, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mDirectoryFolderPath:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->setFolderPathText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1619
    :cond_14
    invoke-virtual {v4}, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->isDirectoryInvisible()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1620
    invoke-virtual {v4, v1}, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->setVisibility(I)V

    goto :goto_6

    .line 1621
    :cond_15
    invoke-virtual {v4}, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->isDirectoryVisible()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1622
    invoke-virtual {v4, v3}, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->setVisibility(I)V

    goto :goto_6

    .line 1625
    :cond_16
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaDataDirectoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;

    .line 1626
    iget-object v5, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mDirectoryFolderPath:Ljava/lang/String;

    if-eqz v5, :cond_18

    .line 1627
    iget-object v5, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mBaseRootDirectoryPath:Ljava/lang/String;

    iget-object v6, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mDirectoryFolderPath:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->setDirectoryPath(Ljava/lang/String;Ljava/lang/String;)V

    .line 1629
    :cond_18
    invoke-virtual {v4}, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->isDirectoryInvisible()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 1630
    invoke-virtual {v4, v1}, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->setVisibility(I)V

    goto :goto_7

    .line 1631
    :cond_19
    invoke-virtual {v4}, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->isDirectoryVisible()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 1632
    invoke-virtual {v4, v3}, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->setVisibility(I)V

    goto :goto_7

    :cond_1a
    if-eqz p1, :cond_1d

    .line 1636
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1b

    goto :goto_8

    .line 1647
    :cond_1b
    iget-boolean p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->isListEmpty:Z

    if-eqz p1, :cond_1c

    .line 1648
    iput-boolean v3, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->isListEmpty:Z

    .line 1649
    iput-boolean v2, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->isEmptyAdapter:Z

    .line 1650
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLatelyFolderFileList:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    sget-object v0, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->FOLDER_LIST:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    if-eq p1, v0, :cond_1c

    const/4 p1, 0x0

    .line 1651
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->setAdapter(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1654
    :cond_1c
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getLayoutManager()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    if-eq p1, v0, :cond_1f

    .line 1655
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->setLayoutManager(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_9

    .line 1637
    :cond_1d
    :goto_8
    iput-boolean v2, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->isListEmpty:Z

    .line 1638
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object p1

    iget v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mUsbIndex:I

    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->isUsbExists(I)Z

    move-result p1

    if-nez p1, :cond_1e

    .line 1639
    invoke-direct {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->setUsbDisconnect()Z

    move-result p1

    if-eqz p1, :cond_1e

    return-void

    .line 1643
    :cond_1e
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getLayoutManager()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mEmptyLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    if-eq p1, v0, :cond_1f

    .line 1644
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mEmptyLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->setLayoutManager(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1660
    :cond_1f
    :goto_9
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLatelyFolderFileList:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    sget-object v0, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->DIRECTORY:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    if-ne p1, v0, :cond_20

    iget-boolean p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->isEmptyAdapter:Z

    if-nez p1, :cond_20

    iget-boolean p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->isListEmpty:Z

    if-eqz p1, :cond_21

    .line 1661
    :cond_20
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFileAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->setAdapter(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1664
    :cond_21
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1665
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 1668
    iput-boolean v3, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->isEmptyAdapter:Z

    .line 1669
    sget-object p1, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->DIRECTORY:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    iput-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLatelyFolderFileList:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    return-void

    .line 1606
    :cond_22
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "MediaDataList: media_item_directory_layout_id \u6ca1\u6709\u8bbe\u7f6e\u5e03\u5c40\uff0c\u65e0\u6cd5\u52a0\u8f7d\u9002\u914d\u5668item\u5b50\u7c7b\u754c\u9762,\u8bf7\u8bbe\u7f6eitem\u5e03\u5c40\u518d\u8bd5"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateFileList(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1673
    invoke-virtual {p0, p1, p2, v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFileList(Ljava/util/List;ZZ)V

    return-void
.end method

.method public updateFileList(Ljava/util/List;ZZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;ZZ)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "MediaDataList"

    .line 1678
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " updateFileList: list=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "MediaDataList"

    const-string v1, " updateFileList: list is null"

    .line 1680
    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1684
    :goto_0
    iget v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaFileType:I

    if-eqz v0, :cond_9

    .line 1685
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFileAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->isEmptyItemDateLayoutId()Z

    move-result v0

    if-nez v0, :cond_9

    iget v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaDefaultList:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 1689
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1691
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    const-wide/16 v2, 0x0

    move v5, v0

    move-wide v3, v2

    move v2, v5

    .line 1694
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 1695
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/yftech/car/media/data/entity/MediaFile;

    .line 1696
    invoke-virtual {v6}, Lcom/yftech/car/media/data/entity/MediaFile;->getLastModified()J

    move-result-wide v7

    cmp-long v7, v7, v3

    if-lez v7, :cond_1

    .line 1697
    invoke-virtual {v6}, Lcom/yftech/car/media/data/entity/MediaFile;->getLastModified()J

    move-result-wide v3

    move v5, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1702
    :cond_2
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/media/data/entity/MediaFile;

    .line 1704
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, -0xb

    if-nez v3, :cond_3

    .line 1705
    new-instance v3, Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-direct {v3, v4}, Lcom/yftech/car/media/data/entity/MediaFile;-><init>(I)V

    .line 1706
    invoke-virtual {v2}, Lcom/yftech/car/media/data/entity/MediaFile;->getLastModified()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/yftech/car/media/data/entity/MediaFile;->setLastModified(J)V

    .line 1707
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1711
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x1

    if-le v3, v6, :cond_4

    .line 1712
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/media/data/entity/MediaFile;

    .line 1716
    iget-object v6, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mDate:Ljava/util/Date;

    invoke-virtual {v3}, Lcom/yftech/car/media/data/entity/MediaFile;->getLastModified()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/Date;->setTime(J)V

    .line 1718
    iget-object v6, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v7, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mDate:Ljava/util/Date;

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 1720
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1722
    iget-object v7, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mDate:Ljava/util/Date;

    invoke-virtual {v2}, Lcom/yftech/car/media/data/entity/MediaFile;->getLastModified()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/Date;->setTime(J)V

    .line 1724
    iget-object v7, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v8, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mDate:Ljava/util/Date;

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 1726
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-eq v6, v7, :cond_4

    .line 1728
    invoke-virtual {v3}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v3

    if-eq v3, v4, :cond_4

    .line 1729
    new-instance v3, Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-direct {v3, v4}, Lcom/yftech/car/media/data/entity/MediaFile;-><init>(I)V

    .line 1730
    invoke-virtual {v2}, Lcom/yftech/car/media/data/entity/MediaFile;->getLastModified()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/yftech/car/media/data/entity/MediaFile;->setLastModified(J)V

    .line 1731
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1735
    :cond_4
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1736
    invoke-interface {p1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1739
    :cond_5
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFileAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-virtual {p1, v1, p2}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->updateList(Ljava/util/List;Z)Z

    .line 1741
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    if-ne p1, p2, :cond_6

    .line 1742
    invoke-direct {p0, v1, p3}, Lcom/yftech/car/widget/media/list/MediaDataList;->setFileList(Ljava/util/List;Z)V

    goto :goto_3

    .line 1744
    :cond_6
    new-instance p1, Lcom/yftech/car/widget/media/list/-$$Lambda$MediaDataList$LGPlg--OJaqpnB4ypV27XSK5qt4;

    invoke-direct {p1, p0, v1, p3}, Lcom/yftech/car/widget/media/list/-$$Lambda$MediaDataList$LGPlg--OJaqpnB4ypV27XSK5qt4;-><init>(Lcom/yftech/car/widget/media/list/MediaDataList;Ljava/util/List;Z)V

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->postOnAnimation(Ljava/lang/Runnable;)V

    :goto_3
    return-void

    .line 1748
    :cond_7
    iget-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mOnItemFileListener:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;

    if-eqz v1, :cond_8

    .line 1749
    iget-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mOnItemFileListener:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;->onListSizeChange(I)V

    .line 1751
    :cond_8
    iget-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mOnItemChangeListener:Lcom/yftech/car/widget/media/list/MediaDataList$OnItemChangeListener;

    if-eqz v1, :cond_9

    .line 1752
    iget-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mOnItemChangeListener:Lcom/yftech/car/widget/media/list/MediaDataList$OnItemChangeListener;

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/list/MediaDataList$OnItemChangeListener;->onListSizeChange(I)V

    .line 1758
    :cond_9
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFileAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->isEmptyItemFileLayoutId()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1762
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFileAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->updateList(Ljava/util/List;Z)Z

    .line 1764
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p2, v0, :cond_a

    .line 1765
    invoke-direct {p0, p1, p3}, Lcom/yftech/car/widget/media/list/MediaDataList;->setFileList(Ljava/util/List;Z)V

    goto :goto_4

    .line 1767
    :cond_a
    new-instance p2, Lcom/yftech/car/widget/media/list/-$$Lambda$MediaDataList$exQ9t0kHMT0m7WcCdoR7LG3ti5Y;

    invoke-direct {p2, p0, p1, p3}, Lcom/yftech/car/widget/media/list/-$$Lambda$MediaDataList$exQ9t0kHMT0m7WcCdoR7LG3ti5Y;-><init>(Lcom/yftech/car/widget/media/list/MediaDataList;Ljava/util/List;Z)V

    invoke-virtual {p0, p2}, Lcom/yftech/car/widget/media/list/MediaDataList;->postOnAnimation(Ljava/lang/Runnable;)V

    :goto_4
    return-void

    .line 1759
    :cond_b
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "MediaDataList: media_item_file_layout_id \u6ca1\u6709\u8bbe\u7f6e\u5e03\u5c40\uff0c\u65e0\u6cd5\u52a0\u8f7d\u9002\u914d\u5668item\u5b50\u7c7b\u754c\u9762,\u8bf7\u8bbe\u7f6eitem\u5e03\u5c40\u518d\u8bd5"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateFolderList(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFolder;",
            ">;Z)V"
        }
    .end annotation

    .line 1936
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFolderAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->isEmptyItemFolderLayoutId()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1940
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFolderAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->updateList(Ljava/util/List;Z)Z

    .line 1942
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p2, v0, :cond_0

    .line 1943
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->setFolderList(Ljava/util/List;)V

    goto :goto_0

    .line 1945
    :cond_0
    new-instance p2, Lcom/yftech/car/widget/media/list/-$$Lambda$MediaDataList$2p2g-lyH1pKx3Nz1XzgkWt7nTWU;

    invoke-direct {p2, p0, p1}, Lcom/yftech/car/widget/media/list/-$$Lambda$MediaDataList$2p2g-lyH1pKx3Nz1XzgkWt7nTWU;-><init>(Lcom/yftech/car/widget/media/list/MediaDataList;Ljava/util/List;)V

    invoke-virtual {p0, p2}, Lcom/yftech/car/widget/media/list/MediaDataList;->postOnAnimation(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    .line 1937
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "MediaDataList: media_item_folder_layout_id \u6ca1\u6709\u8bbe\u7f6e\u5e03\u5c40\uff0c\u65e0\u6cd5\u52a0\u8f7d\u9002\u914d\u5668item\u5b50\u7c7b\u754c\u9762,\u8bf7\u8bbe\u7f6eitem\u5e03\u5c40\u518d\u8bd5"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateListPosition()V
    .locals 3

    .line 2021
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getScrollState()I

    move-result v0

    if-nez v0, :cond_0

    .line 2023
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2024
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_0
    const-string p0, "MediaDataList"

    .line 2026
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateListPosition: scrollState=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public updateSearchList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "MediaDataList"

    .line 1867
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " updateFileList: list=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "MediaDataList"

    const-string v1, " updateFileList: list is null"

    .line 1869
    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1872
    :goto_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFileAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->isEmptyItemFileLayoutId()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1876
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFileAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->updateList(Ljava/util/List;Z)Z

    .line 1878
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaListFolderPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/text/MediaListFolderPath;

    .line 1879
    invoke-virtual {v2}, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->isDirectoryInvisible()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1880
    invoke-virtual {v2, v3}, Lcom/yftech/car/widget/media/text/MediaListFolderPath;->setVisibility(I)V

    goto :goto_1

    .line 1883
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mMediaDataDirectoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;

    .line 1884
    invoke-virtual {v2}, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->isDirectoryInvisible()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1885
    invoke-virtual {v2, v3}, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->setVisibility(I)V

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 1889
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    .line 1895
    :cond_5
    iget-boolean p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->isListEmpty:Z

    if-eqz p1, :cond_6

    .line 1896
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->isListEmpty:Z

    .line 1897
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->isEmptyAdapter:Z

    .line 1898
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLatelyFolderFileList:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    sget-object v1, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->FOLDER_LIST:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    if-eq p1, v1, :cond_6

    const/4 p1, 0x0

    .line 1899
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->setAdapter(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1902
    :cond_6
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getLayoutManager()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    iget-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    if-eq p1, v1, :cond_8

    .line 1903
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->setLayoutManager(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_4

    .line 1890
    :cond_7
    :goto_3
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->isListEmpty:Z

    .line 1891
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getLayoutManager()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    iget-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mEmptyLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    if-eq p1, v1, :cond_8

    .line 1892
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mEmptyLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->setLayoutManager(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1918
    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLatelyFolderFileList:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    sget-object v1, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->SEARCH:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    if-ne p1, v1, :cond_9

    iget-boolean p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->isEmptyAdapter:Z

    if-nez p1, :cond_9

    iget-boolean p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->isListEmpty:Z

    if-eqz p1, :cond_a

    .line 1919
    :cond_9
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFileAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->setAdapter(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1922
    :cond_a
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1923
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {p0, p1, v1, v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 1925
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->isEmptyAdapter:Z

    .line 1926
    sget-object p1, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->SEARCH:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    iput-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mLatelyFolderFileList:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    return-void

    .line 1873
    :cond_b
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "MediaDataList: media_item_file_layout_id \u6ca1\u6709\u8bbe\u7f6e\u5e03\u5c40\uff0c\u65e0\u6cd5\u52a0\u8f7d\u9002\u914d\u5668item\u5b50\u7c7b\u754c\u9762,\u8bf7\u8bbe\u7f6eitem\u5e03\u5c40\u518d\u8bd5"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateSearchText(Ljava/lang/String;)V
    .locals 1

    .line 2185
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFileAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    if-eqz v0, :cond_0

    .line 2186
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList;->mFileAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->setSearchText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
