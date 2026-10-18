.class Lcom/yftech/libgallery/ui/PictureListFragment$5;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "PictureListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libgallery/ui/PictureListFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libgallery/ui/PictureListFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libgallery/ui/PictureListFragment;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/yftech/libgallery/ui/PictureListFragment$5;->this$0:Lcom/yftech/libgallery/ui/PictureListFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/yftech/libgallery/ui/PictureListFragment$5;->this$0:Lcom/yftech/libgallery/ui/PictureListFragment;

    invoke-static {v0}, Lcom/yftech/libgallery/ui/PictureListFragment;->access$000(Lcom/yftech/libgallery/ui/PictureListFragment;)Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 226
    iget-object p0, p0, Lcom/yftech/libgallery/ui/PictureListFragment$5;->this$0:Lcom/yftech/libgallery/ui/PictureListFragment;

    invoke-static {p0}, Lcom/yftech/libgallery/ui/PictureListFragment;->access$000(Lcom/yftech/libgallery/ui/PictureListFragment;)Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/media/common/entity/QuickMultipleEntity;

    if-eqz p0, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/media/common/entity/QuickMultipleEntity;->getItemType()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x7

    return p0

    :cond_0
    if-eqz p0, :cond_1

    .line 229
    invoke-virtual {p0}, Lcom/media/common/entity/QuickMultipleEntity;->getItemType()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    return p1

    :cond_1
    const/4 p0, 0x2

    return p0
.end method
