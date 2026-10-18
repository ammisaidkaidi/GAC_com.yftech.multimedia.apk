.class public Lcom/android/internal/view/OneShotPreDrawListener;
.super Ljava/lang/Object;
.source "OneShotPreDrawListener.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private final mReturnValue:Z

.field private final mRunnable:Ljava/lang/Runnable;

.field private final mView:Landroid/view/View;

.field private mViewTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method private constructor <init>(Landroid/view/View;ZLjava/lang/Runnable;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/internal/view/OneShotPreDrawListener;->mView:Landroid/view/View;

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/view/OneShotPreDrawListener;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 42
    iput-object p3, p0, Lcom/android/internal/view/OneShotPreDrawListener;->mRunnable:Ljava/lang/Runnable;

    .line 43
    iput-boolean p2, p0, Lcom/android/internal/view/OneShotPreDrawListener;->mReturnValue:Z

    return-void
.end method

.method public static add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;
    .locals 1

    const/4 v0, 0x1

    .line 56
    invoke-static {p0, v0, p1}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;ZLjava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    move-result-object p0

    return-object p0
.end method

.method public static add(Landroid/view/View;ZLjava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;
    .locals 1

    .line 69
    new-instance v0, Lcom/android/internal/view/OneShotPreDrawListener;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/view/OneShotPreDrawListener;-><init>(Landroid/view/View;ZLjava/lang/Runnable;)V

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 71
    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-object v0
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/android/internal/view/OneShotPreDrawListener;->removeListener()V

    .line 78
    iget-object v0, p0, Lcom/android/internal/view/OneShotPreDrawListener;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 79
    iget-boolean p0, p0, Lcom/android/internal/view/OneShotPreDrawListener;->mReturnValue:Z

    return p0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/view/OneShotPreDrawListener;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 102
    invoke-virtual {p0}, Lcom/android/internal/view/OneShotPreDrawListener;->removeListener()V

    return-void
.end method

.method public removeListener()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/internal/view/OneShotPreDrawListener;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/internal/view/OneShotPreDrawListener;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/OneShotPreDrawListener;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 92
    :goto_0
    iget-object v0, p0, Lcom/android/internal/view/OneShotPreDrawListener;->mView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method
