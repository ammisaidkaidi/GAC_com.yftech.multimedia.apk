.class Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$8;
.super Ljava/lang/Object;
.source "MusicLayoutChildManager.java"

# interfaces
.implements Lcom/yftech/car/widget/media/text/VisibilityTextButton$OnClickVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)V
    .locals 0

    .line 1331
    iput-object p1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onClickVisibility$0(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$8;)V
    .locals 1

    .line 1369
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$2602(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;Z)Z

    return-void
.end method

.method public static synthetic lambda$onClickVisibility$1(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$8;Landroid/view/View;)V
    .locals 3

    .line 1368
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 1369
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1300(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object p1

    new-instance v0, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$8$EP_IYDKX3BTU3ZJn7uhdW-HN8m0;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$8$EP_IYDKX3BTU3ZJn7uhdW-HN8m0;-><init>(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$8;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method static synthetic lambda$onClickVisibilityGone$3(Landroid/view/View;)V
    .locals 0

    .line 1425
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    return-void
.end method

.method static synthetic lambda$onClickVisibilityVisible$2(Landroid/view/View;)V
    .locals 0

    .line 1401
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    return-void
.end method


# virtual methods
.method public onClickVisibility([IIII)V
    .locals 10

    .line 1334
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1300(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1335
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$2600(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "LayoutChildManager"

    const-string p1, "onClickVisibility: Double Click isAnimationLoading is true"

    .line 1336
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1341
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

    .line 1343
    iget-object v7, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v7}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1300(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1344
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_2

    and-int/lit8 v7, p2, 0x1

    if-lez v7, :cond_4

    if-ne v3, v1, :cond_1

    move v3, v2

    .line 1350
    :cond_1
    iget-object v4, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v4, v5}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$2602(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;Z)Z

    .line 1351
    iget-object v4, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v4, v6, v3, p4}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$2700(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;Landroid/view/View;II)V

    move v4, v5

    goto :goto_1

    .line 1353
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_4

    and-int/lit8 v7, p2, 0x2

    if-lez v7, :cond_4

    .line 1356
    iget-object v4, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v4, v5}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$2602(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;Z)Z

    if-ne v3, v1, :cond_3

    move v3, v2

    .line 1360
    :cond_3
    iget-object v4, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v4, v6, v3, p4}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$2800(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;Landroid/view/View;II)V

    move v4, v2

    .line 1365
    :cond_4
    :goto_1
    iget-object v7, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v7}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$2600(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Z

    move-result v7

    if-eqz v7, :cond_7

    if-eq v3, v5, :cond_6

    const/4 v5, 0x2

    if-ne v3, v5, :cond_5

    goto :goto_2

    .line 1372
    :cond_5
    iget-object v5, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v5, v2}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$2602(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;Z)Z

    goto :goto_3

    .line 1367
    :cond_6
    :goto_2
    iget-object v5, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v5}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1300(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v5

    new-instance v7, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$8$9W19yz6uzvawTDy5nzYgQJ8QpJA;

    invoke-direct {v7, p0, v6}, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$8$9W19yz6uzvawTDy5nzYgQJ8QpJA;-><init>(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$8;Landroid/view/View;)V

    int-to-long v8, p4

    invoke-virtual {v5, v7, v8, v9}, Landroid/view/ViewGroup;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    :cond_7
    :goto_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 1378
    :cond_8
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$2900(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;

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

    .line 1379
    :goto_5
    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->setVisibilityShow(Z)V

    goto :goto_4

    :cond_a
    return-void
.end method

.method public onClickVisibilityGone([III)V
    .locals 8

    .line 1411
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1300(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1413
    array-length v0, p1

    const/4 v1, 0x0

    move v2, p2

    move p2, v1

    :goto_0
    if-ge p2, v0, :cond_3

    aget v3, p1, p2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 1415
    iget-object v5, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v5}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1300(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1416
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_2

    .line 1417
    iget-object v5, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$2602(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;Z)Z

    if-ne v2, v4, :cond_0

    move v2, v1

    .line 1421
    :cond_0
    iget-object v4, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v4, v3, v2, p3}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$2800(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;Landroid/view/View;II)V

    if-eq v2, v6, :cond_1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 1424
    :cond_1
    iget-object v4, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v4}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1300(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v4

    new-instance v5, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$8$QenxttOFoOeYXbZbr-LjaTtYsd0;

    invoke-direct {v5, v3}, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$8$QenxttOFoOeYXbZbr-LjaTtYsd0;-><init>(Landroid/view/View;)V

    int-to-long v6, p3

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/ViewGroup;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onClickVisibilityVisible([III)V
    .locals 8

    .line 1387
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1300(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1389
    array-length v0, p1

    const/4 v1, 0x0

    move v2, p2

    move p2, v1

    :goto_0
    if-ge p2, v0, :cond_4

    aget v3, p1, p2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 1391
    iget-object v5, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v5}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1300(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1392
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_1

    if-ne v2, v4, :cond_0

    move v2, v1

    .line 1396
    :cond_0
    iget-object v4, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v4, v3, v2, p3}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$2700(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;Landroid/view/View;II)V

    :cond_1
    const/4 v4, 0x1

    if-eq v2, v4, :cond_2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 1400
    :cond_2
    iget-object v4, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v4}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1300(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v4

    new-instance v5, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$8$oGpqsPssSPv6GYBxu-4MjQtvxHk;

    invoke-direct {v5, v3}, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$8$oGpqsPssSPv6GYBxu-4MjQtvxHk;-><init>(Landroid/view/View;)V

    int-to-long v6, p3

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/ViewGroup;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
