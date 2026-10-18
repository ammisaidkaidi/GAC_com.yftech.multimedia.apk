.class Lcom/yftech/libgallery/ui/WallPaperSettingFragment$4;
.super Ljava/lang/Object;
.source "WallPaperSettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->clipImage()V
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

    .line 291
    iput-object p1, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$4;->this$0:Lcom/yftech/libgallery/ui/WallPaperSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    .line 297
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$4;->this$0:Lcom/yftech/libgallery/ui/WallPaperSettingFragment;

    invoke-static {v2}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->access$000(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    :try_start_1
    iget-object v0, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$4;->this$0:Lcom/yftech/libgallery/ui/WallPaperSettingFragment;

    invoke-static {v0}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->access$1100(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 299
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 306
    iget-object v2, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$4;->this$0:Lcom/yftech/libgallery/ui/WallPaperSettingFragment;

    invoke-static {v2}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->access$1200(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 308
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 309
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 317
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 318
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v1, v0

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 312
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 313
    iget-object p0, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$4;->this$0:Lcom/yftech/libgallery/ui/WallPaperSettingFragment;

    invoke-static {p0}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->access$1200(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    .line 317
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 318
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 320
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void

    :catchall_1
    move-exception p0

    :goto_2
    if-eqz v1, :cond_2

    .line 317
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 318
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 320
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 323
    :cond_2
    :goto_3
    throw p0
.end method
