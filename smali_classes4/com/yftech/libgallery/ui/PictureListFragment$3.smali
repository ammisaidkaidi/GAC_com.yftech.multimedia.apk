.class Lcom/yftech/libgallery/ui/PictureListFragment$3;
.super Ljava/lang/Object;
.source "PictureListFragment.java"

# interfaces
.implements Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$OnItemClickListener;


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

    .line 192
    iput-object p1, p0, Lcom/yftech/libgallery/ui/PictureListFragment$3;->this$0:Lcom/yftech/libgallery/ui/PictureListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClickListener(Ljava/lang/String;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/yftech/libgallery/ui/PictureListFragment$3;->this$0:Lcom/yftech/libgallery/ui/PictureListFragment;

    invoke-static {v0}, Lcom/yftech/libgallery/ui/PictureListFragment;->access$300(Lcom/yftech/libgallery/ui/PictureListFragment;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->newInstance(Ljava/lang/String;I)Lcom/yftech/libgallery/ui/BrowseImageFragment;

    move-result-object p1

    .line 199
    invoke-static {}, Lcom/media/common/util/MyFragmentManger;->getInstance()Lcom/media/common/util/MyFragmentManger;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/libgallery/ui/PictureListFragment$3;->this$0:Lcom/yftech/libgallery/ui/PictureListFragment;

    invoke-static {p0}, Lcom/yftech/libgallery/ui/PictureListFragment;->access$300(Lcom/yftech/libgallery/ui/PictureListFragment;)I

    move-result p0

    invoke-virtual {v0, p0, p1}, Lcom/media/common/util/MyFragmentManger;->pushFragment(ILandroidx/fragment/app/Fragment;)V

    .line 200
    invoke-static {}, Lcom/media/common/util/MyFragmentManger;->getInstance()Lcom/media/common/util/MyFragmentManger;

    move-result-object p0

    invoke-static {}, Lcom/media/common/util/MyFragmentManger;->getInstance()Lcom/media/common/util/MyFragmentManger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/media/common/util/MyFragmentManger;->getPhotoLayoutId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/media/common/util/MyFragmentManger;->switchContent(Landroidx/fragment/app/Fragment;I)V

    return-void
.end method
