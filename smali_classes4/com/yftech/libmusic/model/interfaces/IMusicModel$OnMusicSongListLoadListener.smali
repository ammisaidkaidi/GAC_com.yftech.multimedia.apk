.class public interface abstract Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnMusicSongListLoadListener;
.super Ljava/lang/Object;
.source "IMusicModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmusic/model/interfaces/IMusicModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnMusicSongListLoadListener"
.end annotation


# virtual methods
.method public abstract onComplete(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/yftech/libmusic/bean/MediaFileItem;",
            ">;)V"
        }
    .end annotation
.end method
