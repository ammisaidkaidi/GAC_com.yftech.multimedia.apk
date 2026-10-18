.class public interface abstract Lcom/yftech/libgallery/model/interfaces/IPictureModel$OnImageListLoadListener;
.super Ljava/lang/Object;
.source "IPictureModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libgallery/model/interfaces/IPictureModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnImageListLoadListener"
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
