.class Lcom/yftech/car/widget/media/music/lyrics/LyricView$3;
.super Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicControlCallback;
.source "LyricView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/car/widget/media/music/lyrics/LyricView;->getCarMusicControlCallback()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicControlCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricView;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/music/lyrics/LyricView;)V
    .locals 0

    .line 1178
    iput-object p1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$3;->this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicControlCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangePlayMusic(Lcom/yftech/car/media/data/entity/MediaFile;)V
    .locals 4

    .line 1181
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$3;->this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->access$902(Lcom/yftech/car/widget/media/music/lyrics/LyricView;Lcom/yftech/car/widget/media/music/lyrics/Lyric;)Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    .line 1182
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$3;->this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    invoke-static {v0, v1}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->access$1002(Lcom/yftech/car/widget/media/music/lyrics/LyricView;Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;)Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;

    if-eqz p1, :cond_4

    .line 1183
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "unknown"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1195
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$3;->this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->access$1300(Lcom/yftech/car/widget/media/music/lyrics/LyricView;)Lcom/yftech/car/widget/media/music/lyrics/LyricView$OnLyricLoadingListener;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1196
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$3;->this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->access$1300(Lcom/yftech/car/widget/media/music/lyrics/LyricView;)Lcom/yftech/car/widget/media/music/lyrics/LyricView$OnLyricLoadingListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/yftech/car/widget/media/music/lyrics/LyricView$OnLyricLoadingListener;->onLoadLyric(I)V

    .line 1198
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$3;->this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    iget-object v3, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$3;->this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    invoke-static {v3}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->access$1400(Lcom/yftech/car/widget/media/music/lyrics/LyricView;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->access$1102(Lcom/yftech/car/widget/media/music/lyrics/LyricView;Ljava/lang/String;)Ljava/lang/String;

    .line 1199
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v0, v3, :cond_2

    .line 1200
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$3;->this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->invalidate()V

    goto :goto_0

    .line 1202
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$3;->this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->postInvalidate()V

    .line 1205
    :goto_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$3;->this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->access$1500(Lcom/yftech/car/widget/media/music/lyrics/LyricView;)Lcom/yftech/car/widget/media/music/lyrics/LyricForm;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1206
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$3;->this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->access$1500(Lcom/yftech/car/widget/media/music/lyrics/LyricView;)Lcom/yftech/car/widget/media/music/lyrics/LyricForm;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->setValid(Z)V

    .line 1207
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$3;->this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->access$1600(Lcom/yftech/car/widget/media/music/lyrics/LyricView;)V

    .line 1208
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$3;->this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    invoke-static {v0, v1}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->access$1502(Lcom/yftech/car/widget/media/music/lyrics/LyricView;Lcom/yftech/car/widget/media/music/lyrics/LyricForm;)Lcom/yftech/car/widget/media/music/lyrics/LyricForm;

    .line 1210
    :cond_3
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$3;->this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->access$1700(Lcom/yftech/car/widget/media/music/lyrics/LyricView;)Lcom/yftech/car/widget/media/music/lyrics/LyricView$LoadLyricRunnable;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/car/widget/media/music/lyrics/LyricView$LoadLyricRunnable;->access$1802(Lcom/yftech/car/widget/media/music/lyrics/LyricView$LoadLyricRunnable;Ljava/lang/String;)Ljava/lang/String;

    .line 1213
    invoke-static {}, Lcom/yftech/car/widget/media/utils/TaskManager;->getInstance()Lcom/yftech/car/widget/media/utils/TaskManager;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$3;->this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    invoke-static {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->access$1700(Lcom/yftech/car/widget/media/music/lyrics/LyricView;)Lcom/yftech/car/widget/media/music/lyrics/LyricView$LoadLyricRunnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/utils/TaskManager;->threadRunnable(Ljava/lang/Runnable;)V

    return-void

    .line 1184
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$3;->this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$3;->this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->access$1200(Lcom/yftech/car/widget/media/music/lyrics/LyricView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->access$1102(Lcom/yftech/car/widget/media/music/lyrics/LyricView;Ljava/lang/String;)Ljava/lang/String;

    .line 1185
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$3;->this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    invoke-static {p1}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->access$1300(Lcom/yftech/car/widget/media/music/lyrics/LyricView;)Lcom/yftech/car/widget/media/music/lyrics/LyricView$OnLyricLoadingListener;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1186
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$3;->this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    invoke-static {p1}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->access$1300(Lcom/yftech/car/widget/media/music/lyrics/LyricView;)Lcom/yftech/car/widget/media/music/lyrics/LyricView$OnLyricLoadingListener;

    move-result-object p1

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView$OnLyricLoadingListener;->onLoadLyric(I)V

    .line 1188
    :cond_5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 1189
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$3;->this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->invalidate()V

    goto :goto_2

    .line 1191
    :cond_6
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$3;->this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->postInvalidate()V

    :goto_2
    return-void
.end method

.method public onChangePlaying(Z)V
    .locals 0

    .line 1219
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$3;->this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->access$402(Lcom/yftech/car/widget/media/music/lyrics/LyricView;Z)Z

    return-void
.end method
