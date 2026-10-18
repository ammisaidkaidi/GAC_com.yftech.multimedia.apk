.class Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$3;
.super Ljava/lang/Object;
.source "LayoutChildManager.java"

# interfaces
.implements Lcom/yftech/car/widget/media/text/VisibilityTextButton$OnClickVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;
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

    .line 532
    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$3;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onClickVisibility$0(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$3;)V
    .locals 1

    .line 570
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$3;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$702(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;Z)Z

    return-void
.end method

.method public static synthetic lambda$onClickVisibility$1(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$3;Landroid/view/View;)V
    .locals 3

    .line 569
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 570
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$3;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$000(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object p1

    new-instance v0, Lcom/yftech/car/widget/media/radio/layout/-$$Lambda$LayoutChildManager$3$GyWiNWLwQWJfECgZViHY3fIatSU;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/radio/layout/-$$Lambda$LayoutChildManager$3$GyWiNWLwQWJfECgZViHY3fIatSU;-><init>(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$3;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static synthetic lambda$onClickVisibilityGone$4(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$3;)V
    .locals 1

    .line 645
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$3;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$702(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;Z)Z

    return-void
.end method

.method public static synthetic lambda$onClickVisibilityGone$5(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$3;Landroid/view/View;)V
    .locals 3

    .line 644
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 645
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$3;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$000(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object p1

    new-instance v0, Lcom/yftech/car/widget/media/radio/layout/-$$Lambda$LayoutChildManager$3$ypa_KO6qn1ZEqIoYbSGeYvk-k7k;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/radio/layout/-$$Lambda$LayoutChildManager$3$ypa_KO6qn1ZEqIoYbSGeYvk-k7k;-><init>(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$3;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static synthetic lambda$onClickVisibilityVisible$2(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$3;)V
    .locals 1

    .line 609
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$3;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$702(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;Z)Z

    return-void
.end method

.method public static synthetic lambda$onClickVisibilityVisible$3(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$3;Landroid/view/View;)V
    .locals 3

    .line 608
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 609
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$3;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$000(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object p1

    new-instance v0, Lcom/yftech/car/widget/media/radio/layout/-$$Lambda$LayoutChildManager$3$Ae0XtcmWTt10doKzjdBFbYs-jBI;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/radio/layout/-$$Lambda$LayoutChildManager$3$Ae0XtcmWTt10doKzjdBFbYs-jBI;-><init>(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$3;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public onClickVisibility([IIII)V
    .locals 10

    .line 535
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$3;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$000(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 536
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$3;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$700(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "LayoutChildManager"

    const-string p1, "onClickVisibility: Double Click isAnimationLoading is true"

    .line 537
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 542
    :cond_0
    array-length v0, p1

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, p3

    move v4, v1

    move p3, v2

    :goto_0
    const/4 v5, 0x1

    if-ge p3, v0, :cond_8

    aget v6, p1, p3

    if-eq v6, v1, :cond_7

    .line 544
    iget-object v7, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$3;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {v7}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$000(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 545
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_2

    and-int/lit8 v7, p2, 0x1

    if-lez v7, :cond_4

    if-ne v3, v1, :cond_1

    move v3, v2

    .line 551
    :cond_1
    iget-object v4, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$3;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {v4, v5}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$702(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;Z)Z

    .line 552
    iget-object v4, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$3;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {v4, v6, v3, p4}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$800(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;Landroid/view/View;II)V

    move v4, v5

    goto :goto_1

    .line 554
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_4

    and-int/lit8 v7, p2, 0x2

    if-lez v7, :cond_4

    .line 557
    iget-object v4, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$3;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {v4, v5}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$702(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;Z)Z

    if-ne v3, v1, :cond_3

    move v3, v2

    .line 561
    :cond_3
    iget-object v4, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$3;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {v4, v6, v3, p4}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$900(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;Landroid/view/View;II)V

    move v4, v2

    .line 566
    :cond_4
    :goto_1
    iget-object v7, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$3;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {v7}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$700(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Z

    move-result v7

    if-eqz v7, :cond_7

    if-eq v3, v5, :cond_6

    const/4 v5, 0x2

    if-ne v3, v5, :cond_5

    goto :goto_2

    .line 573
    :cond_5
    iget-object v5, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$3;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {v5, v2}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$702(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;Z)Z

    goto :goto_3

    .line 568
    :cond_6
    :goto_2
    iget-object v5, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$3;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {v5}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$000(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v5

    new-instance v7, Lcom/yftech/car/widget/media/radio/layout/-$$Lambda$LayoutChildManager$3$Y_ze5hTsyycIgwxLHipclusknwQ;

    invoke-direct {v7, p0, v6}, Lcom/yftech/car/widget/media/radio/layout/-$$Lambda$LayoutChildManager$3$Y_ze5hTsyycIgwxLHipclusknwQ;-><init>(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$3;Landroid/view/View;)V

    int-to-long v8, p4

    invoke-virtual {v5, v7, v8, v9}, Landroid/view/ViewGroup;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    :cond_7
    :goto_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 579
    :cond_8
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$3;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$1000(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/widget/media/text/VisibilityTextButton;

    if-ne v4, v5, :cond_9

    move p2, v5

    goto :goto_5

    :cond_9
    move p2, v2

    .line 580
    :goto_5
    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->setVisibilityShow(Z)V

    goto :goto_4

    :cond_a
    return-void
.end method

.method public onClickVisibilityGone([III)V
    .locals 8

    .line 623
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$3;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$000(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 624
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$3;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$700(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "LayoutChildManager"

    const-string p1, "onClickVisibility: Double Click isAnimationLoading is true"

    .line 625
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 629
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, p2

    move p2, v1

    :goto_0
    if-ge p2, v0, :cond_6

    aget v3, p1, p2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    .line 631
    iget-object v5, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$3;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {v5}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$000(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 632
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    const/4 v7, 0x1

    if-eq v5, v6, :cond_2

    .line 633
    iget-object v5, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$3;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {v5, v7}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$702(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;Z)Z

    if-ne v2, v4, :cond_1

    move v2, v1

    .line 637
    :cond_1
    iget-object v4, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$3;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {v4, v3, v2, p3}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$900(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;Landroid/view/View;II)V

    .line 641
    :cond_2
    iget-object v4, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$3;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {v4}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$700(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eq v2, v7, :cond_4

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    goto :goto_1

    .line 648
    :cond_3
    iget-object v3, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$3;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {v3, v1}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$702(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;Z)Z

    goto :goto_2

    .line 643
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$3;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {v4}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$000(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v4

    new-instance v5, Lcom/yftech/car/widget/media/radio/layout/-$$Lambda$LayoutChildManager$3$ChNiGzO1IHoobaeykxi7xZ3BfwA;

    invoke-direct {v5, p0, v3}, Lcom/yftech/car/widget/media/radio/layout/-$$Lambda$LayoutChildManager$3$ChNiGzO1IHoobaeykxi7xZ3BfwA;-><init>(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$3;Landroid/view/View;)V

    int-to-long v6, p3

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/ViewGroup;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    :cond_5
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public onClickVisibilityVisible([III)V
    .locals 8

    .line 588
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$3;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$000(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 589
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$3;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$700(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "LayoutChildManager"

    const-string p1, "onClickVisibility: Double Click isAnimationLoading is true"

    .line 590
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 594
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, p2

    move p2, v1

    :goto_0
    if-ge p2, v0, :cond_6

    aget v3, p1, p2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    .line 596
    iget-object v5, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$3;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {v5}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$000(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 597
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    if-ne v2, v4, :cond_1

    move v2, v1

    .line 601
    :cond_1
    iget-object v4, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$3;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {v4, v6}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$702(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;Z)Z

    .line 602
    iget-object v4, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$3;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {v4, v3, v2, p3}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$800(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;Landroid/view/View;II)V

    .line 605
    :cond_2
    iget-object v4, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$3;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {v4}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$700(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eq v2, v6, :cond_4

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    goto :goto_1

    .line 612
    :cond_3
    iget-object v3, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$3;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {v3, v1}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$702(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;Z)Z

    goto :goto_2

    .line 607
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$3;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-static {v4}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->access$000(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v4

    new-instance v5, Lcom/yftech/car/widget/media/radio/layout/-$$Lambda$LayoutChildManager$3$lUzbYVIw878LiFjqSyWrW0U5Vvs;

    invoke-direct {v5, p0, v3}, Lcom/yftech/car/widget/media/radio/layout/-$$Lambda$LayoutChildManager$3$lUzbYVIw878LiFjqSyWrW0U5Vvs;-><init>(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$3;Landroid/view/View;)V

    int-to-long v6, p3

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/ViewGroup;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    :cond_5
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method
