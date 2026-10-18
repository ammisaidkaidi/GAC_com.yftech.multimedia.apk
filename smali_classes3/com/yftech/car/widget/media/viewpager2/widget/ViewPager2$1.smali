.class Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$1;
.super Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$DataSetChangeObserver;
.source "ViewPager2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$1;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$DataSetChangeObserver;-><init>(Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$1;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$1;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mCurrentItemDirty:Z

    .line 146
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$1;->this$0:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Lcom/yftech/car/widget/media/viewpager2/widget/ScrollEventAdapter;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/viewpager2/widget/ScrollEventAdapter;->notifyDataSetChangeHappened()V

    return-void
.end method
