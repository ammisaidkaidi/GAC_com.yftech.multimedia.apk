.class public abstract Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;
.super Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
.source "BaseFileHolder.java"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 46
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMediaFile()Lcom/yftech/car/media/data/entity/MediaFile;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isCheckBox()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isValid()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setCheckBoxVisibility(I)V
    .locals 0

    return-void
.end method

.method public setDateTime(Lcom/yftech/car/media/data/entity/MediaFile;)V
    .locals 0

    return-void
.end method

.method public setFailedResDrawable()V
    .locals 0

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public setImageLoadingHide()V
    .locals 0

    return-void
.end method

.method public setImageLoadingStatus(Z)V
    .locals 0

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    return-void
.end method

.method public setMediaFile(Lcom/yftech/car/media/data/entity/MediaFile;I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
