.class Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RepairedItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;->animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;

.field final synthetic val$animation:Landroid/view/ViewPropertyAnimator;

.field final synthetic val$deltaX:I

.field final synthetic val$deltaY:I

.field final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$6;->this$0:Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;

    iput-object p2, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$6;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput p3, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$6;->val$deltaX:I

    iput-object p4, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$6;->val$view:Landroid/view/View;

    iput p5, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$6;->val$deltaY:I

    iput-object p6, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$6;->val$animation:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 303
    iget p1, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$6;->val$deltaX:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 304
    iget-object p1, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$6;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 306
    :cond_0
    iget p1, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$6;->val$deltaY:I

    if-eqz p1, :cond_1

    .line 307
    iget-object p0, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$6;->val$view:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 313
    iget-object p1, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$6;->val$animation:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 315
    :try_start_0
    iget-object p1, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$6;->this$0:Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;

    iget-object v0, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$6;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 317
    :catch_0
    iget-object p1, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$6;->this$0:Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;

    invoke-static {p1}, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;->access$600(Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;)Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$OnErrorListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 318
    iget-object p1, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$6;->this$0:Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;

    invoke-static {p1}, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;->access$600(Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;)Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$OnErrorListener;

    move-result-object p1

    iget-object v0, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$6;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-interface {p1, v0}, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$OnErrorListener;->onError(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 321
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$6;->this$0:Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;

    invoke-static {p1}, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;->access$1000(Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$6;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 322
    iget-object p0, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$6;->this$0:Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;

    invoke-static {p0}, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;->access$800(Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 298
    iget-object p1, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$6;->this$0:Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;

    iget-object p0, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$6;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, p0}, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;->dispatchMoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
