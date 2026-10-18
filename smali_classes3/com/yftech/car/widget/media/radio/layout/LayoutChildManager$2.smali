.class Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$2;
.super Ljava/lang/Object;
.source "LayoutChildManager.java"

# interfaces
.implements Lcom/yftech/car/widget/media/radio/view/RulerView$OnRulerViewScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->getOnRulerViewScrollListener()Lcom/yftech/car/widget/media/radio/view/RulerView$OnRulerViewScrollListener;
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

    .line 385
    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$2;->this$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/yftech/car/widget/media/radio/view/RulerView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onScrollingFinished(Lcom/yftech/car/widget/media/radio/view/RulerView;I)V
    .locals 0

    .line 416
    iget p0, p1, Lcom/yftech/car/widget/media/radio/view/RulerView;->mBand:I

    if-nez p0, :cond_0

    .line 417
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/yftech/car/widget/media/manager/RadioManager;->setFreq(I)I

    goto :goto_0

    .line 419
    :cond_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    iget p1, p1, Lcom/yftech/car/widget/media/radio/view/RulerView;->mBand:I

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/manager/RadioManager;->getMin(I)I

    move-result p0

    if-lt p2, p0, :cond_1

    .line 420
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/yftech/car/widget/media/manager/RadioManager;->setFreq(I)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onScrollingStarted(Lcom/yftech/car/widget/media/radio/view/RulerView;)V
    .locals 0

    return-void
.end method
