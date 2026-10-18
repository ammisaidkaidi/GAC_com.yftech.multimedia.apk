.class Lcom/yftech/libmusic/ui/MusicLyricFragment$2;
.super Ljava/lang/Object;
.source "MusicLyricFragment.java"

# interfaces
.implements Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmusic/ui/MusicLyricFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/ui/MusicLyricFragment;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$2;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextItemClick(ILcom/yftech/libmusic/bean/LyricObject;)V
    .locals 2

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTextItemClick:position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lyricObject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    iget v1, p2, Lcom/yftech/libmusic/bean/LyricObject;->begintime:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$2;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->access$600(Lcom/yftech/libmusic/ui/MusicLyricFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 234
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 235
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 236
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$2;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-static {p0}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->access$600(Lcom/yftech/libmusic/ui/MusicLyricFragment;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 p1, 0x190

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
