.class Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;
.super Lcom/yftech/car/widget/media/video/VideoPlayer$VideoCallback;
.source "VideoLayoutChildManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->getVideoCallback()Lcom/yftech/car/widget/media/video/VideoPlayer$VideoCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)V
    .locals 0

    .line 884
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer$VideoCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleClick(Z)V
    .locals 4

    .line 1187
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object v0

    if-eqz v0, :cond_7

    const/4 v0, -0x1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    .line 1189
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$100(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "LayoutChildManager"

    const-string p1, "onDoubleClick: Double Click isAnimationLoading is true"

    .line 1190
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1193
    :cond_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/yftech/car/widget/media/video/BaseVideo;->isDoubleClickSwitchHideShow(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1194
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$200(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result p1

    iget-object v3, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v3}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/car/widget/media/video/BaseVideo;->getSystemUiVisibilityShow()I

    move-result v3

    if-eq p1, v3, :cond_1

    .line 1195
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$200(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/BaseVideo;->getSystemUiVisibilityShow()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 1197
    :cond_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/video/BaseVideo;->getSystemUiVisibilityHide()I

    move-result p1

    if-eq p1, v0, :cond_2

    .line 1198
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$200(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/BaseVideo;->getSystemUiVisibilityHide()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 1203
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/yftech/car/widget/media/video/BaseVideo;->isDoubleClickSwitchHideShow(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1204
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p1, v2}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$1100(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;Z)V

    goto/16 :goto_2

    .line 1208
    :cond_3
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$100(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p0, "LayoutChildManager"

    const-string p1, "onDoubleClick: Click isAnimationLoading is true"

    .line 1209
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1212
    :cond_4
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/yftech/car/widget/media/video/BaseVideo;->isClickSwitchHideShow(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1213
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$200(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result p1

    iget-object v3, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v3}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/car/widget/media/video/BaseVideo;->getSystemUiVisibilityShow()I

    move-result v3

    if-eq p1, v3, :cond_5

    .line 1214
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$200(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/BaseVideo;->getSystemUiVisibilityShow()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    goto :goto_1

    .line 1216
    :cond_5
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/video/BaseVideo;->getSystemUiVisibilityHide()I

    move-result p1

    if-eq p1, v0, :cond_6

    .line 1217
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$200(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/BaseVideo;->getSystemUiVisibilityHide()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 1222
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/yftech/car/widget/media/video/BaseVideo;->isClickSwitchHideShow(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1223
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p1, v2}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$1100(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;Z)V

    .line 1229
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$1200(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;

    .line 1230
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$200(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->isMediaDataListShow(Landroid/view/View;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->setVisibilityShow(Z)V

    goto :goto_3

    :cond_8
    return-void
.end method

.method public onInfo(II)Z
    .locals 0

    .line 1107
    invoke-super {p0, p1, p2}, Lcom/yftech/car/widget/media/video/VideoPlayer$VideoCallback;->onInfo(II)Z

    move-result p0

    return p0
.end method

.method public onPlayChange(Lcom/yftech/car/media/data/entity/MediaFile;)V
    .locals 4

    .line 892
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$1400(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/text/MediaFileTextView;

    .line 893
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView;->isMediaFileInfo()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 894
    iget-object v2, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v2}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/video/BaseVideo;->getPlayPosition()I

    move-result v2

    iget-object v3, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v3}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/car/widget/media/video/BaseVideo;->getPlayListSize()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/yftech/car/widget/media/text/MediaFileTextView;->updateMediaFile(Lcom/yftech/car/media/data/entity/MediaFile;II)V

    goto :goto_0

    .line 897
    :cond_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$300(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/list/MediaDataList;

    .line 898
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getMediaDefaultList()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->isEmptyList()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 899
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/video/BaseVideo;->getPlayList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFileList(Ljava/util/List;Z)V

    goto :goto_1

    .line 901
    :cond_2
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->notifyDataSetChanged()V

    .line 902
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateListPosition()V

    goto :goto_1

    .line 905
    :cond_3
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$1500(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 906
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$1500(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->releaseMediaPlayer()V

    :cond_4
    return-void
.end method

.method public onPlayError(I)V
    .locals 0

    return-void
.end method

.method public onPlayException(I)Z
    .locals 0

    .line 1276
    invoke-super {p0, p1}, Lcom/yftech/car/widget/media/video/VideoPlayer$VideoCallback;->onPlayException(I)Z

    move-result p0

    return p0
.end method

.method public onPlayMode(I)V
    .locals 2

    .line 1009
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$2100(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/video/button/VideoButton;

    const/4 v1, 0x5

    .line 1010
    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/video/button/VideoButton;->isFunction(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1011
    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/video/button/VideoButton;->updatePlayMode(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onPlaybackParams(F)V
    .locals 0

    return-void
.end method

.method public onPlayerError(II)Z
    .locals 0

    .line 1078
    invoke-super {p0, p1, p2}, Lcom/yftech/car/widget/media/video/VideoPlayer$VideoCallback;->onPlayerError(II)Z

    move-result p0

    return p0
.end method

.method public onPlayingChange(Z)V
    .locals 3

    .line 1040
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$2100(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/video/button/VideoButton;

    const/4 v2, 0x4

    .line 1041
    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/video/button/VideoButton;->isFunction(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1042
    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/video/button/VideoButton;->setActivatedStatus(Z)V

    goto :goto_0

    .line 1046
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$300(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/list/MediaDataList;

    .line 1047
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->notifyDataSetChanged()V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 1049
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/video/BaseVideo;->getAutoHideTime()I

    move-result p1

    if-lez p1, :cond_3

    .line 1050
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$2200(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/video/BaseVideo;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1051
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$2200(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Ljava/lang/Runnable;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/BaseVideo;->getAutoHideTime()I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Lcom/yftech/car/widget/media/video/BaseVideo;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    :cond_3
    return-void
.end method

.method public onPrepared(I)V
    .locals 4

    const-string v0, "LayoutChildManager"

    .line 981
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepared: duration=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mMediaSeekBarList=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v2}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$1800(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$1700(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/text/MediaPlayTime;

    int-to-long v2, p1

    .line 983
    invoke-virtual {v1, v2, v3}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->updateDuration(J)V

    goto :goto_0

    .line 985
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$1800(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/view/MediaSeekBar;

    .line 986
    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/view/MediaSeekBar;->setMax(I)V

    goto :goto_1

    .line 988
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$2000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 989
    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    goto :goto_2

    .line 991
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$1500(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 992
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$1500(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->updateDuration(J)V

    .line 993
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$1500(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->loadStart()V

    :cond_3
    return-void
.end method

.method public onProgress(I)V
    .locals 11

    .line 919
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$1600(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 920
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$1700(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/text/MediaPlayTime;

    .line 921
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->isVideoShowScrollTime()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    int-to-long v2, p1

    .line 924
    invoke-virtual {v1, v2, v3}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->updateProgress(J)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 929
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$1800(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/view/MediaSeekBar;

    .line 930
    invoke-virtual {v2, p1}, Lcom/yftech/car/widget/media/view/MediaSeekBar;->setProgress(I)V

    .line 931
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v3}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$1700(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/yftech/car/widget/media/text/MediaPlayTime;

    .line 932
    invoke-virtual {v6}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->isSeekBarShowScrollTime()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v6}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->getSeekBarShowTimeId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    invoke-virtual {v6}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->getSeekBarShowTimeId()I

    move-result v3

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/view/MediaSeekBar;->getId()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 933
    :cond_4
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-virtual {v6}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->getSeekBarShowTimeOffset()F

    move-result v7

    invoke-virtual {v6}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->getSeekBarShowTimeDistance()F

    move-result v8

    invoke-virtual {v6}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->getInitHeight()I

    move-result v9

    move v4, p1

    move-object v5, v2

    invoke-static/range {v3 .. v9}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$1900(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;ILcom/yftech/car/widget/media/view/MediaSeekBar;Landroid/view/View;FFI)V

    goto :goto_2

    :cond_5
    if-nez v0, :cond_2

    .line 938
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v3}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$1500(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v3}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$1500(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x1

    .line 940
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v3}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$1500(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->setPlayProgress(I)V

    .line 941
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    iget-object v4, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v4}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$1500(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    move-result-object v6

    iget-object v4, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v4}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$1500(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->getSeekBarShowOffset()F

    move-result v7

    iget-object v4, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v4}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$1500(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->getSeekBarShowDistance()F

    move-result v8

    iget-object v4, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v4}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$1500(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->getInitHeight()I

    move-result v9

    move v4, p1

    move-object v5, v2

    invoke-static/range {v3 .. v9}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$1900(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;ILcom/yftech/car/widget/media/view/MediaSeekBar;Landroid/view/View;FFI)V

    goto/16 :goto_1

    .line 946
    :cond_6
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$2000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 947
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_3

    :cond_7
    return-void
.end method

.method public onScaleType(I)V
    .locals 2

    .line 1026
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$2100(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/video/button/VideoButton;

    const/4 v1, 0x6

    .line 1027
    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/video/button/VideoButton;->isFunction(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1028
    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/video/button/VideoButton;->updatePlayScale(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onSlideProgress(ZIJZ)V
    .locals 5

    .line 1120
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/BaseVideo;->getAutoHideTime()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-lez v0, :cond_2

    .line 1122
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$1700(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/widget/media/text/MediaPlayTime;

    .line 1123
    invoke-virtual {v3}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->isSeekBarShowScrollTime()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->isVideoShowScrollTime()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p1, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    .line 1124
    :goto_1
    invoke-virtual {v3, v4}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->setVisibility(I)V

    .line 1125
    invoke-virtual {v3, p2, p3, p4, p5}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->updateSlideProgress(IJZ)V

    goto :goto_0

    .line 1130
    :cond_2
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p2}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yftech/car/widget/media/video/BaseVideo;->isVideoSlideShowSeekImage()Z

    move-result p2

    if-eqz p2, :cond_b

    if-eqz p1, :cond_a

    .line 1132
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$1500(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 1133
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$1500(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->isShow()Z

    move-result p1

    if-nez p1, :cond_b

    .line 1134
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$1500(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->setVisibility(I)V

    .line 1135
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$1500(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->loadStart()V

    .line 1137
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$2300(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 1138
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/video/BaseVideo;->getVideoHideShowAnimationDuration()I

    move-result p1

    move p2, v2

    .line 1139
    :goto_2
    iget-object p3, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p3}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$200(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-ge p2, p3, :cond_b

    .line 1140
    iget-object p3, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p3}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$200(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 1142
    instance-of p4, p3, Lcom/yftech/car/widget/media/video/VideoPlayer;

    if-eqz p4, :cond_3

    goto/16 :goto_3

    .line 1144
    :cond_3
    instance-of p4, p3, Lcom/yftech/car/widget/media/text/MediaPlayTime;

    if-eqz p4, :cond_5

    .line 1145
    move-object p4, p3

    check-cast p4, Lcom/yftech/car/widget/media/text/MediaPlayTime;

    .line 1146
    invoke-virtual {p4}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->isSeekBarShowScrollTime()Z

    move-result p5

    if-nez p5, :cond_4

    invoke-virtual {p4}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->isVideoShowScrollTime()Z

    move-result p5

    if-eqz p5, :cond_6

    .line 1147
    :cond_4
    invoke-virtual {p4, v1}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->setVisibility(I)V

    goto :goto_3

    .line 1150
    :cond_5
    instance-of p4, p3, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    if-eqz p4, :cond_6

    goto :goto_3

    .line 1154
    :cond_6
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    const-string/jumbo p5, "visibility_user"

    .line 1155
    invoke-virtual {p5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_7

    const-string p4, "LayoutChildManager"

    .line 1156
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setVisibility: visibility_user ,User View=="

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1159
    :cond_7
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p5

    if-eqz p5, :cond_9

    .line 1160
    iget-object p5, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    const/4 v0, 0x1

    invoke-static {p5, v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$2302(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;Z)Z

    const-string/jumbo p5, "visibility_user_show"

    .line 1161
    invoke-virtual {p5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_8

    const-string p4, "LayoutChildManager"

    .line 1162
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setVisibility: visibility_user_show ,User View=="

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1165
    :cond_8
    iget-object p4, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p4, p3, v2, p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$2400(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;Landroid/view/View;II)V

    :cond_9
    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_2

    .line 1172
    :cond_a
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$1500(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 1173
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$1500(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->setVisibility(I)V

    :cond_b
    return-void
.end method

.method public onStartTrackingTouch(IZ)V
    .locals 6

    .line 955
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$1700(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/text/MediaPlayTime;

    .line 956
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->getSeekBarShowTimeId()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->getSeekBarShowTimeId()I

    move-result v4

    if-ne p1, v4, :cond_0

    :cond_1
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->isSeekBarShowScrollTime()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p2, :cond_2

    move v2, v3

    .line 957
    :cond_2
    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->setVisibility(I)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 963
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$1500(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 964
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$1500(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->setVisibility(I)V

    .line 965
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$1500(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->loadStart()V

    goto :goto_1

    .line 968
    :cond_4
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$1500(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 969
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$1500(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->setVisibility(I)V

    :cond_5
    :goto_1
    return-void
.end method
