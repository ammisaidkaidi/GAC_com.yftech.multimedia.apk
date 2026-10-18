.class Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$3;
.super Ljava/lang/Object;
.source "VideoLayoutChildManager.java"

# interfaces
.implements Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter$OnSearchHistoryItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)V
    .locals 0

    .line 695
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$3;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemDelete(Lcom/yftech/car/widget/media/list/SearchHistoryList;Ljava/lang/String;)V
    .locals 0

    .line 710
    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->deleteSearch(Ljava/lang/String;)V

    return-void
.end method

.method public onItemSearch(Lcom/yftech/car/widget/media/list/SearchHistoryList;Ljava/lang/String;)V
    .locals 4

    .line 698
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$3;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$600(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Ljava/util/List;

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

    .line 699
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->getSearchEditTextId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->getSearchEditTextId()I

    move-result v2

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 700
    :cond_1
    invoke-virtual {v1, p2}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->setText(Ljava/lang/CharSequence;)V

    .line 701
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$3;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$700(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/text/MediaSearchEditText$OnSearchTextListener;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/yftech/car/widget/media/text/MediaSearchEditText$OnSearchTextListener;->onSearchText(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)Z

    .line 702
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->setSelection(I)V

    :cond_2
    return-void
.end method
