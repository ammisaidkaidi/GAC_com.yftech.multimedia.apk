.class Lcom/yftech/libmedia/player/ui/VideoListFragment$3;
.super Ljava/lang/Object;
.source "VideoListFragment.java"

# interfaces
.implements Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter$OnItemClickListener;


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

    .line 150
    iput-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoListFragment$3;->this$0:Lcom/yftech/libmedia/player/ui/VideoListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;)V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoListFragment$3;->this$0:Lcom/yftech/libmedia/player/ui/VideoListFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoListFragment;->access$000(Lcom/yftech/libmedia/player/ui/VideoListFragment;)Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 158
    :cond_0
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarInfoManager;->get()Lcom/yftech/vehicle/sdk/CarInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarInfoManager;->getVehicleSpeed()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 162
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoListFragment$3;->this$0:Lcom/yftech/libmedia/player/ui/VideoListFragment;

    sget v0, Lcom/yftech/libmedia/R$string;->video_play_speed_overflow_tips:I

    invoke-virtual {p1, v0}, Lcom/yftech/libmedia/player/ui/VideoListFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/ui/widget/TipsDialog;->newInstance(Ljava/lang/String;)Lcom/media/common/ui/widget/TipsDialog;

    move-result-object p1

    .line 163
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoListFragment$3;->this$0:Lcom/yftech/libmedia/player/ui/VideoListFragment;

    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoListFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v0, Lcom/media/common/ui/widget/TipsDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/media/common/ui/widget/TipsDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoListFragment$3;->this$0:Lcom/yftech/libmedia/player/ui/VideoListFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoListFragment;->access$100(Lcom/yftech/libmedia/player/ui/VideoListFragment;)I

    move-result v0

    invoke-virtual {p1}, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yftech/libmedia/player/bean/MediaFileForDataItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;)Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    move-result-object p1

    .line 171
    invoke-static {}, Lcom/media/common/util/MyFragmentManger;->getInstance()Lcom/media/common/util/MyFragmentManger;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoListFragment$3;->this$0:Lcom/yftech/libmedia/player/ui/VideoListFragment;

    invoke-static {p0}, Lcom/yftech/libmedia/player/ui/VideoListFragment;->access$100(Lcom/yftech/libmedia/player/ui/VideoListFragment;)I

    move-result p0

    invoke-virtual {v0, p0, p1}, Lcom/media/common/util/MyFragmentManger;->pushFragment(ILandroidx/fragment/app/Fragment;)V

    .line 172
    invoke-static {}, Lcom/media/common/util/MyFragmentManger;->getInstance()Lcom/media/common/util/MyFragmentManger;

    move-result-object p0

    invoke-static {}, Lcom/media/common/util/MyFragmentManger;->getInstance()Lcom/media/common/util/MyFragmentManger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/media/common/util/MyFragmentManger;->getVideoPlayerLayoutId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/media/common/util/MyFragmentManger;->switchContent(Landroidx/fragment/app/Fragment;I)V

    return-void
.end method
