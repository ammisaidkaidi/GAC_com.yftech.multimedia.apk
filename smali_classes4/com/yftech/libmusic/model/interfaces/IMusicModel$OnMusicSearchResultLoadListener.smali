.class public interface abstract Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicSearchResultLoadListener;
.super Ljava/lang/Object;
.source "IMusicModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmusic/model/interfaces/IMusicModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnMusicSearchResultLoadListener"
.end annotation


# virtual methods
.method public abstract onComplete(Lcom/yftech/car/media/data/entity/MediaFile;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            "Ljava/util/List<",
            "Lcom/yftech/libmusic/bean/MediaFileItem;",
            ">;)V"
        }
    .end annotation
.end method
