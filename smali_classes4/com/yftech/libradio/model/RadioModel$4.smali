.class Lcom/yftech/libradio/model/RadioModel$4;
.super Ljava/lang/Object;
.source "RadioModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/model/RadioModel;->setFreqList(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libradio/model/interfaces/IRadioModel$OnFreqListLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/model/RadioModel;

.field final synthetic val$app:Lcom/media/common/util/BaseApplication;

.field final synthetic val$band:I

.field final synthetic val$listener:Lcom/yftech/libradio/model/interfaces/IRadioModel$OnFreqListLoadListener;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/model/RadioModel;ILcom/media/common/util/BaseApplication;Lcom/yftech/libradio/model/interfaces/IRadioModel$OnFreqListLoadListener;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/yftech/libradio/model/RadioModel$4;->this$0:Lcom/yftech/libradio/model/RadioModel;

    iput p2, p0, Lcom/yftech/libradio/model/RadioModel$4;->val$band:I

    iput-object p3, p0, Lcom/yftech/libradio/model/RadioModel$4;->val$app:Lcom/media/common/util/BaseApplication;

    iput-object p4, p0, Lcom/yftech/libradio/model/RadioModel$4;->val$listener:Lcom/yftech/libradio/model/interfaces/IRadioModel$OnFreqListLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThreadId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/CarRadioManager;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object v0

    .line 186
    iget v1, p0, Lcom/yftech/libradio/model/RadioModel$4;->val$band:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/yftech/libradio/model/RadioModel$4;->this$0:Lcom/yftech/libradio/model/RadioModel;

    iget-object v4, p0, Lcom/yftech/libradio/model/RadioModel$4;->val$app:Lcom/media/common/util/BaseApplication;

    .line 187
    invoke-virtual {v4}, Lcom/media/common/util/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/yftech/car/media/radio/CarRadioManager;->getMax(I)I

    move-result v5

    const-string v6, "fm_max"

    const v7, 0x1a5e0

    invoke-static {v1, v4, v5, v6, v7}, Lcom/yftech/libradio/model/RadioModel;->access$000(Lcom/yftech/libradio/model/RadioModel;Landroid/content/Context;ILjava/lang/String;I)I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/yftech/libradio/model/RadioModel$4;->this$0:Lcom/yftech/libradio/model/RadioModel;

    iget-object v4, p0, Lcom/yftech/libradio/model/RadioModel$4;->val$app:Lcom/media/common/util/BaseApplication;

    .line 188
    invoke-virtual {v4}, Lcom/media/common/util/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/yftech/car/media/radio/CarRadioManager;->getMax(I)I

    move-result v5

    const-string v6, "am_max"

    const/16 v7, 0x65d

    invoke-static {v1, v4, v5, v6, v7}, Lcom/yftech/libradio/model/RadioModel;->access$000(Lcom/yftech/libradio/model/RadioModel;Landroid/content/Context;ILjava/lang/String;I)I

    move-result v1

    .line 189
    :goto_0
    iget v4, p0, Lcom/yftech/libradio/model/RadioModel$4;->val$band:I

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/yftech/libradio/model/RadioModel$4;->this$0:Lcom/yftech/libradio/model/RadioModel;

    iget-object v5, p0, Lcom/yftech/libradio/model/RadioModel$4;->val$app:Lcom/media/common/util/BaseApplication;

    .line 190
    invoke-virtual {v5}, Lcom/media/common/util/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/yftech/car/media/radio/CarRadioManager;->getMin(I)I

    move-result v6

    const-string v7, "fm_min"

    const v8, 0x155cc

    invoke-static {v4, v5, v6, v7, v8}, Lcom/yftech/libradio/model/RadioModel;->access$000(Lcom/yftech/libradio/model/RadioModel;Landroid/content/Context;ILjava/lang/String;I)I

    move-result v4

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/yftech/libradio/model/RadioModel$4;->this$0:Lcom/yftech/libradio/model/RadioModel;

    iget-object v5, p0, Lcom/yftech/libradio/model/RadioModel$4;->val$app:Lcom/media/common/util/BaseApplication;

    .line 191
    invoke-virtual {v5}, Lcom/media/common/util/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/yftech/car/media/radio/CarRadioManager;->getMin(I)I

    move-result v6

    const-string v7, "am_min"

    const/16 v8, 0x213

    invoke-static {v4, v5, v6, v7, v8}, Lcom/yftech/libradio/model/RadioModel;->access$000(Lcom/yftech/libradio/model/RadioModel;Landroid/content/Context;ILjava/lang/String;I)I

    move-result v4

    .line 196
    :goto_1
    iget v5, p0, Lcom/yftech/libradio/model/RadioModel$4;->val$band:I

    if-nez v5, :cond_2

    iget-object v2, p0, Lcom/yftech/libradio/model/RadioModel$4;->this$0:Lcom/yftech/libradio/model/RadioModel;

    iget-object v5, p0, Lcom/yftech/libradio/model/RadioModel$4;->val$app:Lcom/media/common/util/BaseApplication;

    .line 197
    invoke-virtual {v5}, Lcom/media/common/util/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/yftech/car/media/radio/CarRadioManager;->getManualStep(I)I

    move-result v6

    const-string v7, "fm_step"

    const/16 v8, 0x64

    invoke-static {v2, v5, v6, v7, v8}, Lcom/yftech/libradio/model/RadioModel;->access$000(Lcom/yftech/libradio/model/RadioModel;Landroid/content/Context;ILjava/lang/String;I)I

    move-result v2

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/yftech/libradio/model/RadioModel$4;->this$0:Lcom/yftech/libradio/model/RadioModel;

    iget-object v6, p0, Lcom/yftech/libradio/model/RadioModel$4;->val$app:Lcom/media/common/util/BaseApplication;

    .line 198
    invoke-virtual {v6}, Lcom/media/common/util/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/yftech/car/media/radio/CarRadioManager;->getManualStep(I)I

    move-result v2

    const-string v7, "am_step"

    const/16 v8, 0x9

    invoke-static {v5, v6, v2, v7, v8}, Lcom/yftech/libradio/model/RadioModel;->access$000(Lcom/yftech/libradio/model/RadioModel;Landroid/content/Context;ILjava/lang/String;I)I

    move-result v2

    .line 200
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setFreqList:freqIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/yftech/car/media/radio/entity/DataOfRadio;->Freq:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " band="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/yftech/libradio/model/RadioModel$4;->val$band:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 201
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setFreqList:maxFreq="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " minFreq="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " step="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-ltz v1, :cond_7

    if-ltz v4, :cond_7

    if-gez v2, :cond_3

    goto :goto_5

    .line 210
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 213
    new-instance v6, Ljava/text/DecimalFormat;

    const-string v7, "0.0"

    invoke-direct {v6, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    :goto_3
    if-gt v4, v1, :cond_6

    .line 216
    iget v7, p0, Lcom/yftech/libradio/model/RadioModel$4;->val$band:I

    if-nez v7, :cond_4

    int-to-float v7, v4

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v7, v8

    float-to-double v7, v7

    .line 217
    invoke-virtual {v6, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 219
    :cond_4
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    :goto_4
    iget v7, v0, Lcom/yftech/car/media/radio/entity/DataOfRadio;->Freq:I

    if-ne v7, v4, :cond_5

    move v3, v4

    :cond_5
    add-int/2addr v4, v2

    goto :goto_3

    .line 225
    :cond_6
    iget-object p0, p0, Lcom/yftech/libradio/model/RadioModel$4;->val$listener:Lcom/yftech/libradio/model/interfaces/IRadioModel$OnFreqListLoadListener;

    invoke-interface {p0, v5, v3}, Lcom/yftech/libradio/model/interfaces/IRadioModel$OnFreqListLoadListener;->onComplete(Ljava/util/List;I)V

    return-void

    .line 206
    :cond_7
    :goto_5
    iget-object p0, p0, Lcom/yftech/libradio/model/RadioModel$4;->val$listener:Lcom/yftech/libradio/model/interfaces/IRadioModel$OnFreqListLoadListener;

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-interface {p0, v0, v1}, Lcom/yftech/libradio/model/interfaces/IRadioModel$OnFreqListLoadListener;->onComplete(Ljava/util/List;I)V

    return-void
.end method
