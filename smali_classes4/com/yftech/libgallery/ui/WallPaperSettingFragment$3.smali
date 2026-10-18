.class Lcom/yftech/libgallery/ui/WallPaperSettingFragment$3;
.super Ljava/lang/Object;
.source "WallPaperSettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->setImageAndClipParams()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libgallery/ui/WallPaperSettingFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$3;->this$0:Lcom/yftech/libgallery/ui/WallPaperSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 191
    iget-object v0, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$3;->this$0:Lcom/yftech/libgallery/ui/WallPaperSettingFragment;

    iget-object v1, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$3;->this$0:Lcom/yftech/libgallery/ui/WallPaperSettingFragment;

    invoke-virtual {v1}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/SystemUtil;->getWallPaperOutputPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->access$002(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$3;->this$0:Lcom/yftech/libgallery/ui/WallPaperSettingFragment;

    invoke-static {v0}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->access$400(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;)Lcom/yftech/libgallery/view/ClipImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$3;->this$0:Lcom/yftech/libgallery/ui/WallPaperSettingFragment;

    invoke-static {v1}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->access$300(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yftech/libgallery/view/ClipImageView;->setMaxOutputWidth(I)V

    .line 195
    iget-object v0, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$3;->this$0:Lcom/yftech/libgallery/ui/WallPaperSettingFragment;

    iget-object v1, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$3;->this$0:Lcom/yftech/libgallery/ui/WallPaperSettingFragment;

    invoke-static {v1}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->access$100(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->readPictureDegree(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->access$502(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;I)I

    .line 197
    iget-object v0, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$3;->this$0:Lcom/yftech/libgallery/ui/WallPaperSettingFragment;

    invoke-static {v0}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->access$500(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x5a

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$3;->this$0:Lcom/yftech/libgallery/ui/WallPaperSettingFragment;

    invoke-static {v0}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->access$500(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;)I

    move-result v0

    const/16 v3, 0x10e

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 199
    :goto_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 200
    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 201
    iget-object v1, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$3;->this$0:Lcom/yftech/libgallery/ui/WallPaperSettingFragment;

    invoke-static {v1}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->access$100(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 203
    iget-object v1, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$3;->this$0:Lcom/yftech/libgallery/ui/WallPaperSettingFragment;

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v1, v4}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->access$602(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;I)I

    .line 204
    iget-object v1, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$3;->this$0:Lcom/yftech/libgallery/ui/WallPaperSettingFragment;

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1, v4}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->access$702(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;I)I

    if-eqz v0, :cond_2

    .line 207
    iget v0, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_2

    :cond_2
    iget v0, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 210
    :goto_2
    iget-object v1, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$3;->this$0:Lcom/yftech/libgallery/ui/WallPaperSettingFragment;

    iget-object v4, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$3;->this$0:Lcom/yftech/libgallery/ui/WallPaperSettingFragment;

    invoke-static {v4}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->access$400(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;)Lcom/yftech/libgallery/view/ClipImageView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yftech/libgallery/view/ClipImageView;->getClipBorder()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {v0, v4}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->access$900(II)I

    move-result v0

    invoke-static {v1, v0}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->access$802(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;I)I

    .line 212
    iput-boolean v2, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 213
    iget-object v0, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$3;->this$0:Lcom/yftech/libgallery/ui/WallPaperSettingFragment;

    invoke-static {v0}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->access$800(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;)I

    move-result v0

    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 214
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 215
    iget-object v0, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$3;->this$0:Lcom/yftech/libgallery/ui/WallPaperSettingFragment;

    invoke-static {v0}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->access$100(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$3;->this$0:Lcom/yftech/libgallery/ui/WallPaperSettingFragment;

    invoke-static {v1}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->access$500(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;)I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_3

    .line 222
    :cond_3
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 223
    iget-object v1, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$3;->this$0:Lcom/yftech/libgallery/ui/WallPaperSettingFragment;

    invoke-static {v1}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->access$500(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v9, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 224
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x0

    move-object v4, v0

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v1, v0, :cond_4

    .line 225
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 226
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    move-object v0, v1

    .line 229
    :goto_3
    iget-object v1, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$3;->this$0:Lcom/yftech/libgallery/ui/WallPaperSettingFragment;

    invoke-static {v1}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->access$400(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;)Lcom/yftech/libgallery/view/ClipImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yftech/libgallery/view/ClipImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 230
    iget-object p0, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$3;->this$0:Lcom/yftech/libgallery/ui/WallPaperSettingFragment;

    invoke-static {p0}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->access$1000(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
