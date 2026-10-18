.class public interface abstract Lcom/yftech/libmusic/view/IMusicSongListDialogView;
.super Ljava/lang/Object;
.source "IMusicSongListDialogView.java"

# interfaces
.implements Lcom/yftech/libmvpmodule/mvp/IMvpView;


# virtual methods
.method public abstract displayCurrentPlayList(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/yftech/libmusic/bean/MediaFileItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract displayMusicPlayPosition(I)V
.end method

.method public abstract displayPlayListSize(I)V
.end method
