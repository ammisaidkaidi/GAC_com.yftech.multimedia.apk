.class public interface abstract Lcom/yftech/libmusic/view/IMusicSearchActivityView;
.super Ljava/lang/Object;
.source "IMusicSearchActivityView.java"

# interfaces
.implements Lcom/yftech/libmvpmodule/mvp/IMvpView;


# virtual methods
.method public abstract displayHotMusicSearchResult(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract displayMusicSearchResult(Lcom/yftech/car/media/data/entity/MediaFile;Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            "Ljava/util/List<",
            "Lcom/yftech/libmusic/bean/MediaFileItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method
