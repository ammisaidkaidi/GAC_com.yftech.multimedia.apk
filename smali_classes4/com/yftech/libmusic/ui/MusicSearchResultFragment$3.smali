.class Lcom/yftech/libmusic/ui/MusicSearchResultFragment$3;
.super Ljava/lang/Object;
.source "MusicSearchResultFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/ui/MusicSearchResultFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/ui/MusicSearchResultFragment;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment$3;->this$0:Lcom/yftech/libmusic/ui/MusicSearchResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemChildClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 3

    .line 120
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment$3;->this$0:Lcom/yftech/libmusic/ui/MusicSearchResultFragment;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->access$000(Lcom/yftech/libmusic/ui/MusicSearchResultFragment;)Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/libmusic/bean/MediaFileItem;

    if-eqz p1, :cond_0

    .line 124
    iget-object p2, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment$3;->this$0:Lcom/yftech/libmusic/ui/MusicSearchResultFragment;

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->access$102(Lcom/yftech/libmusic/ui/MusicSearchResultFragment;Z)Z

    .line 125
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p1}, Lcom/yftech/libmusic/bean/MediaFileItem;->getData()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p2, v0, v1, v2}, Lcom/yftech/car/media/music/CarMusicManager;->start(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 127
    iget-object p2, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment$3;->this$0:Lcom/yftech/libmusic/ui/MusicSearchResultFragment;

    invoke-static {p2}, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->access$000(Lcom/yftech/libmusic/ui/MusicSearchResultFragment;)Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->getPlayingPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment$3;->this$0:Lcom/yftech/libmusic/ui/MusicSearchResultFragment;

    invoke-static {p2}, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->access$000(Lcom/yftech/libmusic/ui/MusicSearchResultFragment;)Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->getPlayingPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/yftech/libmusic/bean/MediaFileItem;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 128
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment$3;->this$0:Lcom/yftech/libmusic/ui/MusicSearchResultFragment;

    invoke-static {p0}, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->access$000(Lcom/yftech/libmusic/ui/MusicSearchResultFragment;)Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yftech/libmusic/bean/MediaFileItem;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->setPlaying(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
