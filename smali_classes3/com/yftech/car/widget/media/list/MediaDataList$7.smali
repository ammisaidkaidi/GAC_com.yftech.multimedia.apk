.class Lcom/yftech/car/widget/media/list/MediaDataList$7;
.super Ljava/lang/Object;
.source "MediaDataList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 765
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList$7;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 768
    check-cast p1, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;

    .line 769
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->getClickModify()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 792
    :pswitch_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$7;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$600(Lcom/yftech/car/widget/media/list/MediaDataList;)Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->setAllSelectedStatus(Z)V

    goto :goto_0

    .line 798
    :pswitch_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$7;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$600(Lcom/yftech/car/widget/media/list/MediaDataList;)Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->setCheckBox(Z)Z

    goto :goto_0

    .line 795
    :pswitch_2
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$7;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$600(Lcom/yftech/car/widget/media/list/MediaDataList;)Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->setCheckBox(Z)Z

    goto :goto_0

    .line 789
    :pswitch_3
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$7;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$600(Lcom/yftech/car/widget/media/list/MediaDataList;)Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->setAllSelectedStatus(Z)V

    goto :goto_0

    .line 771
    :pswitch_4
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$7;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$600(Lcom/yftech/car/widget/media/list/MediaDataList;)Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$7;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$600(Lcom/yftech/car/widget/media/list/MediaDataList;)Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->deleteDataList()Ljava/util/List;

    move-result-object v0

    .line 774
    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->notifyDeleteList(Ljava/util/List;)V

    .line 775
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    .line 776
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$7;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$600(Lcom/yftech/car/widget/media/list/MediaDataList;)Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->getDataListSize()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 777
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList$7;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$000(Lcom/yftech/car/widget/media/list/MediaDataList;)I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 778
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$7;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$1200(Lcom/yftech/car/widget/media/list/MediaDataList;)V

    :cond_0
    :goto_0
    :pswitch_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
