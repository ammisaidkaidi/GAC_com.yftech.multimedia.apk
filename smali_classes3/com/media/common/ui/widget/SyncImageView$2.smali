.class Lcom/media/common/ui/widget/SyncImageView$2;
.super Ljava/lang/Object;
.source "SyncImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/media/common/ui/widget/SyncImageView;->setMediaFilePath(ILjava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/media/common/ui/widget/SyncImageView;

.field final synthetic val$height:I

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$type:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/media/common/ui/widget/SyncImageView;ILjava/lang/String;II)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/media/common/ui/widget/SyncImageView$2;->this$0:Lcom/media/common/ui/widget/SyncImageView;

    iput p2, p0, Lcom/media/common/ui/widget/SyncImageView$2;->val$type:I

    iput-object p3, p0, Lcom/media/common/ui/widget/SyncImageView$2;->val$path:Ljava/lang/String;

    iput p4, p0, Lcom/media/common/ui/widget/SyncImageView$2;->val$width:I

    iput p5, p0, Lcom/media/common/ui/widget/SyncImageView$2;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 118
    iget v0, p0, Lcom/media/common/ui/widget/SyncImageView$2;->val$type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/media/common/ui/widget/SyncImageView$2;->val$path:Ljava/lang/String;

    const-wide/16 v1, 0x1388

    iget v3, p0, Lcom/media/common/ui/widget/SyncImageView$2;->val$width:I

    iget v4, p0, Lcom/media/common/ui/widget/SyncImageView$2;->val$height:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/yftech/car/media/video/util/VideoBitmapUtil;->loadVideo(Ljava/lang/String;JII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 120
    :cond_0
    iget v0, p0, Lcom/media/common/ui/widget/SyncImageView$2;->val$type:I

    if-nez v0, :cond_1

    .line 121
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object v0

    iget-object v1, p0, Lcom/media/common/ui/widget/SyncImageView$2;->val$path:Ljava/lang/String;

    iget v2, p0, Lcom/media/common/ui/widget/SyncImageView$2;->val$width:I

    iget v3, p0, Lcom/media/common/ui/widget/SyncImageView$2;->val$height:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/yftech/car/media/music/CarMusicManager;->getMusicAlbumBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    .line 124
    new-array v2, v1, [B

    if-eqz v0, :cond_2

    .line 126
    invoke-static {v0}, Lcom/media/common/util/BitmapUtils;->getBitmapByte(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    .line 133
    :cond_2
    iget-object v3, p0, Lcom/media/common/ui/widget/SyncImageView$2;->this$0:Lcom/media/common/ui/widget/SyncImageView;

    invoke-static {v3}, Lcom/media/common/ui/widget/SyncImageView;->access$300(Lcom/media/common/ui/widget/SyncImageView;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    const/4 v4, 0x0

    .line 134
    iput v4, v3, Landroid/os/Message;->what:I

    .line 136
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "BUNDLE_WIDTH"

    if-nez v0, :cond_3

    move v7, v4

    goto :goto_1

    .line 137
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    :goto_1
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "BUNDLE_HEIGHT"

    if-nez v0, :cond_4

    goto :goto_2

    .line 138
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    :goto_2
    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "BUNDLE_THUMBDATA"

    if-nez v2, :cond_5

    .line 139
    new-array v2, v1, [B

    :cond_5
    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v0, "BUNDLE_PATH"

    .line 140
    iget-object v1, p0, Lcom/media/common/ui/widget/SyncImageView$2;->val$path:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {v3, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 142
    iget-object p0, p0, Lcom/media/common/ui/widget/SyncImageView$2;->this$0:Lcom/media/common/ui/widget/SyncImageView;

    invoke-static {p0}, Lcom/media/common/ui/widget/SyncImageView;->access$300(Lcom/media/common/ui/widget/SyncImageView;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
