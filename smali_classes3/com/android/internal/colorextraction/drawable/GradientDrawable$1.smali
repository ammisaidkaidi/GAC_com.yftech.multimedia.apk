.class Lcom/android/internal/colorextraction/drawable/GradientDrawable$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GradientDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setColors(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/colorextraction/drawable/GradientDrawable;


# direct methods
.method constructor <init>(Lcom/android/internal/colorextraction/drawable/GradientDrawable;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable$1;->this$0:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0

    .line 108
    iget-object p2, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable$1;->this$0:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    invoke-static {p2}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->access$000(Lcom/android/internal/colorextraction/drawable/GradientDrawable;)Landroid/animation/ValueAnimator;

    move-result-object p2

    if-ne p2, p1, :cond_0

    .line 109
    iget-object p0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable$1;->this$0:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->access$002(Lcom/android/internal/colorextraction/drawable/GradientDrawable;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method
