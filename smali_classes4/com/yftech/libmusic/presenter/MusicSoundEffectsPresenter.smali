.class public Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;
.super Lcom/yftech/libmvpmodule/BasePresenter;
.source "MusicSoundEffectsPresenter.java"

# interfaces
.implements Lcom/yftech/libmusic/presenter/interfaces/IMusicSoundEffectsPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/libmvpmodule/BasePresenter<",
        "Lcom/yftech/libmusic/view/IMusicSoundEffectsDialogView;",
        ">;",
        "Lcom/yftech/libmusic/presenter/interfaces/IMusicSoundEffectsPresenter;"
    }
.end annotation


# instance fields
.field private musicModel:Lcom/yftech/libmusic/model/MusicModel;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/yftech/libmvpmodule/BasePresenter;-><init>(Landroid/app/Activity;)V

    .line 13
    new-instance p1, Lcom/yftech/libmusic/model/MusicModel;

    invoke-direct {p1}, Lcom/yftech/libmusic/model/MusicModel;-><init>()V

    iput-object p1, p0, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;->musicModel:Lcom/yftech/libmusic/model/MusicModel;

    return-void
.end method


# virtual methods
.method public getBandCurValue()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;->musicModel:Lcom/yftech/libmusic/model/MusicModel;

    new-instance v1, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter$4;

    invoke-direct {v1, p0}, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter$4;-><init>(Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;)V

    invoke-virtual {v0, p0, v1}, Lcom/yftech/libmusic/model/MusicModel;->getBandCurValue(Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnBandValueLoadListener;)V

    return-void
.end method

.method public getBandMaxValue()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;->musicModel:Lcom/yftech/libmusic/model/MusicModel;

    new-instance v1, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter$6;

    invoke-direct {v1, p0}, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter$6;-><init>(Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;)V

    invoke-virtual {v0, p0, v1}, Lcom/yftech/libmusic/model/MusicModel;->getBandMaxValue(Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnBandValueLoadListener;)V

    return-void
.end method

.method public getBandMinValue()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;->musicModel:Lcom/yftech/libmusic/model/MusicModel;

    new-instance v1, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter$5;

    invoke-direct {v1, p0}, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter$5;-><init>(Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;)V

    invoke-virtual {v0, p0, v1}, Lcom/yftech/libmusic/model/MusicModel;->getBandMinValue(Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnBandValueLoadListener;)V

    return-void
.end method

.method public getEQType()V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;->musicModel:Lcom/yftech/libmusic/model/MusicModel;

    new-instance v1, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter$1;

    invoke-direct {v1, p0}, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter$1;-><init>(Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;)V

    invoke-virtual {v0, p0, v1}, Lcom/yftech/libmusic/model/MusicModel;->getEQType(Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnEQTypeLoadListener;)V

    return-void
.end method

.method public setBandValue([F)V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;->musicModel:Lcom/yftech/libmusic/model/MusicModel;

    new-instance v1, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter$3;

    invoke-direct {v1, p0}, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter$3;-><init>(Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;)V

    invoke-virtual {v0, p1, p0, v1}, Lcom/yftech/libmusic/model/MusicModel;->setBandValue([FLcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnBandValueSettingResultLoadListener;)V

    return-void
.end method

.method public setDTSType(I)V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;->musicModel:Lcom/yftech/libmusic/model/MusicModel;

    new-instance v1, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter$7;

    invoke-direct {v1, p0}, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter$7;-><init>(Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;)V

    invoke-virtual {v0, p1, p0, v1}, Lcom/yftech/libmusic/model/MusicModel;->setDTSType(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnsetDTSTypeSettingResultLoadListener;)V

    return-void
.end method

.method public setEQType(I)V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;->musicModel:Lcom/yftech/libmusic/model/MusicModel;

    new-instance v1, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter$2;

    invoke-direct {v1, p0}, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter$2;-><init>(Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;)V

    invoke-virtual {v0, p1, p0, v1}, Lcom/yftech/libmusic/model/MusicModel;->setEQType(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnEQTypeSettingResultLoadListener;)V

    return-void
.end method
