.class public final synthetic Lcom/yftech/libmusic/presenter/-$$Lambda$MusicSongListPresenter$Q-cyI5gUs8e1I3ihvOQ7FvOlUuI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/yftech/libmusic/presenter/MusicSongListPresenter;

.field private final synthetic f$1:I

.field private final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/yftech/libmusic/presenter/MusicSongListPresenter;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yftech/libmusic/presenter/-$$Lambda$MusicSongListPresenter$Q-cyI5gUs8e1I3ihvOQ7FvOlUuI;->f$0:Lcom/yftech/libmusic/presenter/MusicSongListPresenter;

    iput p2, p0, Lcom/yftech/libmusic/presenter/-$$Lambda$MusicSongListPresenter$Q-cyI5gUs8e1I3ihvOQ7FvOlUuI;->f$1:I

    iput-object p3, p0, Lcom/yftech/libmusic/presenter/-$$Lambda$MusicSongListPresenter$Q-cyI5gUs8e1I3ihvOQ7FvOlUuI;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/yftech/libmusic/presenter/-$$Lambda$MusicSongListPresenter$Q-cyI5gUs8e1I3ihvOQ7FvOlUuI;->f$0:Lcom/yftech/libmusic/presenter/MusicSongListPresenter;

    iget v1, p0, Lcom/yftech/libmusic/presenter/-$$Lambda$MusicSongListPresenter$Q-cyI5gUs8e1I3ihvOQ7FvOlUuI;->f$1:I

    iget-object p0, p0, Lcom/yftech/libmusic/presenter/-$$Lambda$MusicSongListPresenter$Q-cyI5gUs8e1I3ihvOQ7FvOlUuI;->f$2:Ljava/util/List;

    invoke-static {v0, v1, p0}, Lcom/yftech/libmusic/presenter/MusicSongListPresenter;->lambda$null$2(Lcom/yftech/libmusic/presenter/MusicSongListPresenter;ILjava/util/List;)V

    return-void
.end method
