.class public Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;
.super Ljava/lang/Object;
.source "RadioDataPlayManager.java"


# static fields
.field private static mRadioDataPlayManager:Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;


# instance fields
.field private isPlaying:Z

.field private mDataOfRadio:Lcom/yftech/car/media/radio/entity/DataOfRadio;

.field private mFavorStatusAddFavorFail:Ljava/lang/String;

.field private mFavorStatusAddFavorSuccess:Ljava/lang/String;

.field private mFavorStatusAmFavorMax:I

.field private mFavorStatusFm1FavorMax:I

.field private mFavorStatusFmFavorMax:I

.field private mFavorStatusIncreasedMaxLimit:Ljava/lang/String;

.field private mFavorStatusMaxUpdateoldData:Z

.field private mFavorStatusRemoveFavorFail:Ljava/lang/String;

.field private mFavorStatusRemoveFavorSuccess:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->mFavorStatusFmFavorMax:I

    .line 44
    iput v0, p0, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->mFavorStatusFm1FavorMax:I

    .line 45
    iput v0, p0, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->mFavorStatusAmFavorMax:I

    .line 53
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->mFavorStatusMaxUpdateoldData:Z

    return-void
.end method

.method public static getInstance()Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;
    .locals 2

    .line 30
    sget-object v0, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->mRadioDataPlayManager:Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;

    if-nez v0, :cond_1

    .line 31
    const-class v0, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->mRadioDataPlayManager:Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;

    invoke-direct {v1}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;-><init>()V

    sput-object v1, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->mRadioDataPlayManager:Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;

    .line 35
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 37
    :cond_1
    :goto_0
    sget-object v0, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->mRadioDataPlayManager:Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;

    return-object v0
.end method


# virtual methods
.method public getDataOfRadio()Lcom/yftech/car/media/radio/entity/DataOfRadio;
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->mDataOfRadio:Lcom/yftech/car/media/radio/entity/DataOfRadio;

    return-object p0
.end method

.method public getFavorStatusAddFavorFail()Ljava/lang/String;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->mFavorStatusAddFavorFail:Ljava/lang/String;

    return-object p0
.end method

.method public getFavorStatusAddFavorSuccess()Ljava/lang/String;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->mFavorStatusAddFavorSuccess:Ljava/lang/String;

    return-object p0
.end method

.method public getFavorStatusAmFavorMax()I
    .locals 0

    .line 80
    iget p0, p0, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->mFavorStatusAmFavorMax:I

    return p0
.end method

.method public getFavorStatusFm1FavorMax()I
    .locals 0

    .line 68
    iget p0, p0, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->mFavorStatusFm1FavorMax:I

    return p0
.end method

.method public getFavorStatusFmFavorMax()I
    .locals 0

    .line 56
    iget p0, p0, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->mFavorStatusFmFavorMax:I

    return p0
.end method

.method public getFavorStatusIncreasedMaxLimit()Ljava/lang/String;
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->mFavorStatusIncreasedMaxLimit:Ljava/lang/String;

    return-object p0
.end method

.method public getFavorStatusRemoveFavorFail()Ljava/lang/String;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->mFavorStatusRemoveFavorFail:Ljava/lang/String;

    return-object p0
.end method

.method public getFavorStatusRemoveFavorSuccess()Ljava/lang/String;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->mFavorStatusRemoveFavorSuccess:Ljava/lang/String;

    return-object p0
.end method

.method public isFavorStatusMaxUpdateoldData()Z
    .locals 0

    .line 152
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->mFavorStatusMaxUpdateoldData:Z

    return p0
.end method

.method public isPlaying()Z
    .locals 0

    .line 180
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->isPlaying:Z

    return p0
.end method

.method public setFavorStatusAddFavorFail(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->mFavorStatusAddFavorFail:Ljava/lang/String;

    return-void
.end method

.method public setFavorStatusAddFavorSuccess(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->mFavorStatusAddFavorSuccess:Ljava/lang/String;

    return-void
.end method

.method public setFavorStatusAmFavorMax(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->mFavorStatusAmFavorMax:I

    return-void
.end method

.method public setFavorStatusFm1FavorMax(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->mFavorStatusFm1FavorMax:I

    return-void
.end method

.method public setFavorStatusFmFavorMax(I)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->mFavorStatusFmFavorMax:I

    return-void
.end method

.method public setFavorStatusIncreasedMaxLimit(Ljava/lang/String;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->mFavorStatusIncreasedMaxLimit:Ljava/lang/String;

    return-void
.end method

.method public setFavorStatusMaxUpdateoldData(Z)V
    .locals 0

    .line 160
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->mFavorStatusMaxUpdateoldData:Z

    return-void
.end method

.method public setFavorStatusRemoveFavorFail(Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->mFavorStatusRemoveFavorFail:Ljava/lang/String;

    return-void
.end method

.method public setFavorStatusRemoveFavorSuccess(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->mFavorStatusRemoveFavorSuccess:Ljava/lang/String;

    return-void
.end method

.method public setPlayFreq(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->mDataOfRadio:Lcom/yftech/car/media/radio/entity/DataOfRadio;

    return-object p0
.end method

.method public setPlaying(Z)Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;
    .locals 0

    .line 166
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->isPlaying:Z

    return-object p0
.end method
