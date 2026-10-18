.class Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$4;
.super Ljava/lang/Object;
.source "MediaFileHolder.java"

# interfaces
.implements Lcom/yftech/car/widget/media/utils/ImageLoadingManager$OnLoadingImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$4;->this$0:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(JI)V
    .locals 2

    .line 155
    iget-object p3, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$4;->this$0:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    invoke-static {p3}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->access$100(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$4;->this$0:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    invoke-static {p3}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->access$100(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object p3

    invoke-virtual {p3}, Lcom/yftech/car/media/data/entity/MediaFile;->getId()J

    move-result-wide v0

    cmp-long p1, v0, p1

    if-nez p1, :cond_0

    .line 156
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$4;->this$0:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->setFailedResDrawable()V

    :cond_0
    return-void
.end method

.method public onLoadFinish(J)V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$4;->this$0:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->access$100(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$4;->this$0:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->access$100(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getId()J

    move-result-wide v0

    cmp-long p1, v0, p1

    if-nez p1, :cond_0

    .line 149
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$4;->this$0:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->setImageLoadingStatus(Z)V

    :cond_0
    return-void
.end method

.method public onLoadStart(J)V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$4;->this$0:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->access$100(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$4;->this$0:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->access$100(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getId()J

    move-result-wide v0

    cmp-long p1, v0, p1

    if-nez p1, :cond_0

    .line 137
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$4;->this$0:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->setImageLoadingStatus(Z)V

    :cond_0
    return-void
.end method

.method public onLoading(JII)V
    .locals 0

    return-void
.end method
