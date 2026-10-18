.class public Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;
.super Lcom/yftech/car/widget/media/layout/BaseLayoutChildManager;
.source "MusicLayoutChildManager.java"

# interfaces
.implements Lcom/yftech/car/widget/media/music/button/MusicButton$OnClickFunctionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;
    }
.end annotation


# static fields
.field private static final COLLECT_CHANGE_LOADING:I = 0x1

.field private static final PLAY_LIST_CHANGE_LOADING:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LayoutChildManager"


# instance fields
.field private isAnimationLoading:Z

.field private isCollectChangeLoading:Z

.field private isMusicDataLoading:Z

.field private isPlayListChangeLoading:Z

.field private isTouchSeekBar:Z

.field private final mButtonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/music/button/MusicButton;",
            ">;"
        }
    .end annotation
.end field

.field private mCarMusicControlCallback:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicControlCallback;

.field private final mHandler:Landroid/os/Handler;

.field private final mImageViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/view/MediaImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mLayout:Landroid/view/ViewGroup;

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

.field private mMusicImageRunnable:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;

.field private final mMusicSeekBarList:Ljava/util/List;
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

.field private final mOnDirectoryListener:Lcom/yftech/car/widget/media/list/MediaDataList$OnDirectoryListener;

.field private final mOnSearchHistoryItemClickListener:Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter$OnSearchHistoryItemClickListener;

.field private final mOnSearchTextListener:Lcom/yftech/car/widget/media/text/MediaSearchEditText$OnSearchTextListener;

.field private mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mPlayMusic:Lcom/yftech/car/media/data/entity/MediaFile;

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

.field private final mReflectedImageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/view/ReflectedImage;",
            ">;"
        }
    .end annotation
.end field

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

.field private mSeekBarTime:J

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

.field private mThreadExecutor:Ljava/util/concurrent/ExecutorService;

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
    .locals 2

    .line 82
    invoke-direct {p0}, Lcom/yftech/car/widget/media/layout/BaseLayoutChildManager;-><init>()V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMediaDataList:Ljava/util/List;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mButtonList:Ljava/util/List;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mTextViewList:Ljava/util/List;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mPlayTimeList:Ljava/util/List;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMusicSeekBarList:Ljava/util/List;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mProgressBarList:Ljava/util/List;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mImageViewList:Ljava/util/List;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mReflectedImageList:Ljava/util/List;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMediaListFolderPathList:Ljava/util/List;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMediaDataListTextList:Ljava/util/List;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMediaDataModifyBtnList:Ljava/util/List;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mVisibilityTextButtonList:Ljava/util/List;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMediaSearchEditTextList:Ljava/util/List;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mSearchEditButtonList:Ljava/util/List;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mSearchHistoryList:Ljava/util/List;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMediaImageLoadingList:Ljava/util/List;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMediaDataDirectoryList:Ljava/util/List;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mSideTextRetrievalViewList:Ljava/util/List;

    .line 131
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mSizeCore:Ljava/util/Map;

    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->isAnimationLoading:Z

    .line 137
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->isTouchSeekBar:Z

    const/4 v1, 0x0

    .line 145
    iput-object v1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 147
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->isMusicDataLoading:Z

    .line 148
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->isPlayListChangeLoading:Z

    .line 149
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->isCollectChangeLoading:Z

    .line 154
    new-instance v0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$1;-><init>(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mHandler:Landroid/os/Handler;

    .line 531
    new-instance v0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$3;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$3;-><init>(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mOnDirectoryListener:Lcom/yftech/car/widget/media/list/MediaDataList$OnDirectoryListener;

    .line 767
    new-instance v0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$5;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$5;-><init>(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mOnSearchHistoryItemClickListener:Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter$OnSearchHistoryItemClickListener;

    .line 786
    new-instance v0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$6;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$6;-><init>(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mOnSearchTextListener:Lcom/yftech/car/widget/media/text/MediaSearchEditText$OnSearchTextListener;

    .line 1331
    new-instance v0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$8;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$8;-><init>(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mOnClickVisibilityListener:Lcom/yftech/car/widget/media/text/VisibilityTextButton$OnClickVisibilityListener;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->updatePlayList()V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;I)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->updateCollectList(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->isMusicDataLoading:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;Z)Z
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->isMusicDataLoading:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Lcom/yftech/car/media/data/entity/MediaFile;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mPlayMusic:Lcom/yftech/car/media/data/entity/MediaFile;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;Lcom/yftech/car/media/data/entity/MediaFile;)Lcom/yftech/car/media/data/entity/MediaFile;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mPlayMusic:Lcom/yftech/car/media/data/entity/MediaFile;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mImageViewList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Landroid/view/ViewGroup;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Landroid/os/Handler;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;ILcom/yftech/car/widget/media/list/MediaDataList;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->updateUsbStatusChange(ILcom/yftech/car/widget/media/list/MediaDataList;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mTextViewList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMusicSeekBarList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mProgressBarList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mReflectedImageList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMediaSearchEditTextList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Lcom/yftech/car/widget/media/text/MediaSearchEditText$OnSearchTextListener;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mOnSearchTextListener:Lcom/yftech/car/widget/media/text/MediaSearchEditText$OnSearchTextListener;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mSearchHistoryList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mSearchEditButtonList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Lcom/yftech/car/widget/media/utils/MediaFindSearch;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMediaFindSearch:Lcom/yftech/car/widget/media/utils/MediaFindSearch;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;Lcom/yftech/car/widget/media/utils/MediaFindSearch;)Lcom/yftech/car/widget/media/utils/MediaFindSearch;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMediaFindSearch:Lcom/yftech/car/widget/media/utils/MediaFindSearch;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMusicImageRunnable:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;)Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMusicImageRunnable:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->isAnimationLoading:Z

    return p0
.end method

.method static synthetic access$2602(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;Z)Z
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->isAnimationLoading:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;Landroid/view/View;II)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->visibilityVisible(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic access$2800(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;Landroid/view/View;II)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->visibilityGone(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic access$2900(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mVisibilityTextButtonList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mPlayTimeList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->isTouchSeekBar:Z

    return p0
.end method

.method static synthetic access$502(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;Z)Z
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->isTouchSeekBar:Z

    return p1
.end method

.method static synthetic access$600(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)J
    .locals 2

    .line 82
    iget-wide v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mSeekBarTime:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;J)J
    .locals 0

    .line 82
    iput-wide p1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mSeekBarTime:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mButtonList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$800(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMediaDataList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMediaImageLoadingList:Ljava/util/List;

    return-object p0
.end method

.method private getCarRadioControlCallback()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicControlCallback;
    .locals 1

    .line 920
    new-instance v0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;-><init>(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)V

    return-object v0
.end method

.method private getOnDataChangeCallback()Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeCallback;
    .locals 1

    .line 543
    new-instance v0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;-><init>(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)V

    return-object v0
.end method

.method private getOnSeekBarChangeListener()Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 1

    .line 499
    new-instance v0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$2;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$2;-><init>(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)V

    return-object v0
.end method

.method static synthetic lambda$initView$0(Lcom/yftech/car/widget/media/list/MediaDataList;)V
    .locals 4

    .line 253
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getUsbIndex()I

    move-result v0

    .line 254
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getMediaDefaultList()I

    move-result v1

    const/16 v2, 0x64

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    const-string v0, "LayoutChildManager"

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initView: no MediaDefaultList == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getMediaDefaultList()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 277
    :pswitch_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getMusicDirectory(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateDirectoryList(Ljava/util/List;)V

    const-string p0, "LayoutChildManager"

    const-string v0, "initView: mediaDataList.getMediaDefaultList()== MediaDataList.DIRECTORY"

    .line 278
    invoke-static {p0, v0}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 271
    :pswitch_1
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getGenreMusic(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    goto :goto_0

    .line 268
    :pswitch_2
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getAlbumsMusic(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    goto :goto_0

    .line 265
    :pswitch_3
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getArtistsMusic(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    goto :goto_0

    .line 262
    :pswitch_4
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getFileMusic(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFileList(Ljava/util/List;Z)V

    goto :goto_0

    .line 259
    :pswitch_5
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getFolderMusic(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    goto :goto_0

    .line 256
    :pswitch_6
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/manager/MusicManager;->getCollectMusic(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFileList(Ljava/util/List;Z)V

    goto :goto_0

    .line 274
    :cond_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/manager/MusicManager;->getCurrentPlayList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFileList(Ljava/util/List;Z)V

    :goto_0
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
.end method

.method public static synthetic lambda$initView$1(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;Lcom/yftech/car/widget/media/text/VisibilityTextButton;)V
    .locals 0

    .line 322
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->isMediaDataListShow(Landroid/view/View;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->setVisibilityShow(Z)V

    return-void
.end method

.method static synthetic lambda$updateUsbStatusChange$2(Lcom/yftech/car/widget/media/list/MediaDataList;I)V
    .locals 1

    .line 758
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getMusicDirectory(I)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateDirectoryList(Ljava/util/List;)V

    return-void
.end method

.method private onResume()V
    .locals 7

    const-string v0, "LayoutChildManager"

    const-string v1, "onResume: "

    .line 371
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/manager/MusicManager;->getPlayMusic()Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mPlayMusic:Lcom/yftech/car/media/data/entity/MediaFile;

    .line 373
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mPlayMusic:Lcom/yftech/car/media/data/entity/MediaFile;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mImageViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMusicImageRunnable:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMusicImageRunnable:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;->access$202(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;Z)Z

    .line 377
    :cond_0
    new-instance v0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;

    iget-object v1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mPlayMusic:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mLayout:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;-><init>(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;Ljava/lang/String;Landroid/view/View;Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$1;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMusicImageRunnable:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;

    .line 378
    invoke-static {}, Lcom/yftech/car/widget/media/utils/TaskManager;->getInstance()Lcom/yftech/car/widget/media/utils/TaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMusicImageRunnable:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/utils/TaskManager;->threadRunnable(Ljava/lang/Runnable;)V

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mTextViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/text/MediaFileTextView;

    const/4 v2, 0x1

    .line 382
    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/text/MediaFileTextView;->setSelected(Z)V

    .line 383
    iget-object v2, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mPlayMusic:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/text/MediaFileTextView;->updateMediaFile(Lcom/yftech/car/media/data/entity/MediaFile;)V

    goto :goto_0

    .line 386
    :cond_2
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/manager/MusicManager;->getCurrentPlayDuration()J

    move-result-wide v0

    .line 387
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/manager/MusicManager;->getCurrentPlayProgress()I

    move-result v2

    .line 389
    iget-object v3, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mProgressBarList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    long-to-int v5, v0

    .line 390
    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 391
    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_1

    .line 394
    :cond_3
    iget-object v3, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMusicSeekBarList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yftech/car/widget/media/view/MediaSeekBar;

    long-to-int v5, v0

    .line 395
    invoke-virtual {v4, v5}, Lcom/yftech/car/widget/media/view/MediaSeekBar;->setMax(I)V

    .line 396
    invoke-virtual {v4, v2}, Lcom/yftech/car/widget/media/view/MediaSeekBar;->setProgress(I)V

    goto :goto_2

    .line 399
    :cond_4
    iget-object v3, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mPlayTimeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yftech/car/widget/media/text/MediaPlayTime;

    .line 400
    invoke-virtual {v4, v0, v1}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->updateDuration(J)V

    int-to-long v5, v2

    .line 401
    invoke-virtual {v4, v5, v6}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->updateProgress(J)V

    goto :goto_3

    .line 404
    :cond_5
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mButtonList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/music/button/MusicButton;

    .line 405
    invoke-virtual {v1, p0}, Lcom/yftech/car/widget/media/music/button/MusicButton;->setOnClickFunctionListener(Lcom/yftech/car/widget/media/music/button/MusicButton$OnClickFunctionListener;)V

    const/4 v2, 0x6

    .line 406
    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/music/button/MusicButton;->isFunction(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 407
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v2

    iget-object v3, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mPlayMusic:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v2, v3}, Lcom/yftech/car/widget/media/manager/MusicManager;->isCollectMusic(Lcom/yftech/car/media/data/entity/MediaFile;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/music/button/MusicButton;->setActivatedStatus(Z)V

    goto :goto_4

    :cond_7
    const/4 v2, 0x4

    .line 408
    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/music/button/MusicButton;->isFunction(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 409
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/manager/MusicManager;->isPlaying()Z

    move-result v2

    .line 411
    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/music/button/MusicButton;->setActivatedStatus(Z)V

    goto :goto_4

    :cond_8
    const/4 v2, 0x5

    .line 412
    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/music/button/MusicButton;->isFunction(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 413
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/manager/MusicManager;->getPlayMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/music/button/MusicButton;->updatePlayMode(I)V

    goto :goto_4

    .line 414
    :cond_9
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/music/button/MusicButton;->isUsbFunction()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 415
    iget-object v2, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mPlayMusic:Lcom/yftech/car/media/data/entity/MediaFile;

    if-eqz v2, :cond_6

    .line 416
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v2

    iget-object v3, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mPlayMusic:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v3}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getUsbIndex(Ljava/lang/String;)I

    move-result v2

    .line 417
    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/music/button/MusicButton;->setUsbStatus(I)V

    goto :goto_4

    :cond_a
    return-void
.end method

.method private updateCollectList(I)V
    .locals 4

    .line 1094
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMediaDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/list/MediaDataList;

    .line 1095
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getUsbIndex()I

    move-result v1

    .line 1096
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getMediaDefaultList()I

    move-result v2

    if-nez v2, :cond_0

    if-ne v1, p1, :cond_0

    .line 1097
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/yftech/car/widget/media/manager/MusicManager;->getCollectMusic(I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1098
    invoke-virtual {v0, v1, v2, v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFileList(Ljava/util/List;ZZ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updatePlayList()V
    .locals 3

    .line 1104
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1106
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMediaDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/list/MediaDataList;

    .line 1107
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getMediaDefaultList()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    .line 1108
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/manager/MusicManager;->getCurrentPlayList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    .line 1109
    invoke-virtual {v0, v1, v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFileList(Ljava/util/List;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateUsbStatusChange(ILcom/yftech/car/widget/media/list/MediaDataList;)V
    .locals 2

    .line 737
    invoke-virtual {p2, p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->setUsbIndex(I)V

    .line 738
    invoke-virtual {p2}, Lcom/yftech/car/widget/media/list/MediaDataList;->getMediaDefaultList()I

    move-result p0

    const/16 v0, 0x64

    const/4 v1, 0x1

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string p0, "LayoutChildManager"

    .line 762
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

    .line 758
    :pswitch_0
    new-instance p0, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$eg1qYJ0vfpHnIyxT1EqnqLlczGQ;

    invoke-direct {p0, p2, p1}, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$eg1qYJ0vfpHnIyxT1EqnqLlczGQ;-><init>(Lcom/yftech/car/widget/media/list/MediaDataList;I)V

    invoke-virtual {p2, p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->postOnAnimation(Ljava/lang/Runnable;)V

    const-string p0, "LayoutChildManager"

    const-string p1, "initView: mediaDataList.getMediaDefaultList()== MediaDataList.DIRECTORY"

    .line 759
    invoke-static {p0, p1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 752
    :pswitch_1
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getGenreMusic(I)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0, v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    goto :goto_0

    .line 749
    :pswitch_2
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getAlbumsMusic(I)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0, v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    goto :goto_0

    .line 746
    :pswitch_3
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getArtistsMusic(I)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0, v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    goto :goto_0

    .line 743
    :pswitch_4
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getFileMusic(I)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0, v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFileList(Ljava/util/List;Z)V

    goto :goto_0

    .line 740
    :pswitch_5
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getFolderMusic(I)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0, v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    goto :goto_0

    .line 755
    :cond_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/MusicManager;->getCurrentPlayList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0, v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFileList(Ljava/util/List;Z)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
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

    .line 1159
    invoke-static {p1, p3, p0}, Lcom/yftech/car/widget/media/utils/AnimationUtil;->showAlphaAnimation(Landroid/view/View;IZ)V

    goto/16 :goto_1

    .line 1118
    :pswitch_1
    iget-object p2, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mSizeCore:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yftech/car/widget/media/entity/SizeCore;

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p2, :cond_0

    .line 1122
    iget v1, p2, Lcom/yftech/car/widget/media/entity/SizeCore;->childAtCoreX:F

    .line 1123
    iget p2, p2, Lcom/yftech/car/widget/media/entity/SizeCore;->childAtCoreY:F

    goto :goto_0

    .line 1125
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    add-float/2addr v1, p2

    .line 1126
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    add-float/2addr p2, v2

    .line 1127
    new-instance v2, Lcom/yftech/car/widget/media/entity/SizeCore;

    invoke-direct {v2}, Lcom/yftech/car/widget/media/entity/SizeCore;-><init>()V

    .line 1128
    iput v1, v2, Lcom/yftech/car/widget/media/entity/SizeCore;->childAtCoreX:F

    .line 1129
    iput p2, v2, Lcom/yftech/car/widget/media/entity/SizeCore;->childAtCoreY:F

    .line 1130
    iget-object v3, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mSizeCore:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    :goto_0
    iget-object v2, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    .line 1134
    iget-object v3, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    cmpg-float v0, v1, v2

    if-gez v0, :cond_1

    sub-float v0, p2, v3

    .line 1136
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v4, v1, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    const/4 v6, 0x0

    .line 1138
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

    .line 1140
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

    .line 1142
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

    .line 1144
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr p2, v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p2, v0, p2

    if-lez p2, :cond_3

    .line 1146
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mLayout:Landroid/view/ViewGroup;

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

    .line 1148
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

    .line 1152
    :cond_3
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mLayout:Landroid/view/ViewGroup;

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

    .line 1154
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    add-float v5, p2, p0

    move-object v0, p1

    move v1, p3

    invoke-static/range {v0 .. v5}, Lcom/yftech/car/widget/media/utils/AnimationUtil;->showTranslateAnimation(Landroid/view/View;IFFFF)V

    :goto_1
    const/16 p0, 0x8

    .line 1165
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

    .line 1169
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const/4 p0, 0x1

    .line 1208
    invoke-static {p1, p3, p0}, Lcom/yftech/car/widget/media/utils/AnimationUtil;->showAlphaAnimation(Landroid/view/View;IZ)V

    goto/16 :goto_1

    .line 1173
    :pswitch_1
    iget-object p2, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mSizeCore:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yftech/car/widget/media/entity/SizeCore;

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p2, :cond_0

    .line 1177
    iget v1, p2, Lcom/yftech/car/widget/media/entity/SizeCore;->childAtCoreX:F

    .line 1178
    iget p2, p2, Lcom/yftech/car/widget/media/entity/SizeCore;->childAtCoreY:F

    goto :goto_0

    .line 1180
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    add-float/2addr v1, p2

    .line 1181
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    add-float/2addr p2, v2

    .line 1182
    new-instance v2, Lcom/yftech/car/widget/media/entity/SizeCore;

    invoke-direct {v2}, Lcom/yftech/car/widget/media/entity/SizeCore;-><init>()V

    .line 1183
    iput v1, v2, Lcom/yftech/car/widget/media/entity/SizeCore;->childAtCoreX:F

    .line 1184
    iput p2, v2, Lcom/yftech/car/widget/media/entity/SizeCore;->childAtCoreY:F

    .line 1185
    iget-object v3, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mSizeCore:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    :goto_0
    iget-object v2, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    .line 1189
    iget-object v3, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    cmpg-float v0, v1, v2

    if-gez v0, :cond_1

    sub-float v0, p2, v3

    .line 1191
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v4, v1, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    .line 1193
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

    .line 1195
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v4, p2, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1197
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

    .line 1199
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr p2, v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p2, v0, p2

    if-lez p2, :cond_3

    .line 1200
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mLayout:Landroid/view/ViewGroup;

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

    .line 1201
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

    .line 1203
    :cond_3
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mLayout:Landroid/view/ViewGroup;

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

    .line 1204
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

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 480
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 482
    sget-boolean p1, Lcom/yftech/car/widget/media/utils/TouchEventUtil;->mDispatchTouchEvent:Z

    if-nez p1, :cond_4

    .line 483
    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->updateTouchEvent(Z)V

    goto :goto_0

    :cond_0
    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    .line 486
    :cond_1
    sget-boolean p1, Lcom/yftech/car/widget/media/utils/TouchEventUtil;->mDispatchTouchEvent:Z

    if-eqz p1, :cond_2

    .line 487
    sput-boolean v0, Lcom/yftech/car/widget/media/utils/TouchEventUtil;->mDispatchTouchEvent:Z

    goto :goto_0

    .line 489
    :cond_2
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->updateTouchEvent(Z)V

    goto :goto_0

    :cond_3
    const-string p0, "LayoutChildManager"

    const-string p1, "dispatchTouchEvent: event is null"

    .line 493
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return v0
.end method

.method public hideInput()V
    .locals 3

    .line 910
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 912
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMediaSearchEditTextList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    .line 913
    invoke-virtual {v0, v2}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->setCursorVisible(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public initView(Landroid/view/ViewGroup;)V
    .locals 12

    .line 172
    iput-object p1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mLayout:Landroid/view/ViewGroup;

    const-string v0, "LayoutChildManager"

    const-string v1, "initView: "

    .line 173
    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mCarMusicControlCallback:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicControlCallback;

    if-nez v0, :cond_32

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 177
    invoke-direct {p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->getCarRadioControlCallback()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicControlCallback;

    move-result-object v2

    iput-object v2, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mCarMusicControlCallback:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicControlCallback;

    .line 178
    invoke-direct {p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->getOnDataChangeCallback()Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeCallback;

    move-result-object v2

    iput-object v2, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mOnDataChangeCallback:Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeCallback;

    .line 179
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 181
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 182
    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_0
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    const/4 v3, 0x0

    if-nez p1, :cond_14

    .line 184
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 185
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 186
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 187
    instance-of v5, v4, Lcom/yftech/car/widget/media/list/MediaDataList;

    if-eqz v5, :cond_1

    .line 188
    check-cast v4, Lcom/yftech/car/widget/media/list/MediaDataList;

    .line 189
    invoke-virtual {v4, v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->setLinkedList(Ljava/util/LinkedList;)V

    .line 190
    iget-object v5, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMediaDataList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 191
    :cond_1
    instance-of v5, v4, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;

    if-eqz v5, :cond_2

    .line 192
    iget-object v5, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMediaDataDirectoryList:Ljava/util/List;

    check-cast v4, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 193
    :cond_2
    instance-of v5, v4, Lcom/yftech/car/widget/media/list/SearchHistoryList;

    if-eqz v5, :cond_3

    .line 194
    iget-object v5, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mSearchHistoryList:Ljava/util/List;

    check-cast v4, Lcom/yftech/car/widget/media/list/SearchHistoryList;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 195
    :cond_3
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_4

    .line 196
    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 198
    :cond_4
    instance-of v5, v4, Lcom/yftech/car/widget/media/music/button/MusicButton;

    if-eqz v5, :cond_5

    .line 199
    check-cast v4, Lcom/yftech/car/widget/media/music/button/MusicButton;

    .line 200
    iget-object v5, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mButtonList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 201
    :cond_5
    instance-of v5, v4, Lcom/yftech/car/widget/media/text/MediaFileTextView;

    if-eqz v5, :cond_6

    .line 202
    iget-object v5, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mTextViewList:Ljava/util/List;

    check-cast v4, Lcom/yftech/car/widget/media/text/MediaFileTextView;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 203
    :cond_6
    instance-of v5, v4, Lcom/yftech/car/widget/media/text/MediaPlayTime;

    if-eqz v5, :cond_7

    .line 204
    iget-object v5, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mPlayTimeList:Ljava/util/List;

    check-cast v4, Lcom/yftech/car/widget/media/text/MediaPlayTime;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 205
    :cond_7
    instance-of v5, v4, Lcom/yftech/car/widget/media/view/MediaSeekBar;

    if-eqz v5, :cond_8

    .line 206
    iget-object v5, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMusicSeekBarList:Ljava/util/List;

    check-cast v4, Lcom/yftech/car/widget/media/view/MediaSeekBar;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 207
    :cond_8
    instance-of v5, v4, Lcom/yftech/car/widget/media/view/MediaImageView;

    if-eqz v5, :cond_9

    .line 208
    iget-object v5, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mImageViewList:Ljava/util/List;

    check-cast v4, Lcom/yftech/car/widget/media/view/MediaImageView;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 209
    :cond_9
    instance-of v5, v4, Lcom/yftech/car/widget/media/view/MediaProgressBar;

    if-eqz v5, :cond_a

    .line 210
    iget-object v5, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mProgressBarList:Ljava/util/List;

    check-cast v4, Lcom/yftech/car/widget/media/view/MediaProgressBar;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 211
    :cond_a
    instance-of v5, v4, Lcom/yftech/car/widget/media/view/ReflectedImage;

    if-eqz v5, :cond_b

    .line 212
    iget-object v5, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mReflectedImageList:Ljava/util/List;

    check-cast v4, Lcom/yftech/car/widget/media/view/ReflectedImage;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 213
    :cond_b
    instance-of v5, v4, Lcom/yftech/car/widget/media/text/MediaListFolderPath;

    if-eqz v5, :cond_c

    .line 214
    iget-object v5, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMediaListFolderPathList:Ljava/util/List;

    check-cast v4, Lcom/yftech/car/widget/media/text/MediaListFolderPath;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 215
    :cond_c
    instance-of v5, v4, Lcom/yftech/car/widget/media/text/MediaDataListText;

    if-eqz v5, :cond_d

    .line 216
    iget-object v5, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMediaDataListTextList:Ljava/util/List;

    check-cast v4, Lcom/yftech/car/widget/media/text/MediaDataListText;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 217
    :cond_d
    instance-of v5, v4, Lcom/yftech/car/widget/media/text/VisibilityTextButton;

    if-eqz v5, :cond_e

    .line 218
    iget-object v5, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mVisibilityTextButtonList:Ljava/util/List;

    check-cast v4, Lcom/yftech/car/widget/media/text/VisibilityTextButton;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 219
    :cond_e
    instance-of v5, v4, Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    if-eqz v5, :cond_f

    .line 220
    iget-object v5, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMediaSearchEditTextList:Ljava/util/List;

    check-cast v4, Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 221
    :cond_f
    instance-of v5, v4, Lcom/yftech/car/widget/media/text/SearchEditButton;

    if-eqz v5, :cond_10

    .line 222
    iget-object v5, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mSearchEditButtonList:Ljava/util/List;

    check-cast v4, Lcom/yftech/car/widget/media/text/SearchEditButton;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 223
    :cond_10
    instance-of v5, v4, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;

    if-eqz v5, :cond_11

    .line 224
    iget-object v5, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMediaDataModifyBtnList:Ljava/util/List;

    check-cast v4, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 225
    :cond_11
    instance-of v5, v4, Lcom/yftech/car/widget/media/view/MediaImageLoading;

    if-eqz v5, :cond_12

    .line 226
    iget-object v5, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMediaImageLoadingList:Ljava/util/List;

    check-cast v4, Lcom/yftech/car/widget/media/view/MediaImageLoading;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 227
    :cond_12
    instance-of v5, v4, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;

    if-eqz v5, :cond_13

    .line 228
    iget-object v5, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mSideTextRetrievalViewList:Ljava/util/List;

    check-cast v4, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 234
    :cond_14
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mCarMusicControlCallback:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicControlCallback;

    if-eqz p1, :cond_15

    .line 235
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object p1

    iget-object v2, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mCarMusicControlCallback:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicControlCallback;

    invoke-virtual {p1, v2}, Lcom/yftech/car/widget/media/manager/MusicManager;->registerMusicControlCallback(Lcom/yftech/car/widget/media/manager/MusicManager$OnMusicControlListener;)V

    .line 237
    :cond_15
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mOnDataChangeCallback:Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeCallback;

    if-eqz p1, :cond_16

    .line 238
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object p1

    iget-object v2, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mOnDataChangeCallback:Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeCallback;

    invoke-virtual {p1, v2}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->registerCarDataControlCallback(Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeListener;)V

    :cond_16
    const-string p1, "LayoutChildManager"

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " initView: mMediaDataList=="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMediaDataList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",LinkedList time == "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMediaDataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v4, 0x8

    const/4 v5, -0x1

    if-eqz v2, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/list/MediaDataList;

    .line 243
    iget-object v6, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMediaListFolderPathList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/yftech/car/widget/media/text/MediaListFolderPath;

    .line 244
    invoke-virtual {v2, v7}, Lcom/yftech/car/widget/media/list/MediaDataList;->setMediaListFolderPath(Lcom/yftech/car/widget/media/text/MediaListFolderPath;)V

    goto :goto_2

    .line 246
    :cond_18
    iget-object v6, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMediaDataDirectoryList:Ljava/util/List;

    invoke-virtual {v2, v6}, Lcom/yftech/car/widget/media/list/MediaDataList;->setMediaDataDirectoryList(Ljava/util/List;)V

    .line 247
    iget-object v6, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMediaDataListTextList:Ljava/util/List;

    invoke-virtual {v2, v6}, Lcom/yftech/car/widget/media/list/MediaDataList;->setMediaDataListTextList(Ljava/util/List;)V

    .line 248
    iget-object v6, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMediaDataModifyBtnList:Ljava/util/List;

    invoke-virtual {v2, v6}, Lcom/yftech/car/widget/media/list/MediaDataList;->setMediaDataModifyBtnList(Ljava/util/List;)V

    .line 249
    iget-object v6, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mSideTextRetrievalViewList:Ljava/util/List;

    invoke-virtual {v2, v6}, Lcom/yftech/car/widget/media/list/MediaDataList;->setSideTextRetrievalViewList(Ljava/util/List;)V

    .line 250
    iget-object v6, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mOnDirectoryListener:Lcom/yftech/car/widget/media/list/MediaDataList$OnDirectoryListener;

    invoke-virtual {v2, v6}, Lcom/yftech/car/widget/media/list/MediaDataList;->setOnDirectoryListener(Lcom/yftech/car/widget/media/list/MediaDataList$OnDirectoryListener;)V

    .line 251
    invoke-virtual {v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->getMediaDefaultList()I

    move-result v6

    .line 252
    new-instance v7, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$v8yhlvekpQahZlykhnGqOJENQ_w;

    invoke-direct {v7, v2}, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$v8yhlvekpQahZlykhnGqOJENQ_w;-><init>(Lcom/yftech/car/widget/media/list/MediaDataList;)V

    invoke-virtual {v2, v3, v7}, Lcom/yftech/car/widget/media/list/MediaDataList;->setMediaType(ILjava/lang/Runnable;)V

    const-string v7, "LayoutChildManager"

    .line 287
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " initView: loading data time == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v0

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v7, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mButtonList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_19

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/yftech/car/widget/media/music/button/MusicButton;

    add-int/lit16 v9, v6, 0x3e8

    .line 290
    invoke-virtual {v8, v9}, Lcom/yftech/car/widget/media/music/button/MusicButton;->isFunction(I)Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/yftech/car/widget/media/music/button/MusicButton;->setSelected(Z)V

    goto :goto_3

    .line 293
    :cond_19
    invoke-virtual {v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->getUsbIndex()I

    move-result v7

    .line 294
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->isScanner(I)Z

    move-result v7

    .line 295
    iget-object v8, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMediaImageLoadingList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1a
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/yftech/car/widget/media/view/MediaImageLoading;

    .line 296
    invoke-virtual {v9}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->getMediaDataListId()I

    move-result v10

    if-eq v10, v5, :cond_1b

    invoke-virtual {v9}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->getMediaDataListId()I

    move-result v10

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->getId()I

    move-result v11

    if-ne v10, v11, :cond_1a

    .line 297
    :cond_1b
    invoke-virtual {v9, v7}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->setLoadingStatus(Z)V

    goto :goto_4

    .line 300
    :cond_1c
    iget-object v2, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mSearchHistoryList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yftech/car/widget/media/list/SearchHistoryList;

    const/16 v7, 0x65

    if-ne v6, v7, :cond_1d

    .line 302
    invoke-virtual {v5, v3}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->setVisibility(I)V

    goto :goto_5

    .line 304
    :cond_1d
    invoke-virtual {v5, v4}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->setVisibility(I)V

    goto :goto_5

    .line 310
    :cond_1e
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-nez p1, :cond_1f

    .line 311
    invoke-direct {p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->getOnSeekBarChangeListener()Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 314
    :cond_1f
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMusicSeekBarList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/view/MediaSeekBar;

    .line 315
    iget-object v6, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v2, v6}, Lcom/yftech/car/widget/media/view/MediaSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto :goto_6

    .line 318
    :cond_20
    invoke-direct {p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->onResume()V

    .line 320
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mVisibilityTextButtonList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/text/VisibilityTextButton;

    .line 321
    iget-object v6, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mOnClickVisibilityListener:Lcom/yftech/car/widget/media/text/VisibilityTextButton$OnClickVisibilityListener;

    invoke-virtual {v2, v6}, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->setOnClickVisibilityListener(Lcom/yftech/car/widget/media/text/VisibilityTextButton$OnClickVisibilityListener;)V

    .line 322
    new-instance v6, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$cbn89DlZ1p4jahfJZRervsbYvGs;

    invoke-direct {v6, p0, v2}, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$cbn89DlZ1p4jahfJZRervsbYvGs;-><init>(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;Lcom/yftech/car/widget/media/text/VisibilityTextButton;)V

    invoke-virtual {v2, v6}, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_7

    .line 325
    :cond_21
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMediaSearchEditTextList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_22
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    .line 326
    iget-object v6, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mSearchEditButtonList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_23

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/yftech/car/widget/media/text/SearchEditButton;

    .line 327
    invoke-virtual {v2, v7}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->addSearchEditButton(Lcom/yftech/car/widget/media/text/SearchEditButton;)V

    goto :goto_9

    .line 329
    :cond_23
    iget-object v6, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mOnSearchTextListener:Lcom/yftech/car/widget/media/text/MediaSearchEditText$OnSearchTextListener;

    invoke-virtual {v2, v6}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->setOnSearchTextListener(Lcom/yftech/car/widget/media/text/MediaSearchEditText$OnSearchTextListener;)V

    .line 330
    iget-object v6, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mSearchHistoryList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_24
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_25

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/yftech/car/widget/media/list/SearchHistoryList;

    .line 331
    invoke-virtual {v2, v7}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->setSearchHistoryList(Lcom/yftech/car/widget/media/list/SearchHistoryList;)Z

    move-result v7

    if-eqz v7, :cond_24

    .line 336
    :cond_25
    iget-object v6, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMediaDataList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_26
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_22

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/yftech/car/widget/media/list/MediaDataList;

    .line 337
    invoke-virtual {v2}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->getSearchDataListId()I

    move-result v8

    if-eq v8, v5, :cond_27

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->getSearchDataListId()I

    move-result v8

    invoke-virtual {v7}, Lcom/yftech/car/widget/media/list/MediaDataList;->getId()I

    move-result v9

    if-ne v8, v9, :cond_26

    .line 338
    :cond_27
    invoke-virtual {v2, v7}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->setMediaDataList(Lcom/yftech/car/widget/media/list/MediaDataList;)V

    goto :goto_8

    .line 344
    :cond_28
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mSearchHistoryList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_29
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/list/SearchHistoryList;

    .line 345
    iget-object v6, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mOnSearchHistoryItemClickListener:Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter$OnSearchHistoryItemClickListener;

    invoke-virtual {v2, v6}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->setOnSearchHistoryItemClickListener(Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter$OnSearchHistoryItemClickListener;)V

    .line 346
    iget-object v6, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mSearchEditButtonList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/yftech/car/widget/media/text/SearchEditButton;

    .line 347
    invoke-virtual {v2, v7}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->setSearchEditButton(Lcom/yftech/car/widget/media/text/SearchEditButton;)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 352
    :cond_2b
    iget-object v6, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mSearchEditButtonList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2c
    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_29

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/yftech/car/widget/media/text/SearchEditButton;

    const/4 v8, 0x3

    .line 353
    invoke-virtual {v7, v8}, Lcom/yftech/car/widget/media/text/SearchEditButton;->isSearchType(I)Z

    move-result v8

    if-eqz v8, :cond_2c

    invoke-virtual {v7}, Lcom/yftech/car/widget/media/text/SearchEditButton;->getMediaSearchHistoryListId()I

    move-result v8

    if-eq v8, v5, :cond_2d

    invoke-virtual {v7}, Lcom/yftech/car/widget/media/text/SearchEditButton;->getMediaSearchHistoryListId()I

    move-result v8

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->getId()I

    move-result v9

    if-ne v8, v9, :cond_2c

    .line 354
    :cond_2d
    invoke-virtual {v2}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->getVisibility()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/yftech/car/widget/media/text/SearchEditButton;->setVisibility(I)V

    goto :goto_a

    .line 358
    :cond_2e
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mSearchEditButtonList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2f
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/widget/media/text/SearchEditButton;

    .line 359
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/text/SearchEditButton;->getSearchVisibilityShow()I

    move-result v2

    if-lez v2, :cond_2f

    const/4 v2, 0x4

    .line 360
    invoke-virtual {p1, v2}, Lcom/yftech/car/widget/media/text/SearchEditButton;->isSearchVisibilityShow(I)Z

    move-result v2

    if-eqz v2, :cond_30

    move v2, v3

    goto :goto_c

    :cond_30
    move v2, v4

    :goto_c
    invoke-virtual {p1, v2}, Lcom/yftech/car/widget/media/text/SearchEditButton;->setVisibility(I)V

    goto :goto_b

    :cond_31
    const-string p0, "LayoutChildManager"

    .line 365
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initView: loading time =="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    return-void
.end method

.method public onClickFunction(II)V
    .locals 8

    const-string v0, "LayoutChildManager"

    .line 1227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClickFunction: mediaListId=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",function=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMediaDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/list/MediaDataList;

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    .line 1229
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->getId()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 1230
    :cond_1
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->getUsbIndex()I

    move-result v2

    const/16 v3, 0x9

    const/4 v4, 0x1

    if-eq p2, v3, :cond_5

    const/16 v3, 0x44c

    if-eq p2, v3, :cond_4

    packed-switch p2, :pswitch_data_0

    add-int/lit8 v2, p2, -0x64

    if-ltz v2, :cond_7

    const/4 v3, 0x4

    if-gt v2, v3, :cond_7

    .line 1285
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->getMediaDefaultList()I

    move-result v3

    .line 1286
    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->setUsbIndex(I)V

    const/16 v5, 0x64

    if-eq v3, v5, :cond_2

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_1

    .line 1310
    :pswitch_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getMusicDirectory(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateDirectoryList(Ljava/util/List;)V

    const-string v2, "LayoutChildManager"

    .line 1311
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initView: mediaDataList.getMediaDefaultList()=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1304
    :pswitch_1
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getGenreMusic(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    goto/16 :goto_1

    .line 1301
    :pswitch_2
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getAlbumsMusic(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    goto/16 :goto_1

    .line 1298
    :pswitch_3
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getArtistsMusic(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    goto/16 :goto_1

    .line 1295
    :pswitch_4
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getFileMusic(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFileList(Ljava/util/List;Z)V

    goto/16 :goto_1

    .line 1292
    :pswitch_5
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getFolderMusic(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    goto/16 :goto_1

    .line 1289
    :pswitch_6
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/yftech/car/widget/media/manager/MusicManager;->getCollectMusic(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFileList(Ljava/util/List;Z)V

    goto/16 :goto_1

    .line 1307
    :cond_2
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/manager/MusicManager;->getCurrentPlayList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFileList(Ljava/util/List;Z)V

    goto/16 :goto_1

    :pswitch_7
    add-int/lit16 v3, p2, -0x3e8

    .line 1261
    invoke-virtual {v1, v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->setMediaDefaultList(I)V

    .line 1262
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->isMediaListClickMemoryDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1263
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateDirectoryList()V

    goto/16 :goto_1

    .line 1265
    :cond_3
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getMusicDirectory(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateDirectoryList(Ljava/util/List;)V

    goto/16 :goto_1

    :pswitch_8
    add-int/lit16 v3, p2, -0x3e8

    .line 1253
    invoke-virtual {v1, v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->setMediaDefaultList(I)V

    .line 1254
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getGenreMusic(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    goto/16 :goto_1

    :pswitch_9
    add-int/lit16 v3, p2, -0x3e8

    .line 1249
    invoke-virtual {v1, v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->setMediaDefaultList(I)V

    .line 1250
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getAlbumsMusic(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    goto/16 :goto_1

    :pswitch_a
    add-int/lit16 v3, p2, -0x3e8

    .line 1245
    invoke-virtual {v1, v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->setMediaDefaultList(I)V

    .line 1246
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getArtistsMusic(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    goto/16 :goto_1

    :pswitch_b
    add-int/lit16 v3, p2, -0x3e8

    .line 1241
    invoke-virtual {v1, v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->setMediaDefaultList(I)V

    .line 1242
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getFileMusic(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFileList(Ljava/util/List;Z)V

    goto :goto_1

    :pswitch_c
    add-int/lit16 v3, p2, -0x3e8

    .line 1237
    invoke-virtual {v1, v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->setMediaDefaultList(I)V

    .line 1238
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getFolderMusic(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    goto :goto_1

    :pswitch_d
    add-int/lit16 v3, p2, -0x3e8

    .line 1233
    invoke-virtual {v1, v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->setMediaDefaultList(I)V

    .line 1234
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/yftech/car/widget/media/manager/MusicManager;->getCollectMusic(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFileList(Ljava/util/List;Z)V

    goto :goto_1

    :cond_4
    add-int/lit16 v2, p2, -0x3e8

    .line 1257
    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->setMediaDefaultList(I)V

    .line 1258
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/manager/MusicManager;->getCurrentPlayList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFileList(Ljava/util/List;Z)V

    goto :goto_1

    .line 1270
    :cond_5
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->getMediaDefaultList()I

    move-result v2

    const/4 v5, 0x6

    if-ne v2, v5, :cond_7

    .line 1272
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->getDirectoryFolderPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7, v5}, Lcom/yftech/car/widget/media/manager/MusicManager;->start(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1275
    iget-object v2, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mButtonList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yftech/car/widget/media/music/button/MusicButton;

    .line 1276
    invoke-virtual {v5, v3}, Lcom/yftech/car/widget/media/music/button/MusicButton;->isFunction(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1277
    invoke-virtual {v5, v4}, Lcom/yftech/car/widget/media/music/button/MusicButton;->setActivatedStatus(Z)V

    goto :goto_0

    .line 1317
    :cond_7
    :goto_1
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->getMediaDefaultList()I

    move-result v2

    .line 1318
    iget-object v3, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mButtonList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/16 v5, 0x3e8

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yftech/car/widget/media/music/button/MusicButton;

    add-int/2addr v5, v2

    .line 1319
    invoke-virtual {v4, v5}, Lcom/yftech/car/widget/media/music/button/MusicButton;->isFunction(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/yftech/car/widget/media/music/button/MusicButton;->setSelected(Z)V

    goto :goto_2

    :cond_8
    if-lt p2, v5, :cond_0

    const/4 v2, 0x0

    .line 1322
    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->setVisibility(I)V

    .line 1323
    iget-object v1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mSearchHistoryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/list/SearchHistoryList;

    const/16 v3, 0x8

    .line 1324
    invoke-virtual {v2, v3}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->setVisibility(I)V

    goto :goto_3

    :cond_9
    return-void

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    const-string v0, "LayoutChildManager"

    .line 1217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged: hasWindowFocus=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 1219
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->hideInput()V

    goto :goto_0

    .line 1221
    :cond_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->onResume()V

    :goto_0
    return-void
.end method

.method public unregister()V
    .locals 3

    const-string v0, "LayoutChildManager"

    const-string/jumbo v1, "unregister: "

    .line 424
    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mCarMusicControlCallback:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicControlCallback;

    if-eqz v0, :cond_5

    .line 426
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mCarMusicControlCallback:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicControlCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/manager/MusicManager;->unregisterMusicControlCallback(Lcom/yftech/car/widget/media/manager/MusicManager$OnMusicControlListener;)V

    const/4 v0, 0x0

    .line 427
    iput-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mCarMusicControlCallback:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicControlCallback;

    .line 428
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mOnDataChangeCallback:Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeCallback;

    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->unregisterCarDataControlCallback(Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeListener;)V

    .line 429
    iput-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mOnDataChangeCallback:Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeCallback;

    .line 430
    iget-object v1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mButtonList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 431
    iget-object v1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mTextViewList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 432
    iget-object v1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mPlayTimeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 433
    iget-object v1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mProgressBarList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 434
    iget-object v1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mImageViewList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 435
    iget-object v1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mReflectedImageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 436
    iget-object v1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMediaListFolderPathList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 437
    iget-object v1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMediaDataListTextList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 438
    iget-object v1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMusicSeekBarList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/view/MediaSeekBar;

    .line 439
    invoke-virtual {v2, v0}, Lcom/yftech/car/widget/media/view/MediaSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto :goto_0

    .line 441
    :cond_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMusicSeekBarList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 442
    iput-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 443
    iget-object v1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMediaDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/list/MediaDataList;

    .line 444
    invoke-virtual {v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->release()V

    goto :goto_1

    .line 446
    :cond_1
    iget-object v1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMediaDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 447
    iget-object v1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMediaDataModifyBtnList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 448
    iget-object v1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMediaImageLoadingList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 449
    iget-object v1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMediaDataDirectoryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;

    .line 450
    invoke-virtual {v2}, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->release()V

    goto :goto_2

    .line 452
    :cond_2
    iget-object v1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMediaDataDirectoryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 453
    iget-object v1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMusicImageRunnable:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;

    if-eqz v1, :cond_3

    .line 454
    iget-object v1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMusicImageRunnable:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;->access$202(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;Z)Z

    .line 460
    :cond_3
    iget-object v1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mVisibilityTextButtonList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 461
    iget-object v1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMediaSearchEditTextList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    .line 462
    invoke-virtual {v2}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->release()V

    goto :goto_3

    .line 464
    :cond_4
    iget-object v1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mMediaSearchEditTextList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 465
    iget-object v1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mSearchEditButtonList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 466
    iget-object v1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mSearchHistoryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 467
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->hideInput()V

    .line 468
    iput-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mLayout:Landroid/view/ViewGroup;

    .line 469
    iput-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mPlayMusic:Lcom/yftech/car/media/data/entity/MediaFile;

    .line 470
    iget-object v1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_5

    .line 471
    iget-object v1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 472
    iput-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    :cond_5
    return-void
.end method

.method public updateTouchEvent(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 905
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->hideInput()V

    :cond_0
    return-void
.end method
