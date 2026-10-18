.class public Lcom/yftech/libradio/model/RadioModel;
.super Ljava/lang/Object;
.source "RadioModel.java"

# interfaces
.implements Lcom/yftech/libradio/model/interfaces/IRadioModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/libradio/model/RadioModel;Landroid/content/Context;ILjava/lang/String;I)I
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yftech/libradio/model/RadioModel;->getValidRadioValue(Landroid/content/Context;ILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getSharedRadioData(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1

    const-string p0, "yf_radio_app_data"

    const/4 v0, 0x0

    .line 246
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getValidRadioValue(Landroid/content/Context;ILjava/lang/String;I)I
    .locals 3

    .line 233
    invoke-direct {p0, p1, p3, p4}, Lcom/yftech/libradio/model/RadioModel;->getSharedRadioData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValidRadioValue() curValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " shareValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ")"

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    if-gez p2, :cond_0

    .line 236
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
    if-eq p2, v0, :cond_1

    .line 240
    invoke-direct {p0, p1, p3, p2}, Lcom/yftech/libradio/model/RadioModel;->saveSharedRadioData(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1
    return p2
.end method

.method private saveSharedRadioData(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 250
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "saveSharedRadioData() key:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " value:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    const-string p0, "yf_radio_app_data"

    const/4 v0, 0x0

    .line 251
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public getFavors(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libradio/model/interfaces/IRadioModel$OnRadioFavorListLoadListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/libradio/model/interfaces/IRadioModel$OnRadioFavorListLoadListener;",
            ")V"
        }
    .end annotation

    .line 106
    invoke-virtual {p2}, Lcom/yftech/libmvpmodule/BasePresenter;->getActivity()Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 108
    invoke-virtual {p2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p2

    .line 110
    instance-of v0, p2, Lcom/media/common/util/BaseApplication;

    if-eqz v0, :cond_0

    .line 111
    check-cast p2, Lcom/media/common/util/BaseApplication;

    .line 112
    invoke-virtual {p2}, Lcom/media/common/util/BaseApplication;->getFixedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance v0, Lcom/yftech/libradio/model/RadioModel$3;

    invoke-direct {v0, p0, p1, p3}, Lcom/yftech/libradio/model/RadioModel$3;-><init>(Lcom/yftech/libradio/model/RadioModel;ILcom/yftech/libradio/model/interfaces/IRadioModel$OnRadioFavorListLoadListener;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public getSearchList(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libradio/model/interfaces/IRadioModel$OnRadioChannelSearchListLoadListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/libradio/model/interfaces/IRadioModel$OnRadioChannelSearchListLoadListener;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-virtual {p2}, Lcom/yftech/libmvpmodule/BasePresenter;->getActivity()Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 37
    invoke-virtual {p2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p2

    .line 39
    instance-of v0, p2, Lcom/media/common/util/BaseApplication;

    if-eqz v0, :cond_0

    .line 40
    check-cast p2, Lcom/media/common/util/BaseApplication;

    .line 41
    invoke-virtual {p2}, Lcom/media/common/util/BaseApplication;->getFixedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance v0, Lcom/yftech/libradio/model/RadioModel$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/yftech/libradio/model/RadioModel$1;-><init>(Lcom/yftech/libradio/model/RadioModel;ILcom/yftech/libradio/model/interfaces/IRadioModel$OnRadioChannelSearchListLoadListener;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public scanSave(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libradio/model/interfaces/IRadioModel$OnRadioChannelScanResultLoadListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/libradio/model/interfaces/IRadioModel$OnRadioChannelScanResultLoadListener;",
            ")V"
        }
    .end annotation

    .line 79
    invoke-virtual {p2}, Lcom/yftech/libmvpmodule/BasePresenter;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    .line 83
    instance-of p2, p1, Lcom/media/common/util/BaseApplication;

    if-eqz p2, :cond_0

    .line 84
    check-cast p1, Lcom/media/common/util/BaseApplication;

    .line 85
    invoke-virtual {p1}, Lcom/media/common/util/BaseApplication;->getFixedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lcom/yftech/libradio/model/RadioModel$2;

    invoke-direct {p2, p0, p3}, Lcom/yftech/libradio/model/RadioModel$2;-><init>(Lcom/yftech/libradio/model/RadioModel;Lcom/yftech/libradio/model/interfaces/IRadioModel$OnRadioChannelScanResultLoadListener;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setFreqList(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libradio/model/interfaces/IRadioModel$OnFreqListLoadListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/libradio/model/interfaces/IRadioModel$OnFreqListLoadListener;",
            ")V"
        }
    .end annotation

    .line 166
    invoke-virtual {p2}, Lcom/yftech/libmvpmodule/BasePresenter;->getActivity()Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 168
    invoke-virtual {p2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p2

    .line 170
    instance-of v0, p2, Lcom/media/common/util/BaseApplication;

    if-eqz v0, :cond_0

    .line 171
    check-cast p2, Lcom/media/common/util/BaseApplication;

    .line 172
    invoke-virtual {p2}, Lcom/media/common/util/BaseApplication;->getFixedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/yftech/libradio/model/RadioModel$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/yftech/libradio/model/RadioModel$4;-><init>(Lcom/yftech/libradio/model/RadioModel;ILcom/media/common/util/BaseApplication;Lcom/yftech/libradio/model/interfaces/IRadioModel$OnFreqListLoadListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
