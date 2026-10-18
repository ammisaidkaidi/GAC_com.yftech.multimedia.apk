.class public Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;
.super Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;
.source "MusicSearchFromHardDiskActivity.java"

# interfaces
.implements Lcom/yftech/libmusic/view/IMusicSearchActivityView;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity<",
        "Lcom/yftech/libmusic/presenter/MusicSearchPresenter;",
        ">;",
        "Lcom/yftech/libmusic/view/IMusicSearchActivityView;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private final RC_KEYBOARD:I

.field private final RC_SEARCH:I

.field private bluetoothPhoneCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;

.field private currentFragment:Landroidx/fragment/app/Fragment;

.field private et_search:Landroid/widget/EditText;

.field private fl_hot:Lcom/media/common/ui/widget/FlowLayout;

.field private index:I

.field private isPlaySoundOfClicking:Z

.field private isResume:Z

.field private iv_clear:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private searchResultFragment:Lcom/yftech/libmusic/ui/MusicSearchResultFragment;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->searchResultFragment:Lcom/yftech/libmusic/ui/MusicSearchResultFragment;

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->isPlaySoundOfClicking:Z

    .line 75
    iput-boolean v0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->isResume:Z

    const/16 v0, 0xa

    .line 79
    iput v0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->RC_SEARCH:I

    const/16 v0, 0x14

    .line 81
    iput v0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->RC_KEYBOARD:I

    .line 82
    new-instance v0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$1;-><init>(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->mHandler:Landroid/os/Handler;

    .line 153
    new-instance v0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$2;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$2;-><init>(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;)V

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->bluetoothPhoneCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->index:I

    return p0
.end method

.method static synthetic access$100(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;)Landroid/widget/EditText;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->et_search:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;)Lcom/media/common/ui/widget/FlowLayout;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->fl_hot:Lcom/media/common/ui/widget/FlowLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;)Lcom/yftech/libmusic/ui/MusicSearchResultFragment;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->searchResultFragment:Lcom/yftech/libmusic/ui/MusicSearchResultFragment;

    return-object p0
.end method

.method static synthetic access$302(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;Lcom/yftech/libmusic/ui/MusicSearchResultFragment;)Lcom/yftech/libmusic/ui/MusicSearchResultFragment;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->searchResultFragment:Lcom/yftech/libmusic/ui/MusicSearchResultFragment;

    return-object p1
.end method

.method static synthetic access$400(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;)Landroid/os/Handler;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->iv_clear:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->isPlaySoundOfClicking:Z

    return p0
.end method

.method static synthetic access$602(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->isPlaySoundOfClicking:Z

    return p1
.end method

.method static synthetic access$700(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->isResume:Z

    return p0
.end method

.method static synthetic access$702(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->isResume:Z

    return p1
.end method

.method static synthetic access$800(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->setInsertionDisabled(Landroid/widget/EditText;)V

    return-void
.end method

.method private initW()V
    .locals 2

    .line 269
    invoke-static {p0}, Lcom/media/common/util/SoftHideKeyBoardUtil;->assistActivity(Landroid/app/Activity;)V

    .line 271
    sget v0, Lcom/yftech/libmusic/R$id;->fl_hot:I

    invoke-virtual {p0, v0}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/media/common/ui/widget/FlowLayout;

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->fl_hot:Lcom/media/common/ui/widget/FlowLayout;

    .line 273
    sget v0, Lcom/yftech/libmusic/R$id;->et_search:I

    invoke-virtual {p0, v0}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->et_search:Landroid/widget/EditText;

    .line 274
    sget v0, Lcom/yftech/libmusic/R$id;->iv_clear:I

    invoke-virtual {p0, v0}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->iv_clear:Landroid/widget/ImageView;

    .line 275
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->iv_clear:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->iv_clear:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->et_search:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->disableCopyAndPaste(Landroid/widget/EditText;)V

    .line 321
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->et_search:Landroid/widget/EditText;

    new-instance v1, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$3;

    invoke-direct {v1, p0}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$3;-><init>(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 362
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->et_search:Landroid/widget/EditText;

    new-instance v1, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$4;

    invoke-direct {v1, p0}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$4;-><init>(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 390
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->et_search:Landroid/widget/EditText;

    new-instance v1, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$5;

    invoke-direct {v1, p0}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$5;-><init>(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 410
    sget v0, Lcom/yftech/libmusic/R$id;->iv_back:I

    invoke-virtual {p0, v0}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    sget v0, Lcom/yftech/libmusic/R$id;->tv_cancel:I

    invoke-virtual {p0, v0}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setInsertionDisabled(Landroid/widget/EditText;)V
    .locals 4

    .line 526
    :try_start_0
    const-class p0, Landroid/widget/TextView;

    const-string v0, "mEditor"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x1

    .line 527
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 528
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "android.widget.Editor"

    .line 531
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v1, "mInsertionControllerEnabled"

    .line 532
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 533
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v2, 0x0

    .line 534
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "mSelectionControllerEnabled"

    .line 537
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 538
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 539
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 541
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected createPresenter()Lcom/yftech/libmusic/presenter/MusicSearchPresenter;
    .locals 1

    .line 98
    new-instance v0, Lcom/yftech/libmusic/presenter/MusicSearchPresenter;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/presenter/MusicSearchPresenter;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method protected bridge synthetic createPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;
    .locals 0

    .line 62
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->createPresenter()Lcom/yftech/libmusic/presenter/MusicSearchPresenter;

    move-result-object p0

    return-object p0
.end method

.method public disableCopyAndPaste(Landroid/widget/EditText;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 480
    :cond_0
    :try_start_0
    new-instance v0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$7;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$7;-><init>(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v0, 0x0

    .line 486
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 487
    new-instance v0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$8;

    invoke-direct {v0, p0, p1}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$8;-><init>(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;Landroid/widget/EditText;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 498
    new-instance v0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$9;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$9;-><init>(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 520
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public displayHotMusicSearchResult(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 432
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->fl_hot:Lcom/media/common/ui/widget/FlowLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/media/common/ui/widget/FlowLayout;->setVisibility(I)V

    .line 433
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->fl_hot:Lcom/media/common/ui/widget/FlowLayout;

    invoke-virtual {v0}, Lcom/media/common/ui/widget/FlowLayout;->removeAllViews()V

    if-eqz p1, :cond_0

    .line 436
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 437
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/yftech/libmusic/R$layout;->tag_search:I

    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->fl_hot:Lcom/media/common/ui/widget/FlowLayout;

    invoke-virtual {v2, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 438
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->et_search:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/media/common/util/StringUtil;->getHighLightByKeyword(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    new-instance v0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$6;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$6;-><init>(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, -0x2

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/16 v3, 0x18

    .line 448
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/16 v3, 0xf

    .line 449
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 450
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->fl_hot:Lcom/media/common/ui/widget/FlowLayout;

    invoke-virtual {v3, v2, v0}, Lcom/media/common/ui/widget/FlowLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public displayMusicSearchResult(Lcom/yftech/car/media/data/entity/MediaFile;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            "Ljava/util/List<",
            "Lcom/yftech/libmusic/bean/MediaFileItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->searchResultFragment:Lcom/yftech/libmusic/ui/MusicSearchResultFragment;

    invoke-virtual {v0}, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->getSearchState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 422
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 426
    :cond_1
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->searchResultFragment:Lcom/yftech/libmusic/ui/MusicSearchResultFragment;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2, p1, p3}, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->setSearchState(ILjava/util/List;Lcom/yftech/car/media/data/entity/MediaFile;Ljava/lang/String;)V

    goto :goto_1

    .line 423
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->searchResultFragment:Lcom/yftech/libmusic/ui/MusicSearchResultFragment;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->setSearchState(I)V

    :goto_1
    return-void
.end method

.method public onBluetoothStatusChange(Lcom/yftech/libmusic/event/BluetoothStateEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p0, "onBluetoothStatusChange:receiveBroadCast"

    .line 209
    invoke-static {p0}, Lcom/media/common/util/DebugLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onCarlifeStatusChange(Lcom/yftech/libmusic/event/CarLifeStatusEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p0, "onCarlifeStatusChange:receiveBroadCast"

    .line 222
    invoke-static {p0}, Lcom/media/common/util/DebugLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 456
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libmusic/R$id;->iv_clear:I

    if-ne v0, v1, :cond_1

    .line 458
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->et_search:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 460
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->searchResultFragment:Lcom/yftech/libmusic/ui/MusicSearchResultFragment;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->searchResultFragment:Lcom/yftech/libmusic/ui/MusicSearchResultFragment;

    invoke-virtual {p1}, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 461
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->searchResultFragment:Lcom/yftech/libmusic/ui/MusicSearchResultFragment;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->setSearchState(I)V

    :cond_0
    const/4 p1, 0x0

    .line 463
    iput-boolean p1, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->isPlaySoundOfClicking:Z

    .line 464
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->et_search:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 465
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->et_search:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lcom/media/common/util/SoftHideKeyBoardUtil;->isShowKeyBoard(Landroid/content/Context;Landroid/view/View;Z)V

    goto :goto_0

    .line 467
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libmusic/R$id;->iv_back:I

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/yftech/libmusic/R$id;->tv_cancel:I

    if-ne p1, v0, :cond_3

    .line 468
    :cond_2
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->onBackPressed()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 103
    invoke-super {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    sget p1, Lcom/yftech/libmusic/R$layout;->activity_music_search_from_hard_disk:I

    invoke-virtual {p0, p1}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->setContentView(I)V

    .line 106
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "index"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->index:I

    .line 108
    invoke-direct {p0}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->initW()V

    .line 111
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 113
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->bluetoothPhoneCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->registerBluetoothPhoneCallback(Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;Landroid/os/Handler;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 144
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onDestroy()V

    .line 147
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 148
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->bluetoothPhoneCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->unregisterBluetoothPhoneCallback(Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;)V

    return-void
.end method

.method public onMusicSourceChanged(Lcom/yftech/libmusic/event/MusicSourceChangedEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "MUSIC_SOURCE_OF_USB1"

    .line 236
    iget-object v1, p1, Lcom/yftech/libmusic/event/MusicSourceChangedEvent;->music_source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->index:I

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "MUSIC_SOURCE_OF_USB2"

    iget-object p1, p1, Lcom/yftech/libmusic/event/MusicSourceChangedEvent;->music_source:Ljava/lang/String;

    .line 237
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->index:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    :cond_1
    return-void

    .line 242
    :cond_2
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->onBackPressed()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 131
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onPause()V

    const-string v0, "onPause"

    .line 133
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->searchResultFragment:Lcom/yftech/libmusic/ui/MusicSearchResultFragment;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->searchResultFragment:Lcom/yftech/libmusic/ui/MusicSearchResultFragment;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->setSearchState(I)V

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->et_search:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/media/common/util/SoftHideKeyBoardUtil;->isShowKeyBoard(Landroid/content/Context;Landroid/view/View;Z)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 118
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onResume()V

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume:hasFocus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->et_search:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->isResume:Z

    .line 123
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->et_search:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->et_search:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 126
    :cond_0
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onUSBStatusChange(Lcom/media/common/event/USBStateEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "onUSBStatusChange:receiveBroadCast"

    .line 182
    invoke-static {v0}, Lcom/media/common/util/DebugLog;->e(Ljava/lang/String;)V

    .line 185
    iget-boolean v0, p1, Lcom/media/common/event/USBStateEvent;->isUsbExists:Z

    if-nez v0, :cond_0

    .line 188
    iget v0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->index:I

    iget p1, p1, Lcom/media/common/event/USBStateEvent;->usbIndex:I

    if-ne v0, p1, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public switchContent(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 249
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 252
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    if-nez v1, :cond_0

    .line 253
    sget v1, Lcom/yftech/libmusic/R$id;->fl_content:I

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    if-eq v1, p1, :cond_2

    .line 258
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 260
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/yftech/libmusic/R$id;->fl_content:I

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 262
    :cond_1
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 265
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method
