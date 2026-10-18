.class Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter$mOnItemClickListener;
.super Ljava/lang/Object;
.source "VideoListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "mOnItemClickListener"
.end annotation


# instance fields
.field private position:I

.field final synthetic this$0:Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;


# direct methods
.method public constructor <init>(Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;I)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter$mOnItemClickListener;->this$0:Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput p2, p0, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter$mOnItemClickListener;->position:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 214
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter$mOnItemClickListener;->this$0:Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;->access$100(Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;)Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 216
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter$mOnItemClickListener;->this$0:Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;

    invoke-virtual {p1}, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;->getData()Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter$mOnItemClickListener;->position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/media/common/entity/QuickMultipleEntity;

    .line 217
    invoke-virtual {p1}, Lcom/media/common/entity/QuickMultipleEntity;->getItemType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    instance-of v0, p1, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;

    if-eqz v0, :cond_0

    .line 218
    check-cast p1, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;

    .line 219
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter$mOnItemClickListener;->this$0:Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;

    invoke-static {p0}, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;->access$100(Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;)Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter$OnItemClickListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter$OnItemClickListener;->onItemClick(Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;)V

    :cond_0
    return-void
.end method
