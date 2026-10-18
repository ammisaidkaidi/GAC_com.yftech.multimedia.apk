.class Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RepairedItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;->animateChangeImpl(Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$ChangeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;

.field final synthetic val$changeInfo:Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$ChangeInfo;

.field final synthetic val$newView:Landroid/view/View;

.field final synthetic val$newViewAnimation:Landroid/view/ViewPropertyAnimator;


# direct methods
.method constructor <init>(Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$8;->this$0:Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;

    iput-object p2, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$8;->val$changeInfo:Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$ChangeInfo;

    iput-object p3, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$8;->val$newViewAnimation:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$8;->val$newView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 403
    iget-object p1, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$8;->val$newViewAnimation:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 404
    iget-object p1, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$8;->val$newView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 405
    iget-object p1, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$8;->val$newView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 406
    iget-object p1, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$8;->val$newView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 408
    :try_start_0
    iget-object p1, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$8;->this$0:Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;

    iget-object v0, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$8;->val$changeInfo:Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$ChangeInfo;

    iget-object v0, v0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 410
    :catch_0
    iget-object p1, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$8;->this$0:Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;

    invoke-static {p1}, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;->access$600(Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;)Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$OnErrorListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 411
    iget-object p1, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$8;->this$0:Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;

    invoke-static {p1}, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;->access$600(Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;)Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$OnErrorListener;

    move-result-object p1

    iget-object v0, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$8;->val$changeInfo:Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$ChangeInfo;

    iget-object v0, v0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-interface {p1, v0}, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$OnErrorListener;->onError(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 414
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$8;->this$0:Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;

    invoke-static {p1}, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;->access$1100(Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$8;->val$changeInfo:Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$ChangeInfo;

    iget-object v0, v0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 415
    iget-object p0, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$8;->this$0:Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;

    invoke-static {p0}, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;->access$800(Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 398
    iget-object p1, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$8;->this$0:Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;

    iget-object p0, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$8;->val$changeInfo:Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$ChangeInfo;

    iget-object p0, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;->dispatchChangeStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    return-void
.end method
