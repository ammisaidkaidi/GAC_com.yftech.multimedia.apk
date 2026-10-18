.class public interface abstract Lcom/yftech/libmusic/view/IMusicPlayerFragmentView;
.super Ljava/lang/Object;
.source "IMusicPlayerFragmentView.java"

# interfaces
.implements Lcom/yftech/libmvpmodule/mvp/IMvpView;


# virtual methods
.method public abstract displayMusicFiles(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract displayMusicLyricPath(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/libmusic/bean/LyricObject;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract displayThumbDataByPath(Ljava/lang/String;[B)V
.end method
