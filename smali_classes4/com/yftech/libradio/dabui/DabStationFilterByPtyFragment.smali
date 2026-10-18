.class public Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;
.super Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;
.source "DabStationFilterByPtyFragment.java"


# static fields
.field private static final KEY_SP_DAB_PTY_SEL:Ljava/lang/String; = "com.yf.dab.pty.sel"


# instance fields
.field private lableDialog:Lcom/yftech/libradio/dialog/DabLableDialog;

.field private ptrStringArray:[Ljava/lang/String;

.field private ptyTypes:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 32

    .line 24
    invoke-direct/range {p0 .. p0}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;-><init>()V

    const-string v0, "None"

    const-string v1, "News"

    const-string v2, "Current Affairs"

    const-string v3, "Information"

    const-string v4, "Sports"

    const-string v5, "Education"

    const-string v6, "Drama"

    const-string v7, "Cultrue"

    const-string v8, "Science"

    const-string v9, "Varied"

    const-string v10, "Pop Music"

    const-string v11, "Rock Music"

    const-string v12, "Easy Listening"

    const-string v13, "Light Classical"

    const-string v14, "Serious Classical"

    const-string v15, "Other Music"

    const-string v16, "Weather"

    const-string v17, "Finance"

    const-string v18, "Children\'s Programmes"

    const-string v19, "Social Affairs"

    const-string v20, "Religion"

    const-string v21, "Phone-in"

    const-string v22, "Travel"

    const-string v23, "Leisure"

    const-string v24, "Jazz Music"

    const-string v25, "Country Music"

    const-string v26, "National Music"

    const-string v27, "Oldies Music"

    const-string v28, "Folk Music"

    const-string v29, "Documentary"

    const-string v30, "Test"

    const-string v31, "Alarm"

    .line 26
    filled-new-array/range {v0 .. v31}, [Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;->ptyTypes:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;Ljava/util/List;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;->filterList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;)[Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;->ptrStringArray:[Ljava/lang/String;

    return-object p0
.end method

.method private filterList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/libradio/bean/DabChannelInfo;",
            ">;)V"
        }
    .end annotation

    .line 150
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 153
    :cond_0
    invoke-direct {p0}, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;->getPreferencesData()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string p0, "filterList filterStr is null ---"

    .line 155
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void

    .line 162
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filterList ptySel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", filterStr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;->ptrStringArray:[Ljava/lang/String;

    aget-object p0, p0, v0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 163
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 164
    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 165
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/libradio/bean/DabChannelInfo;

    .line 166
    invoke-virtual {p1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getStatPty()I

    move-result p1

    if-eq p1, v0, :cond_2

    .line 167
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private getPreferencesData()I
    .locals 2

    .line 102
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v0, "com.yf.dab.pty.sel"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method protected filterDabChannleList()V
    .locals 1

    .line 84
    new-instance v0, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment$1;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment$1;-><init>(Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    .line 97
    invoke-virtual {v0, p0}, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected getFilterString()Ljava/lang/String;
    .locals 3

    .line 109
    invoke-direct {p0}, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;->getPreferencesData()I

    move-result v0

    const-string v1, ""

    if-ltz v0, :cond_0

    .line 111
    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;->ptrStringArray:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 112
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;->ptrStringArray:[Ljava/lang/String;

    aget-object v1, p0, v0

    :cond_0
    return-object v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 63
    invoke-super {p0, p1}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/yftech/libradio/R$array;->dab_ptys:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;->ptrStringArray:[Ljava/lang/String;

    return-void
.end method

.method protected onLabelButtonCliked()V
    .locals 4

    .line 119
    invoke-direct {p0}, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;->getPreferencesData()I

    move-result v0

    const-string v1, ""

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 122
    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;->ptrStringArray:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;->lableDialog:Lcom/yftech/libradio/dialog/DabLableDialog;

    if-nez v0, :cond_1

    .line 125
    new-instance v0, Lcom/yftech/libradio/dialog/DabLableDialog;

    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/yftech/libradio/dialog/DabLableDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;->lableDialog:Lcom/yftech/libradio/dialog/DabLableDialog;

    .line 126
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;->lableDialog:Lcom/yftech/libradio/dialog/DabLableDialog;

    new-instance v2, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment$2;

    invoke-direct {v2, p0}, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment$2;-><init>(Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;)V

    invoke-virtual {v0, v2}, Lcom/yftech/libradio/dialog/DabLableDialog;->setLabelListCallback(Lcom/yftech/libradio/dialog/DabLableDialog$LabelListCallback;)V

    .line 137
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 138
    :goto_0
    iget-object v3, p0, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;->ptrStringArray:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 139
    iget-object v3, p0, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;->ptrStringArray:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    :cond_2
    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;->lableDialog:Lcom/yftech/libradio/dialog/DabLableDialog;

    invoke-virtual {v2, v1}, Lcom/yftech/libradio/dialog/DabLableDialog;->setTitle(Ljava/lang/String;)V

    .line 142
    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;->lableDialog:Lcom/yftech/libradio/dialog/DabLableDialog;

    invoke-virtual {v2, v0, v1}, Lcom/yftech/libradio/dialog/DabLableDialog;->setLabelList(Ljava/util/List;Ljava/lang/String;)V

    .line 143
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;->lableDialog:Lcom/yftech/libradio/dialog/DabLableDialog;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabLableDialog;->show()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 69
    invoke-super {p0}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->onStop()V

    .line 70
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;->lableDialog:Lcom/yftech/libradio/dialog/DabLableDialog;

    if-eqz v0, :cond_0

    .line 71
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;->lableDialog:Lcom/yftech/libradio/dialog/DabLableDialog;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabLableDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected updateLabelText(Lcom/yftech/libradio/bean/DabChannelInfo;)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->updateLabelText(Lcom/yftech/libradio/bean/DabChannelInfo;)V

    return-void
.end method
