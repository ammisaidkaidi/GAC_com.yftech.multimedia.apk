.class Lcom/yftech/libradio/RadioFavorActivity$2;
.super Ljava/lang/Object;
.source "RadioFavorActivity.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


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

    .line 182
    iput-object p1, p0, Lcom/yftech/libradio/RadioFavorActivity$2;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 185
    iget-object p1, p0, Lcom/yftech/libradio/RadioFavorActivity$2;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

    invoke-static {p1}, Lcom/yftech/libradio/RadioFavorActivity;->access$000(Lcom/yftech/libradio/RadioFavorActivity;)Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/libradio/bean/RadioChannelInfo;

    if-eqz p1, :cond_0

    .line 186
    iget-boolean p2, p1, Lcom/yftech/libradio/bean/RadioChannelInfo;->isValid:Z

    if-eqz p2, :cond_0

    .line 188
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p2

    invoke-virtual {p1}, Lcom/yftech/libradio/bean/RadioChannelInfo;->getFreq()I

    move-result p1

    invoke-virtual {p2, p1, p3}, Lcom/yftech/car/media/radio/CarRadioManager;->setFreq(II)I

    .line 190
    iget-object p0, p0, Lcom/yftech/libradio/RadioFavorActivity$2;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

    invoke-static {p0}, Lcom/yftech/libradio/RadioFavorActivity;->access$000(Lcom/yftech/libradio/RadioFavorActivity;)Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p3, p1}, Lcom/yftech/libradio/RadioFavorActivity$RadioFavorAdapter;->setPlayingIndex(IZ)V

    :cond_0
    return-void
.end method
