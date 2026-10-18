.class Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder$1$1;
.super Ljava/lang/Object;
.source "EpgBaseFragment.java"

# interfaces
.implements Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog$EpgSubcribeConfirmCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder$1;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder$1;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder$1$1;->this$2:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancle()V
    .locals 0

    return-void
.end method

.method public onSubcribeFaile()V
    .locals 2

    .line 425
    sget v0, Lcom/yftech/libradio/R$string;->epg_add_subscribe_failure:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/media/common/util/ToastUtils;->showNormalMessage(II)V

    .line 426
    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder$1$1;->this$2:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder$1;

    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder$1;->this$1:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;

    invoke-static {p0}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;->access$1300(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;)Landroid/widget/ImageView;

    move-result-object p0

    sget v0, Lcom/yftech/libradio/R$mipmap;->btn_epg_reserve:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public onSubcribeSuccess()V
    .locals 4

    .line 413
    sget v0, Lcom/yftech/libradio/R$string;->epg_add_subscribe_successful:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/media/common/util/ToastUtils;->showNormalMessage(II)V

    .line 414
    iget-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder$1$1;->this$2:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder$1;

    iget-object v0, v0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder$1;->this$1:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;

    invoke-static {v0}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;->access$1300(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/yftech/libradio/R$mipmap;->btn_epg_unreserve:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 415
    iget-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder$1$1;->this$2:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder$1;

    iget-object v0, v0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder$1;->this$1:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;

    iget-object v0, v0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    iget-object v0, v0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->mHanlder:Landroid/os/Handler;

    new-instance v1, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder$1$1$1;

    invoke-direct {v1, p0}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder$1$1$1;-><init>(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder$1$1;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
