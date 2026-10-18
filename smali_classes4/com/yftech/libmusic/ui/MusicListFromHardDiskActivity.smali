.class public Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;
.super Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;
.source "MusicListFromHardDiskActivity.java"

# interfaces
.implements Lcom/yftech/libmusic/view/IMusicListActivityView;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity<",
        "Lcom/yftech/libmusic/presenter/MusicListPresenter;",
        ">;",
        "Lcom/yftech/libmusic/view/IMusicListActivityView;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private final RC_REFRESH:I

.field private final RC_TEST:I

.field private btn_playAll:Landroid/widget/TextView;

.field private callback:Lcom/yftech/car/media/music/CarMusicManager$CarMusicControlCallback;

.field private index:I

.field private indexFolder:Ljava/lang/String;

.field private isUserSwitch:Z

.field private iv_start:Landroid/widget/ImageView;

.field private iv_tag:Landroid/widget/ImageView;

.field private linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mHandler:Landroid/os/Handler;

.field private musicListForHardDiskAdapter:Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;

.field private rv:Landroidx/recyclerview/widget/RecyclerView;

.field private testReceiver:Landroid/content/BroadcastReceiver;

.field private tv_actionbar_title:Landroid/widget/TextView;

.field private tv_file_name:Landroid/widget/TextView;

.field private tv_music_count:Landroid/widget/TextView;

.field private tv_subtitle:Lcom/media/common/ui/widget/ScrollableTextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->isUserSwitch:Z

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->indexFolder:Ljava/lang/String;

    const/16 v0, 0xa

    .line 79
    iput v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->RC_REFRESH:I

    const/16 v0, 0x14

    .line 80
    iput v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->RC_TEST:I

    .line 81
    new-instance v0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity$1;-><init>(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->mHandler:Landroid/os/Handler;

    .line 107
    new-instance v0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity$2;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity$2;-><init>(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;)V

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->testReceiver:Landroid/content/BroadcastReceiver;

    .line 210
    new-instance v0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity$3;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity$3;-><init>(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;)V

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->callback:Lcom/yftech/car/media/music/CarMusicManager$CarMusicControlCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;)Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->musicListForHardDiskAdapter:Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;)Landroid/os/Handler;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->index:I

    return p0
.end method

.method static synthetic access$200(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->isUserSwitch:Z

    return p0
.end method

.method static synthetic access$202(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->isUserSwitch:Z

    return p1
.end method

.method static synthetic access$300(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->iv_start:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;)Landroid/widget/TextView;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->tv_file_name:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;)Lcom/media/common/ui/widget/ScrollableTextView;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->tv_subtitle:Lcom/media/common/ui/widget/ScrollableTextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->rv:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;)Landroid/widget/TextView;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->btn_playAll:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;)Landroid/widget/TextView;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->tv_music_count:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$902(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->indexFolder:Ljava/lang/String;

    return-object p1
.end method

.method private checkParentList()V
    .locals 5

    .line 471
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->musicListForHardDiskAdapter:Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;

    invoke-virtual {v0}, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->getParentList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 474
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->onBackPressed()V

    goto :goto_1

    .line 477
    :cond_0
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->musicListForHardDiskAdapter:Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;

    invoke-virtual {v1, v0}, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->setNewData(Ljava/util/List;)V

    .line 478
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->musicListForHardDiskAdapter:Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->setParentList(Ljava/util/List;)V

    .line 481
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->tv_file_name:Landroid/widget/TextView;

    iget v2, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->index:I

    if-nez v2, :cond_1

    sget v2, Lcom/yftech/libmusic/R$string;->music_source_selection_1:I

    goto :goto_0

    :cond_1
    sget v2, Lcom/yftech/libmusic/R$string;->music_source_selection_2:I

    :goto_0
    invoke-virtual {p0, v2}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->tv_subtitle:Lcom/media/common/ui/widget/ScrollableTextView;

    const-string v2, " "

    invoke-virtual {v0, v2}, Lcom/media/common/ui/widget/ScrollableTextView;->setContent(Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->btn_playAll:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 487
    iput-object v1, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->indexFolder:Ljava/lang/String;

    .line 490
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v0

    iget v1, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->index:I

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/data/CarMediaDataManager;->getMusicFileSize(I)I

    move-result v0

    .line 491
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->tv_music_count:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v3, "(%d)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v1, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private initData()V
    .locals 3

    .line 150
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/music/CarMusicManager;->getPlayMusic()Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yftech/car/media/data/CarMediaDataManager;->getUsbIndex(Ljava/lang/String;)I

    move-result v0

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "usbIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 157
    iput v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->index:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 160
    iput v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->index:I

    .line 163
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume:index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 165
    iget v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->index:I

    if-ltz v0, :cond_3

    .line 167
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->musicListForHardDiskAdapter:Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->setParentList(Ljava/util/List;)V

    .line 169
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->tv_actionbar_title:Landroid/widget/TextView;

    iget v2, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->index:I

    if-nez v2, :cond_1

    sget v2, Lcom/yftech/libmusic/R$string;->music_source_selection_1:I

    goto :goto_1

    :cond_1
    sget v2, Lcom/yftech/libmusic/R$string;->music_source_selection_2:I

    :goto_1
    invoke-virtual {p0, v2}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->tv_file_name:Landroid/widget/TextView;

    iget v2, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->index:I

    if-nez v2, :cond_2

    sget v2, Lcom/yftech/libmusic/R$string;->music_source_selection_1:I

    goto :goto_2

    :cond_2
    sget v2, Lcom/yftech/libmusic/R$string;->music_source_selection_2:I

    :goto_2
    invoke-virtual {p0, v2}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->tv_subtitle:Lcom/media/common/ui/widget/ScrollableTextView;

    const-string v2, " "

    invoke-virtual {v0, v2}, Lcom/media/common/ui/widget/ScrollableTextView;->setContent(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->btn_playAll:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    iput-object v1, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->indexFolder:Ljava/lang/String;

    .line 179
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/yftech/libmusic/presenter/MusicListPresenter;

    iget p0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->index:I

    invoke-virtual {v0, p0}, Lcom/yftech/libmusic/presenter/MusicListPresenter;->getMusicListData(I)V

    goto :goto_3

    .line 181
    :cond_3
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->tv_actionbar_title:Landroid/widget/TextView;

    const-string v0, "."

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method

.method private initView()V
    .locals 10

    .line 306
    sget v0, Lcom/yftech/libmusic/R$id;->tv_actionbar_title:I

    invoke-virtual {p0, v0}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->tv_actionbar_title:Landroid/widget/TextView;

    .line 307
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->tv_actionbar_title:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    sget v0, Lcom/yftech/libmusic/R$id;->tv_subtitle:I

    invoke-virtual {p0, v0}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/media/common/ui/widget/ScrollableTextView;

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->tv_subtitle:Lcom/media/common/ui/widget/ScrollableTextView;

    .line 310
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->tv_subtitle:Lcom/media/common/ui/widget/ScrollableTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/media/common/ui/widget/ScrollableTextView;->setContent(Ljava/lang/String;)V

    .line 313
    sget v0, Lcom/yftech/libmusic/R$id;->tv_file_name:I

    invoke-virtual {p0, v0}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->tv_file_name:Landroid/widget/TextView;

    .line 317
    sget v0, Lcom/yftech/libmusic/R$id;->tv_music_count:I

    invoke-virtual {p0, v0}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->tv_music_count:Landroid/widget/TextView;

    .line 319
    sget v0, Lcom/yftech/libmusic/R$id;->iv_back:I

    invoke-virtual {p0, v0}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    sget v0, Lcom/yftech/libmusic/R$id;->iv_search:I

    invoke-virtual {p0, v0}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    sget v0, Lcom/yftech/libmusic/R$id;->btn_playAll:I

    invoke-virtual {p0, v0}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->btn_playAll:Landroid/widget/TextView;

    .line 324
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->btn_playAll:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    sget v0, Lcom/yftech/libmusic/R$id;->iv_tag:I

    invoke-virtual {p0, v0}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->iv_tag:Landroid/widget/ImageView;

    .line 327
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->iv_tag:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    sget v0, Lcom/yftech/libmusic/R$id;->iv_start:I

    invoke-virtual {p0, v0}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->iv_start:Landroid/widget/ImageView;

    .line 330
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->iv_start:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->iv_start:Landroid/widget/ImageView;

    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/media/music/CarMusicManager;->isPlaying()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 333
    sget v0, Lcom/yftech/libmusic/R$id;->rv:I

    invoke-virtual {p0, v0}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->rv:Landroidx/recyclerview/widget/RecyclerView;

    .line 334
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 335
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->rv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 336
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity$4;

    invoke-direct {v1, p0}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity$4;-><init>(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 343
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/yftech/libmusic/R$drawable;->thumb_drawable:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/graphics/drawable/StateListDrawable;

    .line 344
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/yftech/libmusic/R$drawable;->line_drawable:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    .line 347
    new-instance v1, Lcom/media/common/util/FastScroller;

    iget-object v2, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->rv:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v7, 0x14

    const/16 v8, 0x64

    const/16 v9, 0x14

    move-object v3, v5

    move-object v4, v6

    invoke-direct/range {v1 .. v9}, Lcom/media/common/util/FastScroller;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V

    .line 349
    :cond_0
    new-instance v0, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;

    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->musicListForHardDiskAdapter:Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;

    .line 350
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->musicListForHardDiskAdapter:Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;

    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/media/music/CarMusicManager;->isPlaying()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->setPlayStatus(Z)V

    .line 351
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->musicListForHardDiskAdapter:Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;

    new-instance v1, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity$5;

    invoke-direct {v1, p0}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity$5;-><init>(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;)V

    invoke-virtual {v0, v1}, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 393
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->musicListForHardDiskAdapter:Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;

    new-instance v1, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity$6;

    invoke-direct {v1, p0}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity$6;-><init>(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;)V

    invoke-virtual {v0, v1}, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    .line 435
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->rv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->musicListForHardDiskAdapter:Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private registerTestReceiver()V
    .locals 2

    .line 192
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "test"

    .line 193
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->testReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method protected createPresenter()Lcom/yftech/libmusic/presenter/MusicListPresenter;
    .locals 1

    .line 123
    new-instance v0, Lcom/yftech/libmusic/presenter/MusicListPresenter;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/presenter/MusicListPresenter;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method protected bridge synthetic createPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;
    .locals 0

    .line 57
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->createPresenter()Lcom/yftech/libmusic/presenter/MusicListPresenter;

    move-result-object p0

    return-object p0
.end method

.method public displayMusicList(Lcom/yftech/car/media/data/entity/MediaFile;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            "Ljava/util/List<",
            "Lcom/yftech/libmusic/bean/MusicListItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 446
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->musicListForHardDiskAdapter:Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->setPlaying(Ljava/lang/String;Z)V

    .line 447
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->musicListForHardDiskAdapter:Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;

    invoke-virtual {p1, p2}, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->setNewData(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 449
    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->indexFolder:Ljava/lang/String;

    .line 452
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object p1

    iget p2, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->index:I

    invoke-virtual {p1, p2}, Lcom/yftech/car/media/data/CarMediaDataManager;->getMusicFileSize(I)I

    move-result p1

    .line 453
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->tv_music_count:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    const-string v0, "(%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {p2, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public musicPlayStatusChanged(Lcom/yftech/libmusic/event/MusicPlayStatusEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "musicPlayStatusChanged:isPlaying="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p1, Lcom/yftech/libmusic/event/MusicPlayStatusEvent;->isPlaying:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 283
    iget-boolean p1, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->isDisplaying:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->indexFolder:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->musicListForHardDiskAdapter:Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;

    if-eqz p1, :cond_0

    .line 286
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->musicListForHardDiskAdapter:Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;

    invoke-virtual {p1}, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->getPlayingPath()Ljava/lang/String;

    move-result-object p1

    .line 287
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->musicListForHardDiskAdapter:Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;

    invoke-virtual {v0}, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->getPosition()I

    move-result v0

    .line 288
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->musicListForHardDiskAdapter:Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;

    invoke-virtual {p0, v0, p1}, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public musicSwitch(Lcom/yftech/libmusic/event/MusicSwitchEvent;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->indexFolder:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->musicListForHardDiskAdapter:Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;

    if-eqz v0, :cond_3

    .line 250
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->musicListForHardDiskAdapter:Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;

    iget-object v1, p1, Lcom/yftech/libmusic/event/MusicSwitchEvent;->mediaFile:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->getPositionByPath(Ljava/lang/String;)I

    move-result v0

    .line 251
    iget-object p1, p1, Lcom/yftech/libmusic/event/MusicSwitchEvent;->mediaFile:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object p1

    .line 253
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 254
    iget-object v2, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    .line 256
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "musicSwitch:firstVisibleItemPosition="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", lastVisibleItemPosition="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-le v0, v1, :cond_1

    if-lt v0, v2, :cond_0

    goto :goto_0

    .line 271
    :cond_0
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->musicListForHardDiskAdapter:Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;

    invoke-virtual {p0, v0, p1}, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    goto :goto_1

    .line 259
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 262
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 263
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 265
    :cond_2
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 266
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 267
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 268
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 497
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libmusic/R$id;->iv_back:I

    if-eq v0, v1, :cond_c

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libmusic/R$id;->tv_actionbar_title:I

    if-eq v0, v1, :cond_c

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libmusic/R$id;->tv_subtitle:I

    if-ne v0, v1, :cond_0

    goto/16 :goto_3

    .line 500
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libmusic/R$id;->iv_search:I

    if-ne v0, v1, :cond_1

    .line 501
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "index"

    .line 502
    iget v1, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->index:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 503
    invoke-static {p0, p1, v0}, Landroidx/core/content/ContextCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    goto/16 :goto_4

    .line 506
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libmusic/R$id;->iv_start:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libmusic/R$id;->iv_tag:I

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 573
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/yftech/libmusic/R$id;->btn_playAll:I

    if-ne p1, v0, :cond_d

    .line 575
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/music/CarMusicManager;->getPlayMusic()Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 576
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 578
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yftech/car/media/data/CarMediaDataManager;->getFileMusic(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 579
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 581
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/media/data/entity/MediaFile;

    .line 583
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/yftech/car/media/music/CarMusicManager;->start(Lcom/yftech/car/media/data/entity/MediaFile;I)Z

    .line 585
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/music/CarMusicManager;->getPlayMode()I

    move-result p1

    if-eqz p1, :cond_3

    .line 586
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/yftech/car/media/music/CarMusicManager;->setPlayMode(I)V

    .line 588
    :cond_3
    sget p1, Lcom/yftech/libmusic/R$string;->music_play_all_tips:I

    invoke-virtual {p0, p1}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Lcom/media/common/util/ToastUtils;->showNormalMessage(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 508
    :cond_4
    :goto_0
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/music/CarMusicManager;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 511
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/media/music/CarMusicManager;->pause()V

    goto/16 :goto_4

    .line 514
    :cond_5
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/music/CarMusicManager;->getPlayMusic()Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object p1

    .line 515
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getFolder()Ljava/lang/String;

    move-result-object v0

    .line 518
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->indexFolder:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 519
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object p0

    invoke-virtual {p0, p1, v2}, Lcom/yftech/car/media/music/CarMusicManager;->start(Lcom/yftech/car/media/data/entity/MediaFile;I)Z

    goto/16 :goto_4

    .line 522
    :cond_6
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->indexFolder:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 523
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lcom/yftech/car/media/music/CarMusicManager;->start(Lcom/yftech/car/media/data/entity/MediaFile;I)Z

    .line 525
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->musicListForHardDiskAdapter:Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;

    invoke-virtual {v0}, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->getData()Ljava/util/List;

    move-result-object v0

    const/4 v1, -0x1

    .line 527
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 528
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_8

    .line 529
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/libmusic/bean/MusicListItem;

    .line 530
    invoke-virtual {v2}, Lcom/yftech/libmusic/bean/MusicListItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v2}, Lcom/yftech/libmusic/bean/MusicListItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move v1, v4

    goto :goto_2

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 536
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    .line 537
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    if-ltz v1, :cond_d

    if-le v1, p1, :cond_9

    if-lt v1, v0, :cond_d

    .line 541
    :cond_9
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_4

    .line 547
    :cond_a
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->musicListForHardDiskAdapter:Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;

    invoke-virtual {p1}, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->getData()Ljava/util/List;

    move-result-object p1

    .line 548
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 550
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/libmusic/bean/MusicListItem;

    .line 551
    invoke-virtual {p1}, Lcom/yftech/libmusic/bean/MusicListItem;->isDir()Z

    move-result v0

    if-nez v0, :cond_b

    .line 553
    new-instance v0, Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-direct {v0, v4}, Lcom/yftech/car/media/data/entity/MediaFile;-><init>(I)V

    .line 554
    invoke-virtual {p1}, Lcom/yftech/libmusic/bean/MusicListItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/data/entity/MediaFile;->setTitle(Ljava/lang/String;)V

    .line 555
    invoke-virtual {p1}, Lcom/yftech/libmusic/bean/MusicListItem;->getAlbum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/data/entity/MediaFile;->setAlbum(Ljava/lang/String;)V

    .line 556
    invoke-virtual {p1}, Lcom/yftech/libmusic/bean/MusicListItem;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/data/entity/MediaFile;->setArtist(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p1}, Lcom/yftech/libmusic/bean/MusicListItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/data/entity/MediaFile;->setData(Ljava/lang/String;)V

    .line 558
    invoke-virtual {p1}, Lcom/yftech/libmusic/bean/MusicListItem;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/yftech/car/media/data/entity/MediaFile;->setDuration(J)V

    .line 560
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object p1

    invoke-virtual {p1, v0, v3}, Lcom/yftech/car/media/music/CarMusicManager;->start(Lcom/yftech/car/media/data/entity/MediaFile;I)Z

    .line 565
    :cond_b
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_4

    .line 498
    :cond_c
    :goto_3
    invoke-direct {p0}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->checkParentList()V

    :cond_d
    :goto_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 128
    invoke-super {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 129
    sget p1, Lcom/yftech/libmusic/R$layout;->activity_music_list_from_hard_disk:I

    invoke-virtual {p0, p1}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->setContentView(I)V

    .line 135
    invoke-direct {p0}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->initView()V

    .line 138
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 141
    invoke-direct {p0}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->registerTestReceiver()V

    .line 144
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->callback:Lcom/yftech/car/media/music/CarMusicManager$CarMusicControlCallback;

    invoke-static {p1}, Lcom/yftech/car/media/music/CarMusicManager;->registerMusicControlCallback(Lcom/yftech/car/media/music/CarMusicManager$CarMusicControlCallback;)V

    .line 146
    invoke-direct {p0}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->initData()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 199
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onDestroy()V

    .line 202
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 205
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->callback:Lcom/yftech/car/media/music/CarMusicManager$CarMusicControlCallback;

    invoke-static {v0}, Lcom/yftech/car/media/music/CarMusicManager;->unregisterMusicControlCallback(Lcom/yftech/car/media/music/CarMusicManager$CarMusicControlCallback;)V

    .line 206
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->testReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 460
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "onKeyDown"

    .line 462
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 463
    invoke-direct {p0}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->checkParentList()V

    const/4 p0, 0x0

    return p0

    .line 466
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onMusicSourceChanged(Lcom/yftech/libmusic/event/MusicSourceChangedEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "MUSIC_SOURCE_OF_USB1"

    .line 296
    iget-object v1, p1, Lcom/yftech/libmusic/event/MusicSourceChangedEvent;->music_source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->index:I

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "MUSIC_SOURCE_OF_USB2"

    iget-object p1, p1, Lcom/yftech/libmusic/event/MusicSourceChangedEvent;->music_source:Ljava/lang/String;

    .line 297
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->index:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    :cond_1
    return-void

    .line 301
    :cond_2
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->onBackPressed()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 186
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onResume()V

    return-void
.end method

.method public onUSBStatusChange(Lcom/media/common/event/USBStateEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "onUSBStatusChange:receiveBroadCast"

    .line 232
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 235
    iget-boolean v0, p1, Lcom/media/common/event/USBStateEvent;->isUsbExists:Z

    if-nez v0, :cond_0

    .line 238
    iget v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->index:I

    iget p1, p1, Lcom/media/common/event/USBStateEvent;->usbIndex:I

    if-ne v0, p1, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->onBackPressed()V

    :cond_0
    return-void
.end method
