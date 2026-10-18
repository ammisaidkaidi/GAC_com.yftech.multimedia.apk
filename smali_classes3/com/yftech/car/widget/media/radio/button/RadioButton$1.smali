.class Lcom/yftech/car/widget/media/radio/button/RadioButton$1;
.super Ljava/lang/Object;
.source "RadioButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/radio/button/RadioButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/radio/button/RadioButton;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/radio/button/RadioButton;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton$1;->this$0:Lcom/yftech/car/widget/media/radio/button/RadioButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 350
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton$1;->this$0:Lcom/yftech/car/widget/media/radio/button/RadioButton;

    invoke-static {p1}, Lcom/yftech/car/widget/media/radio/button/RadioButton;->access$000(Lcom/yftech/car/widget/media/radio/button/RadioButton;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 412
    :pswitch_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->getBand()I

    move-result p0

    if-eqz p0, :cond_4

    .line 413
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/manager/RadioManager;->setBand(I)I

    goto/16 :goto_0

    .line 407
    :pswitch_1
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->getBand()I

    move-result p0

    if-eq p0, v1, :cond_4

    .line 408
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/manager/RadioManager;->setBand(I)I

    goto/16 :goto_0

    .line 399
    :pswitch_2
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->getBand()I

    move-result p0

    if-nez p0, :cond_0

    .line 401
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/manager/RadioManager;->setBand(I)I

    goto/16 :goto_0

    .line 403
    :cond_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/manager/RadioManager;->setBand(I)I

    goto/16 :goto_0

    .line 386
    :pswitch_3
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton$1;->this$0:Lcom/yftech/car/widget/media/radio/button/RadioButton;

    invoke-static {p1}, Lcom/yftech/car/widget/media/radio/button/RadioButton;->access$100(Lcom/yftech/car/widget/media/radio/button/RadioButton;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/manager/RadioManager;->stop()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    return-void

    .line 389
    :cond_1
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/manager/RadioManager;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object p1

    .line 390
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/manager/RadioManager;->isFreqFavored(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 391
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/manager/RadioManager;->removeFavor(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    move-result p1

    .line 392
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton$1;->this$0:Lcom/yftech/car/widget/media/radio/button/RadioButton;

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/radio/button/RadioButton;->access$200(Lcom/yftech/car/widget/media/radio/button/RadioButton;Z)V

    goto/16 :goto_0

    .line 394
    :cond_2
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton$1;->this$0:Lcom/yftech/car/widget/media/radio/button/RadioButton;

    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/radio/button/RadioButton;->getFavorMax(Lcom/yftech/car/media/radio/entity/DataOfRadio;)I

    move-result v1

    iget-object v2, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton$1;->this$0:Lcom/yftech/car/widget/media/radio/button/RadioButton;

    invoke-static {v2}, Lcom/yftech/car/widget/media/radio/button/RadioButton;->access$300(Lcom/yftech/car/widget/media/radio/button/RadioButton;)Z

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/yftech/car/widget/media/manager/RadioManager;->addFavor(Lcom/yftech/car/media/radio/entity/DataOfRadio;IZ)Z

    move-result p1

    .line 395
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton$1;->this$0:Lcom/yftech/car/widget/media/radio/button/RadioButton;

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/radio/button/RadioButton;->access$400(Lcom/yftech/car/widget/media/radio/button/RadioButton;Z)V

    goto :goto_0

    .line 383
    :pswitch_4
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->scanAllByFreq()V

    goto :goto_0

    .line 380
    :pswitch_5
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->scanSave()V

    goto :goto_0

    .line 377
    :pswitch_6
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->stop()I

    goto :goto_0

    .line 370
    :pswitch_7
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->isPlaying()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 371
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->pause()V

    goto :goto_0

    .line 373
    :cond_3
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->play()V

    goto :goto_0

    .line 367
    :pswitch_8
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->stepDown()I

    goto :goto_0

    .line 364
    :pswitch_9
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->stepUp()I

    goto :goto_0

    .line 361
    :pswitch_a
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->seekUp()I

    goto :goto_0

    .line 358
    :pswitch_b
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->seekDown()I

    goto :goto_0

    .line 355
    :pswitch_c
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->pause()V

    goto :goto_0

    .line 352
    :pswitch_d
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->play()V

    :cond_4
    :goto_0
    :pswitch_e
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method
