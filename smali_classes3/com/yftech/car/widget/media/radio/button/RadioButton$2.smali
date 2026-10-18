.class Lcom/yftech/car/widget/media/radio/button/RadioButton$2;
.super Ljava/lang/Object;
.source "RadioButton.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 476
    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton$2;->this$0:Lcom/yftech/car/widget/media/radio/button/RadioButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 479
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton$2;->this$0:Lcom/yftech/car/widget/media/radio/button/RadioButton;

    invoke-static {p1}, Lcom/yftech/car/widget/media/radio/button/RadioButton;->access$500(Lcom/yftech/car/widget/media/radio/button/RadioButton;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 541
    :pswitch_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->getBand()I

    move-result p0

    if-eqz p0, :cond_4

    .line 542
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/manager/RadioManager;->setBand(I)I

    goto/16 :goto_0

    .line 536
    :pswitch_1
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->getBand()I

    move-result p0

    if-eq p0, v1, :cond_4

    .line 537
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/manager/RadioManager;->setBand(I)I

    goto/16 :goto_0

    .line 528
    :pswitch_2
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->getBand()I

    move-result p0

    if-nez p0, :cond_0

    .line 530
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/manager/RadioManager;->setBand(I)I

    goto/16 :goto_0

    .line 532
    :cond_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/manager/RadioManager;->setBand(I)I

    goto/16 :goto_0

    .line 515
    :pswitch_3
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton$2;->this$0:Lcom/yftech/car/widget/media/radio/button/RadioButton;

    invoke-static {p1}, Lcom/yftech/car/widget/media/radio/button/RadioButton;->access$100(Lcom/yftech/car/widget/media/radio/button/RadioButton;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/manager/RadioManager;->stop()I

    move-result p1

    if-ne p1, v2, :cond_1

    return v2

    .line 518
    :cond_1
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/manager/RadioManager;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object p1

    .line 519
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/manager/RadioManager;->isFreqFavored(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 520
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/manager/RadioManager;->removeFavor(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    move-result p1

    .line 521
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton$2;->this$0:Lcom/yftech/car/widget/media/radio/button/RadioButton;

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/radio/button/RadioButton;->access$200(Lcom/yftech/car/widget/media/radio/button/RadioButton;Z)V

    goto/16 :goto_0

    .line 523
    :cond_2
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton$2;->this$0:Lcom/yftech/car/widget/media/radio/button/RadioButton;

    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/radio/button/RadioButton;->getFavorMax(Lcom/yftech/car/media/radio/entity/DataOfRadio;)I

    move-result v1

    iget-object v3, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton$2;->this$0:Lcom/yftech/car/widget/media/radio/button/RadioButton;

    invoke-static {v3}, Lcom/yftech/car/widget/media/radio/button/RadioButton;->access$300(Lcom/yftech/car/widget/media/radio/button/RadioButton;)Z

    move-result v3

    invoke-virtual {v0, p1, v1, v3}, Lcom/yftech/car/widget/media/manager/RadioManager;->addFavor(Lcom/yftech/car/media/radio/entity/DataOfRadio;IZ)Z

    move-result p1

    .line 524
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton$2;->this$0:Lcom/yftech/car/widget/media/radio/button/RadioButton;

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/radio/button/RadioButton;->access$400(Lcom/yftech/car/widget/media/radio/button/RadioButton;Z)V

    goto :goto_0

    .line 512
    :pswitch_4
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->scanAllByFreq()V

    goto :goto_0

    .line 509
    :pswitch_5
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->scanSave()V

    goto :goto_0

    .line 506
    :pswitch_6
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->stop()I

    goto :goto_0

    .line 499
    :pswitch_7
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->isPlaying()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 500
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->pause()V

    goto :goto_0

    .line 502
    :cond_3
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->play()V

    goto :goto_0

    .line 496
    :pswitch_8
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->stepDown()I

    goto :goto_0

    .line 493
    :pswitch_9
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->stepUp()I

    goto :goto_0

    .line 490
    :pswitch_a
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->seekUp()I

    goto :goto_0

    .line 487
    :pswitch_b
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->seekDown()I

    goto :goto_0

    .line 484
    :pswitch_c
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->pause()V

    goto :goto_0

    .line 481
    :pswitch_d
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->play()V

    :cond_4
    :goto_0
    :pswitch_e
    return v2

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
