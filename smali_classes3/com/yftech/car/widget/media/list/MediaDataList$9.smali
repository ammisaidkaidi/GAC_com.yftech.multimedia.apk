.class Lcom/yftech/car/widget/media/list/MediaDataList$9;
.super Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;
.source "MediaDataList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/list/MediaDataList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mFirstItemPosition:I

.field final synthetic this$0:Lcom/yftech/car/widget/media/list/MediaDataList;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/list/MediaDataList;)V
    .locals 0

    .line 852
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList$9;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 p1, -0x1

    .line 853
    iput p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList$9;->mFirstItemPosition:I

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;I)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onScrolled(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;II)V
    .locals 1
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 862
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList$9;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$1400(Lcom/yftech/car/widget/media/list/MediaDataList;)Lcom/yftech/car/widget/media/view/SideTextRetrievalView;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 863
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList$9;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$1500(Lcom/yftech/car/widget/media/list/MediaDataList;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    instance-of p1, p1, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    if-eqz p1, :cond_7

    .line 864
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList$9;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$1500(Lcom/yftech/car/widget/media/list/MediaDataList;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    .line 865
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-ge p1, p3, :cond_0

    move p1, p2

    .line 870
    :cond_0
    iget p3, p0, Lcom/yftech/car/widget/media/list/MediaDataList$9;->mFirstItemPosition:I

    if-ne p3, p1, :cond_1

    return-void

    .line 873
    :cond_1
    iput p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList$9;->mFirstItemPosition:I

    .line 874
    iget-object p3, p0, Lcom/yftech/car/widget/media/list/MediaDataList$9;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-virtual {p3}, Lcom/yftech/car/widget/media/list/MediaDataList;->getAdapter()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    .line 875
    instance-of v0, p3, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    if-eqz v0, :cond_4

    .line 876
    check-cast p3, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    .line 877
    invoke-virtual {p3}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    .line 878
    invoke-virtual {p3}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->isEmptyHeadItemLayoutId()Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-gez p1, :cond_3

    move p1, p2

    .line 882
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_7

    .line 883
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/media/data/entity/MediaFile;

    .line 884
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$9;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$1400(Lcom/yftech/car/widget/media/list/MediaDataList;)Lcom/yftech/car/widget/media/view/SideTextRetrievalView;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getSortKey()I

    move-result p1

    int-to-char p1, p1

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->setCurrent(C)V

    goto :goto_2

    .line 887
    :cond_4
    instance-of v0, p3, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;

    if-eqz v0, :cond_7

    .line 888
    check-cast p3, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;

    .line 889
    invoke-virtual {p3}, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->getFolderList()Ljava/util/List;

    move-result-object v0

    .line 890
    invoke-virtual {p3}, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->isEmptyHeadItemLayoutId()Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-gez p1, :cond_6

    move p1, p2

    .line 894
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_7

    .line 895
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/media/data/entity/MediaFolder;

    .line 896
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$9;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$1400(Lcom/yftech/car/widget/media/list/MediaDataList;)Lcom/yftech/car/widget/media/view/SideTextRetrievalView;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFolder;->getSortKey()I

    move-result p1

    int-to-char p1, p1

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->setCurrent(C)V

    :cond_7
    :goto_2
    return-void
.end method
