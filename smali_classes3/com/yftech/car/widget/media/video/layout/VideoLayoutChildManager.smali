.class public Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;
.super Lcom/yftech/car/widget/media/layout/BaseLayoutChildManager;
.source "VideoLayoutChildManager.java"

# interfaces
.implements Lcom/yftech/car/widget/media/video/button/VideoButton$OnClickFunctionListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "LayoutChildManager"


# instance fields
.field private isAnimationLoading:Z

.field private isTouchSeekBar:Z

.field private final mButtonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/video/button/VideoButton;",
            ">;"
        }
    .end annotation
.end field

.field private mClickTime:J

.field private final mHideRunnable:Ljava/lang/Runnable;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private final mItemFileListener:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;

.field private final mMediaDataDirectoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/list/MediaDataList;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaDataListTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/text/MediaDataListText;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaDataModifyBtnList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaFindSearch:Lcom/yftech/car/widget/media/utils/MediaFindSearch;

.field private final mMediaImageLoadingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/view/MediaImageLoading;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaListFolderPathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/text/MediaListFolderPath;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaSearchEditTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/text/MediaSearchEditText;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaSeekBarList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/view/MediaSeekBar;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnClickVisibilityListener:Lcom/yftech/car/widget/media/text/VisibilityTextButton$OnClickVisibilityListener;

.field private mOnDataChangeCallback:Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeCallback;

.field private final mOnMediaDataListUpdateListener:Lcom/yftech/car/widget/media/video/VideoDataPlayManager$OnMediaDataListUpdateListener;

.field private final mOnSearchHistoryItemClickListener:Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter$OnSearchHistoryItemClickListener;

.field private final mOnSearchTextListener:Lcom/yftech/car/widget/media/text/MediaSearchEditText$OnSearchTextListener;

.field private final mPlayTimeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/text/MediaPlayTime;",
            ">;"
        }
    .end annotation
.end field

.field private final mProgressBarList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/view/MediaProgressBar;",
            ">;"
        }
    .end annotation
.end field

.field private mRootLayout:Landroid/view/ViewGroup;

.field private mScreenWidth:I

.field private final mSearchEditButtonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/text/SearchEditButton;",
            ">;"
        }
    .end annotation
.end field

.field private final mSearchHistoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/list/SearchHistoryList;",
            ">;"
        }
    .end annotation
.end field

.field private mShowVisibility:Z

.field private final mSideTextRetrievalViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/view/SideTextRetrievalView;",
            ">;"
        }
    .end annotation
.end field

.field private final mSizeCore:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/yftech/car/widget/media/entity/SizeCore;",
            ">;"
        }
    .end annotation
.end field

.field private final mTextViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/text/MediaFileTextView;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoCallback:Lcom/yftech/car/widget/media/video/VideoPlayer$VideoCallback;

.field private mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

.field private mVideoSeekViewImage:Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

.field private final mVisibilityTextButtonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/text/VisibilityTextButton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 86
    invoke-direct {p0}, Lcom/yftech/car/widget/media/layout/BaseLayoutChildManager;-><init>()V

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mMediaDataList:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mButtonList:Ljava/util/List;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mTextViewList:Ljava/util/List;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mPlayTimeList:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mMediaSeekBarList:Ljava/util/List;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mProgressBarList:Ljava/util/List;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mMediaListFolderPathList:Ljava/util/List;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mMediaDataListTextList:Ljava/util/List;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVisibilityTextButtonList:Ljava/util/List;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mMediaDataModifyBtnList:Ljava/util/List;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mMediaSearchEditTextList:Ljava/util/List;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mSearchEditButtonList:Ljava/util/List;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mSearchHistoryList:Ljava/util/List;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mMediaImageLoadingList:Ljava/util/List;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mMediaDataDirectoryList:Ljava/util/List;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mSideTextRetrievalViewList:Ljava/util/List;

    .line 128
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mSizeCore:Ljava/util/Map;

    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->isAnimationLoading:Z

    .line 136
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->isTouchSeekBar:Z

    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mShowVisibility:Z

    const/16 v0, 0x500

    .line 141
    iput v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mScreenWidth:I

    .line 145
    new-instance v0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$1;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$1;-><init>(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mItemFileListener:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;

    .line 695
    new-instance v0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$3;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$3;-><init>(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mOnSearchHistoryItemClickListener:Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter$OnSearchHistoryItemClickListener;

    .line 714
    new-instance v0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$4;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$4;-><init>(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mOnSearchTextListener:Lcom/yftech/car/widget/media/text/MediaSearchEditText$OnSearchTextListener;

    .line 830
    new-instance v0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$5;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$5;-><init>(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mHideRunnable:Ljava/lang/Runnable;

    .line 852
    new-instance v0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$6;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$6;-><init>(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mOnMediaDataListUpdateListener:Lcom/yftech/car/widget/media/video/VideoDataPlayManager$OnMediaDataListUpdateListener;

    .line 1734
    new-instance v0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$8;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$8;-><init>(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mOnClickVisibilityListener:Lcom/yftech/car/widget/media/text/VisibilityTextButton$OnClickVisibilityListener;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->isAnimationLoading:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/utils/MediaFindSearch;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mMediaFindSearch:Lcom/yftech/car/widget/media/utils/MediaFindSearch;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;Lcom/yftech/car/widget/media/utils/MediaFindSearch;)Lcom/yftech/car/widget/media/utils/MediaFindSearch;
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mMediaFindSearch:Lcom/yftech/car/widget/media/utils/MediaFindSearch;

    return-object p1
.end method

.method static synthetic access$102(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;Z)Z
    .locals 0

    .line 86
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->isAnimationLoading:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;Z)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->setVisibilityVisibleGone(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Ljava/util/List;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVisibilityTextButtonList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/VideoDataPlayManager$OnMediaDataListUpdateListener;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mOnMediaDataListUpdateListener:Lcom/yftech/car/widget/media/video/VideoDataPlayManager$OnMediaDataListUpdateListener;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Ljava/util/List;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mTextViewList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/VideoSeekViewImage;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoSeekViewImage:Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->isTouchSeekBar:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Ljava/util/List;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mPlayTimeList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Ljava/util/List;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mMediaSeekBarList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;ILcom/yftech/car/widget/media/view/MediaSeekBar;Landroid/view/View;FFI)V
    .locals 0

    .line 86
    invoke-direct/range {p0 .. p6}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->updateSeekShowTime(ILcom/yftech/car/widget/media/view/MediaSeekBar;Landroid/view/View;FFI)V

    return-void
.end method

.method static synthetic access$200(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Landroid/view/ViewGroup;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mRootLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Ljava/util/List;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mProgressBarList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Ljava/util/List;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mButtonList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Ljava/lang/Runnable;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mHideRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mShowVisibility:Z

    return p0
.end method

.method static synthetic access$2302(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;Z)Z
    .locals 0

    .line 86
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mShowVisibility:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;Landroid/view/View;II)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->visibilityVisible(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic access$2500(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;Landroid/view/View;II)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->visibilityGone(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic access$300(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Ljava/util/List;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mMediaDataList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Ljava/util/List;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mMediaImageLoadingList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;ILcom/yftech/car/widget/media/list/MediaDataList;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->updateUsbStatusChange(ILcom/yftech/car/widget/media/list/MediaDataList;)V

    return-void
.end method

.method static synthetic access$600(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Ljava/util/List;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mMediaSearchEditTextList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/text/MediaSearchEditText$OnSearchTextListener;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mOnSearchTextListener:Lcom/yftech/car/widget/media/text/MediaSearchEditText$OnSearchTextListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Ljava/util/List;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mSearchHistoryList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Ljava/util/List;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mSearchEditButtonList:Ljava/util/List;

    return-object p0
.end method

.method private getOnDataChangeCallback()Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeCallback;
    .locals 1

    .line 539
    new-instance v0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$2;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$2;-><init>(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)V

    return-object v0
.end method

.method private getVideoCallback()Lcom/yftech/car/widget/media/video/VideoPlayer$VideoCallback;
    .locals 1

    .line 884
    new-instance v0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;-><init>(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)V

    return-object v0
.end method

.method private initVideoMemoryData(Landroid/content/Context;I)V
    .locals 4

    .line 440
    invoke-static {}, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/video/VideoDataPlayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->getPlayVideoId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const-string p0, "media_video_memory_play"

    const/4 v0, 0x0

    .line 441
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 442
    new-instance p1, Lcom/yftech/car/media/data/entity/MediaFile;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/yftech/car/media/data/entity/MediaFile;-><init>(I)V

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/yftech/car/media/data/entity/MediaFile;->setId(J)V

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data_path"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "null"

    invoke-interface {p0, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yftech/car/media/data/entity/MediaFile;->setData(Ljava/lang/String;)V

    .line 445
    invoke-static {}, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/video/VideoDataPlayManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->setPlayVideoFile(Lcom/yftech/car/media/data/entity/MediaFile;)Lcom/yftech/car/widget/media/video/VideoDataPlayManager;

    :cond_0
    return-void
.end method

.method public static synthetic lambda$initView$0(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoSeekViewImage:Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoSeekViewImage:Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->initHeight()V

    .line 266
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoSeekViewImage:Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$initView$1(Lcom/yftech/car/widget/media/text/MediaPlayTime;)V
    .locals 1

    .line 277
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->setInitHeight(I)V

    const/16 v0, 0x8

    .line 278
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->setVisibility(I)V

    return-void
.end method

.method static synthetic lambda$initView$2(Lcom/yftech/car/widget/media/text/MediaPlayTime;)V
    .locals 1

    .line 283
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->setInitHeight(I)V

    const/16 v0, 0x8

    .line 284
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->setVisibility(I)V

    return-void
.end method

.method public static synthetic lambda$initView$3(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)V
    .locals 4

    .line 303
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mHideRunnable:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/BaseVideo;->getAutoHideTime()I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/yftech/car/widget/media/video/BaseVideo;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$initView$4(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;Lcom/yftech/car/widget/media/text/VisibilityTextButton;)V
    .locals 0

    .line 318
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->isMediaDataListShow(Landroid/view/View;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->setVisibilityShow(Z)V

    return-void
.end method

.method public static synthetic lambda$initView$5(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;Lcom/yftech/car/widget/media/list/MediaDataList;Landroid/view/ViewGroup;I)V
    .locals 3

    .line 357
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->getUsbIndex()I

    move-result v0

    .line 358
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->initVideoMemoryData(Landroid/content/Context;I)V

    .line 360
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->getMediaDefaultList()I

    move-result p2

    const/4 v1, 0x6

    if-eq p2, v1, :cond_1

    const/16 v1, 0x64

    const/4 v2, 0x1

    if-eq p2, v1, :cond_0

    packed-switch p2, :pswitch_data_0

    const-string p0, "LayoutChildManager"

    .line 386
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "initView: no MediaDefaultList == "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 368
    :pswitch_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getArtistsVideo(I)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0, v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    goto :goto_0

    .line 365
    :pswitch_1
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getFileVideo(I)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0, v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFileList(Ljava/util/List;Z)V

    goto :goto_0

    .line 362
    :pswitch_2
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getFolderVideo(I)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0, v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    goto :goto_0

    .line 377
    :cond_0
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    if-eqz p2, :cond_2

    .line 378
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/BaseVideo;->getPlayList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0, v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFileList(Ljava/util/List;Z)V

    goto :goto_0

    .line 382
    :cond_1
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getVideoDirectory(I)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateDirectoryList(Ljava/util/List;)V

    const-string p0, "LayoutChildManager"

    .line 383
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "initView: mediaDataList.getMediaDefaultList()=="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->getMediaDefaultList()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    const-string p0, "LayoutChildManager"

    const-string p1, " initView: data loading -----------------------finish"

    .line 389
    invoke-static {p0, p1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$setVisibilityVisibleGone$6(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)V
    .locals 1

    const/4 v0, 0x0

    .line 1455
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->isAnimationLoading:Z

    .line 1456
    sput-boolean v0, Lcom/yftech/car/widget/media/utils/TouchEventUtil;->mNoClicking:Z

    return-void
.end method

.method public static synthetic lambda$setVisibilityVisibleGone$7(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)V
    .locals 4

    .line 1449
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mRootLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1450
    :goto_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1451
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1452
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1454
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    new-instance v1, Lcom/yftech/car/widget/media/video/layout/-$$Lambda$VideoLayoutChildManager$91RhAzLFzqU210Tic3swBhtWDbo;

    invoke-direct {v1, p0}, Lcom/yftech/car/widget/media/video/layout/-$$Lambda$VideoLayoutChildManager$91RhAzLFzqU210Tic3swBhtWDbo;-><init>(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/yftech/car/widget/media/video/BaseVideo;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method private setVisibilityVisibleGone(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1389
    invoke-direct {p0, p1, v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->setVisibilityVisibleGone(ZZ)V

    return-void
.end method

.method private setVisibilityVisibleGone(ZZ)V
    .locals 9

    const/4 v0, 0x1

    .line 1393
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->isAnimationLoading:Z

    .line 1397
    sput-boolean v0, Lcom/yftech/car/widget/media/utils/TouchEventUtil;->mNoClicking:Z

    .line 1398
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/video/BaseVideo;->getVideoHideShowAnimation()I

    move-result v1

    .line 1399
    iget-object v2, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/video/BaseVideo;->getVideoHideShowAnimationDuration()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    .line 1401
    :goto_0
    iget-object v5, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/16 v6, 0x8

    if-ge v4, v5, :cond_b

    .line 1402
    iget-object v5, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1404
    instance-of v7, v5, Lcom/yftech/car/widget/media/video/BaseVideo;

    if-eqz v7, :cond_0

    goto/16 :goto_3

    .line 1406
    :cond_0
    instance-of v7, v5, Lcom/yftech/car/widget/media/text/MediaPlayTime;

    if-eqz v7, :cond_2

    .line 1407
    move-object v7, v5

    check-cast v7, Lcom/yftech/car/widget/media/text/MediaPlayTime;

    .line 1408
    invoke-virtual {v7}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->isSeekBarShowScrollTime()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v7}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->isVideoShowScrollTime()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1409
    :cond_1
    invoke-virtual {v7, v6}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->setVisibility(I)V

    goto/16 :goto_3

    .line 1412
    :cond_2
    instance-of v7, v5, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    if-eqz v7, :cond_3

    goto/16 :goto_3

    .line 1416
    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    const-string/jumbo v8, "visibility_user"

    .line 1417
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v6, "LayoutChildManager"

    .line 1418
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setVisibility: visibility_user ,User View=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    if-nez p2, :cond_9

    if-eqz p1, :cond_5

    .line 1421
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_2

    .line 1429
    :cond_5
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v6, :cond_8

    const-string/jumbo v6, "visibility_user_hide"

    .line 1430
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "LayoutChildManager"

    .line 1431
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setVisibility: visibility_user_hide ,User View=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    if-eqz p1, :cond_7

    .line 1435
    invoke-direct {p0, v5, v1, v2}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->visibilityGone(Landroid/view/View;II)V

    goto :goto_1

    .line 1437
    :cond_7
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_8

    .line 1438
    invoke-direct {p0, v5, v1, v2}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->visibilityGone(Landroid/view/View;II)V

    .line 1442
    :cond_8
    :goto_1
    iput-boolean v3, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mShowVisibility:Z

    goto :goto_3

    .line 1422
    :cond_9
    :goto_2
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mShowVisibility:Z

    const-string/jumbo v6, "visibility_user_show"

    .line 1423
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v6, "LayoutChildManager"

    .line 1424
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setVisibility: visibility_user_show ,User View=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1427
    :cond_a
    invoke-direct {p0, v5, v1, v2}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->visibilityVisible(Landroid/view/View;II)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_b
    if-eq v1, v0, :cond_d

    const/4 p1, 0x2

    if-ne v1, p1, :cond_c

    goto :goto_4

    .line 1461
    :cond_c
    iput-boolean v3, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->isAnimationLoading:Z

    .line 1462
    sput-boolean v3, Lcom/yftech/car/widget/media/utils/TouchEventUtil;->mNoClicking:Z

    goto :goto_5

    .line 1448
    :cond_d
    :goto_4
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    new-instance p2, Lcom/yftech/car/widget/media/video/layout/-$$Lambda$VideoLayoutChildManager$RnbTtrfXa9yDMLFK-wIFePm_BRs;

    invoke-direct {p2, p0}, Lcom/yftech/car/widget/media/video/layout/-$$Lambda$VideoLayoutChildManager$RnbTtrfXa9yDMLFK-wIFePm_BRs;-><init>(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)V

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    .line 1459
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/BaseVideo;->getVideoHideShowAnimationDuration()I

    move-result v0

    int-to-long v0, v0

    .line 1448
    invoke-virtual {p1, p2, v0, v1}, Lcom/yftech/car/widget/media/video/BaseVideo;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 1464
    :goto_5
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoSeekViewImage:Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoSeekViewImage:Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->getVisibility()I

    move-result p1

    if-eq p1, v6, :cond_e

    .line 1465
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoSeekViewImage:Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    invoke-virtual {p0, v6}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->setVisibility(I)V

    :cond_e
    return-void
.end method

.method private updateSeekShowTime(ILcom/yftech/car/widget/media/view/MediaSeekBar;Landroid/view/View;FFI)V
    .locals 15

    move-object v0, p0

    move/from16 v2, p6

    .line 1283
    iget-object v3, v0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {v3}, Lcom/yftech/car/widget/media/video/BaseVideo;->isVideoSeekImageWhetherToFollowSeekBar()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 1289
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    .line 1291
    invoke-virtual/range {p2 .. p2}, Lcom/yftech/car/widget/media/view/MediaSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    .line 1292
    :goto_0
    instance-of v8, v4, Landroid/view/ViewGroup;

    if-eqz v8, :cond_1

    .line 1293
    check-cast v4, Landroid/view/ViewGroup;

    .line 1294
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    int-to-float v6, v6

    .line 1295
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getX()F

    move-result v9

    add-float/2addr v6, v9

    float-to-int v6, v6

    int-to-float v7, v7

    .line 1296
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getY()F

    move-result v4

    add-float/2addr v7, v4

    float-to-int v7, v7

    move-object v4, v8

    goto :goto_0

    :cond_1
    int-to-float v4, v6

    .line 1299
    invoke-virtual/range {p2 .. p2}, Lcom/yftech/car/widget/media/view/MediaSeekBar;->getX()F

    move-result v6

    add-float/2addr v4, v6

    float-to-int v4, v4

    int-to-float v6, v7

    .line 1300
    invoke-virtual/range {p2 .. p2}, Lcom/yftech/car/widget/media/view/MediaSeekBar;->getY()F

    move-result v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    .line 1301
    invoke-virtual/range {p2 .. p2}, Lcom/yftech/car/widget/media/view/MediaSeekBar;->getMax()I

    move-result v7

    .line 1302
    invoke-virtual/range {p2 .. p2}, Lcom/yftech/car/widget/media/view/MediaSeekBar;->getWidth()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Lcom/yftech/car/widget/media/view/MediaSeekBar;->getPaddingStart()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/yftech/car/widget/media/view/MediaSeekBar;->getPaddingEnd()I

    move-result v10

    add-int/2addr v9, v10

    sub-int/2addr v8, v9

    const/4 v9, 0x1

    if-ne v3, v9, :cond_3

    .line 1304
    iget v10, v0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mScreenWidth:I

    if-nez v10, :cond_2

    .line 1305
    iget-object v10, v0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->getScreenWidth(Landroid/content/Context;)I

    move-result v10

    iput v10, v0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mScreenWidth:I

    .line 1307
    :cond_2
    iget v10, v0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mScreenWidth:I

    sub-int/2addr v10, v4

    invoke-virtual/range {p2 .. p2}, Lcom/yftech/car/widget/media/view/MediaSeekBar;->getWidth()I

    move-result v4

    sub-int v4, v10, v4

    :cond_3
    move v10, v4

    move/from16 v4, p1

    int-to-double v11, v4

    int-to-double v13, v7

    div-double/2addr v11, v13

    int-to-double v7, v8

    mul-double/2addr v11, v7

    double-to-int v4, v11

    .line 1312
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 1314
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getPaddingStart()I

    move-result v11

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getPaddingEnd()I

    move-result v12

    add-int/2addr v11, v12

    sub-int/2addr v8, v11

    int-to-float v4, v4

    int-to-float v10, v10

    int-to-float v8, v8

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v8, v11

    sub-float/2addr v10, v8

    add-float/2addr v4, v10

    float-to-int v4, v4

    .line 1320
    invoke-virtual/range {p2 .. p2}, Lcom/yftech/car/widget/media/view/MediaSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 1322
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 1323
    div-int/lit8 v8, v8, 0x5

    add-int/2addr v4, v8

    :cond_4
    int-to-float v4, v4

    add-float v4, v4, p4

    float-to-int v4, v4

    if-gez v4, :cond_5

    goto :goto_1

    :cond_5
    add-int v5, v4, v7

    .line 1331
    iget-object v8, v0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    if-le v5, v8, :cond_6

    .line 1332
    iget-object v0, v0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    sub-int v5, v0, v7

    goto :goto_1

    :cond_6
    move v5, v4

    .line 1337
    :goto_1
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1338
    instance-of v4, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v4, :cond_8

    .line 1339
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    int-to-float v4, v6

    int-to-float v2, v2

    add-float v1, p5, v2

    sub-float/2addr v4, v1

    float-to-int v1, v4

    .line 1340
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-ne v3, v9, :cond_7

    .line 1343
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_2

    .line 1345
    :cond_7
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1347
    :goto_2
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->requestLayout()V

    goto :goto_6

    .line 1348
    :cond_8
    instance-of v4, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v4, :cond_a

    .line 1349
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    int-to-float v4, v6

    int-to-float v2, v2

    add-float v1, p5, v2

    sub-float/2addr v4, v1

    float-to-int v1, v4

    .line 1350
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    if-ne v3, v9, :cond_9

    .line 1352
    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_3

    .line 1354
    :cond_9
    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1356
    :goto_3
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->requestLayout()V

    goto :goto_6

    .line 1357
    :cond_a
    instance-of v4, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v4, :cond_c

    .line 1358
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v4, v6

    int-to-float v2, v2

    add-float v1, p5, v2

    sub-float/2addr v4, v1

    float-to-int v1, v4

    .line 1359
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-ne v3, v9, :cond_b

    .line 1361
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_4

    .line 1363
    :cond_b
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1365
    :goto_4
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->requestLayout()V

    goto :goto_6

    .line 1366
    :cond_c
    instance-of v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v4, :cond_e

    .line 1367
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    int-to-float v4, v6

    int-to-float v2, v2

    add-float v1, p5, v2

    sub-float/2addr v4, v1

    float-to-int v1, v4

    .line 1368
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    if-ne v3, v9, :cond_d

    .line 1370
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    goto :goto_5

    .line 1372
    :cond_d
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    .line 1374
    :goto_5
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->requestLayout()V

    goto :goto_6

    :cond_e
    const-string v0, "LayoutChildManager"

    const-string/jumbo v1, "updateSeekShowTime: "

    .line 1376
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    return-void
.end method

.method private updateUsbStatusChange(ILcom/yftech/car/widget/media/list/MediaDataList;)V
    .locals 1

    .line 664
    invoke-virtual {p2, p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->setUsbIndex(I)V

    .line 665
    invoke-virtual {p2}, Lcom/yftech/car/widget/media/list/MediaDataList;->getMediaDefaultList()I

    move-result p0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    const-string p0, "LayoutChildManager"

    .line 690
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initView: no MediaDefaultList == "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/yftech/car/widget/media/list/MediaDataList;->getMediaDefaultList()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 673
    :pswitch_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getArtistsVideo(I)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0, v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    goto :goto_0

    .line 670
    :pswitch_1
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getFileVideo(I)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0, v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFileList(Ljava/util/List;Z)V

    goto :goto_0

    .line 667
    :pswitch_2
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getFolderVideo(I)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0, v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    goto :goto_0

    .line 687
    :cond_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getVideoDirectory(I)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateDirectoryList(Ljava/util/List;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private visibilityGone(Landroid/view/View;II)V
    .locals 10

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const/4 p0, 0x0

    .line 1515
    invoke-static {p1, p3, p0}, Lcom/yftech/car/widget/media/utils/AnimationUtil;->showAlphaAnimation(Landroid/view/View;IZ)V

    goto/16 :goto_1

    .line 1474
    :pswitch_1
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mSizeCore:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yftech/car/widget/media/entity/SizeCore;

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p2, :cond_0

    .line 1478
    iget v1, p2, Lcom/yftech/car/widget/media/entity/SizeCore;->childAtCoreX:F

    .line 1479
    iget p2, p2, Lcom/yftech/car/widget/media/entity/SizeCore;->childAtCoreY:F

    goto :goto_0

    .line 1481
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    add-float/2addr v1, p2

    .line 1482
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    add-float/2addr p2, v2

    .line 1483
    new-instance v2, Lcom/yftech/car/widget/media/entity/SizeCore;

    invoke-direct {v2}, Lcom/yftech/car/widget/media/entity/SizeCore;-><init>()V

    .line 1484
    iput v1, v2, Lcom/yftech/car/widget/media/entity/SizeCore;->childAtCoreX:F

    .line 1485
    iput p2, v2, Lcom/yftech/car/widget/media/entity/SizeCore;->childAtCoreY:F

    .line 1486
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mSizeCore:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1489
    :goto_0
    iget-object v2, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    .line 1490
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    cmpg-float v0, v1, v2

    if-gez v0, :cond_1

    sub-float v0, p2, v3

    .line 1492
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v4, v1, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    const/4 v6, 0x0

    .line 1494
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p2

    add-float/2addr p0, p2

    neg-float v7, p0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    move v5, p3

    invoke-static/range {v4 .. v9}, Lcom/yftech/car/widget/media/utils/AnimationUtil;->showTranslateAnimation(Landroid/view/View;IFFFF)V

    goto/16 :goto_1

    :cond_1
    cmpg-float v0, p2, v3

    if-gez v0, :cond_2

    sub-float v0, v2, v1

    .line 1496
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v4, p2, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1498
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p2

    add-float/2addr p0, p2

    neg-float v9, p0

    move-object v4, p1

    move v5, p3

    invoke-static/range {v4 .. v9}, Lcom/yftech/car/widget/media/utils/AnimationUtil;->showTranslateAnimation(Landroid/view/View;IFFFF)V

    goto :goto_1

    :cond_2
    cmpg-float v0, v2, v1

    if-gez v0, :cond_3

    sub-float/2addr v1, v2

    .line 1500
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr p2, v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p2, v0, p2

    if-lez p2, :cond_3

    .line 1502
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    sub-float/2addr p0, p2

    const/4 v2, 0x0

    .line 1504
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    add-float v3, p2, p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move v1, p3

    invoke-static/range {v0 .. v5}, Lcom/yftech/car/widget/media/utils/AnimationUtil;->showTranslateAnimation(Landroid/view/View;IFFFF)V

    goto :goto_1

    .line 1508
    :cond_3
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    sub-float/2addr p0, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1510
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    add-float v5, p2, p0

    move-object v0, p1

    move v1, p3

    invoke-static/range {v0 .. v5}, Lcom/yftech/car/widget/media/utils/AnimationUtil;->showTranslateAnimation(Landroid/view/View;IFFFF)V

    :goto_1
    const/16 p0, 0x8

    .line 1521
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private visibilityVisible(Landroid/view/View;II)V
    .locals 10

    const/4 v0, 0x0

    .line 1525
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const/4 p0, 0x1

    .line 1564
    invoke-static {p1, p3, p0}, Lcom/yftech/car/widget/media/utils/AnimationUtil;->showAlphaAnimation(Landroid/view/View;IZ)V

    goto/16 :goto_1

    .line 1529
    :pswitch_1
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mSizeCore:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yftech/car/widget/media/entity/SizeCore;

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p2, :cond_0

    .line 1533
    iget v1, p2, Lcom/yftech/car/widget/media/entity/SizeCore;->childAtCoreX:F

    .line 1534
    iget p2, p2, Lcom/yftech/car/widget/media/entity/SizeCore;->childAtCoreY:F

    goto :goto_0

    .line 1536
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    add-float/2addr v1, p2

    .line 1537
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    add-float/2addr p2, v2

    .line 1538
    new-instance v2, Lcom/yftech/car/widget/media/entity/SizeCore;

    invoke-direct {v2}, Lcom/yftech/car/widget/media/entity/SizeCore;-><init>()V

    .line 1539
    iput v1, v2, Lcom/yftech/car/widget/media/entity/SizeCore;->childAtCoreX:F

    .line 1540
    iput p2, v2, Lcom/yftech/car/widget/media/entity/SizeCore;->childAtCoreY:F

    .line 1541
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mSizeCore:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1544
    :goto_0
    iget-object v2, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    .line 1545
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    cmpg-float v0, v1, v2

    if-gez v0, :cond_1

    sub-float v0, p2, v3

    .line 1547
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v4, v1, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    .line 1549
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p2

    add-float/2addr p0, p2

    neg-float v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move v1, p3

    invoke-static/range {v0 .. v5}, Lcom/yftech/car/widget/media/utils/AnimationUtil;->showTranslateAnimation(Landroid/view/View;IFFFF)V

    goto/16 :goto_1

    :cond_1
    cmpg-float v0, p2, v3

    if-gez v0, :cond_2

    sub-float v0, v2, v1

    .line 1551
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v4, p2, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1553
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p2

    add-float/2addr p0, p2

    neg-float v8, p0

    const/4 v9, 0x0

    move-object v4, p1

    move v5, p3

    invoke-static/range {v4 .. v9}, Lcom/yftech/car/widget/media/utils/AnimationUtil;->showTranslateAnimation(Landroid/view/View;IFFFF)V

    goto :goto_1

    :cond_2
    cmpg-float v0, v2, v1

    if-gez v0, :cond_3

    sub-float/2addr v1, v2

    .line 1555
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr p2, v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p2, v0, p2

    if-lez p2, :cond_3

    .line 1556
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    sub-float/2addr p0, p2

    .line 1557
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    add-float v2, p2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move v1, p3

    invoke-static/range {v0 .. v5}, Lcom/yftech/car/widget/media/utils/AnimationUtil;->showTranslateAnimation(Landroid/view/View;IFFFF)V

    goto :goto_1

    .line 1559
    :cond_3
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    sub-float/2addr p0, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1560
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    add-float v4, p2, p0

    const/4 v5, 0x0

    move-object v0, p1

    move v1, p3

    invoke-static/range {v0 .. v5}, Lcom/yftech/car/widget/media/utils/AnimationUtil;->showTranslateAnimation(Landroid/view/View;IFFFF)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 450
    sget-boolean v0, Lcom/yftech/car/widget/media/utils/TouchEventUtil;->mNoClicking:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 455
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    .line 457
    sget-boolean p1, Lcom/yftech/car/widget/media/utils/TouchEventUtil;->mDispatchTouchEvent:Z

    if-nez p1, :cond_5

    .line 458
    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->updateTouchEvent(Z)V

    goto :goto_0

    :cond_1
    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-ne p1, v1, :cond_5

    .line 461
    :cond_2
    sget-boolean p1, Lcom/yftech/car/widget/media/utils/TouchEventUtil;->mDispatchTouchEvent:Z

    if-eqz p1, :cond_3

    .line 462
    sput-boolean v0, Lcom/yftech/car/widget/media/utils/TouchEventUtil;->mDispatchTouchEvent:Z

    goto :goto_0

    .line 464
    :cond_3
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->updateTouchEvent(Z)V

    goto :goto_0

    :cond_4
    const-string p0, "LayoutChildManager"

    const-string p1, "dispatchTouchEvent: event is null"

    .line 468
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return v0
.end method

.method public getScreenWidth(Landroid/content/Context;)I
    .locals 0

    const-string/jumbo p0, "window"

    .line 1382
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 1383
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1384
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1385
    iget p0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method public hideInput()V
    .locals 3

    .line 875
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mRootLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 876
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 877
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mMediaSearchEditTextList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    .line 878
    invoke-virtual {v0, v2}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->setCursorVisible(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public initView(Landroid/view/ViewGroup;)V
    .locals 12

    .line 157
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mRootLayout:Landroid/view/ViewGroup;

    .line 159
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mOnDataChangeCallback:Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeCallback;

    if-nez v0, :cond_40

    .line 160
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->getOnDataChangeCallback()Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mOnDataChangeCallback:Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeCallback;

    .line 161
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mOnDataChangeCallback:Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->registerCarDataControlCallback(Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeListener;)V

    .line 163
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 164
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 165
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_15

    .line 167
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 168
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 169
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 170
    instance-of v4, v3, Lcom/yftech/car/widget/media/video/BaseVideo;

    if-eqz v4, :cond_2

    .line 171
    iget-object v4, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    if-nez v4, :cond_1

    .line 172
    move-object v4, v3

    check-cast v4, Lcom/yftech/car/widget/media/video/BaseVideo;

    iput-object v4, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    .line 173
    iget-object v4, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {v4, p0}, Lcom/yftech/car/widget/media/video/BaseVideo;->setLayoutChildManager(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)V

    goto :goto_1

    :cond_1
    const-string v4, "LayoutChildManager"

    const-string v5, "initView: add VideoPlayer: Only one VideoPlayer is valid"

    .line 175
    invoke-static {v4, v5}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 177
    :cond_2
    instance-of v4, v3, Lcom/yftech/car/widget/media/list/MediaDataList;

    if-eqz v4, :cond_3

    .line 178
    move-object v4, v3

    check-cast v4, Lcom/yftech/car/widget/media/list/MediaDataList;

    .line 179
    invoke-virtual {v4, v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->setLinkedList(Ljava/util/LinkedList;)V

    .line 180
    iget-object v5, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mMediaDataList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 181
    :cond_3
    instance-of v4, v3, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;

    if-eqz v4, :cond_4

    .line 182
    iget-object v4, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mMediaDataDirectoryList:Ljava/util/List;

    move-object v5, v3

    check-cast v5, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_4
    :goto_1
    instance-of v4, v3, Lcom/yftech/car/widget/media/list/SearchHistoryList;

    if-eqz v4, :cond_5

    .line 184
    iget-object v4, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mSearchHistoryList:Ljava/util/List;

    check-cast v3, Lcom/yftech/car/widget/media/list/SearchHistoryList;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 185
    :cond_5
    instance-of v4, v3, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    if-eqz v4, :cond_6

    .line 186
    check-cast v3, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    iput-object v3, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoSeekViewImage:Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    goto/16 :goto_2

    .line 187
    :cond_6
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_7

    .line 188
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 190
    :cond_7
    instance-of v4, v3, Lcom/yftech/car/widget/media/video/button/VideoButton;

    if-eqz v4, :cond_8

    .line 191
    check-cast v3, Lcom/yftech/car/widget/media/video/button/VideoButton;

    .line 192
    iget-object v4, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mButtonList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 193
    :cond_8
    instance-of v4, v3, Lcom/yftech/car/widget/media/text/MediaFileTextView;

    if-eqz v4, :cond_9

    .line 194
    iget-object v4, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mTextViewList:Ljava/util/List;

    check-cast v3, Lcom/yftech/car/widget/media/text/MediaFileTextView;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 195
    :cond_9
    instance-of v4, v3, Lcom/yftech/car/widget/media/text/MediaPlayTime;

    if-eqz v4, :cond_a

    .line 196
    iget-object v4, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mPlayTimeList:Ljava/util/List;

    check-cast v3, Lcom/yftech/car/widget/media/text/MediaPlayTime;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 197
    :cond_a
    instance-of v4, v3, Lcom/yftech/car/widget/media/view/MediaSeekBar;

    if-eqz v4, :cond_b

    .line 198
    iget-object v4, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mMediaSeekBarList:Ljava/util/List;

    check-cast v3, Lcom/yftech/car/widget/media/view/MediaSeekBar;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 199
    :cond_b
    instance-of v4, v3, Lcom/yftech/car/widget/media/view/MediaProgressBar;

    if-eqz v4, :cond_c

    .line 200
    iget-object v4, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mProgressBarList:Ljava/util/List;

    check-cast v3, Lcom/yftech/car/widget/media/view/MediaProgressBar;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 201
    :cond_c
    instance-of v4, v3, Lcom/yftech/car/widget/media/text/MediaListFolderPath;

    if-eqz v4, :cond_d

    .line 202
    iget-object v4, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mMediaListFolderPathList:Ljava/util/List;

    check-cast v3, Lcom/yftech/car/widget/media/text/MediaListFolderPath;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 203
    :cond_d
    instance-of v4, v3, Lcom/yftech/car/widget/media/text/MediaDataListText;

    if-eqz v4, :cond_e

    .line 204
    iget-object v4, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mMediaDataListTextList:Ljava/util/List;

    check-cast v3, Lcom/yftech/car/widget/media/text/MediaDataListText;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 205
    :cond_e
    instance-of v4, v3, Lcom/yftech/car/widget/media/text/VisibilityTextButton;

    if-eqz v4, :cond_f

    .line 206
    iget-object v4, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVisibilityTextButtonList:Ljava/util/List;

    check-cast v3, Lcom/yftech/car/widget/media/text/VisibilityTextButton;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 207
    :cond_f
    instance-of v4, v3, Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    if-eqz v4, :cond_10

    .line 208
    iget-object v4, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mMediaSearchEditTextList:Ljava/util/List;

    check-cast v3, Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 209
    :cond_10
    instance-of v4, v3, Lcom/yftech/car/widget/media/text/SearchEditButton;

    if-eqz v4, :cond_11

    .line 210
    iget-object v4, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mSearchEditButtonList:Ljava/util/List;

    check-cast v3, Lcom/yftech/car/widget/media/text/SearchEditButton;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 211
    :cond_11
    instance-of v4, v3, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;

    if-eqz v4, :cond_12

    .line 212
    iget-object v4, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mMediaDataModifyBtnList:Ljava/util/List;

    check-cast v3, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 213
    :cond_12
    instance-of v4, v3, Lcom/yftech/car/widget/media/view/MediaImageLoading;

    if-eqz v4, :cond_13

    .line 214
    iget-object v4, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mMediaImageLoadingList:Ljava/util/List;

    check-cast v3, Lcom/yftech/car/widget/media/view/MediaImageLoading;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 215
    :cond_13
    instance-of v4, v3, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;

    if-eqz v4, :cond_14

    .line 216
    iget-object v4, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mSideTextRetrievalViewList:Ljava/util/List;

    check-cast v3, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_15
    const-string v0, "LayoutChildManager"

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " initView: mMediaSeekBarList=="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mMediaSeekBarList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mMediaDataList=="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mMediaDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    sput-boolean v2, Lcom/yftech/car/widget/media/utils/TouchEventUtil;->mNoClicking:Z

    .line 226
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    const/4 v1, 0x4

    if-eqz v0, :cond_24

    .line 227
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoPlayer$VideoCallback;

    if-nez v0, :cond_16

    .line 228
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->getVideoCallback()Lcom/yftech/car/widget/media/video/VideoPlayer$VideoCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoPlayer$VideoCallback;

    .line 230
    :cond_16
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    iget-object v3, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoPlayer$VideoCallback;

    invoke-virtual {v0, v3}, Lcom/yftech/car/widget/media/video/BaseVideo;->addVideoCallback(Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;)V

    const/4 v0, 0x0

    .line 233
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoSeekViewImage:Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    if-eqz v3, :cond_17

    .line 234
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoSeekViewImage:Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->getMediaImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 236
    :cond_17
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mMediaSeekBarList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yftech/car/widget/media/view/MediaSeekBar;

    .line 237
    iget-object v5, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {v5, v0}, Lcom/yftech/car/widget/media/video/BaseVideo;->getOnSeekBar(Landroid/widget/ImageView;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/yftech/car/widget/media/view/MediaSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto :goto_3

    .line 239
    :cond_18
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/BaseVideo;->getCurrentPlay()Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object v0

    .line 241
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mTextViewList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yftech/car/widget/media/text/MediaFileTextView;

    .line 242
    iget-object v5, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {v5}, Lcom/yftech/car/widget/media/video/BaseVideo;->getPlayPosition()I

    move-result v5

    iget-object v6, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {v6}, Lcom/yftech/car/widget/media/video/BaseVideo;->getPlayListSize()I

    move-result v6

    invoke-virtual {v4, v0, v5, v6}, Lcom/yftech/car/widget/media/text/MediaFileTextView;->updateMediaFile(Lcom/yftech/car/media/data/entity/MediaFile;II)V

    goto :goto_4

    .line 245
    :cond_19
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/BaseVideo;->getDuration()I

    move-result v0

    int-to-long v3, v0

    .line 246
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/BaseVideo;->getProgressPosition()I

    move-result v0

    const-string v5, "LayoutChildManager"

    .line 248
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " initView: duration=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ",progress=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v5, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mProgressBarList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    long-to-int v7, v3

    .line 251
    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 252
    invoke-virtual {v6, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_5

    .line 255
    :cond_1a
    iget-object v5, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mMediaSeekBarList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/yftech/car/widget/media/view/MediaSeekBar;

    long-to-int v7, v3

    .line 256
    invoke-virtual {v6, v7}, Lcom/yftech/car/widget/media/view/MediaSeekBar;->setMax(I)V

    .line 257
    invoke-virtual {v6, v0}, Lcom/yftech/car/widget/media/view/MediaSeekBar;->setProgress(I)V

    goto :goto_6

    .line 260
    :cond_1b
    iget-object v5, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoSeekViewImage:Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    const-wide/16 v6, 0xa

    if-eqz v5, :cond_1c

    .line 261
    iget-object v5, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoSeekViewImage:Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    iget-object v8, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {v5, v8}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->setVideoPlayer(Lcom/yftech/car/widget/media/video/BaseVideo;)V

    .line 262
    iget-object v5, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoSeekViewImage:Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    invoke-virtual {v5, v1}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->setVisibility(I)V

    .line 263
    iget-object v5, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoSeekViewImage:Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    new-instance v8, Lcom/yftech/car/widget/media/video/layout/-$$Lambda$VideoLayoutChildManager$jzg4ANNjW63T6HRFq5XKjgcHysM;

    invoke-direct {v8, p0}, Lcom/yftech/car/widget/media/video/layout/-$$Lambda$VideoLayoutChildManager$jzg4ANNjW63T6HRFq5XKjgcHysM;-><init>(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)V

    invoke-virtual {v5, v8, v6, v7}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 272
    :cond_1c
    iget-object v5, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mPlayTimeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/yftech/car/widget/media/text/MediaPlayTime;

    .line 273
    invoke-virtual {v8}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->setForwardDrawable()V

    .line 274
    invoke-virtual {v8}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->isSeekBarShowScrollTime()Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 275
    invoke-virtual {v8, v1}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->setVisibility(I)V

    .line 276
    new-instance v9, Lcom/yftech/car/widget/media/video/layout/-$$Lambda$VideoLayoutChildManager$ksOFXdDZXECqXo9KfK1zVlpW2Kw;

    invoke-direct {v9, v8}, Lcom/yftech/car/widget/media/video/layout/-$$Lambda$VideoLayoutChildManager$ksOFXdDZXECqXo9KfK1zVlpW2Kw;-><init>(Lcom/yftech/car/widget/media/text/MediaPlayTime;)V

    const-wide/16 v10, 0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8

    .line 281
    :cond_1d
    invoke-virtual {v8}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->isVideoShowScrollTime()Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 282
    new-instance v9, Lcom/yftech/car/widget/media/video/layout/-$$Lambda$VideoLayoutChildManager$ZrwkW-8qPZJnm-Ftm4Ibpj0fEEQ;

    invoke-direct {v9, v8}, Lcom/yftech/car/widget/media/video/layout/-$$Lambda$VideoLayoutChildManager$ZrwkW-8qPZJnm-Ftm4Ibpj0fEEQ;-><init>(Lcom/yftech/car/widget/media/text/MediaPlayTime;)V

    invoke-virtual {v8, v9, v6, v7}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 287
    :cond_1e
    :goto_8
    invoke-virtual {v8, v3, v4}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->updateDuration(J)V

    int-to-long v9, v0

    .line 288
    invoke-virtual {v8, v9, v10}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->updateProgress(J)V

    goto :goto_7

    .line 290
    :cond_1f
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/BaseVideo;->getPlayMode()I

    move-result v0

    .line 291
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {v3}, Lcom/yftech/car/widget/media/video/BaseVideo;->getScaleType()I

    move-result v3

    .line 292
    iget-object v4, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mButtonList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_20
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yftech/car/widget/media/video/button/VideoButton;

    .line 293
    iget-object v6, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {v5, v6}, Lcom/yftech/car/widget/media/video/button/VideoButton;->setVideoPlayer(Lcom/yftech/car/widget/media/video/BaseVideo;)V

    const/4 v6, 0x5

    .line 294
    invoke-virtual {v5, v6}, Lcom/yftech/car/widget/media/video/button/VideoButton;->isFunction(I)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 295
    invoke-virtual {v5, v0}, Lcom/yftech/car/widget/media/video/button/VideoButton;->updatePlayMode(I)V

    goto :goto_9

    :cond_21
    const/4 v6, 0x6

    .line 296
    invoke-virtual {v5, v6}, Lcom/yftech/car/widget/media/video/button/VideoButton;->isFunction(I)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 297
    invoke-virtual {v5, v3}, Lcom/yftech/car/widget/media/video/button/VideoButton;->updatePlayScale(I)V

    goto :goto_9

    .line 301
    :cond_22
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/BaseVideo;->getAutoHideTime()I

    move-result v0

    if-lez v0, :cond_23

    .line 302
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    new-instance v3, Lcom/yftech/car/widget/media/video/layout/-$$Lambda$VideoLayoutChildManager$ZNgoWdcQUeoMDCTaKr2SKHIkdlA;

    invoke-direct {v3, p0}, Lcom/yftech/car/widget/media/video/layout/-$$Lambda$VideoLayoutChildManager$ZNgoWdcQUeoMDCTaKr2SKHIkdlA;-><init>(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v3, v4, v5}, Lcom/yftech/car/widget/media/video/BaseVideo;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 308
    :cond_23
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result v0

    iget-object v3, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {v3}, Lcom/yftech/car/widget/media/video/BaseVideo;->getSystemUiVisibilityShow()I

    move-result v3

    if-eq v0, v3, :cond_25

    .line 309
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mRootLayout:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {v3}, Lcom/yftech/car/widget/media/video/BaseVideo;->getSystemUiVisibilityShow()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    goto :goto_a

    :cond_24
    const-string v0, "LayoutChildManager"

    const-string v3, " initView: no VideoPlayer"

    .line 313
    invoke-static {v0, v3}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :cond_25
    :goto_a
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVisibilityTextButtonList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/widget/media/text/VisibilityTextButton;

    .line 317
    iget-object v4, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mOnClickVisibilityListener:Lcom/yftech/car/widget/media/text/VisibilityTextButton$OnClickVisibilityListener;

    invoke-virtual {v3, v4}, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->setOnClickVisibilityListener(Lcom/yftech/car/widget/media/text/VisibilityTextButton$OnClickVisibilityListener;)V

    .line 318
    new-instance v4, Lcom/yftech/car/widget/media/video/layout/-$$Lambda$VideoLayoutChildManager$PEfV4vOzM0C_kSp2jKL_IaScDJg;

    invoke-direct {v4, p0, v3}, Lcom/yftech/car/widget/media/video/layout/-$$Lambda$VideoLayoutChildManager$PEfV4vOzM0C_kSp2jKL_IaScDJg;-><init>(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;Lcom/yftech/car/widget/media/text/VisibilityTextButton;)V

    invoke-virtual {v3, v4}, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_b

    .line 321
    :cond_26
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mButtonList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/widget/media/video/button/VideoButton;

    .line 322
    invoke-virtual {v3, p0}, Lcom/yftech/car/widget/media/video/button/VideoButton;->setOnClickFunctionListener(Lcom/yftech/car/widget/media/video/button/VideoButton$OnClickFunctionListener;)V

    goto :goto_c

    .line 325
    :cond_27
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mMediaSearchEditTextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_28
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    .line 326
    iget-object v5, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mSearchEditButtonList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_29

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/yftech/car/widget/media/text/SearchEditButton;

    .line 327
    invoke-virtual {v3, v6}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->addSearchEditButton(Lcom/yftech/car/widget/media/text/SearchEditButton;)V

    goto :goto_e

    .line 329
    :cond_29
    iget-object v5, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mOnSearchTextListener:Lcom/yftech/car/widget/media/text/MediaSearchEditText$OnSearchTextListener;

    invoke-virtual {v3, v5}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->setOnSearchTextListener(Lcom/yftech/car/widget/media/text/MediaSearchEditText$OnSearchTextListener;)V

    .line 330
    iget-object v5, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mSearchHistoryList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/yftech/car/widget/media/list/SearchHistoryList;

    .line 331
    invoke-virtual {v3, v6}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->setSearchHistoryList(Lcom/yftech/car/widget/media/list/SearchHistoryList;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 336
    :cond_2b
    iget-object v5, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mMediaDataList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_28

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/yftech/car/widget/media/list/MediaDataList;

    .line 337
    invoke-virtual {v3}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->getSearchDataListId()I

    move-result v7

    if-eq v7, v4, :cond_2d

    invoke-virtual {v3}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->getSearchDataListId()I

    move-result v7

    invoke-virtual {v6}, Lcom/yftech/car/widget/media/list/MediaDataList;->getId()I

    move-result v8

    if-ne v7, v8, :cond_2c

    .line 338
    :cond_2d
    invoke-virtual {v3, v6}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->setMediaDataList(Lcom/yftech/car/widget/media/list/MediaDataList;)V

    goto :goto_d

    .line 344
    :cond_2e
    invoke-static {}, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/video/VideoDataPlayManager;

    move-result-object v0

    iget-object v3, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mOnMediaDataListUpdateListener:Lcom/yftech/car/widget/media/video/VideoDataPlayManager$OnMediaDataListUpdateListener;

    invoke-virtual {v0, v3}, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->addPlayFinishCallback(Lcom/yftech/car/widget/media/video/VideoDataPlayManager$OnMediaDataListUpdateListener;)V

    .line 346
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mMediaDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v3, 0x8

    if-lez v0, :cond_3d

    .line 347
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mMediaDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yftech/car/widget/media/list/MediaDataList;

    .line 348
    iget-object v6, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mMediaListFolderPathList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_30

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/yftech/car/widget/media/text/MediaListFolderPath;

    .line 349
    invoke-virtual {v5, v7}, Lcom/yftech/car/widget/media/list/MediaDataList;->setMediaListFolderPath(Lcom/yftech/car/widget/media/text/MediaListFolderPath;)V

    goto :goto_f

    .line 351
    :cond_30
    iget-object v6, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mMediaDataDirectoryList:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcom/yftech/car/widget/media/list/MediaDataList;->setMediaDataDirectoryList(Ljava/util/List;)V

    .line 352
    iget-object v6, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mMediaDataListTextList:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcom/yftech/car/widget/media/list/MediaDataList;->setMediaDataListTextList(Ljava/util/List;)V

    .line 353
    iget-object v6, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mSideTextRetrievalViewList:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcom/yftech/car/widget/media/list/MediaDataList;->setSideTextRetrievalViewList(Ljava/util/List;)V

    .line 354
    iget-object v6, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mMediaDataModifyBtnList:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcom/yftech/car/widget/media/list/MediaDataList;->setMediaDataModifyBtnList(Ljava/util/List;)V

    .line 355
    invoke-virtual {v5}, Lcom/yftech/car/widget/media/list/MediaDataList;->getMediaDefaultList()I

    move-result v6

    .line 356
    new-instance v7, Lcom/yftech/car/widget/media/video/layout/-$$Lambda$VideoLayoutChildManager$cVvQHesuXCH5jjGL-7WuEzeVJF0;

    invoke-direct {v7, p0, v5, p1, v6}, Lcom/yftech/car/widget/media/video/layout/-$$Lambda$VideoLayoutChildManager$cVvQHesuXCH5jjGL-7WuEzeVJF0;-><init>(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;Lcom/yftech/car/widget/media/list/MediaDataList;Landroid/view/ViewGroup;I)V

    const/4 v8, 0x1

    invoke-virtual {v5, v8, v7}, Lcom/yftech/car/widget/media/list/MediaDataList;->setMediaType(ILjava/lang/Runnable;)V

    .line 391
    invoke-virtual {v5}, Lcom/yftech/car/widget/media/list/MediaDataList;->getUsbIndex()I

    move-result v7

    .line 392
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {p0, v8, v7}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->initVideoMemoryData(Landroid/content/Context;I)V

    .line 393
    iget-object v8, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mSearchHistoryList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_10
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_32

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/yftech/car/widget/media/list/SearchHistoryList;

    const/16 v10, 0x65

    if-ne v6, v10, :cond_31

    .line 395
    invoke-virtual {v9, v2}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->setVisibility(I)V

    goto :goto_10

    .line 397
    :cond_31
    invoke-virtual {v9, v3}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->setVisibility(I)V

    goto :goto_10

    .line 400
    :cond_32
    iget-object v8, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    if-eqz v8, :cond_33

    .line 401
    iget-object v8, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mItemFileListener:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;

    invoke-virtual {v5, v8}, Lcom/yftech/car/widget/media/list/MediaDataList;->setOnItemFileListener(Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;)V

    .line 403
    :cond_33
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->isScanner(I)Z

    move-result v7

    .line 404
    iget-object v8, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mMediaImageLoadingList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_34
    :goto_11
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_36

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/yftech/car/widget/media/view/MediaImageLoading;

    .line 405
    invoke-virtual {v9}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->getMediaDataListId()I

    move-result v10

    if-eq v10, v4, :cond_35

    invoke-virtual {v9}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->getMediaDataListId()I

    move-result v10

    invoke-virtual {v5}, Lcom/yftech/car/widget/media/list/MediaDataList;->getId()I

    move-result v11

    if-ne v10, v11, :cond_34

    .line 406
    :cond_35
    invoke-virtual {v9, v7}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->setLoadingStatus(Z)V

    goto :goto_11

    .line 409
    :cond_36
    iget-object v5, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mButtonList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/yftech/car/widget/media/video/button/VideoButton;

    add-int/lit16 v8, v6, 0x3e8

    .line 410
    invoke-virtual {v7, v8}, Lcom/yftech/car/widget/media/video/button/VideoButton;->isFunction(I)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/yftech/car/widget/media/video/button/VideoButton;->setSelected(Z)V

    goto :goto_12

    .line 414
    :cond_37
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mSearchHistoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yftech/car/widget/media/list/SearchHistoryList;

    .line 415
    iget-object v6, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mOnSearchHistoryItemClickListener:Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter$OnSearchHistoryItemClickListener;

    invoke-virtual {v5, v6}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->setOnSearchHistoryItemClickListener(Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter$OnSearchHistoryItemClickListener;)V

    .line 416
    iget-object v6, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mSearchEditButtonList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_39
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/yftech/car/widget/media/text/SearchEditButton;

    .line 417
    invoke-virtual {v5, v7}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->setSearchEditButton(Lcom/yftech/car/widget/media/text/SearchEditButton;)Z

    move-result v7

    if-eqz v7, :cond_39

    .line 422
    :cond_3a
    iget-object v6, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mSearchEditButtonList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3b
    :goto_13
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_38

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/yftech/car/widget/media/text/SearchEditButton;

    const/4 v8, 0x3

    .line 423
    invoke-virtual {v7, v8}, Lcom/yftech/car/widget/media/text/SearchEditButton;->isSearchType(I)Z

    move-result v8

    if-eqz v8, :cond_3b

    invoke-virtual {v7}, Lcom/yftech/car/widget/media/text/SearchEditButton;->getMediaSearchHistoryListId()I

    move-result v8

    if-eq v8, v4, :cond_3c

    invoke-virtual {v7}, Lcom/yftech/car/widget/media/text/SearchEditButton;->getMediaSearchHistoryListId()I

    move-result v8

    invoke-virtual {v5}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->getId()I

    move-result v9

    if-ne v8, v9, :cond_3b

    .line 424
    :cond_3c
    invoke-virtual {v5}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->getVisibility()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/yftech/car/widget/media/text/SearchEditButton;->setVisibility(I)V

    goto :goto_13

    .line 429
    :cond_3d
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mSearchEditButtonList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3e
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yftech/car/widget/media/text/SearchEditButton;

    .line 430
    invoke-virtual {v4}, Lcom/yftech/car/widget/media/text/SearchEditButton;->getSearchVisibilityShow()I

    move-result v5

    if-lez v5, :cond_3e

    .line 431
    invoke-virtual {v4, v1}, Lcom/yftech/car/widget/media/text/SearchEditButton;->isSearchVisibilityShow(I)Z

    move-result v5

    if-eqz v5, :cond_3f

    move v5, v2

    goto :goto_15

    :cond_3f
    move v5, v3

    :goto_15
    invoke-virtual {v4, v5}, Lcom/yftech/car/widget/media/text/SearchEditButton;->setVisibility(I)V

    goto :goto_14

    .line 435
    :cond_40
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->getScreenWidth(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mScreenWidth:I

    const-string p0, "LayoutChildManager"

    const-string p1, " initView: view loading -----------------------finish"

    .line 436
    invoke-static {p0, p1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isAnimationLoading()Z
    .locals 0

    .line 535
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->isAnimationLoading:Z

    return p0
.end method

.method public onClickFunction(II)V
    .locals 9

    .line 1596
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->isAnimationLoading:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/BaseVideo;->isOnTouchClick()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    .line 1638
    iget-object v2, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mMediaDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    goto :goto_0

    .line 1633
    :pswitch_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    if-eqz p1, :cond_b

    .line 1634
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/BaseVideo;->switchScaleType()V

    goto/16 :goto_6

    .line 1628
    :pswitch_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    if-eqz p1, :cond_b

    .line 1629
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/BaseVideo;->switchPlayMode()V

    goto/16 :goto_6

    .line 1623
    :pswitch_2
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    if-eqz p1, :cond_b

    .line 1624
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/BaseVideo;->setPlayState(I)Z

    goto/16 :goto_6

    .line 1618
    :pswitch_3
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    if-eqz p1, :cond_b

    .line 1619
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/BaseVideo;->setPlayState(I)Z

    goto/16 :goto_6

    .line 1613
    :pswitch_4
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    if-eqz p1, :cond_b

    .line 1614
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/video/BaseVideo;->setPlayState(I)Z

    goto/16 :goto_6

    .line 1608
    :pswitch_5
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    if-eqz p1, :cond_b

    .line 1609
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/BaseVideo;->setPlayState(I)Z

    goto/16 :goto_6

    .line 1603
    :pswitch_6
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    if-eqz p1, :cond_b

    .line 1604
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/video/BaseVideo;->setPlayState(I)Z

    goto/16 :goto_6

    .line 1638
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/widget/media/list/MediaDataList;

    const/4 v4, -0x1

    if-eq p1, v4, :cond_2

    .line 1639
    invoke-virtual {v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->getId()I

    move-result v4

    if-ne p1, v4, :cond_1

    :cond_2
    const/16 v4, 0x3ee

    const/4 v5, 0x0

    if-eq p2, v4, :cond_7

    const/16 v4, 0x44c

    if-eq p2, v4, :cond_6

    packed-switch p2, :pswitch_data_1

    add-int/lit8 v4, p2, -0x64

    if-ltz v4, :cond_9

    if-gt v4, v0, :cond_9

    .line 1687
    invoke-virtual {v3, v4}, Lcom/yftech/car/widget/media/list/MediaDataList;->setUsbIndex(I)V

    .line 1688
    invoke-virtual {v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->getMediaDefaultList()I

    move-result v6

    const/4 v7, 0x6

    if-eq v6, v7, :cond_4

    const/16 v7, 0x64

    if-eq v6, v7, :cond_3

    packed-switch v6, :pswitch_data_2

    goto :goto_1

    .line 1696
    :pswitch_7
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getArtistsVideo(I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    goto :goto_1

    .line 1693
    :pswitch_8
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getFileVideo(I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFileList(Ljava/util/List;Z)V

    goto :goto_1

    .line 1690
    :pswitch_9
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getFolderVideo(I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    goto :goto_1

    .line 1705
    :cond_3
    iget-object v4, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    if-eqz v4, :cond_5

    .line 1706
    iget-object v4, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {v4}, Lcom/yftech/car/widget/media/video/BaseVideo;->getPlayList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFileList(Ljava/util/List;Z)V

    goto :goto_1

    .line 1710
    :cond_4
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getVideoDirectory(I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateDirectoryList(Ljava/util/List;)V

    const-string v4, "LayoutChildManager"

    .line 1711
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initView: mediaDataList.getMediaDefaultList()=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->getMediaDefaultList()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    :cond_5
    :goto_1
    invoke-virtual {v3, v5, v5}, Lcom/yftech/car/widget/media/list/MediaDataList;->scrollToPositionWithOffset(II)V

    goto/16 :goto_3

    :pswitch_a
    add-int/lit16 v4, p2, -0x3e8

    .line 1652
    invoke-virtual {v3, v4}, Lcom/yftech/car/widget/media/list/MediaDataList;->setMediaDefaultList(I)V

    .line 1653
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v4

    invoke-virtual {v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->getUsbIndex()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getArtistsVideo(I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    .line 1654
    invoke-virtual {v3, v5, v5}, Lcom/yftech/car/widget/media/list/MediaDataList;->scrollToPositionWithOffset(II)V

    goto :goto_3

    :pswitch_b
    add-int/lit16 v4, p2, -0x3e8

    .line 1647
    invoke-virtual {v3, v4}, Lcom/yftech/car/widget/media/list/MediaDataList;->setMediaDefaultList(I)V

    .line 1648
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v4

    invoke-virtual {v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->getUsbIndex()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getFileVideo(I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFileList(Ljava/util/List;Z)V

    .line 1649
    invoke-virtual {v3, v5, v5}, Lcom/yftech/car/widget/media/list/MediaDataList;->scrollToPositionWithOffset(II)V

    goto :goto_3

    :pswitch_c
    add-int/lit16 v4, p2, -0x3e8

    .line 1642
    invoke-virtual {v3, v4}, Lcom/yftech/car/widget/media/list/MediaDataList;->setMediaDefaultList(I)V

    .line 1643
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v4

    invoke-virtual {v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->getUsbIndex()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getFolderVideo(I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    .line 1644
    invoke-virtual {v3, v5, v5}, Lcom/yftech/car/widget/media/list/MediaDataList;->scrollToPositionWithOffset(II)V

    goto :goto_3

    .line 1667
    :cond_6
    iget-object v4, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    if-eqz v4, :cond_9

    add-int/lit16 v4, p2, -0x3e8

    .line 1668
    invoke-virtual {v3, v4}, Lcom/yftech/car/widget/media/list/MediaDataList;->setMediaDefaultList(I)V

    .line 1669
    iget-object v4, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {v4}, Lcom/yftech/car/widget/media/video/BaseVideo;->getPlayList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFileList(Ljava/util/List;Z)V

    .line 1670
    invoke-virtual {v3, v5, v5}, Lcom/yftech/car/widget/media/list/MediaDataList;->scrollToPositionWithOffset(II)V

    goto :goto_3

    :cond_7
    add-int/lit16 v4, p2, -0x3e8

    .line 1674
    invoke-virtual {v3, v4}, Lcom/yftech/car/widget/media/list/MediaDataList;->setMediaDefaultList(I)V

    .line 1675
    invoke-virtual {v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->isMediaListClickMemoryDirectory()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1676
    invoke-virtual {v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateDirectoryList()V

    goto :goto_2

    .line 1678
    :cond_8
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v4

    invoke-virtual {v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->getUsbIndex()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getVideoDirectory(I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateDirectoryList(Ljava/util/List;)V

    .line 1681
    :goto_2
    invoke-virtual {v3, v5, v5}, Lcom/yftech/car/widget/media/list/MediaDataList;->scrollToPositionWithOffset(II)V

    .line 1718
    :cond_9
    :goto_3
    invoke-virtual {v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->getMediaDefaultList()I

    move-result v4

    .line 1719
    iget-object v6, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mButtonList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/yftech/car/widget/media/video/button/VideoButton;

    add-int/lit16 v8, v4, 0x3e8

    .line 1720
    invoke-virtual {v7, v8}, Lcom/yftech/car/widget/media/video/button/VideoButton;->isFunction(I)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/yftech/car/widget/media/video/button/VideoButton;->setSelected(Z)V

    goto :goto_4

    .line 1722
    :cond_a
    invoke-virtual {v3, v5}, Lcom/yftech/car/widget/media/list/MediaDataList;->setVisibility(I)V

    .line 1723
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mSearchHistoryList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yftech/car/widget/media/list/SearchHistoryList;

    const/16 v5, 0x8

    .line 1724
    invoke-virtual {v4, v5}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->setVisibility(I)V

    goto :goto_5

    :cond_b
    :goto_6
    return-void

    :cond_c
    :goto_7
    const-string p0, "LayoutChildManager"

    const-string p1, "onClickFunction: Double Click isAnimationLoading is true"

    .line 1597
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e9
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    const-string v0, "LayoutChildManager"

    .line 1572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onWindowFocusChanged: hasWindowFocus=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 1575
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->updateTouchEvent(Z)V

    .line 1577
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    if-eqz p1, :cond_2

    .line 1578
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/video/BaseVideo;->isClickSwitchHideShow(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1579
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result p1

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/video/BaseVideo;->getSystemUiVisibilityShow()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 1580
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mRootLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/video/BaseVideo;->getSystemUiVisibilityShow()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 1585
    :cond_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/yftech/car/widget/media/video/BaseVideo;->isClickSwitchHideShow(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mShowVisibility:Z

    if-nez p1, :cond_2

    .line 1586
    invoke-direct {p0, v0, v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->setVisibilityVisibleGone(ZZ)V

    goto :goto_0

    .line 1590
    :cond_1
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->hideInput()V

    :cond_2
    :goto_0
    return-void
.end method

.method public unregister()V
    .locals 3

    .line 489
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mOnDataChangeCallback:Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeCallback;

    if-eqz v0, :cond_5

    .line 490
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoPlayer$VideoCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/video/BaseVideo;->removeVideoCallback(Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;)V

    .line 492
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/BaseVideo;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 494
    iput-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoPlayer$VideoCallback;

    .line 495
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mOnDataChangeCallback:Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeCallback;

    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->unregisterCarDataControlCallback(Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeListener;)V

    .line 496
    iput-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mOnDataChangeCallback:Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeCallback;

    .line 497
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mMediaSeekBarList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/view/MediaSeekBar;

    .line 498
    invoke-virtual {v2, v0}, Lcom/yftech/car/widget/media/view/MediaSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto :goto_0

    .line 500
    :cond_1
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mButtonList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 501
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mTextViewList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 502
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mPlayTimeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 503
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mMediaSeekBarList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 504
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mProgressBarList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 505
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mMediaListFolderPathList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 506
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mMediaDataListTextList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 507
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mMediaDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/list/MediaDataList;

    .line 508
    invoke-virtual {v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->release()V

    goto :goto_1

    .line 510
    :cond_2
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mMediaDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 511
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mMediaDataModifyBtnList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 512
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mMediaImageLoadingList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 513
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mSizeCore:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 514
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVisibilityTextButtonList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 515
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mMediaSearchEditTextList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    .line 516
    invoke-virtual {v2}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->release()V

    goto :goto_2

    .line 518
    :cond_3
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mMediaSearchEditTextList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 519
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mSearchEditButtonList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 520
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mSearchHistoryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 521
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mMediaDataDirectoryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;

    .line 522
    invoke-virtual {v2}, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->release()V

    goto :goto_3

    .line 524
    :cond_4
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mMediaDataDirectoryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 525
    invoke-static {}, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/video/VideoDataPlayManager;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mOnMediaDataListUpdateListener:Lcom/yftech/car/widget/media/video/VideoDataPlayManager$OnMediaDataListUpdateListener;

    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->removePlayFinishCallback(Lcom/yftech/car/widget/media/video/VideoDataPlayManager$OnMediaDataListUpdateListener;)V

    .line 526
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->hideInput()V

    .line 527
    iput-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    .line 528
    iput-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoSeekViewImage:Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    .line 529
    iput-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mRootLayout:Landroid/view/ViewGroup;

    const/4 p0, 0x0

    .line 530
    sput-boolean p0, Lcom/yftech/car/widget/media/utils/TouchEventUtil;->mNoClicking:Z

    :cond_5
    return-void
.end method

.method public updateTouchEvent(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 476
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->hideInput()V

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/BaseVideo;->getAutoHideTime()I

    move-result v0

    if-lez v0, :cond_2

    if-eqz p1, :cond_1

    .line 480
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/video/BaseVideo;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 482
    :cond_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mHideRunnable:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/BaseVideo;->getAutoHideTime()I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Lcom/yftech/car/widget/media/video/BaseVideo;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    :cond_2
    :goto_0
    return-void
.end method
