.class Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$3;
.super Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "MediaFileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$3;->this$0:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$3;->this$0:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->access$000(Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    .line 362
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$3;->this$0:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->access$000(Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result p1

    const/16 v0, -0xb

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$3;->this$0:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-static {p0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->access$200(Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;)Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0

    .line 364
    :cond_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$3;->this$0:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-static {p0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->access$200(Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;)Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p0

    return p0
.end method
