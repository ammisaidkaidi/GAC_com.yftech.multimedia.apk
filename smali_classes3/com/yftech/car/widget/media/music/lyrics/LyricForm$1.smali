.class Lcom/yftech/car/widget/media/music/lyrics/LyricForm$1;
.super Ljava/lang/Object;
.source "LyricForm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->parseLyric(Lcom/yftech/car/widget/media/music/lyrics/LyricView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricForm;

.field final synthetic val$lyricView:Lcom/yftech/car/widget/media/music/lyrics/LyricView;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/music/lyrics/LyricForm;Lcom/yftech/car/widget/media/music/lyrics/LyricView;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricForm$1;->this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricForm;

    iput-object p2, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricForm$1;->val$lyricView:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricForm$1;->val$lyricView:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    iget-object p0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricForm$1;->this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricForm;

    invoke-static {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->access$000(Lcom/yftech/car/widget/media/music/lyrics/LyricForm;)Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->setLyric(Lcom/yftech/car/widget/media/music/lyrics/Lyric;)V

    return-void
.end method
