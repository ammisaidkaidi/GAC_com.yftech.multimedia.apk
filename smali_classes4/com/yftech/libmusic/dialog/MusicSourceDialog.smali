.class public Lcom/yftech/libmusic/dialog/MusicSourceDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "MusicSourceDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/libmusic/dialog/MusicSourceDialog$OnMusicSourceSelectedListener;,
        Lcom/yftech/libmusic/dialog/MusicSourceDialog$MusicSourceType;
    }
.end annotation


# static fields
.field private static final ARG_PARAM1:Ljava/lang/String; = "music_source"


# instance fields
.field private final DISMISS_INTERVAL:I

.field private final RC_DISMISS:I

.field private adapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;",
            ">;"
        }
    .end annotation
.end field

.field private bluetoothMusicCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;

.field private callback:Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;

.field private carLifeDataChangedCallback:Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback;

.field private final carplayCallback:Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;

.field private delegateAdapter:Lcom/alibaba/android/vlayout/DelegateAdapter;

.field private dismissOutOfView:Z

.field private final mHandler:Landroid/os/Handler;

.field private musicSourceAdapter:Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;

.field private music_source:Ljava/lang/String;

.field private onMusicSourceSelectedListener:Lcom/yftech/libmusic/dialog/MusicSourceDialog$OnMusicSourceSelectedListener;

.field private usbTipsDialog:Lcom/media/common/ui/widget/TipsDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 97
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->dismissOutOfView:Z

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->usbTipsDialog:Lcom/media/common/ui/widget/TipsDialog;

    const/16 v0, 0xa

    .line 82
    iput v0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->RC_DISMISS:I

    const/16 v0, 0x3a98

    .line 84
    iput v0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->DISMISS_INTERVAL:I

    .line 85
    new-instance v0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yftech/libmusic/dialog/MusicSourceDialog$1;-><init>(Lcom/yftech/libmusic/dialog/MusicSourceDialog;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->mHandler:Landroid/os/Handler;

    .line 165
    new-instance v0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$2;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/dialog/MusicSourceDialog$2;-><init>(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)V

    iput-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->callback:Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;

    .line 220
    new-instance v0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$3;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/dialog/MusicSourceDialog$3;-><init>(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)V

    iput-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->bluetoothMusicCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;

    .line 236
    new-instance v0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$4;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/dialog/MusicSourceDialog$4;-><init>(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)V

    iput-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->carLifeDataChangedCallback:Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback;

    .line 277
    new-instance v0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$5;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/dialog/MusicSourceDialog$5;-><init>(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)V

    iput-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->carplayCallback:Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;

    return-void
.end method

.method static synthetic access$002(Lcom/yftech/libmusic/dialog/MusicSourceDialog;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->dismissOutOfView:Z

    return p1
.end method

.method static synthetic access$100(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->musicSourceAdapter:Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)Lcom/media/common/ui/widget/TipsDialog;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->usbTipsDialog:Lcom/media/common/ui/widget/TipsDialog;

    return-object p0
.end method

.method static synthetic access$202(Lcom/yftech/libmusic/dialog/MusicSourceDialog;Lcom/media/common/ui/widget/TipsDialog;)Lcom/media/common/ui/widget/TipsDialog;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->usbTipsDialog:Lcom/media/common/ui/widget/TipsDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)Landroid/os/Handler;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)Lcom/yftech/libmusic/dialog/MusicSourceDialog$OnMusicSourceSelectedListener;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->onMusicSourceSelectedListener:Lcom/yftech/libmusic/dialog/MusicSourceDialog$OnMusicSourceSelectedListener;

    return-object p0
.end method

.method private initData()V
    .locals 2

    .line 406
    new-instance v0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;

    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->musicSourceAdapter:Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;

    .line 407
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->music_source:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->musicSourceAdapter:Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;

    iget-object v1, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->music_source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->findPositionBySource(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 411
    iget-object v1, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->musicSourceAdapter:Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;

    invoke-virtual {v1, v0}, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->setSelection(I)V

    .line 416
    :cond_0
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->isConnected(I)Z

    move-result v0

    .line 417
    iget-object v1, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->musicSourceAdapter:Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;

    invoke-virtual {v1, v0}, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->setBlueToothEnable(Z)V

    .line 419
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->musicSourceAdapter:Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;

    new-instance v1, Lcom/yftech/libmusic/dialog/MusicSourceDialog$7;

    invoke-direct {v1, p0}, Lcom/yftech/libmusic/dialog/MusicSourceDialog$7;-><init>(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)V

    invoke-virtual {v0, v1}, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->setOnItemClickListener(Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter$OnItemClickListener;)V

    .line 497
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->adapters:Ljava/util/List;

    iget-object v1, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->musicSourceAdapter:Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->delegateAdapter:Lcom/alibaba/android/vlayout/DelegateAdapter;

    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->adapters:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/vlayout/DelegateAdapter;->setAdapters(Ljava/util/List;)V

    return-void
.end method

.method private initW(Landroid/view/View;)V
    .locals 4

    .line 375
    sget v0, Lcom/yftech/libmusic/R$id;->iv_close:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 376
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    sget v0, Lcom/yftech/libmusic/R$id;->rv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 379
    new-instance v0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$6;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/dialog/MusicSourceDialog$6;-><init>(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 389
    new-instance v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;

    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;-><init>(Landroid/content/Context;)V

    .line 390
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 392
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    .line 393
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    const/4 v2, 0x0

    const/16 v3, 0x14

    .line 395
    invoke-virtual {v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 397
    new-instance v1, Lcom/alibaba/android/vlayout/DelegateAdapter;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/alibaba/android/vlayout/DelegateAdapter;-><init>(Lcom/alibaba/android/vlayout/VirtualLayoutManager;Z)V

    iput-object v1, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->delegateAdapter:Lcom/alibaba/android/vlayout/DelegateAdapter;

    .line 398
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->delegateAdapter:Lcom/alibaba/android/vlayout/DelegateAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 400
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->adapters:Ljava/util/List;

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/yftech/libmusic/dialog/MusicSourceDialog;
    .locals 3

    .line 102
    new-instance v0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-direct {v0}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;-><init>()V

    .line 103
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "music_source"

    .line 104
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0, v1}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public dismissCustom()V
    .locals 1

    const/4 v0, 0x0

    .line 540
    iput-boolean v0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->dismissOutOfView:Z

    .line 542
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->dismissAllowingStateLoss()V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 150
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    const/4 p1, 0x1

    .line 152
    iput-boolean p1, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->dismissOutOfView:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 531
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/yftech/libmusic/R$id;->iv_close:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 532
    iput-boolean p1, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->dismissOutOfView:Z

    .line 533
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 111
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "music_source"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->music_source:Ljava/lang/String;

    .line 117
    :cond_0
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->callback:Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;

    invoke-virtual {p1, v0}, Lcom/yftech/car/media/data/CarMediaDataManager;->registerCarDataControlCallback(Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;)V

    .line 118
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->bluetoothMusicCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->registerBluetoothMusicCallback(Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;Landroid/os/Handler;)V

    .line 119
    invoke-static {}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getInstance()Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->carLifeDataChangedCallback:Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback;

    invoke-virtual {p1, v0}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->registerMusicControlCallback(Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback;)V

    .line 120
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getInstance(Landroid/content/Context;)Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->carplayCallback:Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;

    invoke-virtual {p1, v0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->registerCarPlayMusicListener(Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;)V

    .line 122
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 367
    sget p3, Lcom/yftech/libmusic/R$layout;->dialog_music_source:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 368
    invoke-direct {p0, p1}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->initW(Landroid/view/View;)V

    .line 370
    invoke-direct {p0}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->initData()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 136
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroy()V

    .line 138
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 141
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->callback:Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/data/CarMediaDataManager;->unregisterCarDataControlCallback(Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;)V

    .line 142
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->bluetoothMusicCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->unregisterBluetoothMusicCallback(Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;)V

    .line 143
    invoke-static {}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getInstance()Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->carLifeDataChangedCallback:Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->unregisterMusicControlCallback(Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback;)V

    .line 144
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getInstance(Landroid/content/Context;)Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->carplayCallback:Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;

    invoke-virtual {v0, v1}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->unregisterCarPlayMusicListener(Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;)V

    .line 145
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 157
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    const/4 p1, 0x0

    .line 162
    iput-boolean p1, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->dismissOutOfView:Z

    return-void
.end method

.method public onMusicSourceChanged(Lcom/yftech/libmusic/event/MusicSourceChangedEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 568
    iget-object p1, p1, Lcom/yftech/libmusic/event/MusicSourceChangedEvent;->music_source:Ljava/lang/String;

    iput-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->music_source:Ljava/lang/String;

    .line 569
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->musicSourceAdapter:Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->music_source:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 570
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->musicSourceAdapter:Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;

    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->music_source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->findPositionBySource(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 573
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->musicSourceAdapter:Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;

    invoke-virtual {p0, p1}, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 127
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onResume()V

    .line 129
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 131
    :cond_0
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3a98

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 337
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 338
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 340
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_1

    const v0, 0x106000d

    .line 342
    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 343
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    .line 344
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 345
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 346
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ar"

    .line 348
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x800035

    .line 349
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 350
    sget v1, Lcom/yftech/libmusic/R$style;->DialogLeftAnimation:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_0

    :cond_0
    const v1, 0x800033

    .line 352
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 353
    sget v1, Lcom/yftech/libmusic/R$style;->DialogRightAnimation:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :goto_0
    const/16 v1, 0x244

    .line 355
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v1, 0x2b8

    .line 356
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x22

    .line 357
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v1, 0xb4

    .line 358
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 359
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public setOnMusicSourceSelectedListener(Lcom/yftech/libmusic/dialog/MusicSourceDialog$OnMusicSourceSelectedListener;)V
    .locals 0

    .line 563
    iput-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->onMusicSourceSelectedListener:Lcom/yftech/libmusic/dialog/MusicSourceDialog$OnMusicSourceSelectedListener;

    return-void
.end method
