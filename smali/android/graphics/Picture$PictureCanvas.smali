.class Landroid/graphics/Picture$PictureCanvas;
.super Landroid/graphics/Canvas;
.source "Picture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Picture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PictureCanvas"
.end annotation


# instance fields
.field mHoldsHwBitmap:Z

.field private final mPicture:Landroid/graphics/Picture;


# direct methods
.method public constructor <init>(Landroid/graphics/Picture;J)V
    .locals 0

    .line 213
    invoke-direct {p0, p2, p3}, Landroid/graphics/Canvas;-><init>(J)V

    .line 214
    iput-object p1, p0, Landroid/graphics/Picture$PictureCanvas;->mPicture:Landroid/graphics/Picture;

    const/4 p1, 0x0

    .line 216
    iput p1, p0, Landroid/graphics/Picture$PictureCanvas;->mDensity:I

    return-void
.end method


# virtual methods
.method public drawPicture(Landroid/graphics/Picture;)V
    .locals 1

    .line 226
    iget-object v0, p0, Landroid/graphics/Picture$PictureCanvas;->mPicture:Landroid/graphics/Picture;

    if-eq v0, p1, :cond_0

    .line 229
    invoke-super {p0, p1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    return-void

    .line 227
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Cannot draw a picture into its recording canvas"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected onHwBitmapInSwMode()V
    .locals 1

    const/4 v0, 0x1

    .line 234
    iput-boolean v0, p0, Landroid/graphics/Picture$PictureCanvas;->mHoldsHwBitmap:Z

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 221
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Cannot call setBitmap on a picture canvas"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
