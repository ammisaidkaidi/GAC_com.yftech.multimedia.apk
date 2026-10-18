.class Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$1;
.super Ljava/lang/Object;
.source "RepairedItemAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;->runPendingAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;

.field final synthetic val$moves:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;Ljava/util/ArrayList;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$1;->this$0:Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;

    iput-object p2, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 112
    iget-object v0, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$MoveInfo;

    .line 113
    iget-object v2, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$1;->this$0:Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;

    iget-object v3, v1, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget v4, v1, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$MoveInfo;->fromX:I

    iget v5, v1, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$MoveInfo;->fromY:I

    iget v6, v1, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$MoveInfo;->toX:I

    iget v7, v1, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$MoveInfo;->toY:I

    invoke-static/range {v2 .. v7}, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;->access$000(Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 117
    iget-object v0, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$1;->this$0:Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;

    invoke-static {v0}, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;->access$100(Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object p0, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
