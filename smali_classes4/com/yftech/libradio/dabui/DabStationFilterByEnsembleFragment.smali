.class public Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;
.super Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;
.source "DabStationFilterByEnsembleFragment.java"


# static fields
.field private static final KEY_SP_DAB_ENSEMBLE_SEL:Ljava/lang/String; = "com.yf.dab.ensemble.sel"


# instance fields
.field private ensembleLabelStrList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isSelectedEnsembleContained:Z

.field private lableDialog:Lcom/yftech/libradio/dialog/DabLableDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;->ensembleLabelStrList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;)Z
    .locals 0

    .line 14
    iget-boolean p0, p0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;->isSelectedEnsembleContained:Z

    return p0
.end method

.method static synthetic access$002(Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;Z)Z
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;->isSelectedEnsembleContained:Z

    return p1
.end method

.method static synthetic access$100(Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;)Ljava/util/List;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;->ensembleLabelStrList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;)Ljava/lang/String;
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;->getPreferencesData()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;Ljava/util/List;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;->filterList(Ljava/util/List;)V

    return-void
.end method

.method private filterList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/libradio/bean/DabChannelInfo;",
            ">;)V"
        }
    .end annotation

    .line 129
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 133
    :cond_0
    iget-boolean v0, p0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;->isSelectedEnsembleContained:Z

    if-nez v0, :cond_1

    const-string p0, "filterList selectedEnsemble is not Contained -----"

    .line 134
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void

    .line 137
    :cond_1
    invoke-direct {p0}, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;->getPreferencesData()Ljava/lang/String;

    move-result-object p0

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buildDabChannelInfo filterStr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 139
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 142
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 143
    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 144
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/libradio/bean/DabChannelInfo;

    .line 145
    invoke-virtual {v0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getEnsembleLabel()Lcom/yftech/car/media/radio/dab/entity/DabLabel;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v0, ""

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getEnsembleLabel()Lcom/yftech/car/media/radio/dab/entity/DabLabel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/DabLabel;->getLabelString()Ljava/lang/String;

    move-result-object v0

    .line 146
    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 147
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_5
    return-void
.end method

.method private getPreferencesData()Ljava/lang/String;
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "com.yf.dab.ensemble.sel"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;->mDabChannelInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;->mDabChannelInfoList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/libradio/bean/DabChannelInfo;

    invoke-virtual {p0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getEnsembleLabel()Lcom/yftech/car/media/radio/dab/entity/DabLabel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/media/radio/dab/entity/DabLabel;->getLabelString()Ljava/lang/String;

    move-result-object p0

    .line 44
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method protected filterDabChannleList()V
    .locals 1

    .line 55
    new-instance v0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment$1;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment$1;-><init>(Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    .line 91
    invoke-virtual {v0, p0}, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected getFilterString()Ljava/lang/String;
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;->getPreferencesData()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected onLabelButtonCliked()V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;->ensembleLabelStrList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "onLabelButtonCliked ensembleLabelStrList is Empty ---"

    .line 104
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;->lableDialog:Lcom/yftech/libradio/dialog/DabLableDialog;

    if-nez v0, :cond_1

    .line 108
    new-instance v0, Lcom/yftech/libradio/dialog/DabLableDialog;

    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yftech/libradio/dialog/DabLableDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;->lableDialog:Lcom/yftech/libradio/dialog/DabLableDialog;

    .line 109
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;->lableDialog:Lcom/yftech/libradio/dialog/DabLableDialog;

    new-instance v1, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment$2;

    invoke-direct {v1, p0}, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment$2;-><init>(Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;)V

    invoke-virtual {v0, v1}, Lcom/yftech/libradio/dialog/DabLableDialog;->setLabelListCallback(Lcom/yftech/libradio/dialog/DabLableDialog$LabelListCallback;)V

    .line 119
    :cond_1
    invoke-direct {p0}, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;->getPreferencesData()Ljava/lang/String;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;->lableDialog:Lcom/yftech/libradio/dialog/DabLableDialog;

    invoke-virtual {v1, v0}, Lcom/yftech/libradio/dialog/DabLableDialog;->setTitle(Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;->lableDialog:Lcom/yftech/libradio/dialog/DabLableDialog;

    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;->ensembleLabelStrList:Ljava/util/List;

    invoke-virtual {v1, v2, v0}, Lcom/yftech/libradio/dialog/DabLableDialog;->setLabelList(Ljava/util/List;Ljava/lang/String;)V

    .line 122
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;->lableDialog:Lcom/yftech/libradio/dialog/DabLableDialog;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabLableDialog;->show()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 26
    invoke-super {p0}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->onStop()V

    .line 27
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;->lableDialog:Lcom/yftech/libradio/dialog/DabLableDialog;

    if-eqz v0, :cond_0

    .line 28
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;->lableDialog:Lcom/yftech/libradio/dialog/DabLableDialog;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabLableDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected updateLabelText(Lcom/yftech/libradio/bean/DabChannelInfo;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->updateLabelText(Lcom/yftech/libradio/bean/DabChannelInfo;)V

    return-void
.end method
