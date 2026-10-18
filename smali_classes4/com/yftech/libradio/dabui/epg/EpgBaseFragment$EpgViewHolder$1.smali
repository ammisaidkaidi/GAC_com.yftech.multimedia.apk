.class Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder$1;
.super Ljava/lang/Object;
.source "EpgBaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;-><init>(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;

.field final synthetic val$this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder$1;->this$1:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;

    iput-object p2, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder$1;->val$this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 379
    invoke-static {}, Lcom/yftech/libradio/Utils;->isQuickClick()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "ivEpgStatus quick click"

    .line 380
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "subscribe egp -------"

    .line 383
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 384
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder$1;->this$1:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;

    iget-object p1, p1, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    invoke-static {p1}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->access$700(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder$1;->this$1:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;

    invoke-static {v0}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;->access$900(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/media/radio/dab/entity/epg/Programme;

    if-nez p1, :cond_1

    const-string p0, "subscribe egp , programme is null  ------"

    .line 386
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->w(Ljava/lang/String;)V

    return-void

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder$1;->this$1:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;

    iget-object v0, v0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    iget-object v0, v0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->currentDate:Ljava/util/Calendar;

    invoke-static {v0, p1}, Lcom/yftech/libradio/dabui/epg/EpgUtils;->isProgramPlaying(Ljava/util/Calendar;Lcom/yftech/car/media/radio/dab/entity/epg/Programme;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 392
    :cond_2
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->isEpgProgramme(Lcom/yftech/car/media/radio/dab/entity/epg/Programme;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 394
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->removeEpgProgramme(Lcom/yftech/car/media/radio/dab/entity/epg/Programme;)I

    move-result p1

    if-lez p1, :cond_4

    .line 395
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder$1;->this$1:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;

    iget-object p1, p1, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    instance-of p1, p1, Lcom/yftech/libradio/dabui/epg/EpgSubsCribedProgramFragment;

    if-eqz p1, :cond_3

    .line 396
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder$1;->this$1:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;

    iget-object p1, p1, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    invoke-static {p1}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->access$700(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder$1;->this$1:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;

    invoke-static {v0}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;->access$900(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 398
    :cond_3
    sget p1, Lcom/yftech/libradio/R$string;->epg_remove_subscribe_successful:I

    invoke-static {p1, v1}, Lcom/media/common/util/ToastUtils;->showNormalMessage(II)V

    .line 399
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder$1;->this$1:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;

    invoke-static {p1}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;->access$1300(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    sget v0, Lcom/yftech/libradio/R$mipmap;->btn_epg_reserve:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 401
    :cond_4
    sget p1, Lcom/yftech/libradio/R$string;->epg_remove_subscribe_failure:I

    invoke-static {p1, v1}, Lcom/media/common/util/ToastUtils;->showNormalMessage(II)V

    .line 402
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder$1;->this$1:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;

    invoke-static {p1}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;->access$1300(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    sget v0, Lcom/yftech/libradio/R$mipmap;->btn_epg_unreserve:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 405
    :cond_5
    iget-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder$1;->this$1:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;

    iget-object v0, v0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    invoke-static {v0, p1}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->access$1500(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;Lcom/yftech/car/media/radio/dab/entity/epg/Programme;)Lcom/yftech/car/media/radio/dab/entity/epg/Programme;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 407
    iget-object v1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder$1;->this$1:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;

    iget-object v1, v1, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    invoke-static {v1}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->access$1600(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;)Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;

    move-result-object v1

    if-nez v1, :cond_6

    .line 408
    iget-object v1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder$1;->this$1:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;

    iget-object v1, v1, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    new-instance v2, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;

    iget-object v3, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder$1;->this$1:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;

    iget-object v3, v3, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    invoke-virtual {v3}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->access$1602(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;)Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;

    .line 410
    :cond_6
    iget-object v1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder$1;->this$1:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;

    iget-object v1, v1, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    invoke-static {v1}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->access$1600(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;)Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;

    move-result-object v1

    new-instance v2, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder$1$1;

    invoke-direct {v2, p0}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder$1$1;-><init>(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder$1;)V

    invoke-virtual {v1, v2}, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;->setConfirmCallBack(Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog$EpgSubcribeConfirmCallBack;)V

    .line 433
    iget-object v1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder$1;->this$1:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;

    iget-object v1, v1, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    invoke-static {v1}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->access$1600(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;)Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;->setParams(Lcom/yftech/car/media/radio/dab/entity/epg/Programme;Lcom/yftech/car/media/radio/dab/entity/epg/Programme;)V

    .line 434
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder$1;->this$1:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;

    iget-object p1, p1, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    invoke-static {p1}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->access$1600(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;)Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;->show()V

    goto :goto_0

    .line 436
    :cond_7
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->addEpgProgramme(Lcom/yftech/car/media/radio/dab/entity/epg/Programme;)I

    move-result p1

    if-lez p1, :cond_8

    .line 437
    sget p1, Lcom/yftech/libradio/R$string;->epg_add_subscribe_successful:I

    invoke-static {p1, v1}, Lcom/media/common/util/ToastUtils;->showNormalMessage(II)V

    .line 438
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder$1;->this$1:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;

    invoke-static {p1}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;->access$1300(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    sget v0, Lcom/yftech/libradio/R$mipmap;->btn_epg_unreserve:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 440
    :cond_8
    sget p1, Lcom/yftech/libradio/R$string;->epg_add_subscribe_failure:I

    invoke-static {p1, v1}, Lcom/media/common/util/ToastUtils;->showNormalMessage(II)V

    .line 441
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder$1;->this$1:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;

    invoke-static {p1}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;->access$1300(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    sget v0, Lcom/yftech/libradio/R$mipmap;->btn_epg_reserve:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 445
    :goto_0
    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder$1;->this$1:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;

    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    invoke-static {p0}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->access$300(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
