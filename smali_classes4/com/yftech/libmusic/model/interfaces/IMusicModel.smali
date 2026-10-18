.class public interface abstract Lcom/yftech/libmusic/model/interfaces/IMusicModel;
.super Ljava/lang/Object;
.source "IMusicModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnThumbDataLoadListener;,
        Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnsetDTSTypeSettingResultLoadListener;,
        Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnBandValueSettingResultLoadListener;,
        Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnBandValueLoadListener;,
        Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnEQTypeSettingResultLoadListener;,
        Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnEQTypeLoadListener;,
        Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicLyricLoadListener;,
        Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicSearchResultLoadListener;,
        Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicPlayPositionLoadListener;,
        Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicSongListLoadListener;,
        Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnPlayListSizeLoadListener;,
        Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnHotMusicLoadListener;,
        Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicLoadListener;,
        Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicFilesLoadListener;
    }
.end annotation


# virtual methods
.method public abstract getBandCurValue(Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnBandValueLoadListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnBandValueLoadListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getBandMaxValue(Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnBandValueLoadListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnBandValueLoadListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getBandMinValue(Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnBandValueLoadListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnBandValueLoadListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getCurrentPlayList(Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicSongListLoadListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicSongListLoadListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getEQType(Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnEQTypeLoadListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnEQTypeLoadListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getHotMusicByKeyword(Ljava/lang/String;Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnHotMusicLoadListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnHotMusicLoadListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getLyricFromFile(Lcom/yftech/car/media/data/entity/MediaFile;Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicLyricLoadListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicLyricLoadListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getMusic(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicLoadListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicLoadListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getMusicFiles(Ljava/lang/String;Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicFilesLoadListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicFilesLoadListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getPlayListSize(Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnPlayListSizeLoadListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnPlayListSizeLoadListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getPlayPosition(Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicPlayPositionLoadListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicPlayPositionLoadListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getThumbDataByPath(Ljava/lang/String;Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnThumbDataLoadListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnThumbDataLoadListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract searchMusic(Ljava/lang/String;ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicSearchResultLoadListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicSearchResultLoadListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setBandValue([FLcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnBandValueSettingResultLoadListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnBandValueSettingResultLoadListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setDTSType(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnsetDTSTypeSettingResultLoadListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnsetDTSTypeSettingResultLoadListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setEQType(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnEQTypeSettingResultLoadListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/yftech/libmvpmodule/BasePresenter<",
            "+",
            "Lcom/yftech/libmvpmodule/mvp/IMvpView;",
            ">;",
            "Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnEQTypeSettingResultLoadListener;",
            ")V"
        }
    .end annotation
.end method
