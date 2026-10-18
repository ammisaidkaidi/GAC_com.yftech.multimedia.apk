.class Lcom/wuyr/pathlayoutmanager/PathLayoutManager$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PathLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->startValueAnimator(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isCanceled:Z

.field final synthetic this$0:Lcom/wuyr/pathlayoutmanager/PathLayoutManager;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/wuyr/pathlayoutmanager/PathLayoutManager;I)V
    .locals 0

    .line 832
    iput-object p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager$3;->this$0:Lcom/wuyr/pathlayoutmanager/PathLayoutManager;

    iput p2, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager$3;->val$position:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 838
    iput-boolean p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager$3;->isCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 843
    iget-boolean p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager$3;->isCanceled:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager$3;->this$0:Lcom/wuyr/pathlayoutmanager/PathLayoutManager;

    invoke-static {p1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->access$400(Lcom/wuyr/pathlayoutmanager/PathLayoutManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 844
    iget-object p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager$3;->this$0:Lcom/wuyr/pathlayoutmanager/PathLayoutManager;

    invoke-static {p1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->access$500(Lcom/wuyr/pathlayoutmanager/PathLayoutManager;)Lcom/wuyr/pathlayoutmanager/PathLayoutManager$OnItemSelectedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 845
    iget-object p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager$3;->this$0:Lcom/wuyr/pathlayoutmanager/PathLayoutManager;

    invoke-static {p1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->access$500(Lcom/wuyr/pathlayoutmanager/PathLayoutManager;)Lcom/wuyr/pathlayoutmanager/PathLayoutManager$OnItemSelectedListener;

    move-result-object p1

    iget p0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager$3;->val$position:I

    invoke-interface {p1, p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager$OnItemSelectedListener;->onSelected(I)V

    :cond_0
    return-void
.end method
