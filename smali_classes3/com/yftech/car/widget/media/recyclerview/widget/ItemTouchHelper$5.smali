.class Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$5;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->addChildDrawingOrderCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;)V
    .locals 0

    .line 1298
    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$5;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetChildDrawingOrder(II)I
    .locals 2

    .line 1301
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$5;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    if-nez v0, :cond_0

    return p2

    .line 1304
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$5;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    iget v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mOverdrawChildPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1306
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$5;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$5;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    iget-object v1, v1, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1307
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper$5;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;

    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ItemTouchHelper;->mOverdrawChildPosition:I

    :cond_1
    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_2

    return v0

    :cond_2
    if-ge p2, v0, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 p2, p2, 0x1

    :goto_0
    return p2
.end method
