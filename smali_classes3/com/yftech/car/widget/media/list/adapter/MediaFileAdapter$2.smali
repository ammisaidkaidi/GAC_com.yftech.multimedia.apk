.class Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$2;
.super Ljava/lang/Object;
.source "MediaFileAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/car/widget/media/list/holder/BaseFileHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

.field final synthetic val$mediaFileHolder:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$2;->this$0:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    iput-object p2, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$2;->val$mediaFileHolder:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 254
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$2;->this$0:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    iget-object p1, p1, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->longClickListener:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$onItemLongClickListener;

    if-eqz p1, :cond_0

    .line 255
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$2;->this$0:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    iget-object p1, p1, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->longClickListener:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$onItemLongClickListener;

    iget-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$2;->val$mediaFileHolder:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->getmPosition()I

    move-result v0

    iget-object v1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$2;->this$0:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-static {v1}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->access$000(Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;)Ljava/util/List;

    move-result-object v1

    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$2;->val$mediaFileHolder:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->getmPosition()I

    move-result p0

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-interface {p1, v0, p0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$onItemLongClickListener;->onItemLongClick(ILcom/yftech/car/media/data/entity/MediaFile;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
