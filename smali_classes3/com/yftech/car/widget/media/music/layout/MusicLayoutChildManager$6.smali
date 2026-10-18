.class Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$6;
.super Ljava/lang/Object;
.source "MusicLayoutChildManager.java"

# interfaces
.implements Lcom/yftech/car/widget/media/text/MediaSearchEditText$OnSearchTextListener;


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

    .line 786
    iput-object p1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$6;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onSearchText$0(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$6;Lcom/yftech/car/widget/media/text/MediaSearchEditText;)V
    .locals 0

    .line 835
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$6;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1300(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->setStartSearchView(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$onSearchText$1(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$6;)V
    .locals 2

    .line 838
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$6;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$2300(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/text/SearchEditButton;

    .line 839
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/text/SearchEditButton;->getSearchVisibilityShow()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x2

    .line 840
    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/text/SearchEditButton;->isSearchVisibilityShow(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/text/SearchEditButton;->setVisibility(I)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public onCancelSearch()V
    .locals 1

    .line 850
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$6;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$2400(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Lcom/yftech/car/widget/media/utils/MediaFindSearch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 851
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$6;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$2400(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Lcom/yftech/car/widget/media/utils/MediaFindSearch;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/utils/MediaFindSearch;->setValid(Z)V

    :cond_0
    return-void
.end method

.method public onSearchEmptyBackList(Lcom/yftech/car/widget/media/list/MediaDataList;)V
    .locals 5

    .line 857
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$6;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->hideInput()V

    .line 858
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->getUsbIndex()I

    move-result v0

    .line 859
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->getMediaDefaultList()I

    move-result v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    .line 861
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->getMediaSearchBackList()I

    move-result v1

    .line 862
    invoke-virtual {p1, v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->setMediaDefaultList(I)V

    :cond_0
    const-string v2, "LayoutChildManager"

    .line 864
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSearchEmptyBackList: mediaDefaultList=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x64

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    const-string v0, "LayoutChildManager"

    .line 893
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initView: no MediaDefaultList == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 888
    :pswitch_0
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateDirectoryList()V

    goto :goto_0

    .line 882
    :pswitch_1
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getGenreMusic(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    goto :goto_0

    .line 879
    :pswitch_2
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getAlbumsMusic(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    goto :goto_0

    .line 876
    :pswitch_3
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getArtistsMusic(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    goto :goto_0

    .line 873
    :pswitch_4
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getFileMusic(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFileList(Ljava/util/List;Z)V

    goto :goto_0

    .line 870
    :pswitch_5
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getFolderMusic(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    goto :goto_0

    .line 867
    :pswitch_6
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/manager/MusicManager;->getCollectMusic(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFileList(Ljava/util/List;Z)V

    goto :goto_0

    .line 885
    :cond_1
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/manager/MusicManager;->getCurrentPlayList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFileList(Ljava/util/List;Z)V

    :goto_0
    const/4 v0, 0x0

    .line 896
    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->setVisibility(I)V

    .line 897
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$6;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$2200(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/widget/media/list/SearchHistoryList;

    const/16 v0, 0x8

    .line 898
    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->setVisibility(I)V

    goto :goto_1

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSearchText(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)Z
    .locals 11

    .line 790
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 796
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 798
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 802
    :cond_1
    iget-object v2, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$6;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->hideInput()V

    .line 804
    iget-object v2, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$6;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v2}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$800(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/widget/media/list/MediaDataList;

    .line 805
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->getSearchDataListId()I

    move-result v6

    if-eq v6, v5, :cond_3

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->getSearchDataListId()I

    move-result v5

    invoke-virtual {v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->getId()I

    move-result v6

    if-ne v5, v6, :cond_2

    :cond_3
    const/16 v5, 0x65

    .line 806
    invoke-virtual {v3, v5}, Lcom/yftech/car/widget/media/list/MediaDataList;->setMediaDefaultList(I)V

    .line 807
    invoke-virtual {v3, v4}, Lcom/yftech/car/widget/media/list/MediaDataList;->setVisibility(I)V

    .line 808
    invoke-virtual {v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->setSearchLoading()V

    goto :goto_0

    .line 811
    :cond_4
    iget-object v2, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$6;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v2}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$2200(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v6, 0x8

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/widget/media/list/SearchHistoryList;

    .line 812
    invoke-virtual {v3}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->getSearchEditTextId()I

    move-result v7

    if-eq v7, v5, :cond_6

    invoke-virtual {v3}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->getSearchEditTextId()I

    move-result v7

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->getId()I

    move-result v8

    if-ne v7, v8, :cond_7

    .line 813
    :cond_6
    invoke-virtual {v3, v6}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->setVisibility(I)V

    .line 814
    invoke-virtual {v3, v0}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->addSearchData(Ljava/lang/String;)V

    .line 817
    :cond_7
    iget-object v7, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$6;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v7}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$2300(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/yftech/car/widget/media/text/SearchEditButton;

    const/4 v9, 0x3

    .line 818
    invoke-virtual {v8, v9}, Lcom/yftech/car/widget/media/text/SearchEditButton;->isSearchType(I)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v8}, Lcom/yftech/car/widget/media/text/SearchEditButton;->getMediaSearchHistoryListId()I

    move-result v9

    if-eq v9, v5, :cond_9

    invoke-virtual {v8}, Lcom/yftech/car/widget/media/text/SearchEditButton;->getMediaSearchHistoryListId()I

    move-result v9

    invoke-virtual {v3}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->getId()I

    move-result v10

    if-ne v9, v10, :cond_8

    .line 819
    :cond_9
    invoke-virtual {v8, v6}, Lcom/yftech/car/widget/media/text/SearchEditButton;->setVisibility(I)V

    goto :goto_1

    .line 824
    :cond_a
    iget-object v2, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$6;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v2}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$2400(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Lcom/yftech/car/widget/media/utils/MediaFindSearch;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 825
    iget-object v2, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$6;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v2}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$2400(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Lcom/yftech/car/widget/media/utils/MediaFindSearch;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/yftech/car/widget/media/utils/MediaFindSearch;->setValid(Z)V

    .line 827
    :cond_b
    iget-object v2, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$6;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    new-instance v3, Lcom/yftech/car/widget/media/utils/MediaFindSearch;

    invoke-direct {v3}, Lcom/yftech/car/widget/media/utils/MediaFindSearch;-><init>()V

    invoke-static {v2, v3}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$2402(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;Lcom/yftech/car/widget/media/utils/MediaFindSearch;)Lcom/yftech/car/widget/media/utils/MediaFindSearch;

    .line 829
    iget-object v2, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$6;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v2}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$2300(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/widget/media/text/SearchEditButton;

    .line 830
    invoke-virtual {v3}, Lcom/yftech/car/widget/media/text/SearchEditButton;->getSearchVisibilityShow()I

    move-result v5

    if-lez v5, :cond_c

    .line 831
    invoke-virtual {v3, v1}, Lcom/yftech/car/widget/media/text/SearchEditButton;->isSearchVisibilityShow(I)Z

    move-result v5

    if-eqz v5, :cond_d

    move v5, v4

    goto :goto_3

    :cond_d
    move v5, v6

    :goto_3
    invoke-virtual {v3, v5}, Lcom/yftech/car/widget/media/text/SearchEditButton;->setVisibility(I)V

    goto :goto_2

    .line 835
    :cond_e
    iget-object v2, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$6;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v2}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1300(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v2

    new-instance v3, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$6$lWfnLO1X-hD93Lwm8CN9BDoi9TM;

    invoke-direct {v3, p0, p1}, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$6$lWfnLO1X-hD93Lwm8CN9BDoi9TM;-><init>(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$6;Lcom/yftech/car/widget/media/text/MediaSearchEditText;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 836
    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->setStartSearchText(Ljava/lang/String;)V

    .line 837
    iget-object v2, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$6;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v2}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$2400(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Lcom/yftech/car/widget/media/utils/MediaFindSearch;

    move-result-object v2

    iget-object v3, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$6;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v3}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$800(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$6$lXZCMkJQunINiLMXlmudWv7dGTs;

    invoke-direct {v4, p0}, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$6$lXZCMkJQunINiLMXlmudWv7dGTs;-><init>(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$6;)V

    invoke-virtual {v2, v0, p1, v3, v4}, Lcom/yftech/car/widget/media/utils/MediaFindSearch;->startSearch(Ljava/lang/String;Lcom/yftech/car/widget/media/text/MediaSearchEditText;Ljava/util/List;Ljava/lang/Runnable;)V

    return v1
.end method
