.class Lcom/yftech/libmedia/player/ui/VideoListFragment$1;
.super Ljava/lang/Object;
.source "VideoListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 126
    iput-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoListFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 129
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoListFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoListFragment;

    invoke-virtual {p1}, Lcom/yftech/libmedia/player/ui/VideoListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 130
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoListFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoListFragment;

    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :cond_0
    return-void
.end method
