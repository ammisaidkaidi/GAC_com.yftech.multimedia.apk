.class Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$5;
.super Ljava/lang/Object;
.source "MusicSearchFromHardDiskActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->initW()V
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

    .line 390
    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$5;->this$0:Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_2

    .line 396
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$5;->this$0:Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->access$300(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;)Lcom/yftech/libmusic/ui/MusicSearchResultFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$5;->this$0:Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->access$300(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;)Lcom/yftech/libmusic/ui/MusicSearchResultFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 397
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$5;->this$0:Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->access$300(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;)Lcom/yftech/libmusic/ui/MusicSearchResultFragment;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->setSearchState(I)V

    .line 399
    :cond_0
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$5;->this$0:Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->access$600(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$5;->this$0:Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->access$700(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 401
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$5;->this$0:Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;

    invoke-virtual {p1}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/AudioSettingUtil;->playSystemClickSoundEffect(Landroid/content/Context;)V

    goto :goto_0

    .line 403
    :cond_1
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$5;->this$0:Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->access$602(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;Z)Z

    .line 405
    :goto_0
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$5;->this$0:Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->access$702(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;Z)Z

    :cond_2
    return-void
.end method
