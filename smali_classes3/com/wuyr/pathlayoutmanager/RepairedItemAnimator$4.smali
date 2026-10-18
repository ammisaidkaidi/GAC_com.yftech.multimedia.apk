.class Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RepairedItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;->animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;

.field final synthetic val$animation:Landroid/view/ViewPropertyAnimator;

.field final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$4;->this$0:Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;

    iput-object p2, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$4;->val$animation:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 197
    iget-object p1, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$4;->val$animation:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 198
    iget-object p1, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$4;->val$view:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 200
    :try_start_0
    iget-object p1, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$4;->this$0:Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;

    iget-object v0, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 202
    :catch_0
    iget-object p1, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$4;->this$0:Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;

    invoke-static {p1}, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;->access$600(Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;)Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$OnErrorListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 203
    iget-object p1, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$4;->this$0:Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;

    invoke-static {p1}, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;->access$600(Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;)Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$OnErrorListener;

    move-result-object p1

    iget-object v0, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-interface {p1, v0}, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$OnErrorListener;->onError(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 206
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$4;->this$0:Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;

    invoke-static {p1}, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;->access$700(Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 207
    iget-object p0, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$4;->this$0:Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;

    invoke-static {p0}, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;->access$800(Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 192
    iget-object p1, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$4;->this$0:Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;

    iget-object p0, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, p0}, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;->dispatchRemoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
