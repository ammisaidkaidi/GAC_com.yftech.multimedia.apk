.class public Lcom/yftech/car/widget/media/photo/photoview/PhotoView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "PhotoView.java"

# interfaces
.implements Lcom/yftech/car/widget/media/photo/photoview/IPhotoView;


# instance fields
.field public final mAttacher:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

.field private mPendingScaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, v0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 48
    new-instance p1, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-direct {p1, p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V

    iput-object p1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->mAttacher:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    .line 50
    iget-object p1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->mPendingScaleType:Landroid/widget/ImageView$ScaleType;

    if-eqz p1, :cond_0

    .line 51
    iget-object p1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->mPendingScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->mPendingScaleType:Landroid/widget/ImageView$ScaleType;

    :cond_0
    return-void
.end method


# virtual methods
.method public canZoom()Z
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->mAttacher:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->canZoom()Z

    move-result p0

    return p0
.end method

.method public getDisplayMatrix()Landroid/graphics/Matrix;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->mAttacher:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->mAttacher:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public getIPhotoViewImplementation()Lcom/yftech/car/widget/media/photo/photoview/IPhotoView;
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->mAttacher:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    return-object p0
.end method

.method public getMaxScale()F
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 124
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->getMaximumScale()F

    move-result p0

    return p0
.end method

.method public getMaximumScale()F
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->mAttacher:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getMaximumScale()F

    move-result p0

    return p0
.end method

.method public getMediumScale()F
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->mAttacher:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getMediumScale()F

    move-result p0

    return p0
.end method

.method public getMidScale()F
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 113
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->getMediumScale()F

    move-result p0

    return p0
.end method

.method public getMinScale()F
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 102
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->getMinimumScale()F

    move-result p0

    return p0
.end method

.method public getMinimumScale()F
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->mAttacher:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getMinimumScale()F

    move-result p0

    return p0
.end method

.method public getOnPhotoTapListener()Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$OnPhotoTapListener;
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->mAttacher:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getOnPhotoTapListener()Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$OnPhotoTapListener;

    move-result-object p0

    return-object p0
.end method

.method public getOnViewTapListener()Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$OnViewTapListener;
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->mAttacher:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getOnViewTapListener()Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$OnViewTapListener;

    move-result-object p0

    return-object p0
.end method

.method public getScale()F
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->mAttacher:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getScale()F

    move-result p0

    return p0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->mAttacher:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object p0

    return-object p0
.end method

.method public getVisibleRectangleBitmap()Landroid/graphics/Bitmap;
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->mAttacher:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getVisibleRectangleBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->mAttacher:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->cleanup()V

    .line 287
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onDetachedFromWindow()V

    return-void
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->mAttacher:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->setAllowParentInterceptOnEdge(Z)V

    return-void
.end method

.method public setDisplayMatrix(Landroid/graphics/Matrix;)Z
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->mAttacher:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->setDisplayMatrix(Landroid/graphics/Matrix;)Z

    move-result p0

    return p0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 183
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    iget-object p1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->mAttacher:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    if-eqz p1, :cond_0

    .line 185
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->mAttacher:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->update()V

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 191
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 192
    iget-object p1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->mAttacher:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    if-eqz p1, :cond_0

    .line 193
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->mAttacher:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->update()V

    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 199
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    .line 200
    iget-object p1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->mAttacher:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    if-eqz p1, :cond_0

    .line 201
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->mAttacher:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->update()V

    :cond_0
    return-void
.end method

.method public setMaxScale(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 172
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->setMaximumScale(F)V

    return-void
.end method

.method public setMaximumScale(F)V
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->mAttacher:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->setMaximumScale(F)V

    return-void
.end method

.method public setMediumScale(F)V
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->mAttacher:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->setMediumScale(F)V

    return-void
.end method

.method public setMidScale(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 161
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->setMediumScale(F)V

    return-void
.end method

.method public setMinScale(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 150
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->setMinimumScale(F)V

    return-void
.end method

.method public setMinimumScale(F)V
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->mAttacher:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->setMinimumScale(F)V

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 0

    .line 281
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->mAttacher:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->mAttacher:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setOnMatrixChangeListener(Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->mAttacher:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->setOnMatrixChangeListener(Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V

    return-void
.end method

.method public setOnPhotoTapListener(Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$OnPhotoTapListener;)V
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->mAttacher:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->setOnPhotoTapListener(Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$OnPhotoTapListener;)V

    return-void
.end method

.method public setOnViewTapListener(Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$OnViewTapListener;)V
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->mAttacher:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->setOnViewTapListener(Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$OnViewTapListener;)V

    return-void
.end method

.method public setPhotoViewRotation(F)V
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->mAttacher:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->setRotationTo(F)V

    return-void
.end method

.method public setRotationBy(F)V
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->mAttacher:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->setRotationBy(F)V

    return-void
.end method

.method public setRotationLocation(FFF)V
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->mAttacher:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->setRotationLocation(FFF)V

    return-void
.end method

.method public setRotationTo(F)V
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->mAttacher:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->setRotationTo(F)V

    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->mAttacher:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->setScale(F)V

    return-void
.end method

.method public setScale(FFFZ)V
    .locals 0

    .line 247
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->mAttacher:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    return-void
.end method

.method public setScale(FZ)V
    .locals 0

    .line 242
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->mAttacher:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->setScale(FZ)V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->mAttacher:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    if-eqz v0, :cond_0

    .line 253
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->mAttacher:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 255
    :cond_0
    iput-object p1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->mPendingScaleType:Landroid/widget/ImageView$ScaleType;

    :goto_0
    return-void
.end method

.method public setZoomTransitionDuration(I)V
    .locals 0

    .line 271
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->mAttacher:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->setZoomTransitionDuration(I)V

    return-void
.end method

.method public setZoomable(Z)V
    .locals 0

    .line 261
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->mAttacher:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->setZoomable(Z)V

    return-void
.end method
