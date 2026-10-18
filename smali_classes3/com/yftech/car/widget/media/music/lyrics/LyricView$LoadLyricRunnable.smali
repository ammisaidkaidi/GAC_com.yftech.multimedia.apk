.class Lcom/yftech/car/widget/media/music/lyrics/LyricView$LoadLyricRunnable;
.super Ljava/lang/Object;
.source "LyricView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/music/lyrics/LyricView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadLyricRunnable"
.end annotation


# instance fields
.field private mMediaDataPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricView;


# direct methods
.method private constructor <init>(Lcom/yftech/car/widget/media/music/lyrics/LyricView;)V
    .locals 0

    .line 1226
    iput-object p1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$LoadLyricRunnable;->this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/car/widget/media/music/lyrics/LyricView;Lcom/yftech/car/widget/media/music/lyrics/LyricView$1;)V
    .locals 0

    .line 1226
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/music/lyrics/LyricView$LoadLyricRunnable;-><init>(Lcom/yftech/car/widget/media/music/lyrics/LyricView;)V

    return-void
.end method

.method static synthetic access$1802(Lcom/yftech/car/widget/media/music/lyrics/LyricView$LoadLyricRunnable;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1226
    iput-object p1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$LoadLyricRunnable;->mMediaDataPath:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1232
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$LoadLyricRunnable;->mMediaDataPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1233
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$LoadLyricRunnable;->this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->access$1500(Lcom/yftech/car/widget/media/music/lyrics/LyricView;)Lcom/yftech/car/widget/media/music/lyrics/LyricForm;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1234
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$LoadLyricRunnable;->this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->access$1500(Lcom/yftech/car/widget/media/music/lyrics/LyricView;)Lcom/yftech/car/widget/media/music/lyrics/LyricForm;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->setValid(Z)V

    .line 1235
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$LoadLyricRunnable;->this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->access$1502(Lcom/yftech/car/widget/media/music/lyrics/LyricView;Lcom/yftech/car/widget/media/music/lyrics/LyricForm;)Lcom/yftech/car/widget/media/music/lyrics/LyricForm;

    .line 1236
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$LoadLyricRunnable;->this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    iget-object v2, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$LoadLyricRunnable;->this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    invoke-static {v2}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->access$1400(Lcom/yftech/car/widget/media/music/lyrics/LyricView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->access$1102(Lcom/yftech/car/widget/media/music/lyrics/LyricView;Ljava/lang/String;)Ljava/lang/String;

    .line 1237
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$LoadLyricRunnable;->this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->access$1300(Lcom/yftech/car/widget/media/music/lyrics/LyricView;)Lcom/yftech/car/widget/media/music/lyrics/LyricView$OnLyricLoadingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1238
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$LoadLyricRunnable;->this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->access$1300(Lcom/yftech/car/widget/media/music/lyrics/LyricView;)Lcom/yftech/car/widget/media/music/lyrics/LyricView$OnLyricLoadingListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/yftech/car/widget/media/music/lyrics/LyricView$OnLyricLoadingListener;->onLoadLyric(I)V

    .line 1240
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$LoadLyricRunnable;->this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->access$1600(Lcom/yftech/car/widget/media/music/lyrics/LyricView;)V

    .line 1241
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$LoadLyricRunnable;->this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->postInvalidate()V

    .line 1244
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$LoadLyricRunnable;->this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    new-instance v1, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;

    iget-object v2, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$LoadLyricRunnable;->this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    invoke-static {v2}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->access$300(Lcom/yftech/car/widget/media/music/lyrics/LyricView;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$LoadLyricRunnable;->this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    invoke-static {v3}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->access$2000(Lcom/yftech/car/widget/media/music/lyrics/LyricView;)Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;-><init>(Landroid/os/Handler;Z)V

    invoke-static {v0, v1}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->access$1502(Lcom/yftech/car/widget/media/music/lyrics/LyricView;Lcom/yftech/car/widget/media/music/lyrics/LyricForm;)Lcom/yftech/car/widget/media/music/lyrics/LyricForm;

    .line 1245
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$LoadLyricRunnable;->this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->access$1500(Lcom/yftech/car/widget/media/music/lyrics/LyricView;)Lcom/yftech/car/widget/media/music/lyrics/LyricForm;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$LoadLyricRunnable;->this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    iget-object p0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$LoadLyricRunnable;->mMediaDataPath:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->parseLyric(Lcom/yftech/car/widget/media/music/lyrics/LyricView;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
