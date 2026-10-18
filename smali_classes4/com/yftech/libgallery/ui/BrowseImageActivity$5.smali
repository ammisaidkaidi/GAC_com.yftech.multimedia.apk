.class Lcom/yftech/libgallery/ui/BrowseImageActivity$5;
.super Lcom/facebook/drawee/controller/BaseControllerListener;
.source "BrowseImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libgallery/ui/BrowseImageActivity;->displayImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/drawee/controller/BaseControllerListener<",
        "Lcom/facebook/imagepipeline/image/ImageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libgallery/ui/BrowseImageActivity;


# direct methods
.method constructor <init>(Lcom/yftech/libgallery/ui/BrowseImageActivity;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity$5;->this$0:Lcom/yftech/libgallery/ui/BrowseImageActivity;

    invoke-direct {p0}, Lcom/facebook/drawee/controller/BaseControllerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    const-string p1, "play error!!!!!!!!!!!"

    .line 320
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 322
    iget-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity$5;->this$0:Lcom/yftech/libgallery/ui/BrowseImageActivity;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/BrowseImageActivity;->access$600(Lcom/yftech/libgallery/ui/BrowseImageActivity;)I

    move-result p1

    if-nez p1, :cond_0

    .line 323
    iget-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity$5;->this$0:Lcom/yftech/libgallery/ui/BrowseImageActivity;

    sget p2, Lcom/yftech/libgallery/R$string;->picture_browse_play_error:I

    invoke-virtual {p1, p2}, Lcom/yftech/libgallery/ui/BrowseImageActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/ui/widget/TipsDialog;->newInstance(Ljava/lang/String;)Lcom/media/common/ui/widget/TipsDialog;

    move-result-object p1

    .line 324
    new-instance p2, Lcom/yftech/libgallery/ui/BrowseImageActivity$5$1;

    invoke-direct {p2, p0}, Lcom/yftech/libgallery/ui/BrowseImageActivity$5$1;-><init>(Lcom/yftech/libgallery/ui/BrowseImageActivity$5;)V

    invoke-virtual {p1, p2}, Lcom/media/common/ui/widget/TipsDialog;->setOnConfirmClickListener(Lcom/media/common/ui/widget/TipsDialog$OnConfirmClickListener;)V

    .line 332
    iget-object p0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity$5;->this$0:Lcom/yftech/libgallery/ui/BrowseImageActivity;

    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/BrowseImageActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class p2, Lcom/media/common/ui/widget/TipsDialog;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/media/common/ui/widget/TipsDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 333
    :cond_0
    iget-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity$5;->this$0:Lcom/yftech/libgallery/ui/BrowseImageActivity;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/BrowseImageActivity;->access$600(Lcom/yftech/libgallery/ui/BrowseImageActivity;)I

    move-result p1

    if-lez p1, :cond_1

    .line 335
    iget-object p0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity$5;->this$0:Lcom/yftech/libgallery/ui/BrowseImageActivity;

    invoke-static {p0}, Lcom/yftech/libgallery/ui/BrowseImageActivity;->access$100(Lcom/yftech/libgallery/ui/BrowseImageActivity;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageView;->callOnClick()Z

    goto :goto_0

    .line 338
    :cond_1
    iget-object p0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity$5;->this$0:Lcom/yftech/libgallery/ui/BrowseImageActivity;

    invoke-static {p0}, Lcom/yftech/libgallery/ui/BrowseImageActivity;->access$200(Lcom/yftech/libgallery/ui/BrowseImageActivity;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageView;->callOnClick()Z

    :goto_0
    return-void
.end method
