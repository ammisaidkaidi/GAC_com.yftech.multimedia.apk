.class Lcom/yftech/libradio/RadioFavorActivity$1;
.super Ljava/lang/Object;
.source "RadioFavorActivity.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/RadioFavorActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/RadioFavorActivity;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/RadioFavorActivity;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/yftech/libradio/RadioFavorActivity$1;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemChildClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 3

    .line 155
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    sget p2, Lcom/yftech/libradio/R$id;->iv_station_favor_flag:I

    if-ne p1, p2, :cond_4

    .line 156
    iget-object p1, p0, Lcom/yftech/libradio/RadioFavorActivity$1;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

    invoke-static {p1}, Lcom/yftech/libradio/RadioFavorActivity;->access$000(Lcom/yftech/libradio/RadioFavorActivity;)Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/libradio/bean/RadioChannelInfo;

    if-eqz p1, :cond_4

    .line 159
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/yftech/car/media/radio/CarRadioManager;->removeFavor(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    .line 161
    sget p1, Lcom/yftech/libradio/R$string;->radio_channel_favor_dialog_remove_favor_successful:I

    invoke-static {p1, p2}, Lcom/media/common/util/ToastUtils;->showNormalMessage(II)V

    .line 162
    iget-object p1, p0, Lcom/yftech/libradio/RadioFavorActivity$1;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

    invoke-static {p1}, Lcom/yftech/libradio/RadioFavorActivity;->access$000(Lcom/yftech/libradio/RadioFavorActivity;)Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;->getFarqPosition()I

    move-result p1

    const/4 v0, 0x0

    if-ge p3, p1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/yftech/libradio/RadioFavorActivity$1;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

    invoke-static {v1}, Lcom/yftech/libradio/RadioFavorActivity;->access$000(Lcom/yftech/libradio/RadioFavorActivity;)Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;

    move-result-object v1

    sub-int/2addr p1, p2

    if-ltz p1, :cond_0

    move v2, p2

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {v1, p1, v2}, Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;->setPlayingIndex(IZ)V

    goto :goto_1

    .line 165
    :cond_1
    iget-object p1, p0, Lcom/yftech/libradio/RadioFavorActivity$1;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

    invoke-static {p1}, Lcom/yftech/libradio/RadioFavorActivity;->access$000(Lcom/yftech/libradio/RadioFavorActivity;)Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;->getFarqPosition()I

    move-result p1

    if-ne p3, p1, :cond_2

    .line 166
    iget-object p1, p0, Lcom/yftech/libradio/RadioFavorActivity$1;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

    invoke-static {p1}, Lcom/yftech/libradio/RadioFavorActivity;->access$000(Lcom/yftech/libradio/RadioFavorActivity;)Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;

    move-result-object p1

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;->setPlayingIndex(IZ)V

    .line 169
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/yftech/libradio/RadioFavorActivity$1;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

    invoke-static {p1}, Lcom/yftech/libradio/RadioFavorActivity;->access$000(Lcom/yftech/libradio/RadioFavorActivity;)Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;->remove(I)V

    .line 170
    iget-object p1, p0, Lcom/yftech/libradio/RadioFavorActivity$1;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

    invoke-static {p1}, Lcom/yftech/libradio/RadioFavorActivity;->access$100(Lcom/yftech/libradio/RadioFavorActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p3, p0, Lcom/yftech/libradio/RadioFavorActivity$1;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

    sget v1, Lcom/yftech/libradio/R$string;->station_name_with_count:I

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/yftech/libradio/RadioFavorActivity$1;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

    invoke-static {v2}, Lcom/yftech/libradio/RadioFavorActivity;->access$000(Lcom/yftech/libradio/RadioFavorActivity;)Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;->getItemCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v0

    invoke-virtual {p3, v1, p2}, Lcom/yftech/libradio/RadioFavorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object p1, p0, Lcom/yftech/libradio/RadioFavorActivity$1;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

    invoke-static {p1}, Lcom/yftech/libradio/RadioFavorActivity;->access$000(Lcom/yftech/libradio/RadioFavorActivity;)Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;->getItemCount()I

    move-result p1

    if-gtz p1, :cond_4

    .line 172
    iget-object p1, p0, Lcom/yftech/libradio/RadioFavorActivity$1;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

    invoke-static {p1}, Lcom/yftech/libradio/RadioFavorActivity;->access$200(Lcom/yftech/libradio/RadioFavorActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 173
    iget-object p0, p0, Lcom/yftech/libradio/RadioFavorActivity$1;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

    invoke-static {p0}, Lcom/yftech/libradio/RadioFavorActivity;->access$300(Lcom/yftech/libradio/RadioFavorActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_2

    .line 176
    :cond_3
    sget p0, Lcom/yftech/libradio/R$string;->radio_channel_favor_dialog_remove_favor_failure:I

    invoke-static {p0, p2}, Lcom/media/common/util/ToastUtils;->showFailMessage(II)V

    :cond_4
    :goto_2
    return-void
.end method
