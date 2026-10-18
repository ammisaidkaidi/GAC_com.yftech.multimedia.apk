.class public Lcom/yftech/libmusic/ui/MusicLyricFragment;
.super Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;
.source "MusicLyricFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/yftech/libmusic/widget/LyricView$OnProgressTouchMoveListener;
.implements Lcom/yftech/libmusic/view/IMusicLyricFragmentView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment<",
        "Lcom/yftech/libmusic/presenter/MusicLyricPresenter;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/yftech/libmusic/widget/LyricView$OnProgressTouchMoveListener;",
        "Lcom/yftech/libmusic/view/IMusicLyricFragmentView;"
    }
.end annotation


# static fields
.field private static final ARG_PARAM1:Ljava/lang/String; = "mediaFile"

.field private static final ARG_PARAM2:Ljava/lang/String; = "music_source"


# instance fields
.field private final RC_LYRIC_CLICK:I

.field private final RC_LYRIC_POSITION:I

.field private cv:Lcom/media/common/ui/widget/CanvasView;

.field private fl_lyric:Landroid/widget/FrameLayout;

.field private frontFragment:Landroidx/fragment/app/Fragment;

.field private index:I

.field private isItemClick:Z

.field private isScrolling:Z

.field private final itemPlaceHolder:I

.field private ll_music_lyric:Landroid/widget/LinearLayout;

.field private lv:Landroidx/recyclerview/widget/RecyclerView;

.field private mHandler:Landroid/os/Handler;

.field private mediaFile:Lcom/yftech/car/media/data/entity/MediaFile;

.field private musicLyricAdapter:Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;

.field private music_source:Ljava/lang/String;

.field private onTouchListener:Landroid/view/View$OnTouchListener;

.field private pathLayoutManager:Lcom/wuyr/pathlayoutmanager/PathLayoutManager;

.field private result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/libmusic/bean/LyricObject;",
            ">;"
        }
    .end annotation
.end field

.field private setScrollStateRunnable:Ljava/lang/Runnable;

.field private time:J

.field private tv_artist:Landroid/widget/TextView;

.field private tv_lyric_tips:Landroid/widget/TextView;

.field private tv_title:Landroid/widget/TextView;

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 164
    invoke-direct {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;-><init>()V

    const/4 v0, 0x3

    .line 77
    iput v0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->itemPlaceHolder:I

    const/16 v0, 0xa

    .line 79
    iput v0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->RC_LYRIC_POSITION:I

    const/16 v0, 0x14

    .line 81
    iput v0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->RC_LYRIC_CLICK:I

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->isItemClick:Z

    .line 83
    iput-boolean v0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->isScrolling:Z

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->result:Ljava/util/List;

    const/4 v0, -0x1

    .line 86
    iput v0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->index:I

    .line 88
    new-instance v0, Lcom/yftech/libmusic/ui/MusicLyricFragment$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yftech/libmusic/ui/MusicLyricFragment$1;-><init>(Lcom/yftech/libmusic/ui/MusicLyricFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->mHandler:Landroid/os/Handler;

    .line 384
    new-instance v0, Lcom/yftech/libmusic/ui/MusicLyricFragment$5;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/ui/MusicLyricFragment$5;-><init>(Lcom/yftech/libmusic/ui/MusicLyricFragment;)V

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->onTouchListener:Landroid/view/View$OnTouchListener;

    .line 427
    new-instance v0, Lcom/yftech/libmusic/ui/MusicLyricFragment$6;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/ui/MusicLyricFragment$6;-><init>(Lcom/yftech/libmusic/ui/MusicLyricFragment;)V

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->setScrollStateRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/libmusic/ui/MusicLyricFragment;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->isScrolling:Z

    return p0
.end method

.method static synthetic access$002(Lcom/yftech/libmusic/ui/MusicLyricFragment;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->isScrolling:Z

    return p1
.end method

.method static synthetic access$100(Lcom/yftech/libmusic/ui/MusicLyricFragment;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->index:I

    return p0
.end method

.method static synthetic access$1000(Lcom/yftech/libmusic/ui/MusicLyricFragment;)Lcom/media/common/ui/widget/CanvasView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->cv:Lcom/media/common/ui/widget/CanvasView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/yftech/libmusic/ui/MusicLyricFragment;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->index:I

    return p1
.end method

.method static synthetic access$1100(Lcom/yftech/libmusic/ui/MusicLyricFragment;)F
    .locals 0

    .line 56
    iget p0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->x:F

    return p0
.end method

.method static synthetic access$1102(Lcom/yftech/libmusic/ui/MusicLyricFragment;F)F
    .locals 0

    .line 56
    iput p1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->x:F

    return p1
.end method

.method static synthetic access$1200(Lcom/yftech/libmusic/ui/MusicLyricFragment;)F
    .locals 0

    .line 56
    iget p0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->y:F

    return p0
.end method

.method static synthetic access$1202(Lcom/yftech/libmusic/ui/MusicLyricFragment;F)F
    .locals 0

    .line 56
    iput p1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->y:F

    return p1
.end method

.method static synthetic access$1300(Lcom/yftech/libmusic/ui/MusicLyricFragment;)J
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->time:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/yftech/libmusic/ui/MusicLyricFragment;J)J
    .locals 0

    .line 56
    iput-wide p1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->time:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/yftech/libmusic/ui/MusicLyricFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->setScrollStateRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/libmusic/ui/MusicLyricFragment;)Lcom/wuyr/pathlayoutmanager/PathLayoutManager;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->pathLayoutManager:Lcom/wuyr/pathlayoutmanager/PathLayoutManager;

    return-object p0
.end method

.method static synthetic access$202(Lcom/yftech/libmusic/ui/MusicLyricFragment;Lcom/wuyr/pathlayoutmanager/PathLayoutManager;)Lcom/wuyr/pathlayoutmanager/PathLayoutManager;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->pathLayoutManager:Lcom/wuyr/pathlayoutmanager/PathLayoutManager;

    return-object p1
.end method

.method static synthetic access$300(Lcom/yftech/libmusic/ui/MusicLyricFragment;)Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->musicLyricAdapter:Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/libmusic/ui/MusicLyricFragment;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->isItemClick:Z

    return p0
.end method

.method static synthetic access$402(Lcom/yftech/libmusic/ui/MusicLyricFragment;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->isItemClick:Z

    return p1
.end method

.method static synthetic access$500(Lcom/yftech/libmusic/ui/MusicLyricFragment;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->frontFragment:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method static synthetic access$600(Lcom/yftech/libmusic/ui/MusicLyricFragment;)Landroid/os/Handler;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/yftech/libmusic/ui/MusicLyricFragment;)Lcom/wuyr/pathlayoutmanager/PathLayoutManager;
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->getPathLayoutManager()Lcom/wuyr/pathlayoutmanager/PathLayoutManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/yftech/libmusic/ui/MusicLyricFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->lv:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/yftech/libmusic/ui/MusicLyricFragment;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->setData()V

    return-void
.end method

.method private getPathLayoutManager()Lcom/wuyr/pathlayoutmanager/PathLayoutManager;
    .locals 5

    .line 273
    new-instance v0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;

    const/4 v1, 0x0

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;-><init>(Landroid/graphics/Path;I)V

    const/4 v1, 0x0

    .line 275
    invoke-virtual {v0, v1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->setScrollMode(I)V

    const/4 v1, 0x1

    .line 276
    invoke-virtual {v0, v1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->setAutoSelect(Z)V

    .line 277
    invoke-virtual {v0, v1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->setItemDirectionFixed(Z)V

    .line 278
    invoke-virtual {v0, v1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->setOrientation(I)V

    .line 282
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 283
    iget-object v2, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->fl_lyric:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    .line 284
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->fl_lyric:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    const/high16 v4, 0x41f00000    # 30.0f

    .line 286
    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v2, 0x0

    .line 287
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v3, v2

    float-to-int v2, v3

    .line 289
    invoke-virtual {v0, v2}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->setItemOffset(I)V

    .line 290
    invoke-virtual {v0, v1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->updatePath(Landroid/graphics/Path;)V

    .line 293
    iget-object v2, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->cv:Lcom/media/common/ui/widget/CanvasView;

    invoke-virtual {v2}, Lcom/media/common/ui/widget/CanvasView;->getWidth()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->cv:Lcom/media/common/ui/widget/CanvasView;

    invoke-virtual {v2}, Lcom/media/common/ui/widget/CanvasView;->getHeight()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 302
    :cond_0
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->cv:Lcom/media/common/ui/widget/CanvasView;

    invoke-virtual {p0, v1}, Lcom/media/common/ui/widget/CanvasView;->setPath(Landroid/graphics/Path;)V

    goto :goto_1

    .line 294
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->cv:Lcom/media/common/ui/widget/CanvasView;

    invoke-virtual {v2}, Lcom/media/common/ui/widget/CanvasView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/yftech/libmusic/ui/MusicLyricFragment$4;

    invoke-direct {v3, p0, v1}, Lcom/yftech/libmusic/ui/MusicLyricFragment$4;-><init>(Lcom/yftech/libmusic/ui/MusicLyricFragment;Landroid/graphics/Path;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_1
    return-object v0
.end method

.method public static newInstance(Lcom/yftech/car/media/data/entity/MediaFile;Ljava/lang/String;)Lcom/yftech/libmusic/ui/MusicLyricFragment;
    .locals 3

    .line 174
    new-instance v0, Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-direct {v0}, Lcom/yftech/libmusic/ui/MusicLyricFragment;-><init>()V

    .line 175
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "mediaFile"

    .line 176
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "music_source"

    .line 177
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {v0, v1}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setData()V
    .locals 2

    const-string v0, "setData"

    .line 259
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->mediaFile:Lcom/yftech/car/media/data/entity/MediaFile;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->tv_title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->mediaFile:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v1}, Lcom/yftech/car/media/data/entity/MediaFile;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->tv_artist:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->mediaFile:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v1}, Lcom/yftech/car/media/data/entity/MediaFile;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/yftech/libmusic/presenter/MusicLyricPresenter;

    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->mediaFile:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v0, p0}, Lcom/yftech/libmusic/presenter/MusicLyricPresenter;->getLyricFromFile(Lcom/yftech/car/media/data/entity/MediaFile;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected createPresenter()Lcom/yftech/libmusic/presenter/MusicLyricPresenter;
    .locals 1

    .line 170
    new-instance v0, Lcom/yftech/libmusic/presenter/MusicLyricPresenter;

    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/presenter/MusicLyricPresenter;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method protected bridge synthetic createPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;
    .locals 0

    .line 56
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->createPresenter()Lcom/yftech/libmusic/presenter/MusicLyricPresenter;

    move-result-object p0

    return-object p0
.end method

.method public displayMusicLyricPath(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/libmusic/bean/LyricObject;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 498
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 505
    :cond_0
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->tv_lyric_tips:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 506
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->result:Ljava/util/List;

    .line 509
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/libmusic/bean/LyricObject;

    .line 510
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->mediaFile:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v3}, Lcom/yftech/car/media/data/entity/MediaFile;->getDuration()J

    move-result-wide v3

    iget v5, v1, Lcom/yftech/libmusic/bean/LyricObject;->begintime:I

    int-to-long v5, v5

    sub-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, v1, Lcom/yftech/libmusic/bean/LyricObject;->timeline:I

    move v1, v0

    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_1

    .line 513
    new-instance v3, Lcom/yftech/libmusic/bean/LyricObject;

    invoke-direct {v3}, Lcom/yftech/libmusic/bean/LyricObject;-><init>()V

    invoke-interface {p1, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v0, v3, :cond_2

    .line 517
    new-instance v1, Lcom/yftech/libmusic/bean/LyricObject;

    invoke-direct {v1}, Lcom/yftech/libmusic/bean/LyricObject;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 520
    :cond_2
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/music/CarMusicManager;->getCurrentPlayProgress()I

    move-result v0

    .line 521
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->musicLyricAdapter:Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;

    invoke-virtual {v1, p1}, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;->setNewData(Ljava/util/List;)V

    .line 523
    invoke-virtual {p0, v0, v2}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->setMusicProgress(IZ)V

    goto :goto_3

    .line 499
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->tv_lyric_tips:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 500
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->result:Ljava/util/List;

    .line 502
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->musicLyricAdapter:Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;->setPlayIndex(IZ)V

    .line 503
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->musicLyricAdapter:Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;

    invoke-virtual {p0, p1}, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;->setNewData(Ljava/util/List;)V

    :goto_3
    return-void
.end method

.method public getFrontFragment()Landroidx/fragment/app/Fragment;
    .locals 0

    .line 335
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->frontFragment:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method public getMediaFile()Lcom/yftech/car/media/data/entity/MediaFile;
    .locals 0

    .line 325
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->mediaFile:Lcom/yftech/car/media/data/entity/MediaFile;

    return-object p0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 216
    sget v0, Lcom/yftech/libmusic/R$id;->tv_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->tv_title:Landroid/widget/TextView;

    .line 217
    sget v0, Lcom/yftech/libmusic/R$id;->tv_artist:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->tv_artist:Landroid/widget/TextView;

    .line 218
    sget v0, Lcom/yftech/libmusic/R$id;->tv_lyric_tips:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->tv_lyric_tips:Landroid/widget/TextView;

    .line 219
    sget v0, Lcom/yftech/libmusic/R$id;->fl_lyric:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->fl_lyric:Landroid/widget/FrameLayout;

    .line 220
    sget v0, Lcom/yftech/libmusic/R$id;->ll_music_lyric:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->ll_music_lyric:Landroid/widget/LinearLayout;

    .line 221
    sget v0, Lcom/yftech/libmusic/R$id;->lv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->lv:Landroidx/recyclerview/widget/RecyclerView;

    .line 222
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->lv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 223
    sget v0, Lcom/yftech/libmusic/R$id;->cv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/media/common/ui/widget/CanvasView;

    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->cv:Lcom/media/common/ui/widget/CanvasView;

    .line 224
    new-instance p1, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;

    invoke-direct {p1}, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;-><init>()V

    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->musicLyricAdapter:Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;

    .line 225
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->musicLyricAdapter:Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;

    new-instance v0, Lcom/yftech/libmusic/ui/MusicLyricFragment$2;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/ui/MusicLyricFragment$2;-><init>(Lcom/yftech/libmusic/ui/MusicLyricFragment;)V

    invoke-virtual {p1, v0}, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;->setOnItemClickListener(Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter$OnItemClickListener;)V

    .line 240
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->tv_title:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->tv_lyric_tips:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->ll_music_lyric:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/yftech/libmusic/ui/MusicLyricFragment$3;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/ui/MusicLyricFragment$3;-><init>(Lcom/yftech/libmusic/ui/MusicLyricFragment;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public musicLyricDisplayChanged(Lcom/yftech/libmusic/event/MusicLyricHideEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "musicLyricDisplayChanged"

    .line 449
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 452
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->tv_title:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->callOnClick()Z

    :cond_0
    return-void
.end method

.method public musicPlayStatusChanged(Lcom/yftech/libmusic/event/MusicPlayStatusEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "musicPlayStatusChanged:isPlaying="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/yftech/libmusic/event/MusicPlayStatusEvent;->isPlaying:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->musicLyricAdapter:Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;

    iget-boolean p1, p1, Lcom/yftech/libmusic/event/MusicPlayStatusEvent;->isPlaying:Z

    invoke-virtual {p0, p1}, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;->setMusicPlaying(Z)V

    :cond_0
    return-void
.end method

.method protected onBindView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 210
    sget p0, Lcom/yftech/libmusic/R$layout;->fragment_music_lyric:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 458
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libmusic/R$id;->tv_title:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libmusic/R$id;->tv_lyric_tips:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libmusic/R$id;->ll_music_lyric:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 467
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/yftech/libmusic/R$id;->lv:I

    if-ne p1, v0, :cond_3

    .line 470
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->musicLyricAdapter:Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;

    invoke-virtual {p1}, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;->getData()Ljava/util/List;

    move-result-object p1

    .line 471
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 473
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/yftech/libmusic/MusicMainActivity;

    if-eqz p1, :cond_3

    .line 474
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/yftech/libmusic/MusicMainActivity;

    .line 475
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->frontFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_3

    .line 476
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->frontFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, p0}, Lcom/yftech/libmusic/MusicMainActivity;->switchContent(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 459
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/yftech/libmusic/MusicMainActivity;

    if-eqz p1, :cond_3

    .line 460
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/yftech/libmusic/MusicMainActivity;

    .line 461
    iput-object p0, p1, Lcom/yftech/libmusic/MusicMainActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    .line 462
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->frontFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_2

    .line 463
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->frontFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, p0}, Lcom/yftech/libmusic/MusicMainActivity;->switchContent(Landroidx/fragment/app/Fragment;)V

    :cond_2
    const/4 p0, 0x1

    .line 465
    invoke-virtual {p1, p0}, Lcom/yftech/libmusic/MusicMainActivity;->setSoundEffectVisible(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 184
    invoke-super {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onCreate(Landroid/os/Bundle;)V

    .line 185
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "mediaFile"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/media/data/entity/MediaFile;

    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->mediaFile:Lcom/yftech/car/media/data/entity/MediaFile;

    .line 187
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "music_source"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->music_source:Ljava/lang/String;

    .line 190
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 203
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onDestroy()V

    .line 204
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 205
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onProgressMove(I)V
    .locals 2

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProgressMove:progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/media/common/util/AudioSettingUtil;->playSystemClickSoundEffect(Landroid/content/Context;)V

    .line 492
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/car/media/music/CarMusicManager;->setPlayProgress(I)V

    return-void
.end method

.method public onRefreshData()V
    .locals 2

    const-string v0, "onRefreshData"

    .line 196
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 197
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/music/CarMusicManager;->getCurrentPlayProgress()I

    move-result v0

    const/4 v1, 0x0

    .line 198
    invoke-virtual {p0, v0, v1}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->setMusicProgress(IZ)V

    return-void
.end method

.method public setFrontFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->frontFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public setMediaFile(Lcom/yftech/car/media/data/entity/MediaFile;)V
    .locals 2

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMediaFile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 313
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->mediaFile:Lcom/yftech/car/media/data/entity/MediaFile;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->mediaFile:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->mediaFile:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->mediaFile:Lcom/yftech/car/media/data/entity/MediaFile;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->mediaFile:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->mediaFile:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 319
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->onRefreshData()V

    goto :goto_1

    .line 314
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->mediaFile:Lcom/yftech/car/media/data/entity/MediaFile;

    .line 315
    invoke-direct {p0}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->setData()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setMusicProgress(IZ)V
    .locals 5

    .line 342
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/music/CarMusicManager;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_5

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->result:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->result:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    .line 350
    iget-object v2, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->result:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-eq v0, v1, :cond_3

    if-eq v0, v2, :cond_3

    .line 353
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->result:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/libmusic/bean/LyricObject;

    iget v3, v3, Lcom/yftech/libmusic/bean/LyricObject;->begintime:I

    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->result:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yftech/libmusic/bean/LyricObject;

    iget v4, v4, Lcom/yftech/libmusic/bean/LyricObject;->timeline:I

    add-int/2addr v3, v4

    if-le v3, p1, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    add-int v0, v1, v2

    .line 359
    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 362
    :cond_3
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->result:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/libmusic/bean/LyricObject;

    iget v3, v3, Lcom/yftech/libmusic/bean/LyricObject;->begintime:I

    if-gt v3, p1, :cond_4

    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->result:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/libmusic/bean/LyricObject;

    iget v3, v3, Lcom/yftech/libmusic/bean/LyricObject;->begintime:I

    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->result:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/libmusic/bean/LyricObject;

    iget v0, v0, Lcom/yftech/libmusic/bean/LyricObject;->timeline:I

    add-int/2addr v3, v0

    if-le v3, p1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    .line 372
    :goto_2
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 373
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 374
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 375
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 376
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 p1, 0xc8

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_5
    return-void
.end method
