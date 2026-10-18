.class Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$2;
.super Ljava/lang/Object;
.source "CarouselLayoutManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->detectOnItemSelectionChanged(FLandroidx/recyclerview/widget/RecyclerView$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;

.field final synthetic val$centerItem:I


# direct methods
.method constructor <init>(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;I)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$2;->this$0:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;

    iput p2, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$2;->val$centerItem:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$2;->this$0:Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;

    iget p0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$2;->val$centerItem:I

    invoke-static {v0, p0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->access$300(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;I)V

    return-void
.end method
