.class Lcom/yftech/libgallery/ui/PictureListFragment$6;
.super Ljava/lang/Object;
.source "PictureListFragment.java"

# interfaces
.implements Lcom/media/common/ui/widget/TipsExtraDialog$OnButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libgallery/ui/PictureListFragment;->onClick(Landroid/view/View;)V
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

    .line 333
    iput-object p1, p0, Lcom/yftech/libgallery/ui/PictureListFragment$6;->this$0:Lcom/yftech/libgallery/ui/PictureListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/yftech/libgallery/ui/PictureListFragment$6;->this$0:Lcom/yftech/libgallery/ui/PictureListFragment;

    invoke-static {v0}, Lcom/yftech/libgallery/ui/PictureListFragment;->access$100(Lcom/yftech/libgallery/ui/PictureListFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lcom/yftech/libgallery/ui/PictureListFragment$6;->this$0:Lcom/yftech/libgallery/ui/PictureListFragment;

    invoke-static {v0}, Lcom/yftech/libgallery/ui/PictureListFragment;->access$200(Lcom/yftech/libgallery/ui/PictureListFragment;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/yftech/libgallery/R$string;->common_select:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 353
    iget-object v0, p0, Lcom/yftech/libgallery/ui/PictureListFragment$6;->this$0:Lcom/yftech/libgallery/ui/PictureListFragment;

    invoke-static {v0}, Lcom/yftech/libgallery/ui/PictureListFragment;->access$000(Lcom/yftech/libgallery/ui/PictureListFragment;)Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 354
    iget-object p0, p0, Lcom/yftech/libgallery/ui/PictureListFragment$6;->this$0:Lcom/yftech/libgallery/ui/PictureListFragment;

    invoke-static {p0}, Lcom/yftech/libgallery/ui/PictureListFragment;->access$000(Lcom/yftech/libgallery/ui/PictureListFragment;)Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->setSelectorMode(ZZ)V

    :cond_0
    return-void
.end method

.method public onConfirm()V
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/yftech/libgallery/ui/PictureListFragment$6;->this$0:Lcom/yftech/libgallery/ui/PictureListFragment;

    invoke-static {v0}, Lcom/yftech/libgallery/ui/PictureListFragment;->access$100(Lcom/yftech/libgallery/ui/PictureListFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lcom/yftech/libgallery/ui/PictureListFragment$6;->this$0:Lcom/yftech/libgallery/ui/PictureListFragment;

    invoke-static {v0}, Lcom/yftech/libgallery/ui/PictureListFragment;->access$200(Lcom/yftech/libgallery/ui/PictureListFragment;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/yftech/libgallery/R$string;->common_select:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 340
    iget-object v0, p0, Lcom/yftech/libgallery/ui/PictureListFragment$6;->this$0:Lcom/yftech/libgallery/ui/PictureListFragment;

    invoke-static {v0}, Lcom/yftech/libgallery/ui/PictureListFragment;->access$500(Lcom/yftech/libgallery/ui/PictureListFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/yftech/libgallery/ui/PictureListFragment$6;->this$0:Lcom/yftech/libgallery/ui/PictureListFragment;

    invoke-static {v0}, Lcom/yftech/libgallery/ui/PictureListFragment;->access$000(Lcom/yftech/libgallery/ui/PictureListFragment;)Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/yftech/libgallery/ui/PictureListFragment$6;->this$0:Lcom/yftech/libgallery/ui/PictureListFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yftech/libgallery/ui/PictureListFragment;->access$602(Lcom/yftech/libgallery/ui/PictureListFragment;Z)Z

    .line 343
    iget-object v0, p0, Lcom/yftech/libgallery/ui/PictureListFragment$6;->this$0:Lcom/yftech/libgallery/ui/PictureListFragment;

    invoke-virtual {v0}, Lcom/yftech/libgallery/ui/PictureListFragment;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/yftech/libgallery/presenter/PictureListPresenter;

    iget-object p0, p0, Lcom/yftech/libgallery/ui/PictureListFragment$6;->this$0:Lcom/yftech/libgallery/ui/PictureListFragment;

    invoke-static {p0}, Lcom/yftech/libgallery/ui/PictureListFragment;->access$000(Lcom/yftech/libgallery/ui/PictureListFragment;)Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->getImageSelector()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/yftech/libgallery/presenter/PictureListPresenter;->deletePicture(Ljava/util/List;)V

    :cond_0
    return-void
.end method
