.class Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$mOnItemClickListener;
.super Ljava/lang/Object;
.source "PictureListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "mOnItemClickListener"
.end annotation


# instance fields
.field private position:I

.field final synthetic this$0:Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;


# direct methods
.method public constructor <init>(Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;I)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$mOnItemClickListener;->this$0:Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput p2, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$mOnItemClickListener;->position:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 201
    iget-object p1, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$mOnItemClickListener;->this$0:Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->access$000(Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 202
    iget-object p1, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$mOnItemClickListener;->this$0:Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;

    invoke-virtual {p1}, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->getData()Ljava/util/List;

    move-result-object p1

    iget v1, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$mOnItemClickListener;->position:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/media/common/entity/QuickMultipleEntity;

    .line 203
    invoke-virtual {p1}, Lcom/media/common/entity/QuickMultipleEntity;->getItemType()I

    move-result v1

    if-ne v1, v0, :cond_4

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "picture is selected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$mOnItemClickListener;->this$0:Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;

    invoke-static {v2}, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->access$100(Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;)Landroid/util/SparseArray;

    move-result-object v2

    iget v3, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$mOnItemClickListener;->position:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    const/4 v3, 0x0

    if-gez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$mOnItemClickListener;->this$0:Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;

    invoke-static {v1}, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->access$100(Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$mOnItemClickListener;->position:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_1

    .line 207
    iget-object v1, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$mOnItemClickListener;->this$0:Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;

    invoke-static {v1}, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->access$100(Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$mOnItemClickListener;->position:I

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_1

    .line 209
    :cond_1
    iget-object p1, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$mOnItemClickListener;->this$0:Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->access$100(Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;)Landroid/util/SparseArray;

    move-result-object p1

    iget v1, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$mOnItemClickListener;->position:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 211
    :goto_1
    iget-object p1, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$mOnItemClickListener;->this$0:Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;

    iget v1, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$mOnItemClickListener;->position:I

    iget-object v2, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$mOnItemClickListener;->this$0:Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;

    invoke-static {v2}, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->access$100(Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;)Landroid/util/SparseArray;

    move-result-object v2

    iget p0, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$mOnItemClickListener;->position:I

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p0

    if-ltz p0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    goto :goto_3

    .line 213
    :cond_3
    iget-object p1, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$mOnItemClickListener;->this$0:Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->access$200(Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;)Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 215
    iget-object p1, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$mOnItemClickListener;->this$0:Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;

    invoke-virtual {p1}, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->getData()Ljava/util/List;

    move-result-object p1

    iget v1, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$mOnItemClickListener;->position:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/media/common/entity/QuickMultipleEntity;

    .line 216
    invoke-virtual {p1}, Lcom/media/common/entity/QuickMultipleEntity;->getItemType()I

    move-result v1

    if-ne v1, v0, :cond_4

    instance-of v0, p1, Lcom/yftech/libgallery/bean/MediaFileForDataItem;

    if-eqz v0, :cond_4

    .line 217
    check-cast p1, Lcom/yftech/libgallery/bean/MediaFileForDataItem;

    .line 218
    iget-object p0, p0, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$mOnItemClickListener;->this$0:Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;

    invoke-static {p0}, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->access$200(Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;)Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$OnItemClickListener;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yftech/libgallery/bean/MediaFileForDataItem;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$OnItemClickListener;->onItemClickListener(Ljava/lang/String;)V

    :cond_4
    :goto_3
    return-void
.end method
