.class Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$6;
.super Ljava/lang/Object;
.source "MusicSearchFromHardDiskActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->displayHotMusicSearchResult(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;)V
    .locals 0

    .line 440
    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$6;->this$0:Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 444
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$6;->this$0:Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;

    invoke-virtual {p1}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p1

    check-cast p1, Lcom/yftech/libmusic/presenter/MusicSearchPresenter;

    const-string v0, ""

    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$6;->this$0:Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;

    invoke-static {p0}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->access$000(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;)I

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/yftech/libmusic/presenter/MusicSearchPresenter;->searchMusic(Ljava/lang/String;I)V

    return-void
.end method
