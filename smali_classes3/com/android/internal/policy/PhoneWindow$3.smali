.class Lcom/android/internal/policy/PhoneWindow$3;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/PhoneWindow;->registerSwipeCallbacks(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/PhoneWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 0

    .line 3042
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$3;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwipeCancelled(Lcom/android/internal/widget/SwipeDismissLayout;)V
    .locals 2

    .line 3062
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow$3;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 3065
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 3066
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 3067
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 3068
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$3;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3069
    iget-object p0, p0, Lcom/android/internal/policy/PhoneWindow$3;->this$0:Lcom/android/internal/policy/PhoneWindow;

    const/16 p1, 0x400

    const/16 v0, 0x600

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    :cond_1
    return-void
.end method

.method public onSwipeProgressChanged(Lcom/android/internal/widget/SwipeDismissLayout;FF)V
    .locals 0

    .line 3046
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow$3;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    float-to-int p3, p3

    .line 3047
    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 3048
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 3049
    iget-object p2, p0, Lcom/android/internal/policy/PhoneWindow$3;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p2, p1}, Lcom/android/internal/policy/PhoneWindow;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3052
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez p1, :cond_0

    const/16 p1, 0x400

    goto :goto_0

    :cond_0
    const/16 p1, 0x200

    .line 3057
    :goto_0
    iget-object p0, p0, Lcom/android/internal/policy/PhoneWindow$3;->this$0:Lcom/android/internal/policy/PhoneWindow;

    const/16 p2, 0x600

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    return-void
.end method
