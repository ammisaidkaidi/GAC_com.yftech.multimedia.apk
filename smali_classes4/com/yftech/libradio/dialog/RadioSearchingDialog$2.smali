.class Lcom/yftech/libradio/dialog/RadioSearchingDialog$2;
.super Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;
.source "RadioSearchingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dialog/RadioSearchingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dialog/RadioSearchingDialog;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dialog/RadioSearchingDialog;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog$2;->this$0:Lcom/yftech/libradio/dialog/RadioSearchingDialog;

    invoke-direct {p0}, Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 0

    return-void
.end method

.method public onFavorChange(ILcom/yftech/car/media/radio/entity/DataOfRadio;)V
    .locals 0

    return-void
.end method

.method public onFreqChanage(ILcom/yftech/car/media/radio/entity/DataOfRadio;Lcom/yftech/car/media/radio/entity/DataOfRadio;)V
    .locals 0

    return-void
.end method

.method public onFreqSignal(ILcom/yftech/car/media/radio/entity/DataOfRadio;I)V
    .locals 0

    return-void
.end method

.method public onPlayPause(Z)V
    .locals 0

    return-void
.end method

.method public onSeekStatusChange(III)V
    .locals 2

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSeekStatusChange() scanType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " operation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog$2;->this$0:Lcom/yftech/libradio/dialog/RadioSearchingDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->access$102(Lcom/yftech/libradio/dialog/RadioSearchingDialog;Z)Z

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    if-nez p2, :cond_2

    if-ne p3, v1, :cond_2

    .line 316
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/CarRadioManager;->getBand()I

    move-result p1

    .line 317
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/yftech/car/media/radio/CarRadioManager;->getSearchList(I)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 318
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 328
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSeekStatusChange() band:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " list:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 329
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog$2;->this$0:Lcom/yftech/libradio/dialog/RadioSearchingDialog;

    invoke-virtual {p1}, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 330
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog$2;->this$0:Lcom/yftech/libradio/dialog/RadioSearchingDialog;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->dismissAllowingStateLoss()V

    goto :goto_1

    .line 319
    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onSeekStatusChange() band:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", list is empty"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 320
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog$2;->this$0:Lcom/yftech/libradio/dialog/RadioSearchingDialog;

    invoke-static {p1}, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->access$300(Lcom/yftech/libradio/dialog/RadioSearchingDialog;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 321
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog$2;->this$0:Lcom/yftech/libradio/dialog/RadioSearchingDialog;

    invoke-static {p1}, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->access$400(Lcom/yftech/libradio/dialog/RadioSearchingDialog;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 323
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog$2;->this$0:Lcom/yftech/libradio/dialog/RadioSearchingDialog;

    invoke-static {p1}, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->access$500(Lcom/yftech/libradio/dialog/RadioSearchingDialog;)Landroid/widget/TextView;

    move-result-object p1

    sget p2, Lcom/yftech/libradio/R$string;->radio_channel_search_dialog_search_fail_tips:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 325
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog$2;->this$0:Lcom/yftech/libradio/dialog/RadioSearchingDialog;

    invoke-static {p1}, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->access$600(Lcom/yftech/libradio/dialog/RadioSearchingDialog;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 326
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog$2;->this$0:Lcom/yftech/libradio/dialog/RadioSearchingDialog;

    invoke-static {p0}, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->access$700(Lcom/yftech/libradio/dialog/RadioSearchingDialog;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method
