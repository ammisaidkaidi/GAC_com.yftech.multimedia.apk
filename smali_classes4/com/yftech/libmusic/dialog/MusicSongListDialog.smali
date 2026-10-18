.class public Lcom/yftech/libmusic/dialog/MusicSongListDialog;
.super Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;
.source "MusicSongListDialog.java"

# interfaces
.implements Lcom/yftech/libmusic/view/IMusicSongListDialogView;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment<",
        "Lcom/yftech/libmusic/presenter/MusicSongListPresenter;",
        ">;",
        "Lcom/yftech/libmusic/view/IMusicSongListDialogView;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final ARG_PARAM1:Ljava/lang/String; = "index"


# instance fields
.field private final DISMISS_INTERVAL:I

.field private final RC_DISMISS:I

.field private final RC_REFRESH:I

.field private dismissOutOfView:Z

.field private index:I

.field private isPlaying:Z

.field private iv_toBoard:Landroid/widget/ImageView;

.field private linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private final mHandler:Landroid/os/Handler;

.field private musicSongListAdapter:Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;

.field private pullUp:Z

.field private receiver:Landroid/content/BroadcastReceiver;

.field private rv:Landroidx/recyclerview/widget/RecyclerView;

.field private tv_num:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 98
    invoke-direct {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->pullUp:Z

    .line 65
    iput-boolean v0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->isPlaying:Z

    .line 74
    iput-boolean v0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->dismissOutOfView:Z

    const/16 v0, 0xa

    .line 76
    iput v0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->RC_DISMISS:I

    const/16 v0, 0x3a98

    .line 78
    iput v0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->DISMISS_INTERVAL:I

    const/16 v0, 0x14

    .line 79
    iput v0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->RC_REFRESH:I

    .line 80
    new-instance v0, Lcom/yftech/libmusic/dialog/MusicSongListDialog$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yftech/libmusic/dialog/MusicSongListDialog$1;-><init>(Lcom/yftech/libmusic/dialog/MusicSongListDialog;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->mHandler:Landroid/os/Handler;

    .line 137
    new-instance v0, Lcom/yftech/libmusic/dialog/MusicSongListDialog$2;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/dialog/MusicSongListDialog$2;-><init>(Lcom/yftech/libmusic/dialog/MusicSongListDialog;)V

    iput-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/yftech/libmusic/dialog/MusicSongListDialog;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->dismissOutOfView:Z

    return p1
.end method

.method static synthetic access$100(Lcom/yftech/libmusic/dialog/MusicSongListDialog;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->isPlaying:Z

    return p0
.end method

.method static synthetic access$200(Lcom/yftech/libmusic/dialog/MusicSongListDialog;)Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->musicSongListAdapter:Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/libmusic/dialog/MusicSongListDialog;)Landroid/os/Handler;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/libmusic/dialog/MusicSongListDialog;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->pullUp:Z

    return p0
.end method

.method static synthetic access$402(Lcom/yftech/libmusic/dialog/MusicSongListDialog;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->pullUp:Z

    return p1
.end method

.method static synthetic access$500(Lcom/yftech/libmusic/dialog/MusicSongListDialog;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/yftech/libmusic/dialog/MusicSongListDialog;)Landroid/widget/ImageView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->iv_toBoard:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/yftech/libmusic/dialog/MusicSongListDialog;Z)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->setBoardVisible(Z)V

    return-void
.end method

.method public static newInstance(I)Lcom/yftech/libmusic/dialog/MusicSongListDialog;
    .locals 3

    .line 108
    new-instance v0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;

    invoke-direct {v0}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;-><init>()V

    .line 109
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "index"

    .line 110
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 111
    invoke-virtual {v0, v1}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private registerTestReceiver()V
    .locals 2

    .line 131
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "test"

    .line 132
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setBoardVisible(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 420
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->iv_toBoard:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 421
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->iv_toBoard:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 422
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->iv_toBoard:Landroid/widget/ImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 425
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->iv_toBoard:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xfa0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/yftech/libmusic/dialog/MusicSongListDialog$6;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/dialog/MusicSongListDialog$6;-><init>(Lcom/yftech/libmusic/dialog/MusicSongListDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 431
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 435
    :cond_0
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->iv_toBoard:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 436
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->iv_toBoard:Landroid/widget/ImageView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected createPresenter()Lcom/yftech/libmusic/presenter/MusicSongListPresenter;
    .locals 1

    .line 104
    new-instance v0, Lcom/yftech/libmusic/presenter/MusicSongListPresenter;

    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/presenter/MusicSongListPresenter;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method protected bridge synthetic createPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->createPresenter()Lcom/yftech/libmusic/presenter/MusicSongListPresenter;

    move-result-object p0

    return-object p0
.end method

.method public dismissCustom()V
    .locals 1

    const-string v0, "dismissCustom"

    .line 518
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 520
    iput-boolean v0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->dismissOutOfView:Z

    .line 522
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->dismissAllowingStateLoss()V

    return-void
.end method

.method public displayCurrentPlayList(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/yftech/libmusic/bean/MediaFileItem;",
            ">;)V"
        }
    .end annotation

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayCurrentPlayList:playingIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->musicSongListAdapter:Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;

    if-eqz v0, :cond_3

    .line 456
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->musicSongListAdapter:Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;

    invoke-virtual {v0, p2}, Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;->setNewData(Ljava/util/List;)V

    .line 461
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 463
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->musicSongListAdapter:Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;

    iget-boolean v1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->isPlaying:Z

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;->setPlayingIndex(IZZ)V

    if-ltz p1, :cond_3

    if-eqz p1, :cond_2

    .line 467
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, p1

    const/4 v0, 0x4

    if-gt p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 470
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    .line 473
    :cond_1
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    add-int/lit8 p1, p1, -0x2

    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    .line 468
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_3
    :goto_1
    return-void
.end method

.method public displayMusicPlayPosition(I)V
    .locals 2

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayMusicPlayPosition:position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->musicSongListAdapter:Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;

    if-eqz v0, :cond_1

    .line 484
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 485
    iget-object v1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    if-gt p1, v1, :cond_0

    if-ge p1, v0, :cond_1

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->musicSongListAdapter:Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;

    const/4 v1, 0x1

    iget-boolean p0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->isPlaying:Z

    invoke-virtual {v0, p1, v1, p0}, Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;->setPlayingIndex(IZZ)V

    return-void
.end method

.method public displayPlayListSize(I)V
    .locals 4

    .line 442
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->tv_num:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "(%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 9

    .line 257
    sget v0, Lcom/yftech/libmusic/R$id;->iv_close:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 258
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    sget v0, Lcom/yftech/libmusic/R$id;->tv_num:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->tv_num:Landroid/widget/TextView;

    .line 263
    sget v0, Lcom/yftech/libmusic/R$id;->iv_toBoard:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->iv_toBoard:Landroid/widget/ImageView;

    .line 264
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->iv_toBoard:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    sget v0, Lcom/yftech/libmusic/R$id;->rv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->rv:Landroidx/recyclerview/widget/RecyclerView;

    .line 267
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 268
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->rv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 270
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    sget v0, Lcom/yftech/libmusic/R$drawable;->thumb_drawable:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/graphics/drawable/StateListDrawable;

    .line 271
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    sget v0, Lcom/yftech/libmusic/R$drawable;->line_drawable:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 274
    new-instance v0, Lcom/media/common/util/FastScroller;

    iget-object v1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->rv:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v6, 0x14

    const/16 v7, 0x64

    const/16 v8, 0x14

    move-object v2, v4

    move-object v3, v5

    invoke-direct/range {v0 .. v8}, Lcom/media/common/util/FastScroller;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V

    .line 276
    :cond_0
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/yftech/libmusic/dialog/MusicSongListDialog$3;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/dialog/MusicSongListDialog$3;-><init>(Lcom/yftech/libmusic/dialog/MusicSongListDialog;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 323
    new-instance p1, Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;

    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->musicSongListAdapter:Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;

    .line 324
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->musicSongListAdapter:Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;

    new-instance v0, Lcom/yftech/libmusic/dialog/MusicSongListDialog$4;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/dialog/MusicSongListDialog$4;-><init>(Lcom/yftech/libmusic/dialog/MusicSongListDialog;)V

    invoke-virtual {p1, v0}, Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 364
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->musicSongListAdapter:Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;

    new-instance v0, Lcom/yftech/libmusic/dialog/MusicSongListDialog$5;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/dialog/MusicSongListDialog$5;-><init>(Lcom/yftech/libmusic/dialog/MusicSongListDialog;)V

    invoke-virtual {p1, v0}, Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    .line 405
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->rv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->musicSongListAdapter:Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 409
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p1

    check-cast p1, Lcom/yftech/libmusic/presenter/MusicSongListPresenter;

    invoke-virtual {p1}, Lcom/yftech/libmusic/presenter/MusicSongListPresenter;->getPlayListSize()V

    .line 412
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p0

    check-cast p0, Lcom/yftech/libmusic/presenter/MusicSongListPresenter;

    invoke-virtual {p0}, Lcom/yftech/libmusic/presenter/MusicSongListPresenter;->getCurrentPlayList()V

    return-void
.end method

.method public musicPlayStatusChanged(Lcom/yftech/libmusic/event/MusicPlayStatusEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "musicPlayStatusChanged:isPlaying="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/yftech/libmusic/event/MusicPlayStatusEvent;->isPlaying:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->isPlaying:Z

    iget-boolean v1, p1, Lcom/yftech/libmusic/event/MusicPlayStatusEvent;->isPlaying:Z

    if-eq v0, v1, :cond_0

    .line 189
    iget-boolean p1, p1, Lcom/yftech/libmusic/event/MusicPlayStatusEvent;->isPlaying:Z

    iput-boolean p1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->isPlaying:Z

    .line 191
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->musicSongListAdapter:Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;

    if-eqz p1, :cond_0

    .line 192
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->musicSongListAdapter:Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;

    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->musicSongListAdapter:Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;

    invoke-virtual {v0}, Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;->getPosition()I

    move-result v0

    const/4 v1, 0x1

    iget-boolean p0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->isPlaying:Z

    invoke-virtual {p1, v0, v1, p0}, Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;->setPlayingIndex(IZZ)V

    :cond_0
    return-void
.end method

.method public musicSwitch(Lcom/yftech/libmusic/event/MusicSwitchEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "musicSwitch"

    .line 171
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p0

    check-cast p0, Lcom/yftech/libmusic/presenter/MusicSongListPresenter;

    invoke-virtual {p0}, Lcom/yftech/libmusic/presenter/MusicSongListPresenter;->getPlayPosition()V

    :cond_0
    return-void
.end method

.method protected onBindView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 252
    sget p0, Lcom/yftech/libmusic/R$layout;->dialog_music_song_list:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 235
    invoke-super {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    const/4 p1, 0x1

    .line 237
    iput-boolean p1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->dismissOutOfView:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 497
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 501
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libmusic/R$id;->iv_toBoard:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 503
    iget-boolean p1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->pullUp:Z

    if-eqz p1, :cond_1

    .line 505
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0

    .line 508
    :cond_1
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->rv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->musicSongListAdapter:Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;

    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;->getItemCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0

    .line 509
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/yftech/libmusic/R$id;->iv_close:I

    if-ne p1, v0, :cond_3

    .line 511
    iput-boolean v2, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->dismissOutOfView:Z

    .line 512
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->dismiss()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 117
    invoke-super {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->index:I

    .line 122
    :cond_0
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/music/CarMusicManager;->isPlaying()Z

    move-result p1

    iput-boolean p1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->isPlaying:Z

    .line 123
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 126
    invoke-direct {p0}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->registerTestReceiver()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 159
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->onDestroy()V

    const-string v0, "onDestroy"

    .line 160
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 163
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 165
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 242
    invoke-super {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    const/4 p1, 0x0

    .line 247
    iput-boolean p1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->dismissOutOfView:Z

    return-void
.end method

.method public onMusicSourceChanged(Lcom/yftech/libmusic/event/MusicSourceChangedEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 201
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p1

    check-cast p1, Lcom/yftech/libmusic/presenter/MusicSongListPresenter;

    invoke-virtual {p1}, Lcom/yftech/libmusic/presenter/MusicSongListPresenter;->getPlayListSize()V

    .line 208
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p0

    check-cast p0, Lcom/yftech/libmusic/presenter/MusicSongListPresenter;

    invoke-virtual {p0}, Lcom/yftech/libmusic/presenter/MusicSongListPresenter;->getCurrentPlayList()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 150
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->onResume()V

    .line 152
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 154
    :cond_0
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3a98

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 214
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->onStart()V

    .line 215
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 217
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x106000d

    .line 219
    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 220
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    .line 221
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 222
    sget v1, Lcom/yftech/libmusic/R$style;->DialogRightAnimation:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v1, 0x244

    .line 223
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v1, 0x2b8

    .line 224
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const v1, 0x800033

    .line 225
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x3c

    .line 226
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v1, 0xb4

    .line 227
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 228
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method
