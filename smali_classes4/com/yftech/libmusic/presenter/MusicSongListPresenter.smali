.class public Lcom/yftech/libmusic/presenter/MusicSongListPresenter;
.super Lcom/yftech/libmvpmodule/BasePresenter;
.source "MusicSongListPresenter.java"

# interfaces
.implements Lcom/yftech/libmusic/presenter/interfaces/IMusicSongListPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/libmvpmodule/BasePresenter<",
        "Lcom/yftech/libmusic/view/IMusicSongListDialogView;",
        ">;",
        "Lcom/yftech/libmusic/presenter/interfaces/IMusicSongListPresenter;"
    }
.end annotation


# instance fields
.field private musicModel:Lcom/yftech/libmusic/model/MusicModel;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/yftech/libmvpmodule/BasePresenter;-><init>(Landroid/app/Activity;)V

    .line 17
    new-instance p1, Lcom/yftech/libmusic/model/MusicModel;

    invoke-direct {p1}, Lcom/yftech/libmusic/model/MusicModel;-><init>()V

    iput-object p1, p0, Lcom/yftech/libmusic/presenter/MusicSongListPresenter;->musicModel:Lcom/yftech/libmusic/model/MusicModel;

    return-void
.end method

.method public static synthetic lambda$getCurrentPlayList$3(Lcom/yftech/libmusic/presenter/MusicSongListPresenter;ILjava/util/List;)V
    .locals 2

    .line 37
    invoke-virtual {p0}, Lcom/yftech/libmusic/presenter/MusicSongListPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/yftech/libmusic/presenter/MusicSongListPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/yftech/libmusic/presenter/-$$Lambda$MusicSongListPresenter$Q-cyI5gUs8e1I3ihvOQ7FvOlUuI;

    invoke-direct {v1, p0, p1, p2}, Lcom/yftech/libmusic/presenter/-$$Lambda$MusicSongListPresenter$Q-cyI5gUs8e1I3ihvOQ7FvOlUuI;-><init>(Lcom/yftech/libmusic/presenter/MusicSongListPresenter;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$getPlayListSize$1(Lcom/yftech/libmusic/presenter/MusicSongListPresenter;I)V
    .locals 2

    .line 26
    invoke-virtual {p0}, Lcom/yftech/libmusic/presenter/MusicSongListPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/yftech/libmusic/presenter/MusicSongListPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/yftech/libmusic/presenter/-$$Lambda$MusicSongListPresenter$QKSMEqQ1FUT-KpL0o5XeDi7VPs4;

    invoke-direct {v1, p0, p1}, Lcom/yftech/libmusic/presenter/-$$Lambda$MusicSongListPresenter$QKSMEqQ1FUT-KpL0o5XeDi7VPs4;-><init>(Lcom/yftech/libmusic/presenter/MusicSongListPresenter;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$getPlayPosition$5(Lcom/yftech/libmusic/presenter/MusicSongListPresenter;I)V
    .locals 2

    .line 48
    invoke-virtual {p0}, Lcom/yftech/libmusic/presenter/MusicSongListPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/yftech/libmusic/presenter/MusicSongListPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/yftech/libmusic/presenter/-$$Lambda$MusicSongListPresenter$IRodwhLkwxrDCfrwAii1Ejz-mok;

    invoke-direct {v1, p0, p1}, Lcom/yftech/libmusic/presenter/-$$Lambda$MusicSongListPresenter$IRodwhLkwxrDCfrwAii1Ejz-mok;-><init>(Lcom/yftech/libmusic/presenter/MusicSongListPresenter;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$null$0(Lcom/yftech/libmusic/presenter/MusicSongListPresenter;I)V
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/yftech/libmusic/presenter/MusicSongListPresenter;->isViewAttach()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/yftech/libmusic/presenter/MusicSongListPresenter;->getView()Lcom/yftech/libmvpmodule/mvp/IMvpView;

    move-result-object p0

    check-cast p0, Lcom/yftech/libmusic/view/IMusicSongListDialogView;

    invoke-interface {p0, p1}, Lcom/yftech/libmusic/view/IMusicSongListDialogView;->displayPlayListSize(I)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$null$2(Lcom/yftech/libmusic/presenter/MusicSongListPresenter;ILjava/util/List;)V
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/yftech/libmusic/presenter/MusicSongListPresenter;->isViewAttach()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/yftech/libmusic/presenter/MusicSongListPresenter;->getView()Lcom/yftech/libmvpmodule/mvp/IMvpView;

    move-result-object p0

    check-cast p0, Lcom/yftech/libmusic/view/IMusicSongListDialogView;

    invoke-interface {p0, p1, p2}, Lcom/yftech/libmusic/view/IMusicSongListDialogView;->displayCurrentPlayList(ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$null$4(Lcom/yftech/libmusic/presenter/MusicSongListPresenter;I)V
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/yftech/libmusic/presenter/MusicSongListPresenter;->isViewAttach()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/yftech/libmusic/presenter/MusicSongListPresenter;->getView()Lcom/yftech/libmvpmodule/mvp/IMvpView;

    move-result-object p0

    check-cast p0, Lcom/yftech/libmusic/view/IMusicSongListDialogView;

    invoke-interface {p0, p1}, Lcom/yftech/libmusic/view/IMusicSongListDialogView;->displayMusicPlayPosition(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentPlayList()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/yftech/libmusic/presenter/MusicSongListPresenter;->musicModel:Lcom/yftech/libmusic/model/MusicModel;

    new-instance v1, Lcom/yftech/libmusic/presenter/-$$Lambda$MusicSongListPresenter$QN9J9ibzUIHMNCsAl5bjrrMs7ZE;

    invoke-direct {v1, p0}, Lcom/yftech/libmusic/presenter/-$$Lambda$MusicSongListPresenter$QN9J9ibzUIHMNCsAl5bjrrMs7ZE;-><init>(Lcom/yftech/libmusic/presenter/MusicSongListPresenter;)V

    invoke-virtual {v0, p0, v1}, Lcom/yftech/libmusic/model/MusicModel;->getCurrentPlayList(Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicSongListLoadListener;)V

    return-void
.end method

.method public getPlayListSize()V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/yftech/libmusic/presenter/MusicSongListPresenter;->musicModel:Lcom/yftech/libmusic/model/MusicModel;

    new-instance v1, Lcom/yftech/libmusic/presenter/-$$Lambda$MusicSongListPresenter$Nd2vsdudnRcwcKMbBaKWxGASeuo;

    invoke-direct {v1, p0}, Lcom/yftech/libmusic/presenter/-$$Lambda$MusicSongListPresenter$Nd2vsdudnRcwcKMbBaKWxGASeuo;-><init>(Lcom/yftech/libmusic/presenter/MusicSongListPresenter;)V

    invoke-virtual {v0, p0, v1}, Lcom/yftech/libmusic/model/MusicModel;->getPlayListSize(Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnPlayListSizeLoadListener;)V

    return-void
.end method

.method public getPlayPosition()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/yftech/libmusic/presenter/MusicSongListPresenter;->musicModel:Lcom/yftech/libmusic/model/MusicModel;

    new-instance v1, Lcom/yftech/libmusic/presenter/-$$Lambda$MusicSongListPresenter$vo7HqAGJKkTeRsVw8w7QDcQFe70;

    invoke-direct {v1, p0}, Lcom/yftech/libmusic/presenter/-$$Lambda$MusicSongListPresenter$vo7HqAGJKkTeRsVw8w7QDcQFe70;-><init>(Lcom/yftech/libmusic/presenter/MusicSongListPresenter;)V

    invoke-virtual {v0, p0, v1}, Lcom/yftech/libmusic/model/MusicModel;->getPlayPosition(Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicPlayPositionLoadListener;)V

    return-void
.end method
