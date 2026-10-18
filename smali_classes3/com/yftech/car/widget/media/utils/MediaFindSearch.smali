.class public Lcom/yftech/car/widget/media/utils/MediaFindSearch;
.super Ljava/lang/Object;
.source "MediaFindSearch.java"


# instance fields
.field private isValid:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/utils/MediaFindSearch;->isValid:Z

    return-void
.end method

.method public static synthetic lambda$startSearch$0(Lcom/yftech/car/widget/media/utils/MediaFindSearch;Ljava/util/List;Lcom/yftech/car/widget/media/text/MediaSearchEditText;Ljava/lang/String;Ljava/util/List;ILjava/lang/Runnable;)V
    .locals 2

    .line 50
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/utils/MediaFindSearch;->isValid:Z

    if-eqz p0, :cond_3

    .line 51
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/widget/media/list/MediaDataList;

    .line 52
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->getMediaDefaultList()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->getSearchDataListId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p2}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->getSearchDataListId()I

    move-result v0

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 53
    :cond_1
    invoke-virtual {p1, p3}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateSearchText(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1, p4}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateSearchList(Ljava/util/List;)V

    .line 55
    invoke-virtual {p1, p5}, Lcom/yftech/car/widget/media/list/MediaDataList;->setSearchFlags(I)V

    goto :goto_0

    :cond_2
    if-eqz p6, :cond_3

    .line 59
    invoke-interface {p6}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method

.method public static synthetic lambda$startSearch$1(Lcom/yftech/car/widget/media/utils/MediaFindSearch;Lcom/yftech/car/widget/media/text/MediaSearchEditText;Ljava/lang/String;Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 9

    .line 45
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->getSearchFindFlag()I

    move-result v6

    .line 46
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->getSearchIndex()I

    move-result v1

    invoke-virtual {v0, p2, v6, v1}, Lcom/yftech/car/media/data/CarMediaDataManager;->findSearchFile(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v5

    .line 48
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/utils/MediaFindSearch;->isValid:Z

    if-eqz v0, :cond_0

    .line 49
    new-instance v8, Lcom/yftech/car/widget/media/utils/-$$Lambda$MediaFindSearch$v-8x2dBNKBSmflabb1tdsMh24Yk;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/yftech/car/widget/media/utils/-$$Lambda$MediaFindSearch$v-8x2dBNKBSmflabb1tdsMh24Yk;-><init>(Lcom/yftech/car/widget/media/utils/MediaFindSearch;Ljava/util/List;Lcom/yftech/car/widget/media/text/MediaSearchEditText;Ljava/lang/String;Ljava/util/List;ILjava/lang/Runnable;)V

    invoke-virtual {p1, v8}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public setValid(Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/utils/MediaFindSearch;->isValid:Z

    return-void
.end method

.method public startSearch(Ljava/lang/String;Lcom/yftech/car/widget/media/text/MediaSearchEditText;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yftech/car/widget/media/text/MediaSearchEditText;",
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/list/MediaDataList;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/yftech/car/widget/media/utils/MediaFindSearch;->startSearch(Ljava/lang/String;Lcom/yftech/car/widget/media/text/MediaSearchEditText;Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method public startSearch(Ljava/lang/String;Lcom/yftech/car/widget/media/text/MediaSearchEditText;Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yftech/car/widget/media/text/MediaSearchEditText;",
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/list/MediaDataList;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 44
    new-instance v6, Lcom/yftech/car/widget/media/utils/-$$Lambda$MediaFindSearch$OZJWwEbEG639TjQjloZpwoU7cNc;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/yftech/car/widget/media/utils/-$$Lambda$MediaFindSearch$OZJWwEbEG639TjQjloZpwoU7cNc;-><init>(Lcom/yftech/car/widget/media/utils/MediaFindSearch;Lcom/yftech/car/widget/media/text/MediaSearchEditText;Ljava/lang/String;Ljava/util/List;Ljava/lang/Runnable;)V

    invoke-static {v6}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
