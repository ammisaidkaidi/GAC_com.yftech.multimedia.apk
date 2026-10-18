.class Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$2;
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

.field final synthetic val$changes:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;Ljava/util/ArrayList;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$2;->this$0:Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;

    iput-object p2, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$ChangeInfo;

    .line 136
    iget-object v2, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$2;->this$0:Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;

    invoke-static {v2, v1}, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;->access$200(Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$ChangeInfo;)V

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 139
    iget-object v0, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$2;->this$0:Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;

    invoke-static {v0}, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;->access$300(Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object p0, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
