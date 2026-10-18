.class Lcom/yftech/libradio/dialog/RadioFavorDialog$2;
.super Ljava/lang/Object;
.source "RadioFavorDialog.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dialog/RadioFavorDialog;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dialog/RadioFavorDialog;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dialog/RadioFavorDialog;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog$2;->this$0:Lcom/yftech/libradio/dialog/RadioFavorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemChildClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 3

    .line 228
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    sget p2, Lcom/yftech/libradio/R$id;->iv_like:I

    if-ne p1, p2, :cond_4

    .line 229
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog$2;->this$0:Lcom/yftech/libradio/dialog/RadioFavorDialog;

    invoke-static {p1}, Lcom/yftech/libradio/dialog/RadioFavorDialog;->access$200(Lcom/yftech/libradio/dialog/RadioFavorDialog;)Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/libradio/bean/RadioChannelInfo;

    if-eqz p1, :cond_4

    .line 232
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/yftech/car/media/radio/CarRadioManager;->removeFavor(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    .line 238
    sget p1, Lcom/yftech/libradio/R$string;->radio_channel_favor_dialog_remove_favor_successful:I

    invoke-static {p1, p2}, Lcom/media/common/util/ToastUtils;->showNormalMessage(II)V

    .line 240
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog$2;->this$0:Lcom/yftech/libradio/dialog/RadioFavorDialog;

    invoke-static {p1}, Lcom/yftech/libradio/dialog/RadioFavorDialog;->access$200(Lcom/yftech/libradio/dialog/RadioFavorDialog;)Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;->getFarqPosition()I

    move-result p1

    const/4 v0, 0x0

    if-ge p3, p1, :cond_1

    .line 242
    iget-object v1, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog$2;->this$0:Lcom/yftech/libradio/dialog/RadioFavorDialog;

    invoke-static {v1}, Lcom/yftech/libradio/dialog/RadioFavorDialog;->access$200(Lcom/yftech/libradio/dialog/RadioFavorDialog;)Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;

    move-result-object v1

    sub-int/2addr p1, p2

    if-ltz p1, :cond_0

    move v2, p2

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {v1, p1, v2}, Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;->setPlayingIndex(IZ)V

    goto :goto_1

    .line 243
    :cond_1
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog$2;->this$0:Lcom/yftech/libradio/dialog/RadioFavorDialog;

    invoke-static {p1}, Lcom/yftech/libradio/dialog/RadioFavorDialog;->access$200(Lcom/yftech/libradio/dialog/RadioFavorDialog;)Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;->getFarqPosition()I

    move-result p1

    if-ne p3, p1, :cond_2

    .line 244
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog$2;->this$0:Lcom/yftech/libradio/dialog/RadioFavorDialog;

    invoke-static {p1}, Lcom/yftech/libradio/dialog/RadioFavorDialog;->access$200(Lcom/yftech/libradio/dialog/RadioFavorDialog;)Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;

    move-result-object p1

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;->setPlayingIndex(IZ)V

    .line 248
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog$2;->this$0:Lcom/yftech/libradio/dialog/RadioFavorDialog;

    invoke-static {p1}, Lcom/yftech/libradio/dialog/RadioFavorDialog;->access$200(Lcom/yftech/libradio/dialog/RadioFavorDialog;)Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;->remove(I)V

    .line 250
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog$2;->this$0:Lcom/yftech/libradio/dialog/RadioFavorDialog;

    invoke-static {p1}, Lcom/yftech/libradio/dialog/RadioFavorDialog;->access$500(Lcom/yftech/libradio/dialog/RadioFavorDialog;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    const-string v1, "(%d)"

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog$2;->this$0:Lcom/yftech/libradio/dialog/RadioFavorDialog;

    invoke-static {v2}, Lcom/yftech/libradio/dialog/RadioFavorDialog;->access$200(Lcom/yftech/libradio/dialog/RadioFavorDialog;)Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;->getItemCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v0

    invoke-static {p3, v1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog$2;->this$0:Lcom/yftech/libradio/dialog/RadioFavorDialog;

    invoke-static {p1}, Lcom/yftech/libradio/dialog/RadioFavorDialog;->access$200(Lcom/yftech/libradio/dialog/RadioFavorDialog;)Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;->getItemCount()I

    move-result p1

    if-gtz p1, :cond_4

    .line 254
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog$2;->this$0:Lcom/yftech/libradio/dialog/RadioFavorDialog;

    invoke-static {p0}, Lcom/yftech/libradio/dialog/RadioFavorDialog;->access$600(Lcom/yftech/libradio/dialog/RadioFavorDialog;)Landroid/widget/RelativeLayout;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2

    .line 262
    :cond_3
    sget p0, Lcom/yftech/libradio/R$string;->radio_channel_favor_dialog_remove_favor_failure:I

    invoke-static {p0, p2}, Lcom/media/common/util/ToastUtils;->showFailMessage(II)V

    :cond_4
    :goto_2
    return-void
.end method
