.class Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$1;
.super Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioControlCallback;
.source "LayoutChildManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->getCarRadioControlCallback()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioControlCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$1;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioControlCallback;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onFavorChange$3(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$1;Lcom/yftech/car/media/radio/entity/DataOfRadio;)V
    .locals 3

    .line 326
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$1;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$200(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    .line 327
    instance-of v2, v1, Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;

    if-eqz v2, :cond_1

    .line 328
    check-cast v1, Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;

    .line 329
    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;->updateFavorsList(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V

    goto :goto_0

    .line 330
    :cond_1
    instance-of v2, v1, Lcom/yftech/car/widget/media/radio/list/RadioDynamicList;

    if-eqz v2, :cond_2

    .line 331
    check-cast v1, Lcom/yftech/car/widget/media/radio/list/RadioDynamicList;

    .line 332
    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/radio/list/RadioDynamicList;->updateList(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V

    goto :goto_0

    .line 333
    :cond_2
    instance-of v2, v1, Lcom/yftech/car/widget/media/radio/list/RadioDataList;

    if-eqz v2, :cond_0

    .line 334
    check-cast v1, Lcom/yftech/car/widget/media/radio/list/RadioDataList;

    .line 335
    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->notifydatasetchangedList(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V

    goto :goto_0

    .line 339
    :cond_3
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$1;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$100(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/widget/media/radio/button/RadioButton;

    const/16 v0, 0xa

    .line 340
    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/radio/button/RadioButton;->isFunction(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 341
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object v0

    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/manager/RadioManager;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/manager/RadioManager;->isFreqFavored(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/radio/button/RadioButton;->setActivatedStatus(Z)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public static synthetic lambda$onFreqChange$2(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$1;Lcom/yftech/car/media/radio/entity/DataOfRadio;)V
    .locals 3

    .line 284
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$1;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$400(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/radio/text/RadioTextView;

    .line 285
    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->setRadioText(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V

    goto :goto_0

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$1;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$500(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/radio/text/RadioText;

    .line 288
    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/radio/text/RadioText;->setRadioText(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V

    goto :goto_1

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$1;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$100(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/radio/button/RadioButton;

    const/16 v2, 0xb

    .line 291
    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/radio/button/RadioButton;->isFunction(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 292
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/radio/button/RadioButton;->setActivatedStatus(Z)V

    :cond_4
    const/16 v2, 0xa

    .line 295
    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/radio/button/RadioButton;->isFunction(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 296
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/yftech/car/widget/media/manager/RadioManager;->isFreqFavored(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/radio/button/RadioButton;->setActivatedStatus(Z)V

    goto :goto_2

    .line 299
    :cond_5
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$1;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$600(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Lcom/yftech/car/widget/media/radio/view/RulerView;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 300
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$1;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$600(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Lcom/yftech/car/widget/media/radio/view/RulerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/radio/view/RulerView;->setCurrentValue(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V

    .line 303
    :cond_6
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$1;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$200(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    .line 304
    instance-of v1, v0, Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;

    if-eqz v1, :cond_8

    .line 305
    check-cast v0, Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;

    .line 306
    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;->updateFavorsList(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V

    goto :goto_4

    .line 307
    :cond_8
    instance-of v1, v0, Lcom/yftech/car/widget/media/radio/list/RadioDynamicList;

    if-eqz v1, :cond_9

    .line 308
    check-cast v0, Lcom/yftech/car/widget/media/radio/list/RadioDynamicList;

    .line 309
    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/radio/list/RadioDynamicList;->updateList(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V

    goto :goto_4

    .line 310
    :cond_9
    instance-of v1, v0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;

    if-eqz v1, :cond_7

    .line 311
    check-cast v0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;

    .line 312
    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->updateList(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V

    goto :goto_4

    :cond_a
    return-void
.end method

.method public static synthetic lambda$onPlayPause$4(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$1;Z)V
    .locals 4

    .line 353
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$1;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$100(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/radio/button/RadioButton;

    const/4 v2, 0x6

    .line 354
    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/radio/button/RadioButton;->isFunction(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 355
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/radio/button/RadioButton;->isRadioScanStatusPause()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/manager/RadioManager;->getScanStatus()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 356
    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/radio/button/RadioButton;->setActivatedStatus(Z)V

    goto :goto_0

    .line 358
    :cond_1
    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/radio/button/RadioButton;->setActivatedStatus(Z)V

    goto :goto_0

    .line 363
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$1;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$200(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    .line 364
    instance-of v2, v1, Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 365
    check-cast v1, Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;

    .line 366
    invoke-virtual {v1, v3}, Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;->updateFavorsList(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V

    goto :goto_1

    .line 367
    :cond_4
    instance-of v2, v1, Lcom/yftech/car/widget/media/radio/list/RadioDynamicList;

    if-eqz v2, :cond_5

    .line 368
    check-cast v1, Lcom/yftech/car/widget/media/radio/list/RadioDynamicList;

    .line 369
    invoke-virtual {v1, v3}, Lcom/yftech/car/widget/media/radio/list/RadioDynamicList;->updateList(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V

    goto :goto_1

    .line 370
    :cond_5
    instance-of v2, v1, Lcom/yftech/car/widget/media/radio/list/RadioDataList;

    if-eqz v2, :cond_3

    .line 371
    check-cast v1, Lcom/yftech/car/widget/media/radio/list/RadioDataList;

    .line 372
    invoke-virtual {v1, v3}, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->updateList(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V

    goto :goto_1

    .line 375
    :cond_6
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$1;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$300(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/view/PlayAnimation;

    .line 376
    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/view/PlayAnimation;->setPlay(Z)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method public static synthetic lambda$onScanFreqSignal$0(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$1;Lcom/yftech/car/media/radio/entity/DataOfRadio;)V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$1;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$400(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/radio/text/RadioTextView;

    .line 214
    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->setRadioText(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V

    goto :goto_0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$1;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$500(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/radio/text/RadioText;

    .line 217
    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/radio/text/RadioText;->setRadioText(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V

    goto :goto_1

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$1;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$600(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Lcom/yftech/car/widget/media/radio/view/RulerView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 220
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$1;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$600(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Lcom/yftech/car/widget/media/radio/view/RulerView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/radio/view/RulerView;->setCurrentValue(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V

    :cond_2
    return-void
.end method

.method public static synthetic lambda$onSeekStatusChange$1(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$1;III)V
    .locals 5

    if-nez p1, :cond_2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    packed-switch p3, :pswitch_data_0

    goto :goto_1

    .line 239
    :pswitch_0
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$1;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {p2}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$200(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    .line 240
    instance-of v2, v1, Lcom/yftech/car/widget/media/radio/list/RadioDynamicList;

    if-eqz v2, :cond_1

    .line 241
    check-cast v1, Lcom/yftech/car/widget/media/radio/list/RadioDynamicList;

    .line 242
    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/radio/list/RadioDynamicList;->isType(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "LayoutChildManager"

    .line 243
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSeekStatusChange: SCAN_SEARCH_LIST ,scanType=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/manager/RadioManager;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object v2

    .line 245
    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/radio/list/RadioDynamicList;->updateList(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V

    goto :goto_0

    .line 247
    :cond_1
    instance-of v2, v1, Lcom/yftech/car/widget/media/radio/list/RadioDataList;

    if-eqz v2, :cond_0

    .line 248
    check-cast v1, Lcom/yftech/car/widget/media/radio/list/RadioDataList;

    .line 249
    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->isType(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/manager/RadioManager;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object v2

    .line 251
    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->updateList(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V

    goto :goto_0

    .line 263
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$1;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$100(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yftech/car/widget/media/radio/button/RadioButton;

    const/4 p3, 0x6

    .line 264
    invoke-virtual {p2, p3}, Lcom/yftech/car/widget/media/radio/button/RadioButton;->isFunction(I)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Lcom/yftech/car/widget/media/radio/button/RadioButton;->isRadioScanStatusPause()Z

    move-result p3

    if-eqz p3, :cond_3

    if-eqz p1, :cond_4

    const/4 p3, 0x0

    .line 266
    invoke-virtual {p2, p3}, Lcom/yftech/car/widget/media/radio/button/RadioButton;->setActivatedStatus(Z)V

    goto :goto_2

    .line 268
    :cond_4
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/yftech/car/widget/media/manager/RadioManager;->isPlaying()Z

    move-result p3

    .line 269
    invoke-virtual {p2, p3}, Lcom/yftech/car/widget/media/radio/button/RadioButton;->setActivatedStatus(Z)V

    goto :goto_2

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onFavorChange(ILcom/yftech/car/media/radio/entity/DataOfRadio;)V
    .locals 0

    if-nez p2, :cond_0

    .line 322
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/manager/RadioManager;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object p2

    .line 325
    :cond_0
    new-instance p1, Lcom/yftech/car/widget/media/radio/layout/-$$Lambda$LayoutChildManager$1$yzBjPT8SEyS8zmFcroLEJzww39o;

    invoke-direct {p1, p0, p2}, Lcom/yftech/car/widget/media/radio/layout/-$$Lambda$LayoutChildManager$1$yzBjPT8SEyS8zmFcroLEJzww39o;-><init>(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$1;Lcom/yftech/car/media/radio/entity/DataOfRadio;)V

    .line 345
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$1;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$000(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFreqChange(Lcom/yftech/car/media/radio/entity/DataOfRadio;Lcom/yftech/car/media/radio/entity/DataOfRadio;)V
    .locals 2

    const-string p2, "LayoutChildManager"

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFreqChange: newChannel=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-static {}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->setPlayFreq(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;

    .line 283
    new-instance p2, Lcom/yftech/car/widget/media/radio/layout/-$$Lambda$LayoutChildManager$1$pfFSuDGTseWvT1qrSMArJyN3sKo;

    invoke-direct {p2, p0, p1}, Lcom/yftech/car/widget/media/radio/layout/-$$Lambda$LayoutChildManager$1$pfFSuDGTseWvT1qrSMArJyN3sKo;-><init>(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$1;Lcom/yftech/car/media/radio/entity/DataOfRadio;)V

    .line 316
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$1;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$000(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPlayPause(Z)V
    .locals 3

    const-string v0, "LayoutChildManager"

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onPlayPause: isPlaying=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-static {}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->setPlaying(Z)Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;

    .line 352
    new-instance v0, Lcom/yftech/car/widget/media/radio/layout/-$$Lambda$LayoutChildManager$1$N6UUpsApxmEgQ9SgDuPMATFEiXM;

    invoke-direct {v0, p0, p1}, Lcom/yftech/car/widget/media/radio/layout/-$$Lambda$LayoutChildManager$1$N6UUpsApxmEgQ9SgDuPMATFEiXM;-><init>(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$1;Z)V

    .line 379
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$1;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$000(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPlaySignalUpdate(Lcom/yftech/car/media/radio/entity/DataOfRadio;I)V
    .locals 0

    .line 227
    invoke-super {p0, p1, p2}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioControlCallback;->onPlaySignalUpdate(Lcom/yftech/car/media/radio/entity/DataOfRadio;I)V

    return-void
.end method

.method public onScanFreqSignal(Lcom/yftech/car/media/radio/entity/DataOfRadio;I)V
    .locals 2

    const-string p2, "LayoutChildManager"

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScanFreqSignal: channel=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$1;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {p2}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$000(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object p2

    new-instance v0, Lcom/yftech/car/widget/media/radio/layout/-$$Lambda$LayoutChildManager$1$_cwHwwQ9LNJWvdQhwIh7yaNuyOw;

    invoke-direct {v0, p0, p1}, Lcom/yftech/car/widget/media/radio/layout/-$$Lambda$LayoutChildManager$1$_cwHwwQ9LNJWvdQhwIh7yaNuyOw;-><init>(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$1;Lcom/yftech/car/media/radio/entity/DataOfRadio;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSeekStatusChange(III)V
    .locals 3

    const-string v0, "LayoutChildManager"

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSeekStatusChange: scanType=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",status=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",operation=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance v0, Lcom/yftech/car/widget/media/radio/layout/-$$Lambda$LayoutChildManager$1$gcY-e-oPyddgKrukuoGl8cn3LLY;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/yftech/car/widget/media/radio/layout/-$$Lambda$LayoutChildManager$1$gcY-e-oPyddgKrukuoGl8cn3LLY;-><init>(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$1;III)V

    .line 275
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$1;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$000(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
