.class Lcom/yftech/libgallery/ui/PictureListFragment$4;
.super Ljava/lang/Object;
.source "PictureListFragment.java"

# interfaces
.implements Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$OnLastViewedCallback;


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

    .line 209
    iput-object p1, p0, Lcom/yftech/libgallery/ui/PictureListFragment$4;->this$0:Lcom/yftech/libgallery/ui/PictureListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadLastViewedPosition(I)V
    .locals 0

    if-ltz p1, :cond_0

    .line 214
    iget-object p0, p0, Lcom/yftech/libgallery/ui/PictureListFragment$4;->this$0:Lcom/yftech/libgallery/ui/PictureListFragment;

    invoke-static {p0}, Lcom/yftech/libgallery/ui/PictureListFragment;->access$400(Lcom/yftech/libgallery/ui/PictureListFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method
