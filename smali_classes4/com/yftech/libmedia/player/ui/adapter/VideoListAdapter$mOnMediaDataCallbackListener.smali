.class Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter$mOnMediaDataCallbackListener;
.super Ljava/lang/Object;
.source "VideoListAdapter.java"

# interfaces
.implements Lcom/media/common/ui/widget/SyncImageView$OnMediaInformationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "mOnMediaDataCallbackListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;


# direct methods
.method private constructor <init>(Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter$mOnMediaDataCallbackListener;->this$0:Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter$1;)V
    .locals 0

    .line 225
    invoke-direct {p0, p1}, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter$mOnMediaDataCallbackListener;-><init>(Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;)V

    return-void
.end method


# virtual methods
.method public onMediaDurationCallback(I)V
    .locals 0

    return-void
.end method

.method public onMediaImageCallback(Ljava/lang/String;[BII)V
    .locals 0

    .line 232
    iget-object p3, p0, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter$mOnMediaDataCallbackListener;->this$0:Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;

    invoke-static {p3}, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;->access$200(Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;)Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object p3, p0, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter$mOnMediaDataCallbackListener;->this$0:Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;

    invoke-static {p3}, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;->access$300(Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;)Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 237
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    .line 239
    iget-object p3, p0, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter$mOnMediaDataCallbackListener;->this$0:Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;

    invoke-virtual {p3}, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;->getItemCount()I

    move-result p3

    if-ge p1, p3, :cond_1

    .line 240
    iget-object p3, p0, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter$mOnMediaDataCallbackListener;->this$0:Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;

    invoke-virtual {p3, p1}, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/media/common/entity/QuickMultipleEntity;

    .line 241
    instance-of p3, p3, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;

    if-eqz p3, :cond_1

    .line 244
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object p3

    iget-object p4, p0, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter$mOnMediaDataCallbackListener;->this$0:Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;

    invoke-static {p4}, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;->access$400(Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;)I

    move-result p4

    invoke-virtual {p3, p4}, Lcom/yftech/car/media/data/CarMediaDataManager;->isScanner(I)Z

    move-result p3

    if-nez p3, :cond_1

    if-eqz p2, :cond_1

    .line 248
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter$mOnMediaDataCallbackListener;->this$0:Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;

    invoke-virtual {p0, p1}, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;->notifyItemChanged(I)V

    :cond_1
    return-void
.end method
