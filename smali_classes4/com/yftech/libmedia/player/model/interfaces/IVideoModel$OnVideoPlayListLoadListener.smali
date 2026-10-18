.class public interface abstract Lcom/yftech/libmedia/player/model/interfaces/IVideoModel$OnVideoPlayListLoadListener;
.super Ljava/lang/Object;
.source "IVideoModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmedia/player/model/interfaces/IVideoModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnVideoPlayListLoadListener"
.end annotation


# virtual methods
.method public abstract onComplete(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;)V"
        }
    .end annotation
.end method
