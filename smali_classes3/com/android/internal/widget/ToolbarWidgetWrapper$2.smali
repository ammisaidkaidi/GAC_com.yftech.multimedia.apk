.class Lcom/android/internal/widget/ToolbarWidgetWrapper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ToolbarWidgetWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/ToolbarWidgetWrapper;->setupAnimatorToVisibility(IJ)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/ToolbarWidgetWrapper;)V
    .locals 0

    .line 589
    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$2;->this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 590
    iput-boolean p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$2;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 600
    iput-boolean p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$2;->mCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 593
    iget-boolean p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$2;->mCanceled:Z

    if-nez p1, :cond_0

    .line 594
    iget-object p0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$2;->this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    invoke-static {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->access$000(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Landroid/widget/Toolbar;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/Toolbar;->setVisibility(I)V

    :cond_0
    return-void
.end method
