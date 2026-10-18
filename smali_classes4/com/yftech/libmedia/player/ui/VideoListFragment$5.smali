.class Lcom/yftech/libmedia/player/ui/VideoListFragment$5;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "VideoListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmedia/player/ui/VideoListFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmedia/player/ui/VideoListFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libmedia/player/ui/VideoListFragment;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoListFragment$5;->this$0:Lcom/yftech/libmedia/player/ui/VideoListFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoListFragment$5;->this$0:Lcom/yftech/libmedia/player/ui/VideoListFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoListFragment;->access$000(Lcom/yftech/libmedia/player/ui/VideoListFragment;)Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 200
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoListFragment$5;->this$0:Lcom/yftech/libmedia/player/ui/VideoListFragment;

    invoke-static {p0}, Lcom/yftech/libmedia/player/ui/VideoListFragment;->access$000(Lcom/yftech/libmedia/player/ui/VideoListFragment;)Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/media/common/entity/QuickMultipleEntity;

    if-eqz p0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/media/common/entity/QuickMultipleEntity;->getItemType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    if-eqz p0, :cond_1

    .line 203
    invoke-virtual {p0}, Lcom/media/common/entity/QuickMultipleEntity;->getItemType()I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    return v1
.end method
