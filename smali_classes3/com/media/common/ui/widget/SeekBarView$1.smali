.class Lcom/media/common/ui/widget/SeekBarView$1;
.super Ljava/lang/Object;
.source "SeekBarView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/media/common/ui/widget/SeekBarView;->getTargetAnimator(Z)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/media/common/ui/widget/SeekBarView;


# direct methods
.method constructor <init>(Lcom/media/common/ui/widget/SeekBarView;)V
    .locals 0

    .line 519
    iput-object p1, p0, Lcom/media/common/ui/widget/SeekBarView$1;->this$0:Lcom/media/common/ui/widget/SeekBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 523
    iget-object p0, p0, Lcom/media/common/ui/widget/SeekBarView$1;->this$0:Lcom/media/common/ui/widget/SeekBarView;

    invoke-virtual {p0}, Lcom/media/common/ui/widget/SeekBarView;->postInvalidate()V

    return-void
.end method
