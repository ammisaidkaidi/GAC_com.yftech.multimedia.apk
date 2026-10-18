.class Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$8;
.super Ljava/lang/Object;
.source "VideoLayoutChildManager.java"

# interfaces
.implements Lcom/yftech/car/widget/media/text/VisibilityTextButton$OnClickVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)V
    .locals 0

    .line 1734
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onClickVisibility$0(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$8;)V
    .locals 1

    .line 1781
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$102(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;Z)Z

    return-void
.end method

.method public static synthetic lambda$onClickVisibility$1(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$8;Landroid/view/View;)V
    .locals 3

    .line 1780
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 1781
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$200(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object p1

    new-instance v0, Lcom/yftech/car/widget/media/video/layout/-$$Lambda$VideoLayoutChildManager$8$LQSubmOdNv5sE5xgl435NHnkrxo;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/video/layout/-$$Lambda$VideoLayoutChildManager$8$LQSubmOdNv5sE5xgl435NHnkrxo;-><init>(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$8;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method static synthetic lambda$onClickVisibilityGone$3(Landroid/view/View;)V
    .locals 0

    .line 1862
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    return-void
.end method

.method static synthetic lambda$onClickVisibilityVisible$2(Landroid/view/View;)V
    .locals 0

    .line 1834
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    return-void
.end method


# virtual methods
.method public onClickVisibility([IIII)V
    .locals 9

    .line 1737
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$200(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 1738
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$100(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "LayoutChildManager"

    const-string p1, "onClickVisibility: Double Click isAnimationLoading is true"

    .line 1739
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1743
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v4, p4

    move v3, v2

    move p4, p3

    move p3, v1

    :goto_0
    const/16 v5, 0x8

    const/4 v6, 0x1

    if-ge p3, v0, :cond_a

    aget v7, p1, p3

    if-eq v7, v2, :cond_9

    .line 1745
    iget-object v8, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v8}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$200(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1746
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_3

    and-int/lit8 v5, p2, 0x1

    if-lez v5, :cond_6

    if-ne p4, v2, :cond_2

    .line 1749
    iget-object p4, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p4}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 1750
    iget-object p4, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p4}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object p4

    invoke-virtual {p4}, Lcom/yftech/car/widget/media/video/BaseVideo;->getVideoHideShowAnimation()I

    move-result p4

    .line 1751
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v3}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/car/widget/media/video/BaseVideo;->getVideoHideShowAnimationDuration()I

    move-result v4

    goto :goto_1

    :cond_1
    move p4, v1

    .line 1757
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v3, v6}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$102(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;Z)Z

    .line 1758
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v3, v7, p4, v4}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$2400(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;Landroid/view/View;II)V

    move v3, v6

    goto :goto_3

    .line 1760
    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v5, :cond_6

    and-int/lit8 v5, p2, 0x2

    if-lez v5, :cond_6

    .line 1763
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v3, v6}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$102(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;Z)Z

    if-ne p4, v2, :cond_5

    .line 1765
    iget-object p4, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p4}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object p4

    if-eqz p4, :cond_4

    .line 1766
    iget-object p4, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p4}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object p4

    invoke-virtual {p4}, Lcom/yftech/car/widget/media/video/BaseVideo;->getVideoHideShowAnimation()I

    move-result p4

    .line 1767
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v3}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/car/widget/media/video/BaseVideo;->getVideoHideShowAnimationDuration()I

    move-result v3

    move v4, v3

    goto :goto_2

    :cond_4
    move p4, v1

    .line 1772
    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v3, v7, p4, v4}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$2500(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;Landroid/view/View;II)V

    move v3, v1

    .line 1777
    :cond_6
    :goto_3
    iget-object v5, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v5}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$100(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Z

    move-result v5

    if-eqz v5, :cond_9

    if-eq p4, v6, :cond_8

    const/4 v5, 0x2

    if-ne p4, v5, :cond_7

    goto :goto_4

    .line 1784
    :cond_7
    iget-object v5, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v5, v1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$102(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;Z)Z

    goto :goto_5

    .line 1779
    :cond_8
    :goto_4
    iget-object v5, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v5}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$200(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v5

    new-instance v6, Lcom/yftech/car/widget/media/video/layout/-$$Lambda$VideoLayoutChildManager$8$kecyK8zEkuNS7myxIRQkEAy_e0E;

    invoke-direct {v6, p0, v7}, Lcom/yftech/car/widget/media/video/layout/-$$Lambda$VideoLayoutChildManager$8$kecyK8zEkuNS7myxIRQkEAy_e0E;-><init>(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$8;Landroid/view/View;)V

    int-to-long v7, v4

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/ViewGroup;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    :cond_9
    :goto_5
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    .line 1790
    :cond_a
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 1791
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$200(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result p1

    iget-object p3, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p3}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object p3

    invoke-virtual {p3}, Lcom/yftech/car/widget/media/video/BaseVideo;->getSystemUiVisibilityShow()I

    move-result p3

    if-eq p1, p3, :cond_c

    and-int/lit8 p1, p2, 0x4

    if-lez p1, :cond_e

    if-ne v3, v2, :cond_b

    move v3, v6

    .line 1796
    :cond_b
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$200(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object p2, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p2}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yftech/car/widget/media/video/BaseVideo;->getSystemUiVisibilityShow()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    goto :goto_6

    :cond_c
    and-int/lit8 p1, p2, 0x8

    if-lez p1, :cond_e

    .line 1800
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/video/BaseVideo;->getSystemUiVisibilityHide()I

    move-result p1

    if-eq p1, v2, :cond_e

    if-ne v3, v2, :cond_d

    move v3, v1

    .line 1804
    :cond_d
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$200(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object p2, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p2}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yftech/car/widget/media/video/BaseVideo;->getSystemUiVisibilityHide()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 1810
    :cond_e
    :goto_6
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$1200(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/widget/media/text/VisibilityTextButton;

    if-ne v3, v6, :cond_f

    move p2, v6

    goto :goto_8

    :cond_f
    move p2, v1

    .line 1811
    :goto_8
    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->setVisibilityShow(Z)V

    goto :goto_7

    :cond_10
    return-void
.end method

.method public onClickVisibilityGone([III)V
    .locals 8

    .line 1845
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$200(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1846
    array-length v0, p1

    const/4 v1, 0x0

    move v2, p3

    move p3, p2

    move p2, v1

    :goto_0
    if-ge p2, v0, :cond_4

    aget v3, p1, p2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 1848
    iget-object v5, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v5}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$200(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1849
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_3

    if-ne p3, v4, :cond_1

    .line 1851
    iget-object p3, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p3}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 1852
    iget-object p3, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p3}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object p3

    invoke-virtual {p3}, Lcom/yftech/car/widget/media/video/BaseVideo;->getVideoHideShowAnimation()I

    move-result p3

    .line 1853
    iget-object v2, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v2}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/video/BaseVideo;->getVideoHideShowAnimationDuration()I

    move-result v2

    goto :goto_1

    :cond_0
    move p3, v1

    .line 1858
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v4, v3, p3, v2}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$2500(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;Landroid/view/View;II)V

    const/4 v4, 0x1

    if-eq p3, v4, :cond_2

    const/4 v4, 0x2

    if-ne p3, v4, :cond_3

    .line 1861
    :cond_2
    iget-object v4, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v4}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$200(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v4

    new-instance v5, Lcom/yftech/car/widget/media/video/layout/-$$Lambda$VideoLayoutChildManager$8$yPIu4-60s1nMOEy4H_23nlOPWw4;

    invoke-direct {v5, v3}, Lcom/yftech/car/widget/media/video/layout/-$$Lambda$VideoLayoutChildManager$8$yPIu4-60s1nMOEy4H_23nlOPWw4;-><init>(Landroid/view/View;)V

    int-to-long v6, v2

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/ViewGroup;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public onClickVisibilityVisible([III)V
    .locals 8

    .line 1818
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$200(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1819
    array-length v0, p1

    const/4 v1, 0x0

    move v2, p3

    move p3, p2

    move p2, v1

    :goto_0
    if-ge p2, v0, :cond_4

    aget v3, p1, p2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 1821
    iget-object v5, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v5}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$200(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1822
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_3

    if-ne p3, v4, :cond_1

    .line 1824
    iget-object p3, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p3}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 1825
    iget-object p3, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p3}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object p3

    invoke-virtual {p3}, Lcom/yftech/car/widget/media/video/BaseVideo;->getVideoHideShowAnimation()I

    move-result p3

    .line 1826
    iget-object v2, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v2}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/video/BaseVideo;->getVideoHideShowAnimationDuration()I

    move-result v2

    goto :goto_1

    :cond_0
    move p3, v1

    .line 1831
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v4, v3, p3, v2}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$2400(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;Landroid/view/View;II)V

    const/4 v4, 0x1

    if-eq p3, v4, :cond_2

    const/4 v4, 0x2

    if-ne p3, v4, :cond_3

    .line 1833
    :cond_2
    iget-object v4, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$8;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v4}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$200(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v4

    new-instance v5, Lcom/yftech/car/widget/media/video/layout/-$$Lambda$VideoLayoutChildManager$8$fe5r0HWnoX80PTPTlNgd7IbyPI4;

    invoke-direct {v5, v3}, Lcom/yftech/car/widget/media/video/layout/-$$Lambda$VideoLayoutChildManager$8$fe5r0HWnoX80PTPTlNgd7IbyPI4;-><init>(Landroid/view/View;)V

    int-to-long v6, v2

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/ViewGroup;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
