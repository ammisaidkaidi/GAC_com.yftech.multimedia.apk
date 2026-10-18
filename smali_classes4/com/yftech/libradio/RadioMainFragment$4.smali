.class Lcom/yftech/libradio/RadioMainFragment$4;
.super Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;
.source "RadioMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/RadioMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isFirst:Z

.field final synthetic this$0:Lcom/yftech/libradio/RadioMainFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/RadioMainFragment;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/yftech/libradio/RadioMainFragment$4;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-direct {p0}, Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;-><init>()V

    const/4 p1, 0x1

    .line 184
    iput-boolean p1, p0, Lcom/yftech/libradio/RadioMainFragment$4;->isFirst:Z

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 1

    .line 266
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAudioFocusChange() focusChange:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onFavorChange(ILcom/yftech/car/media/radio/entity/DataOfRadio;)V
    .locals 2

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFavorChange() index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 273
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/CarRadioManager;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 274
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/yftech/car/media/radio/CarRadioManager;->isFreqFavored(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    move-result p1

    .line 275
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainFragment$4;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {p0, p1}, Lcom/yftech/libradio/RadioMainFragment;->access$1700(Lcom/yftech/libradio/RadioMainFragment;Z)V

    :cond_0
    return-void
.end method

.method public onFreqChanage(ILcom/yftech/car/media/radio/entity/DataOfRadio;Lcom/yftech/car/media/radio/entity/DataOfRadio;)V
    .locals 2

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFreqChanage->colorIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " newChannel:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " oldChannel:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 248
    iget-boolean p1, p0, Lcom/yftech/libradio/RadioMainFragment$4;->isFirst:Z

    const/4 p3, 0x1

    if-eqz p1, :cond_1

    .line 249
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/CarRadioManager;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object p1

    .line 250
    invoke-virtual {p2}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result v0

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFreqChanage->isFirst="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/libradio/RadioMainFragment$4;->isFirst:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ";freq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ";\u56de\u8c03\u548cget\u4e0d\u4e00\u81f4\uff01\uff01\uff01"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFreqChanage->isFirst="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/libradio/RadioMainFragment$4;->isFirst:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ";freq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    .line 255
    :goto_0
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment$4;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {v0, p1, p3, p3}, Lcom/yftech/libradio/RadioMainFragment;->access$1100(Lcom/yftech/libradio/RadioMainFragment;Lcom/yftech/car/media/radio/entity/DataOfRadio;ZZ)V

    const/4 p1, 0x0

    .line 256
    iput-boolean p1, p0, Lcom/yftech/libradio/RadioMainFragment$4;->isFirst:Z

    goto :goto_1

    .line 258
    :cond_1
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment$4;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {p1, p2, p3, p3}, Lcom/yftech/libradio/RadioMainFragment;->access$1100(Lcom/yftech/libradio/RadioMainFragment;Lcom/yftech/car/media/radio/entity/DataOfRadio;ZZ)V

    .line 260
    :goto_1
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/yftech/car/media/radio/CarRadioManager;->isFreqFavored(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    move-result p1

    .line 261
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainFragment$4;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {p0, p1}, Lcom/yftech/libradio/RadioMainFragment;->access$1700(Lcom/yftech/libradio/RadioMainFragment;Z)V

    return-void
.end method

.method public onFreqSignal(ILcom/yftech/car/media/radio/entity/DataOfRadio;I)V
    .locals 2

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFreqSignal()  index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " channel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " level:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 194
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment$4;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {p1}, Lcom/yftech/libradio/RadioMainFragment;->access$1000(Lcom/yftech/libradio/RadioMainFragment;)F

    move-result p1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-nez p1, :cond_0

    .line 196
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment$4;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {p1, p2, v0, v0}, Lcom/yftech/libradio/RadioMainFragment;->access$1100(Lcom/yftech/libradio/RadioMainFragment;Lcom/yftech/car/media/radio/entity/DataOfRadio;ZZ)V

    .line 200
    :cond_0
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment$4;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {p1}, Lcom/yftech/libradio/RadioMainFragment;->access$1200(Lcom/yftech/libradio/RadioMainFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 201
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment$4;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {p1, p2, v0, v0}, Lcom/yftech/libradio/RadioMainFragment;->access$1100(Lcom/yftech/libradio/RadioMainFragment;Lcom/yftech/car/media/radio/entity/DataOfRadio;ZZ)V

    .line 202
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment$4;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/yftech/libradio/RadioMainFragment;->access$1202(Lcom/yftech/libradio/RadioMainFragment;Z)Z

    .line 205
    :cond_1
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/CarRadioManager;->isScanStatus()Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz p2, :cond_2

    .line 209
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainFragment$4;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-virtual {p2}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result p1

    invoke-static {p0, p1, p3}, Lcom/yftech/libradio/RadioMainFragment;->access$1300(Lcom/yftech/libradio/RadioMainFragment;II)V

    goto :goto_0

    .line 211
    :cond_2
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/CarRadioManager;->getBand()I

    move-result p1

    .line 212
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainFragment$4;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {p0, p1, p3}, Lcom/yftech/libradio/RadioMainFragment;->access$1300(Lcom/yftech/libradio/RadioMainFragment;II)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onPlayPause(Z)V
    .locals 2

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayPause() isPlaying:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment$4;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {v0, p1}, Lcom/yftech/libradio/RadioMainFragment;->access$1600(Lcom/yftech/libradio/RadioMainFragment;Z)V

    .line 284
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainFragment$4;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {p0, p1}, Lcom/yftech/libradio/RadioMainFragment;->access$1500(Lcom/yftech/libradio/RadioMainFragment;Z)V

    return-void
.end method

.method public onRdsCommonStatusChange(IZ)V
    .locals 2

    .line 289
    invoke-super {p0, p1, p2}, Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;->onRdsCommonStatusChange(IZ)V

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 291
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainFragment$4;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {p0}, Lcom/yftech/libradio/RadioMainFragment;->access$100(Lcom/yftech/libradio/RadioMainFragment;)Lcom/yftech/libradio/rds/RdsViewControler;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/yftech/libradio/rds/RdsViewControler;->onRdsCommonStatusChange(IZ)V

    return-void
.end method

.method public onRdsCommonStringChange(ILjava/lang/String;)V
    .locals 0

    .line 296
    invoke-super {p0, p1, p2}, Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;->onRdsCommonStringChange(ILjava/lang/String;)V

    .line 298
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainFragment$4;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {p0}, Lcom/yftech/libradio/RadioMainFragment;->access$100(Lcom/yftech/libradio/RadioMainFragment;)Lcom/yftech/libradio/rds/RdsViewControler;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/yftech/libradio/rds/RdsViewControler;->onRdsCommonStringChange(ILjava/lang/String;)V

    return-void
.end method

.method public onRdsPtyStatusChange(I)V
    .locals 0

    .line 304
    invoke-super {p0, p1}, Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;->onRdsPtyStatusChange(I)V

    .line 305
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainFragment$4;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {p0}, Lcom/yftech/libradio/RadioMainFragment;->access$100(Lcom/yftech/libradio/RadioMainFragment;)Lcom/yftech/libradio/rds/RdsViewControler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/rds/RdsViewControler;->onRdsPtyStatusChange(I)V

    return-void
.end method

.method public onSeekStatusChange(III)V
    .locals 2

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSeekStatusChange() scanType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " status:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " operation:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 227
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment$4;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {p1}, Lcom/yftech/libradio/RadioMainFragment;->access$1400(Lcom/yftech/libradio/RadioMainFragment;)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    if-nez p3, :cond_0

    .line 232
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainFragment$4;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/yftech/libradio/RadioMainFragment;->access$1500(Lcom/yftech/libradio/RadioMainFragment;Z)V

    .line 233
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainFragment$4;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {p0, p2}, Lcom/yftech/libradio/RadioMainFragment;->access$1600(Lcom/yftech/libradio/RadioMainFragment;Z)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    if-ne p3, p1, :cond_1

    .line 239
    iget-object p2, p0, Lcom/yftech/libradio/RadioMainFragment$4;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {p2, p1}, Lcom/yftech/libradio/RadioMainFragment;->access$1500(Lcom/yftech/libradio/RadioMainFragment;Z)V

    .line 240
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainFragment$4;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/CarRadioManager;->isPlaying()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/yftech/libradio/RadioMainFragment;->access$1600(Lcom/yftech/libradio/RadioMainFragment;Z)V

    :cond_1
    :goto_0
    return-void
.end method
