.class public final synthetic Lcom/yftech/libmusic/presenter/-$$Lambda$MusicSongListPresenter$QN9J9ibzUIHMNCsAl5bjrrMs7ZE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicSongListLoadListener;


# instance fields
.field private final synthetic f$0:Lcom/yftech/libmusic/presenter/MusicSongListPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/yftech/libmusic/presenter/MusicSongListPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yftech/libmusic/presenter/-$$Lambda$MusicSongListPresenter$QN9J9ibzUIHMNCsAl5bjrrMs7ZE;->f$0:Lcom/yftech/libmusic/presenter/MusicSongListPresenter;

    return-void
.end method


# virtual methods
.method public final onComplete(ILjava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/yftech/libmusic/presenter/-$$Lambda$MusicSongListPresenter$QN9J9ibzUIHMNCsAl5bjrrMs7ZE;->f$0:Lcom/yftech/libmusic/presenter/MusicSongListPresenter;

    invoke-static {p0, p1, p2}, Lcom/yftech/libmusic/presenter/MusicSongListPresenter;->lambda$getCurrentPlayList$3(Lcom/yftech/libmusic/presenter/MusicSongListPresenter;ILjava/util/List;)V

    return-void
.end method
