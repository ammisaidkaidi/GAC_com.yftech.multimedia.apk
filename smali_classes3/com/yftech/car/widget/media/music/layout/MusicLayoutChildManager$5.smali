.class Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$5;
.super Ljava/lang/Object;
.source "MusicLayoutChildManager.java"

# interfaces
.implements Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter$OnSearchHistoryItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)V
    .locals 0

    .line 767
    iput-object p1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$5;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemDelete(Lcom/yftech/car/widget/media/list/SearchHistoryList;Ljava/lang/String;)V
    .locals 0

    .line 782
    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->deleteSearch(Ljava/lang/String;)V

    return-void
.end method

.method public onItemSearch(Lcom/yftech/car/widget/media/list/SearchHistoryList;Ljava/lang/String;)V
    .locals 4

    .line 770
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$5;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$2000(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    .line 771
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->getSearchEditTextId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->getSearchEditTextId()I

    move-result v2

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 772
    :cond_1
    invoke-virtual {v1, p2}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->setText(Ljava/lang/CharSequence;)V

    .line 773
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$5;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$2100(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Lcom/yftech/car/widget/media/text/MediaSearchEditText$OnSearchTextListener;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/yftech/car/widget/media/text/MediaSearchEditText$OnSearchTextListener;->onSearchText(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)Z

    .line 774
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->setSelection(I)V

    :cond_2
    return-void
.end method
