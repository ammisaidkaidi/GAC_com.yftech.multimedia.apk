.class Lcom/yftech/car/widget/media/list/MediaDataList$8;
.super Ljava/lang/Object;
.source "MediaDataList.java"

# interfaces
.implements Lcom/yftech/car/widget/media/view/SideTextRetrievalView$OnSideTextRetrievalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/list/MediaDataList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/list/MediaDataList;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/list/MediaDataList;)V
    .locals 0

    .line 804
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList$8;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchText(Lcom/yftech/car/widget/media/view/SideTextRetrievalView;CI)V
    .locals 3

    .line 807
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList$8;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$1300(Lcom/yftech/car/widget/media/list/MediaDataList;)I

    move-result p1

    if-lez p1, :cond_7

    .line 809
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList$8;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->getAdapter()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    .line 810
    instance-of p3, p1, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    const/16 v0, 0x23

    const/4 v1, 0x0

    if-eqz p3, :cond_3

    .line 811
    check-cast p1, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    .line 812
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->getDataList()Ljava/util/List;

    move-result-object p3

    if-ne p2, v0, :cond_0

    .line 814
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$8;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1, v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->scrollToPositionWithOffset(II)V

    return-void

    :cond_0
    move v0, v1

    .line 818
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 819
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/media/data/entity/MediaFile;

    if-eqz v2, :cond_2

    .line 821
    invoke-virtual {v2}, Lcom/yftech/car/media/data/entity/MediaFile;->getSortKey()I

    move-result v2

    if-ne v2, p2, :cond_2

    .line 822
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$8;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->isEmptyHeadItemLayoutId()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->scrollToPositionWithOffset(II)V

    goto :goto_4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 828
    :cond_3
    instance-of p3, p1, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;

    if-eqz p3, :cond_7

    .line 829
    check-cast p1, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;

    .line 830
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->getFolderList()Ljava/util/List;

    move-result-object p3

    if-ne p2, v0, :cond_4

    .line 832
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$8;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1, v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->scrollToPositionWithOffset(II)V

    return-void

    :cond_4
    move v0, v1

    .line 835
    :goto_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 836
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/media/data/entity/MediaFolder;

    if-eqz v2, :cond_6

    .line 838
    invoke-virtual {v2}, Lcom/yftech/car/media/data/entity/MediaFolder;->getSortKey()I

    move-result v2

    if-ne v2, p2, :cond_6

    .line 839
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$8;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->isEmptyHeadItemLayoutId()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->scrollToPositionWithOffset(II)V

    goto :goto_4

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    :goto_4
    return-void
.end method
