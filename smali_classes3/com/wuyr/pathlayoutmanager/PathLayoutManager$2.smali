.class Lcom/wuyr/pathlayoutmanager/PathLayoutManager$2;
.super Ljava/lang/Object;
.source "PathLayoutManager.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->startValueAnimator(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLastScrollOffset:F

.field final synthetic this$0:Lcom/wuyr/pathlayoutmanager/PathLayoutManager;


# direct methods
.method constructor <init>(Lcom/wuyr/pathlayoutmanager/PathLayoutManager;)V
    .locals 0

    .line 815
    iput-object p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager$2;->this$0:Lcom/wuyr/pathlayoutmanager/PathLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 821
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 822
    iget v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager$2;->mLastScrollOffset:F

    sub-float v0, p1, v0

    .line 823
    iget-object v1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager$2;->this$0:Lcom/wuyr/pathlayoutmanager/PathLayoutManager;

    invoke-virtual {v1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 824
    iget-object v1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager$2;->this$0:Lcom/wuyr/pathlayoutmanager/PathLayoutManager;

    invoke-static {v1, v0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->access$200(Lcom/wuyr/pathlayoutmanager/PathLayoutManager;F)V

    goto :goto_0

    .line 826
    :cond_0
    iget-object v1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager$2;->this$0:Lcom/wuyr/pathlayoutmanager/PathLayoutManager;

    invoke-static {v1, v0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->access$300(Lcom/wuyr/pathlayoutmanager/PathLayoutManager;F)V

    .line 828
    :goto_0
    iget-object v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager$2;->this$0:Lcom/wuyr/pathlayoutmanager/PathLayoutManager;

    invoke-virtual {v0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->requestLayout()V

    .line 829
    iput p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager$2;->mLastScrollOffset:F

    return-void
.end method
