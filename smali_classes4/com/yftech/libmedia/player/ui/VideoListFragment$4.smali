.class Lcom/yftech/libmedia/player/ui/VideoListFragment$4;
.super Ljava/lang/Object;
.source "VideoListFragment.java"

# interfaces
.implements Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter$OnLastViewedCallback;


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

    .line 183
    iput-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoListFragment$4;->this$0:Lcom/yftech/libmedia/player/ui/VideoListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadLastViewedPosition(I)V
    .locals 0

    if-ltz p1, :cond_0

    .line 187
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoListFragment$4;->this$0:Lcom/yftech/libmedia/player/ui/VideoListFragment;

    invoke-static {p0}, Lcom/yftech/libmedia/player/ui/VideoListFragment;->access$200(Lcom/yftech/libmedia/player/ui/VideoListFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method
