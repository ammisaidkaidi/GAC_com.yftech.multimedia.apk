.class Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$2;
.super Ljava/lang/Object;
.source "PhotoLayoutChildManager.java"

# interfaces
.implements Lcom/yftech/car/widget/media/text/VisibilityTextButton$OnClickVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$2;->this$0:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onClickVisibility$0(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$2;)V
    .locals 1

    .line 447
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$2;->this$0:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->access$302(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;Z)Z

    return-void
.end method

.method public static synthetic lambda$onClickVisibility$1(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$2;Landroid/view/View;)V
    .locals 3

    .line 446
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 447
    iget-object p1, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$2;->this$0:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->access$200(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object p1

    new-instance v0, Lcom/yftech/car/widget/media/photo/layout/-$$Lambda$PhotoLayoutChildManager$2$hYWDyGsf5No1j3gqtR1Oz6qRkG8;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/photo/layout/-$$Lambda$PhotoLayoutChildManager$2$hYWDyGsf5No1j3gqtR1Oz6qRkG8;-><init>(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$2;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method static synthetic lambda$onClickVisibilityGone$3(Landroid/view/View;)V
    .locals 0

    .line 499
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    return-void
.end method

.method static synthetic lambda$onClickVisibilityVisible$2(Landroid/view/View;)V
    .locals 0

    .line 476
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    return-void
.end method


# virtual methods
.method public onClickVisibility([IIII)V
    .locals 10

    .line 412
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$2;->this$0:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->access$200(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 413
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$2;->this$0:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->access$300(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "LayoutChildManager"

    const-string p1, "onClickVisibility: Double Click isAnimationLoading is true"

    .line 414
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 419
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

    .line 421
    iget-object v7, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$2;->this$0:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    invoke-static {v7}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->access$200(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 422
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_2

    and-int/lit8 v7, p2, 0x1

    if-lez v7, :cond_4

    if-ne v3, v1, :cond_1

    move v3, v2

    .line 428
    :cond_1
    iget-object v4, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$2;->this$0:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    invoke-static {v4, v5}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->access$302(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;Z)Z

    .line 429
    iget-object v4, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$2;->this$0:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    invoke-static {v4, v6, v3, p4}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->access$400(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;Landroid/view/View;II)V

    move v4, v5

    goto :goto_1

    .line 431
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_4

    and-int/lit8 v7, p2, 0x2

    if-lez v7, :cond_4

    .line 434
    iget-object v4, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$2;->this$0:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    invoke-static {v4, v5}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->access$302(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;Z)Z

    if-ne v3, v1, :cond_3

    move v3, v2

    .line 438
    :cond_3
    iget-object v4, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$2;->this$0:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    invoke-static {v4, v6, v3, p4}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->access$500(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;Landroid/view/View;II)V

    move v4, v2

    .line 443
    :cond_4
    :goto_1
    iget-object v7, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$2;->this$0:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    invoke-static {v7}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->access$300(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;)Z

    move-result v7

    if-eqz v7, :cond_7

    if-eq v3, v5, :cond_6

    const/4 v5, 0x2

    if-ne v3, v5, :cond_5

    goto :goto_2

    .line 450
    :cond_5
    iget-object v5, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$2;->this$0:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    invoke-static {v5, v2}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->access$302(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;Z)Z

    goto :goto_3

    .line 445
    :cond_6
    :goto_2
    iget-object v5, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$2;->this$0:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    invoke-static {v5}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->access$200(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v5

    new-instance v7, Lcom/yftech/car/widget/media/photo/layout/-$$Lambda$PhotoLayoutChildManager$2$hKo3z3Pr4QFpH2Px6u0zhdq3y20;

    invoke-direct {v7, p0, v6}, Lcom/yftech/car/widget/media/photo/layout/-$$Lambda$PhotoLayoutChildManager$2$hKo3z3Pr4QFpH2Px6u0zhdq3y20;-><init>(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$2;Landroid/view/View;)V

    int-to-long v8, p4

    invoke-virtual {v5, v7, v8, v9}, Landroid/view/ViewGroup;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    :cond_7
    :goto_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 456
    :cond_8
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$2;->this$0:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->access$600(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;)Ljava/util/List;

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

    .line 457
    :goto_5
    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->setVisibilityShow(Z)V

    goto :goto_4

    :cond_a
    return-void
.end method

.method public onClickVisibilityGone([III)V
    .locals 8

    .line 487
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$2;->this$0:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->access$200(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 489
    array-length v0, p1

    const/4 v1, 0x0

    move v2, p2

    move p2, v1

    :goto_0
    if-ge p2, v0, :cond_3

    aget v3, p1, p2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 491
    iget-object v5, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$2;->this$0:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    invoke-static {v5}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->access$200(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 492
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_2

    if-ne v2, v4, :cond_0

    move v2, v1

    .line 496
    :cond_0
    iget-object v4, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$2;->this$0:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    invoke-static {v4, v3, v2, p3}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->access$500(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;Landroid/view/View;II)V

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 498
    :cond_1
    iget-object v4, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$2;->this$0:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    invoke-static {v4}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->access$200(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v4

    new-instance v5, Lcom/yftech/car/widget/media/photo/layout/-$$Lambda$PhotoLayoutChildManager$2$eVpHc4zXbEecvZ5QOyYx-nQuQl0;

    invoke-direct {v5, v3}, Lcom/yftech/car/widget/media/photo/layout/-$$Lambda$PhotoLayoutChildManager$2$eVpHc4zXbEecvZ5QOyYx-nQuQl0;-><init>(Landroid/view/View;)V

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

    .line 464
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$2;->this$0:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->access$200(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 466
    array-length v0, p1

    const/4 v1, 0x0

    move v2, p2

    move p2, v1

    :goto_0
    if-ge p2, v0, :cond_3

    aget v3, p1, p2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 468
    iget-object v5, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$2;->this$0:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    invoke-static {v5}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->access$200(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 469
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_2

    if-ne v2, v4, :cond_0

    move v2, v1

    .line 473
    :cond_0
    iget-object v4, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$2;->this$0:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    invoke-static {v4, v3, v2, p3}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->access$400(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;Landroid/view/View;II)V

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 475
    :cond_1
    iget-object v4, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$2;->this$0:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    invoke-static {v4}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->access$200(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v4

    new-instance v5, Lcom/yftech/car/widget/media/photo/layout/-$$Lambda$PhotoLayoutChildManager$2$d1IPRAEkI1CC2q5sLMNK7GmoeP4;

    invoke-direct {v5, v3}, Lcom/yftech/car/widget/media/photo/layout/-$$Lambda$PhotoLayoutChildManager$2$d1IPRAEkI1CC2q5sLMNK7GmoeP4;-><init>(Landroid/view/View;)V

    int-to-long v6, p3

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/ViewGroup;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
