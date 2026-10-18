.class public Lcom/yftech/libradio/RadioMainFragment;
.super Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;
.source "RadioMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/yftech/libradio/view/IRadioMainActivityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/libradio/RadioMainFragment$CarplayShowUIReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment<",
        "Lcom/yftech/libradio/presenter/RadioMainPresenter;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/yftech/libradio/view/IRadioMainActivityView;"
    }
.end annotation


# static fields
.field private static final ACTION_CARPLAY_EVENT_SHOW_UI:Ljava/lang/String; = "com.autochips.carplay.event.show_ui"

.field private static final KEY_CARPLAY_EVENT_SHOW_UI:Ljava/lang/String; = "ui_show"

.field private static final KEY_RADIO_AUTO_SEARCH:Ljava/lang/String; = "radio_auto_search"

.field private static final KEY_SIGNAL_CONGFIG:Ljava/lang/String; = "radio_min_signal_strength"

.field private static final MSG_UPDATE_SCALE_UI_AM:I = 0x2

.field private static final MSG_UPDATE_SCALE_UI_FM:I = 0x1

.field private static final RADIO_FAVOR_AM_MAX:I = 0x14

.field private static final RADIO_FAVOR_FM_MAX:I = 0x1e


# instance fields
.field private final RC_CARPLAY:I

.field private final RC_HICAR:I

.field private amPosition:I

.field private bluetoothPhoneCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;

.field private fmPosition:I

.field private isAVMDisplaying:Z

.field private isCarPlayCalled:Z

.field private isCarplayDisconnected:Z

.field private isFragmentSwitch:Z

.field private itemOffset:I

.field private final mAmGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mCarPhoneLinkCallback:Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;

.field private final mCarRadioControlCallback:Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;

.field private mCarplayShowUIReceiver:Lcom/yftech/libradio/RadioMainFragment$CarplayShowUIReceiver;

.field private mConnectedLinkStatus:Ljava/lang/String;

.field private final mFmGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mFmKeepTwoDecima:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIvLike:Landroid/widget/ImageView;

.field private mIvPlay:Landroid/widget/ImageView;

.field private mLast:Landroid/widget/ImageView;

.field private final mMainHandler:Landroid/os/Handler;

.field private mNext:Landroid/widget/ImageView;

.field private mPathLayoutManagerAm:Lcom/wuyr/pathlayoutmanager/PathLayoutManager;

.field private mPathLayoutManagerFm:Lcom/wuyr/pathlayoutmanager/PathLayoutManager;

.field private mRadioFavorDialog:Lcom/yftech/libradio/dialog/RadioFavorDialog;

.field private mRadioFreqAdapterAm:Lcom/yftech/libradio/ui/adapter/RadioFreqAdapter;

.field private mRadioFreqAdapterFm:Lcom/yftech/libradio/ui/adapter/RadioFreqAdapter;

.field private mRadioSearchChannelDialog:Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;

.field private mRdsSettings:Landroid/widget/ImageView;

.field private mRdsViewControler:Lcom/yftech/libradio/rds/RdsViewControler;

.field private mRvAm:Landroidx/recyclerview/widget/RecyclerView;

.field private mRvFm:Landroidx/recyclerview/widget/RecyclerView;

.field private mTvChannel:Landroid/widget/TextView;

.field private mTvChannelTag:Landroid/widget/TextView;

.field private minAmSinalConfig:I

.field private minFmSinalConfig:I

.field private rdsReceiver:Landroid/content/BroadcastReceiver;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private rootView:Landroid/view/View;

.field private startX:F

.field private v_index:Landroid/view/View;

.field private v_index_left_1:Landroid/view/View;

.field private v_index_left_2:Landroid/view/View;

.field private v_index_right_1:Landroid/view/View;

.field private v_index_right_2:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;-><init>()V

    .line 89
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mMainHandler:Landroid/os/Handler;

    const/16 v0, 0x23

    .line 100
    iput v0, p0, Lcom/yftech/libradio/RadioMainFragment;->itemOffset:I

    const/4 v0, 0x0

    .line 103
    iput v0, p0, Lcom/yftech/libradio/RadioMainFragment;->fmPosition:I

    .line 104
    iput v0, p0, Lcom/yftech/libradio/RadioMainFragment;->amPosition:I

    .line 106
    iput-boolean v0, p0, Lcom/yftech/libradio/RadioMainFragment;->isAVMDisplaying:Z

    const/16 v1, 0xa

    .line 108
    iput v1, p0, Lcom/yftech/libradio/RadioMainFragment;->RC_CARPLAY:I

    const/16 v1, 0xb

    .line 109
    iput v1, p0, Lcom/yftech/libradio/RadioMainFragment;->RC_HICAR:I

    .line 111
    iput-boolean v0, p0, Lcom/yftech/libradio/RadioMainFragment;->isCarPlayCalled:Z

    .line 113
    iput-boolean v0, p0, Lcom/yftech/libradio/RadioMainFragment;->isCarplayDisconnected:Z

    const-string v1, ""

    .line 115
    iput-object v1, p0, Lcom/yftech/libradio/RadioMainFragment;->mConnectedLinkStatus:Ljava/lang/String;

    .line 120
    iput v0, p0, Lcom/yftech/libradio/RadioMainFragment;->minFmSinalConfig:I

    const/16 v0, 0xc

    .line 121
    iput v0, p0, Lcom/yftech/libradio/RadioMainFragment;->minAmSinalConfig:I

    .line 124
    new-instance v0, Lcom/yftech/libradio/RadioMainFragment$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yftech/libradio/RadioMainFragment$1;-><init>(Lcom/yftech/libradio/RadioMainFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mHandler:Landroid/os/Handler;

    .line 166
    new-instance v0, Lcom/yftech/libradio/RadioMainFragment$2;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/RadioMainFragment$2;-><init>(Lcom/yftech/libradio/RadioMainFragment;)V

    iput-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mFmGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 174
    new-instance v0, Lcom/yftech/libradio/RadioMainFragment$3;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/RadioMainFragment$3;-><init>(Lcom/yftech/libradio/RadioMainFragment;)V

    iput-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mAmGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 182
    new-instance v0, Lcom/yftech/libradio/RadioMainFragment$4;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/RadioMainFragment$4;-><init>(Lcom/yftech/libradio/RadioMainFragment;)V

    iput-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mCarRadioControlCallback:Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;

    const/4 v0, 0x0

    .line 413
    iput v0, p0, Lcom/yftech/libradio/RadioMainFragment;->startX:F

    .line 1140
    new-instance v0, Lcom/yftech/libradio/RadioMainFragment$11;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/RadioMainFragment$11;-><init>(Lcom/yftech/libradio/RadioMainFragment;)V

    iput-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 1159
    new-instance v0, Lcom/yftech/libradio/RadioMainFragment$12;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/RadioMainFragment$12;-><init>(Lcom/yftech/libradio/RadioMainFragment;)V

    iput-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->rdsReceiver:Landroid/content/BroadcastReceiver;

    .line 1183
    new-instance v0, Lcom/yftech/libradio/RadioMainFragment$13;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/RadioMainFragment$13;-><init>(Lcom/yftech/libradio/RadioMainFragment;)V

    iput-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mCarPhoneLinkCallback:Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;

    .line 1206
    new-instance v0, Lcom/yftech/libradio/RadioMainFragment$14;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/RadioMainFragment$14;-><init>(Lcom/yftech/libradio/RadioMainFragment;)V

    iput-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->bluetoothPhoneCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/libradio/RadioMainFragment;IIZ)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/yftech/libradio/RadioMainFragment;->updateFreqInList(IIZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/libradio/RadioMainFragment;)Lcom/yftech/libradio/rds/RdsViewControler;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainFragment;->mRdsViewControler:Lcom/yftech/libradio/rds/RdsViewControler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/yftech/libradio/RadioMainFragment;)F
    .locals 0

    .line 65
    iget p0, p0, Lcom/yftech/libradio/RadioMainFragment;->startX:F

    return p0
.end method

.method static synthetic access$1002(Lcom/yftech/libradio/RadioMainFragment;F)F
    .locals 0

    .line 65
    iput p1, p0, Lcom/yftech/libradio/RadioMainFragment;->startX:F

    return p1
.end method

.method static synthetic access$1100(Lcom/yftech/libradio/RadioMainFragment;Lcom/yftech/car/media/radio/entity/DataOfRadio;ZZ)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/yftech/libradio/RadioMainFragment;->updateFreqView(Lcom/yftech/car/media/radio/entity/DataOfRadio;ZZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/yftech/libradio/RadioMainFragment;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/yftech/libradio/RadioMainFragment;->isFragmentSwitch:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/yftech/libradio/RadioMainFragment;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/yftech/libradio/RadioMainFragment;->isFragmentSwitch:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/yftech/libradio/RadioMainFragment;II)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/yftech/libradio/RadioMainFragment;->setButtonsStatus(II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/yftech/libradio/RadioMainFragment;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/yftech/libradio/RadioMainFragment;->updateLikeEnable()V

    return-void
.end method

.method static synthetic access$1500(Lcom/yftech/libradio/RadioMainFragment;Z)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/yftech/libradio/RadioMainFragment;->setRadioPlaying(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/yftech/libradio/RadioMainFragment;Z)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/yftech/libradio/RadioMainFragment;->updatePlayView(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/yftech/libradio/RadioMainFragment;Z)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/yftech/libradio/RadioMainFragment;->updateFavorView(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/yftech/libradio/RadioMainFragment;)I
    .locals 0

    .line 65
    iget p0, p0, Lcom/yftech/libradio/RadioMainFragment;->itemOffset:I

    return p0
.end method

.method static synthetic access$200(Lcom/yftech/libradio/RadioMainFragment;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/yftech/libradio/RadioMainFragment;->isAVMDisplaying:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/yftech/libradio/RadioMainFragment;)I
    .locals 0

    .line 65
    iget p0, p0, Lcom/yftech/libradio/RadioMainFragment;->fmPosition:I

    return p0
.end method

.method static synthetic access$2002(Lcom/yftech/libradio/RadioMainFragment;I)I
    .locals 0

    .line 65
    iput p1, p0, Lcom/yftech/libradio/RadioMainFragment;->fmPosition:I

    return p1
.end method

.method static synthetic access$202(Lcom/yftech/libradio/RadioMainFragment;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/yftech/libradio/RadioMainFragment;->isAVMDisplaying:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/yftech/libradio/RadioMainFragment;)Lcom/yftech/libradio/ui/adapter/RadioFreqAdapter;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainFragment;->mRadioFreqAdapterFm:Lcom/yftech/libradio/ui/adapter/RadioFreqAdapter;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/yftech/libradio/RadioMainFragment;II)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/yftech/libradio/RadioMainFragment;->updateFreq(II)V

    return-void
.end method

.method static synthetic access$2300(Lcom/yftech/libradio/RadioMainFragment;II)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/yftech/libradio/RadioMainFragment;->setFreq(II)V

    return-void
.end method

.method static synthetic access$2400(Lcom/yftech/libradio/RadioMainFragment;)I
    .locals 0

    .line 65
    iget p0, p0, Lcom/yftech/libradio/RadioMainFragment;->amPosition:I

    return p0
.end method

.method static synthetic access$2402(Lcom/yftech/libradio/RadioMainFragment;I)I
    .locals 0

    .line 65
    iput p1, p0, Lcom/yftech/libradio/RadioMainFragment;->amPosition:I

    return p1
.end method

.method static synthetic access$2500(Lcom/yftech/libradio/RadioMainFragment;)Lcom/yftech/libradio/ui/adapter/RadioFreqAdapter;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainFragment;->mRadioFreqAdapterAm:Lcom/yftech/libradio/ui/adapter/RadioFreqAdapter;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/yftech/libradio/RadioMainFragment;)Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainFragment;->mConnectedLinkStatus:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2602(Lcom/yftech/libradio/RadioMainFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/yftech/libradio/RadioMainFragment;->mConnectedLinkStatus:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/yftech/libradio/RadioMainFragment;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/yftech/libradio/RadioMainFragment;->isCarPlayCalled:Z

    return p0
.end method

.method static synthetic access$302(Lcom/yftech/libradio/RadioMainFragment;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/yftech/libradio/RadioMainFragment;->isCarPlayCalled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/yftech/libradio/RadioMainFragment;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/yftech/libradio/RadioMainFragment;->isCarplayDisconnected:Z

    return p0
.end method

.method static synthetic access$402(Lcom/yftech/libradio/RadioMainFragment;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/yftech/libradio/RadioMainFragment;->isCarplayDisconnected:Z

    return p1
.end method

.method static synthetic access$500(Lcom/yftech/libradio/RadioMainFragment;)Landroid/os/Handler;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/yftech/libradio/RadioMainFragment;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainFragment;->mFmGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/yftech/libradio/RadioMainFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainFragment;->mRvFm:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/yftech/libradio/RadioMainFragment;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainFragment;->mAmGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/yftech/libradio/RadioMainFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainFragment;->mRvAm:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private dismissAllDialog()V
    .locals 2

    .line 1169
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mRadioSearchChannelDialog:Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;

    if-eqz v0, :cond_0

    .line 1170
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mRadioSearchChannelDialog:Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;

    invoke-virtual {v0}, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1171
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1172
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1175
    :cond_0
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mRadioFavorDialog:Lcom/yftech/libradio/dialog/RadioFavorDialog;

    if-eqz v0, :cond_1

    .line 1176
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainFragment;->mRadioFavorDialog:Lcom/yftech/libradio/dialog/RadioFavorDialog;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RadioFavorDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1177
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1178
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method

.method private getPathLayoutManager()Lcom/wuyr/pathlayoutmanager/PathLayoutManager;
    .locals 7

    .line 690
    new-instance v0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;

    const/4 v1, 0x0

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;-><init>(Landroid/graphics/Path;I)V

    const/4 v1, 0x2

    .line 691
    invoke-virtual {v0, v1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->setScrollMode(I)V

    const/4 v1, 0x0

    .line 692
    invoke-virtual {v0, v1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->setFlingEnable(Z)V

    const/4 v2, 0x1

    .line 693
    invoke-virtual {v0, v2}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->setAutoSelect(Z)V

    .line 694
    invoke-virtual {v0, v2}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->setItemDirectionFixed(Z)V

    .line 695
    invoke-virtual {v0, v1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->setOrientation(I)V

    const/4 v2, 0x6

    .line 696
    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-virtual {v0, v2}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->setItemScaleRatio([F)V

    .line 700
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 702
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v1, v1

    sget v4, Lcom/yftech/libmvpmodule/utils/Constants;->displayWidth:I

    add-int/lit16 v4, v4, -0x129

    int-to-float v4, v4

    const/16 v5, 0xd2

    int-to-float v5, v5

    const/high16 v6, 0x43bd0000    # 378.0f

    invoke-direct {v3, v6, v1, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v1, 0x43520000    # 210.0f

    const/high16 v4, -0x3c900000    # -240.0f

    .line 703
    invoke-virtual {v2, v3, v1, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 704
    iget p0, p0, Lcom/yftech/libradio/RadioMainFragment;->itemOffset:I

    invoke-virtual {v0, p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->setItemOffset(I)V

    .line 705
    invoke-virtual {v0, v2}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->updatePath(Landroid/graphics/Path;)V

    return-object v0

    :array_0
    .array-data 4
        0x3f19999a    # 0.6f
        0x0
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static getRadioAutoSearch()Z
    .locals 4

    .line 1086
    new-instance v0, Lcom/yftech/car/data/CarData;

    new-instance v1, Lcom/yftech/car/data/CarData$CarDataEntry;

    const-string v2, "radio_auto_search"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/yftech/car/data/CarData$CarDataEntry;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v0, v1}, Lcom/yftech/car/data/CarData;-><init>(Lcom/yftech/car/data/CarData$CarDataEntry;)V

    invoke-static {v0}, Lcom/yftech/car/data/CarDataManager;->get(Lcom/yftech/car/data/CarData;)Lcom/yftech/car/data/CarData;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "radio_auto_search"

    .line 1087
    invoke-virtual {v0, v1}, Lcom/yftech/car/data/CarData;->getDataEntry(Ljava/lang/String;)Lcom/yftech/car/data/CarData$CarDataEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "radio_auto_search"

    .line 1088
    invoke-virtual {v0, v1}, Lcom/yftech/car/data/CarData;->getDataEntry(Ljava/lang/String;)Lcom/yftech/car/data/CarData$CarDataEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/data/CarData$CarDataEntry;->getValueBoolean()Z

    move-result v0

    .line 1089
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRadioAutoSearch() value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return v0

    :cond_0
    const-string v0, "getRadioAutoSearch() no data"

    .line 1092
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private getSharedRadioData(Ljava/lang/String;I)I
    .locals 2

    .line 1240
    invoke-virtual {p0}, Lcom/yftech/libradio/RadioMainFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "yf_radio_app_data"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getValidRadioValue(ILjava/lang/String;I)I
    .locals 3

    .line 1227
    invoke-direct {p0, p2, p3}, Lcom/yftech/libradio/RadioMainFragment;->getSharedRadioData(Ljava/lang/String;I)I

    move-result v0

    .line 1228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValidRadioValue() curValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " shareValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    if-gez p1, :cond_0

    .line 1230
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getValidRadioValue() curValue error, use shareValue. shareValue:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    return v0

    :cond_0
    if-eq p1, v0, :cond_1

    .line 1234
    invoke-direct {p0, p2, p1}, Lcom/yftech/libradio/RadioMainFragment;->saveSharedRadioData(Ljava/lang/String;I)V

    :cond_1
    return p1
.end method

.method private initViewData()V
    .locals 3

    .line 738
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/CarRadioManager;->getFreqEx()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object v0

    .line 739
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " freq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 740
    invoke-direct {p0, v0, v1, v2}, Lcom/yftech/libradio/RadioMainFragment;->updateFreqView(Lcom/yftech/car/media/radio/entity/DataOfRadio;ZZ)V

    .line 741
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/media/radio/CarRadioManager;->isPlaying()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/yftech/libradio/RadioMainFragment;->updatePlayView(Z)V

    .line 742
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yftech/car/media/radio/CarRadioManager;->isFreqFavored(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/yftech/libradio/RadioMainFragment;->updateFavorView(Z)V

    .line 744
    invoke-direct {p0}, Lcom/yftech/libradio/RadioMainFragment;->showRadioSearchingDialog()V

    .line 745
    invoke-direct {p0}, Lcom/yftech/libradio/RadioMainFragment;->updateLikeEnable()V

    return-void
.end method

.method private saveSharedRadioData(Ljava/lang/String;I)V
    .locals 2

    .line 1244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveSharedRadioData() key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    .line 1245
    invoke-virtual {p0}, Lcom/yftech/libradio/RadioMainFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "yf_radio_app_data"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setAmScaleView()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 536
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/yftech/libradio/R$id;->rv_am:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mRvAm:Landroidx/recyclerview/widget/RecyclerView;

    .line 537
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mRvAm:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/yftech/libradio/RadioMainFragment$8;

    invoke-direct {v1, p0}, Lcom/yftech/libradio/RadioMainFragment$8;-><init>(Lcom/yftech/libradio/RadioMainFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 578
    invoke-direct {p0}, Lcom/yftech/libradio/RadioMainFragment;->getPathLayoutManager()Lcom/wuyr/pathlayoutmanager/PathLayoutManager;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mPathLayoutManagerAm:Lcom/wuyr/pathlayoutmanager/PathLayoutManager;

    .line 579
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mRvAm:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/yftech/libradio/RadioMainFragment;->mPathLayoutManagerAm:Lcom/wuyr/pathlayoutmanager/PathLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 580
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mPathLayoutManagerAm:Lcom/wuyr/pathlayoutmanager/PathLayoutManager;

    new-instance v1, Lcom/yftech/libradio/RadioMainFragment$9;

    invoke-direct {v1, p0}, Lcom/yftech/libradio/RadioMainFragment$9;-><init>(Lcom/yftech/libradio/RadioMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->setOnItemSelectedListener(Lcom/wuyr/pathlayoutmanager/PathLayoutManager$OnItemSelectedListener;)V

    .line 622
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/radio/CarRadioManager;->getMax(I)I

    move-result v0

    const-string v2, "am_max"

    const/16 v3, 0x65d

    invoke-direct {p0, v0, v2, v3}, Lcom/yftech/libradio/RadioMainFragment;->getValidRadioValue(ILjava/lang/String;I)I

    move-result v0

    .line 623
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/yftech/car/media/radio/CarRadioManager;->getMin(I)I

    move-result v2

    const-string v3, "am_min"

    const/16 v4, 0x213

    invoke-direct {p0, v2, v3, v4}, Lcom/yftech/libradio/RadioMainFragment;->getValidRadioValue(ILjava/lang/String;I)I

    move-result v2

    .line 624
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/yftech/car/media/radio/CarRadioManager;->getManualStep(I)I

    move-result v3

    const-string v4, "am_step"

    const/16 v5, 0x9

    invoke-direct {p0, v3, v4, v5}, Lcom/yftech/libradio/RadioMainFragment;->getValidRadioValue(ILjava/lang/String;I)I

    move-result v3

    .line 625
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAmScaleView() maxFreqAm:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " minFreqAm:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " stepAm:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 626
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-gt v2, v0, :cond_0

    .line 628
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v3

    goto :goto_0

    .line 630
    :cond_0
    new-instance v0, Lcom/yftech/libradio/ui/adapter/RadioFreqAdapter;

    invoke-virtual {p0}, Lcom/yftech/libradio/RadioMainFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v4, v1}, Lcom/yftech/libradio/ui/adapter/RadioFreqAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mRadioFreqAdapterAm:Lcom/yftech/libradio/ui/adapter/RadioFreqAdapter;

    .line 631
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mRvAm:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/yftech/libradio/RadioMainFragment;->mRadioFreqAdapterAm:Lcom/yftech/libradio/ui/adapter/RadioFreqAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 632
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mRvAm:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/RadioMainFragment;->mAmGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 634
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mRadioFreqAdapterAm:Lcom/yftech/libradio/ui/adapter/RadioFreqAdapter;

    new-instance v1, Lcom/yftech/libradio/RadioMainFragment$10;

    invoke-direct {v1, p0}, Lcom/yftech/libradio/RadioMainFragment$10;-><init>(Lcom/yftech/libradio/RadioMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/yftech/libradio/ui/adapter/RadioFreqAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    return-void
.end method

.method private setBand(I)V
    .locals 1

    .line 1107
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setBand() band:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    .line 1108
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/car/media/radio/CarRadioManager;->setBand(I)I

    return-void
.end method

.method private setButtonsStatus(II)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_4

    .line 936
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment;->mIvLike:Landroid/widget/ImageView;

    iget v2, p0, Lcom/yftech/libradio/RadioMainFragment;->minFmSinalConfig:I

    if-gt p2, v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setHovered(Z)V

    .line 937
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment;->mIvPlay:Landroid/widget/ImageView;

    iget v2, p0, Lcom/yftech/libradio/RadioMainFragment;->minFmSinalConfig:I

    if-gt p2, v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setHovered(Z)V

    .line 938
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment;->mLast:Landroid/widget/ImageView;

    iget v2, p0, Lcom/yftech/libradio/RadioMainFragment;->minFmSinalConfig:I

    if-gt p2, v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setHovered(Z)V

    .line 939
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment;->mNext:Landroid/widget/ImageView;

    iget p0, p0, Lcom/yftech/libradio/RadioMainFragment;->minFmSinalConfig:I

    if-gt p2, p0, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setHovered(Z)V

    goto :goto_8

    :cond_4
    const/4 v2, 0x2

    if-ne p1, v2, :cond_9

    .line 941
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment;->mIvLike:Landroid/widget/ImageView;

    iget v2, p0, Lcom/yftech/libradio/RadioMainFragment;->minAmSinalConfig:I

    if-gt p2, v2, :cond_5

    move v2, v0

    goto :goto_4

    :cond_5
    move v2, v1

    :goto_4
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setHovered(Z)V

    .line 942
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment;->mIvPlay:Landroid/widget/ImageView;

    iget v2, p0, Lcom/yftech/libradio/RadioMainFragment;->minAmSinalConfig:I

    if-gt p2, v2, :cond_6

    move v2, v0

    goto :goto_5

    :cond_6
    move v2, v1

    :goto_5
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setHovered(Z)V

    .line 943
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment;->mLast:Landroid/widget/ImageView;

    iget v2, p0, Lcom/yftech/libradio/RadioMainFragment;->minAmSinalConfig:I

    if-gt p2, v2, :cond_7

    move v2, v0

    goto :goto_6

    :cond_7
    move v2, v1

    :goto_6
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setHovered(Z)V

    .line 944
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment;->mNext:Landroid/widget/ImageView;

    iget p0, p0, Lcom/yftech/libradio/RadioMainFragment;->minAmSinalConfig:I

    if-gt p2, p0, :cond_8

    goto :goto_7

    :cond_8
    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setHovered(Z)V

    goto :goto_8

    .line 946
    :cond_9
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment;->mIvLike:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setHovered(Z)V

    .line 947
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment;->mIvPlay:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setHovered(Z)V

    .line 948
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment;->mLast:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setHovered(Z)V

    .line 949
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainFragment;->mNext:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setHovered(Z)V

    :goto_8
    return-void
.end method

.method private setFmScaleView()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 418
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/yftech/libradio/R$id;->rv_fm:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mRvFm:Landroidx/recyclerview/widget/RecyclerView;

    .line 419
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mRvFm:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/yftech/libradio/RadioMainFragment$5;

    invoke-direct {v1, p0}, Lcom/yftech/libradio/RadioMainFragment$5;-><init>(Lcom/yftech/libradio/RadioMainFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 458
    invoke-direct {p0}, Lcom/yftech/libradio/RadioMainFragment;->getPathLayoutManager()Lcom/wuyr/pathlayoutmanager/PathLayoutManager;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mPathLayoutManagerFm:Lcom/wuyr/pathlayoutmanager/PathLayoutManager;

    .line 459
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mRvFm:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/yftech/libradio/RadioMainFragment;->mPathLayoutManagerFm:Lcom/wuyr/pathlayoutmanager/PathLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 460
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mPathLayoutManagerFm:Lcom/wuyr/pathlayoutmanager/PathLayoutManager;

    new-instance v1, Lcom/yftech/libradio/RadioMainFragment$6;

    invoke-direct {v1, p0}, Lcom/yftech/libradio/RadioMainFragment$6;-><init>(Lcom/yftech/libradio/RadioMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->setOnItemSelectedListener(Lcom/wuyr/pathlayoutmanager/PathLayoutManager$OnItemSelectedListener;)V

    .line 502
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/radio/CarRadioManager;->getMax(I)I

    move-result v0

    const-string v2, "fm_max"

    const v3, 0x1a5e0

    invoke-direct {p0, v0, v2, v3}, Lcom/yftech/libradio/RadioMainFragment;->getValidRadioValue(ILjava/lang/String;I)I

    move-result v0

    .line 503
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/yftech/car/media/radio/CarRadioManager;->getMin(I)I

    move-result v2

    const-string v3, "fm_min"

    const v4, 0x155cc

    invoke-direct {p0, v2, v3, v4}, Lcom/yftech/libradio/RadioMainFragment;->getValidRadioValue(ILjava/lang/String;I)I

    move-result v2

    .line 504
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/yftech/car/media/radio/CarRadioManager;->getManualStep(I)I

    move-result v3

    const-string v4, "fm_step"

    const/16 v5, 0x64

    invoke-direct {p0, v3, v4, v5}, Lcom/yftech/libradio/RadioMainFragment;->getValidRadioValue(ILjava/lang/String;I)I

    move-result v3

    .line 505
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setFmScaleView() maxFreqFm:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " minFreqFm:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " stepFm:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 506
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-gt v2, v0, :cond_0

    .line 508
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v3

    goto :goto_0

    .line 511
    :cond_0
    new-instance v0, Lcom/yftech/libradio/ui/adapter/RadioFreqAdapter;

    invoke-virtual {p0}, Lcom/yftech/libradio/RadioMainFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v4, v1}, Lcom/yftech/libradio/ui/adapter/RadioFreqAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mRadioFreqAdapterFm:Lcom/yftech/libradio/ui/adapter/RadioFreqAdapter;

    .line 512
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mRvFm:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/yftech/libradio/RadioMainFragment;->mRadioFreqAdapterFm:Lcom/yftech/libradio/ui/adapter/RadioFreqAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 513
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mRvFm:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/RadioMainFragment;->mFmGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 515
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mRadioFreqAdapterFm:Lcom/yftech/libradio/ui/adapter/RadioFreqAdapter;

    new-instance v1, Lcom/yftech/libradio/RadioMainFragment$7;

    invoke-direct {v1, p0}, Lcom/yftech/libradio/RadioMainFragment$7;-><init>(Lcom/yftech/libradio/RadioMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/yftech/libradio/ui/adapter/RadioFreqAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    return-void
.end method

.method private setFreq(II)V
    .locals 1

    .line 1102
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setFreq() freq:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " index:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    .line 1103
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/media/radio/CarRadioManager;->setFreq(II)I

    return-void
.end method

.method public static setRadioAutoSearch(Z)V
    .locals 3

    .line 1097
    new-instance v0, Lcom/yftech/car/data/CarData;

    new-instance v1, Lcom/yftech/car/data/CarData$CarDataEntry;

    const-string v2, "radio_auto_search"

    invoke-direct {v1, v2, p0}, Lcom/yftech/car/data/CarData$CarDataEntry;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v0, v1}, Lcom/yftech/car/data/CarData;-><init>(Lcom/yftech/car/data/CarData$CarDataEntry;)V

    const/4 p0, 0x1

    invoke-static {v0, p0}, Lcom/yftech/car/data/CarDataManager;->set(Lcom/yftech/car/data/CarData;Z)Z

    move-result p0

    .line 1098
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRadioAutoSearch() ret:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method private setRadioPlaying(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 667
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment;->v_index_left_1:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 668
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment;->v_index_left_2:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 669
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment;->v_index_right_1:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 670
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment;->v_index_right_2:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 672
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment;->v_index:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v0, 0x15b

    .line 673
    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v0, 0x43

    .line 674
    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 675
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainFragment;->v_index:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 678
    :cond_0
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment;->v_index:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v0, 0x168

    .line 679
    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v0, 0x36

    .line 680
    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 681
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->v_index:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 682
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment;->v_index_left_1:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 683
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment;->v_index_left_2:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 684
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment;->v_index_right_1:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 685
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainFragment;->v_index_right_2:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private showRadioSearchingDialog()V
    .locals 4

    .line 1071
    invoke-static {}, Lcom/yftech/libradio/RadioMainFragment;->getRadioAutoSearch()Z

    move-result v0

    .line 1072
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showRadioSearchingDialog() isRadioAutoSearch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 1074
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/CarRadioManager;->getBand()I

    move-result v0

    .line 1075
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/media/radio/CarRadioManager;->getScanStatus()I

    move-result v1

    .line 1076
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showRadioSearchingDialog() band:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 1078
    sget v1, Lcom/yftech/libradio/R$string;->radio_channel_search_dialog_search_scanning:I

    invoke-virtual {p0, v1}, Lcom/yftech/libradio/RadioMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->newInstance(Ljava/lang/String;I)Lcom/yftech/libradio/dialog/RadioSearchingDialog;

    move-result-object v0

    .line 1079
    invoke-virtual {p0}, Lcom/yftech/libradio/RadioMainFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v1, Lcom/yftech/libradio/dialog/RadioSearchingDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateFMAndAm(I)V
    .locals 3

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-nez p1, :cond_3

    .line 1040
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment;->mRvAm:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment;->mRvAm:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getVisibility()I

    move-result p1

    if-eq p1, v2, :cond_0

    .line 1041
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment;->mRvAm:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 1043
    :cond_0
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment;->mRvFm:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment;->mRvFm:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    .line 1044
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment;->mRvFm:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 1047
    :cond_1
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment;->mRdsSettings:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    .line 1048
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainFragment;->mRdsSettings:Landroid/widget/ImageView;

    invoke-static {}, Lcom/yftech/libradio/Utils;->isRdsPresent()Z

    move-result p1

    if-eqz p1, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1051
    :cond_3
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment;->mRvFm:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment;->mRvFm:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getVisibility()I

    move-result p1

    if-eq p1, v2, :cond_4

    .line 1052
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment;->mRvFm:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 1054
    :cond_4
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment;->mRvAm:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment;->mRvAm:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_5

    .line 1055
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment;->mRvAm:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 1058
    :cond_5
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment;->mRdsSettings:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    .line 1059
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainFragment;->mRdsSettings:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method private updateFavorView(Z)V
    .locals 2

    .line 960
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isFavored:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 961
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mIvLike:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 962
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainFragment;->mIvLike:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method private updateFreq(II)V
    .locals 4

    if-nez p1, :cond_1

    .line 1250
    iget-boolean p1, p0, Lcom/yftech/libradio/RadioMainFragment;->mFmKeepTwoDecima:Z

    const/high16 v0, 0x447a0000    # 1000.0f

    if-eqz p1, :cond_0

    .line 1251
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainFragment;->mTvChannel:Landroid/widget/TextView;

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    int-to-float p2, p2

    div-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-static {p1, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1253
    :cond_0
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainFragment;->mTvChannel:Landroid/widget/TextView;

    int-to-float p1, p2

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1256
    :cond_1
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainFragment;->mTvChannel:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private updateFreqInList(IIZ)V
    .locals 4

    .line 995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateFreqInList() freq:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " band:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isSmooth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 999
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mRadioFreqAdapterAm:Lcom/yftech/libradio/ui/adapter/RadioFreqAdapter;

    invoke-virtual {v0}, Lcom/yftech/libradio/ui/adapter/RadioFreqAdapter;->getData()Ljava/util/List;

    move-result-object v0

    .line 1000
    iget-object v1, p0, Lcom/yftech/libradio/RadioMainFragment;->mPathLayoutManagerAm:Lcom/wuyr/pathlayoutmanager/PathLayoutManager;

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 1002
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mRadioFreqAdapterFm:Lcom/yftech/libradio/ui/adapter/RadioFreqAdapter;

    invoke-virtual {v0}, Lcom/yftech/libradio/ui/adapter/RadioFreqAdapter;->getData()Ljava/util/List;

    move-result-object v0

    .line 1003
    iget-object v1, p0, Lcom/yftech/libradio/RadioMainFragment;->mPathLayoutManagerFm:Lcom/wuyr/pathlayoutmanager/PathLayoutManager;

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    if-eqz v0, :cond_5

    const/4 v2, 0x0

    .line 1006
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 1007
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne p1, v3, :cond_4

    if-eqz v1, :cond_5

    if-eqz p3, :cond_2

    .line 1011
    :try_start_0
    invoke-virtual {v1, v2}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->scrollToPosition(I)V

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    .line 1014
    :cond_2
    invoke-virtual {v1, v2}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->scrollToPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1017
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    if-nez p2, :cond_3

    .line 1021
    iput v2, p0, Lcom/yftech/libradio/RadioMainFragment;->fmPosition:I

    goto :goto_4

    .line 1023
    :cond_3
    iput v2, p0, Lcom/yftech/libradio/RadioMainFragment;->amPosition:I

    goto :goto_4

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    :goto_4
    return-void
.end method

.method private updateFreqView(Lcom/yftech/car/media/radio/entity/DataOfRadio;ZZ)V
    .locals 3

    .line 967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isUpdateScale:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isSmooth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Freq:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 968
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mRdsViewControler:Lcom/yftech/libradio/rds/RdsViewControler;

    invoke-virtual {v0, p1}, Lcom/yftech/libradio/rds/RdsViewControler;->updateFreq(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V

    .line 969
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 970
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/yftech/libradio/RadioMainFragment;->updateFreq(II)V

    .line 971
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mTvChannelTag:Landroid/widget/TextView;

    sget v2, Lcom/yftech/libradio/R$string;->radio_band_am:I

    invoke-virtual {p0, v2}, Lcom/yftech/libradio/RadioMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_0

    .line 973
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result p1

    invoke-direct {p0, p1, v1, p3}, Lcom/yftech/libradio/RadioMainFragment;->updateFreqInList(IIZ)V

    .line 975
    :cond_0
    invoke-direct {p0, v1}, Lcom/yftech/libradio/RadioMainFragment;->updateFMAndAm(I)V

    .line 976
    invoke-virtual {p0}, Lcom/yftech/libradio/RadioMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/yftech/libradio/RadioMainActivity;

    if-eqz p0, :cond_3

    .line 978
    invoke-virtual {p0, v1}, Lcom/yftech/libradio/RadioMainActivity;->switchFmOrAm(I)V

    goto :goto_0

    .line 981
    :cond_1
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/yftech/libradio/RadioMainFragment;->updateFreq(II)V

    .line 982
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mTvChannelTag:Landroid/widget/TextView;

    sget v2, Lcom/yftech/libradio/R$string;->radio_band_fm:I

    invoke-virtual {p0, v2}, Lcom/yftech/libradio/RadioMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_2

    .line 984
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result p1

    invoke-direct {p0, p1, v1, p3}, Lcom/yftech/libradio/RadioMainFragment;->updateFreqInList(IIZ)V

    .line 986
    :cond_2
    invoke-direct {p0, v1}, Lcom/yftech/libradio/RadioMainFragment;->updateFMAndAm(I)V

    .line 987
    invoke-virtual {p0}, Lcom/yftech/libradio/RadioMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/yftech/libradio/RadioMainActivity;

    if-eqz p0, :cond_3

    .line 989
    invoke-virtual {p0, v1}, Lcom/yftech/libradio/RadioMainActivity;->switchFmOrAm(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateLikeEnable()V
    .locals 3

    .line 657
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/CarRadioManager;->isScanStatus()Z

    move-result v0

    .line 658
    iget-object v1, p0, Lcom/yftech/libradio/RadioMainFragment;->mIvLike:Landroid/widget/ImageView;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 659
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainFragment;->mIvLike:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private updatePlayView(Z)V
    .locals 3

    .line 954
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/CarRadioManager;->isScanStatus()Z

    move-result v0

    .line 955
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPlaying:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  isScanStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 956
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainFragment;->mIvPlay:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    sget p1, Lcom/yftech/libradio/R$drawable;->fm_main_icon_playing:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/yftech/libradio/R$drawable;->fm_main_icon_paused:I

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;
    .locals 0

    .line 65
    invoke-virtual {p0}, Lcom/yftech/libradio/RadioMainFragment;->createPresenter()Lcom/yftech/libradio/presenter/RadioMainPresenter;

    move-result-object p0

    return-object p0
.end method

.method protected createPresenter()Lcom/yftech/libradio/presenter/RadioMainPresenter;
    .locals 1

    .line 311
    new-instance v0, Lcom/yftech/libradio/presenter/RadioMainPresenter;

    invoke-virtual {p0}, Lcom/yftech/libradio/RadioMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yftech/libradio/presenter/RadioMainPresenter;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public displayFreqList(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 4

    .line 370
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/radio/CarRadioManager;->getStep(I)I

    move-result v0

    .line 371
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/yftech/car/media/radio/CarRadioManager;->getManualStep(I)I

    move-result v2

    .line 372
    rem-int/lit8 v3, v0, 0x64

    if-nez v3, :cond_0

    rem-int/lit8 v2, v2, 0x64

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 373
    iput-boolean v2, p0, Lcom/yftech/libradio/RadioMainFragment;->mFmKeepTwoDecima:Z

    .line 375
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initView() FmKeepTwoDecima:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/yftech/libradio/RadioMainFragment;->mFmKeepTwoDecima:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ";step="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    .line 378
    sget v0, Lcom/yftech/libradio/R$id;->tv_channel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mTvChannel:Landroid/widget/TextView;

    .line 379
    sget v0, Lcom/yftech/libradio/R$id;->tv_channel_tag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mTvChannelTag:Landroid/widget/TextView;

    .line 380
    sget v0, Lcom/yftech/libradio/R$id;->iv_like:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mIvLike:Landroid/widget/ImageView;

    .line 381
    sget v0, Lcom/yftech/libradio/R$id;->iv_play:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mIvPlay:Landroid/widget/ImageView;

    .line 382
    sget v0, Lcom/yftech/libradio/R$id;->iv_last:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mLast:Landroid/widget/ImageView;

    .line 383
    sget v0, Lcom/yftech/libradio/R$id;->iv_next:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mNext:Landroid/widget/ImageView;

    .line 384
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->rootView:Landroid/view/View;

    sget v2, Lcom/yftech/libradio/R$id;->iv_rds_set:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mRdsSettings:Landroid/widget/ImageView;

    .line 386
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mIvLike:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mIvPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    sget v0, Lcom/yftech/libradio/R$id;->iv_like_list:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    sget v0, Lcom/yftech/libradio/R$id;->iv_search:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mLast:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mNext:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    sget v0, Lcom/yftech/libradio/R$id;->iv_increase:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    sget v0, Lcom/yftech/libradio/R$id;->iv_decrease:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    sget v0, Lcom/yftech/libradio/R$id;->iv_rds_set:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    sget v0, Lcom/yftech/libradio/R$id;->v_index:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->v_index:Landroid/view/View;

    .line 397
    sget v0, Lcom/yftech/libradio/R$id;->v_index_left_1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->v_index_left_1:Landroid/view/View;

    .line 398
    sget v0, Lcom/yftech/libradio/R$id;->v_index_left_2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->v_index_left_2:Landroid/view/View;

    .line 399
    sget v0, Lcom/yftech/libradio/R$id;->v_index_right_1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->v_index_right_1:Landroid/view/View;

    .line 400
    sget v0, Lcom/yftech/libradio/R$id;->v_index_right_2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->v_index_right_2:Landroid/view/View;

    .line 402
    invoke-direct {p0}, Lcom/yftech/libradio/RadioMainFragment;->setFmScaleView()V

    .line 403
    invoke-direct {p0}, Lcom/yftech/libradio/RadioMainFragment;->setAmScaleView()V

    .line 405
    new-instance v0, Lcom/yftech/libradio/rds/RdsViewControler;

    invoke-direct {v0, p0, p1}, Lcom/yftech/libradio/rds/RdsViewControler;-><init>(Lcom/yftech/libradio/RadioMainFragment;Landroid/view/View;)V

    iput-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mRdsViewControler:Lcom/yftech/libradio/rds/RdsViewControler;

    .line 406
    invoke-static {}, Lcom/yftech/libradio/Utils;->isRdsPresent()Z

    move-result p1

    if-nez p1, :cond_2

    .line 407
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Lcom/yftech/car/media/radio/CarRadioManager;->setRdsCommonStatusEnable(IZ)Z

    .line 410
    :cond_2
    invoke-direct {p0}, Lcom/yftech/libradio/RadioMainFragment;->updateLikeEnable()V

    return-void
.end method

.method protected onBindView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 316
    sget p3, Lcom/yftech/libradio/R$layout;->fragment_radio_main:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 317
    iput-object p1, p0, Lcom/yftech/libradio/RadioMainFragment;->rootView:Landroid/view/View;

    return-object p1
.end method

.method public onCheckChange(I)V
    .locals 2

    .line 914
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RadioMainFragment->onCheckChange->checkedId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    .line 915
    sget v0, Lcom/yftech/libradio/R$id;->rb_fm:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 916
    invoke-direct {p0, p1}, Lcom/yftech/libradio/RadioMainFragment;->updateFMAndAm(I)V

    .line 917
    invoke-direct {p0, p1}, Lcom/yftech/libradio/RadioMainFragment;->setBand(I)V

    goto :goto_0

    .line 918
    :cond_0
    sget v0, Lcom/yftech/libradio/R$id;->rb_am:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    .line 919
    invoke-direct {p0, p1}, Lcom/yftech/libradio/RadioMainFragment;->updateFMAndAm(I)V

    .line 920
    invoke-direct {p0, p1}, Lcom/yftech/libradio/RadioMainFragment;->setBand(I)V

    goto :goto_0

    .line 922
    :cond_1
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment;->mRdsSettings:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    .line 923
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainFragment;->mRdsSettings:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 815
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libradio/R$id;->iv_search:I

    const/4 v2, 0x2

    if-ne v0, v1, :cond_3

    .line 816
    invoke-static {}, Lcom/yftech/libradio/Utils;->isQuickClick()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "iv_search quick click"

    .line 817
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    return-void

    .line 821
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/libradio/RadioMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/yftech/libradio/RadioMainActivity;

    if-eqz p1, :cond_2

    .line 823
    invoke-virtual {p1}, Lcom/yftech/libradio/RadioMainActivity;->getCheckedId()I

    move-result p1

    .line 824
    sget v0, Lcom/yftech/libradio/R$id;->rb_am:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 825
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iv_search selectId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " band:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    goto :goto_1

    .line 827
    :cond_2
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/CarRadioManager;->getBand()I

    move-result v2

    .line 828
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "iv_search band:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    .line 830
    :goto_1
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yftech/libradio/RadioMainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/yftech/libradio/RadioListActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "band"

    .line 831
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 832
    invoke-virtual {p0, p1}, Lcom/yftech/libradio/RadioMainFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 833
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libradio/R$id;->iv_like_list:I

    if-ne v0, v1, :cond_5

    .line 834
    invoke-static {}, Lcom/yftech/libradio/Utils;->isQuickClick()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p0, "iv_like_list quick click"

    .line 835
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    return-void

    .line 838
    :cond_4
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yftech/libradio/RadioMainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/yftech/libradio/RadioFavorActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "favor_band"

    .line 839
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/media/radio/CarRadioManager;->getBand()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 840
    invoke-virtual {p0, p1}, Lcom/yftech/libradio/RadioMainFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 841
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p0

    sget v0, Lcom/yftech/libradio/R$id;->iv_play:I

    const/4 v1, 0x1

    if-ne p0, v0, :cond_8

    .line 842
    invoke-virtual {p1}, Landroid/view/View;->isHovered()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 843
    sget p0, Lcom/yftech/libradio/R$string;->signal_poor:I

    invoke-static {p0, v1}, Lcom/media/common/util/ToastUtils;->showNormalMessage(II)V

    .line 845
    :cond_6
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/media/radio/CarRadioManager;->isPlaying()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 846
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/media/radio/CarRadioManager;->pause()V

    goto/16 :goto_4

    .line 848
    :cond_7
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/media/radio/CarRadioManager;->play()V

    goto/16 :goto_4

    .line 850
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p0

    sget v0, Lcom/yftech/libradio/R$id;->iv_last:I

    if-ne p0, v0, :cond_a

    .line 851
    invoke-virtual {p1}, Landroid/view/View;->isHovered()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 852
    sget p0, Lcom/yftech/libradio/R$string;->signal_poor:I

    invoke-static {p0, v1}, Lcom/media/common/util/ToastUtils;->showNormalMessage(II)V

    .line 854
    :cond_9
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/media/radio/CarRadioManager;->seekUp()I

    goto/16 :goto_4

    .line 855
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p0

    sget v0, Lcom/yftech/libradio/R$id;->iv_next:I

    if-ne p0, v0, :cond_c

    .line 856
    invoke-virtual {p1}, Landroid/view/View;->isHovered()Z

    move-result p0

    if-eqz p0, :cond_b

    .line 857
    sget p0, Lcom/yftech/libradio/R$string;->signal_poor:I

    invoke-static {p0, v1}, Lcom/media/common/util/ToastUtils;->showNormalMessage(II)V

    .line 859
    :cond_b
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/media/radio/CarRadioManager;->seekDown()I

    goto/16 :goto_4

    .line 860
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p0

    sget v0, Lcom/yftech/libradio/R$id;->iv_increase:I

    if-ne p0, v0, :cond_d

    .line 861
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/media/radio/CarRadioManager;->stepUp()I

    goto/16 :goto_4

    .line 862
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p0

    sget v0, Lcom/yftech/libradio/R$id;->iv_decrease:I

    if-ne p0, v0, :cond_e

    .line 863
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/media/radio/CarRadioManager;->stepDown()I

    goto/16 :goto_4

    .line 864
    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p0

    sget v0, Lcom/yftech/libradio/R$id;->iv_like:I

    if-ne p0, v0, :cond_16

    .line 865
    invoke-virtual {p1}, Landroid/view/View;->isHovered()Z

    move-result p0

    if-eqz p0, :cond_f

    .line 866
    sget p0, Lcom/yftech/libradio/R$string;->signal_poor:I

    invoke-static {p0, v1}, Lcom/media/common/util/ToastUtils;->showNormalMessage(II)V

    .line 868
    :cond_f
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/media/radio/CarRadioManager;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object p0

    .line 869
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/yftech/car/media/radio/CarRadioManager;->isFreqFavored(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 871
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/CarRadioManager;->getBand()I

    move-result p1

    .line 872
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/car/media/radio/CarRadioManager;->getFavors(I)[Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object v0

    .line 873
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "band:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " length:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_10

    array-length v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_2

    :cond_10
    const-string v4, "null"

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-ne p1, v2, :cond_11

    const/16 p1, 0x14

    goto :goto_3

    :cond_11
    const/16 p1, 0x1e

    :goto_3
    if-eqz v0, :cond_12

    .line 889
    array-length v0, v0

    if-lt v0, p1, :cond_12

    .line 890
    sget p0, Lcom/yftech/libradio/R$string;->radio_channel_favor_dialog_add_favor_full:I

    invoke-static {p0, v1}, Lcom/media/common/util/ToastUtils;->showNormalMessage(II)V

    return-void

    .line 894
    :cond_12
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, v1}, Lcom/yftech/car/media/radio/CarRadioManager;->addFavor(Lcom/yftech/car/media/radio/entity/DataOfRadio;IZ)Z

    move-result p0

    .line 895
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addFavor result:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-eqz p0, :cond_13

    .line 897
    sget p0, Lcom/yftech/libradio/R$string;->radio_channel_favor_dialog_add_favor_successful:I

    invoke-static {p0, v1}, Lcom/media/common/util/ToastUtils;->showNormalMessage(II)V

    goto :goto_4

    .line 899
    :cond_13
    sget p0, Lcom/yftech/libradio/R$string;->radio_channel_favor_dialog_add_favor_failure:I

    invoke-static {p0, v1}, Lcom/media/common/util/ToastUtils;->showFailMessage(II)V

    goto :goto_4

    .line 902
    :cond_14
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/yftech/car/media/radio/CarRadioManager;->removeFavor(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    move-result p0

    .line 903
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removeFavor result:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-eqz p0, :cond_15

    .line 905
    sget p0, Lcom/yftech/libradio/R$string;->radio_channel_favor_dialog_remove_favor_successful:I

    invoke-static {p0, v1}, Lcom/media/common/util/ToastUtils;->showNormalMessage(II)V

    goto :goto_4

    .line 907
    :cond_15
    sget p0, Lcom/yftech/libradio/R$string;->radio_channel_favor_dialog_remove_favor_failure:I

    invoke-static {p0, v1}, Lcom/media/common/util/ToastUtils;->showFailMessage(II)V

    :cond_16
    :goto_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 323
    invoke-super {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "onCreate()"

    .line 324
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 325
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/yftech/libradio/RadioMainFragment;->mIntentFilter:Landroid/content/IntentFilter;

    .line 326
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "com.autochips.carplay.event.show_ui"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 327
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "com.yftech.avmservice.SHOW_STATE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 328
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "com.yftech.hicar.show"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 329
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "yf.action.rds.settings"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 330
    new-instance p1, Lcom/yftech/libradio/RadioMainFragment$CarplayShowUIReceiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/yftech/libradio/RadioMainFragment$CarplayShowUIReceiver;-><init>(Lcom/yftech/libradio/RadioMainFragment;Lcom/yftech/libradio/RadioMainFragment$1;)V

    iput-object p1, p0, Lcom/yftech/libradio/RadioMainFragment;->mCarplayShowUIReceiver:Lcom/yftech/libradio/RadioMainFragment$CarplayShowUIReceiver;

    .line 332
    :try_start_0
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object p1

    const-string v0, "radio_min_signal_strength"

    invoke-virtual {p1, v0}, Lcom/yftech/car/media/data/CarMediaDataManager;->getConfigData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 333
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "signalConfig: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v0, ","

    .line 335
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 336
    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 337
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yftech/libradio/RadioMainFragment;->minFmSinalConfig:I

    const/4 v0, 0x2

    .line 338
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/yftech/libradio/RadioMainFragment;->minAmSinalConfig:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 342
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 808
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onDestroy()V

    const-string p0, "onDestroy()"

    .line 809
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 810
    invoke-static {}, Lcom/yftech/libradio/rds/RdsDataManager;->getInstance()Lcom/yftech/libradio/rds/RdsDataManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/libradio/rds/RdsDataManager;->unInit()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 3

    .line 792
    invoke-super {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onHiddenChanged(Z)V

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHiddenChanged, hidden: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 795
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/CarRadioManager;->requestAudioFocus()V

    .line 796
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/CarRadioManager;->isPlaying()Z

    move-result p1

    .line 797
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/CarRadioManager;->isScanStatus()Z

    move-result v0

    .line 798
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHiddenChanged() isPlaying:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " connectedLinkStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/libradio/RadioMainFragment;->mConnectedLinkStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isScanning:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-nez p1, :cond_0

    if-nez v0, :cond_0

    .line 800
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/CarRadioManager;->play()V

    :cond_0
    const/4 p1, 0x1

    .line 802
    iput-boolean p1, p0, Lcom/yftech/libradio/RadioMainFragment;->isFragmentSwitch:Z

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 770
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onPause()V

    const-string v0, "onPause()"

    .line 771
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 772
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/CarRadioManager;->isScanStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/CarRadioManager;->stop()I

    :cond_0
    const/4 v0, 0x0

    .line 775
    iput-boolean v0, p0, Lcom/yftech/libradio/RadioMainFragment;->isCarPlayCalled:Z

    .line 776
    iput-boolean v0, p0, Lcom/yftech/libradio/RadioMainFragment;->isCarplayDisconnected:Z

    .line 777
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/RadioMainFragment;->mCarPhoneLinkCallback:Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->unregisterCarPhoneLinkCallback(Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;)V

    .line 778
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mCarRadioControlCallback:Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;

    invoke-static {v0}, Lcom/yftech/car/media/radio/CarRadioManager;->unregisterRadioControlCallback(Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;)V

    .line 779
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->bluetoothPhoneCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;

    if-eqz v0, :cond_1

    .line 780
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/RadioMainFragment;->bluetoothPhoneCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->unregisterBluetoothPhoneCallback(Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;)V

    .line 782
    :cond_1
    invoke-virtual {p0}, Lcom/yftech/libradio/RadioMainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/RadioMainFragment;->mCarplayShowUIReceiver:Lcom/yftech/libradio/RadioMainFragment$CarplayShowUIReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 783
    invoke-virtual {p0}, Lcom/yftech/libradio/RadioMainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/RadioMainFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 784
    invoke-virtual {p0}, Lcom/yftech/libradio/RadioMainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/RadioMainFragment;->rdsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 785
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mRdsViewControler:Lcom/yftech/libradio/rds/RdsViewControler;

    invoke-virtual {v0}, Lcom/yftech/libradio/rds/RdsViewControler;->hideRdsSettingsDialog()V

    .line 786
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mRdsViewControler:Lcom/yftech/libradio/rds/RdsViewControler;

    invoke-virtual {v0}, Lcom/yftech/libradio/rds/RdsViewControler;->hideRdsRtDialog()V

    .line 787
    invoke-direct {p0}, Lcom/yftech/libradio/RadioMainFragment;->dismissAllDialog()V

    return-void
.end method

.method public onResume()V
    .locals 6

    .line 711
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onResume()V

    const-string v0, "onResume()"

    .line 712
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 713
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getConnectedLinkStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mConnectedLinkStatus:Ljava/lang/String;

    .line 714
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/RadioMainFragment;->mCarPhoneLinkCallback:Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;

    iget-object v2, p0, Lcom/yftech/libradio/RadioMainFragment;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->registerCarPhoneLinkCallback(Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;Landroid/os/Handler;)V

    .line 715
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment;->mCarRadioControlCallback:Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;

    iget-object v1, p0, Lcom/yftech/libradio/RadioMainFragment;->mMainHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/yftech/car/media/radio/CarRadioManager;->registerRadioControlCallback(Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;Landroid/os/Handler;)V

    .line 716
    invoke-virtual {p0}, Lcom/yftech/libradio/RadioMainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/RadioMainFragment;->mCarplayShowUIReceiver:Lcom/yftech/libradio/RadioMainFragment$CarplayShowUIReceiver;

    iget-object v2, p0, Lcom/yftech/libradio/RadioMainFragment;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 717
    invoke-virtual {p0}, Lcom/yftech/libradio/RadioMainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/RadioMainFragment;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/yftech/libradio/RadioMainFragment;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 718
    invoke-virtual {p0}, Lcom/yftech/libradio/RadioMainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/RadioMainFragment;->rdsReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/yftech/libradio/RadioMainFragment;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 719
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/RadioMainFragment;->bluetoothPhoneCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->registerBluetoothPhoneCallback(Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;Landroid/os/Handler;)V

    .line 720
    invoke-virtual {p0}, Lcom/yftech/libradio/RadioMainFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_1

    .line 721
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/CarRadioManager;->requestAudioFocus()V

    .line 722
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/CarRadioManager;->isPlaying()Z

    move-result v0

    .line 723
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/media/radio/CarRadioManager;->isScanStatus()Z

    move-result v1

    .line 724
    invoke-virtual {p0}, Lcom/yftech/libradio/RadioMainFragment;->isResumeByPowerOn()Z

    move-result v2

    .line 725
    invoke-virtual {p0}, Lcom/yftech/libradio/RadioMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/yftech/libradio/RadioMainActivity;

    .line 726
    invoke-virtual {v3}, Lcom/yftech/libradio/RadioMainActivity;->isCheckedDab()Z

    move-result v3

    .line 727
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResume() isPlaying:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " connectedLinkStatus:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yftech/libradio/RadioMainFragment;->mConnectedLinkStatus:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " isScanning:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isResumeByPowerOn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ";checkedDab="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    .line 729
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/CarRadioManager;->play()V

    .line 731
    :cond_0
    invoke-direct {p0}, Lcom/yftech/libradio/RadioMainFragment;->initViewData()V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 758
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onStart()V

    const-string p0, "onStart()"

    .line 759
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public startAction(Landroid/content/Intent;)V
    .locals 5

    .line 347
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key.radio.freq"

    const/4 v2, -0x1

    .line 348
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 349
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/media/radio/CarRadioManager;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object v1

    iget v1, v1, Lcom/yftech/car/media/radio/entity/DataOfRadio;->type:I

    .line 350
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " freq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "band="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v3, "com.yftech.intent.action.start.radio.am"

    .line 351
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 352
    invoke-direct {p0}, Lcom/yftech/libradio/RadioMainFragment;->dismissAllDialog()V

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    .line 354
    invoke-direct {p0, v0}, Lcom/yftech/libradio/RadioMainFragment;->setBand(I)V

    goto :goto_0

    :cond_0
    const-string v3, "com.yftech.intent.action.start.radio.fm"

    .line 356
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    invoke-direct {p0}, Lcom/yftech/libradio/RadioMainFragment;->dismissAllDialog()V

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 359
    invoke-direct {p0, v0}, Lcom/yftech/libradio/RadioMainFragment;->setBand(I)V

    :cond_1
    :goto_0
    if-lez p1, :cond_2

    .line 363
    invoke-direct {p0, p1, v2}, Lcom/yftech/libradio/RadioMainFragment;->setFreq(II)V

    :cond_2
    return-void
.end method
