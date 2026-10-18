.class Landroid/app/ExitTransitionCoordinator$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExitTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ExitTransitionCoordinator;->fadeOutBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ExitTransitionCoordinator;


# direct methods
.method constructor <init>(Landroid/app/ExitTransitionCoordinator;)V
    .locals 0

    .line 300
    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator$7;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 303
    iget-object p1, p0, Landroid/app/ExitTransitionCoordinator$7;->this$0:Landroid/app/ExitTransitionCoordinator;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/app/ExitTransitionCoordinator;->access$802(Landroid/app/ExitTransitionCoordinator;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 304
    iget-object p1, p0, Landroid/app/ExitTransitionCoordinator$7;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-static {p1}, Landroid/app/ExitTransitionCoordinator;->access$500(Landroid/app/ExitTransitionCoordinator;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 305
    iget-object p1, p0, Landroid/app/ExitTransitionCoordinator$7;->this$0:Landroid/app/ExitTransitionCoordinator;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/app/ExitTransitionCoordinator;->access$902(Landroid/app/ExitTransitionCoordinator;Z)Z

    .line 306
    iget-object p1, p0, Landroid/app/ExitTransitionCoordinator$7;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {p1}, Landroid/app/ExitTransitionCoordinator;->notifyComplete()V

    .line 308
    :cond_0
    iget-object p0, p0, Landroid/app/ExitTransitionCoordinator$7;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->backgroundAnimatorComplete()V

    return-void
.end method
