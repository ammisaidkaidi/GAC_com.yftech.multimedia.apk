.class public interface abstract Lcom/yftech/libgallery/view/IPictureListActivityView;
.super Ljava/lang/Object;
.source "IPictureListActivityView.java"

# interfaces
.implements Lcom/yftech/libmvpmodule/mvp/IMvpView;


# virtual methods
.method public abstract displayPictureDeleteResult(Z)V
.end method

.method public abstract displayPictureList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/media/common/entity/QuickMultipleEntity;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract displayPictureListAfterDeleting(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/media/common/entity/QuickMultipleEntity;",
            ">;)V"
        }
    .end annotation
.end method
