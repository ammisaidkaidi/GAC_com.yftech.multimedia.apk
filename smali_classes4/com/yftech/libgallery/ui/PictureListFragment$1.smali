.class Lcom/yftech/libgallery/ui/PictureListFragment$1;
.super Ljava/lang/Object;
.source "PictureListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 150
    iput-object p1, p0, Lcom/yftech/libgallery/ui/PictureListFragment$1;->this$0:Lcom/yftech/libgallery/ui/PictureListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 154
    iget-object p1, p0, Lcom/yftech/libgallery/ui/PictureListFragment$1;->this$0:Lcom/yftech/libgallery/ui/PictureListFragment;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/PictureListFragment;->access$000(Lcom/yftech/libgallery/ui/PictureListFragment;)Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/yftech/libgallery/ui/PictureListFragment$1;->this$0:Lcom/yftech/libgallery/ui/PictureListFragment;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/PictureListFragment;->access$000(Lcom/yftech/libgallery/ui/PictureListFragment;)Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->isSelectorMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 155
    iget-object p1, p0, Lcom/yftech/libgallery/ui/PictureListFragment$1;->this$0:Lcom/yftech/libgallery/ui/PictureListFragment;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/PictureListFragment;->access$100(Lcom/yftech/libgallery/ui/PictureListFragment;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object p1, p0, Lcom/yftech/libgallery/ui/PictureListFragment$1;->this$0:Lcom/yftech/libgallery/ui/PictureListFragment;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/PictureListFragment;->access$200(Lcom/yftech/libgallery/ui/PictureListFragment;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lcom/yftech/libgallery/R$string;->common_select:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 157
    iget-object p1, p0, Lcom/yftech/libgallery/ui/PictureListFragment$1;->this$0:Lcom/yftech/libgallery/ui/PictureListFragment;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/PictureListFragment;->access$000(Lcom/yftech/libgallery/ui/PictureListFragment;)Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->setSelectorMode(ZZ)V

    .line 160
    :cond_0
    iget-object p1, p0, Lcom/yftech/libgallery/ui/PictureListFragment$1;->this$0:Lcom/yftech/libgallery/ui/PictureListFragment;

    invoke-virtual {p1}, Lcom/yftech/libgallery/ui/PictureListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 161
    iget-object p0, p0, Lcom/yftech/libgallery/ui/PictureListFragment$1;->this$0:Lcom/yftech/libgallery/ui/PictureListFragment;

    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/PictureListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :cond_1
    return-void
.end method
