.class Lcom/yftech/libradio/dialog/RadioSearchChannelDialog$2;
.super Ljava/lang/Object;
.source "RadioSearchChannelDialog.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog$2;->this$0:Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 153
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog$2;->this$0:Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;

    invoke-static {p1}, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->access$200(Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;)Lcom/yftech/libradio/dialog/adapter/RadioSearchChannelAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 154
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog$2;->this$0:Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;

    invoke-static {p1}, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->access$200(Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;)Lcom/yftech/libradio/dialog/adapter/RadioSearchChannelAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/yftech/libradio/dialog/adapter/RadioSearchChannelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/media/radio/entity/DataOfRadio;

    if-eqz p1, :cond_0

    .line 158
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p2

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result p1

    invoke-virtual {p2, p1, p3}, Lcom/yftech/car/media/radio/CarRadioManager;->setFreq(II)I

    .line 161
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog$2;->this$0:Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;

    invoke-static {p0}, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->access$200(Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;)Lcom/yftech/libradio/dialog/adapter/RadioSearchChannelAdapter;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p3, p1}, Lcom/yftech/libradio/dialog/adapter/RadioSearchChannelAdapter;->setPlayingIndex(IZ)V

    :cond_0
    return-void
.end method
