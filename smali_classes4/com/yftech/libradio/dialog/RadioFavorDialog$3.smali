.class Lcom/yftech/libradio/dialog/RadioFavorDialog$3;
.super Ljava/lang/Object;
.source "RadioFavorDialog.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


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

    .line 268
    iput-object p1, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog$3;->this$0:Lcom/yftech/libradio/dialog/RadioFavorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 271
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog$3;->this$0:Lcom/yftech/libradio/dialog/RadioFavorDialog;

    invoke-static {p1}, Lcom/yftech/libradio/dialog/RadioFavorDialog;->access$200(Lcom/yftech/libradio/dialog/RadioFavorDialog;)Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/libradio/bean/RadioChannelInfo;

    if-eqz p1, :cond_0

    .line 272
    iget-boolean p2, p1, Lcom/yftech/libradio/bean/RadioChannelInfo;->isValid:Z

    if-eqz p2, :cond_0

    .line 275
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p2

    invoke-virtual {p1}, Lcom/yftech/libradio/bean/RadioChannelInfo;->getFreq()I

    move-result p1

    invoke-virtual {p2, p1, p3}, Lcom/yftech/car/media/radio/CarRadioManager;->setFreq(II)I

    .line 277
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog$3;->this$0:Lcom/yftech/libradio/dialog/RadioFavorDialog;

    invoke-static {p0}, Lcom/yftech/libradio/dialog/RadioFavorDialog;->access$200(Lcom/yftech/libradio/dialog/RadioFavorDialog;)Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p3, p1}, Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;->setPlayingIndex(IZ)V

    :cond_0
    return-void
.end method
