.class public Lcom/yftech/libmusic/dialog/MediaDataListDialog;
.super Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;
.source "MediaDataListDialog.java"

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

.field private final mHandler:Landroid/os/Handler;

.field private pullUp:Z

.field private receiver:Landroid/content/BroadcastReceiver;

.field private rv:Lcom/yftech/car/widget/media/list/MediaDataList;

.field private tv_num:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 99
    invoke-direct {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->pullUp:Z

    .line 66
    iput-boolean v0, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->isPlaying:Z

    .line 75
    iput-boolean v0, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->dismissOutOfView:Z

    const/16 v0, 0xa

    .line 77
    iput v0, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->RC_DISMISS:I

    const/16 v0, 0x3a98

    .line 79
    iput v0, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->DISMISS_INTERVAL:I

    const/16 v0, 0x14

    .line 80
    iput v0, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->RC_REFRESH:I

    .line 81
    new-instance v0, Lcom/yftech/libmusic/dialog/MediaDataListDialog$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yftech/libmusic/dialog/MediaDataListDialog$1;-><init>(Lcom/yftech/libmusic/dialog/MediaDataListDialog;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->mHandler:Landroid/os/Handler;

    .line 138
    new-instance v0, Lcom/yftech/libmusic/dialog/MediaDataListDialog$2;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/dialog/MediaDataListDialog$2;-><init>(Lcom/yftech/libmusic/dialog/MediaDataListDialog;)V

    iput-object v0, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/yftech/libmusic/dialog/MediaDataListDialog;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->dismissOutOfView:Z

    return p1
.end method

.method static synthetic access$100(Lcom/yftech/libmusic/dialog/MediaDataListDialog;)Landroid/os/Handler;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/libmusic/dialog/MediaDataListDialog;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->pullUp:Z

    return p0
.end method

.method static synthetic access$202(Lcom/yftech/libmusic/dialog/MediaDataListDialog;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->pullUp:Z

    return p1
.end method

.method static synthetic access$300(Lcom/yftech/libmusic/dialog/MediaDataListDialog;)Lcom/yftech/car/widget/media/list/MediaDataList;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->rv:Lcom/yftech/car/widget/media/list/MediaDataList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/libmusic/dialog/MediaDataListDialog;)Landroid/widget/ImageView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->iv_toBoard:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/yftech/libmusic/dialog/MediaDataListDialog;Z)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->setBoardVisible(Z)V

    return-void
.end method

.method public static newInstance(I)Lcom/yftech/libmusic/dialog/MediaDataListDialog;
    .locals 3

    .line 109
    new-instance v0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;

    invoke-direct {v0}, Lcom/yftech/libmusic/dialog/MediaDataListDialog;-><init>()V

    .line 110
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "index"

    .line 111
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    invoke-virtual {v0, v1}, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private registerTestReceiver()V
    .locals 2

    .line 132
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "test"

    .line 133
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setBoardVisible(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 348
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->iv_toBoard:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 349
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->iv_toBoard:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 350
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->iv_toBoard:Landroid/widget/ImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 353
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->iv_toBoard:Landroid/widget/ImageView;

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

    new-instance v0, Lcom/yftech/libmusic/dialog/MediaDataListDialog$5;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/dialog/MediaDataListDialog$5;-><init>(Lcom/yftech/libmusic/dialog/MediaDataListDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 359
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 363
    :cond_0
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->iv_toBoard:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 364
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->iv_toBoard:Landroid/widget/ImageView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected createPresenter()Lcom/yftech/libmusic/presenter/MusicSongListPresenter;
    .locals 1

    .line 105
    new-instance v0, Lcom/yftech/libmusic/presenter/MusicSongListPresenter;

    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/presenter/MusicSongListPresenter;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method protected bridge synthetic createPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->createPresenter()Lcom/yftech/libmusic/presenter/MusicSongListPresenter;

    move-result-object p0

    return-object p0
.end method

.method public dismissCustom()V
    .locals 1

    const-string v0, "dismissCustom"

    .line 414
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 416
    iput-boolean v0, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->dismissOutOfView:Z

    .line 418
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->dismissAllowingStateLoss()V

    return-void
.end method

.method public displayCurrentPlayList(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/yftech/libmusic/bean/MediaFileItem;",
            ">;)V"
        }
    .end annotation

    .line 379
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "displayCurrentPlayList:playingIndex="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public displayMusicPlayPosition(I)V
    .locals 1

    .line 385
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "displayMusicPlayPosition:position="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public displayPlayListSize(I)V
    .locals 4

    .line 370
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->tv_num:Landroid/widget/TextView;

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

    iput-object v0, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->tv_num:Landroid/widget/TextView;

    .line 263
    sget v0, Lcom/yftech/libmusic/R$id;->iv_toBoard:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->iv_toBoard:Landroid/widget/ImageView;

    .line 264
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->iv_toBoard:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    sget v0, Lcom/yftech/libmusic/R$id;->rv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/widget/media/list/MediaDataList;

    iput-object p1, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->rv:Lcom/yftech/car/widget/media/list/MediaDataList;

    .line 270
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->getContext()Landroid/content/Context;

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
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->getContext()Landroid/content/Context;

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
    new-instance v0, Lcom/media/common/util/MediaDataFastScroller;

    iget-object v1, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->rv:Lcom/yftech/car/widget/media/list/MediaDataList;

    const/16 v6, 0x14

    const/16 v7, 0x64

    const/16 v8, 0x14

    move-object v2, v4

    move-object v3, v5

    invoke-direct/range {v0 .. v8}, Lcom/media/common/util/MediaDataFastScroller;-><init>(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V

    .line 276
    :cond_0
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->rv:Lcom/yftech/car/widget/media/list/MediaDataList;

    new-instance v0, Lcom/yftech/libmusic/dialog/MediaDataListDialog$3;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/dialog/MediaDataListDialog$3;-><init>(Lcom/yftech/libmusic/dialog/MediaDataListDialog;)V

    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->addOnScrollListener(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 326
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->rv:Lcom/yftech/car/widget/media/list/MediaDataList;

    new-instance v0, Lcom/yftech/libmusic/dialog/MediaDataListDialog$4;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/dialog/MediaDataListDialog$4;-><init>(Lcom/yftech/libmusic/dialog/MediaDataListDialog;)V

    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->setOnItemChangeListener(Lcom/yftech/car/widget/media/list/MediaDataList$OnItemChangeListener;)V

    .line 337
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p1

    check-cast p1, Lcom/yftech/libmusic/presenter/MusicSongListPresenter;

    invoke-virtual {p1}, Lcom/yftech/libmusic/presenter/MusicSongListPresenter;->getPlayListSize()V

    .line 340
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p0

    check-cast p0, Lcom/yftech/libmusic/presenter/MusicSongListPresenter;

    invoke-virtual {p0}, Lcom/yftech/libmusic/presenter/MusicSongListPresenter;->getCurrentPlayList()V

    return-void
.end method

.method public musicPlayStatusChanged(Lcom/yftech/libmusic/event/MusicPlayStatusEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 186
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "musicPlayStatusChanged:isPlaying="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p1, Lcom/yftech/libmusic/event/MusicPlayStatusEvent;->isPlaying:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public musicSwitch(Lcom/yftech/libmusic/event/MusicSwitchEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "musicSwitch"

    .line 172
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

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
    sget p0, Lcom/yftech/libmusic/R$layout;->dialog_media_data_list:I

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
    iput-boolean p1, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->dismissOutOfView:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 393
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 397
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libmusic/R$id;->iv_toBoard:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 399
    iget-boolean p1, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->pullUp:Z

    if-eqz p1, :cond_1

    .line 401
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->rv:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-virtual {p0, v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->scrollToPosition(I)V

    goto :goto_0

    .line 404
    :cond_1
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->rv:Lcom/yftech/car/widget/media/list/MediaDataList;

    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->rv:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getAdapter()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->scrollToPosition(I)V

    goto :goto_0

    .line 405
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/yftech/libmusic/R$id;->iv_close:I

    if-ne p1, v0, :cond_3

    .line 407
    iput-boolean v2, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->dismissOutOfView:Z

    .line 408
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->dismiss()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 118
    invoke-super {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 119
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->index:I

    .line 123
    :cond_0
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/music/CarMusicManager;->isPlaying()Z

    move-result p1

    iput-boolean p1, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->isPlaying:Z

    .line 124
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 127
    invoke-direct {p0}, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->registerTestReceiver()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 160
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->onDestroy()V

    const-string v0, "onDestroy"

    .line 161
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 164
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->receiver:Landroid/content/BroadcastReceiver;

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
    iput-boolean p1, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->dismissOutOfView:Z

    return-void
.end method

.method public onMusicSourceChanged(Lcom/yftech/libmusic/event/MusicSourceChangedEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 193
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p1

    check-cast p1, Lcom/yftech/libmusic/presenter/MusicSongListPresenter;

    invoke-virtual {p1}, Lcom/yftech/libmusic/presenter/MusicSongListPresenter;->getPlayListSize()V

    .line 200
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p0

    check-cast p0, Lcom/yftech/libmusic/presenter/MusicSongListPresenter;

    invoke-virtual {p0}, Lcom/yftech/libmusic/presenter/MusicSongListPresenter;->getCurrentPlayList()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 151
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->onResume()V

    .line 153
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 155
    :cond_0
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3a98

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 206
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->onStart()V

    .line 207
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 209
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_1

    const v0, 0x106000d

    .line 211
    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 212
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 213
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 214
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ar"

    .line 216
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x800035

    .line 217
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 218
    sget v1, Lcom/yftech/libmusic/R$style;->DialogLeftAnimation:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_0

    :cond_0
    const v1, 0x800033

    .line 220
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 221
    sget v1, Lcom/yftech/libmusic/R$style;->DialogRightAnimation:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :goto_0
    const/4 v1, 0x0

    .line 223
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/16 v1, 0x244

    .line 224
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v1, 0x2b8

    .line 225
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x3c

    .line 226
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v1, 0xb4

    .line 227
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 228
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    return-void
.end method
